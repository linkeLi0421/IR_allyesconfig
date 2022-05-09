; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dquot_buf.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dquot_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_disk_dquot = type { i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
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
%struct.xfs_dqblk = type { %struct.xfs_disk_dquot, [4 x i8], i32, i64, %struct.uuid_t }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbblks > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_dquot_buf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"id != -1\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_dquot\00", [22 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.3, { [2 x i16], [4 x i8] } { [2 x i16] [i16 17489, i16 17489], [4 x i8] undef }, ptr @xfs_dquot_buf_read_verify, ptr @xfs_dquot_buf_write_verify, ptr @xfs_dquot_buf_verify_struct }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_dquot_ra\00", [19 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ra_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.4, { [2 x i16], [4 x i8] } { [2 x i16] [i16 17489, i16 17489], [4 x i8] undef }, ptr @xfs_dquot_buf_readahead_verify, ptr @xfs_dquot_buf_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.xfs_dquot_buf_verify_crc = private unnamed_addr constant [25 x i8] c"xfs_dquot_buf_verify_crc\00", align 1
@__func__.xfs_dquot_buf_verify = private unnamed_addr constant [21 x i8] c"xfs_dquot_buf_verify\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 24, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 129, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 283, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"xfs_dquot_buf_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 282, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 292, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"xfs_dquot_buf_ra_ops\00", align 1
@___asan_gen_.24 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_dquot_buf.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 291, i32 26 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xfs_dquot_buf_ops, ptr @.str.4, ptr @xfs_dquot_buf_ra_ops], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_buf_ra_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_calc_dquots_per_chunk(i32 noundef %nbblks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbblks)
  %cmp.not = icmp eq i32 %nbblks, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !26

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 24) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %shl = shl i32 %nbblks, 9
  %div = udiv i32 %shl, 136
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dquot_verify(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %ddq, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ddq, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 17489, i16 %1)
  %cmp.not = icmp eq i16 %1, 17489
  br i1 %cmp.not, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_version = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 1
  %2 = ptrtoint ptr %d_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %d_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3.not = icmp eq i8 %3, 1
  br i1 %cmp3.not, label %if.end8, label %__here6

__here6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 2
  %4 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %d_type, align 1
  %6 = and i8 %5, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end13, label %__here11

__here11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %trunc = trunc i8 %5 to i3
  %7 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %__here29 [
    i3 1, label %if.end13.if.end31_crit_edge
    i3 2, label %if.end13.if.end31_crit_edge123
    i3 -4, label %if.end13.if.end31_crit_edge124
  ]

if.end13.if.end31_crit_edge124:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end13.if.end31_crit_edge123:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

__here29:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  br label %cleanup

if.end31:                                         ; preds = %if.end13.if.end31_crit_edge, %if.end13.if.end31_crit_edge123, %if.end13.if.end31_crit_edge124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool35.not = icmp sgt i8 %5, -1
  br i1 %tobool35.not, label %if.end31.if.end50_crit_edge, label %land.lhs.true36

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true36:                                  ; preds = %if.end31
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %__here38, label %land.lhs.true45

__here38:                                         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  br label %cleanup

land.lhs.true45:                                  ; preds = %land.lhs.true36
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 3
  %10 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %__here48, label %land.lhs.true45.if.end50_crit_edge

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

__here48:                                         ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true45.if.end50_crit_edge, %if.end31.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp51.not = icmp eq i32 %id, -1
  br i1 %cmp51.not, label %if.end50.if.end60_crit_edge, label %land.lhs.true53

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true53:                                  ; preds = %if.end50
  %d_id54 = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 3
  %12 = ptrtoint ptr %d_id54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_id54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %id)
  %cmp55.not = icmp eq i32 %13, %id
  br i1 %cmp55.not, label %land.lhs.true53.if.end60_crit_edge, label %__here58

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

__here58:                                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true53.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  %d_id61 = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 3
  %14 = ptrtoint ptr %d_id61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_id61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool62.not = icmp eq i32 %15, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.end64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %d_blk_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 5
  %16 = ptrtoint ptr %d_blk_softlimit to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %d_blk_softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool65.not = icmp eq i64 %17, 0
  br i1 %tobool65.not, label %if.end64.if.end75_crit_edge, label %land.lhs.true66

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true66:                                  ; preds = %if.end64
  %d_bcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 8
  %18 = ptrtoint ptr %d_bcount to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %d_bcount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp68 = icmp ugt i64 %19, %17
  br i1 %cmp68, label %land.lhs.true70, label %land.lhs.true66.if.end75_crit_edge

land.lhs.true66.if.end75_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %d_btimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 11
  %20 = ptrtoint ptr %d_btimer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %d_btimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool71.not = icmp eq i32 %21, 0
  br i1 %tobool71.not, label %__here73, label %land.lhs.true70.if.end75_crit_edge

land.lhs.true70.if.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

__here73:                                         ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true70.if.end75_crit_edge, %land.lhs.true66.if.end75_crit_edge, %if.end64.if.end75_crit_edge
  %d_ino_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 7
  %22 = ptrtoint ptr %d_ino_softlimit to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %d_ino_softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool76.not = icmp eq i64 %23, 0
  br i1 %tobool76.not, label %if.end75.if.end86_crit_edge, label %land.lhs.true77

if.end75.if.end86_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true77:                                  ; preds = %if.end75
  %d_icount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 9
  %24 = ptrtoint ptr %d_icount to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %d_icount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %23)
  %cmp79 = icmp ugt i64 %25, %23
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true77.if.end86_crit_edge

land.lhs.true77.if.end86_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true81:                                  ; preds = %land.lhs.true77
  %d_itimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 10
  %26 = ptrtoint ptr %d_itimer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %d_itimer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool82.not = icmp eq i32 %27, 0
  br i1 %tobool82.not, label %__here84, label %land.lhs.true81.if.end86_crit_edge

land.lhs.true81.if.end86_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

__here84:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  br label %cleanup

if.end86:                                         ; preds = %land.lhs.true81.if.end86_crit_edge, %land.lhs.true77.if.end86_crit_edge, %if.end75.if.end86_crit_edge
  %d_rtb_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 16
  %28 = ptrtoint ptr %d_rtb_softlimit to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %d_rtb_softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool87.not = icmp eq i64 %29, 0
  br i1 %tobool87.not, label %if.end86.cleanup_crit_edge, label %land.lhs.true88

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true88:                                  ; preds = %if.end86
  %d_rtbcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 17
  %30 = ptrtoint ptr %d_rtbcount to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %d_rtbcount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %29)
  %cmp90 = icmp ugt i64 %31, %29
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true88.cleanup_crit_edge

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true92:                                  ; preds = %land.lhs.true88
  %d_rtbtimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 18
  %32 = ptrtoint ptr %d_rtbtimer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_rtbtimer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool93.not = icmp eq i32 %33, 0
  br i1 %tobool93.not, label %__here95, label %land.lhs.true92.cleanup_crit_edge

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here95:                                         ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %__here95, %land.lhs.true92.cleanup_crit_edge, %land.lhs.true88.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %__here84, %__here73, %if.end60.cleanup_crit_edge, %__here58, %__here48, %__here38, %__here29, %__here11, %__here6, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dquot_verify, %__here), %__here ], [ blockaddress(@xfs_dquot_verify, %__here6), %__here6 ], [ blockaddress(@xfs_dquot_verify, %__here11), %__here11 ], [ blockaddress(@xfs_dquot_verify, %__here29), %__here29 ], [ blockaddress(@xfs_dquot_verify, %__here58), %__here58 ], [ blockaddress(@xfs_dquot_verify, %__here95), %__here95 ], [ blockaddress(@xfs_dquot_verify, %__here84), %__here84 ], [ blockaddress(@xfs_dquot_verify, %__here73), %__here73 ], [ blockaddress(@xfs_dquot_verify, %__here48), %__here48 ], [ blockaddress(@xfs_dquot_verify, %__here38), %__here38 ], [ null, %if.end60.cleanup_crit_edge ], [ null, %land.lhs.true92.cleanup_crit_edge ], [ null, %land.lhs.true88.cleanup_crit_edge ], [ null, %if.end86.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dqblk_verify(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %dqb, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dd_uuid = getelementptr inbounds %struct.xfs_dqblk, ptr %dqb, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dd_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %__here

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @xfs_dquot_verify(ptr noundef %mp, ptr noundef %dqb, i32 noundef %id)
  br label %return

return:                                           ; preds = %if.end, %__here
  %retval.0 = phi ptr [ %call2, %if.end ], [ blockaddress(@xfs_dqblk_verify, %__here), %__here ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dqblk_repair(ptr nocapture noundef readonly %mp, ptr noundef %dqb, i32 noundef %id, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp.not = icmp eq i32 %id, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !26

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 129) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %0 = getelementptr inbounds i8, ptr %dqb, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %2 = ptrtoint ptr %dqb to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 17489, ptr %dqb, align 8
  %d_version = getelementptr inbounds %struct.xfs_disk_dquot, ptr %dqb, i32 0, i32 1
  %3 = ptrtoint ptr %d_version to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %d_version, align 2
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %dqb, i32 0, i32 2
  %4 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %d_type, align 1
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %dqb, i32 0, i32 3
  %5 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %id, ptr %d_id, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dd_uuid = getelementptr inbounds %struct.xfs_dqblk, ptr %dqb, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %8 = call ptr @memcpy(ptr %dd_uuid, ptr %sb_meta_uuid, i32 16)
  %add.ptr.i.i = getelementptr i8, ptr %dqb, i32 108
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %dqb, i32 noundef 136) #7
  %10 = xor i32 %call.i.i, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dquot_buf_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %call = tail call fastcc zeroext i1 @xfs_dquot_buf_verify_crc(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext false)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc ptr @xfs_dquot_buf_verify(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dquot_buf_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %call = tail call fastcc ptr @xfs_dquot_buf_verify(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_dquot_buf_verify_struct(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %call = tail call fastcc ptr @xfs_dquot_buf_verify(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dquot_buf_readahead_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %call = tail call fastcc zeroext i1 @xfs_dquot_buf_verify_crc(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext true)
  br i1 %call, label %lor.lhs.false, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc ptr @xfs_dquot_buf_verify(ptr noundef %1, ptr noundef %bp, i1 noundef zeroext true)
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.__here_crit_edge

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %entry.__here_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  tail call void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef -5, ptr noundef blockaddress(@xfs_dquot_buf_readahead_verify, %__here)) #7
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %and = and i32 %3, -33
  store i32 %and, ptr %b_flags, align 4
  br label %if.end

if.end:                                           ; preds = %__here, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_dquot_from_disk_ts(ptr nocapture noundef readonly %ddq, i32 noundef %dtimer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dtimer)
  %cmp.not = icmp eq i32 %dtimer, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddq, i32 0, i32 2
  %0 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %dtimer to i64
  %shl.i = shl nuw nsw i64 %conv.i, 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv1 = zext i32 %dtimer to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %shl.i, %if.then ], [ %conv1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_dquot_to_disk_ts(ptr nocapture noundef readonly %dqp, i64 noundef %timer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timer)
  %cmp.not = icmp eq i64 %timer, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = trunc i64 %timer to i32
  %q_type = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %0 = ptrtoint ptr %q_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i64 %timer, 3
  %shr.i = lshr i64 %add.i, 2
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %t.0 = phi i32 [ %conv.i, %if.then ], [ %conv, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %t.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xfs_dquot_buf_verify_crc(ptr nocapture noundef readonly %mp, ptr noundef %bp, i1 noundef zeroext %readahead) #5 align 64 {
entry:
  %zero.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %4 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_quotainfo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qi_dqperchunk, align 8
  br label %if.end4

if.else:                                          ; preds = %if.end
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %8 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %cond.false.i, label %if.else.xfs_calc_dquots_per_chunk.exit_crit_edge, !prof !26

if.else.xfs_calc_dquots_per_chunk.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_calc_dquots_per_chunk.exit

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 24) #7
  br label %xfs_calc_dquots_per_chunk.exit

xfs_calc_dquots_per_chunk.exit:                   ; preds = %cond.false.i, %if.else.xfs_calc_dquots_per_chunk.exit_crit_edge
  %shl.i = shl i32 %9, 9
  %div.i = udiv i32 %shl.i, 136
  br label %if.end4

if.end4:                                          ; preds = %xfs_calc_dquots_per_chunk.exit, %if.then1
  %ndquots.0 = phi i32 [ %7, %if.then1 ], [ %div.i, %xfs_calc_dquots_per_chunk.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndquots.0)
  %cmp22 = icmp sgt i32 %ndquots.0, 0
  br i1 %cmp22, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %d.023 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %if.end4.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i) #7
  %10 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %zero.i.i, align 4
  %call.i.i = call i32 @crc32c(i32 noundef -1, ptr noundef %d.023, i32 noundef 108) #7
  %call1.i.i = call i32 @crc32c(i32 noundef %call.i.i, ptr noundef nonnull %zero.i.i, i32 noundef 4) #7
  %arrayidx.i.i = getelementptr i8, ptr %d.023, i32 112
  %call3.i.i = call i32 @crc32c(i32 noundef %call1.i.i, ptr noundef %arrayidx.i.i, i32 noundef 24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i) #7
  %add.ptr.i = getelementptr i8, ptr %d.023, i32 108
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = xor i32 %call3.i.i, -1
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.not = icmp eq i32 %12, %14
  br i1 %cmp.i.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  br i1 %readahead, label %if.then7.cleanup_crit_edge, label %__here

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  call void @xfs_buf_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef nonnull @__func__.xfs_dquot_buf_verify_crc, ptr noundef %d.023, i32 noundef 136, ptr noundef blockaddress(@xfs_dquot_buf_verify_crc, %__here)) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %incdec.ptr = getelementptr %struct.xfs_dqblk, ptr %d.023, i32 1
  %exitcond.not = icmp eq i32 %inc, %ndquots.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %__here, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %__here ], [ false, %if.then7.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dquot_buf_verify(ptr nocapture noundef readonly %mp, ptr noundef %bp, i1 noundef zeroext %readahead) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qi_dqperchunk, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %cond.false.i, label %if.else.xfs_calc_dquots_per_chunk.exit_crit_edge, !prof !26

if.else.xfs_calc_dquots_per_chunk.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_calc_dquots_per_chunk.exit

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 24) #7
  br label %xfs_calc_dquots_per_chunk.exit

xfs_calc_dquots_per_chunk.exit:                   ; preds = %cond.false.i, %if.else.xfs_calc_dquots_per_chunk.exit_crit_edge
  %shl.i = shl i32 %7, 9
  %div.i = udiv i32 %shl.i, 136
  br label %if.end

if.end:                                           ; preds = %xfs_calc_dquots_per_chunk.exit, %if.then
  %ndquots.0 = phi i32 [ %5, %if.then ], [ %div.i, %xfs_calc_dquots_per_chunk.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndquots.0)
  %cmp33 = icmp sgt i32 %ndquots.0, 0
  br i1 %cmp33, label %if.end.for.body_crit_edge, label %if.end.cleanup14_crit_edge

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %ndquots.0
  br i1 %exitcond.not, label %for.cond.cleanup14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %id.035 = phi i32 [ %id.1, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %retval.034 = phi ptr [ %retval.1, %for.cond.for.body_crit_edge ], [ undef, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_dqblk, ptr %1, i32 %i.036
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036)
  %cmp2 = icmp eq i32 %i.036, 0
  br i1 %cmp2, label %if.then3, label %for.body.if.end4_crit_edge

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 3
  %8 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_id, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body.if.end4_crit_edge
  %id.1 = phi i32 [ %9, %if.then3 ], [ %id.035, %for.body.if.end4_crit_edge ]
  %add = add i32 %id.1, %i.036
  %call6 = tail call ptr @xfs_dqblk_verify(ptr noundef %mp, ptr noundef %arrayidx, i32 noundef %add)
  %tobool7.not = icmp eq ptr %call6, null
  %brmerge = or i1 %tobool7.not, %readahead
  %retval.0.mux = select i1 %tobool7.not, ptr %retval.034, ptr %call6
  br i1 %brmerge, label %if.end4.cleanup_crit_edge, label %if.then10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_buf_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull @__func__.xfs_dquot_buf_verify, ptr noundef %arrayidx, i32 noundef 136, ptr noundef nonnull %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge
  %retval.1 = phi ptr [ %call6, %if.then10 ], [ %retval.0.mux, %if.end4.cleanup_crit_edge ]
  br i1 %tobool7.not, label %for.cond, label %cleanup.cleanup14_crit_edge

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %for.cond.cleanup14_crit_edge, %if.end.cleanup14_crit_edge
  %retval.2 = phi ptr [ null, %if.end.cleanup14_crit_edge ], [ null, %for.cond.cleanup14_crit_edge ], [ %retval.1, %cleanup.cleanup14_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_verifier_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_ioerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 24, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 129, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 283, i32 10}
!7 = !{ptr @xfs_dquot_buf_ops, !8, !"xfs_dquot_buf_ops", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 282, i32 26}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 292, i32 10}
!11 = !{ptr @xfs_dquot_buf_ra_ops, !12, !"xfs_dquot_buf_ra_ops", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 291, i32 26}
!13 = !{ptr @__func__.xfs_dquot_buf_verify_crc, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 171, i32 44}
!15 = !{ptr @__func__.xfs_dquot_buf_verify, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dquot_buf.c", i32 220, i32 6}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2155730850}
!28 = !{i64 2155730955}
!29 = !{i64 2155731185}
!30 = !{i64 2155731375}
!31 = !{i64 2155731471}
!32 = !{i64 2155731567}
!33 = !{i64 2155731711}
!34 = !{i64 2155731935}
!35 = !{i64 2155732147}
!36 = !{i64 2155732361}
!37 = !{i64 2155732464}
!38 = !{i64 2155733467}
!39 = !{i64 2155733185}
