; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/usb_ops.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/usb_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.intf_hdl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_usb_set_intf_option(ptr nocapture noundef %option) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %option, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %option, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @r8712_usb_set_intf_funs(ptr nocapture noundef writeonly %intfhdl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_hdl_init = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 4
  %0 = ptrtoint ptr %intf_hdl_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @usb_intf_hdl_init, ptr %intf_hdl_init, align 4
  %intf_hdl_unload = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 5
  %1 = ptrtoint ptr %intf_hdl_unload to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @usb_intf_hdl_unload, ptr %intf_hdl_unload, align 4
  %intf_hdl_open = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 6
  %2 = ptrtoint ptr %intf_hdl_open to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usb_intf_hdl_open, ptr %intf_hdl_open, align 4
  %intf_hdl_close = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 7
  %3 = ptrtoint ptr %intf_hdl_close to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @usb_intf_hdl_close, ptr %intf_hdl_close, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb_intf_hdl_init(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb_intf_hdl_unload(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb_intf_hdl_open(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb_intf_hdl_close(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @r8712_usb_set_intf_ops(ptr nocapture noundef writeonly %ops) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ops, i32 0, i32 68)
  %_read8 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 2
  %1 = ptrtoint ptr %_read8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @usb_read8, ptr %_read8, align 4
  %_read16 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %_read16 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usb_read16, ptr %_read16, align 4
  %_read32 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 4
  %3 = ptrtoint ptr %_read32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @usb_read32, ptr %_read32, align 4
  %_read_port = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 17
  %4 = ptrtoint ptr %_read_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @r8712_usb_read_port, ptr %_read_port, align 4
  %_write8 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 11
  %5 = ptrtoint ptr %_write8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_write8, ptr %_write8, align 4
  %_write16 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 12
  %6 = ptrtoint ptr %_write16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb_write16, ptr %_write16, align 4
  %_write32 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 13
  %7 = ptrtoint ptr %_write32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @usb_write32, ptr %_write32, align 4
  %_write_mem = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 15
  %8 = ptrtoint ptr %_write_mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @r8712_usb_write_mem, ptr %_write_mem, align 4
  %_write_port = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 18
  %9 = ptrtoint ptr %_write_port to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @r8712_usb_write_port, ptr %_write_port, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @usb_read8(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !9
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %1 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %2, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i8 noundef zeroext 1) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = lshr i32 %4, 24
  %conv2 = trunc i32 %5 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i8 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @usb_read16(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !9
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %1 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %2, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 2, i8 noundef zeroext 1) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = and i32 %4, -65536
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %conv2 = trunc i32 %6 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i16 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_read32(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !9
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %1 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %2, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 4, i8 noundef zeroext 1) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_read_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write8(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr, i8 noundef zeroext %val) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %0 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %conv1 = zext i8 %val to i32
  %2 = shl nuw i32 %conv1, 24
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data, align 4
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write16(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr, i16 noundef zeroext %val) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %0 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %conv1 = zext i16 %val to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv1)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data, align 4
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 2, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write32(ptr nocapture noundef readonly %intfhdl, i32 noundef %addr, i32 noundef %val) #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %pintfpriv = getelementptr inbounds %struct.intf_hdl, ptr %intfhdl, i32 0, i32 3
  %0 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfpriv, align 4
  %conv = trunc i32 %addr to i16
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data, align 4
  %call = call i32 @r8712_usbctrl_vendorreq(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 4, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_write_mem(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_write_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usbctrl_vendorreq(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

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
