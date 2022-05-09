; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/fscounters.c_pt.bc'
source_filename = "../fs/xfs/scrub/fscounters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xchk_fscounters = type { i64, i64, i64, i64, i64 }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_fscounters_calc = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xchk_fscounters_calc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_fscounters_within_range = external dso_local global %struct.tracepoint, align 4
@trace_xchk_fscounters_within_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_ = private constant [29 x i8] c"../fs/xfs/scrub/fscounters.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 24, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 602, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 108, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_fscounters(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 40, i32 noundef 16) #7
  %buf = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %icount_min = getelementptr inbounds %struct.xchk_fscounters, ptr %call.i, i32 0, i32 3
  %icount_max = getelementptr inbounds %struct.xchk_fscounters, ptr %call.i, i32 0, i32 4
  tail call void @xfs_icount_range(ptr noundef %2, ptr noundef %icount_min, ptr noundef %icount_max) #7
  %call3 = tail call fastcc i32 @xchk_fscount_warmup(ptr noundef %sc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_stop_reaping(ptr noundef %sc) #7
  %call7 = tail call i32 @xchk_trans_alloc(ptr noundef %sc, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_icount_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_fscount_warmup(ptr nocapture noundef readonly %sc) unnamed_addr #3 align 64 {
entry:
  %agi_bp = alloca ptr, align 4
  %agf_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agi_bp) #7
  %2 = ptrtoint ptr %agi_bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %agi_bp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #7
  %3 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %agf_bp, align 4
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef 0) #7
  %cmp.not52 = icmp eq ptr %call, null
  br i1 %cmp.not52, label %entry.if.end31_crit_edge, label %for.body.lr.ph

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

for.body.lr.ph:                                   ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.054 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %agno.053 = phi i32 [ 0, %for.body.lr.ph ], [ %add.i, %xfs_perag_next.exit.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = call i32 @__cond_resched() #7
  %4 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.if.end_crit_edge, label %fatal_signal_pending.exit.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %for.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 116, i32 1
  %12 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %signal.i.i.i, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.for.end_crit_edge

fatal_signal_pending.exit.i.for.end_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %pag.054, i32 0, i32 4
  %15 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %pag.054, i32 0, i32 3
  %17 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  %call7 = call i32 @xfs_ialloc_read_agi(ptr noundef %1, ptr noundef %20, i32 noundef %agno.053, ptr noundef nonnull %agi_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %if.end6
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %call12 = call i32 @xfs_alloc_read_agf(ptr noundef %1, ptr noundef %22, i32 noundef %agno.053, i32 noundef 0, ptr noundef nonnull %agf_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end15:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %if.end15.for.end_crit_edge, label %lor.lhs.false

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end15
  %pagf_init18 = getelementptr inbounds %struct.xfs_perag, ptr %pag.054, i32 0, i32 3
  %25 = ptrtoint ptr %pagf_init18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pagf_init18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not = icmp eq i8 %26, 0
  br i1 %tobool19.not, label %lor.lhs.false.for.end_crit_edge, label %if.end21

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %agf_bp, align 4
  call void @xfs_buf_unlock(ptr noundef %28) #7
  call void @xfs_buf_rele(ptr noundef %28) #7
  %29 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %agf_bp, align 4
  %30 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agi_bp, align 4
  call void @xfs_buf_unlock(ptr noundef %31) #7
  call void @xfs_buf_rele(ptr noundef %31) #7
  %32 = ptrtoint ptr %agi_bp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %agi_bp, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %land.lhs.true.for.inc_crit_edge
  %33 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %34, -1
  %35 = ptrtoint ptr %pag.054 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pag.054, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.054, i32 0, i32 1
  %37 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %38, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.054) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i46 = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i46, label %for.inc.for.end_crit_edge, label %xfs_perag_next.exit

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

xfs_perag_next.exit:                              ; preds = %for.inc
  %call.i = call ptr @xfs_perag_get(ptr noundef %36, i32 noundef %add.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end15.for.end_crit_edge, %if.end10.for.end_crit_edge, %if.end6.for.end_crit_edge, %fatal_signal_pending.exit.i.for.end_crit_edge
  %pag.0.lcssa.ph = phi ptr [ %pag.054, %fatal_signal_pending.exit.i.for.end_crit_edge ], [ %pag.054, %if.end15.for.end_crit_edge ], [ %pag.054, %lor.lhs.false.for.end_crit_edge ], [ %pag.054, %if.end10.for.end_crit_edge ], [ %pag.054, %if.end6.for.end_crit_edge ], [ null, %xfs_perag_next.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %cmp.not.lcssa.ph = phi i1 [ false, %fatal_signal_pending.exit.i.for.end_crit_edge ], [ false, %if.end15.for.end_crit_edge ], [ false, %lor.lhs.false.for.end_crit_edge ], [ false, %if.end10.for.end_crit_edge ], [ false, %if.end6.for.end_crit_edge ], [ true, %xfs_perag_next.exit.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  %error.3.ph = phi i32 [ -11, %fatal_signal_pending.exit.i.for.end_crit_edge ], [ -117, %if.end15.for.end_crit_edge ], [ -117, %lor.lhs.false.for.end_crit_edge ], [ %call12, %if.end10.for.end_crit_edge ], [ %call7, %if.end6.for.end_crit_edge ], [ 0, %xfs_perag_next.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %39 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load ptr, ptr %agf_bp, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %for.end.if.end25_crit_edge, label %if.then24

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_buf_unlock(ptr noundef nonnull %.pr) #7
  call void @xfs_buf_rele(ptr noundef nonnull %.pr) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end.if.end25_crit_edge
  %40 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr83 = load ptr, ptr %agi_bp, align 4
  %tobool26.not = icmp eq ptr %.pr83, null
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @xfs_buf_unlock(ptr noundef nonnull %.pr83) #7
  call void @xfs_buf_rele(ptr noundef nonnull %.pr83) #7
  br i1 %cmp.not.lcssa.ph, label %if.then27.if.end31_crit_edge, label %if.then27.if.then30_crit_edge

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end28:                                         ; preds = %if.end25
  br i1 %cmp.not.lcssa.ph, label %if.end28.if.end31_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.then27.if.then30_crit_edge
  call void @xfs_perag_put(ptr noundef nonnull %pag.0.lcssa.ph) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge, %if.then27.if.end31_crit_edge, %entry.if.end31_crit_edge
  %error.3828894 = phi i32 [ %error.3.ph, %if.then30 ], [ %error.3.ph, %if.end28.if.end31_crit_edge ], [ %error.3.ph, %if.then27.if.end31_crit_edge ], [ 0, %entry.if.end31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agi_bp) #7
  ret i32 %error.3828894
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_stop_reaping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_fscounters(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %buf = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 77
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_icount) #7
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 78
  %call.i84 = tail call i64 @__percpu_counter_sum(ptr noundef %m_ifree) #7
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 79
  %call.i85 = tail call i64 @__percpu_counter_sum(ptr noundef %m_fdblocks) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp = icmp slt i64 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i84)
  %cmp4 = icmp slt i64 %call.i84, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i85)
  %cmp6 = icmp slt i64 %call.i85, 0
  %or.cond82 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond82, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %icount_min = getelementptr inbounds %struct.xchk_fscounters, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %icount_min to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %icount_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %5)
  %cmp7 = icmp ult i64 %call.i, %5
  br i1 %cmp7, label %if.end.if.then10_crit_edge, label %lor.lhs.false8

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false8:                                   ; preds = %if.end
  %icount_max = getelementptr inbounds %struct.xchk_fscounters, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %icount_max to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %icount_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %7)
  %cmp9 = icmp ugt i64 %call.i, %7
  br i1 %cmp9, label %lor.lhs.false8.if.then10_crit_edge, label %lor.lhs.false8.if.end11_crit_edge

lor.lhs.false8.if.end11_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  tail call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false8.if.end11_crit_edge
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i85, i64 %9)
  %cmp12 = icmp ugt i64 %call.i85, %9
  br i1 %cmp12, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i84, i64 %call.i)
  %cmp15 = icmp sgt i64 %call.i84, %call.i
  %sub = sub i64 %call.i84, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %sub)
  %cmp16 = icmp sgt i64 %sub, 512
  %or.cond83 = and i1 %cmp15, %cmp16
  br i1 %or.cond83, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %call19 = tail call fastcc i32 @xchk_fscount_aggregate_agcounts(ptr noundef %sc, ptr noundef %3)
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call19, ptr %error, align 4
  %call21 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sm_flags, align 4
  %and = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %3, align 8
  %call.i.i = call i64 @__percpu_counter_sum(ptr noundef %m_icount) #7
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  call fastcc void @trace_xchk_fscounters_within_range(ptr noundef %20, i64 noundef %18, i64 noundef %call.i.i, i64 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.i = icmp slt i64 %call.i.i, 0
  br i1 %cmp.i, label %if.end25.if.then29_crit_edge, label %if.end.i

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %18)
  %cmp1.i = icmp eq i64 %call.i.i, %18
  br i1 %cmp1.i, label %if.end.i.if.end30_crit_edge, label %if.end3.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end3.i:                                        ; preds = %if.end.i
  %21 = call i64 @llvm.smin.i64(i64 %call.i.i, i64 %call.i) #7
  %22 = call i64 @llvm.smax.i64(i64 %call.i.i, i64 %call.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %18)
  %cmp11.not.i = icmp ugt i64 %21, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %18)
  %cmp12.not.i = icmp ult i64 %22, %18
  %or.cond.i = or i1 %cmp11.not.i, %cmp12.not.i
  br i1 %or.cond.i, label %if.end14.i, label %if.end3.i.if.end30_crit_edge

if.end3.i.if.end30_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end14.i:                                       ; preds = %if.end3.i
  %sub.i = sub i64 %22, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %sub.i)
  %cmp15.i = icmp sgt i64 %sub.i, 511
  br i1 %cmp15.i, label %if.then16.i, label %if.end14.i.if.then29_crit_edge

if.end14.i.if.then29_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_set_incomplete(ptr noundef %sc) #7
  br label %if.end30

if.then29:                                        ; preds = %if.end14.i.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then16.i, %if.end3.i.if.end30_crit_edge, %if.end.i.if.end30_crit_edge
  %ifree32 = getelementptr inbounds %struct.xchk_fscounters, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %ifree32 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ifree32, align 8
  %call.i.i86 = call i64 @__percpu_counter_sum(ptr noundef %m_ifree) #7
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  call fastcc void @trace_xchk_fscounters_within_range(ptr noundef %26, i64 noundef %24, i64 noundef %call.i.i86, i64 noundef %call.i84) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i86)
  %cmp.i87 = icmp slt i64 %call.i.i86, 0
  br i1 %cmp.i87, label %if.end30.if.then34_crit_edge, label %if.end.i89

if.end30.if.then34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end.i89:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i86, i64 %24)
  %cmp1.i88 = icmp eq i64 %call.i.i86, %24
  br i1 %cmp1.i88, label %if.end.i89.if.end35_crit_edge, label %if.end3.i93

if.end.i89.if.end35_crit_edge:                    ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end3.i93:                                      ; preds = %if.end.i89
  %27 = call i64 @llvm.smin.i64(i64 %call.i.i86, i64 %call.i84) #7
  %28 = call i64 @llvm.smax.i64(i64 %call.i.i86, i64 %call.i84) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %24)
  %cmp11.not.i90 = icmp ugt i64 %27, %24
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %24)
  %cmp12.not.i91 = icmp ult i64 %28, %24
  %or.cond.i92 = or i1 %cmp11.not.i90, %cmp12.not.i91
  br i1 %or.cond.i92, label %if.end14.i96, label %if.end3.i93.if.end35_crit_edge

if.end3.i93.if.end35_crit_edge:                   ; preds = %if.end3.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end14.i96:                                     ; preds = %if.end3.i93
  %sub.i94 = sub i64 %28, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %sub.i94)
  %cmp15.i95 = icmp sgt i64 %sub.i94, 511
  br i1 %cmp15.i95, label %if.then16.i97, label %if.end14.i96.if.then34_crit_edge

if.end14.i96.if.then34_crit_edge:                 ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then16.i97:                                    ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_set_incomplete(ptr noundef %sc) #7
  br label %if.end35

if.then34:                                        ; preds = %if.end14.i96.if.then34_crit_edge, %if.end30.if.then34_crit_edge
  call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then16.i97, %if.end3.i93.if.end35_crit_edge, %if.end.i89.if.end35_crit_edge
  %fdblocks37 = getelementptr inbounds %struct.xchk_fscounters, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %fdblocks37 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fdblocks37, align 8
  %call.i.i100 = call i64 @__percpu_counter_sum(ptr noundef %m_fdblocks) #7
  %31 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sc, align 4
  call fastcc void @trace_xchk_fscounters_within_range(ptr noundef %32, i64 noundef %30, i64 noundef %call.i.i100, i64 noundef %call.i85) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i100)
  %cmp.i101 = icmp slt i64 %call.i.i100, 0
  br i1 %cmp.i101, label %if.end35.if.then39_crit_edge, label %if.end.i103

if.end35.if.then39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.end.i103:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i100, i64 %30)
  %cmp1.i102 = icmp eq i64 %call.i.i100, %30
  br i1 %cmp1.i102, label %if.end.i103.cleanup_crit_edge, label %if.end3.i107

if.end.i103.cleanup_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i107:                                     ; preds = %if.end.i103
  %33 = call i64 @llvm.smin.i64(i64 %call.i.i100, i64 %call.i85) #7
  %34 = call i64 @llvm.smax.i64(i64 %call.i.i100, i64 %call.i85) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %30)
  %cmp11.not.i104 = icmp ugt i64 %33, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %30)
  %cmp12.not.i105 = icmp ult i64 %34, %30
  %or.cond.i106 = or i1 %cmp11.not.i104, %cmp12.not.i105
  br i1 %or.cond.i106, label %if.end14.i110, label %if.end3.i107.cleanup_crit_edge

if.end3.i107.cleanup_crit_edge:                   ; preds = %if.end3.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i110:                                    ; preds = %if.end3.i107
  %sub.i108 = sub i64 %34, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %sub.i108)
  %cmp15.i109 = icmp sgt i64 %sub.i108, 511
  br i1 %cmp15.i109, label %if.then16.i111, label %if.end14.i110.if.then39_crit_edge

if.end14.i110.if.then39_crit_edge:                ; preds = %if.end14.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then16.i111:                                   ; preds = %if.end14.i110
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_set_incomplete(ptr noundef %sc) #7
  br label %cleanup

if.then39:                                        ; preds = %if.end14.i110.if.then39_crit_edge, %if.end35.if.then39_crit_edge
  call void @xchk_set_corrupt(ptr noundef %sc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then16.i111, %if.end3.i107.cleanup_crit_edge, %if.end.i103.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then22
  %retval.0 = phi i32 [ %12, %if.then22 ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then16.i111 ], [ 0, %if.end.i103.cleanup_crit_edge ], [ 0, %if.end3.i107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_set_corrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_fscount_aggregate_agcounts(ptr noundef %sc, ptr nocapture noundef %fsc) unnamed_addr #3 align 64 {
entry:
  %blocks.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %ifree = getelementptr inbounds %struct.xchk_fscounters, ptr %fsc, i32 0, i32 1
  %fdblocks = getelementptr inbounds %struct.xchk_fscounters, ptr %fsc, i32 0, i32 2
  %sa.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %bno_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %cnt_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 5
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  %m_resblks_avail = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 85
  %m_delalloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 80
  %icount_min = getelementptr inbounds %struct.xchk_fscounters, ptr %fsc, i32 0, i32 3
  %icount_max = getelementptr inbounds %struct.xchk_fscounters, ptr %fsc, i32 0, i32 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  br label %retry

retry:                                            ; preds = %if.then71.retry_crit_edge, %entry
  %tries.0 = phi i32 [ 8, %entry ], [ %dec, %if.then71.retry_crit_edge ]
  %2 = call ptr @memset(ptr %fsc, i32 0, i32 24)
  %call = call ptr @xfs_perag_get(ptr noundef %1, i32 noundef 0) #7
  %cmp.not153 = icmp eq ptr %call, null
  br i1 %cmp.not153, label %retry.if.end39_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.if.end39_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %retry.for.body_crit_edge
  %pag.0155 = phi ptr [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ], [ %call, %retry.for.body_crit_edge ]
  %agno.0154 = phi i32 [ %add.i134, %xfs_perag_next.exit.for.body_crit_edge ], [ 0, %retry.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = call i32 @__cond_resched() #7
  %3 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.if.end_crit_edge, label %fatal_signal_pending.exit.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %for.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 116, i32 1
  %11 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i.i.i, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.if.end36.thread167_crit_edge

fatal_signal_pending.exit.i.if.end36.thread167_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.thread167

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 4
  %14 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end36.thread167_crit_edge, label %lor.lhs.false

if.end.if.end36.thread167_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.thread167

lor.lhs.false:                                    ; preds = %if.end
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 3
  %16 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end36.thread167_crit_edge, label %if.end5

lor.lhs.false.if.end36.thread167_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.thread167

if.end5:                                          ; preds = %lor.lhs.false
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 14
  %18 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagi_count, align 4
  %conv = zext i32 %19 to i64
  %20 = ptrtoint ptr %fsc to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fsc, align 8
  %add = add i64 %21, %conv
  store i64 %add, ptr %fsc, align 8
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 13
  %22 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagi_freecount, align 4
  %conv7 = zext i32 %23 to i64
  %24 = ptrtoint ptr %ifree to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ifree, align 8
  %add9 = add i64 %25, %conv7
  store i64 %add9, ptr %ifree, align 8
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 10
  %26 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagf_freeblks, align 4
  %conv10 = zext i32 %27 to i64
  %28 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fdblocks, align 8
  %add12 = add i64 %29, %conv10
  store i64 %add12, ptr %fdblocks, align 8
  %pagf_flcount = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 9
  %30 = ptrtoint ptr %pagf_flcount to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagf_flcount, align 4
  %conv13 = zext i32 %31 to i64
  %add15 = add i64 %add12, %conv13
  store i64 %add15, ptr %fdblocks, align 8
  %32 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %33, i32 0, i32 61
  %34 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %35, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %pagf_btreeblks = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 12
  %36 = ptrtoint ptr %pagf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagf_btreeblks, align 4
  %conv19 = zext i32 %37 to i64
  %add21 = add i64 %add15, %conv19
  %38 = ptrtoint ptr %fdblocks to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add21, ptr %fdblocks, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks.i) #7
  %39 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %blocks.i, align 4, !annotation !23
  %call.i.i132 = call i32 @xchk_ag_init(ptr noundef %sc, i32 noundef %agno.0154, ptr noundef %sa.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i132)
  %cmp.i.i = icmp eq i32 %call.i.i132, -2
  %spec.select.i.i = select i1 %cmp.i.i, i32 -117, i32 %call.i.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool.not.i133 = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool.not.i133, label %if.end.i, label %if.end36

if.end.i:                                         ; preds = %if.else
  %40 = ptrtoint ptr %bno_cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bno_cur.i, align 4
  %call2.i = call i32 @xfs_btree_count_blocks(ptr noundef %41, ptr noundef nonnull %blocks.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.xchk_fscount_btreeblks.exit.thread_crit_edge

if.end.i.xchk_fscount_btreeblks.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_fscount_btreeblks.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blocks.i, align 4
  %sub.i = add i32 %43, -1
  %conv.i = zext i32 %sub.i to i64
  %44 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %fdblocks, align 8
  %add.i = add i64 %45, %conv.i
  store i64 %add.i, ptr %fdblocks, align 8
  %46 = ptrtoint ptr %cnt_cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cnt_cur.i, align 4
  %call7.i = call i32 @xfs_btree_count_blocks(ptr noundef %47, ptr noundef nonnull %blocks.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %xchk_fscount_btreeblks.exit.thread144, label %if.end5.i.xchk_fscount_btreeblks.exit.thread_crit_edge

if.end5.i.xchk_fscount_btreeblks.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_fscount_btreeblks.exit.thread

xchk_fscount_btreeblks.exit.thread144:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blocks.i, align 4
  %sub11.i = add i32 %49, -1
  %conv12.i = zext i32 %sub11.i to i64
  %50 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %fdblocks, align 8
  %add14.i = add i64 %51, %conv12.i
  store i64 %add14.i, ptr %fdblocks, align 8
  call void @xchk_ag_free(ptr noundef %sc, ptr noundef %sa.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i) #7
  br label %if.end26

xchk_fscount_btreeblks.exit.thread:               ; preds = %if.end5.i.xchk_fscount_btreeblks.exit.thread_crit_edge, %if.end.i.xchk_fscount_btreeblks.exit.thread_crit_edge
  %error.0.i.ph = phi i32 [ %call7.i, %if.end5.i.xchk_fscount_btreeblks.exit.thread_crit_edge ], [ %call2.i, %if.end.i.xchk_fscount_btreeblks.exit.thread_crit_edge ]
  call void @xchk_ag_free(ptr noundef %sc, ptr noundef %sa.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i) #7
  br label %if.end36.thread167

if.end26:                                         ; preds = %xchk_fscount_btreeblks.exit.thread144, %if.then18
  %ar_reserved = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 20, i32 1
  %52 = ptrtoint ptr %ar_reserved to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ar_reserved, align 4
  %conv27 = zext i32 %53 to i64
  %54 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %fdblocks, align 8
  %sub = sub i64 %55, %conv27
  store i64 %sub, ptr %fdblocks, align 8
  %pag_rmapbt_resv = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 21
  %56 = ptrtoint ptr %pag_rmapbt_resv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pag_rmapbt_resv, align 4
  %conv29 = zext i32 %57 to i64
  %sub31 = sub i64 %sub, %conv29
  store i64 %sub31, ptr %fdblocks, align 8
  %58 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sb_agcount, align 8
  %sub32 = add i32 %59, -1
  %60 = ptrtoint ptr %pag.0155 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pag.0155, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.0155, i32 0, i32 1
  %62 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pag_agno.i, align 4
  %add.i134 = add i32 %63, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.0155) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i134, i32 %sub32)
  %cmp.i135 = icmp ugt i32 %add.i134, %sub32
  br i1 %cmp.i135, label %if.end26.if.end39_crit_edge, label %xfs_perag_next.exit

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

xfs_perag_next.exit:                              ; preds = %if.end26
  %call.i = call ptr @xfs_perag_get(ptr noundef %61, i32 noundef %add.i134) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.if.end39_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

xfs_perag_next.exit.if.end39_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end36.thread167:                               ; preds = %xchk_fscount_btreeblks.exit.thread, %lor.lhs.false.if.end36.thread167_crit_edge, %if.end.if.end36.thread167_crit_edge, %fatal_signal_pending.exit.i.if.end36.thread167_crit_edge
  %error.4.ph = phi i32 [ %error.0.i.ph, %xchk_fscount_btreeblks.exit.thread ], [ -117, %lor.lhs.false.if.end36.thread167_crit_edge ], [ -117, %if.end.if.end36.thread167_crit_edge ], [ -11, %fatal_signal_pending.exit.i.if.end36.thread167_crit_edge ]
  call void @xfs_perag_put(ptr noundef nonnull %pag.0155) #7
  br label %cleanup

if.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_ag_free(ptr noundef %sc, ptr noundef %sa.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i) #7
  call void @xfs_perag_put(ptr noundef nonnull %pag.0155) #7
  br label %cleanup

if.end39:                                         ; preds = %xfs_perag_next.exit.if.end39_crit_edge, %if.end26.if.end39_crit_edge, %retry.if.end39_crit_edge
  %64 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_resblks_avail, align 64
  %66 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %fdblocks, align 8
  %sub41 = sub i64 %67, %65
  store i64 %sub41, ptr %fdblocks, align 8
  %call.i137 = call i64 @__percpu_counter_sum(ptr noundef %m_delalloc_blks) #7
  %68 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %fdblocks, align 8
  %sub44 = sub i64 %69, %call.i137
  store i64 %sub44, ptr %fdblocks, align 8
  %70 = ptrtoint ptr %fsc to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %fsc, align 8
  %72 = ptrtoint ptr %ifree to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ifree, align 8
  call fastcc void @trace_xchk_fscounters_calc(ptr noundef %1, i64 noundef %71, i64 noundef %73, i64 noundef %sub44, i64 noundef %call.i137)
  %74 = ptrtoint ptr %fsc to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %fsc, align 8
  %76 = ptrtoint ptr %icount_min to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %icount_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp49 = icmp ult i64 %75, %77
  br i1 %cmp49, label %if.end39.cleanup_crit_edge, label %lor.lhs.false51

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false51:                                  ; preds = %if.end39
  %78 = ptrtoint ptr %icount_max to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %icount_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %79)
  %cmp53 = icmp ugt i64 %75, %79
  br i1 %cmp53, label %lor.lhs.false51.cleanup_crit_edge, label %lor.lhs.false55

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %80 = ptrtoint ptr %fdblocks to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %fdblocks, align 8
  %82 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %83)
  %cmp58 = icmp ugt i64 %81, %83
  br i1 %cmp58, label %lor.lhs.false55.cleanup_crit_edge, label %lor.lhs.false60

lor.lhs.false55.cleanup_crit_edge:                ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false60:                                  ; preds = %lor.lhs.false55
  %84 = ptrtoint ptr %ifree to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ifree, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %79)
  %cmp63 = icmp ugt i64 %85, %79
  br i1 %cmp63, label %lor.lhs.false60.cleanup_crit_edge, label %if.end66

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %75)
  %cmp69 = icmp ugt i64 %85, %75
  br i1 %cmp69, label %if.then71, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %if.end66
  %dec = add nsw i32 %tries.0, -1
  %tobool72.not = icmp eq i32 %tries.0, 0
  br i1 %tobool72.not, label %if.end74, label %if.then71.retry_crit_edge

if.then71.retry_crit_edge:                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

if.end74:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_set_incomplete(ptr noundef %sc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end66.cleanup_crit_edge, %lor.lhs.false60.cleanup_crit_edge, %lor.lhs.false55.cleanup_crit_edge, %lor.lhs.false51.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end36, %if.end36.thread167
  %retval.0 = phi i32 [ 0, %if.end74 ], [ %spec.select.i.i, %if.end36 ], [ %error.4.ph, %if.end36.thread167 ], [ 0, %if.end66.cleanup_crit_edge ], [ -117, %if.end39.cleanup_crit_edge ], [ -117, %lor.lhs.false51.cleanup_crit_edge ], [ -117, %lor.lhs.false55.cleanup_crit_edge ], [ -117, %lor.lhs.false60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_process_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_fscounters_calc(ptr noundef %mp, i64 noundef %icount, i64 noundef %ifree, i64 noundef %fdblocks, i64 noundef %delalloc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_calc, i32 0, i32 1), ptr blockaddress(@trace_xchk_fscounters_calc, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !24

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !25

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %call42 = tail call i32 @__traceiter_xchk_fscounters_calc(ptr noundef null, ptr noundef %mp, i64 noundef %icount, i64 noundef %ifree, i64 noundef %fdblocks, i64 noundef %delalloc) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !25

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_calc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_calc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xchk_fscounters_calc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_fscounters_calc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 635, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  %31 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_set_incomplete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_fscounters_calc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_fscounters_within_range(ptr noundef %mp, i64 noundef %expected, i64 noundef %curr_value, i64 noundef %old_value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_within_range, i32 0, i32 1), ptr blockaddress(@trace_xchk_fscounters_within_range, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !24

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !25

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %call42 = tail call i32 @__traceiter_xchk_fscounters_within_range(ptr noundef null, ptr noundef %mp, i64 noundef %expected, i64 noundef %curr_value, i64 noundef %old_value) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !25

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_within_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fscounters_within_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xchk_fscounters_within_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_fscounters_within_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 658, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  %31 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_fscounters_within_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/xfs/scrub/trace.h", i32 602, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/xfs/scrub/trace.h", i32 637, i32 1}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2148253926, i64 2148253931, i64 2148253944, i64 2148253988, i64 2148254022, i64 2148254043}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2156198852}
!27 = !{i64 2156199129}
!28 = !{i64 2149956019}
!29 = !{i64 2149957055}
!30 = !{i64 2156221218}
!31 = !{i64 2156221507}
