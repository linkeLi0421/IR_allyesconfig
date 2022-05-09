; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce120/dce120_hw_sequencer.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_hw_sequencer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.large_integer = type { i64 }
%struct.dce_hwseq_registers = type { [6 x i32], i32, i32, [6 x i32], [6 x i32], i32, [6 x i32], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_hwseq_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.dc_phy_addr_space_config = type { %struct.anon.6, %struct.anon.7, i8, i8, i64 }
%struct.anon.6 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.7 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dchub_init_data = type { i64, i64, i64, i32, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce121_xgmi_enabled(ptr nocapture noundef readonly %hws) local_unnamed_addr #0 align 64 {
entry:
  %pf_max_region = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pf_max_region) #4
  %0 = ptrtoint ptr %pf_max_region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pf_max_region, align 4, !annotation !9
  %1 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hws, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %MC_VM_XGMI_LFB_CNTL = getelementptr inbounds %struct.dce_hwseq_registers, ptr %4, i32 0, i32 93
  %5 = ptrtoint ptr %MC_VM_XGMI_LFB_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %MC_VM_XGMI_LFB_CNTL, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %7 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shifts, align 8
  %PF_MAX_REGION = getelementptr inbounds %struct.dce_hwseq_shift, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %PF_MAX_REGION to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %PF_MAX_REGION, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 4
  %PF_MAX_REGION1 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %PF_MAX_REGION1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %PF_MAX_REGION1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %pf_max_region) #4
  %15 = ptrtoint ptr %pf_max_region to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf_max_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool = icmp ne i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pf_max_region) #4
  ret i1 %tobool
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce120_hw_sequencer_construct(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce110_hw_sequencer_construct(ptr noundef %dc) #4
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %0 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwseq, align 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 11
  %2 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce120_enable_display_power_gating, ptr %enable_display_power_gating, align 4
  %update_dchub = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 15
  %3 = ptrtoint ptr %update_dchub to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce120_update_dchub, ptr %update_dchub, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_hw_sequencer_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dce120_enable_display_power_gating(ptr nocapture noundef readnone %dc, i8 noundef zeroext %controller_id, ptr nocapture noundef readnone %dcb, i32 noundef %power_gating) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_update_dchub(ptr nocapture noundef readonly %hws, ptr nocapture noundef %dh_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_mode = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 3
  %0 = ptrtoint ptr %fb_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fb_mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
    i32 0, label %sw.bb66
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hws, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %DCHUB_FB_LOCATION = getelementptr inbounds %struct.dce_hwseq_registers, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %DCHUB_FB_LOCATION to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DCHUB_FB_LOCATION, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %9 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shifts, align 8
  %FB_TOP = getelementptr inbounds %struct.dce_hwseq_shift, ptr %10, i32 0, i32 37
  %11 = ptrtoint ptr %FB_TOP to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %FB_TOP, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %13 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %masks, align 4
  %FB_TOP1 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %14, i32 0, i32 37
  %15 = ptrtoint ptr %FB_TOP1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %FB_TOP1, align 4
  %FB_BASE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %10, i32 0, i32 38
  %17 = ptrtoint ptr %FB_BASE to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %FB_BASE, align 1
  %conv = zext i8 %18 to i32
  %FB_BASE4 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %14, i32 0, i32 38
  %19 = ptrtoint ptr %FB_BASE4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %FB_BASE4, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %4, i32 noundef %8, i32 noundef 2, i8 noundef zeroext %12, i32 noundef %16, i32 noundef 0, i32 noundef %conv, i32 noundef %20, i32 noundef 65535) #4
  %21 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hws, align 8
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %DCHUB_AGP_BASE = getelementptr inbounds %struct.dce_hwseq_registers, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %DCHUB_AGP_BASE to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DCHUB_AGP_BASE, align 4
  %27 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shifts, align 8
  %AGP_BASE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %28, i32 0, i32 40
  %29 = ptrtoint ptr %AGP_BASE to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %AGP_BASE, align 1
  %31 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %masks, align 4
  %AGP_BASE9 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %32, i32 0, i32 40
  %33 = ptrtoint ptr %AGP_BASE9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %AGP_BASE9, align 4
  %35 = ptrtoint ptr %dh_data to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dh_data, align 8
  %37 = lshr i64 %36, 22
  %conv10 = trunc i64 %37 to i32
  %call11 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %22, i32 noundef %26, i32 noundef 1, i8 noundef zeroext %30, i32 noundef %34, i32 noundef %conv10) #4
  %38 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hws, align 8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %DCHUB_AGP_BOT = getelementptr inbounds %struct.dce_hwseq_registers, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %DCHUB_AGP_BOT to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DCHUB_AGP_BOT, align 4
  %44 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts, align 8
  %AGP_BOT = getelementptr inbounds %struct.dce_hwseq_shift, ptr %45, i32 0, i32 41
  %46 = ptrtoint ptr %AGP_BOT to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %AGP_BOT, align 1
  %48 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks, align 4
  %AGP_BOT16 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %49, i32 0, i32 41
  %50 = ptrtoint ptr %AGP_BOT16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %AGP_BOT16, align 4
  %zfb_mc_base_addr = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 1
  %52 = ptrtoint ptr %zfb_mc_base_addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %zfb_mc_base_addr, align 8
  %54 = lshr i64 %53, 22
  %conv18 = trunc i64 %54 to i32
  %call19 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %47, i32 noundef %51, i32 noundef %conv18) #4
  %55 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hws, align 8
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %DCHUB_AGP_TOP = getelementptr inbounds %struct.dce_hwseq_registers, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %DCHUB_AGP_TOP to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %DCHUB_AGP_TOP, align 4
  %61 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %shifts, align 8
  %AGP_TOP = getelementptr inbounds %struct.dce_hwseq_shift, ptr %62, i32 0, i32 42
  %63 = ptrtoint ptr %AGP_TOP to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %AGP_TOP, align 1
  %65 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %masks, align 4
  %AGP_TOP24 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %66, i32 0, i32 42
  %67 = ptrtoint ptr %AGP_TOP24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %AGP_TOP24, align 4
  %69 = ptrtoint ptr %zfb_mc_base_addr to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %zfb_mc_base_addr, align 8
  %zfb_size_in_byte = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 2
  %71 = ptrtoint ptr %zfb_size_in_byte to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %zfb_size_in_byte, align 8
  %add = add i64 %70, 18014398509481983
  %sub = add i64 %add, %72
  %shr26 = lshr i64 %sub, 22
  %conv27 = trunc i64 %shr26 to i32
  %call28 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %56, i32 noundef %60, i32 noundef 1, i8 noundef zeroext %64, i32 noundef %68, i32 noundef %conv27) #4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hws, align 8
  %regs31 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %75 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs31, align 4
  %DCHUB_AGP_BASE32 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %DCHUB_AGP_BASE32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %DCHUB_AGP_BASE32, align 4
  %shifts33 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %79 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %shifts33, align 8
  %AGP_BASE34 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %80, i32 0, i32 40
  %81 = ptrtoint ptr %AGP_BASE34 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %AGP_BASE34, align 1
  %masks35 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %83 = ptrtoint ptr %masks35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %masks35, align 4
  %AGP_BASE36 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %84, i32 0, i32 40
  %85 = ptrtoint ptr %AGP_BASE36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %AGP_BASE36, align 4
  %87 = ptrtoint ptr %dh_data to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %dh_data, align 8
  %89 = lshr i64 %88, 22
  %conv39 = trunc i64 %89 to i32
  %call40 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %74, i32 noundef %78, i32 noundef 1, i8 noundef zeroext %82, i32 noundef %86, i32 noundef %conv39) #4
  %90 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hws, align 8
  %92 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs31, align 4
  %DCHUB_AGP_BOT43 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %DCHUB_AGP_BOT43 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DCHUB_AGP_BOT43, align 4
  %96 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %shifts33, align 8
  %AGP_BOT45 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %97, i32 0, i32 41
  %98 = ptrtoint ptr %AGP_BOT45 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %AGP_BOT45, align 1
  %100 = ptrtoint ptr %masks35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %masks35, align 4
  %AGP_BOT47 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %101, i32 0, i32 41
  %102 = ptrtoint ptr %AGP_BOT47 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %AGP_BOT47, align 4
  %zfb_mc_base_addr48 = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 1
  %104 = ptrtoint ptr %zfb_mc_base_addr48 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %zfb_mc_base_addr48, align 8
  %106 = lshr i64 %105, 22
  %conv50 = trunc i64 %106 to i32
  %call51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 1, i8 noundef zeroext %99, i32 noundef %103, i32 noundef %conv50) #4
  %107 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hws, align 8
  %109 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs31, align 4
  %DCHUB_AGP_TOP54 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %110, i32 0, i32 12
  %111 = ptrtoint ptr %DCHUB_AGP_TOP54 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %DCHUB_AGP_TOP54, align 4
  %113 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %shifts33, align 8
  %AGP_TOP56 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %114, i32 0, i32 42
  %115 = ptrtoint ptr %AGP_TOP56 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %AGP_TOP56, align 1
  %117 = ptrtoint ptr %masks35 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %masks35, align 4
  %AGP_TOP58 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %118, i32 0, i32 42
  %119 = ptrtoint ptr %AGP_TOP58 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %AGP_TOP58, align 4
  %121 = ptrtoint ptr %zfb_mc_base_addr48 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %zfb_mc_base_addr48, align 8
  %zfb_size_in_byte60 = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 2
  %123 = ptrtoint ptr %zfb_size_in_byte60 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %zfb_size_in_byte60, align 8
  %add61 = add i64 %122, 18014398509481983
  %sub62 = add i64 %add61, %124
  %shr63 = lshr i64 %sub62, 22
  %conv64 = trunc i64 %shr63 to i32
  %call65 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %108, i32 noundef %112, i32 noundef 1, i8 noundef zeroext %116, i32 noundef %120, i32 noundef %conv64) #4
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %125 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hws, align 8
  %regs68 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %127 = ptrtoint ptr %regs68 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs68, align 4
  %DCHUB_AGP_BASE69 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %128, i32 0, i32 10
  %129 = ptrtoint ptr %DCHUB_AGP_BASE69 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %DCHUB_AGP_BASE69, align 4
  %shifts70 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %131 = ptrtoint ptr %shifts70 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %shifts70, align 8
  %AGP_BASE71 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %132, i32 0, i32 40
  %133 = ptrtoint ptr %AGP_BASE71 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %AGP_BASE71, align 1
  %masks72 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %135 = ptrtoint ptr %masks72 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %masks72, align 4
  %AGP_BASE73 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %136, i32 0, i32 40
  %137 = ptrtoint ptr %AGP_BASE73 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %AGP_BASE73, align 4
  %call74 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %126, i32 noundef %130, i32 noundef 1, i8 noundef zeroext %134, i32 noundef %138, i32 noundef 0) #4
  %139 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hws, align 8
  %141 = ptrtoint ptr %regs68 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs68, align 4
  %DCHUB_AGP_BOT77 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %142, i32 0, i32 11
  %143 = ptrtoint ptr %DCHUB_AGP_BOT77 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %DCHUB_AGP_BOT77, align 4
  %145 = ptrtoint ptr %shifts70 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %shifts70, align 8
  %AGP_BOT79 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %146, i32 0, i32 41
  %147 = ptrtoint ptr %AGP_BOT79 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %AGP_BOT79, align 1
  %149 = ptrtoint ptr %masks72 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %masks72, align 4
  %AGP_BOT81 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %150, i32 0, i32 41
  %151 = ptrtoint ptr %AGP_BOT81 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %AGP_BOT81, align 4
  %call82 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %140, i32 noundef %144, i32 noundef 1, i8 noundef zeroext %148, i32 noundef %152, i32 noundef 262143) #4
  %153 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hws, align 8
  %155 = ptrtoint ptr %regs68 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs68, align 4
  %DCHUB_AGP_TOP85 = getelementptr inbounds %struct.dce_hwseq_registers, ptr %156, i32 0, i32 12
  %157 = ptrtoint ptr %DCHUB_AGP_TOP85 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %DCHUB_AGP_TOP85, align 4
  %159 = ptrtoint ptr %shifts70 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %shifts70, align 8
  %AGP_TOP87 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %160, i32 0, i32 42
  %161 = ptrtoint ptr %AGP_TOP87 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %AGP_TOP87, align 1
  %163 = ptrtoint ptr %masks72 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %masks72, align 4
  %AGP_TOP89 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %164, i32 0, i32 42
  %165 = ptrtoint ptr %AGP_TOP89 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %AGP_TOP89, align 4
  %call90 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %154, i32 noundef %158, i32 noundef 1, i8 noundef zeroext %162, i32 noundef %166, i32 noundef 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb29, %sw.bb, %entry.sw.epilog_crit_edge
  %dchub_initialzied = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 4
  %167 = ptrtoint ptr %dchub_initialzied to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %dchub_initialzied, align 4
  %dchub_info_valid = getelementptr inbounds %struct.dchub_init_data, ptr %dh_data, i32 0, i32 5
  %168 = ptrtoint ptr %dchub_info_valid to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %dchub_info_valid, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"auto-init"}
