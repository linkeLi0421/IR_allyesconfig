; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/dpbp.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/dpbp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dpbp_open\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_open\09\09\09\09"
module asm "\09.long\09__crc_dpbp_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_open\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dpbp_close\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_close\09\09\09\09"
module asm "\09.long\09__crc_dpbp_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_close\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dpbp_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_enable\09\09\09\09"
module asm "\09.long\09__crc_dpbp_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_enable\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dpbp_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_disable\09\09\09\09"
module asm "\09.long\09__crc_dpbp_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_disable\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dpbp_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_reset\09\09\09\09"
module asm "\09.long\09__crc_dpbp_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_reset\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dpbp_get_attributes\22, \22a\22\09"
module asm "\09.weak\09__crc_dpbp_get_attributes\09\09\09\09"
module asm "\09.long\09__crc_dpbp_get_attributes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpbp_get_attributes:\09\09\09\09\09"
module asm "\09.asciz \09\22dpbp_get_attributes\22\09\09\09\09\09"
module asm "__kstrtabns_dpbp_get_attributes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.dpbp_rsp_get_attributes = type { i16, i16, i32, i16, i16 }
%struct.dpbp_attr = type { i32, i16 }

@__kstrtab_dpbp_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_open to i32), ptr @__kstrtab_dpbp_open, ptr @__kstrtabns_dpbp_open }, section "___ksymtab_gpl+dpbp_open", align 4
@__kstrtab_dpbp_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_close = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_close to i32), ptr @__kstrtab_dpbp_close, ptr @__kstrtabns_dpbp_close }, section "___ksymtab_gpl+dpbp_close", align 4
@__kstrtab_dpbp_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_enable to i32), ptr @__kstrtab_dpbp_enable, ptr @__kstrtabns_dpbp_enable }, section "___ksymtab_gpl+dpbp_enable", align 4
@__kstrtab_dpbp_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_disable to i32), ptr @__kstrtab_dpbp_disable, ptr @__kstrtabns_dpbp_disable }, section "___ksymtab_gpl+dpbp_disable", align 4
@__kstrtab_dpbp_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_reset to i32), ptr @__kstrtab_dpbp_reset, ptr @__kstrtabns_dpbp_reset }, section "___ksymtab_gpl+dpbp_reset", align 4
@__kstrtab_dpbp_get_attributes = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpbp_get_attributes = external dso_local constant [0 x i8], align 1
@__ksymtab_dpbp_get_attributes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpbp_get_attributes to i32), ptr @__kstrtab_dpbp_get_attributes, ptr @__kstrtabns_dpbp_get_attributes }, section "___ksymtab_gpl+dpbp_get_attributes", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_dpbp_close, ptr @__ksymtab_dpbp_disable, ptr @__ksymtab_dpbp_enable, ptr @__ksymtab_dpbp_get_attributes, ptr @__ksymtab_dpbp_open, ptr @__ksymtab_dpbp_reset], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpbp_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %dpbp_id, ptr nocapture noundef writeonly %token) #0 align 64 {
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
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644544
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %dpbp_id)
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
define dso_local i32 @dpbp_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
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
define dso_local i32 @dpbp_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
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
define dso_local i32 @dpbp_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
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
define dso_local i32 @dpbp_reset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
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
define dso_local i32 @dpbp_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) #0 align 64 {
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
  %bpid = getelementptr inbounds %struct.dpbp_rsp_get_attributes, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bpid, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %bpid2 = getelementptr inbounds %struct.dpbp_attr, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %bpid2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %bpid2, align 4
  %id = getelementptr inbounds %struct.dpbp_rsp_get_attributes, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_dpbp_open, !1, !"__ksymtab_dpbp_open", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_dpbp_close, !3, !"__ksymtab_dpbp_close", i1 false, i1 false}
!3 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 79, i32 1}
!4 = !{ptr @__ksymtab_dpbp_enable, !5, !"__ksymtab_dpbp_enable", i1 false, i1 false}
!5 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 102, i32 1}
!6 = !{ptr @__ksymtab_dpbp_disable, !7, !"__ksymtab_dpbp_disable", i1 false, i1 false}
!7 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 125, i32 1}
!8 = !{ptr @__ksymtab_dpbp_reset, !9, !"__ksymtab_dpbp_reset", i1 false, i1 false}
!9 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 148, i32 1}
!10 = !{ptr @__ksymtab_dpbp_get_attributes, !11, !"__ksymtab_dpbp_get_attributes", i1 false, i1 false}
!11 = !{!"../drivers/bus/fsl-mc/dpbp.c", i32 185, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
