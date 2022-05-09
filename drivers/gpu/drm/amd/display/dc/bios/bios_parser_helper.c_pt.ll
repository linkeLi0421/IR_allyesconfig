; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/bios_parser_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bios_registers = type { i32, i32 }

@__func__.bios_get_vga_enabled_displays = private unnamed_addr constant [30 x i8] c"bios_get_vga_enabled_displays\00", align 1
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bios_get_image(ptr nocapture noundef readonly %bp, i32 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bios = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 1
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %size, %offset
  %bios_size = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %bios_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bios_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ult i32 %add, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %spec.select = select i1 %cmp, ptr %add.ptr, ptr null
  br label %return

return:                                           ; preds = %land.lhs.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bios_is_accelerated_mode(ptr nocapture noundef readonly %bios) local_unnamed_addr #1 align 64 {
entry:
  %acc_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc_mode) #4
  %0 = ptrtoint ptr %acc_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %acc_mode, align 4, !annotation !11
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %BIOS_SCRATCH_6 = getelementptr inbounds %struct.bios_registers, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %BIOS_SCRATCH_6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %BIOS_SCRATCH_6, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext 4, i32 noundef 16, ptr noundef nonnull %acc_mode) #4
  %7 = ptrtoint ptr %acc_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %acc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc_mode) #4
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bios_set_scratch_acc_mode_change(ptr nocapture noundef readonly %bios, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %BIOS_SCRATCH_6 = getelementptr inbounds %struct.bios_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %BIOS_SCRATCH_6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BIOS_SCRATCH_6, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef %state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bios_set_scratch_critical_state(ptr nocapture noundef readonly %bios, i1 noundef zeroext %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %state to i32
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %BIOS_SCRATCH_6 = getelementptr inbounds %struct.bios_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %BIOS_SCRATCH_6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BIOS_SCRATCH_6, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 8, i32 noundef 256, i32 noundef %cond) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bios_get_vga_enabled_displays(ptr nocapture noundef readonly %bios) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.bios_get_vga_enabled_displays) #4
  %and = and i32 %call, 65535
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__func__.bios_get_vga_enabled_displays, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_helper.c", i32 85, i32 9}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
