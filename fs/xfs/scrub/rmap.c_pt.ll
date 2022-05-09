; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/rmap.c_pt.bc'
source_filename = "../fs/xfs/scrub/rmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }

@XFS_RMAP_OINFO_AG = external dso_local constant %struct.xfs_owner_info, align 8
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_ag_rmapbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_ag_btree(ptr noundef %sc, i1 noundef zeroext false) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_btree(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_rmapbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap_cur, align 4
  %call = tail call i32 @xchk_btree(ptr noundef %sc, ptr noundef %1, ptr noundef nonnull @xchk_rmapbt_rec, ptr noundef nonnull @XFS_RMAP_OINFO_AG, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_btree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_rmapbt_rec(ptr nocapture noundef readonly %bs, ptr noundef %rec) #2 align 64 {
entry:
  %irec = alloca %struct.xfs_rmap_irec, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #4
  %4 = call ptr @memset(ptr %irec, i32 255, i32 32)
  %5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %call = call i32 @xfs_rmap_btrec_to_irec(ptr noundef %rec, ptr noundef nonnull %irec) #4
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %error, align 4
  %11 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bs, align 8
  %13 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur, align 4
  %call3 = call zeroext i1 @xchk_btree_process_error(ptr noundef %12, ptr noundef %14, i32 noundef 0, ptr noundef nonnull %error) #4
  br i1 %call3, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %17 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %18, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp.not = icmp ugt i32 %add, %16
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bs, align 8
  %21 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %20, ptr noundef %22, i32 noundef 0) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %23 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %24)
  %cmp9 = icmp eq i64 %24, -3
  %25 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irec, align 8
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12.not = icmp eq i32 %26, 0
  br i1 %cmp12.not, label %lor.lhs.false, label %if.then10.if.end35.sink.split_crit_edge

if.then10.if.end35.sink.split_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split

lor.lhs.false:                                    ; preds = %if.then10
  %27 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rm_blockcount, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 30
  %29 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %30 to i32
  %shl = shl i32 3, %conv
  %conv14 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %31 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %32 to i64
  %shr = ashr i64 %conv14, %sh_prom
  %conv16 = trunc i64 %shr to i32
  %add17 = add i32 %conv16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add17)
  %cmp18.not = icmp eq i32 %28, %add17
  br i1 %cmp18.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.if.end35.sink.split_crit_edge

lor.lhs.false.if.end35.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.else:                                          ; preds = %if.end8
  %call25 = call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %9, i32 noundef %26) #4
  br i1 %call25, label %lor.lhs.false26, label %if.else.if.end35.sink.split_crit_edge

if.else.if.end35.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split

lor.lhs.false26:                                  ; preds = %if.else
  %33 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irec, align 8
  %35 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rm_blockcount, align 4
  %add29 = add i32 %34, -1
  %sub = add i32 %add29, %36
  %call30 = call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %9, i32 noundef %sub) #4
  br i1 %call30, label %lor.lhs.false26.if.end35_crit_edge, label %lor.lhs.false26.if.end35.sink.split_crit_edge

lor.lhs.false26.if.end35.sink.split_crit_edge:    ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split

lor.lhs.false26.if.end35_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end35.sink.split:                              ; preds = %lor.lhs.false26.if.end35.sink.split_crit_edge, %if.else.if.end35.sink.split_crit_edge, %lor.lhs.false.if.end35.sink.split_crit_edge, %if.then10.if.end35.sink.split_crit_edge
  %37 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bs, align 8
  %39 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %38, ptr noundef %40, i32 noundef 0) #4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %lor.lhs.false26.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %41 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %tobool.not = icmp sgt i64 %42, -1
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %43 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rm_flags, align 8
  %and38 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and42 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %and46 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool39.not, label %if.end35.if.end56_crit_edge, label %land.lhs.true

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end35
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %45 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %cmp51.not = icmp eq i64 %46, 0
  br i1 %cmp51.not, label %land.lhs.true.if.end56_crit_edge, label %if.then53

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bs, align 8
  %49 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %48, ptr noundef %50, i32 noundef 0) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %land.lhs.true.if.end56_crit_edge, %if.end35.if.end56_crit_edge
  br i1 %tobool.not, label %if.end56.if.end66_crit_edge, label %land.lhs.true59

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

land.lhs.true59:                                  ; preds = %if.end56
  %rm_offset60 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %51 = ptrtoint ptr %rm_offset60 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rm_offset60, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp61.not = icmp eq i64 %52, 0
  br i1 %cmp61.not, label %land.lhs.true59.if.end66_crit_edge, label %if.then63

land.lhs.true59.if.end66_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then63:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bs, align 8
  %55 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %54, ptr noundef %56, i32 noundef 0) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %land.lhs.true59.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %57 = select i1 %tobool39.not, i1 %tobool.not, i1 false
  %58 = select i1 %57, i1 %tobool43.not, i1 false
  %or.cond = select i1 %tobool47.not, i1 true, i1 %58
  br i1 %or.cond, label %if.end66.if.end81_crit_edge, label %if.then78

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then78:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bs, align 8
  %61 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %60, ptr noundef %62, i32 noundef 0) #4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end66.if.end81_crit_edge
  br i1 %tobool.not, label %if.then98.critedge, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end81
  %63 = and i32 %44, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %64 = icmp ne i32 %63, 0
  %tobool43.not.not156 = xor i1 %tobool43.not, true
  %brmerge157 = select i1 %64, i1 true, i1 %tobool43.not.not156
  br i1 %brmerge157, label %if.then93, label %land.lhs.true84.if.else105_crit_edge

land.lhs.true84.if.else105_crit_edge:             ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else105

if.then93:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bs, align 8
  %67 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %66, ptr noundef %68, i32 noundef 0) #4
  br label %if.else105

if.then98.critedge:                               ; preds = %if.end81
  %69 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rm_owner, align 8
  %call100 = call zeroext i1 @xfs_verify_ino(ptr noundef %3, i64 noundef %70) #4
  br i1 %call100, label %if.then98.critedge.if.end117_crit_edge, label %if.then98.critedge.if.end117.sink.split_crit_edge

if.then98.critedge.if.end117.sink.split_crit_edge: ; preds = %if.then98.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117.sink.split

if.then98.critedge.if.end117_crit_edge:           ; preds = %if.then98.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.else105:                                       ; preds = %if.then93, %land.lhs.true84.if.else105_crit_edge
  %71 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rm_owner, align 8
  %73 = add i64 %72, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7, i64 %73)
  %74 = icmp ult i64 %73, -7
  br i1 %74, label %if.else105.if.end117.sink.split_crit_edge, label %if.else105.if.end117_crit_edge

if.else105.if.end117_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.else105.if.end117.sink.split_crit_edge:        ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117.sink.split

if.end117.sink.split:                             ; preds = %if.else105.if.end117.sink.split_crit_edge, %if.then98.critedge.if.end117.sink.split_crit_edge
  %75 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bs, align 8
  %77 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %76, ptr noundef %78, i32 noundef 0) #4
  br label %if.end117

if.end117:                                        ; preds = %if.end117.sink.split, %if.else105.if.end117_crit_edge, %if.then98.critedge.if.end117_crit_edge
  %79 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bs, align 8
  call fastcc void @xchk_rmapbt_xref(ptr noundef %80, ptr noundef nonnull %irec)
  br label %out

out:                                              ; preds = %if.end117, %entry.out_crit_edge
  %81 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #4
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo) local_unnamed_addr #0 align 64 {
entry:
  %has_rmap.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_rmap.i) #4
  %0 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %has_rmap.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #4
  %rmap_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %1 = ptrtoint ptr %rmap_cur.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap_cur.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.xchk_xref_check_owner.exit_crit_edge, label %lor.lhs.false.i

entry.xchk_xref_check_owner.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

lor.lhs.false.i:                                  ; preds = %entry
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i.i, align 4
  %and.i.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge

lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = call i32 @xfs_rmap_record_exists(ptr noundef nonnull %2, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo, ptr noundef nonnull %has_rmap.i) #4
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3.i, ptr %error.i, align 4
  %call6.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %rmap_cur.i) #4
  br i1 %call6.i, label %if.end8.i, label %if.end.i.xchk_xref_check_owner.exit_crit_edge

if.end.i.xchk_xref_check_owner.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.end8.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_rmap.i, align 1, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %if.end8.i.xchk_xref_check_owner.exit_crit_edge, label %if.then13.i

if.end8.i.xchk_xref_check_owner.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %rmap_cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap_cur.i, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #4
  br label %xchk_xref_check_owner.exit

xchk_xref_check_owner.exit:                       ; preds = %if.then13.i, %if.end8.i.xchk_xref_check_owner.exit_crit_edge, %if.end.i.xchk_xref_check_owner.exit_crit_edge, %lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge, %entry.xchk_xref_check_owner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_rmap.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_not_owned_by(ptr noundef %sc, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo) local_unnamed_addr #0 align 64 {
entry:
  %has_rmap.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_rmap.i) #4
  %0 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %has_rmap.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #4
  %rmap_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %1 = ptrtoint ptr %rmap_cur.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap_cur.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.xchk_xref_check_owner.exit_crit_edge, label %lor.lhs.false.i

entry.xchk_xref_check_owner.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

lor.lhs.false.i:                                  ; preds = %entry
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i.i, align 4
  %and.i.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge

lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = call i32 @xfs_rmap_record_exists(ptr noundef nonnull %2, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo, ptr noundef nonnull %has_rmap.i) #4
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3.i, ptr %error.i, align 4
  %call6.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %rmap_cur.i) #4
  br i1 %call6.i, label %if.end8.i, label %if.end.i.xchk_xref_check_owner.exit_crit_edge

if.end.i.xchk_xref_check_owner.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.end8.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_rmap.i, align 1, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  br i1 %cmp.not.i, label %if.end8.i.xchk_xref_check_owner.exit_crit_edge, label %if.then13.i

if.end8.i.xchk_xref_check_owner.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_xref_check_owner.exit

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %rmap_cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap_cur.i, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #4
  br label %xchk_xref_check_owner.exit

xchk_xref_check_owner.exit:                       ; preds = %if.then13.i, %if.end8.i.xchk_xref_check_owner.exit_crit_edge, %if.end.i.xchk_xref_check_owner.exit_crit_edge, %lor.lhs.false.i.xchk_xref_check_owner.exit_crit_edge, %entry.xchk_xref_check_owner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_rmap.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_has_no_owner(ptr noundef %sc, i32 noundef %bno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %has_rmap = alloca i8, align 1
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_rmap) #4
  %0 = ptrtoint ptr %has_rmap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %has_rmap, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %1 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @xfs_rmap_has_record(ptr noundef nonnull %2, i32 noundef %bno, i32 noundef %len, ptr noundef nonnull %has_rmap) #4
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #4
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %has_rmap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_rmap, align 1, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_rmap) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_has_record(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_xref_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_btrec_to_irec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_btree_process_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_ino(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_rmapbt_xref(ptr noundef %sc, ptr nocapture noundef readonly %irec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %2 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rm_blockcount, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sm_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %1, i32 noundef %3) #4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %8 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7, i64 %9)
  %cmp = icmp eq i64 %9, -7
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_xref_is_inode_chunk(ptr noundef %sc, i32 noundef %1, i32 noundef %3) #4
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %1, i32 noundef %3) #4
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %10 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %11)
  %cmp4 = icmp eq i64 %11, -9
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irec, align 8
  %14 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rm_blockcount, align 4
  tail call void @xchk_xref_is_cow_staging(ptr noundef %sc, i32 noundef %13, i32 noundef %15) #4
  br label %cleanup

if.else8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @xchk_rmapbt_xref_refc(ptr noundef %sc, ptr noundef %irec)
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_cow_staging(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_rmapbt_xref_refc(ptr noundef %sc, ptr nocapture noundef readonly %irec) unnamed_addr #2 align 64 {
entry:
  %fbno = alloca i32, align 4
  %flen = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbno) #4
  %0 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fbno, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flen) #4
  %1 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flen, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %refc_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %2 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refc_cur, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %8 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool1.not = icmp slt i64 %9, 0
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %10 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rm_flags, align 8
  %and3 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  %and7 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %and11 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %12 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %14 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rm_blockcount, align 4
  %call16 = call i32 @xfs_refcount_find_shared(ptr noundef nonnull %3, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %fbno, ptr noundef nonnull %flen, i1 noundef zeroext false) #4
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call16, ptr %error, align 4
  %call19 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %refc_cur) #4
  br i1 %call19, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %17 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end21
  %brmerge = select i1 %tobool1.not, i1 true, i1 %tobool8.not
  %brmerge50 = select i1 %brmerge, i1 true, i1 %tobool4.not
  %brmerge51 = select i1 %brmerge50, i1 true, i1 %tobool12.not
  br i1 %brmerge51, label %if.then29, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %refc_cur to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %refc_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %20, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flen) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbno) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_find_shared(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_record_exists(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
