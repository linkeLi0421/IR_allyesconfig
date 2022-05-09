; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/refcount.c_pt.bc'
source_filename = "../fs/xfs/scrub/refcount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.92, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.92 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.93, %union.anon.94 }
%union.anon.93 = type { ptr }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_refcount_rec = type { i32, i32, i32 }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_refcount_irec = type { i32, i32, i32 }
%struct.xchk_refcnt_check = type { ptr, %struct.list_head, i32, i32, i32, i32 }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xchk_refcnt_frag = type { %struct.list_head, %struct.xfs_rmap_irec }

@XFS_RMAP_OINFO_REFC = external dso_local constant %struct.xfs_owner_info, align 8
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_COW = external dso_local constant %struct.xfs_owner_info, align 8
@___asan_gen_ = private constant [27 x i8] c"../fs/xfs/scrub/refcount.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_ag_refcountbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_ag_btree(ptr noundef %sc, i1 noundef zeroext false) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_btree(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_refcountbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %cow_blocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cow_blocks) #6
  %0 = ptrtoint ptr %cow_blocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cow_blocks, align 4
  %refc_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %refc_cur, align 4
  %call = call i32 @xchk_btree(ptr noundef %sc, ptr noundef %2, ptr noundef nonnull @xchk_refcountbt_rec, ptr noundef nonnull @XFS_RMAP_OINFO_REFC, ptr noundef nonnull %cow_blocks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %cow_blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cow_blocks, align 4
  %conv = zext i32 %4 to i64
  call fastcc void @xchk_refcount_xref_rmap(ptr noundef %sc, i64 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cow_blocks) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_btree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_refcountbt_rec(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %rec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  %private = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %6 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pag_agno, align 4
  %11 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rc_blockcount, align 4
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 2
  %15 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rc_refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %17 = select i1 %cmp, i1 %tobool.not, i1 false
  %brmerge = xor i1 %17, true
  %brmerge54 = select i1 %cmp, i1 true, i1 %tobool.not
  %or.cond = select i1 %brmerge, i1 %brmerge54, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bs, align 8
  tail call void @xchk_btree_set_corrupt(ptr noundef %19, ptr noundef %1, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  %add = add i32 %21, %14
  store i32 %add, ptr %5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %and10 = and i32 %12, 2147483647
  %add11 = add i32 %and10, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %and10)
  %cmp12.not = icmp ugt i32 %add11, %and10
  br i1 %cmp12.not, label %lor.lhs.false13, label %if.end9.if.then17_crit_edge

if.end9.if.then17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false13:                                  ; preds = %if.end9
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %10, i32 noundef %and10) #6
  br i1 %call, label %lor.lhs.false14, label %lor.lhs.false13.if.then17_crit_edge

lor.lhs.false13.if.then17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false14:                                  ; preds = %lor.lhs.false13
  %sub = add i32 %add11, -1
  %call16 = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %10, i32 noundef %sub) #6
  br i1 %call16, label %lor.lhs.false14.if.end20_crit_edge, label %lor.lhs.false14.if.then17_crit_edge

lor.lhs.false14.if.then17_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false14.if.end20_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %lor.lhs.false14.if.then17_crit_edge, %lor.lhs.false13.if.then17_crit_edge, %if.end9.if.then17_crit_edge
  %22 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bs, align 8
  %24 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %23, ptr noundef %25, i32 noundef 0) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %lor.lhs.false14.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bs, align 8
  %28 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %27, ptr noundef %29, i32 noundef 0) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %30 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bs, align 8
  tail call fastcc void @xchk_refcountbt_xref(ptr noundef %31, i32 noundef %and10, i32 noundef %14, i32 noundef %16)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_refcount_xref_rmap(ptr noundef %sc, i64 noundef %cow_blocks) unnamed_addr #3 align 64 {
entry:
  %refcbt_blocks = alloca i32, align 4
  %blocks = alloca i64, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refcbt_blocks) #6
  %0 = ptrtoint ptr %refcbt_blocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %refcbt_blocks, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocks) #6
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %blocks, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %7, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refc_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %8 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %refc_cur, align 4
  %call2 = call i32 @xfs_btree_count_blocks(ptr noundef %9, ptr noundef nonnull %refcbt_blocks) #6
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2, ptr %error, align 4
  %11 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %refc_cur, align 4
  %call5 = call zeroext i1 @xchk_btree_process_error(ptr noundef %sc, ptr noundef %12, i32 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmap_cur, align 4
  %call10 = call i32 @xchk_count_rmap_ownedby_ag(ptr noundef %sc, ptr noundef %14, ptr noundef nonnull @XFS_RMAP_OINFO_REFC, ptr noundef nonnull %blocks) #6
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10, ptr %error, align 4
  %call13 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #6
  br i1 %call13, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %blocks, align 8
  %18 = ptrtoint ptr %refcbt_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcbt_blocks, align 4
  %conv = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv)
  %cmp.not = icmp eq i64 %17, %conv
  br i1 %cmp.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmap_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %21, i32 noundef 0) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %22 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmap_cur, align 4
  %call23 = call i32 @xchk_count_rmap_ownedby_ag(ptr noundef %sc, ptr noundef %23, ptr noundef nonnull @XFS_RMAP_OINFO_COW, ptr noundef nonnull %blocks) #6
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call23, ptr %error, align 4
  %call26 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #6
  br i1 %call26, label %if.end28, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %cow_blocks)
  %cmp29.not = icmp eq i64 %26, %cow_blocks
  br i1 %cmp29.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmap_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %28, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocks) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refcbt_blocks) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_cow_staging(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %rc = alloca %struct.xfs_refcount_irec, align 4
  %has_refcount = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rc) #6
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rc, align 4, !annotation !12
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %rc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !12
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %rc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_refcount) #6
  %5 = ptrtoint ptr %has_refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %has_refcount, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %refc_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refc_cur, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = xor i32 %agbno, -2147483648
  %call3 = call i32 @xfs_refcount_lookup_le(ptr noundef nonnull %7, i32 noundef %add, ptr noundef nonnull %has_refcount) #6
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %refc_cur) #6
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %has_refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %has_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %refc_cur, align 4
  br i1 %tobool9.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %call16 = call i32 @xfs_refcount_get_rec(ptr noundef %16, ptr noundef nonnull %rc, ptr noundef nonnull %has_refcount) #6
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call16, ptr %error, align 4
  %call19 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %refc_cur) #6
  br i1 %call19, label %if.end21, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %has_refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %has_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.end21.cleanup.sink.split.sink.split_crit_edge, label %if.end26

if.end21.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.end26:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool27.not = icmp sgt i32 %21, -1
  br i1 %tobool27.not, label %if.end26.if.then30_crit_edge, label %lor.lhs.false29

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false29:                                  ; preds = %if.end26
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not = icmp eq i32 %23, 1
  br i1 %cmp.not, label %lor.lhs.false29.if.end33_crit_edge, label %lor.lhs.false29.if.then30_crit_edge

lor.lhs.false29.if.then30_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false29.if.end33_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %lor.lhs.false29.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %24 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %refc_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %25, i32 noundef 0) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %lor.lhs.false29.if.end33_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %len)
  %cmp34 = icmp ult i32 %27, %len
  br i1 %cmp34, label %if.end33.cleanup.sink.split.sink.split_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end33.cleanup.sink.split.sink.split_crit_edge, %if.end21.cleanup.sink.split.sink.split_crit_edge
  %28 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %refc_cur, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.end8.cleanup.sink.split_crit_edge ], [ %29, %cleanup.sink.split.sink.split ]
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %.sink, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_refcount) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_lookup_le(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_xref_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %shared = alloca i8, align 1
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared) #6
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %shared, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %refc_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %refc_cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @xfs_refcount_has_record(ptr noundef nonnull %2, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %shared) #6
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %refc_cur) #6
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shared, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %refc_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_has_record(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_refcountbt_xref(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len, i32 noundef %refcount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #6
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #6
  tail call fastcc void @xchk_refcountbt_xref_rmap(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len, i32 noundef %refcount)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_refcountbt_xref_rmap(ptr noundef %sc, i32 noundef %bno, i32 noundef %len, i32 noundef %refcount) unnamed_addr #3 align 64 {
entry:
  %refchk = alloca %struct.xchk_refcnt_check, align 4
  %low = alloca %struct.xfs_rmap_irec, align 8
  %high = alloca %struct.xfs_rmap_irec, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %refchk) #6
  %0 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 5
  %6 = ptrtoint ptr %refchk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sc, ptr %refchk, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bno, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %refcount, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %11 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %16, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %17 = call ptr @memset(ptr %low, i32 0, i32 32)
  %18 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bno, ptr %low, align 8
  %19 = call ptr @memset(ptr %high, i32 255, i32 32)
  %add = add i32 %bno, -1
  %sub = add i32 %add, %len
  %20 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %high, align 8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %0, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %0, ptr %1, align 4
  %call9 = call i32 @xfs_rmap_query_range(ptr noundef nonnull %12, ptr noundef nonnull %low, ptr noundef nonnull %high, ptr noundef nonnull @xchk_refcountbt_rmap_check, ptr noundef nonnull %refchk) #6
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call9, ptr %error, align 4
  %call12 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #6
  br i1 %call12, label %if.end14, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end14:                                         ; preds = %if.end
  call fastcc void @xchk_refcountbt_process_rmap_fragments(ptr noundef nonnull %refchk)
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %refcount)
  %cmp.not = icmp eq i32 %25, %refcount
  br i1 %cmp.not, label %if.end14.out_free_crit_edge, label %if.then16

if.end14.out_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmap_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %27, i32 noundef 0) #6
  br label %out_free

out_free:                                         ; preds = %if.then16, %if.end14.out_free_crit_edge, %if.end.out_free_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %cmp27.not55 = icmp eq ptr %29, %0
  br i1 %cmp27.not55, label %out_free.cleanup_crit_edge, label %out_free.for.body_crit_edge

out_free.for.body_crit_edge:                      ; preds = %out_free
  br label %for.body

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %out_free.for.body_crit_edge
  %frag.056 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %29, %out_free.for.body_crit_edge ]
  %30 = ptrtoint ptr %frag.056 to i32
  call void @__asan_load4_noabort(i32 %30)
  %n.0 = load ptr, ptr %frag.056, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.056) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frag.056, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %frag.056 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %frag.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %37 = ptrtoint ptr %frag.056 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %frag.056, align 4
  %prev.i54 = getelementptr inbounds %struct.list_head, ptr %frag.056, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i54, align 4
  call void @kvfree(ptr noundef %frag.056) #6
  %cmp27.not = icmp eq ptr %n.0, %0
  br i1 %cmp27.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %out_free.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %refchk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_refcountbt_rmap_check(ptr noundef %cur, ptr nocapture noundef readonly %rec, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %12, -1
  %sub = add i32 %add, %14
  %bno = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bno, align 4
  %len = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 3
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add1 = add i32 %16, -1
  %sub2 = add i32 %add1, %18
  %refcount = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 4
  %19 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %21 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %22)
  %cmp3.not = icmp eq i64 %22, -9
  br i1 %cmp3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  tail call void @xchk_btree_xref_set_corrupt(ptr noundef %24, ptr noundef %cur, i32 noundef 0) #6
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp9.not = icmp ugt i32 %12, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub2)
  %cmp11.not = icmp ult i32 %sub, %sub2
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %seen = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 5
  %25 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seen, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %seen, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %call13 = tail call ptr @kmem_alloc(i32 noundef 40, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %rm = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %call13, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %rm, ptr %rec, i32 32)
  %fragments = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.xchk_refcnt_check, ptr %priv, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call13, ptr noundef %29, ptr noundef %fragments) #6
  br i1 %call.i.i34, label %if.end.i.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %fragments, ptr %call13, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call13, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then12, %if.then4, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %if.then12 ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_refcountbt_process_rmap_fragments(ptr noundef %refchk) unnamed_addr #3 align 64 {
entry:
  %worklist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %worklist) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %worklist, i32 0, i32 1
  %refcount = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 4
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcount, align 4
  %seen = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 5
  %3 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seen, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %worklist to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %worklist, ptr %worklist, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %worklist, ptr %0, align 4
  %fragments = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %bno.0 = phi i32 [ 0, %if.end ], [ %9, %for.body.for.cond_crit_edge ]
  %frag.0.in = phi ptr [ %fragments, %if.end ], [ %frag.0, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %frag.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %frag.0 = load ptr, ptr %frag.0.in, align 4
  %cmp2.not = icmp eq ptr %frag.0, %fragments
  br i1 %cmp2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rm = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.0, i32 0, i32 1
  %8 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rm, align 8
  %cmp3 = icmp ult i32 %9, %bno.0
  br i1 %cmp3, label %for.body.done_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.end:                                          ; preds = %for.cond
  %10 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fragments, align 4
  %cmp26.not303 = icmp eq ptr %11, %fragments
  br i1 %cmp26.not303, label %for.end.for.end49_crit_edge, label %for.body28.lr.ph

for.end.for.end49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body28.lr.ph:                                 ; preds = %for.end
  %bno31 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 2
  br label %for.body28

for.body28:                                       ; preds = %list_move_tail.exit.for.body28_crit_edge, %for.body28.lr.ph
  %frag.1306 = phi ptr [ %11, %for.body28.lr.ph ], [ %n.0308, %list_move_tail.exit.for.body28_crit_edge ]
  %rbno.0305 = phi i32 [ -1, %for.body28.lr.ph ], [ %19, %list_move_tail.exit.for.body28_crit_edge ]
  %nr.0304 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc, %list_move_tail.exit.for.body28_crit_edge ]
  %12 = ptrtoint ptr %frag.1306 to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0308 = load ptr, ptr %frag.1306, align 8
  %rm29 = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.1306, i32 0, i32 1
  %13 = ptrtoint ptr %rm29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rm29, align 8
  %15 = ptrtoint ptr %bno31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bno31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp32 = icmp ugt i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0304, i32 %sub)
  %cmp33 = icmp ugt i32 %nr.0304, %sub
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp33
  br i1 %or.cond, label %for.body28.for.end49_crit_edge, label %if.end35

for.body28.for.end49_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

if.end35:                                         ; preds = %for.body28
  %rm_blockcount = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.1306, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %18, %14
  %19 = call i32 @llvm.umin.i32(i32 %add, i32 %rbno.0305)
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.1306) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.__list_del_entry.exit.i_crit_edge

if.end35.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frag.1306, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %frag.1306 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %frag.1306, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end35.__list_del_entry.exit.i_crit_edge
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %frag.1306, ptr noundef %27, ptr noundef nonnull %worklist) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %frag.1306, ptr %0, align 4
  %29 = ptrtoint ptr %frag.1306 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %worklist, ptr %frag.1306, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %frag.1306, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %frag.1306, ptr %27, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %inc = add i32 %nr.0304, 1
  %cmp26.not = icmp eq ptr %n.0308, %fragments
  br i1 %cmp26.not, label %list_move_tail.exit.for.end49_crit_edge, label %list_move_tail.exit.for.body28_crit_edge

list_move_tail.exit.for.body28_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

list_move_tail.exit.for.end49_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.end49:                                        ; preds = %list_move_tail.exit.for.end49_crit_edge, %for.body28.for.end49_crit_edge, %for.end.for.end49_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.end.for.end49_crit_edge ], [ %nr.0304, %for.body28.for.end49_crit_edge ], [ %inc, %list_move_tail.exit.for.end49_crit_edge ]
  %rbno.0.lcssa = phi i32 [ -1, %for.end.for.end49_crit_edge ], [ %rbno.0305, %for.body28.for.end49_crit_edge ], [ %19, %list_move_tail.exit.for.end49_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0.lcssa, i32 %sub)
  %cmp50.not = icmp eq i32 %nr.0.lcssa, %sub
  br i1 %cmp50.not, label %for.end49.while.cond_crit_edge, label %for.end49.done_crit_edge

for.end49.done_crit_edge:                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.end49.while.cond_crit_edge:                   ; preds = %for.end49
  br label %while.cond

while.cond:                                       ; preds = %for.end128.while.cond_crit_edge, %for.end49.while.cond_crit_edge
  %rbno.2 = phi i32 [ %next_rbno.4, %for.end128.while.cond_crit_edge ], [ %rbno.0.lcssa, %for.end49.while.cond_crit_edge ]
  %32 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %fragments, align 4
  %cmp.i.not = icmp eq ptr %33, %fragments
  br i1 %cmp.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %34 = ptrtoint ptr %worklist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %worklist, align 4
  %cmp66.not313 = icmp eq ptr %35, %worklist
  br i1 %cmp66.not313, label %while.body.for.end88_crit_edge, label %while.body.for.body68_crit_edge

while.body.for.body68_crit_edge:                  ; preds = %while.body
  br label %for.body68

while.body.for.end88_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end88

for.body68:                                       ; preds = %for.inc82.for.body68_crit_edge, %while.body.for.body68_crit_edge
  %frag.2316 = phi ptr [ %n.1317, %for.inc82.for.body68_crit_edge ], [ %35, %while.body.for.body68_crit_edge ]
  %next_rbno.0315 = phi i32 [ %next_rbno.1, %for.inc82.for.body68_crit_edge ], [ -1, %while.body.for.body68_crit_edge ]
  %nr.1314 = phi i32 [ %nr.2, %for.inc82.for.body68_crit_edge ], [ 0, %while.body.for.body68_crit_edge ]
  %36 = ptrtoint ptr %frag.2316 to i32
  call void @__asan_load4_noabort(i32 %36)
  %n.1317 = load ptr, ptr %frag.2316, align 8
  %rm69 = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.2316, i32 0, i32 1
  %37 = ptrtoint ptr %rm69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rm69, align 8
  %rm_blockcount72 = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.2316, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %rm_blockcount72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rm_blockcount72, align 4
  %add73 = add i32 %40, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add73, i32 %rbno.2)
  %cmp74.not = icmp eq i32 %add73, %rbno.2
  br i1 %cmp74.not, label %if.end79, label %if.then75

if.then75:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  %41 = call i32 @llvm.umin.i32(i32 %add73, i32 %next_rbno.0315)
  br label %for.inc82

if.end79:                                         ; preds = %for.body68
  %call.i.i268 = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.2316) #6
  br i1 %call.i.i268, label %if.end.i.i271, label %if.end79.list_del.exit_crit_edge

if.end79.list_del.exit_crit_edge:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i271:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i269 = getelementptr inbounds %struct.list_head, ptr %frag.2316, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i269 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i269, align 4
  %44 = ptrtoint ptr %frag.2316 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %frag.2316, align 4
  %prev1.i.i.i270 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i270 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i270, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i271, %if.end79.list_del.exit_crit_edge
  %48 = ptrtoint ptr %frag.2316 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %frag.2316, align 4
  %prev.i272 = getelementptr inbounds %struct.list_head, ptr %frag.2316, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i272 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i272, align 4
  call void @kvfree(ptr noundef %frag.2316) #6
  %inc81 = add i32 %nr.1314, 1
  br label %for.inc82

for.inc82:                                        ; preds = %list_del.exit, %if.then75
  %nr.2 = phi i32 [ %inc81, %list_del.exit ], [ %nr.1314, %if.then75 ]
  %next_rbno.1 = phi i32 [ %next_rbno.0315, %list_del.exit ], [ %41, %if.then75 ]
  %cmp66.not = icmp eq ptr %n.1317, %worklist
  br i1 %cmp66.not, label %for.inc82.for.end88_crit_edge, label %for.inc82.for.body68_crit_edge

for.inc82.for.body68_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68

for.inc82.for.end88_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end88

for.end88:                                        ; preds = %for.inc82.for.end88_crit_edge, %while.body.for.end88_crit_edge
  %nr.1.lcssa = phi i32 [ 0, %while.body.for.end88_crit_edge ], [ %nr.2, %for.inc82.for.end88_crit_edge ]
  %next_rbno.0.lcssa = phi i32 [ -1, %while.body.for.end88_crit_edge ], [ %next_rbno.1, %for.inc82.for.end88_crit_edge ]
  %50 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fragments, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %list_move_tail.exit283.for.cond99_crit_edge, %for.end88
  %nr.3 = phi i32 [ %nr.1.lcssa, %for.end88 ], [ %dec, %list_move_tail.exit283.for.cond99_crit_edge ]
  %next_rbno.2 = phi i32 [ %next_rbno.0.lcssa, %for.end88 ], [ %69, %list_move_tail.exit283.for.cond99_crit_edge ]
  %frag.3 = phi ptr [ %51, %for.end88 ], [ %n.2, %list_move_tail.exit283.for.cond99_crit_edge ]
  %52 = ptrtoint ptr %frag.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %n.2 = load ptr, ptr %frag.3, align 8
  %cmp102.not = icmp eq ptr %frag.3, %fragments
  br i1 %cmp102.not, label %for.cond99.for.end128_crit_edge, label %for.body104

for.cond99.for.end128_crit_edge:                  ; preds = %for.cond99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end128

for.body104:                                      ; preds = %for.cond99
  %rm105 = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.3, i32 0, i32 1
  %53 = ptrtoint ptr %rm105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rm105, align 8
  %rm_blockcount108 = getelementptr inbounds %struct.xchk_refcnt_frag, ptr %frag.3, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %rm_blockcount108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rm_blockcount108, align 4
  %add109 = add i32 %56, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %rbno.2)
  %cmp112.not = icmp eq i32 %54, %rbno.2
  br i1 %cmp112.not, label %if.end114, label %for.body104.done_crit_edge

for.body104.done_crit_edge:                       ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end114:                                        ; preds = %for.body104
  %call.i.i274 = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.3) #6
  br i1 %call.i.i274, label %if.end.i.i277, label %if.end114.__list_del_entry.exit.i280_crit_edge

if.end114.__list_del_entry.exit.i280_crit_edge:   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i280

if.end.i.i277:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i275 = getelementptr inbounds %struct.list_head, ptr %frag.3, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i275 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i275, align 4
  %59 = ptrtoint ptr %frag.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %frag.3, align 4
  %prev1.i.i.i276 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i276 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i276, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %__list_del_entry.exit.i280

__list_del_entry.exit.i280:                       ; preds = %if.end.i.i277, %if.end114.__list_del_entry.exit.i280_crit_edge
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  %call.i.i.i279 = call zeroext i1 @__list_add_valid(ptr noundef %frag.3, ptr noundef %64, ptr noundef nonnull %worklist) #6
  br i1 %call.i.i.i279, label %if.end.i.i.i282, label %__list_del_entry.exit.i280.list_move_tail.exit283_crit_edge

__list_del_entry.exit.i280.list_move_tail.exit283_crit_edge: ; preds = %__list_del_entry.exit.i280
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit283

if.end.i.i.i282:                                  ; preds = %__list_del_entry.exit.i280
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %frag.3, ptr %0, align 4
  %66 = ptrtoint ptr %frag.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %worklist, ptr %frag.3, align 4
  %prev3.i.i.i281 = getelementptr inbounds %struct.list_head, ptr %frag.3, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i281 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i281, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %frag.3, ptr %64, align 4
  br label %list_move_tail.exit283

list_move_tail.exit283:                           ; preds = %if.end.i.i.i282, %__list_del_entry.exit.i280.list_move_tail.exit283_crit_edge
  %69 = call i32 @llvm.umin.i32(i32 %next_rbno.2, i32 %add109)
  %dec = add i32 %nr.3, -1
  %cmp119 = icmp eq i32 %dec, 0
  br i1 %cmp119, label %list_move_tail.exit283.for.end128_crit_edge, label %list_move_tail.exit283.for.cond99_crit_edge

list_move_tail.exit283.for.cond99_crit_edge:      ; preds = %list_move_tail.exit283
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond99

list_move_tail.exit283.for.end128_crit_edge:      ; preds = %list_move_tail.exit283
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end128

for.end128:                                       ; preds = %list_move_tail.exit283.for.end128_crit_edge, %for.cond99.for.end128_crit_edge
  %nr.4 = phi i32 [ 0, %list_move_tail.exit283.for.end128_crit_edge ], [ %nr.3, %for.cond99.for.end128_crit_edge ]
  %next_rbno.4 = phi i32 [ %69, %list_move_tail.exit283.for.end128_crit_edge ], [ %next_rbno.2, %for.cond99.for.end128_crit_edge ]
  %tobool129.not = icmp eq i32 %nr.4, 0
  br i1 %tobool129.not, label %for.end128.while.cond_crit_edge, label %for.end128.done_crit_edge

for.end128.done_crit_edge:                        ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.end128.while.cond_crit_edge:                  ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %bno132 = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 2
  %70 = ptrtoint ptr %bno132 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bno132, align 4
  %len = getelementptr inbounds %struct.xchk_refcnt_check, ptr %refchk, i32 0, i32 3
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %add133 = add i32 %73, %71
  call void @__sanitizer_cov_trace_cmp4(i32 %rbno.2, i32 %add133)
  %cmp134 = icmp ult i32 %rbno.2, %add133
  br i1 %cmp134, label %while.end.done_crit_edge, label %if.end136

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end136:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %refcount, align 4
  %76 = ptrtoint ptr %seen to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %seen, align 4
  br label %done

done:                                             ; preds = %if.end136, %while.end.done_crit_edge, %for.end128.done_crit_edge, %for.body104.done_crit_edge, %for.end49.done_crit_edge, %for.body.done_crit_edge
  %77 = ptrtoint ptr %worklist to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %worklist, align 4
  %cmp150.not320 = icmp eq ptr %78, %worklist
  br i1 %cmp150.not320, label %done.for.end160_crit_edge, label %done.for.body152_crit_edge

done.for.body152_crit_edge:                       ; preds = %done
  br label %for.body152

done.for.end160_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end160

for.body152:                                      ; preds = %list_del.exit290.for.body152_crit_edge, %done.for.body152_crit_edge
  %frag.4321 = phi ptr [ %n.3, %list_del.exit290.for.body152_crit_edge ], [ %78, %done.for.body152_crit_edge ]
  %79 = ptrtoint ptr %frag.4321 to i32
  call void @__asan_load4_noabort(i32 %79)
  %n.3 = load ptr, ptr %frag.4321, align 8
  %call.i.i284 = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.4321) #6
  br i1 %call.i.i284, label %if.end.i.i287, label %for.body152.list_del.exit290_crit_edge

for.body152.list_del.exit290_crit_edge:           ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit290

if.end.i.i287:                                    ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i285 = getelementptr inbounds %struct.list_head, ptr %frag.4321, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i285 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i285, align 4
  %82 = ptrtoint ptr %frag.4321 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %frag.4321, align 4
  %prev1.i.i.i286 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i286 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i286, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del.exit290

list_del.exit290:                                 ; preds = %if.end.i.i287, %for.body152.list_del.exit290_crit_edge
  %86 = ptrtoint ptr %frag.4321 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 256 to ptr), ptr %frag.4321, align 4
  %prev.i288 = getelementptr inbounds %struct.list_head, ptr %frag.4321, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i288, align 4
  call void @kvfree(ptr noundef %frag.4321) #6
  %cmp150.not = icmp eq ptr %n.3, %worklist
  br i1 %cmp150.not, label %list_del.exit290.for.end160_crit_edge, label %list_del.exit290.for.body152_crit_edge

list_del.exit290.for.body152_crit_edge:           ; preds = %list_del.exit290
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body152

list_del.exit290.for.end160_crit_edge:            ; preds = %list_del.exit290
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end160

for.end160:                                       ; preds = %list_del.exit290.for.end160_crit_edge, %done.for.end160_crit_edge
  %88 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fragments, align 4
  %cmp174.not322 = icmp eq ptr %89, %fragments
  br i1 %cmp174.not322, label %for.end160.cleanup_crit_edge, label %for.end160.for.body176_crit_edge

for.end160.for.body176_crit_edge:                 ; preds = %for.end160
  br label %for.body176

for.end160.cleanup_crit_edge:                     ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body176:                                      ; preds = %list_del.exit297.for.body176_crit_edge, %for.end160.for.body176_crit_edge
  %frag.5323 = phi ptr [ %n.4, %list_del.exit297.for.body176_crit_edge ], [ %89, %for.end160.for.body176_crit_edge ]
  %90 = ptrtoint ptr %frag.5323 to i32
  call void @__asan_load4_noabort(i32 %90)
  %n.4 = load ptr, ptr %frag.5323, align 8
  %call.i.i291 = call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.5323) #6
  br i1 %call.i.i291, label %if.end.i.i294, label %for.body176.list_del.exit297_crit_edge

for.body176.list_del.exit297_crit_edge:           ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit297

if.end.i.i294:                                    ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i292 = getelementptr inbounds %struct.list_head, ptr %frag.5323, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i292 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i292, align 4
  %93 = ptrtoint ptr %frag.5323 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %frag.5323, align 4
  %prev1.i.i.i293 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i293 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i293, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del.exit297

list_del.exit297:                                 ; preds = %if.end.i.i294, %for.body176.list_del.exit297_crit_edge
  %97 = ptrtoint ptr %frag.5323 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %frag.5323, align 4
  %prev.i295 = getelementptr inbounds %struct.list_head, ptr %frag.5323, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i295 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i295, align 4
  call void @kvfree(ptr noundef %frag.5323) #6
  %cmp174.not = icmp eq ptr %n.4, %fragments
  br i1 %cmp174.not, label %list_del.exit297.cleanup_crit_edge, label %list_del.exit297.for.body176_crit_edge

list_del.exit297.for.body176_crit_edge:           ; preds = %list_del.exit297
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body176

list_del.exit297.cleanup_crit_edge:               ; preds = %list_del.exit297
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit297.cleanup_crit_edge, %for.end160.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %worklist) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_btree_process_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_count_rmap_ownedby_ag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
