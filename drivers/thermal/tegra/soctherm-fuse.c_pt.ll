; ModuleID = '/llk/IR_all_yes/drivers/thermal/tegra/soctherm-fuse.c_pt.bc'
source_filename = "../drivers/thermal/tegra/soctherm-fuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_soctherm_fuse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tsensor_shared_calib = type { i32, i32, i32, i32 }
%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author170 = internal constant [46 x i8] c"tegra_soctherm.author=Wei Ni <wni@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [58 x i8] c"tegra_soctherm.description=Tegra SOCTHERM fuse management\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [57 x i8] c"tegra_soctherm.file=drivers/thermal/tegra/tegra-soctherm\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [30 x i8] c"tegra_soctherm.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_calc_shared_calib(ptr nocapture noundef readonly %tfuse, ptr nocapture noundef writeonly %shared) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !16
  %call = call i32 @tegra_fuse_readl(i32 noundef 384, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %tfuse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tfuse, align 4
  %and = and i32 %4, %2
  %fuse_base_cp_shift = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 1
  %5 = ptrtoint ptr %fuse_base_cp_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fuse_base_cp_shift, align 4
  %shr = lshr i32 %and, %6
  %7 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %shared, align 4
  %fuse_base_ft_mask = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 2
  %8 = ptrtoint ptr %fuse_base_ft_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fuse_base_ft_mask, align 4
  %and1 = and i32 %9, %2
  %fuse_base_ft_shift = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 3
  %10 = ptrtoint ptr %fuse_base_ft_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fuse_base_ft_shift, align 4
  %shr2 = lshr i32 %and1, %11
  %base_ft = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 1
  %12 = ptrtoint ptr %base_ft to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr2, ptr %base_ft, align 4
  %fuse_shift_ft_mask = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 4
  %13 = ptrtoint ptr %fuse_shift_ft_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fuse_shift_ft_mask, align 4
  %and3 = and i32 %14, %2
  %fuse_shift_ft_shift = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 5
  %15 = ptrtoint ptr %fuse_shift_ft_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fuse_shift_ft_shift, align 4
  %shr4 = lshr i32 %and3, %16
  %shl.i = shl i32 %shr4, 27
  %shr.i = ashr exact i32 %shl.i, 27
  %fuse_spare_realignment = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %tfuse, i32 0, i32 6
  %17 = ptrtoint ptr %fuse_spare_realignment to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fuse_spare_realignment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %call9 = call i32 @tegra_fuse_readl(i32 noundef %18, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %shl.i33 = shl i32 %20, 26
  %shr.i34 = ashr exact i32 %shl.i33, 26
  %add = add nsw i32 %shr.i34, 50
  %actual_temp_cp = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 2
  %21 = ptrtoint ptr %actual_temp_cp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %actual_temp_cp, align 4
  %add15 = add nsw i32 %shr.i, 210
  %actual_temp_ft = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 3
  %22 = ptrtoint ptr %actual_temp_ft to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add15, ptr %actual_temp_ft, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_calc_tsensor_calib(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %shared, ptr nocapture noundef writeonly %calibration) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !16
  %group = getelementptr inbounds %struct.tegra_tsensor, ptr %sensor, i32 0, i32 6
  %1 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %group, align 4
  %calib_fuse_offset = getelementptr inbounds %struct.tegra_tsensor, ptr %sensor, i32 0, i32 3
  %3 = ptrtoint ptr %calib_fuse_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %calib_fuse_offset, align 4
  %call = call i32 @tegra_fuse_readl(i32 noundef %4, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shared, align 4
  %mul = shl i32 %6, 6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shl.i = shl i32 %8, 19
  %shr.i = ashr exact i32 %shl.i, 19
  %add = add i32 %shr.i, %mul
  %and = lshr i32 %8, 13
  %shr = and i32 %and, 8191
  store i32 %shr, ptr %val, align 4
  %base_ft = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 1
  %9 = ptrtoint ptr %base_ft to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_ft, align 4
  %mul2 = shl i32 %10, 5
  %shl.i78 = shl nuw i32 %shr, 19
  %shr.i79 = ashr exact i32 %shl.i78, 19
  %add4 = add i32 %shr.i79, %mul2
  %sub = sub i32 %add4, %add
  %actual_temp_ft = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 3
  %11 = ptrtoint ptr %actual_temp_ft to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_temp_ft, align 4
  %actual_temp_cp = getelementptr inbounds %struct.tsensor_shared_calib, ptr %shared, i32 0, i32 2
  %13 = ptrtoint ptr %actual_temp_cp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_temp_cp, align 4
  %sub5 = sub i32 %12, %14
  %pdiv = getelementptr inbounds %struct.tegra_tsensor_group, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdiv, align 4
  %config = getelementptr inbounds %struct.tegra_tsensor, ptr %sensor, i32 0, i32 2
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %tsample_ate = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %tsample_ate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tsample_ate, align 4
  %mul6 = mul i32 %20, %16
  %tsample = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %tsample to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tsample, align 4
  %pdiv_ate = getelementptr inbounds %struct.tegra_tsensor_group, ptr %2, i32 0, i32 5
  %23 = ptrtoint ptr %pdiv_ate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdiv_ate, align 4
  %conv = sext i32 %sub5 to i64
  %conv10 = sext i32 %mul6 to i64
  %mul11 = shl nsw i64 %conv, 30
  %mul.i = mul i64 %mul11, %conv10
  %add.i = or i64 %mul.i, 1
  %mul8 = shl i32 %sub, 1
  %mul14 = mul i32 %mul8, %22
  %mul1.i = mul i32 %mul14, %24
  %conv.i = sext i32 %mul1.i to i64
  %call.i = call i64 @div64_s64(i64 noundef %add.i, i64 noundef %conv.i) #3
  %conv18 = sext i32 %add4 to i64
  %25 = ptrtoint ptr %actual_temp_cp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_temp_cp, align 4
  %conv20 = zext i32 %26 to i64
  %mul21 = mul nsw i64 %conv20, %conv18
  %conv22 = sext i32 %add to i64
  %27 = ptrtoint ptr %actual_temp_ft to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_temp_ft, align 4
  %conv24 = zext i32 %28 to i64
  %mul25 = mul nsw i64 %conv24, %conv22
  %sub26 = sub i64 %mul21, %mul25
  %mul.i81 = shl i64 %sub26, 17
  %add.i82 = or i64 %mul.i81, 1
  %conv.i84 = sext i32 %mul8 to i64
  %call.i85 = call i64 @div64_s64(i64 noundef %add.i82, i64 noundef %conv.i84) #3
  %29 = shl i64 %call.i, 32
  %fuse_corr_alpha = getelementptr inbounds %struct.tegra_tsensor, ptr %sensor, i32 0, i32 4
  %30 = ptrtoint ptr %fuse_corr_alpha to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fuse_corr_alpha, align 4
  %conv30 = sext i32 %31 to i64
  %32 = ashr exact i64 %29, 31
  %mul31 = and i64 %32, -131072
  %mul.i87 = mul i64 %mul31, %conv30
  %add.i88 = or i64 %mul.i87, 1
  %call.i89 = call i64 @div64_s64(i64 noundef %add.i88, i64 noundef 2000000) #3
  %33 = trunc i64 %call.i89 to i32
  %34 = and i32 %33, -65536
  %35 = shl i64 %call.i85, 32
  %36 = ashr i64 %35, 48
  %37 = ptrtoint ptr %fuse_corr_alpha to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fuse_corr_alpha, align 4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul nsw i64 %36, %conv36
  %fuse_corr_beta = getelementptr inbounds %struct.tegra_tsensor, ptr %sensor, i32 0, i32 5
  %39 = ptrtoint ptr %fuse_corr_beta to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fuse_corr_beta, align 4
  %conv38 = sext i32 %40 to i64
  %add39 = add nsw i64 %mul37, %conv38
  %mul.i91 = shl i64 %add39, 17
  %add.i92 = or i64 %mul.i91, 1
  %call.i93 = call i64 @div64_s64(i64 noundef %add.i92, i64 noundef 2000000) #3
  %41 = trunc i64 %call.i93 to i32
  %42 = lshr i32 %41, 16
  %or = or i32 %42, %34
  %43 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %calibration, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__UNIQUE_ID_author170, !1, !"__UNIQUE_ID_author170", i1 false, i1 false}
!1 = !{!"../drivers/thermal/tegra/soctherm-fuse.c", i32 158, i32 1}
!2 = !{ptr @__UNIQUE_ID_description171, !3, !"__UNIQUE_ID_description171", i1 false, i1 false}
!3 = !{!"../drivers/thermal/tegra/soctherm-fuse.c", i32 159, i32 1}
!4 = !{ptr @__UNIQUE_ID_file172, !5, !"__UNIQUE_ID_file172", i1 false, i1 false}
!5 = !{!"../drivers/thermal/tegra/soctherm-fuse.c", i32 160, i32 1}
!6 = !{ptr @__UNIQUE_ID_license173, !5, !"__UNIQUE_ID_license173", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
