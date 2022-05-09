; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_trans_resv.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_trans_resv.c"
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
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_allocfree_log_count(ptr nocapture noundef readonly %mp, i32 noundef %num_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %num_ops, 1
  %m_alloc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %0 = ptrtoint ptr %m_alloc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_alloc_maxlevels, align 4
  %mul1 = shl i32 %1, 1
  %sub = add i32 %mul1, -1
  %mul2 = mul i32 %sub, %mul
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %4 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_rmap_maxlevels, align 16
  %mul3 = shl i32 %5, 1
  %sub4 = add i32 %mul3, -1
  %mul5 = mul i32 %sub4, %num_ops
  %add = add i32 %mul5, %mul2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blocks.0 = phi i32 [ %add, %if.then ], [ %mul2, %entry.if.end_crit_edge ]
  %and.i22 = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22)
  %tobool.i23.not = icmp eq i64 %and.i22, 0
  br i1 %tobool.i23.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %6 = ptrtoint ptr %m_refc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_refc_maxlevels, align 4
  %mul8 = shl i32 %7, 1
  %sub9 = add i32 %mul8, -1
  %mul10 = mul i32 %sub9, %num_ops
  %add11 = add i32 %mul10, %blocks.0
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %blocks.1 = phi i32 [ %add11, %if.then7 ], [ %blocks.0, %if.end.if.end12_crit_edge ]
  ret i32 %blocks.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_trans_resv_calc(ptr noundef %mp, ptr noundef %resp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %0 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_rmap_maxlevels, align 16
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %4 = and i64 %3, 786432
  call void @__sanitizer_cov_trace_const_cmp8(i64 786432, i64 %4)
  %5 = icmp eq i64 %4, 786432
  br i1 %5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %m_rmap_maxlevels, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @xfs_calc_write_reservation(ptr noundef %mp)
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %resp, align 4
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i258 = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i258)
  %tobool.i259.not = icmp eq i64 %and.i258, 0
  %spec.select = select i1 %tobool.i259.not, i32 2, i32 8
  %10 = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %tr_logflags = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 2
  %12 = ptrtoint ptr %tr_logflags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tr_logflags, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %tr_logflags, align 4
  %call11 = tail call fastcc i32 @xfs_calc_itruncate_reservation(ptr noundef %mp)
  %tr_itruncate = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 1
  %14 = ptrtoint ptr %tr_itruncate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11, ptr %tr_itruncate, align 4
  %15 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i, align 8
  %and.i261 = and i64 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i261)
  %tobool.i262.not = icmp eq i64 %and.i261, 0
  %.sink266 = select i1 %tobool.i262.not, i32 2, i32 8
  %17 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink266, ptr %17, align 4
  %tr_logflags22 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %tr_logflags22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tr_logflags22, align 4
  %or23 = or i32 %20, 4
  store i32 %or23, ptr %tr_logflags22, align 4
  %call24 = tail call fastcc i32 @xfs_calc_rename_reservation(ptr noundef %mp)
  %tr_rename = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 2
  %21 = ptrtoint ptr %tr_rename to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call24, ptr %tr_rename, align 4
  %tr_logcount27 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %tr_logcount27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %tr_logcount27, align 4
  %tr_logflags29 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tr_logflags29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tr_logflags29, align 4
  %or30 = or i32 %24, 4
  store i32 %or30, ptr %tr_logflags29, align 4
  %call31 = tail call fastcc i32 @xfs_calc_link_reservation(ptr noundef %mp)
  %tr_link = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 3
  %25 = ptrtoint ptr %tr_link to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call31, ptr %tr_link, align 4
  %tr_logcount34 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %tr_logcount34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %tr_logcount34, align 4
  %tr_logflags36 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %tr_logflags36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tr_logflags36, align 4
  %or37 = or i32 %28, 4
  store i32 %or37, ptr %tr_logflags36, align 4
  %call38 = tail call fastcc i32 @xfs_calc_remove_reservation(ptr noundef %mp)
  %tr_remove = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 4
  %29 = ptrtoint ptr %tr_remove to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call38, ptr %tr_remove, align 4
  %tr_logcount41 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %tr_logcount41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %tr_logcount41, align 4
  %tr_logflags43 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %tr_logflags43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tr_logflags43, align 4
  %or44 = or i32 %32, 4
  store i32 %or44, ptr %tr_logflags43, align 4
  %call45 = tail call fastcc i32 @xfs_calc_symlink_reservation(ptr noundef %mp)
  %tr_symlink = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 5
  %33 = ptrtoint ptr %tr_symlink to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call45, ptr %tr_symlink, align 4
  %tr_logcount48 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %tr_logcount48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %tr_logcount48, align 4
  %tr_logflags50 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %tr_logflags50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tr_logflags50, align 4
  %or51 = or i32 %36, 4
  store i32 %or51, ptr %tr_logflags50, align 4
  %call52 = tail call fastcc i32 @xfs_calc_icreate_reservation(ptr noundef %mp)
  %tr_create = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 6
  %37 = ptrtoint ptr %tr_create to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call52, ptr %tr_create, align 4
  %tr_logcount55 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %tr_logcount55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %tr_logcount55, align 4
  %tr_logflags57 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %tr_logflags57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tr_logflags57, align 4
  %or58 = or i32 %40, 4
  store i32 %or58, ptr %tr_logflags57, align 4
  %call59 = tail call fastcc i32 @xfs_calc_create_tmpfile_reservation(ptr noundef %mp)
  %tr_create_tmpfile = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 7
  %41 = ptrtoint ptr %tr_create_tmpfile to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call59, ptr %tr_create_tmpfile, align 4
  %tr_logcount62 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %tr_logcount62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %tr_logcount62, align 4
  %tr_logflags64 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %tr_logflags64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tr_logflags64, align 4
  %or65 = or i32 %44, 4
  store i32 %or65, ptr %tr_logflags64, align 4
  %call66 = tail call fastcc i32 @xfs_calc_mkdir_reservation(ptr noundef %mp)
  %tr_mkdir = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 8
  %45 = ptrtoint ptr %tr_mkdir to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call66, ptr %tr_mkdir, align 4
  %tr_logcount69 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %tr_logcount69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %tr_logcount69, align 4
  %tr_logflags71 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %tr_logflags71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tr_logflags71, align 4
  %or72 = or i32 %48, 4
  store i32 %or72, ptr %tr_logflags71, align 4
  %call73 = tail call fastcc i32 @xfs_calc_ifree_reservation(ptr noundef %mp)
  %tr_ifree = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 9
  %49 = ptrtoint ptr %tr_ifree to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call73, ptr %tr_ifree, align 4
  %tr_logcount76 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %tr_logcount76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %tr_logcount76, align 4
  %tr_logflags78 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %tr_logflags78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tr_logflags78, align 4
  %or79 = or i32 %52, 4
  store i32 %or79, ptr %tr_logflags78, align 4
  %call80 = tail call fastcc i32 @xfs_calc_addafork_reservation(ptr noundef %mp)
  %tr_addafork = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 12
  %53 = ptrtoint ptr %tr_addafork to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call80, ptr %tr_addafork, align 4
  %tr_logcount83 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %tr_logcount83 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %tr_logcount83, align 4
  %tr_logflags85 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 12, i32 2
  %55 = ptrtoint ptr %tr_logflags85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tr_logflags85, align 4
  %or86 = or i32 %56, 4
  store i32 %or86, ptr %tr_logflags85, align 4
  %call87 = tail call fastcc i32 @xfs_calc_attrinval_reservation(ptr noundef %mp)
  %tr_attrinval = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 14
  %57 = ptrtoint ptr %tr_attrinval to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call87, ptr %tr_attrinval, align 4
  %tr_logcount90 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 14, i32 1
  %58 = ptrtoint ptr %tr_logcount90 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %tr_logcount90, align 4
  %tr_logflags92 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 14, i32 2
  %59 = ptrtoint ptr %tr_logflags92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tr_logflags92, align 4
  %or93 = or i32 %60, 4
  store i32 %or93, ptr %tr_logflags92, align 4
  %call94 = tail call fastcc i32 @xfs_calc_attrsetm_reservation(ptr noundef %mp)
  %tr_attrsetm = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 15
  %61 = ptrtoint ptr %tr_attrsetm to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call94, ptr %tr_attrsetm, align 4
  %tr_logcount97 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 15, i32 1
  %62 = ptrtoint ptr %tr_logcount97 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %tr_logcount97, align 4
  %tr_logflags99 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 15, i32 2
  %63 = ptrtoint ptr %tr_logflags99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tr_logflags99, align 4
  %or100 = or i32 %64, 4
  store i32 %or100, ptr %tr_logflags99, align 4
  %call101 = tail call fastcc i32 @xfs_calc_attrrm_reservation(ptr noundef %mp)
  %tr_attrrm = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 17
  %65 = ptrtoint ptr %tr_attrrm to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call101, ptr %tr_attrrm, align 4
  %tr_logcount104 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 17, i32 1
  %66 = ptrtoint ptr %tr_logcount104 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %tr_logcount104, align 4
  %tr_logflags106 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 17, i32 2
  %67 = ptrtoint ptr %tr_logflags106 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tr_logflags106, align 4
  %or107 = or i32 %68, 4
  store i32 %or107, ptr %tr_logflags106, align 4
  %call108 = tail call fastcc i32 @xfs_calc_growrtalloc_reservation(ptr noundef %mp)
  %tr_growrtalloc = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 19
  %69 = ptrtoint ptr %tr_growrtalloc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call108, ptr %tr_growrtalloc, align 4
  %tr_logcount111 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 19, i32 1
  %70 = ptrtoint ptr %tr_logcount111 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %tr_logcount111, align 4
  %tr_logflags113 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 19, i32 2
  %71 = ptrtoint ptr %tr_logflags113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tr_logflags113, align 4
  %or114 = or i32 %72, 4
  store i32 %or114, ptr %tr_logflags113, align 4
  %call115 = tail call fastcc i32 @xfs_calc_qm_dqalloc_reservation(ptr noundef %mp)
  %tr_qm_dqalloc = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 23
  %73 = ptrtoint ptr %tr_qm_dqalloc to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call115, ptr %tr_qm_dqalloc, align 4
  %74 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %m_features.i, align 8
  %and.i264 = and i64 %75, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i264)
  %tobool.i265.not = icmp eq i64 %and.i264, 0
  %.sink267 = select i1 %tobool.i265.not, i32 2, i32 8
  %76 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 23, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink267, ptr %76, align 4
  %tr_logflags126 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 23, i32 2
  %78 = ptrtoint ptr %tr_logflags126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tr_logflags126, align 4
  %or127 = or i32 %79, 4
  store i32 %or127, ptr %tr_logflags126, align 4
  %call128 = tail call fastcc i32 @xfs_calc_qm_setqlim_reservation()
  %tr_qm_setqlim = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 22
  %80 = ptrtoint ptr %tr_qm_setqlim to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call128, ptr %tr_qm_setqlim, align 4
  %tr_logcount131 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 22, i32 1
  %81 = ptrtoint ptr %tr_logcount131 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %tr_logcount131, align 4
  %call132 = tail call fastcc i32 @xfs_calc_sb_reservation(ptr noundef %mp)
  %tr_sb = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 24
  %82 = ptrtoint ptr %tr_sb to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call132, ptr %tr_sb, align 4
  %tr_logcount135 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 24, i32 1
  %83 = ptrtoint ptr %tr_logcount135 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %tr_logcount135, align 4
  %call136 = tail call fastcc i32 @xfs_calc_growdata_reservation(ptr noundef %mp)
  %tr_growdata = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 11
  %84 = ptrtoint ptr %tr_growdata to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call136, ptr %tr_growdata, align 4
  %tr_logcount139 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %tr_logcount139 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %tr_logcount139, align 4
  %tr_logflags141 = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 11, i32 2
  %86 = ptrtoint ptr %tr_logflags141 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tr_logflags141, align 4
  %or142 = or i32 %87, 4
  store i32 %or142, ptr %tr_logflags141, align 4
  %call143 = tail call fastcc i32 @xfs_calc_ichange_reservation(ptr noundef %mp)
  %tr_ichange = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 10
  %88 = ptrtoint ptr %tr_ichange to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call143, ptr %tr_ichange, align 4
  %call145 = tail call fastcc i32 @xfs_calc_swrite_reservation(ptr noundef %mp)
  %tr_fsyncts = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 25
  %89 = ptrtoint ptr %tr_fsyncts to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call145, ptr %tr_fsyncts, align 4
  %call147 = tail call fastcc i32 @xfs_calc_writeid_reservation(ptr noundef %mp)
  %tr_writeid = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 13
  %90 = ptrtoint ptr %tr_writeid to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call147, ptr %tr_writeid, align 4
  %call149 = tail call fastcc i32 @xfs_calc_attrsetrt_reservation(ptr noundef %mp)
  %tr_attrsetrt = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 16
  %91 = ptrtoint ptr %tr_attrsetrt to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call149, ptr %tr_attrsetrt, align 4
  %call151 = tail call fastcc i32 @xfs_calc_clear_agi_bucket_reservation(ptr noundef %mp)
  %tr_clearagi = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 18
  %92 = ptrtoint ptr %tr_clearagi to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call151, ptr %tr_clearagi, align 4
  %call153 = tail call fastcc i32 @xfs_calc_growrtzero_reservation(ptr noundef %mp)
  %tr_growrtzero = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 20
  %93 = ptrtoint ptr %tr_growrtzero to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call153, ptr %tr_growrtzero, align 4
  %call155 = tail call fastcc i32 @xfs_calc_growrtfree_reservation(ptr noundef %mp)
  %tr_growrtfree = getelementptr inbounds %struct.xfs_trans_resv, ptr %resp, i32 0, i32 21
  %94 = ptrtoint ptr %tr_growrtfree to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call155, ptr %tr_growrtfree, align 4
  %95 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %1, ptr %m_rmap_maxlevels, align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_write_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %1 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %2 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_bm_maxlevels, align 8
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %3, i32 noundef %conv1)
  %add = add i32 %call2, %call
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %4 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_sectsize, align 2
  %conv4 = zext i16 %5 to i32
  %call5 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 3, i32 noundef %conv4)
  %add6 = add i32 %add, %call5
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %6 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %7, 1
  %sub.i = add i32 %mul1.i, -1
  %mul2.i = shl i32 %sub.i, 2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %10 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %11, 2
  %mul5.i = add nsw i32 %mul2.i, -2
  %add.i = add i32 %mul5.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %12 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %13, 2
  %mul10.i = add i32 %blocks.0.i, -2
  %add11.i = add i32 %mul10.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %and.i = and i64 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %xfs_allocfree_log_count.exit.if.end_crit_edge, label %if.then

xfs_allocfree_log_count.exit.if.end_crit_edge:    ; preds = %xfs_allocfree_log_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %xfs_allocfree_log_count.exit
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %14 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_rextsize.i, align 16
  %div.i = udiv i32 2097151, %15
  %div38.i = lshr i32 %div.i, 3
  %sub.i64 = add i32 %conv1, -1
  %add.i65 = add i32 %sub.i64, %div38.i
  %div4.i = udiv i32 %add.i65, %conv1
  %add5.i = add i32 %div4.i, 1
  %call22 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add5.i, i32 noundef %conv1)
  %add23 = add i32 %call22, %add6
  %mul2.i69 = shl i32 %sub.i, 1
  br i1 %tobool.i.not.i, label %if.then.if.end.i81_crit_edge, label %if.then.i77

if.then.if.end.i81_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i81

if.then.i77:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i73 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %16 = ptrtoint ptr %m_rmap_maxlevels.i73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_rmap_maxlevels.i73, align 16
  %mul3.i74 = shl i32 %17, 1
  %sub4.i75 = add nsw i32 %mul2.i69, -1
  %add.i76 = add i32 %sub4.i75, %mul3.i74
  br label %if.end.i81

if.end.i81:                                       ; preds = %if.then.i77, %if.then.if.end.i81_crit_edge
  %blocks.0.i78 = phi i32 [ %add.i76, %if.then.i77 ], [ %mul2.i69, %if.then.if.end.i81_crit_edge ]
  br i1 %tobool.i23.not.i, label %if.end.i81.xfs_allocfree_log_count.exit88_crit_edge, label %if.then7.i86

if.end.i81.xfs_allocfree_log_count.exit88_crit_edge: ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit88

if.then7.i86:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i82 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %18 = ptrtoint ptr %m_refc_maxlevels.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_refc_maxlevels.i82, align 4
  %mul8.i83 = shl i32 %19, 1
  %sub9.i84 = add i32 %blocks.0.i78, -1
  %add11.i85 = add i32 %sub9.i84, %mul8.i83
  br label %xfs_allocfree_log_count.exit88

xfs_allocfree_log_count.exit88:                   ; preds = %if.then7.i86, %if.end.i81.xfs_allocfree_log_count.exit88_crit_edge
  %blocks.1.i87 = phi i32 [ %add11.i85, %if.then7.i86 ], [ %blocks.0.i78, %if.end.i81.xfs_allocfree_log_count.exit88_crit_edge ]
  %call25 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i87, i32 noundef %conv1)
  %add26 = add i32 %add23, %call25
  br label %if.end

if.end:                                           ; preds = %xfs_allocfree_log_count.exit88, %xfs_allocfree_log_count.exit.if.end_crit_edge
  %t2.0 = phi i32 [ %add26, %xfs_allocfree_log_count.exit88 ], [ 0, %xfs_allocfree_log_count.exit.if.end_crit_edge ]
  br i1 %tobool.i.not.i, label %if.end.if.end.i105_crit_edge, label %if.then.i101

if.end.if.end.i105_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i105

if.then.i101:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i96 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %20 = ptrtoint ptr %m_rmap_maxlevels.i96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_rmap_maxlevels.i96, align 16
  %mul3.i97 = shl i32 %21, 2
  %mul5.i99 = add nsw i32 %mul2.i, -2
  %add.i100 = add i32 %mul5.i99, %mul3.i97
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i101, %if.end.if.end.i105_crit_edge
  %blocks.0.i102 = phi i32 [ %add.i100, %if.then.i101 ], [ %mul2.i, %if.end.if.end.i105_crit_edge ]
  br i1 %tobool.i23.not.i, label %if.end.i105.xfs_allocfree_log_count.exit113_crit_edge, label %if.then7.i111

if.end.i105.xfs_allocfree_log_count.exit113_crit_edge: ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit113

if.then7.i111:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i106 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %22 = ptrtoint ptr %m_refc_maxlevels.i106 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_refc_maxlevels.i106, align 4
  %mul8.i107 = shl i32 %23, 2
  %mul10.i109 = add i32 %blocks.0.i102, -2
  %add11.i110 = add i32 %mul10.i109, %mul8.i107
  br label %xfs_allocfree_log_count.exit113

xfs_allocfree_log_count.exit113:                  ; preds = %if.then7.i111, %if.end.i105.xfs_allocfree_log_count.exit113_crit_edge
  %blocks.1.i112 = phi i32 [ %add11.i110, %if.then7.i111 ], [ %blocks.0.i102, %if.end.i105.xfs_allocfree_log_count.exit113_crit_edge ]
  %call30 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 5, i32 noundef %conv4)
  %call8 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  %add9 = add i32 %call8, %add6
  %call32 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i112, i32 noundef %conv1)
  %add33 = add i32 %call32, %call30
  %24 = tail call i32 @llvm.umax.i32(i32 %add9, i32 %t2.0)
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %add33)
  %add42 = add i32 %25, 768
  ret i32 %add42
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_itruncate_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %1 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %2 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %4 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_sectsize, align 2
  %conv5 = zext i16 %5 to i32
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %6 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %7, 1
  %sub.i = add i32 %mul1.i, -1
  %mul2.i = shl i32 %sub.i, 3
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %10 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %11, 3
  %mul5.i = add nsw i32 %mul2.i, -4
  %add.i = add i32 %mul5.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %12 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %13, 3
  %mul10.i = add i32 %blocks.0.i, -4
  %add11.i = add i32 %mul10.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %and.i = and i64 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %xfs_allocfree_log_count.exit.if.end_crit_edge, label %if.then

xfs_allocfree_log_count.exit.if.end_crit_edge:    ; preds = %xfs_allocfree_log_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %xfs_allocfree_log_count.exit
  %call14 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 5, i32 noundef %conv5)
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %14 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_rextsize.i, align 16
  %div.i = udiv i32 2097151, %15
  %div38.i = lshr i32 %div.i, 3
  %sub.i45 = add i32 %conv1, -1
  %add.i46 = add i32 %sub.i45, %div38.i
  %div4.i = udiv i32 %add.i46, %conv1
  %add5.i = shl i32 %div4.i, 1
  %mul.i = add i32 %add5.i, 2
  %call16 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %mul.i, i32 noundef %conv1)
  %add17 = add i32 %call16, %call14
  %mul2.i50 = shl i32 %sub.i, 2
  br i1 %tobool.i.not.i, label %if.then.if.end.i63_crit_edge, label %if.then.i59

if.then.if.end.i63_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i63

if.then.i59:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i54 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %16 = ptrtoint ptr %m_rmap_maxlevels.i54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_rmap_maxlevels.i54, align 16
  %mul3.i55 = shl i32 %17, 2
  %mul5.i57 = add nsw i32 %mul2.i50, -2
  %add.i58 = add i32 %mul5.i57, %mul3.i55
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i59, %if.then.if.end.i63_crit_edge
  %blocks.0.i60 = phi i32 [ %add.i58, %if.then.i59 ], [ %mul2.i50, %if.then.if.end.i63_crit_edge ]
  br i1 %tobool.i23.not.i, label %if.end.i63.xfs_allocfree_log_count.exit71_crit_edge, label %if.then7.i69

if.end.i63.xfs_allocfree_log_count.exit71_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit71

if.then7.i69:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i64 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %18 = ptrtoint ptr %m_refc_maxlevels.i64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_refc_maxlevels.i64, align 4
  %mul8.i65 = shl i32 %19, 2
  %mul10.i67 = add i32 %blocks.0.i60, -2
  %add11.i68 = add i32 %mul10.i67, %mul8.i65
  br label %xfs_allocfree_log_count.exit71

xfs_allocfree_log_count.exit71:                   ; preds = %if.then7.i69, %if.end.i63.xfs_allocfree_log_count.exit71_crit_edge
  %blocks.1.i70 = phi i32 [ %add11.i68, %if.then7.i69 ], [ %blocks.0.i60, %if.end.i63.xfs_allocfree_log_count.exit71_crit_edge ]
  %call19 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i70, i32 noundef %conv1)
  %add20 = add i32 %add17, %call19
  br label %if.end

if.end:                                           ; preds = %xfs_allocfree_log_count.exit71, %xfs_allocfree_log_count.exit.if.end_crit_edge
  %t3.0 = phi i32 [ %add20, %xfs_allocfree_log_count.exit71 ], [ 0, %xfs_allocfree_log_count.exit.if.end_crit_edge ]
  %call6 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 9, i32 noundef %conv5)
  %call8 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  %add9 = add i32 %call8, %call6
  %add = add i32 %3, 1
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add, i32 noundef %conv1)
  %add3 = add i32 %call2, %call
  %20 = tail call i32 @llvm.umax.i32(i32 %add3, i32 %add9)
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 %t3.0)
  %add29 = add i32 %21, 768
  ret i32 %add29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_rename_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 4)
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %4 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %6 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_mnr, align 4
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %8 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %12 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %14 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %16 = mul i32 %15, 12
  %mul2.i = add i32 %16, -6
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %17 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %19 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %21 = mul i32 %20, 6
  %mul5.i = add i32 %16, -9
  %add.i = add i32 %mul5.i, %21
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %22 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_refc_maxlevels.i, align 4
  %24 = mul i32 %23, 6
  %mul10.i = add i32 %blocks.0.i, -3
  %add11.i = add i32 %mul10.i, %24
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv21 = zext i16 %13 to i32
  %call22 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 7, i32 noundef %conv21)
  %sub = sub i32 %5, %7
  %add = add i32 %3, -1
  %sub4 = add i32 %add, %sub
  %div = udiv i32 %sub4, %sub
  %sub11 = add i32 %9, 2147483647
  %mul12 = mul i32 %div, %sub11
  %mul47 = add i32 %mul12, %3
  %add15 = mul i32 %mul47, 14
  %mul16 = add i32 %add15, 2
  %sh_prom = zext i8 %11 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv17 = trunc i64 %shl to i32
  %call18 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %mul16, i32 noundef %conv17)
  %add19 = add i32 %call18, %call
  %call30 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv17)
  %add31 = add i32 %call30, %call22
  %25 = tail call i32 @llvm.umax.i32(i32 %add19, i32 %add31)
  %add33 = add i32 %25, 768
  ret i32 %add33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_link_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_iunlink_remove_reservation(ptr noundef %mp)
  %call1 = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 2)
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %4 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %6 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_mnr, align 4
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %8 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %12 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %14 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %15, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %18 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %19, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %20 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %21, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv22 = zext i16 %13 to i32
  %call23 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 3, i32 noundef %conv22)
  %sub = sub i32 %5, %7
  %add5 = add i32 %3, -1
  %sub6 = add i32 %add5, %sub
  %div = udiv i32 %sub6, %sub
  %sub13 = add i32 %9, -1
  %mul14 = mul i32 %div, %sub13
  %mul49 = add i32 %mul14, %3
  %add16 = mul i32 %mul49, 7
  %add17 = add i32 %add16, 1
  %sh_prom = zext i8 %11 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv18 = trunc i64 %shl to i32
  %call19 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add17, i32 noundef %conv18)
  %add20 = add i32 %call19, %call1
  %call31 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv18)
  %add32 = add i32 %call31, %call23
  %22 = tail call i32 @llvm.umax.i32(i32 %add20, i32 %add32)
  %add = add i32 %call, 768
  %add34 = add i32 %add, %22
  ret i32 %add34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_remove_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_iunlink_add_reservation(ptr noundef %mp)
  %call1 = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %4 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %6 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_mnr, align 4
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %8 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %12 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %14 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %15, 3
  %mul2.i = add i32 %mul1.i, -4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %18 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %19, 2
  %mul5.i = add i32 %mul1.i, -6
  %add.i = add i32 %mul5.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %20 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %21, 2
  %mul10.i = add i32 %blocks.0.i, -2
  %add11.i = add i32 %mul10.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv22 = zext i16 %13 to i32
  %call23 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 4, i32 noundef %conv22)
  %sub = sub i32 %5, %7
  %add5 = add i32 %3, -1
  %sub6 = add i32 %add5, %sub
  %div = udiv i32 %sub6, %sub
  %sub13 = add i32 %9, -1
  %mul14 = mul i32 %div, %sub13
  %mul49 = add i32 %mul14, %3
  %add16 = mul i32 %mul49, 7
  %add17 = add i32 %add16, 1
  %sh_prom = zext i8 %11 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv18 = trunc i64 %shl to i32
  %call19 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add17, i32 noundef %conv18)
  %add20 = add i32 %call19, %call1
  %call31 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv18)
  %add32 = add i32 %call31, %call23
  %22 = tail call i32 @llvm.umax.i32(i32 %add20, i32 %add32)
  %add = add i32 %call, 768
  %add34 = add i32 %add, %22
  ret i32 %add34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_symlink_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_icreate_reservation(ptr noundef %mp)
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef 1024)
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_icreate_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_icreate_resv_alloc(ptr noundef %mp)
  %call1 = tail call fastcc i32 @xfs_calc_create_resv_modify(ptr noundef %mp)
  %0 = tail call i32 @llvm.umax.i32(i32 %call, i32 %call1)
  %add = add i32 %0, 768
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_create_tmpfile_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_icreate_resv_alloc(ptr noundef %mp)
  %add = add i32 %call, 768
  %call1 = tail call fastcc i32 @xfs_calc_iunlink_add_reservation(ptr noundef %mp)
  %add2 = add i32 %add, %call1
  ret i32 %add2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_mkdir_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_icreate_reservation(ptr noundef %mp)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_ifree_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %add = add i32 %call, 768
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 3, i32 noundef %conv)
  %add2 = add i32 %add, %call1
  %call3 = tail call fastcc i32 @xfs_calc_iunlink_remove_reservation(ptr noundef %mp)
  %add4 = add i32 %add2, %call3
  %call5 = tail call fastcc i32 @xfs_calc_inode_chunk_res(ptr noundef %mp, i1 noundef zeroext false)
  %add6 = add i32 %add4, %call5
  %call7 = tail call fastcc i32 @xfs_calc_inobt_res(ptr noundef %mp)
  %add8 = add i32 %add6, %call7
  %call9 = tail call fastcc i32 @xfs_calc_finobt_res(ptr noundef %mp)
  %add10 = add i32 %add8, %call9
  ret i32 %add10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_addafork_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %2 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_dir_geo, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %8 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %10 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_alloc_mnr, align 4
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %12 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %14 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sb_blocklog, align 8
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %16 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %17, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %20 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %21, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %22 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %23, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %add = add i32 %call, 768
  %conv = zext i16 %1 to i32
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 2, i32 noundef %conv)
  %add2 = add i32 %add, %call1
  %call3 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %5)
  %add4 = add i32 %add2, %call3
  %sub = sub i32 %9, %11
  %add7 = add i32 %7, -1
  %sub8 = add i32 %add7, %sub
  %div = udiv i32 %sub8, %sub
  %sub15 = add i32 %13, -1
  %mul = mul i32 %div, %sub15
  %add16 = add i32 %mul, 1
  %sh_prom = zext i8 %15 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv19 = trunc i64 %shl to i32
  %call20 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add16, i32 noundef %conv19)
  %add21 = add i32 %add4, %call20
  %call29 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv19)
  %add30 = add i32 %add21, %call29
  ret i32 %add30
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_attrinval_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %arrayidx = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %4 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %6 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %7, 4
  %mul2.i = add i32 %mul1.i, -8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %10 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %11, 3
  %mul5.i = add i32 %mul1.i, -12
  %add.i = add i32 %mul5.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %12 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %13, 3
  %mul10.i = add i32 %blocks.0.i, -4
  %add11.i = add i32 %mul10.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv4 = zext i16 %5 to i32
  %call5 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 9, i32 noundef %conv4)
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %1, i32 noundef %conv1)
  %add = add i32 %call2, %call
  %call13 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  %add14 = add i32 %call13, %call5
  %14 = tail call i32 @llvm.umax.i32(i32 %add, i32 %add14)
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_attrsetm_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %add = add i32 %call, 768
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %add2 = add i32 %add, %call1
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv5 = trunc i64 %shl to i32
  %call6 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 5, i32 noundef %conv5)
  %add7 = add i32 %add2, %call6
  ret i32 %add7
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_attrrm_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %arrayidx = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 43, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %6 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %8 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %9, 3
  %mul2.i = add i32 %mul1.i, -4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %12 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %13, 2
  %mul5.i = add i32 %mul1.i, -6
  %add.i = add i32 %mul5.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %14 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %15, 2
  %mul10.i = add i32 %blocks.0.i, -2
  %add11.i = add i32 %mul10.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv16 = zext i16 %7 to i32
  %call17 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 5, i32 noundef %conv16)
  %sh_prom = zext i8 %1 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 5, i32 noundef %conv1)
  %conv3 = zext i32 %3 to i64
  %shl8 = shl i64 %conv3, %sh_prom
  %conv9 = trunc i64 %shl8 to i32
  %call13 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %5, i32 noundef 0)
  %add = add i32 %call, %conv9
  %add10 = add i32 %add, %call2
  %add14 = add i32 %add10, %call13
  %call25 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  %add26 = add i32 %call25, %call17
  %16 = tail call i32 @llvm.umax.i32(i32 %add14, i32 %add26)
  %add28 = add i32 %16, 768
  ret i32 %add28
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_growrtalloc_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %2 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_bm_maxlevels, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %call5 = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %6 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %7, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %10 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %11, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %12 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %13, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 2, i32 noundef %conv)
  %sh_prom = zext i8 %5 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv3 = trunc i64 %shl to i32
  %call4 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %3, i32 noundef %conv3)
  %call14 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv3)
  %add = add i32 %call, %call5
  %add6 = add i32 %add, %call4
  %add15 = add i32 %add6, %call14
  ret i32 %add15
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_qm_dqalloc_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_write_reservation(ptr noundef %mp)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %2 = trunc i64 %notmask to i32
  %conv1 = xor i32 %2, -1
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv1)
  %add = add i32 %call2, %call
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_qm_setqlim_reservation() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef 104)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_sb_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_growdata_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %2 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %3, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %6 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %7, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %8 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %9, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 3, i32 noundef %conv)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %11 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv4 = trunc i64 %shl to i32
  %call5 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv4)
  %add = add i32 %call5, %call
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_ichange_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  %add = add i32 %call, 768
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %add2 = add i32 %add, %call1
  ret i32 %add2
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_swrite_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_writeid_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_attrsetrt_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %arrayidx = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 43, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %5 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv3 = trunc i64 %shl to i32
  %call4 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %3, i32 noundef %conv3)
  %add = add i32 %call4, %call
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_clear_agi_bucket_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_growrtzero_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_blocksize, align 4
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_growrtfree_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %call1 = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 2)
  %add = add i32 %call1, %call
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %2 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_blocksize, align 4
  %call3 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %3)
  %add4 = add i32 %add, %call3
  %m_rsumsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 58
  %4 = ptrtoint ptr %m_rsumsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_rsumsize, align 8
  %call5 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %5)
  %add6 = add i32 %add4, %call5
  ret i32 %add6
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_inode_res(ptr nocapture noundef readonly %mp, i32 noundef %ninodes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %0 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_inodesize, align 8
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 104
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %mul = select i1 %tobool.i.not, i32 48, i32 144
  %add2 = add nuw nsw i32 %add, %mul
  %mul3 = mul i32 %add2, %ninodes
  ret i32 %mul3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_buf_res(i32 noundef %nbufs, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 128
  %mul = mul i32 %add, %nbufs
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_iunlink_remove_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %inode_cluster_size = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 1
  %2 = ptrtoint ptr %inode_cluster_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inode_cluster_size, align 8
  %mul = shl i32 %3, 1
  %add = add i32 %mul, %call
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_iunlink_add_reservation(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %inode_cluster_size = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 1
  %2 = ptrtoint ptr %inode_cluster_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inode_cluster_size, align 8
  %add = add i32 %3, %call
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_icreate_resv_alloc(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 2, i32 noundef %conv)
  %add = add i32 %call, %conv
  %call4 = tail call fastcc i32 @xfs_calc_inode_chunk_res(ptr noundef %mp, i1 noundef zeroext true)
  %add5 = add i32 %add, %call4
  %call6 = tail call fastcc i32 @xfs_calc_inobt_res(ptr noundef %mp)
  %add7 = add i32 %add5, %call6
  %call8 = tail call fastcc i32 @xfs_calc_finobt_res(ptr noundef %mp)
  %add9 = add i32 %add7, %call8
  ret i32 %add9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_create_resv_modify(ptr nocapture noundef readonly %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_calc_inode_res(ptr noundef %mp, i32 noundef 2)
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef 1, i32 noundef %conv)
  %add = add i32 %call1, %call
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv4 = trunc i64 %shl to i32
  %add5 = add i32 %add, %conv4
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %4 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %8 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %10 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %9, %11
  %add9 = add i32 %7, -1
  %sub10 = add i32 %add9, %sub
  %div = udiv i32 %sub10, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %12 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_bm_maxlevels, align 8
  %sub17 = add i32 %13, -1
  %mul18 = mul i32 %sub17, %div
  %mul43 = add i32 %mul18, %7
  %add20 = mul i32 %mul43, 7
  %add21 = add i32 %add20, 1
  %call28 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %add21, i32 noundef %conv4)
  %add29 = add i32 %add5, %call28
  %call30 = tail call fastcc i32 @xfs_calc_finobt_res(ptr noundef %mp)
  %add31 = add i32 %add29, %call30
  ret i32 %add31
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_inode_chunk_res(ptr nocapture noundef readonly %mp, i1 noundef zeroext %alloc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %0 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %1, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %4 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %5, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %6 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %7, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %8 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %9 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call2 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  br i1 %alloc, label %if.then, label %xfs_allocfree_log_count.exit.if.end11_crit_edge

xfs_allocfree_log_count.exit.if.end11_crit_edge:  ; preds = %xfs_allocfree_log_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %xfs_allocfree_log_count.exit
  %and.i = and i64 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %xfs_allocfree_log_count.exit.if.end11_crit_edge
  %size.0 = phi i32 [ 0, %xfs_allocfree_log_count.exit.if.end11_crit_edge ], [ %conv1, %if.then.if.end11_crit_edge ]
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 12
  %10 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ialloc_blks, align 4
  %call12 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %11, i32 noundef %size.0)
  %add = add i32 %call12, %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end11 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_inobt_res(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %0 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inobt_maxlevels, align 4
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %4 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul1.i = shl i32 %5, 2
  %mul2.i = add i32 %mul1.i, -2
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %8 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %mul3.i = shl i32 %9, 1
  %sub4.i = add i32 %mul1.i, -3
  %add.i = add i32 %sub4.i, %mul3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %add.i, %if.then.i ], [ %mul2.i, %entry.if.end.i_crit_edge ]
  %and.i22.i = and i64 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.i23.not.i = icmp eq i64 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %if.end.i.xfs_allocfree_log_count.exit_crit_edge, label %if.then7.i

if.end.i.xfs_allocfree_log_count.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_allocfree_log_count.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %10 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_refc_maxlevels.i, align 4
  %mul8.i = shl i32 %11, 1
  %sub9.i = add i32 %blocks.0.i, -1
  %add11.i = add i32 %sub9.i, %mul8.i
  br label %xfs_allocfree_log_count.exit

xfs_allocfree_log_count.exit:                     ; preds = %if.then7.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge
  %blocks.1.i = phi i32 [ %add11.i, %if.then7.i ], [ %blocks.0.i, %if.end.i.xfs_allocfree_log_count.exit_crit_edge ]
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %call = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %1, i32 noundef %conv1)
  %call9 = tail call fastcc i32 @xfs_calc_buf_res(i32 noundef %blocks.1.i, i32 noundef %conv1)
  %add = add i32 %call9, %call
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_calc_finobt_res(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @xfs_calc_inobt_res(ptr noundef %mp)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
