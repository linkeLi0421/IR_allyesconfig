; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.dpmac_attr = type { i16, i32, i32, i32 }
%struct.dpmac_rsp_get_attributes = type { i8, i8, i16, i32 }
%struct.dpmac_link_state = type { i32, i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpmac_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %dpmac_id, ptr nocapture noundef writeonly %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.7.0.insert.shift.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511677312
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %dpmac_id)
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %token1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %token1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %token1.i, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9) #4
  %11 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %token, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc_send_command(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpmac_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #4
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628160
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpmac_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #4
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644416
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 8
  %conv = zext i8 %8 to i32
  %eth_if2 = getelementptr inbounds %struct.dpmac_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %eth_if2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %eth_if2, align 4
  %link_type = getelementptr inbounds %struct.dpmac_rsp_get_attributes, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %link_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_type, align 1
  %conv3 = zext i8 %11 to i32
  %link_type4 = getelementptr inbounds %struct.dpmac_attr, ptr %attr, i32 0, i32 3
  %12 = ptrtoint ptr %link_type4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %link_type4, align 4
  %id = getelementptr inbounds %struct.dpmac_rsp_get_attributes, ptr %params, i32 0, i32 2
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %attr, align 4
  %max_rate = getelementptr inbounds %struct.dpmac_rsp_get_attributes, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_rate, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %max_rate6 = getelementptr inbounds %struct.dpmac_attr, ptr %attr, i32 0, i32 1
  %20 = ptrtoint ptr %max_rate6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_rate6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpmac_set_link_state(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %link_state) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #4
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640588
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %options = getelementptr inbounds %struct.dpmac_link_state, ptr %link_state, i32 0, i32 1
  %7 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %options, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %params, align 8
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_state, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %rate2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %rate2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rate2, align 8
  %up = getelementptr inbounds %struct.dpmac_link_state, ptr %link_state, i32 0, i32 2
  %15 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %up, align 8
  %state = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %state_valid = getelementptr inbounds %struct.dpmac_link_state, ptr %link_state, i32 0, i32 3
  %19 = ptrtoint ptr %state_valid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state_valid, align 4
  %.tr = trunc i32 %20 to i8
  %21 = shl i8 %.tr, 1
  %22 = and i8 %21, 2
  %conv9 = or i8 %22, %18
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9, ptr %state, align 8
  %supported = getelementptr inbounds %struct.dpmac_link_state, ptr %link_state, i32 0, i32 4
  %24 = ptrtoint ptr %supported to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %supported, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %supported10 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %supported10 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %supported10, align 8
  %advertising = getelementptr inbounds %struct.dpmac_link_state, ptr %link_state, i32 0, i32 5
  %28 = ptrtoint ptr %advertising to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %advertising, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %advertising11 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %advertising11 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %advertising11, align 8
  %call12 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpmac_get_counter(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %id, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #4
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644428
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %id to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %counter = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %counter to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %counter, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9)
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
