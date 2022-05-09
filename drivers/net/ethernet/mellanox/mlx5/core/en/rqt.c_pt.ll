; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rqt.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rqt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_rqt = type { ptr, i32, i16 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rqt.c\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rqt.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 154, i32 6 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @mlx5e_rss_params_indir_init_uniform(ptr nocapture noundef writeonly %indir, i32 noundef %num_channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rem = urem i32 %i.04, %num_channels
  %arrayidx = getelementptr [256 x i32], ptr %indir, i32 0, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rem, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rqt_init_direct(ptr noundef %rqt, ptr noundef %mdev, i1 noundef zeroext %indir_enabled, i32 noundef %init_rqn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %indir_enabled, i16 256, i16 1
  %0 = ptrtoint ptr %rqt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %rqt, align 4
  %size.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 2
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %size.i, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 276, i32 noundef 3520, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.mlx5e_rqt_init.exit_crit_edge, label %if.end.i

entry.mlx5e_rqt_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_rqt_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size.i, align 4
  %conv3.i = zext i16 %3 to i32
  %add.ptr5.i = getelementptr i8, ptr %call.i.i.i, i32 52
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr5.i, align 4
  %and.i = and i32 %5, -65536
  %or.i = or i32 %and.i, %conv3.i
  store i32 %or.i, ptr %add.ptr5.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %6 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr16.i, align 4
  %and17.i = and i32 %7, -65536
  %or20.i = or i32 %and17.i, 1
  store i32 %or20.i, ptr %add.ptr16.i, align 4
  %uglygep.i = getelementptr i8, ptr %call.i.i.i, i32 272
  %8 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %init_rqn, ptr %uglygep.i, align 4
  %9 = ptrtoint ptr %rqt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rqt, align 4
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 1
  %call45.i = tail call i32 @mlx5_core_create_rqt(ptr noundef %10, ptr noundef nonnull %call.i.i.i, i32 noundef 276, ptr noundef %rqtn.i) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  br label %mlx5e_rqt_init.exit

mlx5e_rqt_init.exit:                              ; preds = %if.end.i, %entry.mlx5e_rqt_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call45.i, %if.end.i ], [ -12, %entry.mlx5e_rqt_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rqt_init_indir(ptr noundef %rqt, ptr noundef %mdev, ptr nocapture noundef readonly %rqns, i32 noundef %num_rqns, i8 noundef zeroext %hfunc, ptr nocapture noundef readonly %indir) local_unnamed_addr #2 align 64 {
entry:
  %a.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3264, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %cmp1.i = icmp eq i8 %hfunc, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %if.end
  %i.038.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end27.i.for.body.i_crit_edge ]
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a.addr.i.i)
  %0 = ptrtoint ptr %a.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i.038.i, ptr %a.addr.i.i, align 4
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0..i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %1 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0..i.i, 7
  %2 = and i32 %1, 1
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.3.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %3 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.3.i.i, 5
  %shl.1.i.i = and i32 %3, 2
  %or.1.i.i = or i32 %shl.1.i.i, %2
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.4.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %4 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.4.i.i, 3
  %shl.2.i.i = and i32 %4, 4
  %or.2.i.i = or i32 %or.1.i.i, %shl.2.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.5.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %5 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.5.i.i, 1
  %shl.3.i.i = and i32 %5, 8
  %or.3.i.i = or i32 %or.2.i.i, %shl.3.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.6.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %6 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.6.i.i, 1
  %shl.4.i.i = and i32 %6, 16
  %or.4.i.i = or i32 %or.3.i.i, %shl.4.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.7.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %7 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.7.i.i, 3
  %shl.5.i.i = and i32 %7, 32
  %or.5.i.i = or i32 %or.4.i.i, %shl.5.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.8.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %8 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.8.i.i, 5
  %shl.6.i.i = and i32 %8, 64
  %or.6.i.i = or i32 %or.5.i.i, %shl.6.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.9.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %9 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.9.i.i, 7
  %shl.7.i.i = and i32 %9, 128
  %or.7.i.i = or i32 %or.6.i.i, %shl.7.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a.addr.i.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %ix.0.i = phi i32 [ %or.7.i.i, %if.then.i ], [ %i.038.i, %for.body.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x i32], ptr %indir, i32 0, i32 %ix.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %num_rqns)
  %cmp3.not.i = icmp ult i32 %11, %num_rqns
  br i1 %cmp3.not.i, label %if.end27.i, label %mlx5e_calc_indir_rqns.exit, !prof !11

if.end27.i:                                       ; preds = %if.end.i
  %arrayidx28.i = getelementptr i32, ptr %rqns, i32 %11
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %call.i.i, i32 %i.038.i
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx29.i, align 4
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end4, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mlx5e_calc_indir_rqns.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end4:                                          ; preds = %if.end27.i
  %15 = ptrtoint ptr %rqt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mdev, ptr %rqt, align 4
  %size.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 2
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %size.i, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1296, i32 noundef 3520, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.out_crit_edge, label %if.end.i11

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i11:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %size.i, align 4
  %conv3.i = zext i16 %18 to i32
  %add.ptr5.i = getelementptr i8, ptr %call.i.i.i, i32 52
  %19 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr5.i, align 4
  %and.i = and i32 %20, -65536
  %or.i = or i32 %and.i, %conv3.i
  store i32 %or.i, ptr %add.ptr5.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %21 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr16.i, align 4
  %and17.i = and i32 %22, -65536
  %or20.i = or i32 %and17.i, 256
  store i32 %or20.i, ptr %add.ptr16.i, align 4
  %uglygep.i = getelementptr i8, ptr %call.i.i.i, i32 272
  %23 = call ptr @memcpy(ptr %uglygep.i, ptr %call.i.i, i32 1024)
  %24 = ptrtoint ptr %rqt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rqt, align 4
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 1
  %call45.i = tail call i32 @mlx5_core_create_rqt(ptr noundef %25, ptr noundef nonnull %call.i.i.i, i32 noundef 1296, ptr noundef %rqtn.i) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  br label %out

out:                                              ; preds = %if.end.i11, %if.end4.out_crit_edge, %mlx5e_calc_indir_rqns.exit
  %err.0 = phi i32 [ -22, %mlx5e_calc_indir_rqns.exit ], [ %call45.i, %if.end.i11 ], [ -12, %if.end4.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rqt_destroy(ptr nocapture noundef readonly %rqt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqt, align 4
  %rqtn = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 1
  %2 = ptrtoint ptr %rqtn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqtn, align 4
  tail call void @mlx5_core_destroy_rqt(ptr noundef %1, i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_destroy_rqt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rqt_redirect_direct(ptr nocapture noundef readonly %rqt, i32 noundef %rqn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 276, i32 noundef 3520, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.mlx5e_rqt_redirect.exit_crit_edge, label %if.end.i

entry.mlx5e_rqt_redirect.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_rqt_redirect.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr i32, ptr %call.i.i.i, i32 5
  %0 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr2.i, align 4
  %or.i = or i32 %1, 1
  store i32 %or.i, ptr %add.ptr2.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %2 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %3, -65536
  %or16.i = or i32 %and13.i, 1
  store i32 %or16.i, ptr %add.ptr12.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i, i32 272
  %4 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rqn, ptr %add.ptr25.i, align 4
  %5 = ptrtoint ptr %rqt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rqt, align 4
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 1
  %7 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rqtn.i, align 4
  %call38.i = tail call i32 @mlx5_core_modify_rqt(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %call.i.i.i, i32 noundef 276) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  br label %mlx5e_rqt_redirect.exit

mlx5e_rqt_redirect.exit:                          ; preds = %if.end.i, %entry.mlx5e_rqt_redirect.exit_crit_edge
  %retval.0.i = phi i32 [ %call38.i, %if.end.i ], [ -12, %entry.mlx5e_rqt_redirect.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rqt_redirect_indir(ptr nocapture noundef readonly %rqt, ptr nocapture noundef readonly %rqns, i32 noundef %num_rqns, i8 noundef zeroext %hfunc, ptr nocapture noundef readonly %indir) local_unnamed_addr #2 align 64 {
entry:
  %a.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp.not = icmp eq i16 %1, 256
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3264, i32 noundef -1) #8
  %tobool23.not = icmp eq ptr %call.i.i, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %cmp1.i = icmp eq i8 %hfunc, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %if.end25
  %i.038.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %if.end27.i.for.body.i_crit_edge ]
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a.addr.i.i)
  %2 = ptrtoint ptr %a.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.038.i, ptr %a.addr.i.i, align 4
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0..i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %3 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0..i.i, 7
  %4 = and i32 %3, 1
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.3.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %5 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.3.i.i, 5
  %shl.1.i.i = and i32 %5, 2
  %or.1.i.i = or i32 %shl.1.i.i, %4
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.4.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %6 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.4.i.i, 3
  %shl.2.i.i = and i32 %6, 4
  %or.2.i.i = or i32 %or.1.i.i, %shl.2.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.5.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %7 = lshr i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.5.i.i, 1
  %shl.3.i.i = and i32 %7, 8
  %or.3.i.i = or i32 %or.2.i.i, %shl.3.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.6.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %8 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.6.i.i, 1
  %shl.4.i.i = and i32 %8, 16
  %or.4.i.i = or i32 %or.3.i.i, %shl.4.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.7.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %9 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.7.i.i, 3
  %shl.5.i.i = and i32 %9, 32
  %or.5.i.i = or i32 %or.4.i.i, %shl.5.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.8.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %10 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.8.i.i, 5
  %shl.6.i.i = and i32 %10, 64
  %or.6.i.i = or i32 %or.5.i.i, %shl.6.i.i
  %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.9.i.i = load volatile i32, ptr %a.addr.i.i, align 4
  %11 = shl i32 %a.addr.i.i.0.a.addr.i.i.0.a.addr.i.0.a.addr.i.0.a.addr.0.9.i.i, 7
  %shl.7.i.i = and i32 %11, 128
  %or.7.i.i = or i32 %or.6.i.i, %shl.7.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a.addr.i.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %ix.0.i = phi i32 [ %or.7.i.i, %if.then.i ], [ %i.038.i, %for.body.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x i32], ptr %indir, i32 0, i32 %ix.0.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %num_rqns)
  %cmp3.not.i = icmp ult i32 %13, %num_rqns
  br i1 %cmp3.not.i, label %if.end27.i, label %mlx5e_calc_indir_rqns.exit, !prof !11

if.end27.i:                                       ; preds = %if.end.i
  %arrayidx28.i = getelementptr i32, ptr %rqns, i32 %13
  %14 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %call.i.i, i32 %i.038.i
  %16 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx29.i, align 4
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end29, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mlx5e_calc_indir_rqns.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end29:                                         ; preds = %if.end27.i
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1296, i32 noundef 3520, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end29.out_crit_edge, label %if.end.i38

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i38:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr i32, ptr %call.i.i.i, i32 5
  %17 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr2.i, align 4
  %or.i = or i32 %18, 1
  store i32 %or.i, ptr %add.ptr2.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %19 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %20, -65536
  %or16.i = or i32 %and13.i, 256
  store i32 %or16.i, ptr %add.ptr12.i, align 4
  %uglygep = getelementptr i8, ptr %call.i.i.i, i32 272
  %21 = call ptr @memcpy(ptr %uglygep, ptr %call.i.i, i32 1024)
  %22 = ptrtoint ptr %rqt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rqt, align 4
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rqt, ptr %rqt, i32 0, i32 1
  %24 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rqtn.i, align 4
  %call38.i = tail call i32 @mlx5_core_modify_rqt(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %call.i.i.i, i32 noundef 1296) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  br label %out

out:                                              ; preds = %if.end.i38, %if.end29.out_crit_edge, %mlx5e_calc_indir_rqns.exit
  %err.0 = phi i32 [ -22, %mlx5e_calc_indir_rqns.exit ], [ %call38.i, %if.end.i38 ], [ -12, %if.end29.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %out ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_rqt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_rqt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rqt.c", i32 154, i32 6}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
