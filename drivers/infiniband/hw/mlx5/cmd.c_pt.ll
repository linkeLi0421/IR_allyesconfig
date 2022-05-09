; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/cmd.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_dump_fill_mkey(ptr noundef %dev, ptr nocapture noundef writeonly %mkey) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [8 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33751040, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr10 = getelementptr inbounds i32, ptr %out, i32 2
  %4 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr10, align 4
  %6 = ptrtoint ptr %mkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mkey, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_null_mkey(ptr noundef %dev, ptr nocapture noundef writeonly %null_mkey) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [8 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33751040, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr10 = getelementptr inbounds i32, ptr %out, i32 4
  %4 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr10, align 4
  %6 = ptrtoint ptr %null_mkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %null_mkey, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_query_cong_params(ptr noundef %dev, i32 noundef %cong_point, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 136577024, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %cong_point, 15
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef 272) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_destroy_tir(ptr noundef %dev, i32 noundef %tirn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %tirn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 151126016
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_destroy_tis(ptr noundef %dev, i32 noundef %tisn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %tisn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 152305664
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_destroy_rqt(ptr noundef %dev, i32 noundef %rqtn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %rqtn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 152567808
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_alloc_transport_domain(ptr noundef %dev, ptr nocapture noundef writeonly %tdn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #4
  %2 = call ptr @memset(ptr %out, i32 0, i32 16)
  %conv = zext i16 %uid to i32
  %or17 = or i32 %conv, 135659520
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr25 = getelementptr inbounds i32, ptr %out, i32 2
  %4 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %5, 16777215
  %6 = ptrtoint ptr %tdn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and26, ptr %tdn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_dealloc_transport_domain(ptr noundef %dev, i32 noundef %tdn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %conv = zext i16 %uid to i32
  %or17 = or i32 %conv, 135725056
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %tdn, 16777215
  %3 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_dealloc_pd(ptr noundef %dev, i32 noundef %pdn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %pdn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 134283264
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_attach_mcg(ptr noundef %dev, ptr nocapture noundef readonly %mgid, i32 noundef %qpn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %qpn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 134610944
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 16
  %4 = call ptr @memcpy(ptr %add.ptr38, ptr %mgid, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_detach_mcg(ptr noundef %dev, ptr nocapture noundef readonly %mgid, i32 noundef %qpn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %qpn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 134676480
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 16
  %4 = call ptr @memcpy(ptr %add.ptr38, ptr %mgid, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_xrcd_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %xrcdn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %conv = zext i16 %uid to i32
  %or17 = or i32 %conv, 135135232
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr25 = getelementptr inbounds i32, ptr %out, i32 2
  %4 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %5, 16777215
  %6 = ptrtoint ptr %xrcdn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and26, ptr %xrcdn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_xrcd_dealloc(ptr noundef %dev, i32 noundef %xrcdn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %xrcdn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 135200768
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_mad_ifc(ptr noundef %dev, ptr nocapture noundef readonly %inb, ptr nocapture noundef writeonly %outb, i16 noundef zeroext %opmod, i8 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 272) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i55, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out41_crit_edge, label %do.body

entry.out41_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out41

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %3, 65535
  %or = or i32 %and, 84738048
  store i32 %or, ptr %call7.i.i, align 8
  %conv = zext i16 %opmod to i32
  %add.ptr13 = getelementptr i32, ptr %call7.i.i, i32 1
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %5, -65536
  %or17 = or i32 %and14, %conv
  store i32 %or17, ptr %add.ptr13, align 4
  %conv23 = zext i8 %port to i32
  %add.ptr27 = getelementptr i32, ptr %call7.i.i, i32 2
  %6 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr27, align 8
  %and28 = and i32 %7, -256
  %or31 = or i32 %and28, %conv23
  store i32 %or31, ptr %add.ptr27, align 8
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 16
  %8 = call ptr @memcpy(ptr %add.ptr35, ptr %inb, i32 256)
  %call36 = tail call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 272, ptr noundef nonnull %call7.i.i55, i32 noundef 272) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.body.out41_crit_edge

do.body.out41_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out41

if.end39:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr40 = getelementptr i8, ptr %call7.i.i55, i32 16
  %9 = call ptr @memcpy(ptr %outb, ptr %add.ptr40, i32 256)
  br label %out41

out41:                                            ; preds = %if.end39, %do.body.out41_crit_edge, %entry.out41_crit_edge
  %err.0 = phi i32 [ %call36, %do.body.out41_crit_edge ], [ 0, %if.end39 ], [ -12, %entry.out41_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i55) #4
  tail call void @kfree(ptr noundef %call7.i.i) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_uar_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %uarn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %conv = zext i16 %uid to i32
  %or17 = or i32 %conv, 134348800
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr25 = getelementptr inbounds i32, ptr %out, i32 2
  %4 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %5, 16777215
  %6 = ptrtoint ptr %uarn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and26, ptr %uarn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_uar_dealloc(ptr noundef %dev, i32 noundef %uarn, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %uarn, 16777215
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %conv = zext i16 %uid to i32
  %or32 = or i32 %conv, 134414336
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

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
