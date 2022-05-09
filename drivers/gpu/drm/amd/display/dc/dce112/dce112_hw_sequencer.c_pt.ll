; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce112/dce112_hw_sequencer.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce112_hw_seq_reg_offsets = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.55, %struct.anon.56, i8, i8, i64 }
%struct.anon.55 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.large_integer = type { i64 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@reg_offsets = internal constant { [6 x %struct.dce112_hw_seq_reg_offsets], [40 x i8] } { [6 x %struct.dce112_hw_seq_reg_offsets] [%struct.dce112_hw_seq_reg_offsets zeroinitializer, %struct.dce112_hw_seq_reg_offsets { i32 512 }, %struct.dce112_hw_seq_reg_offsets { i32 1024 }, %struct.dce112_hw_seq_reg_offsets { i32 9728 }, %struct.dce112_hw_seq_reg_offsets { i32 10240 }, %struct.dce112_hw_seq_reg_offsets { i32 10752 }], [40 x i8] zeroinitializer }, align 32
@__func__.dce112_enable_display_power_gating = private unnamed_addr constant [35 x i8] c"dce112_enable_display_power_gating\00", align 1
@__func__.dce112_init_pte = private unnamed_addr constant [16 x i8] c"dce112_init_pte\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"reg_offsets\00", align 1
@___asan_gen_.2 = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 42, i32 47 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @reg_offsets], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_hw_sequencer_construct(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce110_hw_sequencer_construct(ptr noundef %dc) #2
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %0 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwseq, align 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 11
  %2 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce112_enable_display_power_gating, ptr %enable_display_power_gating, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_hw_sequencer_construct(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce112_enable_display_power_gating(ptr nocapture noundef readonly %dc, i8 noundef zeroext %controller_id, ptr noundef %dcb, i32 noundef %power_gating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %power_gating)
  %switch.selectcmp = icmp eq i32 %power_gating, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power_gating)
  %cmp9.not = icmp ne i32 %power_gating, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %controller_id)
  %cmp10 = icmp eq i8 %controller_id, 0
  %or.cond = or i1 %cmp10, %cmp9.not
  br i1 %or.cond, label %if.then12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power_gating)
  %switch.selectcmp34 = icmp eq i32 %power_gating, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.select35 = select i1 %switch.selectcmp34, i32 2, i32 %switch.select
  %4 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb, align 4
  %enable_disp_power_gating = getelementptr inbounds %struct.dc_vbios_funcs, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %enable_disp_power_gating to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_disp_power_gating, align 4
  %conv13 = zext i8 %controller_id to i32
  %add = add nuw nsw i32 %conv13, 1
  %call = tail call i32 %7(ptr noundef %dcb, i32 noundef %add, i32 noundef %switch.select35) #2
  %arrayidx = getelementptr [6 x %struct.dce112_hw_seq_reg_offsets], ptr @reg_offsets, i32 0, i32 %conv13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add14 = add i32 %9, 7102
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add14, i32 noundef 0, ptr noundef nonnull @__func__.dce112_enable_display_power_gating) #2
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %bp_result.0 = phi i32 [ %call, %if.then12 ], [ 0, %if.end.if.end15_crit_edge ]
  br i1 %switch.selectcmp, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 816, ptr noundef nonnull @__func__.dce112_init_pte) #2
  %10 = and i32 %call.i, 4194048
  call void @__sanitizer_cov_trace_const_cmp4(i32 263168, i32 %10)
  %11 = icmp eq i32 %10, 263168
  br i1 %11, label %if.then18.if.end19_crit_edge, label %if.then.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #4
  %or.i.i = and i32 %call.i, -4194304
  %or.i20.i = or i32 %or.i.i, 263423
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 816, i32 noundef %or.i20.i, ptr noundef nonnull @__func__.dce112_init_pte) #2
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then18.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bp_result.0)
  %cmp20 = icmp eq i32 %bp_result.0, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %cmp20, %if.end19 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__func__.dce112_enable_display_power_gating, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.c", i32 141, i32 3}
!2 = !{ptr @reg_offsets, !3, !"reg_offsets", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.c", i32 42, i32 47}
!4 = !{ptr @__func__.dce112_init_pte, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.c", i32 77, i32 10}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
