; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_sii164.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_sii164.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sii164GetVendorID() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 1) #2
  %conv1 = zext i8 %call to i16
  %shl = shl nuw i16 %conv1, 8
  %call2 = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 0) #2
  %conv4 = zext i8 %call2 to i16
  %or = or i16 %shl, %conv4
  ret i16 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sii164GetDeviceID() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 3) #2
  %conv1 = zext i8 %call to i16
  %shl = shl nuw i16 %conv1, 8
  %call2 = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 2) #2
  %conv4 = zext i8 %call2 to i16
  %or = or i16 %shl, %conv4
  ret i16 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sii164InitChip(i8 noundef zeroext %edge_select, i8 noundef zeroext %bus_select, i8 noundef zeroext %dual_edge_clk_select, i8 noundef zeroext %hsync_enable, i8 noundef zeroext %vsync_enable, i8 noundef zeroext %deskew_enable, i8 noundef zeroext %deskew_setting, i8 noundef zeroext %continuous_sync_enable, i8 noundef zeroext %pll_filter_enable, i8 noundef zeroext %pll_filter_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sm750_hw_i2c_init(i8 noundef zeroext 1) #2
  %call.i = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 1) #2
  %conv1.i = zext i8 %call.i to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %call2.i = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 0) #2
  %conv4.i = zext i8 %call2.i to i16
  %or.i = or i16 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %or.i)
  %cmp = icmp eq i16 %or.i, 1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call.i152 = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 3) #2
  %conv1.i153 = zext i8 %call.i152 to i16
  %shl.i154 = shl nuw i16 %conv1.i153, 8
  %call2.i155 = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 2) #2
  %conv4.i156 = zext i8 %call2.i155 to i16
  %or.i157 = or i16 %shl.i154, %conv4.i156
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %or.i157)
  %cmp5 = icmp eq i16 %or.i157, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %edge_select)
  %cmp8 = icmp eq i8 %edge_select, 0
  %. = select i1 %cmp8, i8 0, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bus_select)
  %cmp12 = icmp eq i8 %bus_select, 0
  %0 = or i8 %., 4
  %config.1 = select i1 %cmp12, i8 %., i8 %0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dual_edge_clk_select)
  %cmp23 = icmp eq i8 %dual_edge_clk_select, 0
  %1 = or i8 %config.1, 8
  %config.2 = select i1 %cmp23, i8 %config.1, i8 %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hsync_enable)
  %cmp35 = icmp eq i8 %hsync_enable, 0
  %2 = or i8 %config.2, 16
  %config.3 = select i1 %cmp35, i8 %config.2, i8 %2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vsync_enable)
  %cmp47 = icmp eq i8 %vsync_enable, 0
  %3 = or i8 %config.3, 32
  %config.4 = select i1 %cmp47, i8 %config.3, i8 %3
  %call58 = tail call i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext 112, i8 noundef zeroext 8, i8 noundef zeroext %config.4) #2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %deskew_enable)
  %cmp60 = icmp eq i8 %deskew_enable, 0
  %config.5 = select i1 %cmp60, i8 0, i8 16
  %4 = zext i8 %deskew_setting to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %deskew_setting, label %if.then.sw.epilog_crit_edge [
    i8 7, label %sw.bb93
    i8 1, label %sw.bb69
    i8 2, label %sw.bb73
    i8 3, label %sw.bb77
    i8 4, label %sw.bb81
    i8 5, label %sw.bb85
    i8 6, label %sw.bb89
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %5 = or i8 %config.5, 32
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %6 = or i8 %config.5, 64
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %7 = or i8 %config.5, 96
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %8 = or i8 %config.5, -128
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %9 = or i8 %config.5, -96
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %10 = or i8 %config.5, -64
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %11 = or i8 %config.5, -32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb93, %sw.bb89, %sw.bb85, %sw.bb81, %sw.bb77, %sw.bb73, %sw.bb69, %if.then.sw.epilog_crit_edge
  %config.6 = phi i8 [ %11, %sw.bb93 ], [ %10, %sw.bb89 ], [ %9, %sw.bb85 ], [ %8, %sw.bb81 ], [ %7, %sw.bb77 ], [ %6, %sw.bb73 ], [ %5, %sw.bb69 ], [ %config.5, %if.then.sw.epilog_crit_edge ]
  %call97 = tail call i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext 112, i8 noundef zeroext 10, i8 noundef zeroext %config.6) #2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %continuous_sync_enable)
  %cmp99 = icmp eq i8 %continuous_sync_enable, 0
  %.151 = select i1 %cmp99, i8 0, i8 -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pll_filter_enable)
  %cmp105 = icmp ne i8 %pll_filter_enable, 0
  %12 = zext i1 %cmp105 to i8
  %config.8 = or i8 %.151, %12
  %13 = shl i8 %pll_filter_value, 1
  %14 = and i8 %13, 14
  %or118150 = or i8 %config.8, %14
  %call120 = tail call i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext 112, i8 noundef zeroext 12, i8 noundef zeroext %or118150) #2
  %call121 = tail call zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext 112, i8 noundef zeroext 8) #2
  %15 = or i8 %call121, 1
  %call125 = tail call i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext 112, i8 noundef zeroext 8, i8 noundef zeroext %15) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_hw_i2c_init(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
