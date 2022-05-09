; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpsw.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpsw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.dpsw_cmd_set_irq_enable = type { i8, [3 x i8], i8 }
%struct.dpsw_cmd_set_irq_mask = type <{ i32, i8 }>
%struct.dpsw_cmd_get_irq_status = type <{ i32, i8 }>
%struct.dpsw_cmd_clear_irq_status = type <{ i32, i8 }>
%struct.dpsw_attr = type { i32, i64, i16, i8, i8, i16, i16, i16, i16, i16, i16, i8, i32, i32, i32 }
%struct.dpsw_rsp_get_attr = type { i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i8, i8, i8, i64 }
%struct.dpsw_link_cfg = type { i32, i64 }
%struct.dpsw_link_state = type { i32, i64, i8 }
%struct.dpsw_rsp_if_get_link_state = type { i32, i8, [3 x i8], i32, i32, i64 }
%struct.dpsw_tci_cfg = type { i8, i8, i16 }
%struct.dpsw_cmd_if_set_tci = type { i16, i16 }
%struct.dpsw_rsp_if_get_tci = type { i16, i16, i8, i8 }
%struct.dpsw_cmd_if_set_stp = type <{ i16, i16, i8 }>
%struct.dpsw_stp_cfg = type { i16, i32 }
%struct.dpsw_cmd_if_get_counter = type <{ i16, i8 }>
%struct.dpsw_rsp_if_get_attr = type <{ i8, i8, i8, i8, i16, i32, i32, i32 }>
%struct.dpsw_if_attr = type { i8, i32, i32, i32, i32, i32, i16 }
%struct.dpsw_cmd_if_set_max_frame_length = type { i16, i16 }
%struct.dpsw_vlan_add = type { i16, i16 }
%struct.dpsw_cmd_vlan_add_if = type { i16, i16, i16, i16, i64 }
%struct.dpsw_vlan_if_cfg = type { i16, i16, [64 x i16], i16 }
%struct.dpsw_cmd_vlan_manage_if = type { i16, i16, i32, i64 }
%struct.dpsw_cmd_vlan_remove = type { i16, i16 }
%struct.dpsw_fdb_cfg = type { i16, i16 }
%struct.dpsw_cmd_fdb_add = type { i32, i16, i16 }
%struct.dpsw_fdb_unicast_cfg = type { i32, [6 x i8], i16 }
%struct.dpsw_cmd_fdb_unicast_op = type <{ i16, [6 x i8], i16, i8 }>
%struct.dpsw_fdb_multicast_cfg = type { i32, [6 x i8], i16, [64 x i16] }
%struct.dpsw_cmd_fdb_multicast_op = type { i16, i16, i8, [3 x i8], [6 x i8], i16, i64 }
%struct.dpsw_rsp_ctrl_if_get_attr = type <{ i64, i32, i32, i32 }>
%struct.dpsw_ctrl_if_attr = type { i32, i32, i32 }
%struct.dpsw_cmd_ctrl_if_set_pools = type { i8, i8, i16, [8 x i32], [8 x i16] }
%struct.dpsw_ctrl_if_pools_cfg = type { i8, [8 x %struct.anon.44] }
%struct.anon.44 = type { i32, i16, i32 }
%struct.dpsw_ctrl_if_queue_cfg = type { i32, i64, %struct.dpsw_ctrl_if_dest_cfg }
%struct.dpsw_ctrl_if_dest_cfg = type { i32, i32, i8 }
%struct.dpsw_cmd_ctrl_if_set_queue = type <{ i32, i8, i8, i8, i8, i64, i32 }>
%struct.dpsw_rsp_get_api_version = type { i16, i16 }
%struct.dpsw_rsp_if_get_mac_addr = type { i16, [6 x i8] }
%struct.dpsw_egress_flood_cfg = type { i16, i32, i16, [64 x i16] }
%struct.dpsw_cmd_set_egress_flood = type { i16, i8, [5 x i8], i64 }
%struct.dpsw_cmd_if_set_learning_mode = type <{ i16, i8 }>
%struct.dpsw_cmd_acl_add = type { i16, i16 }
%struct.dpsw_cmd_acl_if = type { i16, i16, i32, i64 }
%struct.dpsw_acl_if_cfg = type { i16, [64 x i16] }
%struct.dpsw_acl_key = type { %struct.dpsw_acl_fields, %struct.dpsw_acl_fields }
%struct.dpsw_acl_fields = type { [6 x i8], [6 x i8], i16, i8, i16, i16, i8, i8, i32, i32, i16, i16 }
%struct.dpsw_prep_acl_entry = type <{ [6 x i8], i16, [6 x i8], i16, i32, i32, i16, i16, i16, i8, i8, [6 x i8], i16, [6 x i8], i16, i32, i32, i16, i16, i16, i8, i8, i8, i8 }>
%struct.dpsw_acl_entry_cfg = type { i64, %struct.dpsw_acl_result, i32 }
%struct.dpsw_acl_result = type { i32, i16 }
%struct.dpsw_cmd_acl_entry = type { i16, i16, i32, i8, [7 x i8], [4 x i64], i64 }
%struct.dpsw_reflection_cfg = type { i32, i16 }
%struct.dpsw_cmd_if_reflection = type <{ i16, i16, i8 }>

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %dpsw_id, ptr nocapture noundef writeonly %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636352
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %dpsw_id)
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %token1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %token1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %token1.i, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9) #5
  %11 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %token, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
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
define dso_local i32 @dpsw_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
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
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
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
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
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
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_reset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
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
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_set_irq_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i8 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636225
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = and i8 %en, 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %params, align 8
  %irq_index3 = getelementptr inbounds %struct.dpsw_cmd_set_irq_enable, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %irq_index3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %irq_index, ptr %irq_index3, align 4
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_set_irq_mask(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644417
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %params, align 8
  %irq_index2 = getelementptr inbounds %struct.dpsw_cmd_set_irq_mask, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %irq_index2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %irq_index, ptr %irq_index2, align 4
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_get_irq_status(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, ptr nocapture noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652609
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %irq_index2 = getelementptr inbounds %struct.dpsw_cmd_get_irq_status, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %irq_index2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %irq_index, ptr %irq_index2, align 4
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 8
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_clear_irq_status(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656705
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %status)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %params, align 8
  %irq_index2 = getelementptr inbounds %struct.dpsw_cmd_clear_irq_status, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %irq_index2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %irq_index, ptr %irq_index2, align 4
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644672
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %num_ifs2 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 8
  %10 = ptrtoint ptr %num_ifs2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %num_ifs2, align 2
  %max_fdbs = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %max_fdbs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_fdbs, align 2
  %max_fdbs3 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 4
  %13 = ptrtoint ptr %max_fdbs3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %max_fdbs3, align 1
  %num_fdbs = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %num_fdbs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_fdbs, align 1
  %num_fdbs4 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 11
  %16 = ptrtoint ptr %num_fdbs4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_fdbs4, align 8
  %max_vlans = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %max_vlans to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_vlans, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %max_vlans5 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 2
  %20 = ptrtoint ptr %max_vlans5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %max_vlans5, align 8
  %num_vlans = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 4
  %21 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_vlans, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %num_vlans6 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 10
  %24 = ptrtoint ptr %num_vlans6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %num_vlans6, align 2
  %max_fdb_entries = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %max_fdb_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_fdb_entries, align 8
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %max_fdb_entries7 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 5
  %28 = ptrtoint ptr %max_fdb_entries7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %max_fdb_entries7, align 4
  %fdb_aging_time = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 6
  %29 = ptrtoint ptr %fdb_aging_time to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fdb_aging_time, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %fdb_aging_time8 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 6
  %32 = ptrtoint ptr %fdb_aging_time8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %fdb_aging_time8, align 2
  %dpsw_id = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 7
  %33 = ptrtoint ptr %dpsw_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dpsw_id, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %attr, align 8
  %mem_size = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %mem_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mem_size, align 8
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %mem_size9 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 9
  %40 = ptrtoint ptr %mem_size9 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %mem_size9, align 4
  %max_fdb_mc_groups = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 9
  %41 = ptrtoint ptr %max_fdb_mc_groups to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_fdb_mc_groups, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %max_fdb_mc_groups10 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 7
  %44 = ptrtoint ptr %max_fdb_mc_groups10 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %max_fdb_mc_groups10, align 8
  %max_meters_per_if = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 10
  %45 = ptrtoint ptr %max_meters_per_if to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %max_meters_per_if, align 4
  %max_meters_per_if11 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 3
  %47 = ptrtoint ptr %max_meters_per_if11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %max_meters_per_if11, align 2
  %options = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %options, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %options12 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 1
  %51 = ptrtoint ptr %options12 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %options12, align 8
  %component_type = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 11
  %52 = ptrtoint ptr %component_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %component_type, align 1
  %54 = and i8 %53, 15
  %and = zext i8 %54 to i32
  %component_type13 = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 12
  %55 = ptrtoint ptr %component_type13 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and, ptr %component_type13, align 4
  %repl_cfg = getelementptr inbounds %struct.dpsw_rsp_get_attr, ptr %params, i32 0, i32 12
  %56 = ptrtoint ptr %repl_cfg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %repl_cfg, align 2
  %58 = and i8 %57, 15
  %and15 = zext i8 %58 to i32
  %flooding_cfg = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 13
  %59 = ptrtoint ptr %flooding_cfg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and15, ptr %flooding_cfg, align 8
  %60 = lshr i8 %57, 4
  %shr20 = zext i8 %60 to i32
  %broadcast_cfg = getelementptr inbounds %struct.dpsw_attr, ptr %attr, i32 0, i32 14
  %61 = ptrtoint ptr %broadcast_cfg to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr20, ptr %broadcast_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_set_link_cfg(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511677188
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %rate2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %rate2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rate2, align 8
  %options = getelementptr inbounds %struct.dpsw_link_cfg, ptr %cfg, i32 0, i32 1
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %options, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %options3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %options3 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %options3, align 8
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_get_link_state(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef writeonly %state) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652612
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rate = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 8
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %state, align 8
  %options = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %options, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %options6 = getelementptr inbounds %struct.dpsw_link_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %options6 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %options6, align 8
  %up = getelementptr inbounds %struct.dpsw_rsp_if_get_link_state, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %up, align 4
  %19 = and i8 %18, 1
  %up8 = getelementptr inbounds %struct.dpsw_link_state, ptr %state, i32 0, i32 2
  %20 = ptrtoint ptr %up8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %up8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_set_tci(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628035
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %vlan_id = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 2
  %11 = and i16 %10, 4095
  %dei = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %dei to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dei, align 1
  %conv4 = zext i8 %13 to i16
  %shl5 = shl i16 %conv4, 12
  %and6 = and i16 %shl5, 4096
  %or8 = or i16 %11, %and6
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cfg, align 2
  %conv10 = zext i8 %15 to i16
  %shl11 = shl i16 %conv10, 13
  %or14 = or i16 %or8, %shl11
  %16 = tail call i16 @llvm.bswap.i16(i16 %or14)
  %conf = getelementptr inbounds %struct.dpsw_cmd_if_set_tci, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %conf to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %conf, align 2
  %call16 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_get_tci(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511668996
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pcp = getelementptr inbounds %struct.dpsw_rsp_if_get_tci, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %pcp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcp, align 1
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %cfg, align 2
  %dei = getelementptr inbounds %struct.dpsw_rsp_if_get_tci, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %dei to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dei, align 4
  %dei6 = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %dei6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %dei6, align 1
  %vlan_id = getelementptr inbounds %struct.dpsw_rsp_if_get_tci, ptr %params, i32 0, i32 1
  %15 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_id, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %vlan_id7 = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %cfg, i32 0, i32 2
  %18 = ptrtoint ptr %vlan_id7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vlan_id7, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_set_stp(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632131
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %vlan_id2 = getelementptr inbounds %struct.dpsw_cmd_if_set_stp, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vlan_id2, align 2
  %state = getelementptr inbounds %struct.dpsw_stp_cfg, ptr %cfg, i32 0, i32 1
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %state3 = getelementptr inbounds %struct.dpsw_cmd_if_set_stp, ptr %params, i32 0, i32 2
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 15
  %17 = ptrtoint ptr %state3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %state3, align 4
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_get_counter(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, i32 noundef %type, ptr nocapture noundef writeonly %counter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644675
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %type2 = getelementptr inbounds %struct.dpsw_cmd_if_get_counter, ptr %params, i32 0, i32 1
  %9 = trunc i32 %type to i8
  %10 = and i8 %9, 31
  %11 = ptrtoint ptr %type2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %type2, align 2
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %counter7 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %counter7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %counter7, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %counter to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %counter, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511681283
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511685379
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636228
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_tcs = getelementptr inbounds %struct.dpsw_rsp_if_get_attr, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_tcs, align 2
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %attr, align 4
  %rate = getelementptr inbounds %struct.dpsw_rsp_if_get_attr, ptr %params, i32 0, i32 7
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rate, align 2
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %rate6 = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 1
  %15 = ptrtoint ptr %rate6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rate6, align 4
  %options = getelementptr inbounds %struct.dpsw_rsp_if_get_attr, ptr %params, i32 0, i32 5
  %16 = ptrtoint ptr %options to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %options, align 2
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %options7 = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 2
  %19 = ptrtoint ptr %options7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %options7, align 4
  %qdid = getelementptr inbounds %struct.dpsw_rsp_if_get_attr, ptr %params, i32 0, i32 4
  %20 = ptrtoint ptr %qdid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %qdid, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %qdid8 = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 6
  %23 = ptrtoint ptr %qdid8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %qdid8, align 4
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %params, align 8
  %26 = lshr i8 %25, 5
  %27 = and i8 %26, 1
  %shr = zext i8 %27 to i32
  %enabled = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 3
  %28 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %enabled, align 4
  %29 = lshr i8 %25, 6
  %30 = and i8 %29, 1
  %shr12 = zext i8 %30 to i32
  %accept_all_vlan = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 4
  %31 = ptrtoint ptr %accept_all_vlan to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr12, ptr %accept_all_vlan, align 4
  %32 = and i8 %25, 15
  %and15 = zext i8 %32 to i32
  %admit_untagged = getelementptr inbounds %struct.dpsw_if_attr, ptr %attr, i32 0, i32 5
  %33 = ptrtoint ptr %admit_untagged to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and15, ptr %admit_untagged, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_set_max_frame_length(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, i16 noundef zeroext %frame_length) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644420
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %frame_length)
  %frame_length2 = getelementptr inbounds %struct.dpsw_cmd_if_set_max_frame_length, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %frame_length2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %frame_length2, align 2
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_add(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628038
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id2 = getelementptr inbounds %struct.dpsw_vlan_add, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vlan_id2, align 2
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_add_if(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632390
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpsw_cmd_vlan_add_if, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 2
  %options = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %options, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %params, align 8
  %fdb_id = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 3
  %13 = ptrtoint ptr %fdb_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fdb_id, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %fdb_id3 = getelementptr inbounds %struct.dpsw_cmd_vlan_add_if, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %fdb_id3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fdb_id3, align 4
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id4 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 2
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp21.not.i = icmp eq i16 %18, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %18 to i32
  %19 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %19, i32 63) #5
  %20 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %20)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i14 = phi i64 [ %or.i13, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id4, i32 %i.022.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %22)
  %cmp5.i = icmp ult i16 %22, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i16 %22, 31
  %rem9.i = zext i16 %23 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %24 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i14, %24
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i13 = phi i64 [ %or.i, %if.then.i ], [ %or.i14, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or.i13, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_add_if_untagged(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636230
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpsw_cmd_vlan_manage_if, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id2 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %11 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %11, i32 63) #5
  %12 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %12)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i8 = phi i64 [ %or.i7, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id2, i32 %i.022.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %14)
  %cmp5.i = icmp ult i16 %14, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i16 %14, 31
  %rem9.i = zext i16 %15 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i8, %16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i7 = phi i64 [ %or.i, %if.then.i ], [ %or.i8, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i7, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_remove_if(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644422
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpsw_cmd_vlan_manage_if, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id2 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %11 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %11, i32 63) #5
  %12 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %12)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i8 = phi i64 [ %or.i7, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id2, i32 %i.022.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %14)
  %cmp5.i = icmp ult i16 %14, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i16 %14, 31
  %rem9.i = zext i16 %15 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i8, %16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i7 = phi i64 [ %or.i, %if.then.i ], [ %or.i8, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i7, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_remove_if_untagged(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648518
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpsw_cmd_vlan_manage_if, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id2 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %11 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %11, i32 63) #5
  %12 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %12)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i8 = phi i64 [ %or.i7, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id2, i32 %i.022.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %14)
  %cmp5.i = icmp ult i16 %14, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i16 %14, 31
  %rem9.i = zext i16 %15 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i8, %16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i7 = phi i64 [ %or.i, %if.then.i ], [ %or.i8, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i7, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_vlan_remove(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656710
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpsw_cmd_vlan_remove, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 2
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_add(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %fdb_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636232
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %fdb_ageing_time = getelementptr inbounds %struct.dpsw_fdb_cfg, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %fdb_ageing_time to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fdb_ageing_time, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %fdb_ageing_time1 = getelementptr inbounds %struct.dpsw_cmd_fdb_add, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %fdb_ageing_time1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %fdb_ageing_time1, align 4
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cfg, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %num_fdb_entries2 = getelementptr inbounds %struct.dpsw_cmd_fdb_add, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %num_fdb_entries2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %num_fdb_entries2, align 2
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %params, align 8
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %fdb_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %fdb_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_remove(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640328
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_add_unicast(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644424
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %if_egress = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %if_egress to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %if_egress, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %if_egress2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %if_egress2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %if_egress2, align 8
  %arrayidx = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx4, align 2
  %arrayidx.1 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  %arrayidx4.1 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx4.1, align 1
  %arrayidx.2 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2, align 1
  %arrayidx4.2 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx4.2, align 4
  %arrayidx.3 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %arrayidx4.3 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx4.3, align 1
  %arrayidx.4 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  %arrayidx4.4 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx4.4, align 2
  %arrayidx.5 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5, align 1
  %arrayidx4.5 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx4.5, align 1
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg, align 4
  %type5 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 3
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 15
  %35 = ptrtoint ptr %type5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type5, align 2
  %call7 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_dump(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id, i64 noundef %iova_addr, i32 noundef %iova_size, ptr nocapture noundef writeonly %num_entries) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511669000
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %iova_addr)
  %iova_addr2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %iova_addr2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %iova_addr2, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %iova_size)
  %iova_size3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %iova_size3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %iova_size3, align 8
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %params, align 8
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %num_entries to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %num_entries, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_remove_unicast(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648520
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %arrayidx = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx3, align 2
  %arrayidx.1 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 1
  %arrayidx3.2 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx3.2, align 4
  %arrayidx.3 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4, align 1
  %arrayidx3.4 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx3.4, align 2
  %arrayidx.5 = getelementptr %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %arrayidx3.5 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx3.5, align 1
  %if_egress = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %cfg, i32 0, i32 2
  %27 = ptrtoint ptr %if_egress to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %if_egress, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %if_egress4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %if_egress4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %if_egress4, align 8
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg, align 4
  %type5 = getelementptr inbounds %struct.dpsw_cmd_fdb_unicast_op, ptr %params, i32 0, i32 3
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 15
  %35 = ptrtoint ptr %type5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type5, align 2
  %call7 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_add_multicast(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652616
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %num_ifs = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_ifs, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %num_ifs2 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %num_ifs2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %num_ifs2, align 2
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 4
  %type3 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, ptr %params, i32 0, i32 2
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 15
  %17 = ptrtoint ptr %type3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %type3, align 4
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %if_id5 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %18 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %18, i32 63) #5
  %19 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i24 = phi i64 [ %or.i23, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id5, i32 %i.022.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %21)
  %cmp5.i = icmp ult i16 %21, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i16 %21, 31
  %rem9.i = zext i16 %22 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %23 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i24, %23
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i23 = phi i64 [ %or.i, %if.then.i ], [ %or.i24, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i23, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %mac_addr9 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %arrayidx = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %mac_addr9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mac_addr9, align 8
  %arrayidx.1 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1, align 1
  %arrayidx10.1 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %arrayidx10.2 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx10.2, align 2
  %arrayidx.3 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3, align 1
  %arrayidx10.3 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx10.3, align 1
  %arrayidx.4 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.4, align 1
  %arrayidx10.4 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx10.4, align 4
  %arrayidx.5 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %arrayidx10.5 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx10.5, align 1
  %call11 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_fdb_remove_multicast(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %fdb_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656712
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %fdb_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %num_ifs = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_ifs, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %num_ifs2 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %num_ifs2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %num_ifs2, align 2
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 4
  %type3 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, ptr %params, i32 0, i32 2
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 15
  %17 = ptrtoint ptr %type3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %type3, align 4
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %if_id5 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %18 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %18, i32 63) #5
  %19 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i24 = phi i64 [ %or.i23, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id5, i32 %i.022.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %21)
  %cmp5.i = icmp ult i16 %21, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i16 %21, 31
  %rem9.i = zext i16 %22 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %23 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i24, %23
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i23 = phi i64 [ %or.i, %if.then.i ], [ %or.i24, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i23, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %mac_addr9 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %arrayidx = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %mac_addr9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mac_addr9, align 8
  %arrayidx.1 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1, align 1
  %arrayidx10.1 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %arrayidx10.2 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx10.2, align 2
  %arrayidx.3 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3, align 1
  %arrayidx10.3 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx10.3, align 1
  %arrayidx.4 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.4, align 1
  %arrayidx10.4 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx10.4, align 4
  %arrayidx.5 = getelementptr %struct.dpsw_fdb_multicast_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %arrayidx10.5 = getelementptr inbounds [6 x i8], ptr %mac_addr9, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx10.5, align 1
  %call11 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_ctrl_if_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628042
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %rx_fqid = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %rx_fqid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_fqid, align 8
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attr, align 4
  %rx_err_fqid = getelementptr inbounds %struct.dpsw_rsp_ctrl_if_get_attr, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %rx_err_fqid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_err_fqid, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %rx_err_fqid3 = getelementptr inbounds %struct.dpsw_ctrl_if_attr, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %rx_err_fqid3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_err_fqid3, align 4
  %tx_err_conf_fqid = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %tx_err_conf_fqid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_err_conf_fqid, align 8
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %tx_err_conf_fqid4 = getelementptr inbounds %struct.dpsw_ctrl_if_attr, ptr %attr, i32 0, i32 2
  %18 = ptrtoint ptr %tx_err_conf_fqid4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_err_conf_fqid4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_ctrl_if_set_pools(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632138
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cfg, align 4
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 8
  %backup_pool_mask = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 1
  %arrayidx = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx3 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx3, align 4
  %buffer_size = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %buffer_size, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %arrayidx7 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 0
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx7, align 4
  %backup_pool = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %backup_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %backup_pool, align 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %arrayidx.1 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx3.1 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx3.1, align 8
  %buffer_size.1 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %buffer_size.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %buffer_size.1, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %arrayidx7.1 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx7.1, align 2
  %backup_pool.1 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1, i32 2
  %30 = ptrtoint ptr %backup_pool.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %backup_pool.1, align 4
  %.tr = trunc i32 %31 to i8
  %32 = shl i8 %.tr, 1
  %33 = and i8 %32, 2
  %conv10.1 = or i8 %21, %33
  %arrayidx.2 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx3.2 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx3.2, align 4
  %buffer_size.2 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2, i32 1
  %38 = ptrtoint ptr %buffer_size.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %buffer_size.2, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %arrayidx7.2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx7.2, align 8
  %backup_pool.2 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2, i32 2
  %42 = ptrtoint ptr %backup_pool.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %backup_pool.2, align 4
  %.tr26 = trunc i32 %43 to i8
  %44 = shl i8 %.tr26, 2
  %45 = and i8 %44, 4
  %conv10.2 = or i8 %conv10.1, %45
  %arrayidx.3 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.3, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %arrayidx3.3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx3.3, align 8
  %buffer_size.3 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3, i32 1
  %50 = ptrtoint ptr %buffer_size.3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %buffer_size.3, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %arrayidx7.3 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx7.3, align 2
  %backup_pool.3 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3, i32 2
  %54 = ptrtoint ptr %backup_pool.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %backup_pool.3, align 4
  %.tr27 = trunc i32 %55 to i8
  %56 = shl i8 %.tr27, 3
  %57 = and i8 %56, 8
  %conv10.3 = or i8 %conv10.2, %57
  %arrayidx.4 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.4, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %arrayidx3.4 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx3.4, align 4
  %buffer_size.4 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4, i32 1
  %62 = ptrtoint ptr %buffer_size.4 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %buffer_size.4, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %arrayidx7.4 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx7.4, align 4
  %backup_pool.4 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4, i32 2
  %66 = ptrtoint ptr %backup_pool.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %backup_pool.4, align 4
  %.tr28 = trunc i32 %67 to i8
  %68 = shl i8 %.tr28, 4
  %69 = and i8 %68, 16
  %conv10.4 = or i8 %conv10.3, %69
  %arrayidx.5 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %70 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.5, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %arrayidx3.5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx3.5, align 8
  %buffer_size.5 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5, i32 1
  %74 = ptrtoint ptr %buffer_size.5 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %buffer_size.5, align 4
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %arrayidx7.5 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 5
  %77 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx7.5, align 2
  %backup_pool.5 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5, i32 2
  %78 = ptrtoint ptr %backup_pool.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %backup_pool.5, align 4
  %.tr29 = trunc i32 %79 to i8
  %80 = shl i8 %.tr29, 5
  %81 = and i8 %80, 32
  %conv10.5 = or i8 %conv10.4, %81
  %arrayidx.6 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6
  %82 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.6, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %arrayidx3.6 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 3, i32 6
  %85 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx3.6, align 4
  %buffer_size.6 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6, i32 1
  %86 = ptrtoint ptr %buffer_size.6 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %buffer_size.6, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %arrayidx7.6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %89 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx7.6, align 8
  %backup_pool.6 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6, i32 2
  %90 = ptrtoint ptr %backup_pool.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %backup_pool.6, align 4
  %.tr30 = trunc i32 %91 to i8
  %92 = shl i8 %.tr30, 6
  %93 = and i8 %92, 64
  %conv10.6 = or i8 %conv10.5, %93
  %arrayidx.7 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7
  %94 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.7, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %arrayidx3.7 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %97 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx3.7, align 8
  %buffer_size.7 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7, i32 1
  %98 = ptrtoint ptr %buffer_size.7 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %buffer_size.7, align 4
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %arrayidx7.7 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_pools, ptr %params, i32 0, i32 4, i32 7
  %101 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %arrayidx7.7, align 2
  %backup_pool.7 = getelementptr %struct.dpsw_ctrl_if_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7, i32 2
  %102 = ptrtoint ptr %backup_pool.7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %backup_pool.7, align 4
  %.tr31 = trunc i32 %103 to i8
  %104 = shl i8 %.tr31, 7
  %conv10.7 = or i8 %conv10.6, %104
  %105 = ptrtoint ptr %backup_pool_mask to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv10.7, ptr %backup_pool_mask, align 1
  %call11 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_ctrl_if_set_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652618
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %dest_cfg = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %cfg, i32 0, i32 2
  %dest_id = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %cfg, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %dest_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dest_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %priority = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %cfg, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priority, align 8
  %dest_priority = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_queue, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %dest_priority to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %dest_priority, align 4
  %conv = trunc i32 %qtype to i8
  %qtype3 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_queue, ptr %params, i32 0, i32 4
  %14 = ptrtoint ptr %qtype3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %qtype3, align 1
  %user_ctx = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %user_ctx, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %user_ctx4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %user_ctx4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %user_ctx4, align 8
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfg, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %options5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %options5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %options5, align 8
  %23 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dest_cfg, align 8
  %dest_type7 = getelementptr inbounds %struct.dpsw_cmd_ctrl_if_set_queue, ptr %params, i32 0, i32 3
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 15
  %27 = ptrtoint ptr %dest_type7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dest_type7, align 2
  %call10 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_get_api_version(ptr noundef %mc_io, i32 noundef %cmd_flags, ptr nocapture noundef writeonly %major_ver, ptr nocapture noundef writeonly %minor_ver) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636384
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %params, align 8
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %major_ver to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %major_ver, align 2
  %version_minor = getelementptr inbounds %struct.dpsw_rsp_get_api_version, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %version_minor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %version_minor, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %minor_ver, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_get_port_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656714
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 2
  %arrayidx6 = getelementptr i8, ptr %mac_addr, i32 5
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6, align 1
  %arrayidx.1 = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %arrayidx6.1 = getelementptr i8, ptr %mac_addr, i32 4
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx6.1, align 1
  %arrayidx.2 = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 4
  %arrayidx6.2 = getelementptr i8, ptr %mac_addr, i32 3
  %17 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx6.2, align 1
  %arrayidx.3 = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %arrayidx6.3 = getelementptr i8, ptr %mac_addr, i32 2
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx6.3, align 1
  %arrayidx.4 = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4, align 2
  %arrayidx6.4 = getelementptr i8, ptr %mac_addr, i32 1
  %23 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx6.4, align 1
  %arrayidx.5 = getelementptr inbounds %struct.dpsw_rsp_if_get_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %26 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %mac_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_ctrl_if_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636234
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_ctrl_if_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640330
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_set_egress_flood(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511677194
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %flood_type = getelementptr inbounds %struct.dpsw_egress_flood_cfg, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %flood_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flood_type, align 4
  %conv = trunc i32 %12 to i8
  %flood_type2 = getelementptr inbounds %struct.dpsw_cmd_set_egress_flood, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %flood_type2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %flood_type2, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id3 = getelementptr inbounds %struct.dpsw_egress_flood_cfg, ptr %cfg, i32 0, i32 3
  %num_ifs = getelementptr inbounds %struct.dpsw_egress_flood_cfg, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_ifs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp21.not.i = icmp eq i16 %15, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %15 to i32
  %16 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %16, i32 63) #5
  %17 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %17)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i12 = phi i64 [ %or.i11, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id3, i32 %i.022.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %19)
  %cmp5.i = icmp ult i16 %19, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = and i16 %19, 31
  %rem9.i = zext i16 %20 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i12, %21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i11 = phi i64 [ %or.i, %if.then.i ], [ %or.i12, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or.i11, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_set_learning_mode(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511681290
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %mode2 = getelementptr inbounds %struct.dpsw_cmd_if_set_learning_mode, ptr %params, i32 0, i32 1
  %9 = trunc i32 %mode to i8
  %10 = and i8 %9, 15
  %11 = ptrtoint ptr %mode2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %mode2, align 2
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_add(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %acl_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628041
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %max_entries1 = getelementptr inbounds %struct.dpsw_cmd_acl_add, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %max_entries1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_entries1, align 2
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %params, align 8
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %acl_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %acl_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_remove(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %acl_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632137
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %acl_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_add_if(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %acl_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644425
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %acl_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %num_ifs2 = getelementptr inbounds %struct.dpsw_cmd_acl_if, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %num_ifs2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %num_ifs2, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id3 = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %cfg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %13 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %13, i32 63) #5
  %14 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %14)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i12 = phi i64 [ %or.i11, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id3, i32 %i.022.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %16)
  %cmp5.i = icmp ult i16 %16, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = and i16 %16, 31
  %rem9.i = zext i16 %17 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i12, %18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i11 = phi i64 [ %or.i, %if.then.i ], [ %or.i12, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or.i11, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_remove_if(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %acl_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648521
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %acl_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cfg, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %num_ifs2 = getelementptr inbounds %struct.dpsw_cmd_acl_if, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %num_ifs2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %num_ifs2, align 2
  %if_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %if_id3 = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %cfg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.not.i = icmp eq i16 %10, 0
  br i1 %cmp21.not.i, label %entry.build_if_id_bitmap.exit_crit_edge, label %for.body.preheader.i

entry.build_if_id_bitmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_if_id_bitmap.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %10 to i32
  %13 = add nsw i32 %conv.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %13, i32 63) #5
  %14 = ptrtoint ptr %if_id to i32
  call void @__asan_load8_noabort(i32 %14)
  %if_id.promoted = load i64, ptr %if_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %or.i12 = phi i64 [ %or.i11, %for.inc.i.for.body.i_crit_edge ], [ %if_id.promoted, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %if_id3, i32 %i.022.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %16)
  %cmp5.i = icmp ult i16 %16, 64
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = and i16 %16, 31
  %rem9.i = zext i16 %17 to i32
  %shl.i = shl nuw i32 1, %rem9.i
  %conv10.i = zext i32 %shl.i to i64
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv10.i) #5
  %or.i = or i64 %or.i12, %18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %or.i11 = phi i64 [ %or.i, %if.then.i ], [ %or.i12, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %i.022.i, %umin.i
  br i1 %exitcond.not.i, label %build_if_id_bitmap.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

build_if_id_bitmap.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %if_id to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or.i11, ptr %if_id, align 8
  br label %build_if_id_bitmap.exit

build_if_id_bitmap.exit:                          ; preds = %build_if_id_bitmap.exit.loopexit, %entry.build_if_id_bitmap.exit_crit_edge
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpsw_acl_prepare_entry_cfg(ptr noundef readonly %key, ptr noundef writeonly %entry_cfg_buf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1
  %arrayidx = getelementptr [6 x i8], ptr %key, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %entry_cfg_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %entry_cfg_buf, align 1
  %arrayidx4 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 0
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9, align 1
  %arrayidx13 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 0
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx14, align 1
  %arrayidx.1 = getelementptr [6 x i8], ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr [6 x i8], ptr %entry_cfg_buf, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx1.1, align 1
  %arrayidx4.1 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.1, align 1
  %arrayidx5.1 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx5.1, align 1
  %arrayidx8.1 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.1, align 1
  %arrayidx9.1 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx9.1, align 1
  %arrayidx13.1 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13.1, align 1
  %arrayidx14.1 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx14.1, align 1
  %arrayidx.2 = getelementptr [6 x i8], ptr %key, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr [6 x i8], ptr %entry_cfg_buf, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx1.2, align 1
  %arrayidx4.2 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.2, align 1
  %arrayidx5.2 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx5.2, align 1
  %arrayidx8.2 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.2, align 1
  %arrayidx9.2 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx9.2, align 1
  %arrayidx13.2 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx13.2, align 1
  %arrayidx14.2 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 2
  %35 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx14.2, align 1
  %arrayidx.3 = getelementptr [6 x i8], ptr %key, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr [6 x i8], ptr %entry_cfg_buf, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx1.3, align 1
  %arrayidx4.3 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.3, align 1
  %arrayidx5.3 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx5.3, align 1
  %arrayidx8.3 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.3, align 1
  %arrayidx9.3 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 3
  %44 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx9.3, align 1
  %arrayidx13.3 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx13.3, align 1
  %arrayidx14.3 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 3
  %47 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx14.3, align 1
  %arrayidx.4 = getelementptr [6 x i8], ptr %key, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr [6 x i8], ptr %entry_cfg_buf, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx1.4, align 1
  %arrayidx4.4 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.4, align 1
  %arrayidx5.4 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx5.4, align 1
  %arrayidx8.4 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.4, align 1
  %arrayidx9.4 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 4
  %56 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx9.4, align 1
  %arrayidx13.4 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx13.4, align 1
  %arrayidx14.4 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 4
  %59 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx14.4, align 1
  %60 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %key, align 1
  %arrayidx1.5 = getelementptr [6 x i8], ptr %entry_cfg_buf, i32 0, i32 5
  %62 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx1.5, align 1
  %arrayidx4.5 = getelementptr %struct.dpsw_acl_fields, ptr %key, i32 0, i32 1, i32 0
  %63 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx4.5, align 1
  %arrayidx5.5 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 2, i32 5
  %65 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx5.5, align 1
  %66 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mask, align 1
  %arrayidx9.5 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 11, i32 5
  %68 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx9.5, align 1
  %arrayidx13.5 = getelementptr %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 1, i32 0
  %69 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx13.5, align 1
  %arrayidx14.5 = getelementptr %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 13, i32 5
  %71 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx14.5, align 1
  %l2_tpid = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 2
  %72 = ptrtoint ptr %l2_tpid to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %l2_tpid, align 4
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %match_l2_tpid = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 1
  %75 = ptrtoint ptr %match_l2_tpid to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %match_l2_tpid, align 1
  %l2_vlan_id = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 4
  %76 = ptrtoint ptr %l2_vlan_id to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %l2_vlan_id, align 4
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %match_l2_vlan_id = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 3
  %79 = ptrtoint ptr %match_l2_vlan_id to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %match_l2_vlan_id, align 1
  %l3_dest_ip = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 9
  %80 = ptrtoint ptr %l3_dest_ip to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %l3_dest_ip, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %match_l3_dest_ip = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 4
  %83 = ptrtoint ptr %match_l3_dest_ip to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %match_l3_dest_ip, align 1
  %l3_source_ip = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 8
  %84 = ptrtoint ptr %l3_source_ip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %l3_source_ip, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %match_l3_source_ip = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 5
  %87 = ptrtoint ptr %match_l3_source_ip to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %match_l3_source_ip, align 1
  %l4_dest_port = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 11
  %88 = ptrtoint ptr %l4_dest_port to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %l4_dest_port, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %match_l4_dest_port = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 6
  %91 = ptrtoint ptr %match_l4_dest_port to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %match_l4_dest_port, align 1
  %l4_source_port = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 10
  %92 = ptrtoint ptr %l4_source_port to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %l4_source_port, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %match_l4_source_port = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 7
  %95 = ptrtoint ptr %match_l4_source_port to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %94, ptr %match_l4_source_port, align 1
  %l2_ether_type = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 5
  %96 = ptrtoint ptr %l2_ether_type to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %l2_ether_type, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  %match_l2_ether_type = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 8
  %99 = ptrtoint ptr %match_l2_ether_type to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %98, ptr %match_l2_ether_type, align 1
  %l2_pcp_dei = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 3
  %100 = ptrtoint ptr %l2_pcp_dei to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %l2_pcp_dei, align 2
  %match_l2_pcp_dei = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 9
  %102 = ptrtoint ptr %match_l2_pcp_dei to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %match_l2_pcp_dei, align 1
  %l3_dscp = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 6
  %103 = ptrtoint ptr %l3_dscp to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %l3_dscp, align 4
  %match_l3_dscp = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 10
  %105 = ptrtoint ptr %match_l3_dscp to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %match_l3_dscp, align 1
  %l2_tpid25 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %l2_tpid25 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %l2_tpid25, align 4
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %mask_l2_tpid = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 12
  %109 = ptrtoint ptr %mask_l2_tpid to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %mask_l2_tpid, align 1
  %l2_vlan_id27 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %l2_vlan_id27 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %l2_vlan_id27, align 4
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  %mask_l2_vlan_id = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 14
  %113 = ptrtoint ptr %mask_l2_vlan_id to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %mask_l2_vlan_id, align 1
  %l3_dest_ip29 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 9
  %114 = ptrtoint ptr %l3_dest_ip29 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %l3_dest_ip29, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %mask_l3_dest_ip = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 15
  %117 = ptrtoint ptr %mask_l3_dest_ip to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %mask_l3_dest_ip, align 1
  %l3_source_ip31 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 8
  %118 = ptrtoint ptr %l3_source_ip31 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %l3_source_ip31, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %mask_l3_source_ip = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 16
  %121 = ptrtoint ptr %mask_l3_source_ip to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %mask_l3_source_ip, align 1
  %l4_dest_port33 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 11
  %122 = ptrtoint ptr %l4_dest_port33 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %l4_dest_port33, align 2
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %mask_l4_dest_port = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 17
  %125 = ptrtoint ptr %mask_l4_dest_port to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %mask_l4_dest_port, align 1
  %l4_source_port35 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 10
  %126 = ptrtoint ptr %l4_source_port35 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %l4_source_port35, align 4
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %mask_l4_source_port = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 18
  %129 = ptrtoint ptr %mask_l4_source_port to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %128, ptr %mask_l4_source_port, align 1
  %l2_ether_type37 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 5
  %130 = ptrtoint ptr %l2_ether_type37 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %l2_ether_type37, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %mask_l2_ether_type = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 19
  %133 = ptrtoint ptr %mask_l2_ether_type to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %mask_l2_ether_type, align 1
  %l2_pcp_dei39 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %l2_pcp_dei39 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %l2_pcp_dei39, align 2
  %mask_l2_pcp_dei = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 20
  %136 = ptrtoint ptr %mask_l2_pcp_dei to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %mask_l2_pcp_dei, align 1
  %l3_dscp41 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 6
  %137 = ptrtoint ptr %l3_dscp41 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %l3_dscp41, align 4
  %mask_l3_dscp = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 21
  %139 = ptrtoint ptr %mask_l3_dscp to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %mask_l3_dscp, align 1
  %l3_protocol = getelementptr inbounds %struct.dpsw_acl_fields, ptr %key, i32 0, i32 7
  %140 = ptrtoint ptr %l3_protocol to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %l3_protocol, align 1
  %match_l3_protocol = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 22
  %142 = ptrtoint ptr %match_l3_protocol to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %match_l3_protocol, align 1
  %l3_protocol44 = getelementptr inbounds %struct.dpsw_acl_key, ptr %key, i32 0, i32 1, i32 7
  %143 = ptrtoint ptr %l3_protocol44 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %l3_protocol44, align 1
  %mask_l3_protocol = getelementptr inbounds %struct.dpsw_prep_acl_entry, ptr %entry_cfg_buf, i32 0, i32 23
  %145 = ptrtoint ptr %mask_l3_protocol to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %mask_l3_protocol, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_add_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %acl_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636233
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %acl_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %result = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 1
  %if_id = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %if_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %if_id, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %result_if_id = getelementptr inbounds %struct.dpsw_cmd_acl_entry, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %result_if_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %result_if_id, align 2
  %precedence = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 2
  %13 = ptrtoint ptr %precedence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %precedence, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %precedence2 = getelementptr inbounds %struct.dpsw_cmd_acl_entry, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %precedence2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %precedence2, align 4
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cfg, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %key_iova3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %key_iova3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %key_iova3, align 8
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result, align 8
  %result_action = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 15
  %25 = ptrtoint ptr %result_action to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %result_action, align 8
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_acl_remove_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %acl_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640329
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %acl_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %result = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 1
  %if_id = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %if_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %if_id, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %result_if_id = getelementptr inbounds %struct.dpsw_cmd_acl_entry, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %result_if_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %result_if_id, align 2
  %precedence = getelementptr inbounds %struct.dpsw_acl_entry_cfg, ptr %cfg, i32 0, i32 2
  %13 = ptrtoint ptr %precedence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %precedence, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %precedence2 = getelementptr inbounds %struct.dpsw_cmd_acl_entry, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %precedence2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %precedence2, align 4
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cfg, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %key_iova3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %key_iova3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %key_iova3, align 8
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result, align 8
  %result_action = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 15
  %25 = ptrtoint ptr %result_action to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %result_action, align 8
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_set_reflection_if(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636226
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_add_reflection(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656707
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %vlan_id = getelementptr inbounds %struct.dpsw_reflection_cfg, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %vlan_id2 = getelementptr inbounds %struct.dpsw_cmd_if_reflection, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vlan_id2, align 2
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 4
  %filter3 = getelementptr inbounds %struct.dpsw_cmd_if_reflection, ptr %params, i32 0, i32 2
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 3
  %17 = ptrtoint ptr %filter3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %filter3, align 4
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpsw_if_remove_reflection(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %if_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511660803
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %if_id)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %vlan_id = getelementptr inbounds %struct.dpsw_reflection_cfg, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %vlan_id2 = getelementptr inbounds %struct.dpsw_cmd_if_reflection, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vlan_id2, align 2
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 4
  %filter3 = getelementptr inbounds %struct.dpsw_cmd_if_reflection, ptr %params, i32 0, i32 2
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 3
  %17 = ptrtoint ptr %filter3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %filter3, align 4
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
