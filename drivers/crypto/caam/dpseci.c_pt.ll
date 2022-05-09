; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/dpseci.c_pt.bc'
source_filename = "../drivers/crypto/caam/dpseci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.dpseci_attr = type { i32, i8, i8, i32 }
%struct.dpseci_rsp_get_attributes = type { i32, i32, i8, i8, [6 x i8], i32 }
%struct.dpseci_rx_queue_cfg = type { i32, i32, i64, %struct.dpseci_dest_cfg }
%struct.dpseci_dest_cfg = type { i32, i32, i8 }
%struct.dpseci_cmd_queue = type { i32, i8, i8, i8, i8, i64, %union.anon.44, i8 }
%union.anon.44 = type { i32 }
%struct.dpseci_rx_queue_attr = type { i64, i32, %struct.dpseci_dest_cfg, i32 }
%struct.dpseci_rsp_get_tx_queue = type { i32, i32, i8 }
%struct.dpseci_tx_queue_attr = type { i32, i8 }
%struct.dpseci_rsp_get_sec_attr = type { i16, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dpseci_sec_attr = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dpseci_rsp_get_api_version = type { i16, i16 }
%struct.dpseci_congestion_notification_cfg = type { i32, i32, i32, i64, i64, %struct.dpseci_dest_cfg, i16 }
%struct.dpseci_cmd_congestion_notification = type { i32, i16, i8, i8, i64, i64, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %dpseci_id, ptr nocapture noundef writeonly %token) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511665024
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %dpseci_id)
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
define dso_local i32 @dpseci_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
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
define dso_local i32 @dpseci_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636224
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640320
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_reset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648512
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_is_enabled(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %en) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652608
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
  %9 = and i8 %8, 1
  %and = zext i8 %9 to i32
  %10 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 8
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attr, align 4
  %num_tx_queues = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_tx_queues, align 8
  %num_tx_queues3 = getelementptr inbounds %struct.dpseci_attr, ptr %attr, i32 0, i32 1
  %13 = ptrtoint ptr %num_tx_queues3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %num_tx_queues3, align 4
  %num_rx_queues = getelementptr inbounds %struct.dpseci_rsp_get_attributes, ptr %params, i32 0, i32 3
  %14 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_rx_queues, align 1
  %num_rx_queues4 = getelementptr inbounds %struct.dpseci_attr, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %num_rx_queues4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_rx_queues4, align 1
  %options = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options, align 8
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %options5 = getelementptr inbounds %struct.dpseci_attr, ptr %attr, i32 0, i32 3
  %20 = ptrtoint ptr %options5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %options5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_set_rx_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %queue, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644441
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %dest_cfg = getelementptr inbounds %struct.dpseci_rx_queue_cfg, ptr %cfg, i32 0, i32 3
  %dest_id = getelementptr inbounds %struct.dpseci_rx_queue_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %dest_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dest_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %priority = getelementptr inbounds %struct.dpseci_rx_queue_cfg, ptr %cfg, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priority, align 8
  %priority3 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %priority3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %priority3, align 4
  %queue4 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %queue4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %queue, ptr %queue4, align 1
  %15 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dest_cfg, align 8
  %dest_type6 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 3
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  %19 = ptrtoint ptr %dest_type6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %dest_type6, align 2
  %user_ctx = getelementptr inbounds %struct.dpseci_rx_queue_cfg, ptr %cfg, i32 0, i32 2
  %20 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %user_ctx, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %user_ctx8 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %user_ctx8 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %user_ctx8, align 8
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %27, align 8
  %order_preservation_en = getelementptr inbounds %struct.dpseci_rx_queue_cfg, ptr %cfg, i32 0, i32 1
  %29 = ptrtoint ptr %order_preservation_en to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %order_preservation_en, align 4
  %order_preservation_en11 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 7
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %order_preservation_en11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %order_preservation_en11, align 4
  %call15 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_rx_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %queue, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652633
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %queue1 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %queue1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %queue, ptr %queue1, align 1
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %dest_cfg = getelementptr inbounds %struct.dpseci_rx_queue_attr, ptr %attr, i32 0, i32 2
  %dest_id3 = getelementptr inbounds %struct.dpseci_rx_queue_attr, ptr %attr, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %dest_id3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dest_id3, align 4
  %priority = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priority, align 4
  %priority5 = getelementptr inbounds %struct.dpseci_rx_queue_attr, ptr %attr, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %priority5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %priority5, align 4
  %dest_type = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %dest_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dest_type, align 2
  %17 = and i8 %16, 15
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %dest_cfg, align 4
  %user_ctx = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %user_ctx, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20)
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %attr, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %fqid = getelementptr inbounds %struct.dpseci_rx_queue_attr, ptr %attr, i32 0, i32 3
  %27 = ptrtoint ptr %fqid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fqid, align 8
  %order_preservation_en = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 7
  %28 = ptrtoint ptr %order_preservation_en to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %order_preservation_en, align 4
  %30 = and i8 %29, 1
  %and10 = zext i8 %30 to i32
  %order_preservation_en12 = getelementptr inbounds %struct.dpseci_rx_queue_attr, ptr %attr, i32 0, i32 1
  %31 = ptrtoint ptr %order_preservation_en12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and10, ptr %order_preservation_en12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_tx_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %queue, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656729
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %queue1 = getelementptr inbounds %struct.dpseci_cmd_queue, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %queue1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %queue, ptr %queue1, align 1
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fqid = getelementptr inbounds %struct.dpseci_rsp_get_tx_queue, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %fqid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fqid, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %attr, align 4
  %priority = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priority, align 8
  %priority6 = getelementptr inbounds %struct.dpseci_tx_queue_attr, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %priority6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %priority6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_sec_attr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511661081
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
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %attr, align 2
  %major_rev = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %major_rev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %major_rev, align 2
  %major_rev3 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 1
  %13 = ptrtoint ptr %major_rev3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %major_rev3, align 2
  %minor_rev = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %minor_rev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %minor_rev, align 1
  %minor_rev4 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %minor_rev4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %minor_rev4, align 1
  %era = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %era to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %era, align 4
  %era5 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 3
  %19 = ptrtoint ptr %era5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %era5, align 2
  %deco_num = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %deco_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %deco_num, align 8
  %deco_num6 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 4
  %22 = ptrtoint ptr %deco_num6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %deco_num6, align 1
  %zuc_auth_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %zuc_auth_acc_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %zuc_auth_acc_num, align 1
  %zuc_auth_acc_num7 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 5
  %25 = ptrtoint ptr %zuc_auth_acc_num7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %zuc_auth_acc_num7, align 2
  %zuc_enc_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 7
  %26 = ptrtoint ptr %zuc_enc_acc_num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %zuc_enc_acc_num, align 2
  %zuc_enc_acc_num8 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 6
  %28 = ptrtoint ptr %zuc_enc_acc_num8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %zuc_enc_acc_num8, align 1
  %snow_f8_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 9
  %29 = ptrtoint ptr %snow_f8_acc_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %snow_f8_acc_num, align 4
  %snow_f8_acc_num9 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 7
  %31 = ptrtoint ptr %snow_f8_acc_num9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %snow_f8_acc_num9, align 2
  %snow_f9_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 10
  %32 = ptrtoint ptr %snow_f9_acc_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %snow_f9_acc_num, align 1
  %snow_f9_acc_num10 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 8
  %34 = ptrtoint ptr %snow_f9_acc_num10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %snow_f9_acc_num10, align 1
  %crc_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 11
  %35 = ptrtoint ptr %crc_acc_num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %crc_acc_num, align 2
  %crc_acc_num11 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 9
  %37 = ptrtoint ptr %crc_acc_num11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %crc_acc_num11, align 2
  %pk_acc_num = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %pk_acc_num to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pk_acc_num, align 8
  %pk_acc_num12 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 10
  %40 = ptrtoint ptr %pk_acc_num12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %pk_acc_num12, align 1
  %kasumi_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 14
  %41 = ptrtoint ptr %kasumi_acc_num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %kasumi_acc_num, align 1
  %kasumi_acc_num13 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 11
  %43 = ptrtoint ptr %kasumi_acc_num13 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %kasumi_acc_num13, align 2
  %rng_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 15
  %44 = ptrtoint ptr %rng_acc_num to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rng_acc_num, align 2
  %rng_acc_num14 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 12
  %46 = ptrtoint ptr %rng_acc_num14 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %rng_acc_num14, align 1
  %md_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 17
  %47 = ptrtoint ptr %md_acc_num to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %md_acc_num, align 4
  %md_acc_num15 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 13
  %49 = ptrtoint ptr %md_acc_num15 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %md_acc_num15, align 2
  %arc4_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 18
  %50 = ptrtoint ptr %arc4_acc_num to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arc4_acc_num, align 1
  %arc4_acc_num16 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 14
  %52 = ptrtoint ptr %arc4_acc_num16 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arc4_acc_num16, align 1
  %des_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 19
  %53 = ptrtoint ptr %des_acc_num to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %des_acc_num, align 2
  %des_acc_num17 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 15
  %55 = ptrtoint ptr %des_acc_num17 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %des_acc_num17, align 2
  %aes_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 20
  %56 = ptrtoint ptr %aes_acc_num to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %aes_acc_num, align 1
  %aes_acc_num18 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 16
  %58 = ptrtoint ptr %aes_acc_num18 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %aes_acc_num18, align 1
  %ccha_acc_num = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %ccha_acc_num to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ccha_acc_num, align 8
  %ccha_acc_num19 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 17
  %61 = ptrtoint ptr %ccha_acc_num19 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %ccha_acc_num19, align 2
  %ptha_acc_num = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, ptr %params, i32 0, i32 22
  %62 = ptrtoint ptr %ptha_acc_num to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ptha_acc_num, align 1
  %ptha_acc_num20 = getelementptr inbounds %struct.dpseci_sec_attr, ptr %attr, i32 0, i32 18
  %64 = ptrtoint ptr %ptha_acc_num20 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %ptha_acc_num20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_api_version(ptr noundef %mc_io, i32 noundef %cmd_flags, ptr nocapture noundef writeonly %major_ver, ptr nocapture noundef writeonly %minor_ver) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511665056
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
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
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %params, align 8
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %major_ver to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %major_ver, align 2
  %minor = getelementptr inbounds %struct.dpseci_rsp_get_api_version, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %minor, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %minor_ver, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_set_congestion_notification(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 40
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628055
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %dest_cfg = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5
  %dest_id = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %dest_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dest_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %notification_mode = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 6
  %11 = ptrtoint ptr %notification_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %notification_mode, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %notification_mode2 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %notification_mode2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %notification_mode2, align 4
  %priority = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority, align 8
  %priority4 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %priority4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %priority4, align 2
  %18 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dest_cfg, align 8
  %options = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 3
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 15
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg, align 8
  %.tr = trunc i32 %23 to i8
  %24 = shl i8 %.tr, 4
  %25 = and i8 %24, 48
  %conv12 = or i8 %25, %21
  %26 = ptrtoint ptr %options to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv12, ptr %options, align 1
  %message_iova = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 4
  %27 = ptrtoint ptr %message_iova to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %message_iova, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %message_iova13 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %message_iova13 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %message_iova13, align 8
  %message_ctx = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 3
  %31 = ptrtoint ptr %message_ctx to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %message_ctx, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %message_ctx14 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %message_ctx14 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %message_ctx14, align 8
  %threshold_entry = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 1
  %35 = ptrtoint ptr %threshold_entry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %threshold_entry, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %threshold_entry15 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %threshold_entry15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %threshold_entry15, align 8
  %threshold_exit = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 2
  %39 = ptrtoint ptr %threshold_exit to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %threshold_exit, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %threshold_exit16 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 7
  %42 = ptrtoint ptr %threshold_exit16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %threshold_exit16, align 4
  %call17 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpseci_get_congestion_notification(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632151
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
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 8
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %dest_cfg = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5
  %dest_id2 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %dest_id2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dest_id2, align 4
  %notification_mode = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %notification_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %notification_mode, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %notification_mode3 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 6
  %14 = ptrtoint ptr %notification_mode3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %notification_mode3, align 4
  %priority = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority, align 2
  %priority5 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %priority5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %priority5, align 8
  %options = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 3
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %options, align 1
  %20 = and i8 %19, 15
  %and = zext i8 %20 to i32
  %21 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %dest_cfg, align 8
  %22 = lshr i8 %19, 4
  %23 = and i8 %22, 3
  %shr10 = zext i8 %23 to i32
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr10, ptr %cfg, align 8
  %message_iova = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %message_iova to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %message_iova, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26)
  %message_iova11 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 4
  %28 = ptrtoint ptr %message_iova11 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %message_iova11, align 8
  %message_ctx = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %message_ctx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %message_ctx, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %message_ctx12 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 3
  %32 = ptrtoint ptr %message_ctx12 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %message_ctx12, align 8
  %threshold_entry = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %threshold_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %threshold_entry, align 8
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %threshold_entry13 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 1
  %36 = ptrtoint ptr %threshold_entry13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %threshold_entry13, align 4
  %threshold_exit = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, ptr %params, i32 0, i32 7
  %37 = ptrtoint ptr %threshold_exit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %threshold_exit, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %threshold_exit14 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, ptr %cfg, i32 0, i32 2
  %40 = ptrtoint ptr %threshold_exit14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %threshold_exit14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
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
