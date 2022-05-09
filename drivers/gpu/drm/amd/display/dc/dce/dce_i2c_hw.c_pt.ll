; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_i2c_hw.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ddc = type { ptr, ptr, %struct.gpio_ddc_hw_info, ptr }
%struct.gpio_ddc_hw_info = type { i8, i32 }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_i2c_hw = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.dce_i2c_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_i2c_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_i2c_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
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
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.setup_engine = private unnamed_addr constant [13 x i8] c"setup_engine\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @acquire_i2c_hw_engine(ptr nocapture noundef %pool, ptr noundef %ddc) local_unnamed_addr #0 align 64 {
entry:
  %arbitrate.i = alloca i32, align 4
  %i2c_hw_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_info = getelementptr inbounds %struct.ddc, ptr %ddc, i32 0, i32 2
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_info, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @dal_ddc_get_line(ptr noundef nonnull %ddc) #4
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_ddc = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ddc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp = icmp slt i32 %call, %5
  br i1 %cmp, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 12, i32 %call
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %i2c_hw_buffer_in_use = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 14
  %8 = ptrtoint ptr %i2c_hw_buffer_in_use to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_hw_buffer_in_use, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arbitrate.i) #4
  %10 = ptrtoint ptr %arbitrate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arbitrate.i, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  %11 = ptrtoint ptr %i2c_hw_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %i2c_hw_status.i, align 4, !annotation !12
  %ctx.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 12
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %HW_STATUS.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %HW_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %HW_STATUS.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 13
  %18 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_DDC1_HW_STATUS.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %DC_I2C_DDC1_HW_STATUS.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %DC_I2C_DDC1_HW_STATUS.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 14
  %22 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %masks.i, align 4
  %DC_I2C_DDC1_HW_STATUS1.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %DC_I2C_DDC1_HW_STATUS1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DC_I2C_DDC1_HW_STATUS1.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %13, i32 noundef %17, i8 noundef zeroext %21, i32 noundef %25, ptr noundef nonnull %i2c_hw_status.i) #4
  %26 = ptrtoint ptr %i2c_hw_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_hw_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %is_engine_available.exit.thread, label %is_engine_available.exit

is_engine_available.exit.thread:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arbitrate.i) #4
  br label %cleanup

is_engine_available.exit:                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i, align 4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %DC_I2C_ARBITRATION.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %DC_I2C_ARBITRATION.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DC_I2C_ARBITRATION.i, align 4
  %34 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_REG_RW_CNTL_STATUS.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 38
  %36 = ptrtoint ptr %DC_I2C_REG_RW_CNTL_STATUS.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DC_I2C_REG_RW_CNTL_STATUS.i, align 1
  %38 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %masks.i, align 4
  %DC_I2C_REG_RW_CNTL_STATUS6.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 38
  %40 = ptrtoint ptr %DC_I2C_REG_RW_CNTL_STATUS6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DC_I2C_REG_RW_CNTL_STATUS6.i, align 4
  %call7.i = call i32 @generic_reg_get(ptr noundef %29, i32 noundef %33, i8 noundef zeroext %37, i32 noundef %41, ptr noundef nonnull %arbitrate.i) #4
  %42 = ptrtoint ptr %arbitrate.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arbitrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp8.i.not = icmp eq i32 %43, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arbitrate.i) #4
  br i1 %cmp8.i.not, label %is_engine_available.exit.cleanup_crit_edge, label %do.body.preheader

is_engine_available.exit.cleanup_crit_edge:       ; preds = %is_engine_available.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.preheader:                                ; preds = %is_engine_available.exit
  %call13 = call i32 @dal_ddc_open(ptr noundef nonnull %ddc, i32 noundef 3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cond = icmp eq i32 %call13, 0
  br i1 %cond, label %do.body.preheader.if.end20_crit_edge, label %if.end16

do.body.preheader.if.end20_crit_edge:             ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end16:                                         ; preds = %do.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 2147480) #4
  %call13.1 = call i32 @dal_ddc_open(ptr noundef nonnull %ddc, i32 noundef 3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cond.1 = icmp eq i32 %call13.1, 0
  br i1 %cond.1, label %if.end16.if.end20_crit_edge, label %if.end16.1

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end16.1:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 2147480) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %do.body.preheader.if.end20_crit_edge
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ddc, ptr %7, align 4
  %47 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %enable_mem_low_power.i = getelementptr inbounds %struct.dc_debug_options, ptr %50, i32 0, i32 78
  %51 = ptrtoint ptr %enable_mem_low_power.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %enable_mem_low_power.i, align 8
  %52 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %bf.cast.not.i = icmp eq i16 %52, 0
  br i1 %bf.cast.not.i, label %if.end20.if.end11.i_crit_edge, label %if.then.i

if.end20.if.end11.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end20
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %DIO_MEM_PWR_CTRL.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %DIO_MEM_PWR_CTRL.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DIO_MEM_PWR_CTRL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then1.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shifts.i, align 4
  %I2C_LIGHT_SLEEP_FORCE.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %58, i32 0, i32 39
  %59 = ptrtoint ptr %I2C_LIGHT_SLEEP_FORCE.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %I2C_LIGHT_SLEEP_FORCE.i, align 1
  %61 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %masks.i, align 4
  %I2C_LIGHT_SLEEP_FORCE5.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %62, i32 0, i32 39
  %63 = ptrtoint ptr %I2C_LIGHT_SLEEP_FORCE5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %I2C_LIGHT_SLEEP_FORCE5.i, align 4
  %call.i47 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %56, i32 noundef 1, i8 noundef zeroext %60, i32 noundef %64, i32 noundef 0) #4
  %65 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx.i, align 4
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %DIO_MEM_PWR_STATUS.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %DIO_MEM_PWR_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DIO_MEM_PWR_STATUS.i, align 4
  %71 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %shifts.i, align 4
  %I2C_MEM_PWR_STATE.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %72, i32 0, i32 40
  %73 = ptrtoint ptr %I2C_MEM_PWR_STATE.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %I2C_MEM_PWR_STATE.i, align 1
  %conv.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %masks.i, align 4
  %I2C_MEM_PWR_STATE10.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %76, i32 0, i32 40
  %77 = ptrtoint ptr %I2C_MEM_PWR_STATE10.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %I2C_MEM_PWR_STATE10.i, align 4
  call void @generic_reg_wait(ptr noundef %66, i32 noundef %70, i32 noundef %conv.i, i32 noundef %78, i32 noundef 0, i32 noundef 0, i32 noundef 5, ptr noundef nonnull @__func__.setup_engine, i32 noundef 307) #4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then1.i, %if.then.i.if.end11.i_crit_edge, %if.end20.if.end11.i_crit_edge
  %79 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx.i, align 4
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %DC_I2C_ARBITRATION.i48 = getelementptr inbounds %struct.dce_i2c_registers, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %DC_I2C_ARBITRATION.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %DC_I2C_ARBITRATION.i48, align 4
  %85 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_SW_USE_I2C_REG_REQ.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %DC_I2C_SW_USE_I2C_REG_REQ.i, align 1
  %89 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SW_USE_I2C_REG_REQ16.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %DC_I2C_SW_USE_I2C_REG_REQ16.i, align 4
  %call17.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %80, i32 noundef %84, i32 noundef 1, i8 noundef zeroext %88, i32 noundef %92, i32 noundef 1) #4
  %93 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctx.i, align 4
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %DC_I2C_ARBITRATION20.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %DC_I2C_ARBITRATION20.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DC_I2C_ARBITRATION20.i, align 4
  %99 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_SW_USE_I2C_REG_REQ22.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ22.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %DC_I2C_SW_USE_I2C_REG_REQ22.i, align 1
  %103 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SW_USE_I2C_REG_REQ24.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %104, i32 0, i32 9
  %105 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ24.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %DC_I2C_SW_USE_I2C_REG_REQ24.i, align 4
  %call25.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %94, i32 noundef %98, i32 noundef 1, i8 noundef zeroext %102, i32 noundef %106, i32 noundef 1) #4
  %107 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctx.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %110, i32 0, i32 2, i32 8
  %111 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i2c_speed_in_khz.i, align 4
  call fastcc void @set_speed(ptr noundef nonnull %7, i32 noundef %112) #4
  %setup_limit.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 8
  %113 = ptrtoint ptr %setup_limit.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %setup_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.not.i = icmp eq i32 %114, 0
  %spec.select.i = select i1 %cmp.not.i, i32 255, i32 %114
  %115 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctx.i, align 4
  %117 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i, align 4
  %DC_I2C_CONTROL.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %DC_I2C_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %DC_I2C_CONTROL.i, align 4
  %121 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_GO.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 14
  %123 = ptrtoint ptr %DC_I2C_GO.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %DC_I2C_GO.i, align 1
  %125 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %masks.i, align 4
  %DC_I2C_GO36.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 14
  %127 = ptrtoint ptr %DC_I2C_GO36.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %DC_I2C_GO36.i, align 4
  %DC_I2C_SOFT_RESET.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 12
  %129 = ptrtoint ptr %DC_I2C_SOFT_RESET.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %DC_I2C_SOFT_RESET.i, align 1
  %conv38.i = zext i8 %130 to i32
  %DC_I2C_SOFT_RESET40.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 12
  %131 = ptrtoint ptr %DC_I2C_SOFT_RESET40.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %DC_I2C_SOFT_RESET40.i, align 4
  %DC_I2C_SEND_RESET.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 15
  %133 = ptrtoint ptr %DC_I2C_SEND_RESET.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %DC_I2C_SEND_RESET.i, align 1
  %conv42.i = zext i8 %134 to i32
  %DC_I2C_SEND_RESET44.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 15
  %135 = ptrtoint ptr %DC_I2C_SEND_RESET44.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %DC_I2C_SEND_RESET44.i, align 4
  %DC_I2C_SW_STATUS_RESET.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 13
  %137 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %DC_I2C_SW_STATUS_RESET.i, align 1
  %conv46.i = zext i8 %138 to i32
  %DC_I2C_SW_STATUS_RESET48.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 13
  %139 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET48.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %DC_I2C_SW_STATUS_RESET48.i, align 4
  %DC_I2C_TRANSACTION_COUNT.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 16
  %141 = ptrtoint ptr %DC_I2C_TRANSACTION_COUNT.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %DC_I2C_TRANSACTION_COUNT.i, align 1
  %conv50.i = zext i8 %142 to i32
  %DC_I2C_TRANSACTION_COUNT52.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 16
  %143 = ptrtoint ptr %DC_I2C_TRANSACTION_COUNT52.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %DC_I2C_TRANSACTION_COUNT52.i, align 4
  %DC_I2C_DDC_SELECT.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %122, i32 0, i32 17
  %145 = ptrtoint ptr %DC_I2C_DDC_SELECT.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %DC_I2C_DDC_SELECT.i, align 1
  %conv54.i = zext i8 %146 to i32
  %DC_I2C_DDC_SELECT56.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %126, i32 0, i32 17
  %147 = ptrtoint ptr %DC_I2C_DDC_SELECT56.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %DC_I2C_DDC_SELECT56.i, align 4
  %engine_id.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 7
  %149 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %engine_id.i, align 4
  %call57.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %116, i32 noundef %120, i32 noundef 6, i8 noundef zeroext %124, i32 noundef %128, i32 noundef 0, i32 noundef %conv38.i, i32 noundef %132, i32 noundef 0, i32 noundef %conv42.i, i32 noundef %136, i32 noundef 0, i32 noundef %conv46.i, i32 noundef %140, i32 noundef 1, i32 noundef %conv50.i, i32 noundef %144, i32 noundef 0, i32 noundef %conv54.i, i32 noundef %148, i32 noundef %150) #4
  %send_reset_length.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %7, i32 0, i32 9
  %151 = ptrtoint ptr %send_reset_length.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %send_reset_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp58.i = icmp eq i32 %152, 0
  %153 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctx.i, align 4
  %155 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %159 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_DDC1_TIME_LIMIT.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %DC_I2C_DDC1_TIME_LIMIT.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %DC_I2C_DDC1_TIME_LIMIT.i, align 1
  %163 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %masks.i, align 4
  %DC_I2C_DDC1_TIME_LIMIT65.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %DC_I2C_DDC1_TIME_LIMIT65.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %DC_I2C_DDC1_TIME_LIMIT65.i, align 4
  br i1 %cmp58.i, label %if.then60.i, label %if.else.i

if.then60.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %167 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %160, align 1
  %conv67.i = zext i8 %168 to i32
  %169 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %164, align 4
  %call70.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %154, i32 noundef %158, i32 noundef 2, i8 noundef zeroext %162, i32 noundef %166, i32 noundef %spec.select.i, i32 noundef %conv67.i, i32 noundef %170, i32 noundef 1) #4
  br label %setup_engine.exit

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %DC_I2C_DDC1_SEND_RESET_LENGTH.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %160, i32 0, i32 37
  %171 = ptrtoint ptr %DC_I2C_DDC1_SEND_RESET_LENGTH.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %DC_I2C_DDC1_SEND_RESET_LENGTH.i, align 1
  %conv80.i = zext i8 %172 to i32
  %DC_I2C_DDC1_SEND_RESET_LENGTH82.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %164, i32 0, i32 37
  %173 = ptrtoint ptr %DC_I2C_DDC1_SEND_RESET_LENGTH82.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %DC_I2C_DDC1_SEND_RESET_LENGTH82.i, align 4
  %175 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %160, align 1
  %conv85.i = zext i8 %176 to i32
  %177 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %164, align 4
  %call88.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %154, i32 noundef %158, i32 noundef 3, i8 noundef zeroext %162, i32 noundef %166, i32 noundef %spec.select.i, i32 noundef %conv80.i, i32 noundef %174, i32 noundef %152, i32 noundef %conv85.i, i32 noundef %178, i32 noundef 1) #4
  br label %setup_engine.exit

setup_engine.exit:                                ; preds = %if.else.i, %if.then60.i
  %179 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ctx.i, align 4
  %181 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i, align 4
  %DC_I2C_ARBITRATION92.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %DC_I2C_ARBITRATION92.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %DC_I2C_ARBITRATION92.i, align 4
  %185 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_NO_QUEUED_SW_GO.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %186, i32 0, i32 10
  %187 = ptrtoint ptr %DC_I2C_NO_QUEUED_SW_GO.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %DC_I2C_NO_QUEUED_SW_GO.i, align 1
  %189 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %masks.i, align 4
  %DC_I2C_NO_QUEUED_SW_GO95.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %190, i32 0, i32 10
  %191 = ptrtoint ptr %DC_I2C_NO_QUEUED_SW_GO95.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %DC_I2C_NO_QUEUED_SW_GO95.i, align 4
  %call96.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %180, i32 noundef %184, i32 noundef 1, i8 noundef zeroext %188, i32 noundef %192, i32 noundef 0) #4
  %193 = ptrtoint ptr %i2c_hw_buffer_in_use to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %i2c_hw_buffer_in_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %setup_engine.exit, %if.end16.1, %is_engine_available.exit.cleanup_crit_edge, %is_engine_available.exit.thread, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %setup_engine.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %is_engine_available.exit.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %is_engine_available.exit.thread ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then2.cleanup_crit_edge ], [ null, %if.end16.1 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_get_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce_i2c_submit_command_hw(ptr nocapture noundef writeonly %pool, ptr nocapture noundef readnone %ddc, ptr nocapture noundef readonly %cmd, ptr noundef %dce_i2c_hw) local_unnamed_addr #0 align 64 {
entry:
  %i2c_sw_status.i = alloca i32, align 4
  %i2c_data.i.i = alloca i32, align 4
  %i2c_sw_status.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  tail call fastcc void @set_speed(ptr noundef %dce_i2c_hw, i32 noundef %1)
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number_of_payloads, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp43.not = icmp eq i8 %3, 0
  br i1 %cmp43.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %buffer_size.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %buffer_used_bytes.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %transaction_count.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %ctx64.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %regs65.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %shifts66.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %masks68.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %buffer_used_write.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i8 [ %3, %while.body.lr.ph ], [ %373, %while.cond.while.body_crit_edge ]
  %index_of_payload.044 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.while.body_crit_edge ]
  %conv = zext i8 %index_of_payload.044 to i32
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %add.ptr = getelementptr %struct.i2c_payload, ptr %6, i32 %conv
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  %length.i = getelementptr %struct.i2c_payload, ptr %6, i32 %conv, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %11 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_size.i.i, align 4
  %13 = ptrtoint ptr %buffer_used_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_used_bytes.i.i, align 4
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %10, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %conv1 = zext i8 %4 to i32
  %sub = add nsw i32 %conv1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp6.not = icmp eq i32 %sub, %conv
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %cond.i = select i1 %cmp6.not, i32 16, i32 80
  %cond4.i = select i1 %cmp6.not, i32 0, i32 64
  %storemerge.i = select i1 %tobool.not.i, i32 %cond.i, i32 %cond4.i
  %address.i = getelementptr %struct.i2c_payload, ptr %6, i32 %conv, i32 1
  %17 = ptrtoint ptr %address.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %address.i, align 1
  %shl.i = shl i8 %18, 1
  %19 = or i8 %shl.i, %16
  %or.i = xor i8 %19, 1
  %data.i = getelementptr %struct.i2c_payload, ptr %6, i32 %conv, i32 3
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.get_transaction_timeout_hw.exit.i_crit_edge, label %if.end.i.i

if.end.i.get_transaction_timeout_hw.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_transaction_timeout_hw.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.i.i = udiv i32 32000, %8
  %22 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transaction_count.i.i, align 4
  %shl3.i.i = shl i32 %23, 1
  %reass.add.i = add i32 %14, %10
  %reass.mul.i = shl i32 %reass.add.i, 3
  %add1.i.i = add i32 %reass.mul.i, 10
  %add5.i.i = add i32 %add1.i.i, %shl3.i.i
  %mul.i.i = mul i32 %add5.i.i, %div.i.i
  br label %get_transaction_timeout_hw.exit.i

get_transaction_timeout_hw.exit.i:                ; preds = %if.end.i.i, %if.end.i.get_transaction_timeout_hw.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.end.i.i ], [ 0, %if.end.i.get_transaction_timeout_hw.exit.i_crit_edge ]
  %call.i.i.i = call fastcc zeroext i1 @is_hw_busy(ptr noundef %dce_i2c_hw) #4
  br i1 %call.i.i.i, label %get_transaction_timeout_hw.exit.i.while.end_crit_edge, label %if.end.i.i.i

get_transaction_timeout_hw.exit.i.while.end_crit_edge: ; preds = %get_transaction_timeout_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i.i.i:                                     ; preds = %get_transaction_timeout_hw.exit.i
  %24 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transaction_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i.i.i = icmp eq i32 %25, 3
  br i1 %cmp.i.i.i, label %sw.bb98.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cmp2.i.i.i = select i1 %not.tobool.not.i, i1 %cmp6.not, i1 false
  %and.i.i.i = and i32 %storemerge.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %26 = or i1 %cmp2.i.i.i, %tobool.i.i.i
  %27 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %lor.lhs.false.i.i.i.sw.epilog.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb28.i.i.i
    i32 2, label %sw.bb63.i.i.i
  ]

lor.lhs.false.i.i.i.sw.epilog.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx64.i.i.i, align 4
  %30 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_TRANSACTION0.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %DC_I2C_TRANSACTION0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DC_I2C_TRANSACTION0.i.i.i, align 4
  %34 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK0.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %DC_I2C_STOP_ON_NACK0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DC_I2C_STOP_ON_NACK0.i.i.i, align 1
  %38 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK05.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 26
  %40 = ptrtoint ptr %DC_I2C_STOP_ON_NACK05.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DC_I2C_STOP_ON_NACK05.i.i.i, align 4
  %DC_I2C_START0.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 27
  %42 = ptrtoint ptr %DC_I2C_START0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %DC_I2C_START0.i.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i32
  %DC_I2C_START08.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 27
  %44 = ptrtoint ptr %DC_I2C_START08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DC_I2C_START08.i.i.i, align 4
  %DC_I2C_RW0.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 28
  %46 = ptrtoint ptr %DC_I2C_RW0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %DC_I2C_RW0.i.i.i, align 1
  %conv10.i.i.i = zext i8 %47 to i32
  %DC_I2C_RW012.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 28
  %48 = ptrtoint ptr %DC_I2C_RW012.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %DC_I2C_RW012.i.i.i, align 4
  %and14.i.i.i = lshr exact i32 %storemerge.i, 4
  %and14.lobit.i.i.i = and i32 %and14.i.i.i, 1
  %DC_I2C_COUNT0.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 30
  %50 = ptrtoint ptr %DC_I2C_COUNT0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %DC_I2C_COUNT0.i.i.i, align 1
  %conv18.i.i.i = zext i8 %51 to i32
  %DC_I2C_COUNT020.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 30
  %52 = ptrtoint ptr %DC_I2C_COUNT020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DC_I2C_COUNT020.i.i.i, align 4
  %DC_I2C_STOP0.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %35, i32 0, i32 29
  %54 = ptrtoint ptr %DC_I2C_STOP0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %DC_I2C_STOP0.i.i.i, align 1
  %conv22.i.i.i = zext i8 %55 to i32
  %DC_I2C_STOP024.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %39, i32 0, i32 29
  %56 = ptrtoint ptr %DC_I2C_STOP024.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DC_I2C_STOP024.i.i.i, align 4
  %cond.i.i.i = zext i1 %26 to i32
  %call27.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %29, i32 noundef %33, i32 noundef 5, i8 noundef zeroext %37, i32 noundef %41, i32 noundef 1, i32 noundef %conv.i.i.i, i32 noundef %45, i32 noundef 1, i32 noundef %conv10.i.i.i, i32 noundef %49, i32 noundef %and14.lobit.i.i.i, i32 noundef %conv18.i.i.i, i32 noundef %53, i32 noundef %10, i32 noundef %conv22.i.i.i, i32 noundef %57, i32 noundef %cond.i.i.i) #4
  br label %sw.epilog.i.i.i

sw.bb28.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx64.i.i.i, align 4
  %60 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_TRANSACTION1.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %DC_I2C_TRANSACTION1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %DC_I2C_TRANSACTION1.i.i.i, align 4
  %64 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK032.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %65, i32 0, i32 26
  %66 = ptrtoint ptr %DC_I2C_STOP_ON_NACK032.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %DC_I2C_STOP_ON_NACK032.i.i.i, align 1
  %68 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK034.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %69, i32 0, i32 26
  %70 = ptrtoint ptr %DC_I2C_STOP_ON_NACK034.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %DC_I2C_STOP_ON_NACK034.i.i.i, align 4
  %DC_I2C_START036.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %65, i32 0, i32 27
  %72 = ptrtoint ptr %DC_I2C_START036.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %DC_I2C_START036.i.i.i, align 1
  %conv37.i.i.i = zext i8 %73 to i32
  %DC_I2C_START039.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %69, i32 0, i32 27
  %74 = ptrtoint ptr %DC_I2C_START039.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DC_I2C_START039.i.i.i, align 4
  %DC_I2C_RW041.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %65, i32 0, i32 28
  %76 = ptrtoint ptr %DC_I2C_RW041.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %DC_I2C_RW041.i.i.i, align 1
  %conv42.i.i.i = zext i8 %77 to i32
  %DC_I2C_RW044.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %69, i32 0, i32 28
  %78 = ptrtoint ptr %DC_I2C_RW044.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %DC_I2C_RW044.i.i.i, align 4
  %and46.i.i.i = lshr exact i32 %storemerge.i, 4
  %and46.lobit.i.i.i = and i32 %and46.i.i.i, 1
  %DC_I2C_COUNT050.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %65, i32 0, i32 30
  %80 = ptrtoint ptr %DC_I2C_COUNT050.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %DC_I2C_COUNT050.i.i.i, align 1
  %conv51.i.i.i = zext i8 %81 to i32
  %DC_I2C_COUNT053.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %69, i32 0, i32 30
  %82 = ptrtoint ptr %DC_I2C_COUNT053.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DC_I2C_COUNT053.i.i.i, align 4
  %DC_I2C_STOP055.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %65, i32 0, i32 29
  %84 = ptrtoint ptr %DC_I2C_STOP055.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %DC_I2C_STOP055.i.i.i, align 1
  %conv56.i.i.i = zext i8 %85 to i32
  %DC_I2C_STOP058.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %69, i32 0, i32 29
  %86 = ptrtoint ptr %DC_I2C_STOP058.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %DC_I2C_STOP058.i.i.i, align 4
  %cond61.i.i.i = zext i1 %26 to i32
  %call62.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %59, i32 noundef %63, i32 noundef 5, i8 noundef zeroext %67, i32 noundef %71, i32 noundef 1, i32 noundef %conv37.i.i.i, i32 noundef %75, i32 noundef 1, i32 noundef %conv42.i.i.i, i32 noundef %79, i32 noundef %and46.lobit.i.i.i, i32 noundef %conv51.i.i.i, i32 noundef %83, i32 noundef %10, i32 noundef %conv56.i.i.i, i32 noundef %87, i32 noundef %cond61.i.i.i) #4
  br label %sw.epilog.i.i.i

sw.bb63.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx64.i.i.i, align 4
  %90 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_TRANSACTION2.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %DC_I2C_TRANSACTION2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DC_I2C_TRANSACTION2.i.i.i, align 4
  %94 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK067.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %95, i32 0, i32 26
  %96 = ptrtoint ptr %DC_I2C_STOP_ON_NACK067.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %DC_I2C_STOP_ON_NACK067.i.i.i, align 1
  %98 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK069.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %99, i32 0, i32 26
  %100 = ptrtoint ptr %DC_I2C_STOP_ON_NACK069.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %DC_I2C_STOP_ON_NACK069.i.i.i, align 4
  %DC_I2C_START071.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %95, i32 0, i32 27
  %102 = ptrtoint ptr %DC_I2C_START071.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %DC_I2C_START071.i.i.i, align 1
  %conv72.i.i.i = zext i8 %103 to i32
  %DC_I2C_START074.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %99, i32 0, i32 27
  %104 = ptrtoint ptr %DC_I2C_START074.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %DC_I2C_START074.i.i.i, align 4
  %DC_I2C_RW076.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %95, i32 0, i32 28
  %106 = ptrtoint ptr %DC_I2C_RW076.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %DC_I2C_RW076.i.i.i, align 1
  %conv77.i.i.i = zext i8 %107 to i32
  %DC_I2C_RW079.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %99, i32 0, i32 28
  %108 = ptrtoint ptr %DC_I2C_RW079.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %DC_I2C_RW079.i.i.i, align 4
  %and81.i.i.i = lshr exact i32 %storemerge.i, 4
  %and81.lobit.i.i.i = and i32 %and81.i.i.i, 1
  %DC_I2C_COUNT085.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %95, i32 0, i32 30
  %110 = ptrtoint ptr %DC_I2C_COUNT085.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %DC_I2C_COUNT085.i.i.i, align 1
  %conv86.i.i.i = zext i8 %111 to i32
  %DC_I2C_COUNT088.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %99, i32 0, i32 30
  %112 = ptrtoint ptr %DC_I2C_COUNT088.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %DC_I2C_COUNT088.i.i.i, align 4
  %DC_I2C_STOP090.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %95, i32 0, i32 29
  %114 = ptrtoint ptr %DC_I2C_STOP090.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %DC_I2C_STOP090.i.i.i, align 1
  %conv91.i.i.i = zext i8 %115 to i32
  %DC_I2C_STOP093.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %99, i32 0, i32 29
  %116 = ptrtoint ptr %DC_I2C_STOP093.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %DC_I2C_STOP093.i.i.i, align 4
  %cond96.i.i.i = zext i1 %26 to i32
  %call97.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 5, i8 noundef zeroext %97, i32 noundef %101, i32 noundef 1, i32 noundef %conv72.i.i.i, i32 noundef %105, i32 noundef 1, i32 noundef %conv77.i.i.i, i32 noundef %109, i32 noundef %and81.lobit.i.i.i, i32 noundef %conv86.i.i.i, i32 noundef %113, i32 noundef %10, i32 noundef %conv91.i.i.i, i32 noundef %117, i32 noundef %cond96.i.i.i) #4
  br label %sw.epilog.i.i.i

sw.bb98.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx64.i.i.i, align 4
  %120 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_TRANSACTION3.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %DC_I2C_TRANSACTION3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %DC_I2C_TRANSACTION3.i.i.i, align 4
  %124 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK0102.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %125, i32 0, i32 26
  %126 = ptrtoint ptr %DC_I2C_STOP_ON_NACK0102.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %DC_I2C_STOP_ON_NACK0102.i.i.i, align 1
  %128 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_STOP_ON_NACK0104.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %129, i32 0, i32 26
  %130 = ptrtoint ptr %DC_I2C_STOP_ON_NACK0104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %DC_I2C_STOP_ON_NACK0104.i.i.i, align 4
  %DC_I2C_START0106.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %125, i32 0, i32 27
  %132 = ptrtoint ptr %DC_I2C_START0106.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %DC_I2C_START0106.i.i.i, align 1
  %conv107.i.i.i = zext i8 %133 to i32
  %DC_I2C_START0109.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %129, i32 0, i32 27
  %134 = ptrtoint ptr %DC_I2C_START0109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %DC_I2C_START0109.i.i.i, align 4
  %DC_I2C_RW0111.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %125, i32 0, i32 28
  %136 = ptrtoint ptr %DC_I2C_RW0111.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %DC_I2C_RW0111.i.i.i, align 1
  %conv112.i.i.i = zext i8 %137 to i32
  %DC_I2C_RW0114.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %129, i32 0, i32 28
  %138 = ptrtoint ptr %DC_I2C_RW0114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DC_I2C_RW0114.i.i.i, align 4
  %and116.i.i.i = lshr exact i32 %storemerge.i, 4
  %and116.lobit.i.i.i = and i32 %and116.i.i.i, 1
  %DC_I2C_COUNT0120.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %125, i32 0, i32 30
  %140 = ptrtoint ptr %DC_I2C_COUNT0120.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %DC_I2C_COUNT0120.i.i.i, align 1
  %conv121.i.i.i = zext i8 %141 to i32
  %DC_I2C_COUNT0123.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %129, i32 0, i32 30
  %142 = ptrtoint ptr %DC_I2C_COUNT0123.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DC_I2C_COUNT0123.i.i.i, align 4
  %DC_I2C_STOP0125.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %125, i32 0, i32 29
  %144 = ptrtoint ptr %DC_I2C_STOP0125.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %DC_I2C_STOP0125.i.i.i, align 1
  %conv126.i.i.i = zext i8 %145 to i32
  %DC_I2C_STOP0128.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %129, i32 0, i32 29
  %146 = ptrtoint ptr %DC_I2C_STOP0128.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %DC_I2C_STOP0128.i.i.i, align 4
  %call132.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %119, i32 noundef %123, i32 noundef 5, i8 noundef zeroext %127, i32 noundef %131, i32 noundef 1, i32 noundef %conv107.i.i.i, i32 noundef %135, i32 noundef 1, i32 noundef %conv112.i.i.i, i32 noundef %139, i32 noundef %and116.lobit.i.i.i, i32 noundef %conv121.i.i.i, i32 noundef %143, i32 noundef %10, i32 noundef %conv126.i.i.i, i32 noundef %147, i32 noundef 1) #4
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb98.i.i.i, %sw.bb63.i.i.i, %sw.bb28.i.i.i, %sw.bb.i.i.i, %lor.lhs.false.i.i.i.sw.epilog.i.i.i_crit_edge
  %148 = phi i1 [ %26, %lor.lhs.false.i.i.i.sw.epilog.i.i.i_crit_edge ], [ true, %sw.bb98.i.i.i ], [ %26, %sw.bb63.i.i.i ], [ %26, %sw.bb28.i.i.i ], [ %26, %sw.bb.i.i.i ]
  %149 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %transaction_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp134.i.i.i = icmp eq i32 %150, 0
  %151 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx64.i.i.i, align 4
  %153 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_DATA.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %154, i32 0, i32 10
  %155 = ptrtoint ptr %DC_I2C_DATA.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %DC_I2C_DATA.i.i.i, align 4
  %157 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_DATA_RW.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %158, i32 0, i32 31
  %159 = ptrtoint ptr %DC_I2C_DATA_RW.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %DC_I2C_DATA_RW.i.i.i, align 1
  %161 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_DATA_RW141.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %162, i32 0, i32 31
  %163 = ptrtoint ptr %DC_I2C_DATA_RW141.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %DC_I2C_DATA_RW141.i.i.i, align 4
  %DC_I2C_DATA143.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %158, i32 0, i32 32
  %165 = ptrtoint ptr %DC_I2C_DATA143.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %DC_I2C_DATA143.i.i.i, align 1
  %conv144.i.i.i = zext i8 %166 to i32
  %DC_I2C_DATA146.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %162, i32 0, i32 32
  %167 = ptrtoint ptr %DC_I2C_DATA146.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %DC_I2C_DATA146.i.i.i, align 4
  %conv147.i.i.i = zext i8 %or.i to i32
  br i1 %cmp134.i.i.i, label %if.then136.i.i.i, label %if.else.i.i.i

if.then136.i.i.i:                                 ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %DC_I2C_INDEX.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %158, i32 0, i32 33
  %169 = ptrtoint ptr %DC_I2C_INDEX.i.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %DC_I2C_INDEX.i.i.i, align 1
  %conv149.i.i.i = zext i8 %170 to i32
  %DC_I2C_INDEX151.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %162, i32 0, i32 33
  %171 = ptrtoint ptr %DC_I2C_INDEX151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %DC_I2C_INDEX151.i.i.i, align 4
  %DC_I2C_INDEX_WRITE.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %158, i32 0, i32 34
  %173 = ptrtoint ptr %DC_I2C_INDEX_WRITE.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %DC_I2C_INDEX_WRITE.i.i.i, align 1
  %conv153.i.i.i = zext i8 %174 to i32
  %DC_I2C_INDEX_WRITE155.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %162, i32 0, i32 34
  %175 = ptrtoint ptr %DC_I2C_INDEX_WRITE155.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %DC_I2C_INDEX_WRITE155.i.i.i, align 4
  %call156.i.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %152, i32 noundef %156, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %160, i32 noundef %164, i32 noundef 0, i32 noundef %conv144.i.i.i, i32 noundef %168, i32 noundef %conv147.i.i.i, i32 noundef %conv149.i.i.i, i32 noundef %172, i32 noundef 0, i32 noundef %conv153.i.i.i, i32 noundef %176, i32 noundef 1) #4
  %177 = ptrtoint ptr %buffer_used_write.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %buffer_used_write.i.i.i, align 4
  br label %if.end172.i.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call171.i.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %152, i32 noundef %156, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %160, i32 noundef %164, i32 noundef 0, i32 noundef %conv144.i.i.i, i32 noundef %168, i32 noundef %conv147.i.i.i) #4
  br label %if.end172.i.i.i

if.end172.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then136.i.i.i
  %value.0.i.i.i = phi i32 [ %call156.i.i.i, %if.then136.i.i.i ], [ %call171.i.i.i, %if.else.i.i.i ]
  %178 = ptrtoint ptr %buffer_used_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %buffer_used_write.i.i.i, align 4
  %inc.i.i.i = add i32 %179, 1
  store i32 %inc.i.i.i, ptr %buffer_used_write.i.i.i, align 4
  %and175.i.i.i = and i32 %storemerge.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i.i.i)
  %tobool176.not.i.i.i = icmp eq i32 %and175.i.i.i, 0
  br i1 %tobool176.not.i.i.i, label %while.cond.preheader.i.i.i, label %if.end172.i.i.i.process_transaction.exit.i.i_crit_edge

if.end172.i.i.i.process_transaction.exit.i.i_crit_edge: ; preds = %if.end172.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %process_transaction.exit.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.end172.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool178.not302.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool178.not302.i.i.i, label %while.cond.preheader.i.i.i.process_transaction.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.process_transaction.exit.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %process_transaction.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %buffer.0304.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %21, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %length.0303.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %10, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %180 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctx64.i.i.i, align 4
  %182 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_DATA181.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %183, i32 0, i32 10
  %184 = ptrtoint ptr %DC_I2C_DATA181.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %DC_I2C_DATA181.i.i.i, align 4
  %186 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_INDEX_WRITE183.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %187, i32 0, i32 34
  %188 = ptrtoint ptr %DC_I2C_INDEX_WRITE183.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %DC_I2C_INDEX_WRITE183.i.i.i, align 1
  %190 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_INDEX_WRITE185.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %191, i32 0, i32 34
  %192 = ptrtoint ptr %DC_I2C_INDEX_WRITE185.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %DC_I2C_INDEX_WRITE185.i.i.i, align 4
  %DC_I2C_DATA187.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %187, i32 0, i32 32
  %194 = ptrtoint ptr %DC_I2C_DATA187.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %DC_I2C_DATA187.i.i.i, align 1
  %conv188.i.i.i = zext i8 %195 to i32
  %DC_I2C_DATA190.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %191, i32 0, i32 32
  %196 = ptrtoint ptr %DC_I2C_DATA190.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %DC_I2C_DATA190.i.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buffer.0304.i.i.i, i32 1
  %198 = ptrtoint ptr %buffer.0304.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %buffer.0304.i.i.i, align 1
  %conv191.i.i.i = zext i8 %199 to i32
  %call192.i.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %181, i32 noundef %185, i32 noundef %value.0.i.i.i, i32 noundef 2, i8 noundef zeroext %189, i32 noundef %193, i32 noundef 0, i32 noundef %conv188.i.i.i, i32 noundef %197, i32 noundef %conv191.i.i.i) #4
  %200 = ptrtoint ptr %buffer_used_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %buffer_used_write.i.i.i, align 4
  %inc194.i.i.i = add i32 %201, 1
  store i32 %inc194.i.i.i, ptr %buffer_used_write.i.i.i, align 4
  %dec.i.i.i = add i32 %length.0303.i.i.i, -1
  %tobool178.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool178.not.i.i.i, label %while.body.i.i.i.process_transaction.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

while.body.i.i.i.process_transaction.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %process_transaction.exit.i.i

process_transaction.exit.i.i:                     ; preds = %while.body.i.i.i.process_transaction.exit.i.i_crit_edge, %while.cond.preheader.i.i.i.process_transaction.exit.i.i_crit_edge, %if.end172.i.i.i.process_transaction.exit.i.i_crit_edge
  %length.1.i.i.i = phi i32 [ %10, %if.end172.i.i.i.process_transaction.exit.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.process_transaction.exit.i.i_crit_edge ], [ 0, %while.body.i.i.i.process_transaction.exit.i.i_crit_edge ]
  %202 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %transaction_count.i.i, align 4
  %inc197.i.i.i = add i32 %203, 1
  store i32 %inc197.i.i.i, ptr %transaction_count.i.i, align 4
  %add.i.i.i = add nuw i32 %length.1.i.i.i, 1
  %204 = ptrtoint ptr %buffer_used_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %buffer_used_bytes.i.i, align 4
  %add198.i.i.i = add i32 %add.i.i.i, %205
  store i32 %add198.i.i.i, ptr %buffer_used_bytes.i.i, align 4
  br i1 %148, label %if.end.i53.i, label %process_transaction.exit.i.i.if.end22.i_crit_edge

process_transaction.exit.i.i.if.end22.i_crit_edge: ; preds = %process_transaction.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.end.i53.i:                                     ; preds = %process_transaction.exit.i.i
  %call1.i.i = call fastcc zeroext i1 @is_hw_busy(ptr noundef %dce_i2c_hw) #4
  br i1 %call1.i.i, label %if.end.i53.i.while.end_crit_edge, label %if.end4.i.i

if.end.i53.i.while.end_crit_edge:                 ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end4.i.i:                                      ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #6
  %206 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctx64.i.i.i, align 4
  %208 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_CONTROL.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %DC_I2C_CONTROL.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %DC_I2C_CONTROL.i.i.i, align 4
  %212 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_SW_STATUS_RESET.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %213, i32 0, i32 13
  %214 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %DC_I2C_SW_STATUS_RESET.i.i.i, align 1
  %216 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_SW_STATUS_RESET1.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %217, i32 0, i32 13
  %218 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %DC_I2C_SW_STATUS_RESET1.i.i.i, align 4
  %conv.i14.i.i = zext i8 %215 to i32
  %call.i15.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %207, i32 noundef %211, i32 noundef 2, i8 noundef zeroext %215, i32 noundef %219, i32 noundef 1, i32 noundef %conv.i14.i.i, i32 noundef %219, i32 noundef 1) #4
  %220 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ctx64.i.i.i, align 4
  %222 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs65.i.i.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %226 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_DDC1_DATA_DRIVE_EN.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %DC_I2C_DDC1_DATA_DRIVE_EN.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %DC_I2C_DDC1_DATA_DRIVE_EN.i.i.i, align 1
  %230 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_DDC1_DATA_DRIVE_EN1.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %DC_I2C_DDC1_DATA_DRIVE_EN1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %DC_I2C_DDC1_DATA_DRIVE_EN1.i.i.i, align 4
  %DC_I2C_DDC1_CLK_DRIVE_EN.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %227, i32 0, i32 3
  %234 = ptrtoint ptr %DC_I2C_DDC1_CLK_DRIVE_EN.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %DC_I2C_DDC1_CLK_DRIVE_EN.i.i.i, align 1
  %conv.i20.i.i = zext i8 %235 to i32
  %DC_I2C_DDC1_CLK_DRIVE_EN4.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %231, i32 0, i32 3
  %236 = ptrtoint ptr %DC_I2C_DDC1_CLK_DRIVE_EN4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %DC_I2C_DDC1_CLK_DRIVE_EN4.i.i.i, align 4
  %DC_I2C_DDC1_DATA_DRIVE_SEL.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %227, i32 0, i32 4
  %238 = ptrtoint ptr %DC_I2C_DDC1_DATA_DRIVE_SEL.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %DC_I2C_DDC1_DATA_DRIVE_SEL.i.i.i, align 1
  %conv6.i.i.i = zext i8 %239 to i32
  %DC_I2C_DDC1_DATA_DRIVE_SEL8.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %231, i32 0, i32 4
  %240 = ptrtoint ptr %DC_I2C_DDC1_DATA_DRIVE_SEL8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %DC_I2C_DDC1_DATA_DRIVE_SEL8.i.i.i, align 4
  %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %227, i32 0, i32 5
  %242 = ptrtoint ptr %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY.i.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY.i.i.i, align 1
  %conv10.i21.i.i = zext i8 %243 to i32
  %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY12.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %231, i32 0, i32 5
  %244 = ptrtoint ptr %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %DC_I2C_DDC1_INTRA_TRANSACTION_DELAY12.i.i.i, align 4
  %DC_I2C_DDC1_INTRA_BYTE_DELAY.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %227, i32 0, i32 6
  %246 = ptrtoint ptr %DC_I2C_DDC1_INTRA_BYTE_DELAY.i.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %DC_I2C_DDC1_INTRA_BYTE_DELAY.i.i.i, align 1
  %conv14.i.i.i = zext i8 %247 to i32
  %DC_I2C_DDC1_INTRA_BYTE_DELAY16.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %231, i32 0, i32 6
  %248 = ptrtoint ptr %DC_I2C_DDC1_INTRA_BYTE_DELAY16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %DC_I2C_DDC1_INTRA_BYTE_DELAY16.i.i.i, align 4
  %call.i22.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %221, i32 noundef %225, i32 noundef 5, i8 noundef zeroext %229, i32 noundef %233, i32 noundef 0, i32 noundef %conv.i20.i.i, i32 noundef %237, i32 noundef 0, i32 noundef %conv6.i.i.i, i32 noundef %241, i32 noundef 0, i32 noundef %conv10.i21.i.i, i32 noundef %245, i32 noundef 0, i32 noundef %conv14.i.i.i, i32 noundef %249, i32 noundef 0) #4
  %250 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ctx64.i.i.i, align 4
  %252 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_CONTROL.i23.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %253, i32 0, i32 4
  %254 = ptrtoint ptr %DC_I2C_CONTROL.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %DC_I2C_CONTROL.i23.i.i, align 4
  %256 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_SOFT_RESET.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %257, i32 0, i32 12
  %258 = ptrtoint ptr %DC_I2C_SOFT_RESET.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %DC_I2C_SOFT_RESET.i.i.i, align 1
  %260 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_SOFT_RESET21.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %261, i32 0, i32 12
  %262 = ptrtoint ptr %DC_I2C_SOFT_RESET21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %DC_I2C_SOFT_RESET21.i.i.i, align 4
  %DC_I2C_SW_STATUS_RESET.i24.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %257, i32 0, i32 13
  %264 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET.i24.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %DC_I2C_SW_STATUS_RESET.i24.i.i, align 1
  %conv23.i.i.i = zext i8 %265 to i32
  %DC_I2C_SW_STATUS_RESET25.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %261, i32 0, i32 13
  %266 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %DC_I2C_SW_STATUS_RESET25.i.i.i, align 4
  %DC_I2C_SEND_RESET.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %257, i32 0, i32 15
  %268 = ptrtoint ptr %DC_I2C_SEND_RESET.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %DC_I2C_SEND_RESET.i.i.i, align 1
  %conv27.i.i.i = zext i8 %269 to i32
  %DC_I2C_SEND_RESET29.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %261, i32 0, i32 15
  %270 = ptrtoint ptr %DC_I2C_SEND_RESET29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %DC_I2C_SEND_RESET29.i.i.i, align 4
  %DC_I2C_GO.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %257, i32 0, i32 14
  %272 = ptrtoint ptr %DC_I2C_GO.i.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %DC_I2C_GO.i.i.i, align 1
  %conv31.i.i.i = zext i8 %273 to i32
  %DC_I2C_GO33.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %261, i32 0, i32 14
  %274 = ptrtoint ptr %DC_I2C_GO33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %DC_I2C_GO33.i.i.i, align 4
  %DC_I2C_TRANSACTION_COUNT.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %257, i32 0, i32 16
  %276 = ptrtoint ptr %DC_I2C_TRANSACTION_COUNT.i.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %DC_I2C_TRANSACTION_COUNT.i.i.i, align 1
  %conv35.i.i.i = zext i8 %277 to i32
  %DC_I2C_TRANSACTION_COUNT37.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %261, i32 0, i32 16
  %278 = ptrtoint ptr %DC_I2C_TRANSACTION_COUNT37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %DC_I2C_TRANSACTION_COUNT37.i.i.i, align 4
  %280 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %transaction_count.i.i, align 4
  %sub.i.i.i = add i32 %281, -1
  %call38.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %251, i32 noundef %255, i32 noundef 5, i8 noundef zeroext %259, i32 noundef %263, i32 noundef 0, i32 noundef %conv23.i.i.i, i32 noundef %267, i32 noundef 0, i32 noundef %conv27.i.i.i, i32 noundef %271, i32 noundef 0, i32 noundef %conv31.i.i.i, i32 noundef %275, i32 noundef 0, i32 noundef %conv35.i.i.i, i32 noundef %279, i32 noundef %sub.i.i.i) #4
  %282 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ctx64.i.i.i, align 4
  %284 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_CONTROL41.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %285, i32 0, i32 4
  %286 = ptrtoint ptr %DC_I2C_CONTROL41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %DC_I2C_CONTROL41.i.i.i, align 4
  %288 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_GO43.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %289, i32 0, i32 14
  %290 = ptrtoint ptr %DC_I2C_GO43.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %DC_I2C_GO43.i.i.i, align 1
  %292 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_GO45.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %293, i32 0, i32 14
  %294 = ptrtoint ptr %DC_I2C_GO45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %DC_I2C_GO45.i.i.i, align 4
  %call46.i.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %283, i32 noundef %287, i32 noundef 1, i8 noundef zeroext %291, i32 noundef %295, i32 noundef 1) #4
  %296 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %transaction_count.i.i, align 4
  %297 = ptrtoint ptr %buffer_used_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 0, ptr %buffer_used_bytes.i.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end4.i.i, %process_transaction.exit.i.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i54.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i54.i, label %if.end22.i.land.lhs.true.i_crit_edge, label %if.end22.i.do.body.i.i_crit_edge

if.end22.i.do.body.i.i_crit_edge:                 ; preds = %if.end22.i
  br label %do.body.i.i

if.end22.i.land.lhs.true.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end22.i.do.body.i.i_crit_edge
  %i.0.i.i = phi i32 [ %inc.i.i, %if.end2.i.i.do.body.i.i_crit_edge ], [ 0, %if.end22.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_sw_status.i.i.i) #4
  %298 = ptrtoint ptr %i2c_sw_status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 0, ptr %i2c_sw_status.i.i.i, align 4
  %299 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ctx64.i.i.i, align 4
  %301 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_SW_STATUS.i.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %302, i32 0, i32 5
  %303 = ptrtoint ptr %DC_I2C_SW_STATUS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %DC_I2C_SW_STATUS.i.i.i, align 4
  %305 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_SW_STATUS1.i.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %306, i32 0, i32 25
  %307 = ptrtoint ptr %DC_I2C_SW_STATUS1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %DC_I2C_SW_STATUS1.i.i.i, align 1
  %309 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_SW_STATUS2.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %310, i32 0, i32 25
  %311 = ptrtoint ptr %DC_I2C_SW_STATUS2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %DC_I2C_SW_STATUS2.i.i.i, align 4
  %call.i.i59.i = call i32 @generic_reg_get(ptr noundef %300, i32 noundef %304, i8 noundef zeroext %308, i32 noundef %312, ptr noundef nonnull %i2c_sw_status.i.i.i) #4
  %313 = ptrtoint ptr %i2c_sw_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %i2c_sw_status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %314)
  %cmp.i.i60.i = icmp eq i32 %314, 1
  br i1 %cmp.i.i60.i, label %if.end2.i.i, label %if.else.i.i62.i

if.else.i.i62.i:                                  ; preds = %do.body.i.i
  %315 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_SW_STOPPED_ON_NACK.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %316, i32 0, i32 21
  %317 = ptrtoint ptr %DC_I2C_SW_STOPPED_ON_NACK.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %DC_I2C_SW_STOPPED_ON_NACK.i.i.i, align 4
  %and.i.i61.i = and i32 %318, %call.i.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i61.i, 0
  br i1 %tobool.not.i.i.i, label %if.else5.i.i.i, label %if.else.i.i62.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge

if.else.i.i62.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge: ; preds = %if.else.i.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i

if.else5.i.i.i:                                   ; preds = %if.else.i.i62.i
  %DC_I2C_SW_TIMEOUT.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %316, i32 0, i32 22
  %319 = ptrtoint ptr %DC_I2C_SW_TIMEOUT.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %DC_I2C_SW_TIMEOUT.i.i.i, align 4
  %and7.i.i.i = and i32 %320, %call.i.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %dce_i2c_hw_engine_wait_on_operation_result.exit.i, label %if.else5.i.i.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge

if.else5.i.i.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge: ; preds = %if.else5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i

if.end2.i.i:                                      ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_sw_status.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %321(i32 noundef 214748) #4
  %inc.i.i = add nuw i32 %i.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %retval.0.i.i
  br i1 %exitcond.not.i.i, label %if.end2.i.i.while.end_crit_edge, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

if.end2.i.i.while.end_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i: ; preds = %if.else5.i.i.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge, %if.else.i.i62.i.dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_sw_status.i.i.i) #4
  br label %while.end

dce_i2c_hw_engine_wait_on_operation_result.exit.i: ; preds = %if.else5.i.i.i
  %DC_I2C_SW_ABORTED.i.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %316, i32 0, i32 23
  %322 = ptrtoint ptr %DC_I2C_SW_ABORTED.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %DC_I2C_SW_ABORTED.i.i.i, align 4
  %and12.i.i.i = and i32 %323, %call.i.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %tobool13.not.i.i.not.i = icmp eq i32 %and12.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_sw_status.i.i.i) #4
  br i1 %tobool13.not.i.i.not.i, label %dce_i2c_hw_engine_wait_on_operation_result.exit.i.land.lhs.true.i_crit_edge, label %dce_i2c_hw_engine_wait_on_operation_result.exit.i.while.end_crit_edge

dce_i2c_hw_engine_wait_on_operation_result.exit.i.while.end_crit_edge: ; preds = %dce_i2c_hw_engine_wait_on_operation_result.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

dce_i2c_hw_engine_wait_on_operation_result.exit.i.land.lhs.true.i_crit_edge: ; preds = %dce_i2c_hw_engine_wait_on_operation_result.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %dce_i2c_hw_engine_wait_on_operation_result.exit.i.land.lhs.true.i_crit_edge, %if.end22.i.land.lhs.true.i_crit_edge
  %324 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %add.ptr, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool31.not.i = icmp eq i8 %325, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %land.lhs.true.i.while.cond_crit_edge

land.lhs.true.i.while.cond_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then32.i:                                      ; preds = %land.lhs.true.i
  %326 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %length.i, align 4
  %328 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %data.i, align 4
  %330 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ctx64.i.i.i, align 4
  %332 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_DATA.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %333, i32 0, i32 10
  %334 = ptrtoint ptr %DC_I2C_DATA.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %DC_I2C_DATA.i.i, align 4
  %336 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_INDEX.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %337, i32 0, i32 33
  %338 = ptrtoint ptr %DC_I2C_INDEX.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %DC_I2C_INDEX.i.i, align 1
  %340 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_INDEX2.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %341, i32 0, i32 33
  %342 = ptrtoint ptr %DC_I2C_INDEX2.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %DC_I2C_INDEX2.i.i, align 4
  %344 = ptrtoint ptr %buffer_used_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %buffer_used_write.i.i.i, align 4
  %DC_I2C_DATA_RW.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %337, i32 0, i32 31
  %346 = ptrtoint ptr %DC_I2C_DATA_RW.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %DC_I2C_DATA_RW.i.i, align 1
  %conv.i.i = zext i8 %347 to i32
  %DC_I2C_DATA_RW5.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %341, i32 0, i32 31
  %348 = ptrtoint ptr %DC_I2C_DATA_RW5.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %DC_I2C_DATA_RW5.i.i, align 4
  %DC_I2C_INDEX_WRITE.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %337, i32 0, i32 34
  %350 = ptrtoint ptr %DC_I2C_INDEX_WRITE.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %DC_I2C_INDEX_WRITE.i.i, align 1
  %conv7.i.i = zext i8 %351 to i32
  %DC_I2C_INDEX_WRITE9.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %341, i32 0, i32 34
  %352 = ptrtoint ptr %DC_I2C_INDEX_WRITE9.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %DC_I2C_INDEX_WRITE9.i.i, align 4
  %call.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %331, i32 noundef %335, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %339, i32 noundef %343, i32 noundef %345, i32 noundef %conv.i.i, i32 noundef %349, i32 noundef 1, i32 noundef %conv7.i.i, i32 noundef %353, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.not33.i.i = icmp eq i32 %327, 0
  br i1 %tobool.not33.i.i, label %if.then32.i.while.cond_crit_edge, label %if.then32.i.while.body.i.i_crit_edge

if.then32.i.while.body.i.i_crit_edge:             ; preds = %if.then32.i
  br label %while.body.i.i

if.then32.i.while.cond_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then32.i.while.body.i.i_crit_edge
  %buffer.035.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %329, %if.then32.i.while.body.i.i_crit_edge ]
  %length.034.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %327, %if.then32.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_data.i.i) #4
  %354 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 -1, ptr %i2c_data.i.i, align 4, !annotation !12
  %355 = ptrtoint ptr %ctx64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ctx64.i.i.i, align 4
  %357 = ptrtoint ptr %regs65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %regs65.i.i.i, align 4
  %DC_I2C_DATA12.i.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %358, i32 0, i32 10
  %359 = ptrtoint ptr %DC_I2C_DATA12.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %DC_I2C_DATA12.i.i, align 4
  %361 = ptrtoint ptr %shifts66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %shifts66.i.i.i, align 4
  %DC_I2C_DATA14.i.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %362, i32 0, i32 32
  %363 = ptrtoint ptr %DC_I2C_DATA14.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %DC_I2C_DATA14.i.i, align 1
  %365 = ptrtoint ptr %masks68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %masks68.i.i.i, align 4
  %DC_I2C_DATA16.i.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %366, i32 0, i32 32
  %367 = ptrtoint ptr %DC_I2C_DATA16.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %DC_I2C_DATA16.i.i, align 4
  %call17.i.i = call i32 @generic_reg_get(ptr noundef %356, i32 noundef %360, i8 noundef zeroext %364, i32 noundef %368, ptr noundef nonnull %i2c_data.i.i) #4
  %369 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %i2c_data.i.i, align 4
  %conv18.i.i = trunc i32 %370 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %buffer.035.i.i, i32 1
  %371 = ptrtoint ptr %buffer.035.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %conv18.i.i, ptr %buffer.035.i.i, align 1
  %dec.i.i = add i32 %length.034.i.i, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_data.i.i) #4
  %tobool.not.i64.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i64.i, label %while.body.i.i.while.cond_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.while.cond_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond:                                       ; preds = %while.body.i.i.while.cond_crit_edge, %if.then32.i.while.cond_crit_edge, %land.lhs.true.i.while.cond_crit_edge
  %inc = add nuw i8 %index_of_payload.044, 1
  %372 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %number_of_payloads, align 4
  %cmp = icmp ult i8 %inc, %373
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %dce_i2c_hw_engine_wait_on_operation_result.exit.i.while.end_crit_edge, %dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i, %if.end2.i.i.while.end_crit_edge, %if.end.i53.i.while.end_crit_edge, %get_transaction_timeout_hw.exit.i.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %cmp42 = phi i1 [ false, %dce_i2c_hw_engine_wait_on_operation_result.exit.thread74.i ], [ true, %entry.while.end_crit_edge ], [ false, %if.end2.i.i.while.end_crit_edge ], [ true, %while.cond.while.end_crit_edge ], [ false, %get_transaction_timeout_hw.exit.i.while.end_crit_edge ], [ false, %if.end.i53.i.while.end_crit_edge ], [ false, %dce_i2c_hw_engine_wait_on_operation_result.exit.i.while.end_crit_edge ], [ false, %while.body.while.end_crit_edge ]
  %i2c_hw_buffer_in_use = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 14
  %374 = ptrtoint ptr %i2c_hw_buffer_in_use to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 0, ptr %i2c_hw_buffer_in_use, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_sw_status.i) #4
  %375 = ptrtoint ptr %i2c_sw_status.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 0, ptr %i2c_sw_status.i, align 4
  %ctx.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %376 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %378 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %regs.i, align 4
  %DC_I2C_SW_STATUS.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %379, i32 0, i32 5
  %380 = ptrtoint ptr %DC_I2C_SW_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %DC_I2C_SW_STATUS.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %382 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_SW_STATUS1.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %383, i32 0, i32 25
  %384 = ptrtoint ptr %DC_I2C_SW_STATUS1.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %DC_I2C_SW_STATUS1.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %386 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SW_STATUS2.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %387, i32 0, i32 25
  %388 = ptrtoint ptr %DC_I2C_SW_STATUS2.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %DC_I2C_SW_STATUS2.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %377, i32 noundef %381, i8 noundef zeroext %385, i32 noundef %389, ptr noundef nonnull %i2c_sw_status.i) #4
  %390 = ptrtoint ptr %i2c_sw_status.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %i2c_sw_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %391)
  %cmp.i = icmp eq i32 %391, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_sw_status.i) #4
  %392 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ctx.i, align 4
  %394 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %regs.i, align 4
  %DC_I2C_CONTROL.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %395, i32 0, i32 4
  %396 = ptrtoint ptr %DC_I2C_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %DC_I2C_CONTROL.i, align 4
  %398 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %shifts.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %DC_I2C_SOFT_RESET.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %399, i32 0, i32 12
  %400 = ptrtoint ptr %DC_I2C_SOFT_RESET.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %DC_I2C_SOFT_RESET.i, align 1
  %402 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SOFT_RESET7.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %403, i32 0, i32 12
  %404 = ptrtoint ptr %DC_I2C_SOFT_RESET7.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %DC_I2C_SOFT_RESET7.i, align 4
  %DC_I2C_SW_STATUS_RESET.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %399, i32 0, i32 13
  %406 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %DC_I2C_SW_STATUS_RESET.i, align 1
  %conv.i = zext i8 %407 to i32
  %DC_I2C_SW_STATUS_RESET10.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %403, i32 0, i32 13
  %408 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET10.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %DC_I2C_SW_STATUS_RESET10.i, align 4
  %call11.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %393, i32 noundef %397, i32 noundef 2, i8 noundef zeroext %401, i32 noundef %405, i32 noundef 1, i32 noundef %conv.i, i32 noundef %409, i32 noundef 1) #4
  br label %if.end.i30

if.else.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %DC_I2C_SW_STATUS_RESET16.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %399, i32 0, i32 13
  %410 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET16.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %DC_I2C_SW_STATUS_RESET16.i, align 1
  %412 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SW_STATUS_RESET18.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %413, i32 0, i32 13
  %414 = ptrtoint ptr %DC_I2C_SW_STATUS_RESET18.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %DC_I2C_SW_STATUS_RESET18.i, align 4
  %call19.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %393, i32 noundef %397, i32 noundef 1, i8 noundef zeroext %411, i32 noundef %415, i32 noundef 1) #4
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.else.i, %if.then.i
  %engine_keep_power_up_count.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %416 = ptrtoint ptr %engine_keep_power_up_count.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %engine_keep_power_up_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %417)
  %tobool20.not.i = icmp eq i32 %417, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end.i30.if.end28.i_crit_edge

if.end.i30.if.end28.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then21.i:                                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  %418 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %ctx.i, align 4
  %420 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %regs.i, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %421, align 4
  %424 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %shifts.i, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %425, align 1
  %428 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %masks.i, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 4
  %call27.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %419, i32 noundef %423, i32 noundef 1, i8 noundef zeroext %427, i32 noundef %431, i32 noundef 0) #4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %if.end.i30.if.end28.i_crit_edge
  %432 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ctx.i, align 4
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %433, align 8
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %435, i32 0, i32 2, i32 9
  %436 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %i2c_speed_in_khz_hdcp.i, align 4
  call fastcc void @set_speed(ptr noundef %dce_i2c_hw, i32 noundef %437) #4
  %438 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ctx.i, align 4
  %440 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %regs.i, align 4
  %DC_I2C_ARBITRATION.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %441, i32 0, i32 3
  %442 = ptrtoint ptr %DC_I2C_ARBITRATION.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %DC_I2C_ARBITRATION.i, align 4
  %444 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %shifts.i, align 4
  %DC_I2C_SW_DONE_USING_I2C_REG.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %445, i32 0, i32 8
  %446 = ptrtoint ptr %DC_I2C_SW_DONE_USING_I2C_REG.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %DC_I2C_SW_DONE_USING_I2C_REG.i, align 1
  %448 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %masks.i, align 4
  %DC_I2C_SW_DONE_USING_I2C_REG34.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %449, i32 0, i32 8
  %450 = ptrtoint ptr %DC_I2C_SW_DONE_USING_I2C_REG34.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %DC_I2C_SW_DONE_USING_I2C_REG34.i, align 4
  %DC_I2C_SW_USE_I2C_REG_REQ.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %445, i32 0, i32 9
  %452 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %DC_I2C_SW_USE_I2C_REG_REQ.i, align 1
  %conv36.i = zext i8 %453 to i32
  %DC_I2C_SW_USE_I2C_REG_REQ38.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %449, i32 0, i32 9
  %454 = ptrtoint ptr %DC_I2C_SW_USE_I2C_REG_REQ38.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %DC_I2C_SW_USE_I2C_REG_REQ38.i, align 4
  %call39.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %439, i32 noundef %443, i32 noundef 2, i8 noundef zeroext %447, i32 noundef %451, i32 noundef 1, i32 noundef %conv36.i, i32 noundef %455, i32 noundef 0) #4
  %456 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ctx.i, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %457, align 8
  %enable_mem_low_power.i = getelementptr inbounds %struct.dc_debug_options, ptr %459, i32 0, i32 78
  %460 = ptrtoint ptr %enable_mem_low_power.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %bf.load.i = load i16, ptr %enable_mem_low_power.i, align 8
  %461 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %461)
  %bf.cast.not.i = icmp eq i16 %461, 0
  br i1 %bf.cast.not.i, label %if.end28.i.release_engine.exit_crit_edge, label %if.then42.i

if.end28.i.release_engine.exit_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %release_engine.exit

if.then42.i:                                      ; preds = %if.end28.i
  %462 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %regs.i, align 4
  %DIO_MEM_PWR_CTRL.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %463, i32 0, i32 12
  %464 = ptrtoint ptr %DIO_MEM_PWR_CTRL.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %DIO_MEM_PWR_CTRL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %465)
  %tobool44.not.i = icmp eq i32 %465, 0
  br i1 %tobool44.not.i, label %if.then42.i.release_engine.exit_crit_edge, label %if.then45.i

if.then42.i.release_engine.exit_crit_edge:        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %release_engine.exit

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  %466 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %shifts.i, align 4
  %I2C_LIGHT_SLEEP_FORCE.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %467, i32 0, i32 39
  %468 = ptrtoint ptr %I2C_LIGHT_SLEEP_FORCE.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %I2C_LIGHT_SLEEP_FORCE.i, align 1
  %470 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %masks.i, align 4
  %I2C_LIGHT_SLEEP_FORCE51.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %471, i32 0, i32 39
  %472 = ptrtoint ptr %I2C_LIGHT_SLEEP_FORCE51.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %I2C_LIGHT_SLEEP_FORCE51.i, align 4
  %call52.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %457, i32 noundef %465, i32 noundef 1, i8 noundef zeroext %469, i32 noundef %473, i32 noundef 1) #4
  br label %release_engine.exit

release_engine.exit:                              ; preds = %if.then45.i, %if.then42.i.release_engine.exit_crit_edge, %if.end28.i.release_engine.exit_crit_edge
  %474 = ptrtoint ptr %dce_i2c_hw to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dce_i2c_hw, align 4
  call void @dal_ddc_close(ptr noundef %475) #4
  %476 = ptrtoint ptr %dce_i2c_hw to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr null, ptr %dce_i2c_hw, align 4
  ret i1 %cmp42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_speed(ptr nocapture noundef readonly %dce_i2c_hw, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  %xtal_ref_div = alloca i32, align 4
  %ref_base_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xtal_ref_div) #4
  %0 = ptrtoint ptr %xtal_ref_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %xtal_ref_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_base_div) #4
  %1 = ptrtoint ptr %ref_base_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ref_base_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp = icmp eq i32 %speed, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %MICROSECOND_TIME_BASE_DIV = getelementptr inbounds %struct.dce_i2c_registers, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %MICROSECOND_TIME_BASE_DIV to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MICROSECOND_TIME_BASE_DIV, align 4
  %shifts = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shifts, align 4
  %MICROSECOND_TIME_BASE_DIV1 = getelementptr inbounds %struct.dce_i2c_shift, ptr %9, i32 0, i32 36
  %10 = ptrtoint ptr %MICROSECOND_TIME_BASE_DIV1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %MICROSECOND_TIME_BASE_DIV1, align 1
  %masks = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %12 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %masks, align 4
  %MICROSECOND_TIME_BASE_DIV2 = getelementptr inbounds %struct.dce_i2c_mask, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %MICROSECOND_TIME_BASE_DIV2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %MICROSECOND_TIME_BASE_DIV2, align 4
  %XTAL_REF_DIV = getelementptr inbounds %struct.dce_i2c_shift, ptr %9, i32 0, i32 35
  %16 = ptrtoint ptr %XTAL_REF_DIV to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %XTAL_REF_DIV, align 1
  %XTAL_REF_DIV5 = getelementptr inbounds %struct.dce_i2c_mask, ptr %13, i32 0, i32 35
  %18 = ptrtoint ptr %XTAL_REF_DIV5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %XTAL_REF_DIV5, align 4
  %call = call i32 @generic_reg_get2(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %11, i32 noundef %15, ptr noundef nonnull %ref_base_div, i8 noundef zeroext %17, i32 noundef %19, ptr noundef nonnull %xtal_ref_div) #4
  %20 = ptrtoint ptr %xtal_ref_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xtal_ref_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %xtal_ref_div to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %xtal_ref_div, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %23 = ptrtoint ptr %ref_base_div to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ref_base_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9 = icmp eq i32 %24, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %reference_frequency = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %25 = ptrtoint ptr %reference_frequency to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reference_frequency, align 4
  %mul = shl i32 %26, 1
  br label %if.end12

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %mul11 = mul i32 %24, 1000
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %i2c_ref_clock.0 = phi i32 [ %mul, %if.then10 ], [ %mul11, %if.else ]
  %27 = ptrtoint ptr %xtal_ref_div to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xtal_ref_div, align 4
  %div = udiv i32 %i2c_ref_clock.0, %28
  %div13 = udiv i32 %div, %speed
  %29 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %masks, align 4
  %DC_I2C_DDC1_START_STOP_TIMING_CNTL = getelementptr inbounds %struct.dce_i2c_mask, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %DC_I2C_DDC1_START_STOP_TIMING_CNTL to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %DC_I2C_DDC1_START_STOP_TIMING_CNTL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %SPEED35 = getelementptr inbounds %struct.dce_i2c_registers, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %SPEED35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %SPEED35, align 4
  %39 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shifts, align 4
  %DC_I2C_DDC1_PRESCALE37 = getelementptr inbounds %struct.dce_i2c_shift, ptr %40, i32 0, i32 18
  %41 = ptrtoint ptr %DC_I2C_DDC1_PRESCALE37 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DC_I2C_DDC1_PRESCALE37, align 1
  %DC_I2C_DDC1_PRESCALE39 = getelementptr inbounds %struct.dce_i2c_mask, ptr %30, i32 0, i32 18
  %43 = ptrtoint ptr %DC_I2C_DDC1_PRESCALE39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DC_I2C_DDC1_PRESCALE39, align 4
  %DC_I2C_DDC1_THRESHOLD41 = getelementptr inbounds %struct.dce_i2c_shift, ptr %40, i32 0, i32 19
  %45 = ptrtoint ptr %DC_I2C_DDC1_THRESHOLD41 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %DC_I2C_DDC1_THRESHOLD41, align 1
  %conv42 = zext i8 %46 to i32
  %DC_I2C_DDC1_THRESHOLD44 = getelementptr inbounds %struct.dce_i2c_mask, ptr %30, i32 0, i32 19
  %47 = ptrtoint ptr %DC_I2C_DDC1_THRESHOLD44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %DC_I2C_DDC1_THRESHOLD44, align 4
  br i1 %tobool.not, label %if.else32, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %DC_I2C_DDC1_START_STOP_TIMING_CNTL25 = getelementptr inbounds %struct.dce_i2c_shift, ptr %40, i32 0, i32 20
  %49 = ptrtoint ptr %DC_I2C_DDC1_START_STOP_TIMING_CNTL25 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %DC_I2C_DDC1_START_STOP_TIMING_CNTL25, align 1
  %conv26 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %speed)
  %cmp29 = icmp ugt i32 %speed, 50
  %cond = select i1 %cmp29, i32 2, i32 1
  %call31 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 3, i8 noundef zeroext %42, i32 noundef %44, i32 noundef %div13, i32 noundef %conv42, i32 noundef %48, i32 noundef 2, i32 noundef %conv26, i32 noundef %32, i32 noundef %cond) #4
  br label %cleanup

if.else32:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call45 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 2, i8 noundef zeroext %42, i32 noundef %44, i32 noundef %div13, i32 noundef %conv42, i32 noundef %48, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then15, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_base_div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xtal_ref_div) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce_i2c_hw_construct(ptr nocapture noundef writeonly %dce_i2c_hw, ptr noundef %ctx, i32 noundef %engine_id, ptr noundef %regs, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %engine_id2 = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 7
  %1 = ptrtoint ptr %engine_id2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %engine_id, ptr %engine_id2, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios, align 4
  %fw_info = getelementptr inbounds %struct.dc_bios, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_info, align 4
  %shr = lshr i32 %5, 1
  %reference_frequency = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %6 = ptrtoint ptr %reference_frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %reference_frequency, align 4
  %regs3 = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %7 = ptrtoint ptr %regs3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regs, ptr %regs3, align 4
  %shifts4 = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shifts, ptr %shifts4, align 4
  %masks5 = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %9 = ptrtoint ptr %masks5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %masks, ptr %masks5, align 4
  %buffer_used_bytes = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_used_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_used_bytes, align 4
  %transaction_count = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %11 = ptrtoint ptr %transaction_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transaction_count, align 4
  %engine_keep_power_up_count = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %12 = ptrtoint ptr %engine_keep_power_up_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %engine_keep_power_up_count, align 4
  %default_speed = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 6
  %13 = ptrtoint ptr %default_speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50, ptr %default_speed, align 4
  %send_reset_length = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 9
  %14 = ptrtoint ptr %send_reset_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %send_reset_length, align 4
  %setup_limit = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 8
  %15 = ptrtoint ptr %setup_limit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %setup_limit, align 4
  %buffer_size = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 144, ptr %buffer_size, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce100_i2c_hw_construct(ptr nocapture noundef writeonly %dce_i2c_hw, ptr noundef %ctx, i32 noundef %engine_id, ptr noundef %regs, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i, align 4
  %engine_id2.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 7
  %1 = ptrtoint ptr %engine_id2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %engine_id, ptr %engine_id2.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios.i, align 4
  %fw_info.i = getelementptr inbounds %struct.dc_bios, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_info.i, align 4
  %shr.i = lshr i32 %5, 1
  %reference_frequency.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %6 = ptrtoint ptr %reference_frequency.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i, ptr %reference_frequency.i, align 4
  %regs3.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %7 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regs, ptr %regs3.i, align 4
  %shifts4.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shifts, ptr %shifts4.i, align 4
  %masks5.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %9 = ptrtoint ptr %masks5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %masks, ptr %masks5.i, align 4
  %buffer_used_bytes.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_used_bytes.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_used_bytes.i, align 4
  %transaction_count.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %11 = ptrtoint ptr %transaction_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transaction_count.i, align 4
  %engine_keep_power_up_count.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %12 = ptrtoint ptr %engine_keep_power_up_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %engine_keep_power_up_count.i, align 4
  %default_speed.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 6
  %13 = ptrtoint ptr %default_speed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50, ptr %default_speed.i, align 4
  %send_reset_length.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 9
  %14 = ptrtoint ptr %send_reset_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %send_reset_length.i, align 4
  %setup_limit.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 8
  %15 = ptrtoint ptr %setup_limit.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %setup_limit.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %16 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 538, ptr %buffer_size.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce112_i2c_hw_construct(ptr nocapture noundef writeonly %dce_i2c_hw, ptr noundef %ctx, i32 noundef %engine_id, ptr noundef %regs, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i.i, align 4
  %engine_id2.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 7
  %1 = ptrtoint ptr %engine_id2.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %engine_id, ptr %engine_id2.i.i, align 4
  %dc_bios.i.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios.i.i, align 4
  %fw_info.i.i = getelementptr inbounds %struct.dc_bios, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_info.i.i, align 4
  %shr.i.i = lshr i32 %5, 1
  %reference_frequency.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %6 = ptrtoint ptr %reference_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i.i, ptr %reference_frequency.i.i, align 4
  %regs3.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %7 = ptrtoint ptr %regs3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regs, ptr %regs3.i.i, align 4
  %shifts4.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shifts, ptr %shifts4.i.i, align 4
  %masks5.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %9 = ptrtoint ptr %masks5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %masks, ptr %masks5.i.i, align 4
  %buffer_used_bytes.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_used_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_used_bytes.i.i, align 4
  %transaction_count.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %11 = ptrtoint ptr %transaction_count.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transaction_count.i.i, align 4
  %engine_keep_power_up_count.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %12 = ptrtoint ptr %engine_keep_power_up_count.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %engine_keep_power_up_count.i.i, align 4
  %default_speed.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 6
  %send_reset_length.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 9
  %13 = ptrtoint ptr %send_reset_length.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %send_reset_length.i.i, align 4
  %setup_limit.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 8
  %14 = ptrtoint ptr %setup_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 255, ptr %setup_limit.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %15 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 538, ptr %buffer_size.i.i, align 4
  %16 = ptrtoint ptr %default_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %default_speed.i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dcn1_i2c_hw_construct(ptr nocapture noundef writeonly %dce_i2c_hw, ptr noundef %ctx, i32 noundef %engine_id, ptr noundef %regs, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i.i.i, align 4
  %engine_id2.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 7
  %1 = ptrtoint ptr %engine_id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %engine_id, ptr %engine_id2.i.i.i, align 4
  %dc_bios.i.i.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios.i.i.i, align 4
  %fw_info.i.i.i = getelementptr inbounds %struct.dc_bios, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_info.i.i.i, align 4
  %shr.i.i.i = lshr i32 %5, 1
  %reference_frequency.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %6 = ptrtoint ptr %reference_frequency.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i.i.i, ptr %reference_frequency.i.i.i, align 4
  %regs3.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %7 = ptrtoint ptr %regs3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regs, ptr %regs3.i.i.i, align 4
  %shifts4.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shifts, ptr %shifts4.i.i.i, align 4
  %masks5.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %9 = ptrtoint ptr %masks5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %masks, ptr %masks5.i.i.i, align 4
  %buffer_used_bytes.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_used_bytes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_used_bytes.i.i.i, align 4
  %transaction_count.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %11 = ptrtoint ptr %transaction_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transaction_count.i.i.i, align 4
  %engine_keep_power_up_count.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %12 = ptrtoint ptr %engine_keep_power_up_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %engine_keep_power_up_count.i.i.i, align 4
  %default_speed.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 6
  %send_reset_length.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 9
  %13 = ptrtoint ptr %send_reset_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %send_reset_length.i.i.i, align 4
  %setup_limit.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 8
  %buffer_size.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %14 = ptrtoint ptr %buffer_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 538, ptr %buffer_size.i.i.i, align 4
  %15 = ptrtoint ptr %default_speed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %default_speed.i.i.i, align 4
  %16 = ptrtoint ptr %setup_limit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %setup_limit.i.i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dcn2_i2c_hw_construct(ptr nocapture noundef writeonly %dce_i2c_hw, ptr noundef %ctx, i32 noundef %engine_id, ptr noundef %regs, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i.i.i.i, align 4
  %engine_id2.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 7
  %1 = ptrtoint ptr %engine_id2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %engine_id, ptr %engine_id2.i.i.i.i, align 4
  %dc_bios.i.i.i.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios.i.i.i.i, align 4
  %fw_info.i.i.i.i = getelementptr inbounds %struct.dc_bios, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_info.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %5, 1
  %reference_frequency.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 5
  %6 = ptrtoint ptr %reference_frequency.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i.i.i.i, ptr %reference_frequency.i.i.i.i, align 4
  %regs3.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %7 = ptrtoint ptr %regs3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regs, ptr %regs3.i.i.i.i, align 4
  %shifts4.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %8 = ptrtoint ptr %shifts4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shifts, ptr %shifts4.i.i.i.i, align 4
  %masks5.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %9 = ptrtoint ptr %masks5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %masks, ptr %masks5.i.i.i.i, align 4
  %buffer_used_bytes.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_used_bytes.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_used_bytes.i.i.i.i, align 4
  %transaction_count.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 2
  %11 = ptrtoint ptr %transaction_count.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %transaction_count.i.i.i.i, align 4
  %engine_keep_power_up_count.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 1
  %12 = ptrtoint ptr %engine_keep_power_up_count.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %engine_keep_power_up_count.i.i.i.i, align 4
  %default_speed.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 6
  %send_reset_length.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 9
  %setup_limit.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 8
  %buffer_size.i.i.i.i = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 10
  %13 = ptrtoint ptr %buffer_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 538, ptr %buffer_size.i.i.i.i, align 4
  %14 = ptrtoint ptr %default_speed.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %default_speed.i.i.i.i, align 4
  %15 = ptrtoint ptr %setup_limit.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %setup_limit.i.i.i.i, align 4
  %16 = ptrtoint ptr %send_reset_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9, ptr %send_reset_length.i.i.i.i, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %scl_reset_length10 = getelementptr inbounds %struct.dc_debug_options, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %scl_reset_length10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scl_reset_length10, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %spec.store.select = select i1 %tobool.not, i32 9, i32 10
  %21 = ptrtoint ptr %send_reset_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %send_reset_length.i.i.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_hw_busy(ptr nocapture noundef readonly %dce_i2c_hw) unnamed_addr #0 align 64 {
entry:
  %arbitrate.i = alloca i32, align 4
  %i2c_hw_status.i = alloca i32, align 4
  %i2c_sw_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_sw_status) #4
  %0 = ptrtoint ptr %i2c_sw_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i2c_sw_status, align 4
  %ctx = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 11
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 12
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %DC_I2C_SW_STATUS = getelementptr inbounds %struct.dce_i2c_registers, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %DC_I2C_SW_STATUS to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DC_I2C_SW_STATUS, align 4
  %shifts = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 13
  %7 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shifts, align 4
  %DC_I2C_SW_STATUS1 = getelementptr inbounds %struct.dce_i2c_shift, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %DC_I2C_SW_STATUS1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DC_I2C_SW_STATUS1, align 1
  %masks = getelementptr inbounds %struct.dce_i2c_hw, ptr %dce_i2c_hw, i32 0, i32 14
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 4
  %DC_I2C_SW_STATUS2 = getelementptr inbounds %struct.dce_i2c_mask, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %DC_I2C_SW_STATUS2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DC_I2C_SW_STATUS2, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %i2c_sw_status) #4
  %15 = ptrtoint ptr %i2c_sw_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_sw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arbitrate.i) #4
  %17 = ptrtoint ptr %arbitrate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arbitrate.i, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  %18 = ptrtoint ptr %i2c_hw_status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %i2c_hw_status.i, align 4, !annotation !12
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %HW_STATUS.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %HW_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %HW_STATUS.i, align 4
  %25 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shifts, align 4
  %DC_I2C_DDC1_HW_STATUS.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %DC_I2C_DDC1_HW_STATUS.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %DC_I2C_DDC1_HW_STATUS.i, align 1
  %29 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %masks, align 4
  %DC_I2C_DDC1_HW_STATUS1.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %DC_I2C_DDC1_HW_STATUS1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %DC_I2C_DDC1_HW_STATUS1.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %20, i32 noundef %24, i8 noundef zeroext %28, i32 noundef %32, ptr noundef nonnull %i2c_hw_status.i) #4
  %33 = ptrtoint ptr %i2c_hw_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i2c_hw_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i = icmp eq i32 %34, 2
  br i1 %cmp.i, label %is_engine_available.exit.thread, label %is_engine_available.exit

is_engine_available.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arbitrate.i) #4
  br label %cleanup

is_engine_available.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %DC_I2C_ARBITRATION.i = getelementptr inbounds %struct.dce_i2c_registers, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %DC_I2C_ARBITRATION.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %DC_I2C_ARBITRATION.i, align 4
  %41 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shifts, align 4
  %DC_I2C_REG_RW_CNTL_STATUS.i = getelementptr inbounds %struct.dce_i2c_shift, ptr %42, i32 0, i32 38
  %43 = ptrtoint ptr %DC_I2C_REG_RW_CNTL_STATUS.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %DC_I2C_REG_RW_CNTL_STATUS.i, align 1
  %45 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %masks, align 4
  %DC_I2C_REG_RW_CNTL_STATUS6.i = getelementptr inbounds %struct.dce_i2c_mask, ptr %46, i32 0, i32 38
  %47 = ptrtoint ptr %DC_I2C_REG_RW_CNTL_STATUS6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %DC_I2C_REG_RW_CNTL_STATUS6.i, align 4
  %call7.i = call i32 @generic_reg_get(ptr noundef %36, i32 noundef %40, i8 noundef zeroext %44, i32 noundef %48, ptr noundef nonnull %arbitrate.i) #4
  %49 = ptrtoint ptr %arbitrate.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arbitrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp8.i.not = icmp eq i32 %50, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_hw_status.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arbitrate.i) #4
  br label %cleanup

cleanup:                                          ; preds = %is_engine_available.exit, %is_engine_available.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %is_engine_available.exit.thread ], [ %cmp8.i.not, %is_engine_available.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_sw_status) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__func__.setup_engine, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_hw.c", i32 307, i32 8}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{!"auto-init"}
