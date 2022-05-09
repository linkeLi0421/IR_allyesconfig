; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext -128) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #2
  %epromtype = getelementptr i8, ptr %dev, i32 35914
  %1 = ptrtoint ptr %epromtype to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %epromtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp = icmp eq i16 %2, 1
  %3 = trunc i32 %addr to i16
  %. = select i1 %cmp, i16 255, i16 63
  %.18 = select i1 %cmp, i16 1536, i16 384
  %.19 = select i1 %cmp, i32 11, i32 9
  %4 = and i16 %., %3
  %conv7 = or i16 %4, %.18
  %call8 = tail call fastcc zeroext i16 @_rtl92e_eeprom_xfer(ptr noundef %dev, i16 noundef zeroext %conv7, i32 noundef %.19)
  %ret.0 = zext i16 %call8 to i32
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext 0) #2
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @_rtl92e_eeprom_xfer(ptr noundef %dev, i16 noundef zeroext %data, i32 noundef %tx_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv1.i = or i8 %call.i, 8
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv1.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #2
  %call.i.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv1.i.i = or i8 %call.i.i, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv1.i.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #2
  %call.i2.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i4.i = and i8 %call.i2.i, -5
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i4.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_len)
  %tobool.not43 = icmp eq i32 %tx_len, 0
  br i1 %tobool.not43, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i16 %data to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %tx_len.addr.044 = phi i32 [ %tx_len, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %tx_len.addr.044, -1
  %3 = shl nuw i32 1, %dec
  %4 = and i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  %call.i21 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i23 = and i8 %call.i21, -3
  %masksel = select i1 %tobool1.not, i8 0, i8 2
  %reg.0.i = or i8 %conv4.i23, %masksel
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %reg.0.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #2
  %call.i.i24 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv1.i.i25 = or i8 %call.i.i24, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv1.i.i25) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #2
  %call.i2.i26 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i4.i27 = and i8 %call.i2.i26, -5
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i4.i27) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #2
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i28 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i30 = and i8 %call.i28, -3
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i30) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #2
  br label %while.body5

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.end
  %rx_len.046 = phi i32 [ 16, %while.end ], [ %dec3, %while.body5.while.body5_crit_edge ]
  %ret.045 = phi i16 [ 0, %while.end ], [ %conv8, %while.body5.while.body5_crit_edge ]
  %dec3 = add nsw i32 %rx_len.046, -1
  %call.i.i31 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv1.i.i32 = or i8 %call.i.i31, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv1.i.i32) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #2
  %call.i2.i33 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i4.i34 = and i8 %call.i2.i33, -5
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i4.i34) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #2
  %call.i35 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %11 = and i8 %call.i35, 1
  %12 = zext i8 %11 to i32
  %shl = shl nuw i32 %12, %dec3
  %13 = trunc i32 %shl to i16
  %conv8 = or i16 %ret.045, %13
  %tobool4.not = icmp eq i32 %dec3, 0
  br i1 %tobool4.not, label %while.end9, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body5

while.end9:                                       ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #4
  %call.i36 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i38 = and i8 %call.i36, -9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i38) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #2
  %call.i.i39 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv1.i.i40 = or i8 %call.i.i39, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv1.i.i40) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #2
  %call.i2.i41 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 14) #2
  %conv4.i4.i42 = and i8 %call.i2.i41, -5
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext %conv4.i4.i42) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #2
  ret i16 %conv8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_readb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
