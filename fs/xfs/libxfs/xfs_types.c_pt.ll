; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_types.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_types.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"agno < mp->m_sb.sb_agcount\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/xfs/libxfs/xfs_types.c\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../fs/xfs/libxfs/xfs_types.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 22, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ag_block_count(ptr nocapture noundef readonly %mp, i32 noundef %agno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno)
  %cmp = icmp ugt i32 %1, %agno
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !12

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %agno)
  %cmp4 = icmp ugt i32 %sub, %agno
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks, align 8
  %sb_agblocks8 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8, align 4
  %mul = mul i32 %9, %agno
  %10 = trunc i64 %7 to i32
  %conv10 = sub i32 %10, %mul
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %conv10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_agbno(ptr nocapture noundef readonly %mp, i32 noundef %agno, i32 noundef %agbno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno)
  %cmp.i = icmp ugt i32 %1, %agno
  br i1 %cmp.i, label %entry.cond.end.i_crit_edge, label %cond.false.i, !prof !12

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %2 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i, align 8
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %agno)
  %cmp4.i = icmp ugt i32 %sub.i, %agno
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks.i, align 4
  br label %xfs_ag_block_count.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks.i, align 8
  %sb_agblocks8.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8.i, align 4
  %mul.i = mul i32 %9, %agno
  %10 = trunc i64 %7 to i32
  %conv10.i = sub i32 %10, %mul.i
  br label %xfs_ag_block_count.exit

xfs_ag_block_count.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %conv10.i, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %agbno)
  %cmp.not = icmp ugt i32 %retval.0.i, %agbno
  br i1 %cmp.not, label %if.end, label %xfs_ag_block_count.exit.cleanup_crit_edge

xfs_ag_block_count.exit.cleanup_crit_edge:        ; preds = %xfs_ag_block_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %xfs_ag_block_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 3, %conv
  %conv1 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shr = ashr i64 %conv1, %sh_prom
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %agbno)
  %cmp4.not = icmp ult i32 %conv3, %agbno
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_ag_block_count.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %xfs_ag_block_count.exit.cleanup_crit_edge ], [ %cmp4.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_fsbno(ptr nocapture noundef readonly %mp, i64 noundef %fsbno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %0 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %1 to i64
  %shr = lshr i64 %fsbno, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv1)
  %cmp.not = icmp ugt i32 %3, %conv1
  br i1 %cmp.not, label %cond.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.i.i:                                     ; preds = %entry
  %conv = zext i8 %1 to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %4 = trunc i64 %fsbno to i32
  %conv8 = and i32 %sub.i, %4
  %5 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agcount, align 8
  %sub.i.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv1)
  %cmp4.i.i = icmp ugt i32 %sub.i.i, %conv1
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %7 = ptrtoint ptr %sb_agblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_agblocks.i.i, align 4
  br label %xfs_ag_block_count.exit.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %9 = ptrtoint ptr %sb_dblocks.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_dblocks.i.i, align 8
  %sb_agblocks8.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks8.i.i, align 4
  %mul.i.i = mul i32 %12, %conv1
  %13 = trunc i64 %10 to i32
  %conv10.i.i = sub i32 %13, %mul.i.i
  br label %xfs_ag_block_count.exit.i

xfs_ag_block_count.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %8, %if.then.i.i ], [ %conv10.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv8)
  %cmp.not.i = icmp ugt i32 %retval.0.i.i, %conv8
  br i1 %cmp.not.i, label %if.end.i, label %xfs_ag_block_count.exit.i.cleanup_crit_edge

xfs_ag_block_count.exit.i.cleanup_crit_edge:      ; preds = %xfs_ag_block_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %xfs_ag_block_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_sectbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %14 = ptrtoint ptr %m_sectbb_log.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_sectbb_log.i, align 1
  %conv.i = zext i8 %15 to i32
  %shl.i = shl i32 3, %conv.i
  %conv1.i = sext i32 %shl.i to i64
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %16 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %17 to i64
  %shr.i = ashr i64 %conv1.i, %sh_prom.i
  %conv3.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %conv3.i)
  %cmp4.not.i = icmp ugt i32 %conv8, %conv3.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %xfs_ag_block_count.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %xfs_ag_block_count.exit.i.cleanup_crit_edge ], [ %cmp4.not.i, %if.end.i ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_fsbext(ptr nocapture noundef readonly %mp, i64 noundef %fsbno, i64 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %len, %fsbno
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %fsbno)
  %cmp.not = icmp ugt i64 %add, %fsbno
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %0 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom.i = zext i8 %1 to i64
  %shr.i = lshr i64 %fsbno, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv1.i)
  %cmp.not.i = icmp ugt i32 %3, %conv1.i
  br i1 %cmp.not.i, label %cond.end.i.i.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.end.i.i.i:                                   ; preds = %if.end
  %conv.i = zext i8 %1 to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %4 = trunc i64 %fsbno to i32
  %conv8.i = and i32 %sub.i.i, %4
  %sub.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv1.i)
  %cmp4.i.i.i = icmp ugt i32 %sub.i.i.i, %conv1.i
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %5 = ptrtoint ptr %sb_agblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agblocks.i.i.i, align 4
  br label %xfs_ag_block_count.exit.i.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %7 = ptrtoint ptr %sb_dblocks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sb_dblocks.i.i.i, align 8
  %sb_agblocks8.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %9 = ptrtoint ptr %sb_agblocks8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks8.i.i.i, align 4
  %mul.i.i.i = mul i32 %10, %conv1.i
  %11 = trunc i64 %8 to i32
  %conv10.i.i.i = sub i32 %11, %mul.i.i.i
  br label %xfs_ag_block_count.exit.i.i

xfs_ag_block_count.exit.i.i:                      ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %6, %if.then.i.i.i ], [ %conv10.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %conv8.i)
  %cmp.not.i.i = icmp ugt i32 %retval.0.i.i.i, %conv8.i
  br i1 %cmp.not.i.i, label %xfs_verify_fsbno.exit, label %xfs_ag_block_count.exit.i.i.return_crit_edge

xfs_ag_block_count.exit.i.i.return_crit_edge:     ; preds = %xfs_ag_block_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

xfs_verify_fsbno.exit:                            ; preds = %xfs_ag_block_count.exit.i.i
  %m_sectbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %12 = ptrtoint ptr %m_sectbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m_sectbb_log.i.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %shl.i.i = shl i32 3, %conv.i.i
  %conv1.i.i = sext i32 %shl.i.i to i64
  %m_blkbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %14 = ptrtoint ptr %m_blkbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log.i.i, align 1
  %sh_prom.i.i = zext i8 %15 to i64
  %shr.i.i = ashr i64 %conv1.i.i, %sh_prom.i.i
  %conv3.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %conv3.i.i)
  %cmp4.not.i.i = icmp ugt i32 %conv8.i, %conv3.i.i
  br i1 %cmp4.not.i.i, label %if.end2, label %xfs_verify_fsbno.exit.return_crit_edge

xfs_verify_fsbno.exit.return_crit_edge:           ; preds = %xfs_verify_fsbno.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %xfs_verify_fsbno.exit
  %sub = add i64 %add, -1
  %shr.i30 = lshr i64 %sub, %sh_prom.i
  %conv1.i31 = trunc i64 %shr.i30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv1.i31)
  %cmp.not.i33 = icmp ugt i32 %3, %conv1.i31
  br i1 %cmp.not.i33, label %cond.end.i.i.i40, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.end.i.i.i40:                                 ; preds = %if.end2
  %16 = trunc i64 %sub to i32
  %conv8.i37 = and i32 %sub.i.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv1.i31)
  %cmp4.i.i.i39 = icmp ugt i32 %sub.i.i.i, %conv1.i31
  br i1 %cmp4.i.i.i39, label %if.then.i.i.i42, label %if.end.i.i.i47

if.then.i.i.i42:                                  ; preds = %cond.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i.i41 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %17 = ptrtoint ptr %sb_agblocks.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_agblocks.i.i.i41, align 4
  br label %xfs_ag_block_count.exit.i.i50

if.end.i.i.i47:                                   ; preds = %cond.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i.i43 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %19 = ptrtoint ptr %sb_dblocks.i.i.i43 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_dblocks.i.i.i43, align 8
  %sb_agblocks8.i.i.i44 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %21 = ptrtoint ptr %sb_agblocks8.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_agblocks8.i.i.i44, align 4
  %mul.i.i.i45 = mul i32 %22, %conv1.i31
  %23 = trunc i64 %20 to i32
  %conv10.i.i.i46 = sub i32 %23, %mul.i.i.i45
  br label %xfs_ag_block_count.exit.i.i50

xfs_ag_block_count.exit.i.i50:                    ; preds = %if.end.i.i.i47, %if.then.i.i.i42
  %retval.0.i.i.i48 = phi i32 [ %18, %if.then.i.i.i42 ], [ %conv10.i.i.i46, %if.end.i.i.i47 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i48, i32 %conv8.i37)
  %cmp.not.i.i49 = icmp ugt i32 %retval.0.i.i.i48, %conv8.i37
  br i1 %cmp.not.i.i49, label %xfs_verify_fsbno.exit62, label %xfs_ag_block_count.exit.i.i50.return_crit_edge

xfs_ag_block_count.exit.i.i50.return_crit_edge:   ; preds = %xfs_ag_block_count.exit.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

xfs_verify_fsbno.exit62:                          ; preds = %xfs_ag_block_count.exit.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %m_sectbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_sectbb_log.i.i, align 1
  %conv.i.i52 = zext i8 %25 to i32
  %shl.i.i53 = shl i32 3, %conv.i.i52
  %conv1.i.i54 = sext i32 %shl.i.i53 to i64
  %26 = ptrtoint ptr %m_blkbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %m_blkbb_log.i.i, align 1
  %sh_prom.i.i56 = zext i8 %27 to i64
  %shr.i.i57 = ashr i64 %conv1.i.i54, %sh_prom.i.i56
  %conv3.i.i58 = trunc i64 %shr.i.i57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i37, i32 %conv3.i.i58)
  %cmp4.not.i.i59 = icmp ugt i32 %conv8.i37, %conv3.i.i58
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv1.i31)
  %cmp16 = icmp eq i32 %conv1.i, %conv1.i31
  %spec.select = select i1 %cmp4.not.i.i59, i1 %cmp16, i1 false
  br label %return

return:                                           ; preds = %xfs_verify_fsbno.exit62, %xfs_ag_block_count.exit.i.i50.return_crit_edge, %if.end2.return_crit_edge, %xfs_verify_fsbno.exit.return_crit_edge, %xfs_ag_block_count.exit.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %xfs_verify_fsbno.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %xfs_ag_block_count.exit.i.i.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ false, %xfs_ag_block_count.exit.i.i50.return_crit_edge ], [ %spec.select, %xfs_verify_fsbno.exit62 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_agino_range(ptr nocapture noundef readonly %mp, i32 noundef %agno, ptr nocapture noundef writeonly %first, ptr nocapture noundef writeonly %last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno)
  %cmp.i = icmp ugt i32 %1, %agno
  br i1 %cmp.i, label %entry.cond.end.i_crit_edge, label %cond.false.i, !prof !12

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %2 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i, align 8
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %agno)
  %cmp4.i = icmp ugt i32 %sub.i, %agno
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks.i, align 4
  br label %xfs_ag_block_count.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks.i, align 8
  %sb_agblocks8.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8.i, align 4
  %mul.i = mul i32 %9, %agno
  %10 = trunc i64 %7 to i32
  %conv10.i = sub i32 %10, %mul.i
  br label %xfs_ag_block_count.exit

xfs_ag_block_count.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %conv10.i, %if.end.i ]
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 3, %conv
  %conv1 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shr = ashr i64 %conv1, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %cluster_align = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %15 = ptrtoint ptr %cluster_align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_align, align 8
  %sub4 = add i32 %16, -1
  %or = or i32 %sub4, %conv3
  %add5 = add i32 %or, 1
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %17 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_inopblog, align 1
  %conv6 = zext i8 %18 to i32
  %shl7 = shl i32 %add5, %conv6
  %19 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl7, ptr %first, align 4
  %20 = load i32, ptr %cluster_align, align 8
  %neg = sub i32 0, %20
  %and = and i32 %retval.0.i, %neg
  %21 = load i8, ptr %sb_inopblog, align 1
  %conv13 = zext i8 %21 to i32
  %shl14 = shl i32 %and, %conv13
  %sub15 = add i32 %shl14, -1
  %22 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub15, ptr %last, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_agino(ptr nocapture noundef readonly %mp, i32 noundef %agno, i32 noundef %agino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agcount.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno)
  %cmp.i.i = icmp ugt i32 %1, %agno
  br i1 %cmp.i.i, label %entry.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !12

entry.cond.end.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %entry.cond.end.i.i_crit_edge
  %2 = ptrtoint ptr %sb_agcount.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i.i, align 8
  %sub.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %agno)
  %cmp4.i.i = icmp ugt i32 %sub.i.i, %agno
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks.i.i, align 4
  br label %xfs_agino_range.exit

if.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks.i.i, align 8
  %sb_agblocks8.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8.i.i, align 4
  %mul.i.i = mul i32 %9, %agno
  %10 = trunc i64 %7 to i32
  %conv10.i.i = sub i32 %10, %mul.i.i
  br label %xfs_agino_range.exit

xfs_agino_range.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %conv10.i.i, %if.end.i.i ]
  %m_sectbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl i32 3, %conv.i
  %conv1.i = sext i32 %shl.i to i64
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %14 to i64
  %shr.i = ashr i64 %conv1.i, %sh_prom.i
  %conv3.i = trunc i64 %shr.i to i32
  %cluster_align.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %15 = ptrtoint ptr %cluster_align.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_align.i, align 8
  %sub4.i = add i32 %16, -1
  %or.i = or i32 %sub4.i, %conv3.i
  %add5.i = add i32 %or.i, 1
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %17 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_inopblog.i, align 1
  %conv6.i = zext i8 %18 to i32
  %shl7.i = shl i32 %add5.i, %conv6.i
  %neg.i = sub i32 0, %16
  %and.i = and i32 %retval.0.i.i, %neg.i
  %shl14.i = shl i32 %and.i, %conv6.i
  %sub15.i = add i32 %shl14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl7.i, i32 %agino)
  %cmp.not = icmp ule i32 %shl7.i, %agino
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i, i32 %agino)
  %cmp1 = icmp uge i32 %sub15.i, %agino
  %19 = select i1 %cmp.not, i1 %cmp1, i1 false
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_agino_or_null(ptr nocapture noundef readonly %mp, i32 noundef %agno, i32 noundef %agino) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %agino)
  %cmp = icmp eq i32 %agino, -1
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %sb_agcount.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno)
  %cmp.i.i.i = icmp ugt i32 %1, %agno
  br i1 %cmp.i.i.i, label %lor.rhs.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i, !prof !12

lor.rhs.cond.end.i.i.i_crit_edge:                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %lor.rhs.cond.end.i.i.i_crit_edge
  %2 = ptrtoint ptr %sb_agcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i.i.i, align 8
  %sub.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %agno)
  %cmp4.i.i.i = icmp ugt i32 %sub.i.i.i, %agno
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks.i.i.i, align 4
  br label %xfs_verify_agino.exit

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks.i.i.i, align 8
  %sb_agblocks8.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8.i.i.i, align 4
  %mul.i.i.i = mul i32 %9, %agno
  %10 = trunc i64 %7 to i32
  %conv10.i.i.i = sub i32 %10, %mul.i.i.i
  br label %xfs_verify_agino.exit

xfs_verify_agino.exit:                            ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %5, %if.then.i.i.i ], [ %conv10.i.i.i, %if.end.i.i.i ]
  %m_sectbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl i32 3, %conv.i.i
  %conv1.i.i = sext i32 %shl.i.i to i64
  %m_blkbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log.i.i, align 1
  %sh_prom.i.i = zext i8 %14 to i64
  %shr.i.i = ashr i64 %conv1.i.i, %sh_prom.i.i
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %cluster_align.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %15 = ptrtoint ptr %cluster_align.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_align.i.i, align 8
  %sub4.i.i = add i32 %16, -1
  %or.i.i = or i32 %sub4.i.i, %conv3.i.i
  %add5.i.i = add i32 %or.i.i, 1
  %sb_inopblog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %17 = ptrtoint ptr %sb_inopblog.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_inopblog.i.i, align 1
  %conv6.i.i = zext i8 %18 to i32
  %shl7.i.i = shl i32 %add5.i.i, %conv6.i.i
  %neg.i.i = sub i32 0, %16
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %shl14.i.i = shl i32 %and.i.i, %conv6.i.i
  %sub15.i.i = add i32 %shl14.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl7.i.i, i32 %agino)
  %cmp.not.i = icmp ule i32 %shl7.i.i, %agino
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i, i32 %agino)
  %cmp1.i = icmp uge i32 %sub15.i.i, %agino
  %19 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br label %lor.end

lor.end:                                          ; preds = %xfs_verify_agino.exit, %entry.lor.end_crit_edge
  %20 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %19, %xfs_verify_agino.exit ]
  ret i1 %20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_ino(ptr nocapture noundef readonly %mp, i64 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %0 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %ino, %sh_prom
  %conv = trunc i64 %shr to i32
  %conv1 = trunc i64 %ino to i32
  %notmask = shl nsw i64 -1, %sh_prom
  %2 = trunc i64 %notmask to i32
  %conv5 = xor i32 %2, -1
  %and = and i32 %conv5, %conv1
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %3 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = and i64 %shr, 4294967295
  %shl11 = shl i64 %conv7, %sh_prom
  %conv12 = zext i32 %and to i64
  %or = or i64 %shl11, %conv12
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %ino)
  %cmp13.not = icmp eq i64 %or, %ino
  br i1 %cmp13.not, label %cond.end.i.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.i.i.i:                                   ; preds = %if.end
  %5 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agcount, align 8
  %sub.i.i.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv)
  %cmp4.i.i.i = icmp ugt i32 %sub.i.i.i, %conv
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %7 = ptrtoint ptr %sb_agblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_agblocks.i.i.i, align 4
  br label %xfs_verify_agino.exit

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %9 = ptrtoint ptr %sb_dblocks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_dblocks.i.i.i, align 8
  %sb_agblocks8.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks8.i.i.i, align 4
  %mul.i.i.i = mul i32 %12, %conv
  %13 = trunc i64 %10 to i32
  %conv10.i.i.i = sub i32 %13, %mul.i.i.i
  br label %xfs_verify_agino.exit

xfs_verify_agino.exit:                            ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %8, %if.then.i.i.i ], [ %conv10.i.i.i, %if.end.i.i.i ]
  %m_sectbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %14 = ptrtoint ptr %m_sectbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_sectbb_log.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl i32 3, %conv.i.i
  %conv1.i.i = sext i32 %shl.i.i to i64
  %m_blkbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %16 = ptrtoint ptr %m_blkbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_blkbb_log.i.i, align 1
  %sh_prom.i.i = zext i8 %17 to i64
  %shr.i.i = ashr i64 %conv1.i.i, %sh_prom.i.i
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %cluster_align.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %18 = ptrtoint ptr %cluster_align.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cluster_align.i.i, align 8
  %sub4.i.i = add i32 %19, -1
  %or.i.i = or i32 %sub4.i.i, %conv3.i.i
  %add5.i.i = add i32 %or.i.i, 1
  %sb_inopblog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %20 = ptrtoint ptr %sb_inopblog.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_inopblog.i.i, align 1
  %conv6.i.i = zext i8 %21 to i32
  %shl7.i.i = shl i32 %add5.i.i, %conv6.i.i
  %neg.i.i = sub i32 0, %19
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %shl14.i.i = shl i32 %and.i.i, %conv6.i.i
  %sub15.i.i = add i32 %shl14.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl7.i.i, i32 %and)
  %cmp.not.i = icmp ule i32 %shl7.i.i, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i, i32 %and)
  %cmp1.i = icmp uge i32 %sub15.i.i, %and
  %22 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br label %cleanup

cleanup:                                          ; preds = %xfs_verify_agino.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %22, %xfs_verify_agino.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_internal_inum(ptr nocapture noundef readonly %mp, i64 noundef %ino) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_rbmino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 8
  %0 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rbmino, align 64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %ino)
  %cmp = icmp eq i64 %1, %ino
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %sb_rsumino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 9
  %2 = ptrtoint ptr %sb_rsumino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rsumino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %ino)
  %cmp2 = icmp eq i64 %3, %ino
  br i1 %cmp2, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs.lor.end_crit_edge, label %land.rhs

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %6 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_uquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ino)
  %cmp.i = icmp eq i64 %7, %ino
  br i1 %cmp.i, label %land.rhs.lor.end_crit_edge, label %lor.lhs.false.i

land.rhs.lor.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.lhs.false.i:                                  ; preds = %land.rhs
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %8 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_gquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %ino)
  %cmp1.i = icmp eq i64 %9, %ino
  br i1 %cmp1.i, label %lor.lhs.false.i.lor.end_crit_edge, label %lor.rhs.i

lor.lhs.false.i.lor.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %10 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_pquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %ino)
  %cmp2.i = icmp eq i64 %11, %ino
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.i, %lor.lhs.false.i.lor.end_crit_edge, %land.rhs.lor.end_crit_edge, %lor.rhs.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %12 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ true, %lor.lhs.false.i.lor.end_crit_edge ], [ true, %land.rhs.lor.end_crit_edge ], [ %cmp2.i, %lor.rhs.i ]
  ret i1 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_dir_ino(ptr nocapture noundef readonly %mp, i64 noundef %ino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_rbmino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 8
  %0 = ptrtoint ptr %sb_rbmino.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rbmino.i, align 64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %ino)
  %cmp.i = icmp eq i64 %1, %ino
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %sb_rsumino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 9
  %2 = ptrtoint ptr %sb_rsumino.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rsumino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %ino)
  %cmp2.i = icmp eq i64 %3, %ino
  br i1 %cmp2.i, label %lor.lhs.false.i.return_crit_edge, label %lor.rhs.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i.if.end_crit_edge, label %land.rhs.i

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs.i:                                       ; preds = %lor.rhs.i
  %sb_uquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %6 = ptrtoint ptr %sb_uquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_uquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ino)
  %cmp.i.i = icmp eq i64 %7, %ino
  br i1 %cmp.i.i, label %land.rhs.i.return_crit_edge, label %lor.lhs.false.i.i

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i.i:                                ; preds = %land.rhs.i
  %sb_gquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %8 = ptrtoint ptr %sb_gquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_gquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %ino)
  %cmp1.i.i = icmp eq i64 %9, %ino
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.return_crit_edge, label %xfs_internal_inum.exit

lor.lhs.false.i.i.return_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

xfs_internal_inum.exit:                           ; preds = %lor.lhs.false.i.i
  %sb_pquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %10 = ptrtoint ptr %sb_pquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_pquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %ino)
  %cmp2.i.i = icmp eq i64 %11, %ino
  br i1 %cmp2.i.i, label %xfs_internal_inum.exit.return_crit_edge, label %xfs_internal_inum.exit.if.end_crit_edge

xfs_internal_inum.exit.if.end_crit_edge:          ; preds = %xfs_internal_inum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

xfs_internal_inum.exit.return_crit_edge:          ; preds = %xfs_internal_inum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %xfs_internal_inum.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %12 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agino_log.i, align 8
  %sh_prom.i = zext i32 %13 to i64
  %shr.i = lshr i64 %ino, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = trunc i64 %ino to i32
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %14 = trunc i64 %notmask.i to i32
  %conv5.i = xor i32 %14, -1
  %and.i = and i32 %conv5.i, %conv1.i
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %15 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %16, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  %conv7.i = and i64 %shr.i, 4294967295
  %shl11.i = shl i64 %conv7.i, %sh_prom.i
  %conv12.i = zext i32 %and.i to i64
  %or.i = or i64 %shl11.i, %conv12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %ino)
  %cmp13.not.i = icmp eq i64 %or.i, %ino
  br i1 %cmp13.not.i, label %cond.end.i.i.i.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.end.i.i.i.i:                                 ; preds = %if.end.i
  %sub.i.i.i.i = add i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %conv.i)
  %cmp4.i.i.i.i = icmp ugt i32 %sub.i.i.i.i, %conv.i
  br i1 %cmp4.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_agblocks.i.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %17 = ptrtoint ptr %sb_agblocks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_agblocks.i.i.i.i, align 4
  br label %xfs_verify_agino.exit.i

if.end.i.i.i.i:                                   ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sb_dblocks.i.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %19 = ptrtoint ptr %sb_dblocks.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_dblocks.i.i.i.i, align 8
  %sb_agblocks8.i.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %21 = ptrtoint ptr %sb_agblocks8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_agblocks8.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %22, %conv.i
  %23 = trunc i64 %20 to i32
  %conv10.i.i.i.i = sub i32 %23, %mul.i.i.i.i
  br label %xfs_verify_agino.exit.i

xfs_verify_agino.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %18, %if.then.i.i.i.i ], [ %conv10.i.i.i.i, %if.end.i.i.i.i ]
  %m_sectbb_log.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %24 = ptrtoint ptr %m_sectbb_log.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_sectbb_log.i.i.i, align 1
  %conv.i.i.i = zext i8 %25 to i32
  %shl.i.i.i = shl i32 3, %conv.i.i.i
  %conv1.i.i.i = sext i32 %shl.i.i.i to i64
  %m_blkbb_log.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %26 = ptrtoint ptr %m_blkbb_log.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %m_blkbb_log.i.i.i, align 1
  %sh_prom.i.i.i = zext i8 %27 to i64
  %shr.i.i.i = ashr i64 %conv1.i.i.i, %sh_prom.i.i.i
  %conv3.i.i.i = trunc i64 %shr.i.i.i to i32
  %cluster_align.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %28 = ptrtoint ptr %cluster_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cluster_align.i.i.i, align 8
  %sub4.i.i.i = add i32 %29, -1
  %or.i.i.i = or i32 %sub4.i.i.i, %conv3.i.i.i
  %add5.i.i.i = add i32 %or.i.i.i, 1
  %sb_inopblog.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %30 = ptrtoint ptr %sb_inopblog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sb_inopblog.i.i.i, align 1
  %conv6.i.i.i = zext i8 %31 to i32
  %shl7.i.i.i = shl i32 %add5.i.i.i, %conv6.i.i.i
  %neg.i.i.i = sub i32 0, %29
  %and.i.i.i = and i32 %retval.0.i.i.i.i, %neg.i.i.i
  %shl14.i.i.i = shl i32 %and.i.i.i, %conv6.i.i.i
  %sub15.i.i.i = add i32 %shl14.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl7.i.i.i, i32 %and.i)
  %cmp.not.i.i = icmp ule i32 %shl7.i.i.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i.i, i32 %and.i)
  %cmp1.i.i4 = icmp uge i32 %sub15.i.i.i, %and.i
  %32 = select i1 %cmp.not.i.i, i1 %cmp1.i.i4, i1 false
  br label %return

return:                                           ; preds = %xfs_verify_agino.exit.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %xfs_internal_inum.exit.return_crit_edge, %lor.lhs.false.i.i.return_crit_edge, %land.rhs.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %xfs_internal_inum.exit.return_crit_edge ], [ %32, %xfs_verify_agino.exit.i ], [ false, %if.end.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %lor.lhs.false.i.i.return_crit_edge ], [ false, %land.rhs.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_rtbno(ptr nocapture noundef readonly %mp, i64 noundef %rtbno) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %rtbno)
  %cmp = icmp ugt i64 %1, %rtbno
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_rtext(ptr nocapture noundef readonly %mp, i64 noundef %rtbno, i64 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %len, %rtbno
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %rtbno)
  %cmp.not = icmp ugt i64 %add, %rtbno
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %sb_rblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %sb_rblocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rblocks.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %rtbno)
  %cmp.i = icmp ugt i64 %1, %rtbno
  br i1 %cmp.i, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i64 %add, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %sub)
  %cmp.i11 = icmp ugt i64 %1, %sub
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i11, %if.end2 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_icount_range(ptr noundef %mp, ptr nocapture noundef writeonly %min, ptr nocapture noundef writeonly %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %min, align 8
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #6
  %cmp.not9 = icmp eq ptr %call, null
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sb_agcount.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %sb_dblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %sb_agblocks8.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_sectbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %cluster_align.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.012 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %nr_inos.011 = phi i64 [ 0, %for.body.lr.ph ], [ %add1, %xfs_perag_next.exit.for.body_crit_edge ]
  %agno.010 = phi i32 [ 0, %for.body.lr.ph ], [ %add.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %sb_agcount.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sb_agcount.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %agno.010)
  %cmp.i.i = icmp ugt i32 %2, %agno.010
  br i1 %cmp.i.i, label %for.body.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !12

for.body.cond.end.i.i_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.cond.end.i.i_crit_edge
  %3 = ptrtoint ptr %sb_agcount.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_agcount.i.i, align 8
  %sub.i.i = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %agno.010)
  %cmp4.i.i = icmp ugt i32 %sub.i.i, %agno.010
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %sb_agblocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agblocks8.i.i, align 4
  br label %xfs_agino_range.exit

if.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %sb_dblocks.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sb_dblocks.i.i, align 8
  %9 = ptrtoint ptr %sb_agblocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks8.i.i, align 4
  %mul.i.i = mul i32 %10, %agno.010
  %11 = trunc i64 %8 to i32
  %conv10.i.i = sub i32 %11, %mul.i.i
  br label %xfs_agino_range.exit

xfs_agino_range.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %6, %if.then.i.i ], [ %conv10.i.i, %if.end.i.i ]
  %12 = ptrtoint ptr %m_sectbb_log.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m_sectbb_log.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl i32 3, %conv.i
  %conv1.i = sext i32 %shl.i to i64
  %14 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %15 to i64
  %shr.i = ashr i64 %conv1.i, %sh_prom.i
  %conv3.i = trunc i64 %shr.i to i32
  %16 = ptrtoint ptr %cluster_align.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cluster_align.i, align 8
  %sub4.i = add i32 %17, -1
  %or.i = or i32 %sub4.i, %conv3.i
  %add5.i.neg = xor i32 %or.i, -1
  %18 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_inopblog.i, align 1
  %conv6.i = zext i8 %19 to i32
  %neg.i = sub i32 0, %17
  %and.i = and i32 %retval.0.i.i, %neg.i
  %20 = add i32 %and.i, %add5.i.neg
  %add = shl i32 %20, %conv6.i
  %conv = zext i32 %add to i64
  %add1 = add i64 %nr_inos.011, %conv
  %21 = ptrtoint ptr %pag.012 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pag.012, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.012, i32 0, i32 1
  %23 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %24, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.012) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %add.i, %sub.i.i
  br i1 %cmp.i, label %xfs_agino_range.exit.for.end_crit_edge, label %xfs_perag_next.exit

xfs_agino_range.exit.for.end_crit_edge:           ; preds = %xfs_agino_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

xfs_perag_next.exit:                              ; preds = %xfs_agino_range.exit
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %22, i32 noundef %add.i) #6
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %xfs_agino_range.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_inos.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add1, %xfs_perag_next.exit.for.end_crit_edge ], [ %add1, %xfs_agino_range.exit.for.end_crit_edge ]
  %25 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %nr_inos.0.lcssa, ptr %max, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_icount(ptr noundef %mp, i64 noundef %icount) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #6
  %cmp.not9.i = icmp eq ptr %call.i, null
  br i1 %cmp.not9.i, label %entry.xfs_icount_range.exit_crit_edge, label %for.body.lr.ph.i

entry.xfs_icount_range.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_icount_range.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sb_agcount.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %sb_dblocks.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %sb_agblocks8.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_sectbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %m_blkbb_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %cluster_align.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %sb_inopblog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %xfs_perag_next.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pag.012.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call.i.i, %xfs_perag_next.exit.i.for.body.i_crit_edge ]
  %nr_inos.011.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add1.i, %xfs_perag_next.exit.i.for.body.i_crit_edge ]
  %agno.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i.i, %xfs_perag_next.exit.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sb_agcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %agno.010.i)
  %cmp.i.i.i = icmp ugt i32 %1, %agno.010.i
  br i1 %cmp.i.i.i, label %for.body.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i, !prof !12

for.body.i.cond.end.i.i.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22) #6
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %for.body.i.cond.end.i.i.i_crit_edge
  %2 = ptrtoint ptr %sb_agcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount.i.i.i, align 8
  %sub.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %agno.010.i)
  %cmp4.i.i.i = icmp ugt i32 %sub.i.i.i, %agno.010.i
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %sb_agblocks8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks8.i.i.i, align 4
  br label %xfs_agino_range.exit.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sb_dblocks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks.i.i.i, align 8
  %8 = ptrtoint ptr %sb_agblocks8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks8.i.i.i, align 4
  %mul.i.i.i = mul i32 %9, %agno.010.i
  %10 = trunc i64 %7 to i32
  %conv10.i.i.i = sub i32 %10, %mul.i.i.i
  br label %xfs_agino_range.exit.i

xfs_agino_range.exit.i:                           ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %5, %if.then.i.i.i ], [ %conv10.i.i.i, %if.end.i.i.i ]
  %11 = ptrtoint ptr %m_sectbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl i32 3, %conv.i.i
  %conv1.i.i = sext i32 %shl.i.i to i64
  %13 = ptrtoint ptr %m_blkbb_log.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log.i.i, align 1
  %sh_prom.i.i = zext i8 %14 to i64
  %shr.i.i = ashr i64 %conv1.i.i, %sh_prom.i.i
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %15 = ptrtoint ptr %cluster_align.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_align.i.i, align 8
  %sub4.i.i = add i32 %16, -1
  %or.i.i = or i32 %sub4.i.i, %conv3.i.i
  %add5.i.neg.i = xor i32 %or.i.i, -1
  %17 = ptrtoint ptr %sb_inopblog.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_inopblog.i.i, align 1
  %conv6.i.i = zext i8 %18 to i32
  %neg.i.i = sub i32 0, %16
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %19 = add i32 %and.i.i, %add5.i.neg.i
  %add.i = shl i32 %19, %conv6.i.i
  %conv.i = zext i32 %add.i to i64
  %add1.i = add i64 %nr_inos.011.i, %conv.i
  %20 = ptrtoint ptr %pag.012.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pag.012.i, align 4
  %pag_agno.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.012.i, i32 0, i32 1
  %22 = ptrtoint ptr %pag_agno.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pag_agno.i.i, align 4
  %add.i.i = add i32 %23, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.012.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i
  br i1 %cmp.i.i, label %xfs_agino_range.exit.i.xfs_icount_range.exit_crit_edge, label %xfs_perag_next.exit.i

xfs_agino_range.exit.i.xfs_icount_range.exit_crit_edge: ; preds = %xfs_agino_range.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_icount_range.exit

xfs_perag_next.exit.i:                            ; preds = %xfs_agino_range.exit.i
  %call.i.i = tail call ptr @xfs_perag_get(ptr noundef %21, i32 noundef %add.i.i) #6
  %cmp.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not.i, label %xfs_perag_next.exit.i.xfs_icount_range.exit_crit_edge, label %xfs_perag_next.exit.i.for.body.i_crit_edge

xfs_perag_next.exit.i.for.body.i_crit_edge:       ; preds = %xfs_perag_next.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

xfs_perag_next.exit.i.xfs_icount_range.exit_crit_edge: ; preds = %xfs_perag_next.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_icount_range.exit

xfs_icount_range.exit:                            ; preds = %xfs_perag_next.exit.i.xfs_icount_range.exit_crit_edge, %xfs_agino_range.exit.i.xfs_icount_range.exit_crit_edge, %entry.xfs_icount_range.exit_crit_edge
  %nr_inos.0.lcssa.i = phi i64 [ 0, %entry.xfs_icount_range.exit_crit_edge ], [ %add1.i, %xfs_perag_next.exit.i.xfs_icount_range.exit_crit_edge ], [ %add1.i, %xfs_agino_range.exit.i.xfs_icount_range.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %icount)
  %cmp.not = icmp ugt i64 %icount, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_inos.0.lcssa.i, i64 %icount)
  %cmp1 = icmp uge i64 %nr_inos.0.lcssa.i, %icount
  %24 = select i1 %cmp.not, i1 %cmp1, i1 false
  ret i1 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_dablk(ptr nocapture noundef readnone %mp, i64 noundef %dabno) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dabno)
  %cmp = icmp ult i64 %dabno, 4294967296
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_fileoff(ptr nocapture readnone %mp, i64 noundef %off) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398511579135, i64 %off)
  %cmp = icmp ult i64 %off, 18014398511579135
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_verify_fileext(ptr nocapture noundef readnone %mp, i64 noundef %off, i64 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %len, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %off)
  %cmp.not = icmp ugt i64 %add, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398511579135, i64 %off)
  %cmp.i = icmp ult i64 %off, 18014398511579135
  %or.cond = and i1 %cmp.i, %cmp.not
  br i1 %or.cond, label %if.end2, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i64 %add, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398511579135, i64 %sub)
  %cmp.i10 = icmp ult i64 %sub, 18014398511579135
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i10, %if.end2 ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_types.c", i32 22, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
