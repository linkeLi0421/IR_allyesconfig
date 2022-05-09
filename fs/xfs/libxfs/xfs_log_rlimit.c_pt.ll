; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_log_rlimit.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_log_rlimit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_log_get_max_trans_res(ptr noundef readonly %mp, ptr nocapture noundef writeonly %max_resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_log_calc_max_attrsetm_res(ptr noundef %mp)
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65
  %add.ptr = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %cmp25 = icmp ult ptr %m_resv, %add.ptr
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %log_space.029 = phi i32 [ %log_space.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %resp.026 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %m_resv, %entry.for.body_crit_edge ]
  %tr_logcount = getelementptr inbounds %struct.xfs_trans_res, ptr %resp.026, i32 0, i32 1
  %0 = ptrtoint ptr %tr_logcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tr_logcount, align 4
  %2 = ptrtoint ptr %resp.026 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp.026, align 4
  %4 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %cond = mul i32 %3, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %log_space.029, i32 %cond)
  %cmp5 = icmp slt i32 %log_space.029, %cond
  br i1 %cmp5, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %max_resp, ptr %resp.026, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %log_space.1 = phi i32 [ %cond, %if.then ], [ %log_space.029, %for.body.if.end_crit_edge ]
  %incdec.ptr = getelementptr %struct.xfs_trans_res, ptr %resp.026, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %log_space.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %log_space.1, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %log_space.0.lcssa)
  %cmp6 = icmp sgt i32 %call, %log_space.0.lcssa
  br i1 %cmp6, label %if.then7, label %for.end.if.end10_crit_edge

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %tr_attrsetm = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 15
  %6 = call ptr @memcpy(ptr %max_resp, ptr %tr_attrsetm, i32 12)
  %7 = ptrtoint ptr %max_resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %max_resp, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %for.end.if.end10_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_log_calc_max_attrsetm_res(ptr nocapture noundef readonly %mp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %0 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_attr_geo, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i = ashr i32 %3, 1
  %shr1.i = ashr i32 %3, 2
  %add.i = add nsw i32 %shr1.i, -257
  %sub1 = add nsw i32 %add.i, %shr.i
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %4 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %6 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_mnr, align 4
  %sub3 = sub i32 %5, %7
  %arrayidx10 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 43, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %sub11 = add i32 %9, -1
  %conv = sext i32 %sub1 to i64
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %10 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_blockmask, align 8
  %conv14 = zext i32 %11 to i64
  %add15 = add nsw i64 %conv14, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %12 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %13 to i64
  %shr = lshr i64 %add15, %sh_prom
  %14 = trunc i64 %shr to i32
  %add25 = add i32 %sub3, -1
  %sub26 = add i32 %add25, %sub1
  %div32 = udiv i32 %sub26, %sub3
  %reass.add = add i32 %div32, 5
  %reass.mul = mul i32 %reass.add, %sub11
  %conv19 = add i32 %14, 5
  %add37 = add i32 %conv19, %reass.mul
  %tr_attrsetm = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 15
  %15 = ptrtoint ptr %tr_attrsetm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tr_attrsetm, align 4
  %tr_attrsetrt = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 16
  %17 = ptrtoint ptr %tr_attrsetrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tr_attrsetrt, align 8
  %mul40 = mul i32 %add37, %18
  %add41 = add i32 %mul40, %16
  ret i32 %add41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_log_calc_minimum_size(ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @xfs_log_calc_max_attrsetm_res(ptr noundef %mp) #5
  %m_resv.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65
  %add.ptr.i = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %cmp25.i = icmp ult ptr %m_resv.i, %add.ptr.i
  br i1 %cmp25.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tres.sroa.0.0 = phi i32 [ %tres.sroa.0.1, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %tres.sroa.7.0 = phi i32 [ %tres.sroa.7.1, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %log_space.029.i = phi i32 [ %log_space.1.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %resp.026.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %m_resv.i, %entry.for.body.i_crit_edge ]
  %tr_logcount.i = getelementptr inbounds %struct.xfs_trans_res, ptr %resp.026.i, i32 0, i32 1
  %0 = ptrtoint ptr %tr_logcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tr_logcount.i, align 4
  %2 = ptrtoint ptr %resp.026.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp.026.i, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 1) #5
  %cond.i = mul i32 %3, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %log_space.029.i, i32 %cond.i)
  %cmp5.i = icmp slt i32 %log_space.029.i, %cond.i
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %tr_logcount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tres.sroa.7.0.copyload47 = load i32, ptr %tr_logcount.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %tres.sroa.0.1 = phi i32 [ %3, %if.then.i ], [ %tres.sroa.0.0, %for.body.i.if.end.i_crit_edge ]
  %tres.sroa.7.1 = phi i32 [ %tres.sroa.7.0.copyload47, %if.then.i ], [ %tres.sroa.7.0, %for.body.i.if.end.i_crit_edge ]
  %log_space.1.i = phi i32 [ %cond.i, %if.then.i ], [ %log_space.029.i, %for.body.i.if.end.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.xfs_trans_res, ptr %resp.026.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %tres.sroa.0.2 = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %tres.sroa.0.1, %if.end.i.for.end.i_crit_edge ]
  %tres.sroa.7.2 = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %tres.sroa.7.1, %if.end.i.for.end.i_crit_edge ]
  %log_space.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %log_space.1.i, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %log_space.0.lcssa.i)
  %cmp6.i = icmp sgt i32 %call.i, %log_space.0.lcssa.i
  br i1 %cmp6.i, label %if.then7.i, label %for.end.i.xfs_log_get_max_trans_res.exit_crit_edge

for.end.i.xfs_log_get_max_trans_res.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_log_get_max_trans_res.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %tres.sroa.7.0.tr_attrsetm.i.sroa_idx = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 15, i32 1
  %6 = ptrtoint ptr %tres.sroa.7.0.tr_attrsetm.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %tres.sroa.7.0.copyload = load i32, ptr %tres.sroa.7.0.tr_attrsetm.i.sroa_idx, align 4
  br label %xfs_log_get_max_trans_res.exit

xfs_log_get_max_trans_res.exit:                   ; preds = %if.then7.i, %for.end.i.xfs_log_get_max_trans_res.exit_crit_edge
  %tres.sroa.0.3 = phi i32 [ %call.i, %if.then7.i ], [ %tres.sroa.0.2, %for.end.i.xfs_log_get_max_trans_res.exit_crit_edge ]
  %tres.sroa.7.3 = phi i32 [ %tres.sroa.7.0.copyload, %if.then7.i ], [ %tres.sroa.7.2, %for.end.i.xfs_log_get_max_trans_res.exit_crit_edge ]
  %call = tail call i32 @xfs_log_calc_unit_res(ptr noundef %mp, i32 noundef %tres.sroa.0.3) #5
  %7 = tail call i32 @llvm.smax.i32(i32 %tres.sroa.7.3, i32 1)
  %spec.select = mul i32 %call, %7
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %xfs_log_get_max_trans_res.exit.if.else_crit_edge, label %land.lhs.true

xfs_log_get_max_trans_res.exit.if.else_crit_edge: ; preds = %xfs_log_get_max_trans_res.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %xfs_log_get_max_trans_res.exit
  %sb_logsunit = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 43
  %10 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_logsunit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3 = icmp ugt i32 %11, 1
  br i1 %cmp3, label %if.end8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end8:                                          ; preds = %land.lhs.true
  %conv = zext i32 %11 to i64
  %sub = add nuw nsw i64 %conv, 511
  %shr = lshr i64 %sub, 9
  %conv7 = trunc i64 %shr to i32
  %conv10 = sext i32 %spec.select to i64
  %sub12 = add nsw i64 %conv10, 511
  %shr13 = lshr i64 %sub12, 9
  %sub.i = add nsw i32 %conv7, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shr13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp168.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !9

if.then172.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %conv173.i = trunc i64 %add.i to i32
  %div176.i = udiv i32 %conv173.i, %conv7
  %conv177.i = zext i32 %div176.i to i64
  br label %roundup_64.exit

if.else178.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv7, i64 %add.i) #8, !srcloc !10
  %asmresult1.i.i = extractvalue { i64, i64 } %12, 1
  br label %roundup_64.exit

roundup_64.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i = phi i64 [ %conv177.i, %if.then172.i ], [ %asmresult1.i.i, %if.else178.i ]
  %mul185.i = mul i64 %x.addr.0.i, %shr
  %mul15 = shl nuw nsw i32 %conv7, 1
  %13 = trunc i64 %mul185.i to i32
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %xfs_log_get_max_trans_res.exit.if.else_crit_edge
  %conv19 = sext i32 %spec.select to i64
  %sub21 = add nsw i64 %conv19, 511
  %shr22 = lshr i64 %sub21, 9
  %14 = trunc i64 %shr22 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %roundup_64.exit
  %.sink51 = phi i32 [ 1024, %if.else ], [ %13, %roundup_64.exit ]
  %.sink = phi i32 [ %14, %if.else ], [ %mul15, %roundup_64.exit ]
  %conv24 = add i32 %.sink, %.sink51
  %mul26 = mul i32 %conv24, 3
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %15 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %m_blkbb_log, align 1
  %conv27 = zext i8 %16 to i32
  %notmask = shl nsw i32 -1, %conv27
  %sub28 = xor i32 %notmask, -1
  %add29 = add i32 %mul26, %sub28
  %shr32 = ashr i32 %add29, %conv27
  ret i32 %shr32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_calc_unit_res(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148469065, i64 2148469345, i64 2148469679, i64 2148470013}
