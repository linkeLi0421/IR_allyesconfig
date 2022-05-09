; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_timing_generator_v.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_timing_generator = type { %struct.timing_generator, %struct.dce110_timing_generator_offsets, %struct.dce110_timing_generator_offsets, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.tg_color = type { i16, i16, i16 }

@dce110_tg_v_funcs = internal constant { %struct.timing_generator_funcs, [72 x i8] } { %struct.timing_generator_funcs { ptr @dce110_tg_validate_timing, ptr @dce110_timing_generator_v_program_timing, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_v_enable_crtc, ptr @dce110_timing_generator_v_disable_crtc, ptr null, ptr @dce110_timing_generator_v_is_counter_moving, ptr null, ptr @dce110_timing_generator_v_get_vblank_counter, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_v_set_early_control, ptr @dce110_timing_generator_v_wait_for_state, ptr @dce110_timing_generator_v_set_blank, ptr null, ptr null, ptr @dce110_timing_generator_v_set_overscan_color_black, ptr @dce110_timing_generator_v_program_blank_color, ptr @dce110_timing_generator_v_set_colors, ptr @dce110_timing_generator_v_disable_vga, ptr @dce110_timing_generator_v_did_triggered_reset_occur, ptr @dce110_timing_generator_v_setup_global_swap_lock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_v_enable_reset_trigger, ptr null, ptr @dce110_timing_generator_v_disable_reset_trigger, ptr @dce110_timing_generator_v_tear_down_global_swap_lock, ptr @dce110_timing_generator_v_enable_advanced_request, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@__func__.dce110_timing_generator_v_program_blanking = private unnamed_addr constant [43 x i8] c"dce110_timing_generator_v_program_blanking\00", align 1
@__func__.dce110_timing_generator_v_enable_crtc = private unnamed_addr constant [38 x i8] c"dce110_timing_generator_v_enable_crtc\00", align 1
@__func__.dce110_timing_generator_v_disable_crtc = private unnamed_addr constant [39 x i8] c"dce110_timing_generator_v_disable_crtc\00", align 1
@__func__.dce110_timing_generator_v_is_counter_moving = private unnamed_addr constant [44 x i8] c"dce110_timing_generator_v_is_counter_moving\00", align 1
@__func__.dce110_timing_generator_v_get_vblank_counter = private unnamed_addr constant [45 x i8] c"dce110_timing_generator_v_get_vblank_counter\00", align 1
@__func__.dce110_timing_generator_v_set_early_control = private unnamed_addr constant [44 x i8] c"dce110_timing_generator_v_set_early_control\00", align 1
@__func__.dce110_timing_generator_v_is_in_vertical_blank = private unnamed_addr constant [47 x i8] c"dce110_timing_generator_v_is_in_vertical_blank\00", align 1
@__func__.dce110_timing_generator_v_blank_crtc = private unnamed_addr constant [37 x i8] c"dce110_timing_generator_v_blank_crtc\00", align 1
@__func__.dce110_timing_generator_v_unblank_crtc = private unnamed_addr constant [39 x i8] c"dce110_timing_generator_v_unblank_crtc\00", align 1
@__func__.dce110_timing_generator_v_set_overscan_color_black = private unnamed_addr constant [51 x i8] c"dce110_timing_generator_v_set_overscan_color_black\00", align 1
@__func__.dce110_timing_generator_v_program_blank_color = private unnamed_addr constant [46 x i8] c"dce110_timing_generator_v_program_blank_color\00", align 1
@__func__.dce110_tg_v_program_blank_color = private unnamed_addr constant [32 x i8] c"dce110_tg_v_program_blank_color\00", align 1
@__func__.dce110_timing_generator_v_set_overscan_color = private unnamed_addr constant [45 x i8] c"dce110_timing_generator_v_set_overscan_color\00", align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Timing Sync not supported on underlay pipe\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.dce110_timing_generator_v_enable_advanced_request = private unnamed_addr constant [50 x i8] c"dce110_timing_generator_v_enable_advanced_request\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"dce110_tg_v_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 660, i32 44 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [79 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 615, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @dce110_tg_v_funcs, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_tg_v_funcs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_timing_generator_v_construct(ptr nocapture noundef writeonly %tg110, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 3
  %0 = ptrtoint ptr %controller_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %controller_id, align 4
  %1 = ptrtoint ptr %tg110 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dce110_tg_v_funcs, ptr %tg110, align 4
  %ctx2 = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 2
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx2, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios, align 4
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 1
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bp, align 4
  %max_h_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 4
  %6 = ptrtoint ptr %max_h_total to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %max_h_total, align 4
  %max_v_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 5
  %7 = ptrtoint ptr %max_v_total to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %max_v_total, align 4
  %min_h_blank = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 6
  %8 = ptrtoint ptr %min_h_blank to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 56, ptr %min_h_blank, align 4
  %min_h_front_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 7
  %9 = ptrtoint ptr %min_h_front_porch to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %min_h_front_porch, align 4
  %min_h_back_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 8
  %10 = ptrtoint ptr %min_h_back_porch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %min_h_back_porch, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_tg_validate_timing(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_program_timing(ptr noundef %tg, ptr noundef %timing, i32 noundef %vready_offset, i32 noundef %vstartup_start, i32 noundef %vupdate_offset, i32 noundef %vupdate_width, i32 noundef %signal, i1 noundef zeroext %use_vbios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %use_vbios, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef %tg, ptr noundef %timing) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %v_border_bottom.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 9
  %0 = ptrtoint ptr %v_border_bottom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_border_bottom.i, align 4
  %v_front_porch.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 10
  %2 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_front_porch.i, align 4
  %v_addressable.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 8
  %4 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_addressable.i, align 4
  %h_border_right.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 3
  %6 = ptrtoint ptr %h_border_right.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_border_right.i, align 4
  %h_front_porch.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 4
  %8 = ptrtoint ptr %h_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_front_porch.i, align 4
  %h_addressable.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 2
  %10 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_addressable.i, align 4
  %ctx4.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx4.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18304, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %14 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timing, align 4
  %sub.i = add i32 %15, 16383
  %and.i.i = and i32 %call.i, -16384
  %and42.i.i = and i32 %sub.i, 16383
  %or.i.i = or i32 %and42.i.i, %and.i.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18304, i32 noundef %or.i.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call6.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18311, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %v_total.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %16 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_total.i, align 4
  %sub7.i = add i32 %17, 16383
  %and.i132.i = and i32 %call6.i, -16384
  %and42.i133.i = and i32 %sub7.i, 16383
  %or.i134.i = or i32 %and42.i133.i, %and.i132.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18311, i32 noundef %or.i134.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call9.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18305, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %18 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing, align 4
  %h_border_left.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 1
  %20 = ptrtoint ptr %h_border_left.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h_border_left.i, align 4
  %22 = add i32 %9, %7
  %23 = add i32 %22, %11
  %24 = add i32 %23, %21
  %sub12.i = sub i32 %19, %24
  %and.i135.i = and i32 %call9.i, -1073692672
  %shl.i.i = shl i32 %sub12.i, 16
  %and42.i136.i = and i32 %shl.i.i, 1073676288
  %or.i137.i = or i32 %and42.i136.i, %and.i135.i
  %25 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_addressable.i, align 4
  %27 = ptrtoint ptr %h_border_right.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h_border_right.i, align 4
  %add15.i = add i32 %26, %21
  %add17.i = add i32 %add15.i, %sub12.i
  %add19.i = add i32 %add17.i, %28
  %and42.i139.i = and i32 %add19.i, 16383
  %or.i140.i = or i32 %or.i137.i, %and42.i139.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18305, i32 noundef %or.i140.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call21.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18317, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %29 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_total.i, align 4
  %v_border_top.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 7
  %31 = ptrtoint ptr %v_border_top.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_border_top.i, align 4
  %33 = add i32 %3, %1
  %34 = add i32 %33, %5
  %35 = add i32 %34, %32
  %sub24.i = sub i32 %30, %35
  %and.i141.i = and i32 %call21.i, -1073692672
  %shl.i142.i = shl i32 %sub24.i, 16
  %and42.i143.i = and i32 %shl.i142.i, 1073676288
  %or.i144.i = or i32 %and42.i143.i, %and.i141.i
  %36 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %v_addressable.i, align 4
  %38 = ptrtoint ptr %v_border_bottom.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v_border_bottom.i, align 4
  %add27.i = add i32 %37, %32
  %add29.i = add i32 %add27.i, %sub24.i
  %add31.i = add i32 %add29.i, %39
  %and42.i146.i = and i32 %add31.i, 16383
  %or.i147.i = or i32 %or.i144.i, %and42.i146.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18317, i32 noundef %or.i147.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %h_sync_width.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 5
  %40 = ptrtoint ptr %h_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %h_sync_width.i, align 4
  %shl.i148.i = shl i32 %41, 16
  %and42.i149.i = and i32 %shl.i148.i, 1073676288
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18306, i32 noundef %and42.i149.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call34.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18307, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %flags.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 21
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i = load i32, ptr %flags.i, align 4
  %and.i150.i = and i32 %call34.i, -2
  %43 = lshr i32 %bf.load.i, 30
  %.lobit.i = and i32 %43, 1
  %44 = or i32 %.lobit.i, %and.i150.i
  %value.0.i = xor i32 %44, 1
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18307, i32 noundef %value.0.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %v_sync_width.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 11
  %45 = ptrtoint ptr %v_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v_sync_width.i, align 4
  %shl.i153.i = shl i32 %46, 16
  %and42.i154.i = and i32 %shl.i153.i, 1073676288
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18318, i32 noundef %and42.i154.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call38.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18319, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load40.i = load i32, ptr %flags.i, align 4
  %and.i155.i = and i32 %call38.i, -2
  %48 = lshr i32 %bf.load40.i, 29
  %.lobit160.i = and i32 %48, 1
  %49 = or i32 %.lobit160.i, %and.i155.i
  %value.1.i = xor i32 %49, 1
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18319, i32 noundef %value.1.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %call49.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18334, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load51.i = load i32, ptr %flags.i, align 4
  %bf.lshr52.i = lshr i32 %bf.load51.i, 31
  %and.i158.i = and i32 %call49.i, -2
  %or.i159.i = or i32 %bf.lshr52.i, %and.i158.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 18334, i32 noundef %or.i159.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blanking) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_timing_generator_v_enable_crtc(ptr nocapture noundef readonly %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18366, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_v_enable_crtc) #4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18366, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_v_enable_crtc) #4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef 18370, i32 noundef 1, ptr noundef nonnull @__func__.dce110_timing_generator_v_enable_crtc) #4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_timing_generator_v_disable_crtc(ptr nocapture noundef readonly %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18332, ptr noundef nonnull @__func__.dce110_timing_generator_v_disable_crtc) #4
  %and.i7 = and i32 %call, -770
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18332, i32 noundef %and.i7, ptr noundef nonnull @__func__.dce110_timing_generator_v_disable_crtc) #4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_timing_generator_v_is_counter_moving(ptr nocapture noundef readonly %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call4 = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %and.i20 = xor i32 %call4, %call
  %4 = and i32 %and.i20, 1073692671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce110_timing_generator_v_get_vblank_counter(ptr nocapture noundef readonly %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18342, ptr noundef nonnull @__func__.dce110_timing_generator_v_get_vblank_counter) #4
  %and.i = and i32 %call, 16777215
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_set_early_control(ptr nocapture noundef readonly %tg, i32 noundef %early_cntl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 7068, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_early_control) #4
  %and.i = and i32 %call, -7340033
  %shl.i = shl i32 %early_cntl, 20
  %and42.i = and i32 %shl.i, 7340032
  %or.i = or i32 %and.i, %and42.i
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 7068, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_early_control) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_wait_for_state(ptr nocapture noundef readonly %tg, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ctx.i.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %sw.bb
  %1 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i.i, align 4
  %call.i.i = tail call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef 18339, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_in_vertical_blank) #4
  %and.i.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %while.cond.i.while.cond2.i.preheader_crit_edge, label %while.body.i

while.cond.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.i.preheader

while.body.i:                                     ; preds = %while.cond.i
  %3 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx.i.i, align 4
  %call.i13.i = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %5 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i.i, align 4
  %call4.i.i = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %and.i20.i.i = xor i32 %call4.i.i, %call.i13.i
  %7 = and i32 %and.i20.i.i, 1073692671
  %.not22.i = icmp eq i32 %7, 0
  br i1 %.not22.i, label %while.body.i.while.cond2.i.preheader_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %while.body.i.while.cond2.i.preheader_crit_edge, %while.cond.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.body4.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %8 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i.i, align 4
  %call.i15.i = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 18339, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_in_vertical_blank) #4
  %and.i.i16.i = and i32 %call.i15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16.i)
  %cmp.i17.not.i = icmp eq i32 %and.i.i16.i, 0
  br i1 %cmp.i17.not.i, label %while.body4.i, label %while.cond2.i.sw.epilog_crit_edge

while.cond2.i.sw.epilog_crit_edge:                ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.body4.i:                                    ; preds = %while.cond2.i
  %10 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i.i, align 4
  %call.i19.i = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %12 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i.i, align 4
  %call4.i20.i = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %and.i20.i21.i = xor i32 %call4.i20.i, %call.i19.i
  %14 = and i32 %and.i20.i21.i, 1073692671
  %.not.i = icmp eq i32 %14, 0
  br i1 %.not.i, label %while.body4.i.sw.epilog_crit_edge, label %while.body4.i.while.cond2.i_crit_edge

while.body4.i.while.cond2.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.i

while.body4.i.sw.epilog_crit_edge:                ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %ctx.i.i3 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  br label %while.cond.i7

while.cond.i7:                                    ; preds = %while.body.i11.while.cond.i7_crit_edge, %sw.bb1
  %15 = ptrtoint ptr %ctx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i.i3, align 4
  %call.i.i4 = tail call i32 @dm_read_reg_func(ptr noundef %16, i32 noundef 18339, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_in_vertical_blank) #4
  %and.i.i.i5 = and i32 %call.i.i4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5)
  %cmp.i.not.i6 = icmp eq i32 %and.i.i.i5, 0
  br i1 %cmp.i.not.i6, label %while.cond.i7.sw.epilog_crit_edge, label %while.body.i11

while.cond.i7.sw.epilog_crit_edge:                ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.body.i11:                                   ; preds = %while.cond.i7
  %17 = ptrtoint ptr %ctx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx.i.i3, align 4
  %call.i4.i = tail call i32 @dm_read_reg_func(ptr noundef %18, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %19 = ptrtoint ptr %ctx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i.i3, align 4
  %call4.i.i8 = tail call i32 @dm_read_reg_func(ptr noundef %20, i32 noundef 18340, ptr noundef nonnull @__func__.dce110_timing_generator_v_is_counter_moving) #4
  %and.i20.i.i9 = xor i32 %call4.i.i8, %call.i4.i
  %21 = and i32 %and.i20.i.i9, 1073692671
  %.not.i10 = icmp eq i32 %21, 0
  br i1 %.not.i10, label %while.body.i11.sw.epilog_crit_edge, label %while.body.i11.while.cond.i7_crit_edge

while.body.i11.while.cond.i7_crit_edge:           ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i7

while.body.i11.sw.epilog_crit_edge:               ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.i11.sw.epilog_crit_edge, %while.cond.i7.sw.epilog_crit_edge, %while.body4.i.sw.epilog_crit_edge, %while.cond2.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_set_blank(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable_blanking) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  br i1 %enable_blanking, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18333, ptr noundef nonnull @__func__.dce110_timing_generator_v_blank_crtc) #4
  %or.i.i = and i32 %call.i, -65793
  %and.i8.i = or i32 %or.i.i, 256
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18333, i32 noundef %and.i8.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_blank_crtc) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i3 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18333, ptr noundef nonnull @__func__.dce110_timing_generator_v_unblank_crtc) #4
  %and.i8.i4 = and i32 %call.i3, -65793
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef 18333, i32 noundef %and.i8.i4, ptr noundef nonnull @__func__.dce110_timing_generator_v_unblank_crtc) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_set_overscan_color_black(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %color) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %2 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %color_b_cb, align 2
  %4 = and i16 %3, 1023
  %and42.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %color, align 2
  %conv2 = zext i16 %6 to i32
  %shl.i = shl i32 %conv2, 20
  %and42.i17 = and i32 %shl.i, 1072693248
  %or.i = or i32 %and42.i17, %and42.i
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %7 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %color_g_y, align 2
  %conv4 = zext i16 %8 to i32
  %shl.i18 = shl nuw nsw i32 %conv4, 10
  %and42.i19 = and i32 %shl.i18, 1047552
  %or.i20 = or i32 %or.i, %and42.i19
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18376, i32 noundef %or.i20, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_overscan_color_black) #4
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18380, i32 noundef %or.i20, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_overscan_color_black) #4
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18378, i32 noundef %or.i20, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_overscan_color_black) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_program_blank_color(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %black_color) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18380, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blank_color) #4
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 2
  %2 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %color_b_cb, align 2
  %and.i = and i32 %call, -1073741824
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 1
  %4 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %5 to i32
  %6 = and i16 %3, 1023
  %and42.i.masked = zext i16 %6 to i32
  %and.i14 = or i32 %and.i, %and42.i.masked
  %shl.i = shl nuw nsw i32 %conv2, 10
  %7 = ptrtoint ptr %black_color to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %black_color, align 2
  %conv4 = zext i16 %8 to i32
  %shl.i.masked = and i32 %shl.i, 1047552
  %and.i17 = or i32 %and.i14, %shl.i.masked
  %shl.i18 = shl i32 %conv4, 20
  %and42.i19 = and i32 %shl.i18, 1072693248
  %or.i20 = or i32 %and.i17, %and42.i19
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %10, i32 noundef 18380, i32 noundef %or.i20, ptr noundef nonnull @__func__.dce110_timing_generator_v_program_blank_color) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_set_colors(ptr nocapture noundef readonly %tg, ptr noundef readonly %blank_color, ptr noundef readonly %overscan_color) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %blank_color, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18380, ptr noundef nonnull @__func__.dce110_tg_v_program_blank_color) #4
  %color_b_cb.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 2
  %2 = ptrtoint ptr %color_b_cb.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %color_b_cb.i, align 2
  %and.i.i = and i32 %call.i, -1073741824
  %color_g_y.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 1
  %4 = ptrtoint ptr %color_g_y.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_g_y.i, align 2
  %conv2.i = zext i16 %5 to i32
  %6 = and i16 %3, 1023
  %and42.i.masked.i = zext i16 %6 to i32
  %and.i18.i = or i32 %and.i.i, %and42.i.masked.i
  %shl.i.i = shl nuw nsw i32 %conv2.i, 10
  %7 = ptrtoint ptr %blank_color to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blank_color, align 2
  %conv4.i = zext i16 %8 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 1047552
  %and.i21.i = or i32 %and.i18.i, %shl.i.masked.i
  %shl.i22.i = shl i32 %conv4.i, 20
  %and42.i23.i = and i32 %shl.i22.i, 1072693248
  %or.i24.i = or i32 %and.i21.i, %and42.i23.i
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %10, i32 noundef 18380, i32 noundef %or.i24.i, ptr noundef nonnull @__func__.dce110_tg_v_program_blank_color) #4
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef 18378, i32 noundef %or.i24.i, ptr noundef nonnull @__func__.dce110_tg_v_program_blank_color) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp1.not = icmp eq ptr %overscan_color, null
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ctx1.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %13 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx1.i, align 4
  %color_b_cb.i7 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 2
  %15 = ptrtoint ptr %color_b_cb.i7 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %color_b_cb.i7, align 2
  %17 = and i16 %16, 1023
  %and42.i.i = zext i16 %17 to i32
  %color_g_y.i8 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 1
  %18 = ptrtoint ptr %color_g_y.i8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %color_g_y.i8, align 2
  %conv2.i9 = zext i16 %19 to i32
  %shl.i.i10 = shl nuw nsw i32 %conv2.i9, 10
  %and42.i11.i = and i32 %shl.i.i10, 1047552
  %or.i.i = or i32 %and42.i11.i, %and42.i.i
  %20 = ptrtoint ptr %overscan_color to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %overscan_color, align 2
  %conv4.i11 = zext i16 %21 to i32
  %shl.i12.i = shl i32 %conv4.i11, 20
  %and42.i13.i = and i32 %shl.i12.i, 1072693248
  %or.i14.i = or i32 %or.i.i, %and42.i13.i
  tail call void @dm_write_reg_func(ptr noundef %14, i32 noundef 18376, i32 noundef %or.i14.i, ptr noundef nonnull @__func__.dce110_timing_generator_v_set_overscan_color) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce110_timing_generator_v_disable_vga(ptr nocapture noundef %tg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_timing_generator_v_did_triggered_reset_occur(ptr nocapture noundef readnone %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_setup_global_swap_lock(ptr nocapture noundef readnone %tg, ptr nocapture noundef readnone %gsl_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_enable_reset_trigger(ptr nocapture noundef readnone %tg, i32 noundef %source_tg_inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_disable_reset_trigger(ptr nocapture noundef readnone %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_tear_down_global_swap_lock(ptr nocapture noundef readnone %tg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_timing_generator_v_enable_advanced_request(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable, ptr nocapture noundef readonly %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18355, ptr noundef nonnull @__func__.dce110_timing_generator_v_enable_advanced_request) #4
  br i1 %enable, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %v_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 11
  %2 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_sync_width, align 4
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 10
  %4 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_front_porch, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp ult i32 %add, 4
  %and.i = and i32 %call, -1044737
  %value.0.v = select i1 %cmp, i32 12288, i32 16384
  %value.0 = or i32 %and.i, %value.0.v
  br label %if.end8

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and.i21 = and i32 %call, -1044737
  %or.i24 = or i32 %and.i21, 8448
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then
  %value.1 = phi i32 [ %value.0, %if.then ], [ %or.i24, %if.else5 ]
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef 18355, i32 noundef %value.1, ptr noundef nonnull @__func__.dce110_timing_generator_v_enable_advanced_request) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @dce110_tg_v_funcs, !1, !"dce110_tg_v_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 660, i32 44}
!2 = !{ptr @__func__.dce110_timing_generator_v_program_blanking, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 259, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.dce110_timing_generator_v_enable_crtc, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 64, i32 2}
!9 = !{ptr @__func__.dce110_timing_generator_v_disable_crtc, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 84, i32 10}
!11 = !{ptr @__func__.dce110_timing_generator_v_is_counter_moving, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 160, i32 10}
!13 = !{ptr @__func__.dce110_timing_generator_v_get_vblank_counter, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 605, i32 19}
!15 = !{ptr @__func__.dce110_timing_generator_v_set_early_control, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 596, i32 11}
!17 = !{ptr @__func__.dce110_timing_generator_v_is_in_vertical_blank, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 147, i32 10}
!19 = !{ptr @__func__.dce110_timing_generator_v_blank_crtc, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 102, i32 19}
!21 = !{ptr @__func__.dce110_timing_generator_v_unblank_crtc, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 122, i32 19}
!23 = !{ptr @__func__.dce110_timing_generator_v_set_overscan_color_black, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 503, i32 2}
!25 = !{ptr @__func__.dce110_timing_generator_v_program_blank_color, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 455, i32 19}
!27 = !{ptr @__func__.dce110_tg_v_program_blank_color, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 526, i32 19}
!29 = !{ptr @__func__.dce110_timing_generator_v_set_overscan_color, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 576, i32 2}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 615, i32 2}
!33 = !{ptr @__func__.dce110_timing_generator_v_enable_advanced_request, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.c", i32 389, i32 19}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
