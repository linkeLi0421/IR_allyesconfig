; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_devio_spi.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_devio_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_spi = type { ptr, ptr, ptr, i32, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_io_spi_create(ptr noundef writeonly %io, ptr noundef %spi, i8 noundef zeroext %slave_select) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  %tobool1.not = icmp eq ptr %spi, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cxd2880_io_spi_read_reg, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 1
  %1 = ptrtoint ptr %write_regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cxd2880_io_spi_write_reg, ptr %write_regs, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 2
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cxd2880_io_common_write_one_reg, ptr %write_reg, align 4
  %if_object = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 3
  %3 = ptrtoint ptr %if_object to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %if_object, align 4
  %i2c_address_sys = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_address_sys to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %i2c_address_sys, align 4
  %i2c_address_demod = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 5
  %5 = ptrtoint ptr %i2c_address_demod to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %i2c_address_demod, align 1
  %slave_select2 = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 6
  %6 = ptrtoint ptr %slave_select2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %slave_select, ptr %slave_select2, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_io_spi_read_reg(ptr noundef readonly %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, ptr noundef %data, i32 noundef %size) #1 align 64 {
entry:
  %send_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %send_data) #5
  %0 = getelementptr inbounds [6 x i8], ptr %send_data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %send_data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %send_data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %send_data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %send_data, i32 0, i32 5
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %if_object = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 3
  %5 = ptrtoint ptr %if_object to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_object, align 4
  %tobool1.not = icmp eq ptr %6, null
  %tobool3.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %sub_address to i32
  %add = add i32 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp = icmp ugt i32 %add, 256
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tgt)
  %cmp8 = icmp eq i32 %tgt, 0
  %. = select i1 %cmp8, i8 11, i8 10
  %7 = ptrtoint ptr %send_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %send_data, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp16.not59 = icmp eq i32 %size, 0
  br i1 %cmp16.not59, label %if.end6.cleanup_crit_edge, label %while.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end6
  %write_read = getelementptr inbounds %struct.cxd2880_spi, ptr %6, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %read_data_top.062 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end31.while.body_crit_edge ]
  %size.addr.061 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end31.while.body_crit_edge ]
  %sub_address.addr.060 = phi i8 [ %sub_address, %while.body.lr.ph ], [ %add35, %if.end31.while.body_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub_address.addr.060, ptr %0, align 1
  %12 = call i32 @llvm.umin.i32(i32 %size.addr.061, i32 255)
  %13 = trunc i32 %12 to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %1, align 1
  %15 = ptrtoint ptr %write_read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_read, align 4
  %call = call i32 %16(ptr noundef nonnull %6, ptr noundef nonnull %send_data, i32 noundef 6, ptr noundef %read_data_top.062, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end31, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %while.body
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv33 = zext i8 %18 to i32
  %add35 = add i8 %18, %sub_address.addr.060
  %add.ptr = getelementptr i8, ptr %read_data_top.062, i32 %conv33
  %sub = sub i32 %size.addr.061, %conv33
  %cmp16.not = icmp eq i32 %sub, 0
  br i1 %cmp16.not, label %if.end31.cleanup_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %send_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_io_spi_write_reg(ptr noundef readonly %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, ptr noundef readonly %data, i32 noundef %size) #1 align 64 {
entry:
  %send_data = alloca [132 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %send_data) #5
  %0 = getelementptr inbounds i8, ptr %send_data, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 129)
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %if_object = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %if_object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_object, align 4
  %tobool1.not = icmp eq ptr %3, null
  %tobool3.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp = icmp ugt i32 %size, 128
  %or.cond80 = or i1 %cmp, %or.cond
  br i1 %or.cond80, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %conv = zext i8 %sub_address to i32
  %add = add nuw nsw i32 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp6 = icmp ugt i32 %add, 256
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tgt)
  %cmp11 = icmp eq i32 %tgt, 0
  %. = select i1 %cmp11, i8 15, i8 14
  %4 = ptrtoint ptr %send_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %., ptr %send_data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp16.not81 = icmp eq i32 %size, 0
  br i1 %cmp16.not81, label %if.end9.cleanup_crit_edge, label %while.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end9
  %arrayidx18 = getelementptr inbounds [132 x i8], ptr %send_data, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [132 x i8], ptr %send_data, i32 0, i32 2
  %write41 = getelementptr inbounds %struct.cxd2880_spi, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %write_data_top.085 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end50.while.body_crit_edge ]
  %size.addr.083 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end50.while.body_crit_edge ]
  %sub_address.addr.082 = phi i8 [ %sub_address, %while.body.lr.ph ], [ %add54, %if.end50.while.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %sub_address.addr.082, ptr %arrayidx18, align 1
  %6 = call i32 @llvm.umin.i32(i32 %size.addr.083, i32 255)
  %7 = trunc i32 %6 to i8
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx25, align 1
  %9 = call ptr @memcpy(ptr %0, ptr %write_data_top.085, i32 %6)
  br i1 %cmp11, label %if.then32, label %while.body.if.end47_crit_edge

while.body.if.end47_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %add35 = add nuw nsw i32 %6, 3
  %arrayidx36 = getelementptr [132 x i8], ptr %send_data, i32 0, i32 %add35
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx36, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then32, %while.body.if.end47_crit_edge
  %.sink87 = phi i32 [ 4, %if.then32 ], [ 3, %while.body.if.end47_crit_edge ]
  %11 = ptrtoint ptr %write41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write41, align 4
  %add45 = add nuw nsw i32 %.sink87, %6
  %call46 = call i32 %12(ptr noundef nonnull %3, ptr noundef nonnull %send_data, i32 noundef %add45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool48.not = icmp eq i32 %call46, 0
  br i1 %tobool48.not, label %if.end50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  %conv52 = zext i8 %14 to i32
  %add54 = add i8 %14, %sub_address.addr.082
  %add.ptr = getelementptr i8, ptr %write_data_top.085, i32 %conv52
  %sub = sub i32 %size.addr.083, %conv52
  %cmp16.not = icmp eq i32 %sub, 0
  br i1 %cmp16.not, label %if.end50.cleanup_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ %call46, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %send_data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_common_write_one_reg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
