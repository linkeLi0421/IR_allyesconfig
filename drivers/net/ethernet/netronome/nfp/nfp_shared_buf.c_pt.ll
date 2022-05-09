; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfp_shared_buf_pool_info_get = type { i32, i32, i32 }
%struct.nfp_shared_buf_pool_id = type { i32, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfp_shared_buf = type { i32, i32, i16, i16, i16, i16, i32 }
%struct.devlink_sb_pool_info = type { i32, i32, i32, i32 }
%struct.nfp_shared_buf_pool_info_set = type { %struct.nfp_shared_buf_pool_id, i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_abi_nfd_pf%u_sb_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sb_tbl\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_abi_nfd_pf%u_sb_tbl\00", [43 x i8] zeroinitializer }, align 32
@nfp_shared_buf_pool_unit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 89, i32 37 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 94, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 94, i32 43 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [55 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 22, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_shared_buf_pool_get(ptr noundef %pf, i32 noundef %sb, i16 noundef zeroext %pool_index, ptr nocapture noundef writeonly %pool_info) local_unnamed_addr #0 align 64 {
entry:
  %get_data = alloca %struct.nfp_shared_buf_pool_info_get, align 4
  %id = alloca %struct.nfp_shared_buf_pool_id, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %get_data) #5
  %0 = ptrtoint ptr %get_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %get_data, align 4, !annotation !18
  %1 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_get, ptr %get_data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !18
  %3 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_get, ptr %get_data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id) #5
  %5 = getelementptr inbounds %struct.nfp_shared_buf_pool_id, ptr %id, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %sb)
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id, align 4
  %conv = zext i16 %pool_index to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %5, align 4
  %num_shared_bufs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 36
  %10 = ptrtoint ptr %num_shared_bufs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_shared_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp48.not.i = icmp eq i32 %11, 0
  br i1 %cmp48.not.i, label %entry.land.end.i_crit_edge, label %for.body.lr.ph.i

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %shared_bufs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  %12 = ptrtoint ptr %shared_bufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared_bufs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfp_shared_buf, ptr %13, i32 %i.049.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %6)
  %cmp1.i = icmp eq i32 %15, %6
  br i1 %cmp1.i, label %nfp_shared_buf_pool_unit.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %.b46.i = load i1, ptr @nfp_shared_buf_pool_unit.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.cleanup_crit_edge, label %if.then8.i, !prof !19

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nfp_shared_buf_pool_unit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 22, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

nfp_shared_buf_pool_unit.exit:                    ; preds = %for.body.i
  %pool_size_unit.i = getelementptr %struct.nfp_shared_buf, ptr %13, i32 %i.049.i, i32 6
  %16 = ptrtoint ptr %pool_size_unit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pool_size_unit.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge, label %if.end

nfp_shared_buf_pool_unit.exit.cleanup_crit_edge:  ; preds = %nfp_shared_buf_pool_unit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nfp_shared_buf_pool_unit.exit
  %call1 = call i32 @nfp_mbox_cmd(ptr noundef %pf, i32 noundef 1, ptr noundef nonnull %id, i64 noundef 8, ptr noundef nonnull %get_data, i64 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call1)
  %cmp5 = icmp ult i32 %call1, 12
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %get_data, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %pool_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pool_info, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %threshold_type10 = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 2
  %26 = ptrtoint ptr %threshold_type10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %threshold_type10, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %mul = mul i32 %29, %18
  %size11 = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 1
  %30 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %size11, align 4
  %cell_size = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 3
  %31 = ptrtoint ptr %cell_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %18, ptr %cell_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge, %if.then8.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -22, %if.then8.i ], [ -22, %land.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %get_data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_mbox_cmd(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_shared_buf_pool_set(ptr noundef %pf, i32 noundef %sb, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type) local_unnamed_addr #0 align 64 {
entry:
  %set_data = alloca %struct.nfp_shared_buf_pool_info_set, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %set_data) #5
  %0 = getelementptr inbounds %struct.nfp_shared_buf_pool_id, ptr %set_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_set, ptr %set_data, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_set, ptr %set_data, i32 0, i32 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %sb)
  %4 = ptrtoint ptr %set_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %set_data, align 4
  %conv = zext i16 %pool_index to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %threshold_type)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %num_shared_bufs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 36
  %9 = ptrtoint ptr %num_shared_bufs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_shared_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp48.not.i = icmp eq i32 %10, 0
  br i1 %cmp48.not.i, label %entry.land.end.i_crit_edge, label %for.body.lr.ph.i

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %shared_bufs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  %11 = ptrtoint ptr %shared_bufs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared_bufs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfp_shared_buf, ptr %12, i32 %i.049.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp1.i = icmp eq i32 %14, %3
  br i1 %cmp1.i, label %nfp_shared_buf_pool_unit.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %.b46.i = load i1, ptr @nfp_shared_buf_pool_unit.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.cleanup_crit_edge, label %if.then8.i, !prof !19

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nfp_shared_buf_pool_unit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 22, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

nfp_shared_buf_pool_unit.exit:                    ; preds = %for.body.i
  %pool_size_unit.i = getelementptr %struct.nfp_shared_buf, ptr %12, i32 %i.049.i, i32 6
  %15 = ptrtoint ptr %pool_size_unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pool_size_unit.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge, label %lor.lhs.false

nfp_shared_buf_pool_unit.exit.cleanup_crit_edge:  ; preds = %nfp_shared_buf_pool_unit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %nfp_shared_buf_pool_unit.exit
  %.frozen = freeze i32 %17
  %div = udiv i32 %size, %.frozen
  %18 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %size, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool3.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %div)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %call5 = call i32 @nfp_mbox_cmd(ptr noundef %pf, i32 noundef 2, ptr noundef nonnull %set_data, i64 noundef 16, ptr noundef null, i64 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge, %if.then8.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %nfp_shared_buf_pool_unit.exit.cleanup_crit_edge ], [ -22, %if.then8.i ], [ -22, %land.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %set_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_shared_buf_register(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %sb_desc_area = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_desc_area) #5
  %0 = ptrtoint ptr %sb_desc_area to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sb_desc_area, align 4, !annotation !18
  %mbox = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 12
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbox, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %pf, ptr noundef nonnull @.str, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.end.cleanup27_crit_edge, label %if.end3

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end3:                                          ; preds = %if.end
  %mul = mul i32 %call1, 20
  %call4 = call ptr @nfp_pf_map_rtsym(ptr noundef %pf, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %mul, ptr noundef nonnull %sb_desc_area) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup27

if.end8:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %sb_desc_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb_desc_area, align 4
  %call9 = call i32 @nfp_cpp_area_size(ptr noundef %5) #5
  %div = udiv i32 %call9, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 214748364, i32 %call1)
  %6 = icmp ugt i32 %call1, 214748364
  br i1 %6, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !20

kmalloc_array.exit.thread:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %shared_bufs66 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  %7 = ptrtoint ptr %shared_bufs66 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %shared_bufs66, align 4
  br label %err_release_area

if.end7.i:                                        ; preds = %if.end8
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #8
  %shared_bufs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  %8 = ptrtoint ptr %shared_bufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %shared_bufs, align 4
  %tobool12.not = icmp eq ptr %call8.i, null
  br i1 %tobool12.not, label %if.end7.i.err_release_area_crit_edge, label %if.end7.i.for.body_crit_edge

if.end7.i.for.body_crit_edge:                     ; preds = %if.end7.i
  br label %for.body

if.end7.i.err_release_area_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release_area

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.i.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.i.for.body_crit_edge ]
  %9 = ptrtoint ptr %shared_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared_bufs, align 4
  %arrayidx = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070
  %mul17 = mul i32 %i.070, %div
  %add.ptr = getelementptr i8, ptr %call4, i32 %mul17
  call void @mmiocpy(ptr noundef %arrayidx, ptr noundef %add.ptr, i32 noundef 20) #5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %size = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %ingress_pools_count = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070, i32 2
  %17 = ptrtoint ptr %ingress_pools_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ingress_pools_count, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %egress_pools_count = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070, i32 3
  %20 = ptrtoint ptr %egress_pools_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %egress_pools_count, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %ingress_tc_count = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070, i32 4
  %23 = ptrtoint ptr %ingress_tc_count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ingress_tc_count, align 4
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %egress_tc_count = getelementptr %struct.nfp_shared_buf, ptr %10, i32 %i.070, i32 5
  %26 = ptrtoint ptr %egress_tc_count to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %egress_tc_count, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %call18 = call i32 @devlink_sb_register(ptr noundef %call, i32 noundef %13, i32 noundef %16, i16 noundef zeroext %19, i16 noundef zeroext %22, i16 noundef zeroext %25, i16 noundef zeroext %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.070)
  %tobool22.not71 = icmp eq i32 %i.070, 0
  br i1 %tobool22.not71, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %num_shared_bufs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 36
  %29 = ptrtoint ptr %num_shared_bufs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call1, ptr %num_shared_bufs, align 4
  %30 = ptrtoint ptr %sb_desc_area to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sb_desc_area, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %31) #5
  br label %cleanup27

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.172 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.070, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.172, -1
  %32 = ptrtoint ptr %shared_bufs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shared_bufs, align 4
  %arrayidx24 = getelementptr %struct.nfp_shared_buf, ptr %33, i32 %dec
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void @devlink_sb_unregister(ptr noundef %call, i32 noundef %36) #5
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %37 = ptrtoint ptr %shared_bufs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shared_bufs, align 4
  call void @kfree(ptr noundef %38) #5
  br label %err_release_area

err_release_area:                                 ; preds = %while.end, %if.end7.i.err_release_area_crit_edge, %kmalloc_array.exit.thread
  %err.0 = phi i32 [ %call18, %while.end ], [ -12, %if.end7.i.err_release_area_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  %39 = ptrtoint ptr %sb_desc_area to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sb_desc_area, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %40) #5
  br label %cleanup27

cleanup27:                                        ; preds = %err_release_area, %for.end, %if.then6, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %err.0, %err_release_area ], [ 0, %for.end ], [ 0, %entry.cleanup27_crit_edge ], [ %call1, %if.end.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_desc_area) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_pf_rtsym_read_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_pf_map_rtsym(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_area_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_sb_register(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_area_release_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_sb_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_shared_buf_unregister(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #5
  %num_shared_bufs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 36
  %0 = ptrtoint ptr %num_shared_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_shared_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shared_bufs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %shared_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_bufs, align 4
  %arrayidx = getelementptr %struct.nfp_shared_buf, ptr %3, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void @devlink_sb_unregister(ptr noundef %call, i32 noundef %6) #5
  %inc = add nuw i32 %i.08, 1
  %7 = ptrtoint ptr %num_shared_bufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_shared_bufs, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %shared_bufs1 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 35
  %9 = ptrtoint ptr %shared_bufs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared_bufs1, align 4
  tail call void @kfree(ptr noundef %10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c", i32 89, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c", i32 94, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c", i32 94, i32 43}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_shared_buf.c", i32 22, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
