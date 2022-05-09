; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_timing_generator.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_timing_generator = type { %struct.timing_generator, %struct.dce110_timing_generator_offsets, %struct.dce110_timing_generator_offsets, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tg_color = type { i16, i16, i16 }
%struct.bp_hw_crtc_timing_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timing_flags }
%struct.timing_flags = type { i8, [3 x i8] }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.drr_params = type { i32, i32, i32, i32, i8 }
%struct.crtc_position = type { i32, i32, i32 }
%struct.dcp_gsl_params = type { i32, i32 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.crc_params = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }

@__func__.dce110_timing_generator_set_early_control = private unnamed_addr constant [42 x i8] c"dce110_timing_generator_set_early_control\00", align 1
@__func__.dce110_timing_generator_enable_crtc = private unnamed_addr constant [36 x i8] c"dce110_timing_generator_enable_crtc\00", align 1
@__func__.dce110_timing_generator_program_blank_color = private unnamed_addr constant [44 x i8] c"dce110_timing_generator_program_blank_color\00", align 1
@__func__.dce110_timing_generator_set_drr = private unnamed_addr constant [32 x i8] c"dce110_timing_generator_set_drr\00", align 1
@__func__.dce110_timing_generator_set_static_screen_control = private unnamed_addr constant [50 x i8] c"dce110_timing_generator_set_static_screen_control\00", align 1
@__func__.dce110_timing_generator_get_vblank_counter = private unnamed_addr constant [43 x i8] c"dce110_timing_generator_get_vblank_counter\00", align 1
@__func__.dce110_timing_generator_get_position = private unnamed_addr constant [37 x i8] c"dce110_timing_generator_get_position\00", align 1
@__func__.dce110_timing_generator_get_crtc_scanoutpos = private unnamed_addr constant [44 x i8] c"dce110_timing_generator_get_crtc_scanoutpos\00", align 1
@__func__.dce110_timing_generator_program_blanking = private unnamed_addr constant [41 x i8] c"dce110_timing_generator_program_blanking\00", align 1
@__func__.dce110_timing_generator_set_test_pattern = private unnamed_addr constant [41 x i8] c"dce110_timing_generator_set_test_pattern\00", align 1
@dce110_timing_generator_validate_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c\00", [54 x i8] zeroinitializer }, align 32
@__func__.dce110_timing_generator_setup_global_swap_lock = private unnamed_addr constant [47 x i8] c"dce110_timing_generator_setup_global_swap_lock\00", align 1
@__func__.dce110_timing_generator_tear_down_global_swap_lock = private unnamed_addr constant [51 x i8] c"dce110_timing_generator_tear_down_global_swap_lock\00", align 1
@__func__.dce110_timing_generator_enable_advanced_request = private unnamed_addr constant [48 x i8] c"dce110_timing_generator_enable_advanced_request\00", align 1
@__func__.dce110_timing_generator_set_lock_master = private unnamed_addr constant [40 x i8] c"dce110_timing_generator_set_lock_master\00", align 1
@__func__.dce110_timing_generator_enable_reset_trigger = private unnamed_addr constant [45 x i8] c"dce110_timing_generator_enable_reset_trigger\00", align 1
@__func__.dce110_timing_generator_enable_crtc_reset = private unnamed_addr constant [42 x i8] c"dce110_timing_generator_enable_crtc_reset\00", align 1
@__func__.dce110_timing_generator_disable_reset_trigger = private unnamed_addr constant [46 x i8] c"dce110_timing_generator_disable_reset_trigger\00", align 1
@__func__.dce110_timing_generator_did_triggered_reset_occur = private unnamed_addr constant [50 x i8] c"dce110_timing_generator_did_triggered_reset_occur\00", align 1
@__func__.dce110_timing_generator_disable_vga = private unnamed_addr constant [36 x i8] c"dce110_timing_generator_disable_vga\00", align 1
@__func__.dce110_timing_generator_set_overscan_color_black = private unnamed_addr constant [49 x i8] c"dce110_timing_generator_set_overscan_color_black\00", align 1
@__func__.dce110_tg_program_blank_color = private unnamed_addr constant [30 x i8] c"dce110_tg_program_blank_color\00", align 1
@__func__.dce110_tg_set_overscan_color = private unnamed_addr constant [29 x i8] c"dce110_tg_set_overscan_color\00", align 1
@__func__.dce110_tg_is_blanked = private unnamed_addr constant [21 x i8] c"dce110_tg_is_blanked\00", align 1
@__func__.dce110_tg_set_blank = private unnamed_addr constant [20 x i8] c"dce110_tg_set_blank\00", align 1
@__func__.dce110_arm_vert_intr = private unnamed_addr constant [21 x i8] c"dce110_arm_vert_intr\00", align 1
@__func__.dce110_configure_crc = private unnamed_addr constant [21 x i8] c"dce110_configure_crc\00", align 1
@__func__.dce110_get_crc = private unnamed_addr constant [15 x i8] c"dce110_get_crc\00", align 1
@dce110_tg_funcs = internal constant { %struct.timing_generator_funcs, [72 x i8] } { %struct.timing_generator_funcs { ptr @dce110_tg_validate_timing, ptr @dce110_tg_program_timing, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_enable_crtc, ptr @dce110_timing_generator_disable_crtc, ptr null, ptr @dce110_timing_generator_is_counter_moving, ptr @dce110_timing_generator_get_position, ptr @dce110_timing_generator_get_vblank_counter, ptr @dce110_timing_generator_get_crtc_scanoutpos, ptr null, ptr null, ptr @dce110_timing_generator_set_early_control, ptr @dce110_tg_wait_for_state, ptr @dce110_tg_set_blank, ptr @dce110_tg_is_blanked, ptr null, ptr @dce110_timing_generator_set_overscan_color_black, ptr @dce110_timing_generator_program_blank_color, ptr @dce110_tg_set_colors, ptr @dce110_timing_generator_disable_vga, ptr @dce110_timing_generator_did_triggered_reset_occur, ptr @dce110_timing_generator_setup_global_swap_lock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_enable_reset_trigger, ptr @dce110_timing_generator_enable_crtc_reset, ptr @dce110_timing_generator_disable_reset_trigger, ptr @dce110_timing_generator_tear_down_global_swap_lock, ptr @dce110_timing_generator_enable_advanced_request, ptr @dce110_timing_generator_set_drr, ptr null, ptr null, ptr @dce110_timing_generator_set_static_screen_control, ptr @dce110_timing_generator_set_test_pattern, ptr @dce110_arm_vert_intr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_is_tg_enabled, ptr null, ptr null, ptr null, ptr null, ptr @dce110_configure_crc, ptr @dce110_get_crc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@__func__.program_horz_count_by_2 = private unnamed_addr constant [24 x i8] c"program_horz_count_by_2\00", align 1
@__func__.dce110_timing_generator_is_in_vertical_blank = private unnamed_addr constant [45 x i8] c"dce110_timing_generator_is_in_vertical_blank\00", align 1
@__func__.dce110_is_tg_enabled = private unnamed_addr constant [21 x i8] c"dce110_is_tg_enabled\00", align 1
@switch.table.dce110_timing_generator_set_test_pattern = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1281, i32 1281, i32 1537, i32 1281], [16 x i8] zeroinitializer }, align 32
@switch.table.dce110_timing_generator_set_test_pattern.2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 26122, i32 34312, i32 1610646918], [20 x i8] zeroinitializer }, align 32
@switch.table.dce110_timing_generator_disable_vga = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 204, i32 206, i32 248, i32 249, i32 250, i32 251], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 11]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1123, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"dce110_tg_funcs\00", align 1
@___asan_gen_.10 = private constant [77 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 2203, i32 44 }
@___asan_gen_.12 = private unnamed_addr constant [54 x i8] c"switch.table.dce110_timing_generator_set_test_pattern\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [56 x i8] c"switch.table.dce110_timing_generator_set_test_pattern.2\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [49 x i8] c"switch.table.dce110_timing_generator_disable_vga\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @dce110_tg_funcs, ptr @switch.table.dce110_timing_generator_set_test_pattern, ptr @switch.table.dce110_timing_generator_set_test_pattern.2, ptr @switch.table.dce110_timing_generator_disable_vga], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_tg_funcs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_timing_generator_set_test_pattern to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_timing_generator_set_test_pattern.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_timing_generator_disable_vga to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_early_control(ptr nocapture noundef readonly %tg, i32 noundef %early_cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7068
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_set_early_control) #5
  %and.i = and i32 %call, -7340033
  %shl.i = shl i32 %early_cntl, 20
  %and42.i = and i32 %shl.i, 7340032
  %or.i = or i32 %and.i, %and42.i
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_timing_generator_set_early_control) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_enable_crtc(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7102
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add4 = add i32 %7, 7101
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add4, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc) #5
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 1
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %enable_crtc = getelementptr inbounds %struct.dc_vbios_funcs, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %enable_crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_crtc, align 4
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 3
  %14 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %controller_id, align 4
  %call6 = tail call i32 %13(ptr noundef %9, i32 noundef %15, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_program_blank_color(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %black_color) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7116
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_program_blank_color) #5
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb, align 2
  %and.i = and i32 %call, -1073741824
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %7 to i32
  %8 = and i16 %5, 1023
  %and42.i.masked = zext i16 %8 to i32
  %and.i15 = or i32 %and.i, %and42.i.masked
  %shl.i = shl nuw nsw i32 %conv2, 10
  %9 = ptrtoint ptr %black_color to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %black_color, align 2
  %conv4 = zext i16 %10 to i32
  %shl.i.masked = and i32 %shl.i, 1047552
  %and.i18 = or i32 %and.i15, %shl.i.masked
  %shl.i19 = shl i32 %conv4, 20
  %and42.i20 = and i32 %shl.i19, 1072693248
  %or.i21 = or i32 %and.i18, %and42.i20
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %add, i32 noundef %or.i21, ptr noundef nonnull @__func__.dce110_timing_generator_program_blank_color) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_disable_crtc(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %enable_crtc = getelementptr inbounds %struct.dc_vbios_funcs, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %enable_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_crtc, align 4
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 3
  %6 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller_id, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef %tg, ptr nocapture noundef readonly %dc_crtc_timing) local_unnamed_addr #0 align 64 {
entry:
  %bp_params = alloca %struct.bp_hw_crtc_timing_parameters, align 4
  %patched_crtc_timing = alloca %struct.dc_crtc_timing, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %bp_params) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %patched_crtc_timing) #5
  %v_border_bottom = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 9
  %0 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_border_bottom, align 4
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 10
  %2 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_front_porch, align 4
  %add = add i32 %3, %1
  %v_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 8
  %4 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_addressable, align 4
  %add1 = add i32 %add, %5
  %h_border_right = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 3
  %6 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_border_right, align 4
  %h_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 4
  %8 = ptrtoint ptr %h_front_porch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_front_porch, align 4
  %add2 = add i32 %9, %7
  %h_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %dc_crtc_timing, i32 0, i32 2
  %10 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_addressable, align 4
  %add3 = add i32 %add2, %11
  %12 = getelementptr inbounds i8, ptr %bp_params, i32 52
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = call ptr @memcpy(ptr %patched_crtc_timing, ptr %dc_crtc_timing, i32 128)
  %flags.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 21
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %cmp.i = icmp slt i32 %bf.load.i, 0
  %v_front_porch.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 10
  %16 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_front_porch.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1.i = icmp ult i32 %17, 2
  br i1 %cmp1.i, label %if.then.i.if.end9.sink.split.i_crit_edge, label %if.then.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge

if.then.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_apply_front_porch_workaround.exit

if.then.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.i = icmp eq i32 %17, 0
  br i1 %cmp5.i, label %if.else.i.if.end9.sink.split.i_crit_edge, label %if.else.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge

if.else.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_apply_front_porch_workaround.exit

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %if.then.i.if.end9.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i.if.end9.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end9.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i, ptr %v_front_porch.i, align 4
  br label %dce110_timing_generator_apply_front_porch_workaround.exit

dce110_timing_generator_apply_front_porch_workaround.exit: ; preds = %if.end9.sink.split.i, %if.else.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge, %if.then.i.dce110_timing_generator_apply_front_porch_workaround.exit_crit_edge
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 3
  %19 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %controller_id, align 4
  %21 = ptrtoint ptr %bp_params to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bp_params, align 4
  %22 = ptrtoint ptr %patched_crtc_timing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %patched_crtc_timing, align 4
  %h_total5 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 1
  %24 = ptrtoint ptr %h_total5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %h_total5, align 4
  %h_addressable6 = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 2
  %25 = ptrtoint ptr %h_addressable6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_addressable6, align 4
  %h_addressable7 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 2
  %27 = ptrtoint ptr %h_addressable7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %h_addressable7, align 4
  %v_total = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 6
  %28 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v_total, align 4
  %v_total8 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 7
  %30 = ptrtoint ptr %v_total8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %v_total8, align 4
  %v_addressable9 = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 8
  %31 = ptrtoint ptr %v_addressable9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_addressable9, align 4
  %v_addressable10 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 8
  %33 = ptrtoint ptr %v_addressable10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %v_addressable10, align 4
  %h_sync_start11 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 5
  %34 = ptrtoint ptr %h_sync_start11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add3, ptr %h_sync_start11, align 4
  %h_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 5
  %35 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h_sync_width, align 4
  %h_sync_width12 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 6
  %37 = ptrtoint ptr %h_sync_width12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %h_sync_width12, align 4
  %v_sync_start13 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 11
  %38 = ptrtoint ptr %v_sync_start13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add1, ptr %v_sync_start13, align 4
  %v_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 11
  %39 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_sync_width, align 4
  %v_sync_width14 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 12
  %41 = ptrtoint ptr %v_sync_width14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %v_sync_width14, align 4
  %h_border_left = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 1
  %42 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_border_left, align 4
  %h_overscan_left = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 3
  %44 = ptrtoint ptr %h_overscan_left to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %h_overscan_left, align 4
  %h_border_right15 = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 3
  %45 = ptrtoint ptr %h_border_right15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %h_border_right15, align 4
  %h_overscan_right = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 4
  %47 = ptrtoint ptr %h_overscan_right to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %h_overscan_right, align 4
  %v_border_top = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 7
  %48 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %v_border_top, align 4
  %v_overscan_top = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 9
  %50 = ptrtoint ptr %v_overscan_top to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %v_overscan_top, align 4
  %v_border_bottom16 = getelementptr inbounds %struct.dc_crtc_timing, ptr %patched_crtc_timing, i32 0, i32 9
  %51 = ptrtoint ptr %v_border_bottom16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %v_border_bottom16, align 4
  %v_overscan_bottom = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 10
  %53 = ptrtoint ptr %v_overscan_bottom to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %v_overscan_bottom, align 4
  %54 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not = icmp eq i32 %54, 0
  br i1 %cmp.not, label %dce110_timing_generator_apply_front_porch_workaround.exit.if.end_crit_edge, label %if.then

dce110_timing_generator_apply_front_porch_workaround.exit.if.end_crit_edge: ; preds = %dce110_timing_generator_apply_front_porch_workaround.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %dce110_timing_generator_apply_front_porch_workaround.exit
  call void @__sanitizer_cov_trace_pc() #7
  %flags17 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %55 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load18 = load i8, ptr %flags17, align 4
  %bf.set = or i8 %bf.load18, 4
  store i8 %bf.set, ptr %flags17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dce110_timing_generator_apply_front_porch_workaround.exit.if.end_crit_edge
  %56 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp24.not = icmp eq i32 %56, 0
  br i1 %cmp24.not, label %if.end.if.end30_crit_edge, label %if.then25

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags26 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %57 = ptrtoint ptr %flags26 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load27 = load i8, ptr %flags26, align 4
  %bf.set29 = or i8 %bf.load27, 2
  store i8 %bf.set29, ptr %flags26, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end.if.end30_crit_edge
  br i1 %cmp.i, label %if.then35, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %flags36 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %58 = ptrtoint ptr %flags36 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load37 = load i8, ptr %flags36, align 4
  %bf.set39 = or i8 %bf.load37, -128
  store i8 %bf.set39, ptr %flags36, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end30.if.end40_crit_edge
  %59 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp45.not = icmp eq i32 %59, 0
  br i1 %cmp45.not, label %if.end40.if.end51_crit_edge, label %if.then46

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %flags47 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %60 = ptrtoint ptr %flags47 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load48 = load i8, ptr %flags47, align 4
  %bf.set50 = or i8 %bf.load48, 1
  store i8 %bf.set50, ptr %flags47, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end40.if.end51_crit_edge
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 1
  %61 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bp, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %program_crtc_timing = getelementptr inbounds %struct.dc_vbios_funcs, ptr %64, i32 0, i32 21
  %65 = ptrtoint ptr %program_crtc_timing to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %program_crtc_timing, align 4
  %call = call i32 %66(ptr noundef %62, ptr noundef nonnull %bp_params) #5
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %67 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx.i, align 4
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %69 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offsets.i, align 4
  %add.i = add i32 %70, 7081
  %call.i = call i32 @dm_read_reg_func(ptr noundef %68, i32 noundef %add.i, ptr noundef nonnull @__func__.program_horz_count_by_2) #5
  %and.i.i = and i32 %call.i, -2
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load.i68 = load i32, ptr %flags.i, align 4
  %72 = lshr i32 %bf.load.i68, 28
  %.lobit.i = and i32 %72, 1
  %spec.select.i = or i32 %.lobit.i, %and.i.i
  %73 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx.i, align 4
  %75 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offsets.i, align 4
  %add6.i = add i32 %76, 7081
  call void @dm_write_reg_func(ptr noundef %74, i32 noundef %add6.i, i32 noundef %spec.select.i, ptr noundef nonnull @__func__.program_horz_count_by_2) #5
  %77 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tg, align 4
  %enable_advanced_request = getelementptr inbounds %struct.timing_generator_funcs, ptr %78, i32 0, i32 35
  %79 = ptrtoint ptr %enable_advanced_request to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %enable_advanced_request, align 4
  call void %80(ptr noundef %tg, i1 noundef zeroext true, ptr noundef nonnull %patched_crtc_timing) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54 = icmp eq i32 %call, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %patched_crtc_timing) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %bp_params) #5
  ret i1 %cmp54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_drr(ptr nocapture noundef readonly %tg, ptr noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7048
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  %4 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets, align 4
  %add3 = add i32 %5, 7049
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add3, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add8 = add i32 %9, 7050
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %call10 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add8, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  %cmp.not = icmp eq ptr %params, null
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %vertical_total_max = getelementptr inbounds %struct.drr_params, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %vertical_total_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vertical_total_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not = icmp eq i32 %15, 0
  br i1 %cmp13.not, label %land.lhs.true12.if.else_crit_edge, label %if.then

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %13, 16383
  %and.i = and i32 %call5, -16384
  %and42.i = and i32 %sub, 16383
  %or.i = or i32 %and42.i, %and.i
  %sub17 = add i32 %15, 16383
  %and.i79 = and i32 %call, -16384
  %and42.i80 = and i32 %sub17, 16383
  %or.i81 = or i32 %and42.i80, %and.i79
  %or.i85 = and i32 %call10, 28398
  %and.i86 = or i32 %or.i85, 17
  br label %if.end

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and.i93 = and i32 %call, -16384
  %and.i94 = and i32 %call5, -16384
  %and.i96 = and i32 %call10, 61166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %v_total_cntl.0 = phi i32 [ %and.i86, %if.then ], [ %and.i96, %if.else ]
  %v_total_max.0 = phi i32 [ %or.i, %if.then ], [ %and.i94, %if.else ]
  %v_total_min.0 = phi i32 [ %or.i81, %if.then ], [ %and.i93, %if.else ]
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add34 = add i32 %17, 7048
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %add34, i32 noundef %v_total_min.0, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets, align 4
  %add38 = add i32 %21, 7049
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %23, i32 noundef %add38, i32 noundef %v_total_max.0, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  %24 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets, align 4
  %add42 = add i32 %25, 7050
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %27, i32 noundef %add42, i32 noundef %v_total_cntl.0, ptr noundef nonnull @__func__.dce110_timing_generator_set_drr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_static_screen_control(ptr nocapture noundef readonly %tg, i32 noundef %event_triggers, i32 noundef %num_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %num_frames, i32 255)
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %1 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offsets, align 4
  %add = add i32 %2, 7143
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_set_static_screen_control) #5
  %and.i = and i32 %call, -16777216
  %and42.i = and i32 %event_triggers, 65535
  %or.i = or i32 %and42.i, %and.i
  %shl.i = shl nuw nsw i32 %0, 16
  %or.i12 = or i32 %or.i, %shl.i
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %6, i32 noundef %add, i32 noundef %or.i12, ptr noundef nonnull @__func__.dce110_timing_generator_set_static_screen_control) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce110_timing_generator_get_vblank_counter(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7078
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_get_vblank_counter) #5
  %and.i = and i32 %call, 16777215
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_get_position(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7076
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_get_position) #5
  %and.i = lshr i32 %call, 16
  %shr.i = and i32 %and.i, 16383
  %horizontal_count = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 1
  %4 = ptrtoint ptr %horizontal_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %horizontal_count, align 4
  %and.i16 = and i32 %call, 16383
  %5 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i16, ptr %position, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add6 = add i32 %9, 7077
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add6, ptr noundef nonnull @__func__.dce110_timing_generator_get_position) #5
  %and.i17 = and i32 %call7, 16383
  %nominal_vcount = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 2
  %10 = ptrtoint ptr %nominal_vcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i17, ptr %nominal_vcount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_get_crtc_scanoutpos(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %v_blank_start, ptr nocapture noundef writeonly %v_blank_end, ptr nocapture noundef writeonly %h_position, ptr nocapture noundef writeonly %v_position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7053
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_get_crtc_scanoutpos) #5
  %and.i = and i32 %call, 16383
  %4 = ptrtoint ptr %v_blank_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %v_blank_start, align 4
  %and.i6 = lshr i32 %call, 16
  %shr.i = and i32 %and.i6, 16383
  %5 = ptrtoint ptr %v_blank_end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %v_blank_end, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add.i = add i32 %9, 7076
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull @__func__.dce110_timing_generator_get_position) #5
  %and.i.i = lshr i32 %call.i, 16
  %shr.i.i = and i32 %and.i.i, 16383
  %and.i16.i = and i32 %call.i, 16383
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 4
  %add6.i = add i32 %13, 7077
  %call7.i = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add6.i, ptr noundef nonnull @__func__.dce110_timing_generator_get_position) #5
  %14 = ptrtoint ptr %h_position to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i.i, ptr %h_position, align 4
  %15 = ptrtoint ptr %v_position to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i16.i, ptr %v_position, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_program_blanking(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %v_border_bottom = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 9
  %0 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_border_bottom, align 4
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 10
  %2 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_front_porch, align 4
  %v_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 8
  %4 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_addressable, align 4
  %h_border_right = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 3
  %6 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_border_right, align 4
  %h_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 4
  %8 = ptrtoint ptr %h_front_porch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_front_porch, align 4
  %h_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 2
  %10 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_addressable, align 4
  %ctx4 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx4, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets, align 4
  %add6 = add i32 %15, 7040
  %call = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add6, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %16 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timing, align 4
  %sub = add i32 %17, 16383
  %and.i = and i32 %call, -16384
  %and42.i = and i32 %sub, 16383
  %or.i = or i32 %and42.i, %and.i
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add6, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %18 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets, align 4
  %add10 = add i32 %19, 7047
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add10, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %v_total = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %20 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_total, align 4
  %sub12 = add i32 %21, 16383
  %and.i123 = and i32 %call11, -16384
  %and42.i124 = and i32 %sub12, 16383
  %or.i125 = or i32 %and42.i124, %and.i123
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add10, i32 noundef %or.i125, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %22 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offsets, align 4
  %add16 = add i32 %23, 7049
  %call17 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add16, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %24 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_total, align 4
  %sub19 = add i32 %25, 16383
  %and.i126 = and i32 %call17, -16384
  %and42.i127 = and i32 %sub19, 16383
  %or.i128 = or i32 %and42.i127, %and.i126
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add16, i32 noundef %or.i128, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %26 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets, align 4
  %add23 = add i32 %27, 7048
  %call24 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add23, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %28 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v_total, align 4
  %sub26 = add i32 %29, 16383
  %and.i129 = and i32 %call24, -16384
  %and42.i130 = and i32 %sub26, 16383
  %or.i131 = or i32 %and42.i130, %and.i129
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add23, i32 noundef %or.i131, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %30 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offsets, align 4
  %add30 = add i32 %31, 7041
  %call31 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add30, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %32 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timing, align 4
  %h_border_left = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 1
  %34 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %h_border_left, align 4
  %36 = add i32 %9, %7
  %37 = add i32 %36, %11
  %38 = add i32 %37, %35
  %sub34 = sub i32 %33, %38
  %and.i132 = and i32 %call31, -1073692672
  %shl.i = shl i32 %sub34, 16
  %and42.i133 = and i32 %shl.i, 1073676288
  %or.i134 = or i32 %and42.i133, %and.i132
  %39 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %h_addressable, align 4
  %41 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %h_border_right, align 4
  %add37 = add i32 %40, %35
  %add39 = add i32 %add37, %sub34
  %add41 = add i32 %add39, %42
  %and42.i136 = and i32 %add41, 16383
  %or.i137 = or i32 %or.i134, %and42.i136
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add30, i32 noundef %or.i137, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %43 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offsets, align 4
  %add45 = add i32 %44, 7053
  %call46 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add45, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  %45 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v_total, align 4
  %v_border_top = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 7
  %47 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %v_border_top, align 4
  %49 = add i32 %3, %1
  %50 = add i32 %49, %5
  %51 = add i32 %50, %48
  %sub49 = sub i32 %46, %51
  %and.i138 = and i32 %call46, -1073692672
  %shl.i139 = shl i32 %sub49, 16
  %and42.i140 = and i32 %shl.i139, 1073676288
  %or.i141 = or i32 %and42.i140, %and.i138
  %52 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v_addressable, align 4
  %54 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v_border_bottom, align 4
  %add52 = add i32 %53, %48
  %add54 = add i32 %add52, %sub49
  %add56 = add i32 %add54, %55
  %and42.i143 = and i32 %add56, 16383
  %or.i144 = or i32 %or.i141, %and42.i143
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add45, i32 noundef %or.i144, ptr noundef nonnull @__func__.dce110_timing_generator_program_blanking) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_test_pattern(ptr nocapture noundef readonly %tg, i32 noundef %test_pattern, i32 noundef %color_depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %switch.tableidx = add i32 %color_depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dce110_timing_generator_set_test_pattern, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cmp55 = phi i32 [ %switch.load, %switch.lookup ], [ 1281, %entry.sw.epilog_crit_edge ]
  %bit_depth.0 = phi i32 [ %switch.tableidx, %switch.lookup ], [ 1, %entry.sw.epilog_crit_edge ]
  %4 = zext i32 %test_pattern to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %test_pattern, label %sw.epilog.sw.epilog109_crit_edge [
    i32 3, label %sw.epilog.sw.bb5_crit_edge
    i32 11, label %sw.epilog.sw.bb5_crit_edge264
    i32 4, label %sw.epilog.sw.bb14_crit_edge
    i32 5, label %sw.epilog.sw.bb14_crit_edge265
    i32 6, label %sw.bb54
    i32 7, label %sw.bb98
  ]

sw.epilog.sw.bb14_crit_edge265:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

sw.epilog.sw.bb5_crit_edge264:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.epilog.sw.epilog109_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog109

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge264
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %test_pattern)
  %cmp = icmp eq i32 %test_pattern, 11
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %5 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets, align 4
  %add = add i32 %6, 7099
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef 26112, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %7 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offsets, align 4
  %add9 = add i32 %8, 7098
  %or.i = select i1 %cmp, i32 65537, i32 1
  %shl.i206 = shl nuw nsw i32 %bit_depth.0, 24
  %or.i207 = or i32 %shl.i206, %or.i
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add9, i32 noundef %or.i207, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  br label %sw.epilog109

sw.bb14:                                          ; preds = %sw.epilog.sw.bb14_crit_edge, %sw.epilog.sw.bb14_crit_edge265
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %test_pattern)
  %cmp15 = icmp eq i32 %test_pattern, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bit_depth.0)
  %9 = icmp ult i32 %bit_depth.0, 3
  %switch.idx.cast = trunc i32 %bit_depth.0 to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -2
  %switch.offset = add i16 %switch.idx.mult, 10
  %switch.offset.op = shl nsw i16 -1, %switch.offset
  %offsets29 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %10 = ptrtoint ptr %offsets29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets29, align 4
  %add31 = add i32 %11, 7099
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add31, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %12 = ptrtoint ptr %offsets29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets29, align 4
  %add34 = add i32 %13, 7100
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef 65536, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %14 = zext i16 %switch.offset.op to i32
  %conv42 = select i1 %9, i32 %14, i32 65280
  %or.i210.1 = or i32 %conv42, 131072
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef %or.i210.1, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %or.i210.2 = or i32 %conv42, 262144
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef %or.i210.2, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %or.i210.3 = or i32 %conv42, 524288
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef %or.i210.3, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef 1048576, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef 2097152, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add34, i32 noundef 2097152, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %15 = ptrtoint ptr %offsets29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offsets29, align 4
  %add49 = add i32 %16, 7098
  %or.i216 = select i1 %cmp15, i32 769, i32 1025
  %shl.i217 = shl nuw nsw i32 %bit_depth.0, 24
  %or.i218 = or i32 %shl.i217, %or.i216
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add49, i32 noundef %or.i218, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  br label %sw.epilog109

sw.bb54:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bit_depth.0)
  %17 = icmp ult i32 %bit_depth.0, 3
  br i1 %17, label %switch.lookup261, label %sw.bb54.sw.epilog87_crit_edge

sw.bb54.sw.epilog87_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog87

switch.lookup261:                                 ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep262 = getelementptr inbounds [3 x i32], ptr @switch.table.dce110_timing_generator_set_test_pattern.2, i32 0, i32 %bit_depth.0
  %18 = ptrtoint ptr %switch.gep262 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load263 = load i32, ptr %switch.gep262, align 4
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %switch.lookup261, %sw.bb54.sw.epilog87_crit_edge
  %value.1 = phi i32 [ 0, %sw.bb54.sw.epilog87_crit_edge ], [ %switch.load263, %switch.lookup261 ]
  %offsets64241 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %19 = ptrtoint ptr %offsets64241 to i32
  call void @__asan_load4_noabort(i32 %19)
  %add66242.in = load i32, ptr %offsets64241, align 4
  %add66242 = add i32 %add66242.in, 7099
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add66242, i32 noundef %value.1, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %20 = ptrtoint ptr %offsets64241 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets64241, align 4
  %add90 = add i32 %21, 7100
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add90, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %22 = ptrtoint ptr %offsets64241 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offsets64241, align 4
  %add93 = add i32 %23, 7098
  %shl.i236 = shl nuw nsw i32 %bit_depth.0, 24
  %or.i237 = or i32 %shl.i236, %cmp55
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add93, i32 noundef %or.i237, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  br label %sw.epilog109

sw.bb98:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %offsets99 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %24 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets99, align 4
  %add101 = add i32 %25, 7098
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add101, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %26 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets99, align 4
  %add104 = add i32 %27, 7100
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add104, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  %28 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offsets99, align 4
  %add107 = add i32 %29, 7099
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add107, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_set_test_pattern) #5
  br label %sw.epilog109

sw.epilog109:                                     ; preds = %sw.bb98, %sw.epilog87, %sw.bb14, %sw.bb5, %sw.epilog.sw.epilog109_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_validate_timing(ptr nocapture noundef readonly %tg, ptr noundef readonly %timing, i32 %signal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %timing, null
  br i1 %cmp.not, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %entry
  %.b106 = load i1, ptr @dce110_timing_generator_validate_timing.__already_done, align 1
  br i1 %.b106, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !77

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_timing_generator_validate_timing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1123, i32 noundef 9, ptr noundef null) #5
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end45:                                         ; preds = %entry
  %h_border_right = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 3
  %0 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_border_right, align 4
  %h_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 4
  %2 = ptrtoint ptr %h_front_porch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_front_porch, align 4
  %h_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 2
  %4 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h_addressable, align 4
  %timing_3d_format = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 15
  %6 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timing_3d_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.not = icmp eq i32 %7, 0
  br i1 %cmp47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %flags = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 21
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %cmp50 = icmp slt i32 %bf.load, 0
  br i1 %cmp50, label %if.end49.cleanup_crit_edge, label %if.end52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52:                                         ; preds = %if.end49
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timing, align 4
  %max_h_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 4
  %11 = ptrtoint ptr %max_h_total to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_h_total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp53 = icmp ugt i32 %10, %12
  br i1 %cmp53, label %if.end52.cleanup_crit_edge, label %lor.lhs.false

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end52
  %v_total = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %13 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v_total, align 4
  %max_v_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 5
  %15 = ptrtoint ptr %max_v_total to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_v_total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp54 = icmp ugt i32 %14, %16
  br i1 %cmp54, label %lor.lhs.false.cleanup_crit_edge, label %if.end56

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  %h_border_left = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 1
  %17 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_border_left, align 4
  %19 = add i32 %5, %1
  %20 = add i32 %19, %18
  %sub61 = sub i32 %10, %20
  %min_h_blank = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 6
  %21 = ptrtoint ptr %min_h_blank to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_h_blank, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub61, i32 %22)
  %cmp62 = icmp ult i32 %sub61, %22
  br i1 %cmp62, label %if.end56.cleanup_crit_edge, label %if.end64

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %min_h_front_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 7
  %23 = ptrtoint ptr %min_h_front_porch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_h_front_porch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp66 = icmp ult i32 %3, %24
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %if.end68

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %h_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 5
  %25 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_sync_width, align 4
  %sub73.neg = sub i32 %sub61, %3
  %sub74 = add i32 %sub73.neg, %26
  %min_h_back_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 8
  %27 = ptrtoint ptr %min_h_back_porch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_h_back_porch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub74, i32 %28)
  %cmp75 = icmp uge i32 %sub74, %28
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end64.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then39
  %retval.0 = phi i1 [ false, %if.then39 ], [ false, %if.end45.cleanup_crit_edge ], [ false, %if.end49.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end52.cleanup_crit_edge ], [ false, %if.end56.cleanup_crit_edge ], [ false, %if.end64.cleanup_crit_edge ], [ %cmp75, %if.end68 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_wait_for_vblank(ptr noundef %tg) local_unnamed_addr #0 align 64 {
entry:
  %position1.i19 = alloca %struct.crtc_position, align 4
  %position2.i20 = alloca %struct.crtc_position, align 4
  %position1.i = alloca %struct.crtc_position, align 4
  %position2.i = alloca %struct.crtc_position, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets.i, align 4
  %add.i36 = add i32 %1, 7075
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i37 = call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add.i36, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i38 = and i32 %call.i37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %cmp.i.not39 = icmp eq i32 %and.i.i38, 0
  br i1 %cmp.i.not39, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = getelementptr inbounds %struct.crtc_position, ptr %position1.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.crtc_position, ptr %position1.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.crtc_position, ptr %position2.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crtc_position, ptr %position2.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position1.i) #5
  %8 = ptrtoint ptr %position1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %position1.i, align 4, !annotation !78
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %4, align 4, !annotation !78
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %5, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position2.i) #5
  %11 = ptrtoint ptr %position2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %position2.i, align 4, !annotation !78
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %6, align 4, !annotation !78
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %7, align 4, !annotation !78
  %14 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg, align 4
  %get_position.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_position.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_position.i, align 4
  call void %17(ptr noundef %tg, ptr noundef nonnull %position1.i) #5
  %18 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg, align 4
  %get_position2.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %get_position2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_position2.i, align 4
  call void %21(ptr noundef %tg, ptr noundef nonnull %position2.i) #5
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i12 = icmp eq i32 %23, %25
  br i1 %cmp.i12, label %land.lhs.true.i, label %while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge

while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit

land.lhs.true.i:                                  ; preds = %while.body
  %26 = ptrtoint ptr %position1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %position1.i, align 4
  %28 = ptrtoint ptr %position2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %position2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp5.i = icmp eq i32 %27, %29
  br i1 %cmp5.i, label %dce110_timing_generator_is_counter_moving.exit.thread, label %land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge

land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit

dce110_timing_generator_is_counter_moving.exit.thread: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i) #5
  br label %while.end

dce110_timing_generator_is_counter_moving.exit:   ; preds = %land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge, %while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i) #5
  %30 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offsets.i, align 4
  %add.i = add i32 %31, 7075
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %call.i = call i32 @dm_read_reg_func(ptr noundef %33, i32 noundef %add.i, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i = and i32 %call.i, 1
  %cmp.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not, label %dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge, label %dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge

dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge, %dce110_timing_generator_is_counter_moving.exit.thread, %entry.while.end_crit_edge
  %34 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offsets.i, align 4
  %add.i1440 = add i32 %35, 7075
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %call.i1641 = call i32 @dm_read_reg_func(ptr noundef %37, i32 noundef %add.i1440, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i1742 = and i32 %call.i1641, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1742)
  %cmp.i18.not43 = icmp eq i32 %and.i.i1742, 0
  br i1 %cmp.i18.not43, label %while.body4.lr.ph, label %while.end.while.end8_crit_edge

while.end.while.end8_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end8

while.body4.lr.ph:                                ; preds = %while.end
  %38 = getelementptr inbounds %struct.crtc_position, ptr %position1.i19, i32 0, i32 1
  %39 = getelementptr inbounds %struct.crtc_position, ptr %position1.i19, i32 0, i32 2
  %40 = getelementptr inbounds %struct.crtc_position, ptr %position2.i20, i32 0, i32 1
  %41 = getelementptr inbounds %struct.crtc_position, ptr %position2.i20, i32 0, i32 2
  br label %while.body4

while.body4:                                      ; preds = %dce110_timing_generator_is_counter_moving.exit28.while.body4_crit_edge, %while.body4.lr.ph
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position1.i19) #5
  %42 = ptrtoint ptr %position1.i19 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %position1.i19, align 4, !annotation !78
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %38, align 4, !annotation !78
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %39, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position2.i20) #5
  %45 = ptrtoint ptr %position2.i20 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %position2.i20, align 4, !annotation !78
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %40, align 4, !annotation !78
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %41, align 4, !annotation !78
  %48 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tg, align 4
  %get_position.i21 = getelementptr inbounds %struct.timing_generator_funcs, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %get_position.i21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_position.i21, align 4
  call void %51(ptr noundef %tg, ptr noundef nonnull %position1.i19) #5
  %52 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tg, align 4
  %get_position2.i22 = getelementptr inbounds %struct.timing_generator_funcs, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %get_position2.i22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_position2.i22, align 4
  call void %55(ptr noundef %tg, ptr noundef nonnull %position2.i20) #5
  %56 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %38, align 4
  %58 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i23 = icmp eq i32 %57, %59
  br i1 %cmp.i23, label %land.lhs.true.i25, label %while.body4.dce110_timing_generator_is_counter_moving.exit28_crit_edge

while.body4.dce110_timing_generator_is_counter_moving.exit28_crit_edge: ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit28

land.lhs.true.i25:                                ; preds = %while.body4
  %60 = ptrtoint ptr %position1.i19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %position1.i19, align 4
  %62 = ptrtoint ptr %position2.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %position2.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp5.i24 = icmp eq i32 %61, %63
  br i1 %cmp5.i24, label %dce110_timing_generator_is_counter_moving.exit28.thread, label %land.lhs.true.i25.dce110_timing_generator_is_counter_moving.exit28_crit_edge

land.lhs.true.i25.dce110_timing_generator_is_counter_moving.exit28_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit28

dce110_timing_generator_is_counter_moving.exit28.thread: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i20) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i19) #5
  br label %while.end8

dce110_timing_generator_is_counter_moving.exit28: ; preds = %land.lhs.true.i25.dce110_timing_generator_is_counter_moving.exit28_crit_edge, %while.body4.dce110_timing_generator_is_counter_moving.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i20) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i19) #5
  %64 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offsets.i, align 4
  %add.i14 = add i32 %65, 7075
  %66 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx.i, align 4
  %call.i16 = call i32 @dm_read_reg_func(ptr noundef %67, i32 noundef %add.i14, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i17 = and i32 %call.i16, 1
  %cmp.i18.not = icmp eq i32 %and.i.i17, 0
  br i1 %cmp.i18.not, label %dce110_timing_generator_is_counter_moving.exit28.while.body4_crit_edge, label %dce110_timing_generator_is_counter_moving.exit28.while.end8_crit_edge

dce110_timing_generator_is_counter_moving.exit28.while.end8_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end8

dce110_timing_generator_is_counter_moving.exit28.while.body4_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body4

while.end8:                                       ; preds = %dce110_timing_generator_is_counter_moving.exit28.while.end8_crit_edge, %dce110_timing_generator_is_counter_moving.exit28.thread, %while.end.while.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_is_counter_moving(ptr noundef %tg) #0 align 64 {
entry:
  %position1 = alloca %struct.crtc_position, align 4
  %position2 = alloca %struct.crtc_position, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position1) #5
  %0 = ptrtoint ptr %position1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %position1, align 4, !annotation !78
  %1 = getelementptr inbounds %struct.crtc_position, ptr %position1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !78
  %3 = getelementptr inbounds %struct.crtc_position, ptr %position1, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position2) #5
  %5 = ptrtoint ptr %position2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %position2, align 4, !annotation !78
  %6 = getelementptr inbounds %struct.crtc_position, ptr %position2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !78
  %8 = getelementptr inbounds %struct.crtc_position, ptr %position2, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !78
  %10 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tg, align 4
  %get_position = getelementptr inbounds %struct.timing_generator_funcs, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_position, align 4
  call void %13(ptr noundef %tg, ptr noundef nonnull %position1) #5
  %14 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg, align 4
  %get_position2 = getelementptr inbounds %struct.timing_generator_funcs, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_position2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_position2, align 4
  call void %17(ptr noundef %tg, ptr noundef nonnull %position2) #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp = icmp eq i32 %19, %21
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %22 = ptrtoint ptr %position1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %position1, align 4
  %24 = ptrtoint ptr %position2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %position2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp5 = icmp eq i32 %23, %25
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.else ], [ false, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_wait_for_vactive(ptr noundef %tg) local_unnamed_addr #0 align 64 {
entry:
  %position1.i = alloca %struct.crtc_position, align 4
  %position2.i = alloca %struct.crtc_position, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets.i, align 4
  %add.i5 = add i32 %1, 7075
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i6 = call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add.i5, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i7 = and i32 %call.i6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp.i.not8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp.i.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = getelementptr inbounds %struct.crtc_position, ptr %position1.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.crtc_position, ptr %position1.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.crtc_position, ptr %position2.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crtc_position, ptr %position2.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position1.i) #5
  %8 = ptrtoint ptr %position1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %position1.i, align 4, !annotation !78
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %4, align 4, !annotation !78
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %5, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position2.i) #5
  %11 = ptrtoint ptr %position2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %position2.i, align 4, !annotation !78
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %6, align 4, !annotation !78
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %7, align 4, !annotation !78
  %14 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg, align 4
  %get_position.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_position.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_position.i, align 4
  call void %17(ptr noundef %tg, ptr noundef nonnull %position1.i) #5
  %18 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg, align 4
  %get_position2.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %get_position2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_position2.i, align 4
  call void %21(ptr noundef %tg, ptr noundef nonnull %position2.i) #5
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i3 = icmp eq i32 %23, %25
  br i1 %cmp.i3, label %land.lhs.true.i, label %while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge

while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit

land.lhs.true.i:                                  ; preds = %while.body
  %26 = ptrtoint ptr %position1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %position1.i, align 4
  %28 = ptrtoint ptr %position2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %position2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp5.i = icmp eq i32 %27, %29
  br i1 %cmp5.i, label %dce110_timing_generator_is_counter_moving.exit.thread, label %land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge

land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_is_counter_moving.exit

dce110_timing_generator_is_counter_moving.exit.thread: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i) #5
  br label %while.end

dce110_timing_generator_is_counter_moving.exit:   ; preds = %land.lhs.true.i.dce110_timing_generator_is_counter_moving.exit_crit_edge, %while.body.dce110_timing_generator_is_counter_moving.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position2.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position1.i) #5
  %30 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offsets.i, align 4
  %add.i = add i32 %31, 7075
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %call.i = call i32 @dm_read_reg_func(ptr noundef %33, i32 noundef %add.i, ptr noundef nonnull @__func__.dce110_timing_generator_is_in_vertical_blank) #5
  %and.i.i = and i32 %call.i, 1
  %cmp.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not, label %dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge, label %dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge

dce110_timing_generator_is_counter_moving.exit.while.body_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge: ; preds = %dce110_timing_generator_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %dce110_timing_generator_is_counter_moving.exit.while.end_crit_edge, %dce110_timing_generator_is_counter_moving.exit.thread, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_setup_global_swap_lock(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %gsl_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %dcp = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcp, align 4
  %add = add i32 %1, 6800
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %gsl_master = getelementptr inbounds %struct.dcp_gsl_params, ptr %gsl_params, i32 0, i32 1
  %4 = ptrtoint ptr %gsl_master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gsl_master, align 4
  %inst = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 3
  %6 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  %or.i = and i32 %call, 268308478
  %shl.i = select i1 %cmp, i32 65536, i32 0
  %or.i70 = or i32 %or.i, %shl.i
  %or.i74 = or i32 %or.i70, 1610620929
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add7 = add i32 %11, 6800
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef %add7, i32 noundef %or.i74, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %12 = ptrtoint ptr %gsl_master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gsl_master, align 4
  %and42.i75 = and i32 %13, 7
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add15 = add i32 %17, 18470
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %add15, i32 noundef %and42.i75, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets, align 4
  %add19 = add i32 %21, 7047
  %call20 = tail call i32 @dm_read_reg_func(ptr noundef %19, i32 noundef %add19, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %24 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets, align 4
  %add26 = add i32 %25, 7034
  tail call void @dm_write_reg_func(ptr noundef %23, i32 noundef %add26, i32 noundef 0, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %or.i77 = or i32 %and42.i75, 134217728
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %27, i32 noundef %add, i32 noundef %or.i77, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %28 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offsets, align 4
  %add31 = add i32 %29, 7035
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %call33 = tail call i32 @dm_read_reg_func(ptr noundef %31, i32 noundef %add31, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  %sub = add i32 %call20, 16381
  %and.i78 = and i32 %call33, -2048000
  %and42.i79 = and i32 %sub, 16383
  %or.i80 = or i32 %and42.i79, %and.i78
  %or.i82 = or i32 %or.i80, 262144
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %33, i32 noundef %add31, i32 noundef %or.i82, ptr noundef nonnull @__func__.dce110_timing_generator_setup_global_swap_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_tear_down_global_swap_lock(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %dcp = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcp, align 4
  %add = add i32 %1, 6800
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets, align 4
  %add5 = add i32 %5, 7047
  %call6 = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add5, ptr noundef nonnull @__func__.dce110_timing_generator_tear_down_global_swap_lock) #5
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %add, i32 noundef 1610620928, ptr noundef nonnull @__func__.dce110_timing_generator_tear_down_global_swap_lock) #5
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add12 = add i32 %9, 7035
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %11, i32 noundef %add12, i32 noundef 131072, ptr noundef nonnull @__func__.dce110_timing_generator_tear_down_global_swap_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_enable_advanced_request(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable, ptr nocapture noundef readonly %timing) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7091
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_enable_advanced_request) #5
  %and.i = and i32 %call, -1044744
  %masksel = select i1 %enable, i32 0, i32 256
  %value.0 = or i32 %and.i, %masksel
  %v_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 11
  %4 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_sync_width, align 4
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 10
  %6 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v_front_porch, align 4
  %add3 = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add3)
  %cmp = icmp ult i32 %add3, 4
  %value.1.v = select i1 %cmp, i32 12288, i32 16388
  %value.1 = or i32 %value.0, %value.1.v
  %or.i37 = or i32 %value.1, 3
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef %add, i32 noundef %or.i37, ptr noundef nonnull @__func__.dce110_timing_generator_enable_advanced_request) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_lock_master(ptr nocapture noundef readonly %tg, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7101
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_set_lock_master) #5
  %cond = zext i1 %lock to i32
  %and.i = and i32 %call, -2
  %or.i = or i32 %and.i, %cond
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_timing_generator_set_lock_master) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_enable_reset_trigger(ptr nocapture noundef readonly %tg, i32 %source_tg_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7055
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_enable_reset_trigger) #5
  %and.i = and i32 %call, 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add5 = add i32 %7, 7062
  %call6 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %add5, ptr noundef nonnull @__func__.dce110_timing_generator_enable_reset_trigger) #5
  %and.i51 = and i32 %call6, 1624035072
  %8 = shl nuw nsw i32 %and.i, 12
  %or.i = or i32 %and.i51, %8
  %9 = shl nuw nsw i32 %and.i, 16
  %10 = or i32 %or.i, %9
  %or.i62 = xor i32 %10, -2147479536
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets, align 4
  %add17 = add i32 %14, 7062
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %add17, i32 noundef %or.i62, ptr noundef nonnull @__func__.dce110_timing_generator_enable_reset_trigger) #5
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offsets, align 4
  %add21 = add i32 %18, 7064
  %call22 = tail call i32 @dm_read_reg_func(ptr noundef %16, i32 noundef %add21, ptr noundef nonnull @__func__.dce110_timing_generator_enable_reset_trigger) #5
  %and.i63 = and i32 %call22, -16777476
  %or.i68 = or i32 %and.i63, 16777474
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %21 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets, align 4
  %add29 = add i32 %22, 7064
  tail call void @dm_write_reg_func(ptr noundef %20, i32 noundef %add29, i32 noundef %or.i68, ptr noundef nonnull @__func__.dce110_timing_generator_enable_reset_trigger) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_enable_crtc_reset(ptr nocapture noundef readonly %tg, i32 noundef %source_tg_inst, ptr nocapture noundef readonly %crtc_tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.crtc_trigger_info, ptr %crtc_tp, i32 0, i32 2
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %falling_edge.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 65536, %sw.bb1 ], [ 0, %sw.bb ]
  %rising_edge.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb1 ], [ 4096, %sw.bb ]
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %5 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets, align 4
  %add = add i32 %6, 7062
  %call = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %and.i = and i32 %call, 2147274496
  %and42.i = and i32 %source_tg_inst, 31
  %or.i = or i32 %and42.i, %falling_edge.0
  %or.i111 = or i32 %or.i, %rising_edge.0
  %or.i115 = or i32 %or.i111, %and.i
  %or.i117 = or i32 %or.i115, -2147483648
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %9 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offsets, align 4
  %add10 = add i32 %10, 7062
  tail call void @dm_write_reg_func(ptr noundef %8, i32 noundef %add10, i32 noundef %or.i117, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %delay = getelementptr inbounds %struct.crtc_trigger_info, ptr %crtc_tp, i32 0, i32 3
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %12, label %sw.epilog.sw.epilog55_crit_edge [
    i32 1, label %sw.bb11
    i32 0, label %sw.bb31
  ]

sw.epilog.sw.epilog55_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog55

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add15 = add i32 %17, 7064
  %call16 = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %add15, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %and.i120 = and i32 %call16, -16777476
  %or.i121 = or i32 %and.i120, 16777216
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets, align 4
  %add23 = add i32 %21, 7064
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %add23, i32 noundef %or.i121, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %24 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets, align 4
  %add27 = add i32 %25, 7084
  %call28 = tail call i32 @dm_read_reg_func(ptr noundef %23, i32 noundef %add27, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  br label %sw.epilog55

sw.bb31:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offsets, align 4
  %add35 = add i32 %29, 7084
  %call36 = tail call i32 @dm_read_reg_func(ptr noundef %27, i32 noundef %add35, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %or.i127 = and i32 %call36, -196865
  %and.i128 = or i32 %or.i127, 256
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %32 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offsets, align 4
  %add42 = add i32 %33, 7084
  tail call void @dm_write_reg_func(ptr noundef %31, i32 noundef %add42, i32 noundef %and.i128, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offsets, align 4
  %add46 = add i32 %37, 7064
  %call47 = tail call i32 @dm_read_reg_func(ptr noundef %35, i32 noundef %add46, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %and.i129 = and i32 %call47, -16777476
  %or.i134 = or i32 %and.i129, 16777474
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offsets, align 4
  %add54 = add i32 %41, 7064
  tail call void @dm_write_reg_func(ptr noundef %39, i32 noundef %add54, i32 noundef %or.i134, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %sw.bb31, %sw.bb11, %sw.epilog.sw.epilog55_crit_edge
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %44 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offsets, align 4
  %add59 = add i32 %45, 7102
  %call60 = tail call i32 @dm_read_reg_func(ptr noundef %43, i32 noundef %add59, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  %and.i135 = and i32 %call60, -8
  %or.i136 = or i32 %and.i135, 2
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  %48 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offsets, align 4
  %add65 = add i32 %49, 7102
  tail call void @dm_write_reg_func(ptr noundef %47, i32 noundef %add65, i32 noundef %or.i136, ptr noundef nonnull @__func__.dce110_timing_generator_enable_crtc_reset) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_disable_reset_trigger(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7064
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  %and.i50 = and i32 %call, -16777220
  %or.i = or i32 %and.i50, 16777216
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add6 = add i32 %7, 7064
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add6, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add10 = add i32 %11, 7084
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef %add10, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  %or.i52 = and i32 %call11, -196865
  %and.i53 = or i32 %or.i52, 256
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets, align 4
  %add17 = add i32 %15, 7084
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add17, i32 noundef %and.i53, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets, align 4
  %add21 = add i32 %19, 7062
  %call22 = tail call i32 @dm_read_reg_func(ptr noundef %17, i32 noundef %add21, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  %and.i56 = and i32 %call22, 2147483392
  %or.i57 = or i32 %and.i56, -2147483648
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offsets, align 4
  %add29 = add i32 %23, 7062
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef %add29, i32 noundef %or.i57, ptr noundef nonnull @__func__.dce110_timing_generator_disable_reset_trigger) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_timing_generator_did_triggered_reset_occur(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7064
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_timing_generator_did_triggered_reset_occur) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add4 = add i32 %7, 7084
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %add4, ptr noundef nonnull @__func__.dce110_timing_generator_did_triggered_reset_occur) #5
  %8 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp ne i32 %8, 0
  %and.i14 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %cmp8 = icmp ne i32 %and.i14, 0
  %spec.select = select i1 %cmp.not, i1 true, i1 %cmp8
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_disable_vga(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 3
  %0 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %controller_id, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce110_timing_generator_disable_vga, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %addr.0, ptr noundef nonnull @__func__.dce110_timing_generator_disable_vga) #5
  %and.i20 = and i32 %call, -66306
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %addr.0, i32 noundef %and.i20, ptr noundef nonnull @__func__.dce110_timing_generator_disable_vga) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_timing_generator_set_overscan_color_black(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %color) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and42.i26 = and i32 %shl.i, 1072693248
  %or.i = or i32 %and42.i26, %and42.i
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %7 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %color_g_y, align 2
  %conv4 = zext i16 %8 to i32
  %shl.i27 = shl nuw nsw i32 %conv4, 10
  %and42.i28 = and i32 %shl.i27, 1047552
  %or.i29 = or i32 %or.i, %and42.i28
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %9 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offsets, align 4
  %add = add i32 %10, 7112
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef %or.i29, ptr noundef nonnull @__func__.dce110_timing_generator_set_overscan_color_black) #5
  %11 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offsets, align 4
  %add8 = add i32 %12, 7116
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add8, i32 noundef %or.i29, ptr noundef nonnull @__func__.dce110_timing_generator_set_overscan_color_black) #5
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets, align 4
  %add11 = add i32 %14, 7114
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add11, i32 noundef %or.i29, ptr noundef nonnull @__func__.dce110_timing_generator_set_overscan_color_black) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_program_blank_color(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %black_color) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7116
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb, align 2
  %and.i = and i32 %call, -1073741824
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %7 to i32
  %8 = and i16 %5, 1023
  %and42.i.masked = zext i16 %8 to i32
  %and.i23 = or i32 %and.i, %and42.i.masked
  %shl.i = shl nuw nsw i32 %conv2, 10
  %9 = ptrtoint ptr %black_color to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %black_color, align 2
  %conv4 = zext i16 %10 to i32
  %shl.i.masked = and i32 %shl.i, 1047552
  %and.i26 = or i32 %and.i23, %shl.i.masked
  %shl.i27 = shl i32 %conv4, 20
  %and42.i28 = and i32 %shl.i27, 1072693248
  %or.i29 = or i32 %and.i26, %and42.i28
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %add, i32 noundef %or.i29, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets, align 4
  %add9 = add i32 %14, 7114
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %16, i32 noundef %add9, i32 noundef %or.i29, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_set_overscan_color(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %overscan_color) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 2
  %2 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %color_b_cb, align 2
  %4 = and i16 %3, 1023
  %and42.i = zext i16 %4 to i32
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 1
  %5 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %6 to i32
  %shl.i = shl nuw nsw i32 %conv2, 10
  %and42.i12 = and i32 %shl.i, 1047552
  %or.i = or i32 %and42.i12, %and42.i
  %7 = ptrtoint ptr %overscan_color to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %overscan_color, align 2
  %conv4 = zext i16 %8 to i32
  %shl.i13 = shl i32 %conv4, 20
  %and42.i14 = and i32 %shl.i13, 1072693248
  %or.i15 = or i32 %or.i, %and42.i14
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %9 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offsets, align 4
  %add = add i32 %10, 7112
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef %or.i15, ptr noundef nonnull @__func__.dce110_tg_set_overscan_color) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_program_timing(ptr noundef %tg, ptr nocapture noundef readonly %timing, i32 %vready_offset, i32 %vstartup_start, i32 %vupdate_offset, i32 %vupdate_width, i32 %signal, i1 noundef zeroext %use_vbios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %use_vbios, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef %tg, ptr noundef %timing)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce110_timing_generator_program_blanking(ptr noundef %tg, ptr noundef %timing)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_tg_is_blanked(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7069
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce110_tg_is_blanked) #5
  %4 = and i32 %call, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %4)
  %5 = icmp eq i32 %4, 257
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_set_blank(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable_blanking) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 4
  %add = add i32 %3, 7094
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add, i32 noundef 65536, ptr noundef nonnull @__func__.dce110_tg_set_blank) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add5 = add i32 %7, 7069
  %. = select i1 %enable_blanking, i32 256, i32 0
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add5, i32 noundef %., ptr noundef nonnull @__func__.dce110_tg_set_blank) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_tg_validate_timing(ptr nocapture noundef readonly %tg, ptr noundef readonly %timing) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not.i = icmp eq ptr %timing, null
  br i1 %cmp.not.i, label %land.rhs.i, label %if.end45.i

land.rhs.i:                                       ; preds = %entry
  %.b106.i = load i1, ptr @dce110_timing_generator_validate_timing.__already_done, align 1
  br i1 %.b106.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then.i, !prof !77

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_timing_generator_validate_timing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1123, i32 noundef 9, ptr noundef null) #5
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then39.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %dce110_timing_generator_validate_timing.exit

if.end45.i:                                       ; preds = %entry
  %h_border_right.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 3
  %0 = ptrtoint ptr %h_border_right.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_border_right.i, align 4
  %h_front_porch.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 4
  %2 = ptrtoint ptr %h_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_front_porch.i, align 4
  %h_addressable.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 2
  %4 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h_addressable.i, align 4
  %timing_3d_format.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 15
  %6 = ptrtoint ptr %timing_3d_format.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timing_3d_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.not.i = icmp eq i32 %7, 0
  br i1 %cmp47.not.i, label %if.end49.i, label %if.end45.i.dce110_timing_generator_validate_timing.exit_crit_edge

if.end45.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

if.end49.i:                                       ; preds = %if.end45.i
  %flags.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 21
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %cmp50.i = icmp slt i32 %bf.load.i, 0
  br i1 %cmp50.i, label %if.end49.i.dce110_timing_generator_validate_timing.exit_crit_edge, label %if.end52.i

if.end49.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

if.end52.i:                                       ; preds = %if.end49.i
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timing, align 4
  %max_h_total.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 4
  %11 = ptrtoint ptr %max_h_total.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_h_total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp53.i = icmp ugt i32 %10, %12
  br i1 %cmp53.i, label %if.end52.i.dce110_timing_generator_validate_timing.exit_crit_edge, label %lor.lhs.false.i

if.end52.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

lor.lhs.false.i:                                  ; preds = %if.end52.i
  %v_total.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %13 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v_total.i, align 4
  %max_v_total.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 5
  %15 = ptrtoint ptr %max_v_total.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_v_total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp54.i = icmp ugt i32 %14, %16
  br i1 %cmp54.i, label %lor.lhs.false.i.dce110_timing_generator_validate_timing.exit_crit_edge, label %if.end56.i

lor.lhs.false.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

if.end56.i:                                       ; preds = %lor.lhs.false.i
  %h_border_left.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 1
  %17 = ptrtoint ptr %h_border_left.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_border_left.i, align 4
  %19 = add i32 %5, %1
  %20 = add i32 %19, %18
  %sub61.i = sub i32 %10, %20
  %min_h_blank.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 6
  %21 = ptrtoint ptr %min_h_blank.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_h_blank.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub61.i, i32 %22)
  %cmp62.i = icmp ult i32 %sub61.i, %22
  br i1 %cmp62.i, label %if.end56.i.dce110_timing_generator_validate_timing.exit_crit_edge, label %if.end64.i

if.end56.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

if.end64.i:                                       ; preds = %if.end56.i
  %min_h_front_porch.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 7
  %23 = ptrtoint ptr %min_h_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_h_front_porch.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp66.i = icmp ult i32 %3, %24
  br i1 %cmp66.i, label %if.end64.i.dce110_timing_generator_validate_timing.exit_crit_edge, label %if.end68.i

if.end64.i.dce110_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_timing_generator_validate_timing.exit

if.end68.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  %h_sync_width.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 5
  %25 = ptrtoint ptr %h_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_sync_width.i, align 4
  %sub73.neg.i = sub i32 %sub61.i, %3
  %sub74.i = add i32 %sub73.neg.i, %26
  %min_h_back_porch.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 8
  %27 = ptrtoint ptr %min_h_back_porch.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_h_back_porch.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub74.i, i32 %28)
  %cmp75.i = icmp uge i32 %sub74.i, %28
  br label %dce110_timing_generator_validate_timing.exit

dce110_timing_generator_validate_timing.exit:     ; preds = %if.end68.i, %if.end64.i.dce110_timing_generator_validate_timing.exit_crit_edge, %if.end56.i.dce110_timing_generator_validate_timing.exit_crit_edge, %lor.lhs.false.i.dce110_timing_generator_validate_timing.exit_crit_edge, %if.end52.i.dce110_timing_generator_validate_timing.exit_crit_edge, %if.end49.i.dce110_timing_generator_validate_timing.exit_crit_edge, %if.end45.i.dce110_timing_generator_validate_timing.exit_crit_edge, %if.then39.i
  %retval.0.i = phi i1 [ false, %if.then39.i ], [ false, %if.end45.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ false, %if.end49.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ false, %lor.lhs.false.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ false, %if.end52.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ false, %if.end56.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ false, %if.end64.i.dce110_timing_generator_validate_timing.exit_crit_edge ], [ %cmp75.i, %if.end68.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_wait_for_state(ptr noundef %tg, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce110_timing_generator_wait_for_vblank(ptr noundef %tg)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce110_timing_generator_wait_for_vactive(ptr noundef %tg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_tg_set_colors(ptr nocapture noundef readonly %tg, ptr noundef readonly %blank_color, ptr noundef readonly %overscan_color) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %blank_color, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets.i, align 4
  %add.i = add i32 %1, 7116
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  %color_b_cb.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb.i, align 2
  %and.i.i = and i32 %call.i, -1073741824
  %color_g_y.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y.i, align 2
  %conv2.i = zext i16 %7 to i32
  %8 = and i16 %5, 1023
  %and42.i.masked.i = zext i16 %8 to i32
  %and.i23.i = or i32 %and.i.i, %and42.i.masked.i
  %shl.i.i = shl nuw nsw i32 %conv2.i, 10
  %9 = ptrtoint ptr %blank_color to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blank_color, align 2
  %conv4.i = zext i16 %10 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 1047552
  %and.i26.i = or i32 %and.i23.i, %shl.i.masked.i
  %shl.i27.i = shl i32 %conv4.i, 20
  %and42.i28.i = and i32 %shl.i27.i, 1072693248
  %or.i29.i = or i32 %and.i26.i, %and42.i28.i
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %add.i, i32 noundef %or.i29.i, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  %13 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets.i, align 4
  %add9.i = add i32 %14, 7114
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %16, i32 noundef %add9.i, i32 noundef %or.i29.i, ptr noundef nonnull @__func__.dce110_tg_program_blank_color) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp1.not = icmp eq ptr %overscan_color, null
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx1.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %17 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx1.i, align 4
  %color_b_cb.i7 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 2
  %19 = ptrtoint ptr %color_b_cb.i7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %color_b_cb.i7, align 2
  %21 = and i16 %20, 1023
  %and42.i.i = zext i16 %21 to i32
  %color_g_y.i8 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 1
  %22 = ptrtoint ptr %color_g_y.i8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %color_g_y.i8, align 2
  %conv2.i9 = zext i16 %23 to i32
  %shl.i.i10 = shl nuw nsw i32 %conv2.i9, 10
  %and42.i12.i = and i32 %shl.i.i10, 1047552
  %or.i.i = or i32 %and42.i12.i, %and42.i.i
  %24 = ptrtoint ptr %overscan_color to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %overscan_color, align 2
  %conv4.i11 = zext i16 %25 to i32
  %shl.i13.i = shl i32 %conv4.i11, 20
  %and42.i14.i = and i32 %shl.i13.i, 1072693248
  %or.i15.i = or i32 %or.i.i, %and42.i14.i
  %offsets.i12 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %26 = ptrtoint ptr %offsets.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets.i12, align 4
  %add.i13 = add i32 %27, 7112
  tail call void @dm_write_reg_func(ptr noundef %18, i32 noundef %add.i13, i32 noundef %or.i15.i, ptr noundef nonnull @__func__.dce110_tg_set_overscan_color) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_arm_vert_intr(ptr noundef %tg, i8 noundef zeroext %width) #0 align 64 {
entry:
  %v_blank_start = alloca i32, align 4
  %v_blank_end = alloca i32, align 4
  %h_position = alloca i32, align 4
  %v_position = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_blank_start) #5
  %0 = ptrtoint ptr %v_blank_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %v_blank_start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_blank_end) #5
  %1 = ptrtoint ptr %v_blank_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %v_blank_end, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h_position) #5
  %2 = ptrtoint ptr %h_position to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %h_position, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_position) #5
  %3 = ptrtoint ptr %v_position to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %v_position, align 4, !annotation !78
  %4 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg, align 4
  %get_scanoutpos = getelementptr inbounds %struct.timing_generator_funcs, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %get_scanoutpos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_scanoutpos, align 4
  call void %7(ptr noundef %tg, ptr noundef nonnull %v_blank_start, ptr noundef nonnull %v_blank_end, ptr noundef nonnull %h_position, ptr noundef nonnull %v_position) #5
  %8 = ptrtoint ptr %v_blank_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v_blank_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %v_blank_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v_blank_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1 = icmp eq i32 %11, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %and42.i = and i32 %9, 16383
  %conv = zext i8 %width to i32
  %add = add i32 %9, %conv
  %shl.i = shl i32 %add, 16
  %and42.i14 = and i32 %shl.i, 1073676288
  %or.i = or i32 %and42.i14, %and42.i
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets, align 4
  %add3 = add i32 %15, 7118
  call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add3, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_arm_vert_intr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v_position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h_position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v_blank_end) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v_blank_start) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_configure_crc(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets.i, align 4
  %add.i = add i32 %1, 7068
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull @__func__.dce110_is_tg_enabled) #5
  %4 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp ne i32 %4, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets.i, align 4
  %add = add i32 %6, 7124
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %8, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  %enable = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 12
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offsets.i, align 4
  %add5 = add i32 %12, 7125
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %params, align 4
  %15 = and i16 %14, 16383
  %and42.i = zext i16 %15 to i32
  %windowa_x_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 1
  %16 = ptrtoint ptr %windowa_x_end to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %windowa_x_end, align 2
  %conv7 = zext i16 %17 to i32
  %shl.i = shl nuw i32 %conv7, 16
  %and42.i83 = and i32 %shl.i, 1073676288
  %or.i = or i32 %and42.i83, %and42.i
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %add5, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  %20 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i, align 4
  %add12 = add i32 %21, 7126
  %windowa_y_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 2
  %22 = ptrtoint ptr %windowa_y_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %windowa_y_start, align 4
  %24 = and i16 %23, 16383
  %and42.i84 = zext i16 %24 to i32
  %windowa_y_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %windowa_y_end to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %windowa_y_end, align 2
  %conv15 = zext i16 %26 to i32
  %shl.i85 = shl nuw i32 %conv15, 16
  %and42.i86 = and i32 %shl.i85, 1073676288
  %or.i87 = or i32 %and42.i86, %and42.i84
  %27 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %28, i32 noundef %add12, i32 noundef %or.i87, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  %29 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offsets.i, align 4
  %add20 = add i32 %30, 7127
  %windowb_x_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %windowb_x_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %windowb_x_start, align 4
  %33 = and i16 %32, 16383
  %and42.i88 = zext i16 %33 to i32
  %windowb_x_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 5
  %34 = ptrtoint ptr %windowb_x_end to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %windowb_x_end, align 2
  %conv23 = zext i16 %35 to i32
  %shl.i89 = shl nuw i32 %conv23, 16
  %and42.i90 = and i32 %shl.i89, 1073676288
  %or.i91 = or i32 %and42.i90, %and42.i88
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %37, i32 noundef %add20, i32 noundef %or.i91, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  %38 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offsets.i, align 4
  %add28 = add i32 %39, 7128
  %windowb_y_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 6
  %40 = ptrtoint ptr %windowb_y_start to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %windowb_y_start, align 4
  %42 = and i16 %41, 16383
  %and42.i92 = zext i16 %42 to i32
  %windowb_y_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %windowb_y_end to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %windowb_y_end, align 2
  %conv31 = zext i16 %44 to i32
  %shl.i93 = shl nuw i32 %conv31, 16
  %and42.i94 = and i32 %shl.i93, 1073676288
  %or.i95 = or i32 %and42.i94, %and42.i92
  %45 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %46, i32 noundef %add28, i32 noundef %or.i95, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  %continuous_mode = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 11
  %47 = ptrtoint ptr %continuous_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %continuous_mode, align 2, !range !79
  %49 = shl nuw nsw i8 %48, 4
  %selection = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 8
  %50 = ptrtoint ptr %selection to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %selection, align 4
  %shl.i98 = shl i32 %51, 20
  %and42.i99 = and i32 %shl.i98, 7340032
  %52 = or i8 %49, 1
  %or.i100 = zext i8 %52 to i32
  %or.i101 = or i32 %and42.i99, %or.i100
  %53 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %54, i32 noundef %add, i32 noundef %or.i101, ptr noundef nonnull @__func__.dce110_configure_crc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_is_tg_enabled(ptr nocapture noundef readonly %tg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7068
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_is_tg_enabled) #5
  %4 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_get_crc(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %r_cr, ptr nocapture noundef writeonly %g_y, ptr nocapture noundef writeonly %b_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offsets, align 4
  %add = add i32 %1, 7124
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce110_get_crc) #5
  %and.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets, align 4
  %add4 = add i32 %5, 7129
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %call6 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add4, ptr noundef nonnull @__func__.dce110_get_crc) #5
  %and.i28 = and i32 %call6, 65535
  %8 = ptrtoint ptr %r_cr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i28, ptr %r_cr, align 4
  %shr.i = lshr i32 %call6, 16
  %9 = ptrtoint ptr %g_y to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr.i, ptr %g_y, align 4
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add11 = add i32 %11, 7130
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %call13 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef %add11, ptr noundef nonnull @__func__.dce110_get_crc) #5
  %and.i30 = and i32 %call13, 65535
  %14 = ptrtoint ptr %b_cb to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i30, ptr %b_cb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %15 = xor i1 %tobool.not, true
  ret i1 %15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_timing_generator_construct(ptr nocapture noundef writeonly %tg110, ptr noundef %ctx, i32 noundef %instance, ptr nocapture noundef readonly %offsets) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %instance, 1
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 3
  %0 = ptrtoint ptr %controller_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %controller_id, align 4
  %inst = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 3
  %1 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %instance, ptr %inst, align 4
  %offsets1 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %offsets1, ptr %offsets, i32 12)
  %3 = ptrtoint ptr %tg110 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce110_tg_funcs, ptr %tg110, align 4
  %ctx4 = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 2
  %4 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %ctx4, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %5 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dc_bios, align 4
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 1
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bp, align 4
  %max_h_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 4
  %8 = ptrtoint ptr %max_h_total to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %max_h_total, align 4
  %max_v_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 5
  %9 = ptrtoint ptr %max_v_total to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16384, ptr %max_v_total, align 4
  %min_h_blank = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 6
  %10 = ptrtoint ptr %min_h_blank to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 56, ptr %min_h_blank, align 4
  %min_h_front_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 7
  %11 = ptrtoint ptr %min_h_front_porch to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %min_h_front_porch, align 4
  %min_h_back_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 8
  %12 = ptrtoint ptr %min_h_back_porch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %min_h_back_porch, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__func__.dce110_timing_generator_set_early_control, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 113, i32 11}
!2 = !{ptr @__func__.dce110_timing_generator_enable_crtc, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 140, i32 2}
!4 = !{ptr @__func__.dce110_timing_generator_program_blank_color, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 157, i32 19}
!6 = !{ptr @__func__.dce110_timing_generator_set_drr, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 378, i32 16}
!8 = !{ptr @__func__.dce110_timing_generator_set_static_screen_control, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 483, i32 23}
!10 = !{ptr @__func__.dce110_timing_generator_get_vblank_counter, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 516, i32 19}
!12 = !{ptr @__func__.dce110_timing_generator_get_position, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 539, i32 10}
!14 = !{ptr @__func__.dce110_timing_generator_get_crtc_scanoutpos, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 579, i32 20}
!16 = !{ptr @__func__.dce110_timing_generator_program_blanking, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 619, i32 10}
!18 = !{ptr @__func__.dce110_timing_generator_set_test_pattern, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 776, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1123, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.dce110_timing_generator_setup_global_swap_lock, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1226, i32 10}
!25 = !{ptr @__func__.dce110_timing_generator_tear_down_global_swap_lock, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1352, i32 3}
!27 = !{ptr @__func__.dce110_timing_generator_enable_advanced_request, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1416, i32 19}
!29 = !{ptr @__func__.dce110_timing_generator_set_lock_master, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1478, i32 19}
!31 = !{ptr @__func__.dce110_timing_generator_enable_reset_trigger, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1501, i32 24}
!33 = !{ptr @__func__.dce110_timing_generator_enable_crtc_reset, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1599, i32 10}
!35 = !{ptr @__func__.dce110_timing_generator_disable_reset_trigger, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1716, i32 10}
!37 = !{ptr @__func__.dce110_timing_generator_did_triggered_reset_occur, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1778, i32 19}
!39 = !{ptr @__func__.dce110_timing_generator_disable_vga, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1827, i32 10}
!41 = !{ptr @__func__.dce110_timing_generator_set_overscan_color_black, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1873, i32 2}
!43 = !{ptr @__func__.dce110_tg_program_blank_color, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1898, i32 19}
!45 = !{ptr @__func__.dce110_tg_set_overscan_color, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1949, i32 2}
!47 = !{ptr @__func__.dce110_tg_is_blanked, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1970, i32 19}
!49 = !{ptr @__func__.dce110_tg_set_blank, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 1996, i32 2}
!51 = !{ptr @__func__.dce110_arm_vert_intr, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 2079, i32 2}
!53 = !{ptr @__func__.dce110_configure_crc, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 2113, i32 2}
!55 = !{ptr @__func__.dce110_get_crc, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 2184, i32 10}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!59 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.program_horz_count_by_2, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 261, i32 11}
!62 = !{ptr @__func__.dce110_timing_generator_is_in_vertical_blank, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 100, i32 10}
!64 = !{ptr @__func__.dce110_is_tg_enabled, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 2092, i32 10}
!66 = !{ptr @dce110_tg_funcs, !67, !"dce110_tg_funcs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.c", i32 2203, i32 44}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"auto-init"}
!79 = !{i8 0, i8 2}
