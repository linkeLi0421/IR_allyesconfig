; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce120/dce120_timing_generator.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c"
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
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crtc_position = type { i32, i32, i32 }
%struct.tg_color = type { i16, i16, i16 }
%struct.dcp_gsl_params = type { i32, i32 }
%struct.drr_params = type { i32, i32, i32, i32, i8 }
%struct.crc_params = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8 }

@dce120_tg_funcs = internal constant { %struct.timing_generator_funcs, [72 x i8] } { %struct.timing_generator_funcs { ptr @dce120_tg_validate_timing, ptr @dce120_tg_program_timing, ptr null, ptr null, ptr null, ptr @dce120_timing_generator_enable_crtc, ptr @dce110_timing_generator_disable_crtc, ptr null, ptr @dce110_timing_generator_is_counter_moving, ptr @dce120_timing_generator_get_crtc_position, ptr @dce120_timing_generator_get_vblank_counter, ptr @dce120_timing_generator_get_crtc_scanoutpos, ptr null, ptr null, ptr @dce120_timing_generator_set_early_control, ptr @dce120_tg_wait_for_state, ptr @dce120_tg_set_blank, ptr @dce120_tg_is_blanked, ptr null, ptr @dce120_timing_generator_set_overscan_color_black, ptr @dce120_timing_generator_program_blank_color, ptr @dce120_tg_set_colors, ptr @dce120_timing_generator_disable_vga, ptr @dce120_timing_generator_did_triggered_reset_occur, ptr @dce120_timing_generator_setup_global_swap_lock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce120_timing_generator_enable_reset_trigger, ptr null, ptr @dce120_timing_generator_disable_reset_trigger, ptr @dce120_timing_generator_tear_down_global_swap_lock, ptr @dce120_timing_generator_enable_advanced_request, ptr @dce120_timing_generator_set_drr, ptr null, ptr null, ptr @dce120_timing_generator_set_static_screen_control, ptr @dce120_timing_generator_set_test_pattern, ptr @dce120_arm_vert_intr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce120_is_tg_enabled, ptr null, ptr null, ptr null, ptr null, ptr @dce120_configure_crc, ptr @dce120_get_crc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@__func__.dce120_timing_generator_get_crtc_position = private unnamed_addr constant [42 x i8] c"dce120_timing_generator_get_crtc_position\00", align 1
@__func__.dce120_timing_generator_get_vblank_counter = private unnamed_addr constant [43 x i8] c"dce120_timing_generator_get_vblank_counter\00", align 1
@__func__.dce120_timing_generator_get_crtc_scanoutpos = private unnamed_addr constant [44 x i8] c"dce120_timing_generator_get_crtc_scanoutpos\00", align 1
@__func__.dce120_timing_generator_is_in_vertical_blank = private unnamed_addr constant [45 x i8] c"dce120_timing_generator_is_in_vertical_blank\00", align 1
@__func__.dce120_tg_set_blank = private unnamed_addr constant [20 x i8] c"dce120_tg_set_blank\00", align 1
@__func__.dce120_tg_is_blanked = private unnamed_addr constant [21 x i8] c"dce120_tg_is_blanked\00", align 1
@__func__.dce120_timing_generator_set_overscan_color_black = private unnamed_addr constant [49 x i8] c"dce120_timing_generator_set_overscan_color_black\00", align 1
@__func__.dce120_tg_program_blank_color = private unnamed_addr constant [30 x i8] c"dce120_tg_program_blank_color\00", align 1
@__func__.dce120_timing_generator_disable_vga = private unnamed_addr constant [36 x i8] c"dce120_timing_generator_disable_vga\00", align 1
@__func__.dce120_timing_generator_did_triggered_reset_occur = private unnamed_addr constant [50 x i8] c"dce120_timing_generator_did_triggered_reset_occur\00", align 1
@__func__.dce120_timing_generator_setup_global_swap_lock = private unnamed_addr constant [47 x i8] c"dce120_timing_generator_setup_global_swap_lock\00", align 1
@__func__.dce120_timing_generator_enable_reset_trigger = private unnamed_addr constant [45 x i8] c"dce120_timing_generator_enable_reset_trigger\00", align 1
@__func__.dce120_timing_generator_enable_advanced_request = private unnamed_addr constant [48 x i8] c"dce120_timing_generator_enable_advanced_request\00", align 1
@__func__.dce120_timing_generator_set_test_pattern = private unnamed_addr constant [41 x i8] c"dce120_timing_generator_set_test_pattern\00", align 1
@__func__.dce120_is_tg_enabled = private unnamed_addr constant [21 x i8] c"dce120_is_tg_enabled\00", align 1
@__func__.dce120_configure_crc = private unnamed_addr constant [21 x i8] c"dce120_configure_crc\00", align 1
@__func__.dce120_get_crc = private unnamed_addr constant [15 x i8] c"dce120_get_crc\00", align 1
@switch.table.dce120_timing_generator_disable_vga = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 206, i32 248, i32 249, i32 250, i32 251], [44 x i8] zeroinitializer }, align 32
@switch.table.dce120_timing_generator_set_test_pattern = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 5, i32 6, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 11]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"dce120_tg_funcs\00", align 1
@___asan_gen_.4 = private constant [77 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 1165, i32 44 }
@___asan_gen_.6 = private unnamed_addr constant [49 x i8] c"switch.table.dce120_timing_generator_disable_vga\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [54 x i8] c"switch.table.dce120_timing_generator_set_test_pattern\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @dce120_tg_funcs, ptr @switch.table.dce120_timing_generator_disable_vga, ptr @switch.table.dce120_timing_generator_set_test_pattern], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_tg_funcs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce120_timing_generator_disable_vga to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce120_timing_generator_set_test_pattern to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce120_timing_generator_construct(ptr nocapture noundef writeonly %tg110, ptr noundef %ctx, i32 noundef %instance, ptr nocapture noundef readonly %offsets) local_unnamed_addr #0 align 64 {
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
  store ptr @dce120_tg_funcs, ptr %tg110, align 4
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
  store i32 32, ptr %min_h_blank, align 4
  %min_h_front_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 7
  %11 = ptrtoint ptr %min_h_front_porch to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %min_h_front_porch, align 4
  %min_h_back_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 8
  %12 = ptrtoint ptr %min_h_back_porch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %min_h_back_porch, align 4
  %min_h_sync_width = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 9
  %13 = ptrtoint ptr %min_h_sync_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %min_h_sync_width, align 4
  %min_v_sync_width = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 10
  %14 = ptrtoint ptr %min_v_sync_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %min_v_sync_width, align 4
  %min_v_blank = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 11
  %15 = ptrtoint ptr %min_v_blank to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %min_v_blank, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_tg_validate_timing(ptr noundef %tg, ptr noundef %timing) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 21
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %flags.i, align 4
  %v_total.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %1 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v_total.i, align 4
  %v_addressable.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 8
  %3 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v_addressable.i, align 4
  %v_border_top.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 7
  %5 = ptrtoint ptr %v_border_top.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v_border_top.i, align 4
  %v_border_bottom.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 9
  %7 = ptrtoint ptr %v_border_bottom.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v_border_bottom.i, align 4
  %call.i = tail call zeroext i1 @dce110_timing_generator_validate_timing(ptr noundef %tg, ptr noundef %timing, i32 noundef 0) #5
  br i1 %call.i, label %if.end.i, label %entry.dce120_timing_generator_validate_timing.exit_crit_edge

entry.dce120_timing_generator_validate_timing.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_timing_generator_validate_timing.exit

if.end.i:                                         ; preds = %entry
  %9 = add i32 %4, %6
  %10 = add i32 %9, %8
  %sub2.i = sub i32 %2, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %mul.i = mul i32 %sub2.i, %cond.i
  %min_v_blank.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 11
  %11 = ptrtoint ptr %min_v_blank.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_v_blank.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp.i = icmp ult i32 %mul.i, %12
  br i1 %cmp.i, label %if.end.i.dce120_timing_generator_validate_timing.exit_crit_edge, label %lor.lhs.false.i

if.end.i.dce120_timing_generator_validate_timing.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_timing_generator_validate_timing.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %h_sync_width.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 5
  %13 = ptrtoint ptr %h_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_sync_width.i, align 4
  %min_h_sync_width.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 9
  %15 = ptrtoint ptr %min_h_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_h_sync_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp ult i32 %14, %16
  br i1 %cmp3.i, label %lor.lhs.false.i.dce120_timing_generator_validate_timing.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.dce120_timing_generator_validate_timing.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_timing_generator_validate_timing.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %v_sync_width.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 11
  %17 = ptrtoint ptr %v_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_sync_width.i, align 4
  %min_v_sync_width.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 10
  %19 = ptrtoint ptr %min_v_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_v_sync_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp5.i = icmp uge i32 %18, %20
  br label %dce120_timing_generator_validate_timing.exit

dce120_timing_generator_validate_timing.exit:     ; preds = %lor.lhs.false4.i, %lor.lhs.false.i.dce120_timing_generator_validate_timing.exit_crit_edge, %if.end.i.dce120_timing_generator_validate_timing.exit_crit_edge, %entry.dce120_timing_generator_validate_timing.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.dce120_timing_generator_validate_timing.exit_crit_edge ], [ false, %lor.lhs.false.i.dce120_timing_generator_validate_timing.exit_crit_edge ], [ false, %if.end.i.dce120_timing_generator_validate_timing.exit_crit_edge ], [ %cmp5.i, %lor.lhs.false4.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_tg_program_timing(ptr noundef %tg, ptr noundef %timing, i32 noundef %vready_offset, i32 noundef %vstartup_start, i32 noundef %vupdate_offset, i32 noundef %vupdate_width, i32 noundef %signal, i1 noundef zeroext %use_vbios) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %use_vbios, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef %tg, ptr noundef %timing) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %14 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets.i, align 4
  %add5.i = add i32 %15, 15251
  %16 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timing, align 4
  %sub.i = add i32 %17, -1
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %add5.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub.i) #5
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  %20 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i, align 4
  %add11.i = add i32 %21, 15258
  %v_total.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %22 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v_total.i, align 4
  %sub12.i = add i32 %23, -1
  %call13.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %add11.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub12.i) #5
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx.i, align 4
  %26 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets.i, align 4
  %add19.i = add i32 %27, 15260
  %28 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v_total.i, align 4
  %sub21.i = add i32 %29, -1
  %call22.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %add19.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub21.i) #5
  %30 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx.i, align 4
  %32 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offsets.i, align 4
  %add28.i = add i32 %33, 15259
  %34 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v_total.i, align 4
  %sub30.i = add i32 %35, -1
  %call31.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %31, i32 noundef %add28.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub30.i) #5
  %36 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timing, align 4
  %h_border_left.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 1
  %38 = ptrtoint ptr %h_border_left.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_border_left.i, align 4
  %40 = add i32 %9, %7
  %41 = add i32 %40, %11
  %42 = add i32 %41, %39
  %sub34.i = sub i32 %37, %42
  %43 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %h_addressable.i, align 4
  %45 = ptrtoint ptr %h_border_right.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %h_border_right.i, align 4
  %add36.i = add i32 %44, %39
  %add38.i = add i32 %add36.i, %sub34.i
  %add40.i = add i32 %add38.i, %46
  %47 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx.i, align 4
  %49 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offsets.i, align 4
  %add46.i = add i32 %50, 15252
  %call47.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %add46.i, i32 noundef 2, i8 noundef zeroext 16, i32 noundef 1073676288, i32 noundef %sub34.i, i32 noundef 0, i32 noundef 16383, i32 noundef %add40.i) #5
  %51 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %v_total.i, align 4
  %v_border_top.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 7
  %53 = ptrtoint ptr %v_border_top.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %v_border_top.i, align 4
  %55 = add i32 %3, %1
  %56 = add i32 %55, %5
  %57 = add i32 %56, %54
  %sub50.i = sub i32 %52, %57
  %58 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v_addressable.i, align 4
  %60 = ptrtoint ptr %v_border_bottom.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %v_border_bottom.i, align 4
  %add52.i = add i32 %59, %54
  %add54.i = add i32 %add52.i, %sub50.i
  %add56.i = add i32 %add54.i, %61
  %62 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i, align 4
  %64 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offsets.i, align 4
  %add62.i = add i32 %65, 15264
  %call63.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %63, i32 noundef %add62.i, i32 noundef 2, i8 noundef zeroext 16, i32 noundef 1073676288, i32 noundef %sub50.i, i32 noundef 0, i32 noundef 16383, i32 noundef %add56.i) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_timing_generator_enable_crtc(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15311
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 7, i32 noundef 0) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15310
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %add7, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #5
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
  %call10 = tail call i32 %13(ptr noundef %9, i32 noundef %15, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_disable_crtc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_is_counter_moving(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_get_crtc_position(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %position) #1 align 64 {
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
  %add1 = add i32 %3, 15287
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_get_crtc_position) #5
  %and.i = lshr i32 %call, 16
  %shr.i = and i32 %and.i, 16383
  %horizontal_count = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 1
  %4 = ptrtoint ptr %horizontal_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %horizontal_count, align 4
  %and.i18 = and i32 %call, 16383
  %5 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i18, ptr %position, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add8 = add i32 %9, 15288
  %call9 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add8, ptr noundef nonnull @__func__.dce120_timing_generator_get_crtc_position) #5
  %and.i19 = and i32 %call9, 16383
  %nominal_vcount = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 2
  %10 = ptrtoint ptr %nominal_vcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i19, ptr %nominal_vcount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce120_timing_generator_get_vblank_counter(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15289
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_get_vblank_counter) #5
  %and.i = and i32 %call, 16777215
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_get_crtc_scanoutpos(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %v_blank_start, ptr nocapture noundef writeonly %v_blank_end, ptr nocapture noundef writeonly %h_position, ptr nocapture noundef writeonly %v_position) #1 align 64 {
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
  %add1 = add i32 %3, 15264
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_get_crtc_scanoutpos) #5
  %and.i = and i32 %call, 16383
  %4 = ptrtoint ptr %v_blank_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %v_blank_start, align 4
  %and.i7 = lshr i32 %call, 16
  %shr.i = and i32 %and.i7, 16383
  %5 = ptrtoint ptr %v_blank_end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %v_blank_end, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 4
  %add1.i = add i32 %9, 15287
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef %add1.i, ptr noundef nonnull @__func__.dce120_timing_generator_get_crtc_position) #5
  %and.i.i = lshr i32 %call.i, 16
  %shr.i.i = and i32 %and.i.i, 16383
  %and.i18.i = and i32 %call.i, 16383
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 4
  %add8.i = add i32 %13, 15288
  %call9.i = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add8.i, ptr noundef nonnull @__func__.dce120_timing_generator_get_crtc_position) #5
  %14 = ptrtoint ptr %h_position to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i.i, ptr %h_position, align 4
  %15 = ptrtoint ptr %v_position to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i18.i, ptr %v_position, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_set_early_control(ptr nocapture noundef readonly %tg, i32 noundef %early_cntl) #1 align 64 {
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
  %add1 = add i32 %3, 15279
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 1, i8 noundef zeroext 20, i32 noundef 7340032, i32 noundef %early_cntl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_tg_wait_for_state(ptr noundef %tg, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ctx.i.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %offsets.i.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %sw.bb
  %1 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i.i, align 4
  %3 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets.i.i, align 4
  %add1.i.i = add i32 %4, 15286
  %call.i.i = tail call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef %add1.i.i, ptr noundef nonnull @__func__.dce120_timing_generator_is_in_vertical_blank) #5
  %and.i.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %while.cond.i.while.cond2.i.preheader_crit_edge, label %while.body.i

while.cond.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond2.i.preheader

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tg, align 4
  %is_counter_moving.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %is_counter_moving.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is_counter_moving.i, align 4
  %call1.i = tail call zeroext i1 %8(ptr noundef %tg) #5
  br i1 %call1.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.while.cond2.i.preheader_crit_edge

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond2.i.preheader

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.cond2.i.preheader:                          ; preds = %while.body.i.while.cond2.i.preheader_crit_edge, %while.cond.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.body4.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %9 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i.i, align 4
  %11 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offsets.i.i, align 4
  %add1.i18.i = add i32 %12, 15286
  %call.i19.i = tail call i32 @dm_read_reg_func(ptr noundef %10, i32 noundef %add1.i18.i, ptr noundef nonnull @__func__.dce120_timing_generator_is_in_vertical_blank) #5
  %and.i.i20.i = and i32 %call.i19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20.i)
  %cmp.i21.not.i = icmp eq i32 %and.i.i20.i, 0
  br i1 %cmp.i21.not.i, label %while.body4.i, label %while.cond2.i.sw.epilog_crit_edge

while.cond2.i.sw.epilog_crit_edge:                ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body4.i:                                    ; preds = %while.cond2.i
  %13 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tg, align 4
  %is_counter_moving6.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %is_counter_moving6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %is_counter_moving6.i, align 4
  %call7.i = tail call zeroext i1 %16(ptr noundef %tg) #5
  br i1 %call7.i, label %while.body4.i.while.cond2.i_crit_edge, label %while.body4.i.sw.epilog_crit_edge

while.body4.i.sw.epilog_crit_edge:                ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body4.i.while.cond2.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond2.i

sw.bb1:                                           ; preds = %entry
  %ctx.i.i3 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %offsets.i.i4 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  br label %while.cond.i9

while.cond.i9:                                    ; preds = %while.body.i12.while.cond.i9_crit_edge, %sw.bb1
  %17 = ptrtoint ptr %ctx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx.i.i3, align 4
  %19 = ptrtoint ptr %offsets.i.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offsets.i.i4, align 4
  %add1.i.i5 = add i32 %20, 15286
  %call.i.i6 = tail call i32 @dm_read_reg_func(ptr noundef %18, i32 noundef %add1.i.i5, ptr noundef nonnull @__func__.dce120_timing_generator_is_in_vertical_blank) #5
  %and.i.i.i7 = and i32 %call.i.i6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i7)
  %cmp.i.not.i8 = icmp eq i32 %and.i.i.i7, 0
  br i1 %cmp.i.not.i8, label %while.cond.i9.sw.epilog_crit_edge, label %while.body.i12

while.cond.i9.sw.epilog_crit_edge:                ; preds = %while.cond.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i12:                                   ; preds = %while.cond.i9
  %21 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tg, align 4
  %is_counter_moving.i10 = getelementptr inbounds %struct.timing_generator_funcs, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %is_counter_moving.i10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %is_counter_moving.i10, align 4
  %call1.i11 = tail call zeroext i1 %24(ptr noundef %tg) #5
  br i1 %call1.i11, label %while.body.i12.while.cond.i9_crit_edge, label %while.body.i12.sw.epilog_crit_edge

while.body.i12.sw.epilog_crit_edge:               ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i12.while.cond.i9_crit_edge:           ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i9

sw.epilog:                                        ; preds = %while.body.i12.sw.epilog_crit_edge, %while.cond.i9.sw.epilog_crit_edge, %while.body4.i.sw.epilog_crit_edge, %while.cond2.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_tg_set_blank(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable_blanking) #1 align 64 {
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
  %add1 = add i32 %3, 15305
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15280
  br i1 %enable_blanking, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %5, i32 noundef %add7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 8, i32 noundef 256, i32 noundef 1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add7, i32 noundef 0, ptr noundef nonnull @__func__.dce120_tg_set_blank) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_tg_is_blanked(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15280
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_tg_is_blanked) #5
  %4 = and i32 %call, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %4)
  %5 = icmp eq i32 %4, 257
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_set_overscan_color_black(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %color) #1 align 64 {
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
  %add1 = add i32 %3, 15319
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb, align 2
  %conv = zext i16 %5 to i32
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %7 to i32
  %8 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %color, align 2
  %conv3 = zext i16 %9 to i32
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %conv, i32 noundef 10, i32 noundef 1047552, i32 noundef %conv2, i32 noundef 20, i32 noundef 1072693248, i32 noundef %conv3) #5
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 4
  %add8 = add i32 %13, 15319
  %call9 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add8, ptr noundef nonnull @__func__.dce120_timing_generator_set_overscan_color_black) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add14 = add i32 %17, 15323
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %add14, i32 noundef %call9, ptr noundef nonnull @__func__.dce120_timing_generator_set_overscan_color_black) #5
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets, align 4
  %add19 = add i32 %21, 15321
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %add19, i32 noundef %call9, ptr noundef nonnull @__func__.dce120_timing_generator_set_overscan_color_black) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_program_blank_color(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %black_color) #1 align 64 {
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
  %add1 = add i32 %3, 15323
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb, align 2
  %conv = zext i16 %5 to i32
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %black_color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y, align 2
  %conv2 = zext i16 %7 to i32
  %8 = ptrtoint ptr %black_color to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %black_color, align 2
  %conv3 = zext i16 %9 to i32
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %conv, i32 noundef 10, i32 noundef 1047552, i32 noundef %conv2, i32 noundef 20, i32 noundef 1072693248, i32 noundef %conv3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_tg_set_colors(ptr nocapture noundef readonly %tg, ptr noundef readonly %blank_color, ptr noundef readonly %overscan_color) #1 align 64 {
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
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets.i, align 4
  %add1.i = add i32 %3, 15323
  %color_b_cb.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 2
  %4 = ptrtoint ptr %color_b_cb.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color_b_cb.i, align 2
  %conv.i = zext i16 %5 to i32
  %color_g_y.i = getelementptr inbounds %struct.tg_color, ptr %blank_color, i32 0, i32 1
  %6 = ptrtoint ptr %color_g_y.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color_g_y.i, align 2
  %conv2.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %blank_color to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blank_color, align 2
  %conv3.i = zext i16 %9 to i32
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add1.i, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %conv.i, i32 noundef 10, i32 noundef 1047552, i32 noundef %conv2.i, i32 noundef 20, i32 noundef 1072693248, i32 noundef %conv3.i) #5
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets.i, align 4
  %add8.i = add i32 %13, 15323
  %call9.i = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add8.i, ptr noundef nonnull @__func__.dce120_tg_program_blank_color) #5
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets.i, align 4
  %add14.i = add i32 %17, 15321
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %add14.i, i32 noundef %call9.i, ptr noundef nonnull @__func__.dce120_tg_program_blank_color) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp1.not = icmp eq ptr %overscan_color, null
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i7 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %18 = ptrtoint ptr %ctx.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i7, align 4
  %offsets.i8 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %20 = ptrtoint ptr %offsets.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i8, align 4
  %add1.i9 = add i32 %21, 15319
  %color_b_cb.i10 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 2
  %22 = ptrtoint ptr %color_b_cb.i10 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %color_b_cb.i10, align 2
  %conv.i11 = zext i16 %23 to i32
  %color_g_y.i12 = getelementptr inbounds %struct.tg_color, ptr %overscan_color, i32 0, i32 1
  %24 = ptrtoint ptr %color_g_y.i12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %color_g_y.i12, align 2
  %conv2.i13 = zext i16 %25 to i32
  %26 = ptrtoint ptr %overscan_color to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %overscan_color, align 2
  %conv3.i14 = zext i16 %27 to i32
  %call.i15 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %19, i32 noundef %add1.i9, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %conv.i11, i32 noundef 10, i32 noundef 1047552, i32 noundef %conv2.i13, i32 noundef 20, i32 noundef 1072693248, i32 noundef %conv3.i14) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_disable_vga(ptr nocapture noundef readonly %tg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_id = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 3
  %0 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %controller_id, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dce120_timing_generator_disable_vga, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %offset.0 = phi i32 [ 204, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %offset.0, ptr noundef nonnull @__func__.dce120_timing_generator_disable_vga) #5
  %and.i23 = and i32 %call, -66306
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %offset.0, i32 noundef %and.i23, ptr noundef nonnull @__func__.dce120_timing_generator_disable_vga) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_timing_generator_did_triggered_reset_occur(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15275
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_did_triggered_reset_occur) #5
  %4 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_setup_global_swap_lock(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %gsl_params) #1 align 64 {
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
  %add1 = add i32 %3, 15258
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_setup_global_swap_lock) #5
  %and.i = and i32 %call, 16383
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15353
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add7, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_setup_global_swap_lock) #5
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add12 = add i32 %11, 14997
  %gsl_master = getelementptr inbounds %struct.dcp_gsl_params, ptr %gsl_params, i32 0, i32 1
  %12 = ptrtoint ptr %gsl_master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gsl_master, align 4
  %inst = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 3
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  %conv = zext i1 %cmp to i32
  %call13 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %9, i32 noundef %add12, i32 noundef 6, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 20, i32 noundef 1048576, i32 noundef %conv, i32 noundef 4, i32 noundef 1048560, i32 noundef 2, i32 noundef 28, i32 noundef -268435456, i32 noundef 6, i32 noundef 24, i32 noundef 50331648, i32 noundef 0, i32 noundef 27, i32 noundef 134217728, i32 noundef 1) #5
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets, align 4
  %add19 = add i32 %19, 15354
  %sub = add nsw i32 %and.i, -3
  %call20 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %17, i32 noundef %add19, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub, i32 noundef 16, i32 noundef 2031616, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_enable_reset_trigger(ptr nocapture noundef readonly %tg, i32 noundef %source) #1 align 64 {
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
  %add1 = add i32 %3, 15266
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_timing_generator_enable_reset_trigger) #5
  %and.i = and i32 %call, 1
  %4 = xor i32 %and.i, 1
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %7 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offsets, align 4
  %add7 = add i32 %8, 15273
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %6, i32 noundef %add7, i32 noundef 7, i8 noundef zeroext 0, i32 noundef 31, i32 noundef 16, i32 noundef 5, i32 noundef 224, i32 noundef 0, i32 noundef 12, i32 noundef 12288, i32 noundef %4, i32 noundef 16, i32 noundef 196608, i32 noundef %and.i, i32 noundef 20, i32 noundef 3145728, i32 noundef 0, i32 noundef 24, i32 noundef 520093696, i32 noundef 0, i32 noundef 31, i32 noundef -2147483648, i32 noundef 1) #5
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %11 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offsets, align 4
  %add14 = add i32 %12, 15275
  %call15 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %10, i32 noundef %add14, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 3, i32 noundef 2, i32 noundef 8, i32 noundef 256, i32 noundef 1, i32 noundef 24, i32 noundef 16777216, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_disable_reset_trigger(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15275
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 3, i32 noundef 0, i32 noundef 24, i32 noundef 16777216, i32 noundef 1) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15273
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %add7, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 31, i32 noundef 0, i32 noundef 5, i32 noundef 224, i32 noundef 0, i32 noundef 31, i32 noundef -2147483648, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_tear_down_global_swap_lock(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 14997
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %add1, i32 noundef 0, i32 noundef 6, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 20, i32 noundef 1048576, i32 noundef 0, i32 noundef 4, i32 noundef 1048560, i32 noundef 2, i32 noundef 28, i32 noundef -268435456, i32 noundef 6, i32 noundef 24, i32 noundef 50331648, i32 noundef 0, i32 noundef 27, i32 noundef 134217728, i32 noundef 0) #5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15354
  %call8 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %5, i32 noundef %add7, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef 0, i32 noundef 16, i32 noundef 2031616, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_enable_advanced_request(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable, ptr nocapture noundef readonly %timing) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %v_total = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 6
  %0 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_total, align 4
  %v_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 8
  %2 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_addressable, align 4
  %v_border_bottom = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 9
  %4 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_border_bottom, align 4
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 10
  %6 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v_front_porch, align 4
  %8 = add i32 %3, %5
  %9 = add i32 %8, %7
  %sub2 = sub i32 %1, %9
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 4
  %add3 = add i32 %13, 15302
  %call = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add3, ptr noundef nonnull @__func__.dce120_timing_generator_enable_advanced_request) #5
  %and.i = and i32 %call, -1044737
  %shl.i = select i1 %enable, i32 0, i32 256
  %or.i = or i32 %shl.i, %and.i
  %14 = tail call i32 @llvm.umin.i32(i32 %sub2, i32 10)
  %shl.i21 = shl nuw nsw i32 %14, 12
  %or.i23 = or i32 %or.i, %shl.i21
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offsets, align 4
  %add10 = add i32 %18, 15302
  tail call void @dm_write_reg_func(ptr noundef %16, i32 noundef %add10, i32 noundef %or.i23, ptr noundef nonnull @__func__.dce120_timing_generator_enable_advanced_request) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_set_drr(ptr nocapture noundef readonly %tg, ptr noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %params, null
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %vertical_total_max = getelementptr inbounds %struct.drr_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %vertical_total_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vertical_total_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not = icmp eq i32 %3, 0
  br i1 %cmp3.not, label %land.lhs.true2.if.else_crit_edge, label %if.then

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add4 = add i32 %7, 15259
  %sub = add i32 %3, -1
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %add4, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub) #5
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add11 = add i32 %11, 15260
  %12 = ptrtoint ptr %vertical_total_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vertical_total_max, align 4
  %sub13 = add i32 %13, -1
  %call14 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %9, i32 noundef %add11, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %sub13) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add20 = add i32 %17, 15261
  %call21 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %add20, i32 noundef 0, i32 noundef 6, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 16, i32 noundef 1, i32 noundef 8, i32 noundef 256, i32 noundef 0, i32 noundef 12, i32 noundef 4096, i32 noundef 0, i32 noundef 15, i32 noundef 32768, i32 noundef 0, i32 noundef 16, i32 noundef -65536, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %ctx30 = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %18 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx30, align 4
  %offsets32 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %20 = ptrtoint ptr %offsets32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets32, align 4
  %add34 = add i32 %21, 15261
  %call35 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %19, i32 noundef %add34, i32 noundef 0, i32 noundef 5, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 4, i32 noundef 16, i32 noundef 0, i32 noundef 8, i32 noundef 256, i32 noundef 0, i32 noundef 12, i32 noundef 4096, i32 noundef 0, i32 noundef 16, i32 noundef -65536, i32 noundef 0) #5
  %22 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx30, align 4
  %24 = ptrtoint ptr %offsets32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets32, align 4
  %add41 = add i32 %25, 15259
  %call42 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %add41, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef 0) #5
  %26 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx30, align 4
  %28 = ptrtoint ptr %offsets32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offsets32, align 4
  %add48 = add i32 %29, 15260
  %call49 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %add48, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ctx30.sink = phi ptr [ %ctx30, %if.else ], [ %ctx, %if.then ]
  %offsets32.sink = phi ptr [ %offsets32, %if.else ], [ %offsets, %if.then ]
  %.sink76 = phi i32 [ 0, %if.else ], [ 384, %if.then ]
  %30 = ptrtoint ptr %ctx30.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx30.sink, align 4
  %32 = ptrtoint ptr %offsets32.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offsets32.sink, align 4
  %add55 = add i32 %33, 15350
  %call56 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %31, i32 noundef %add55, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 65535, i32 noundef %.sink76) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_set_static_screen_control(ptr nocapture noundef readonly %tg, i32 noundef %event_triggers, i32 noundef %num_frames) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %num_frames, i32 255)
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets, align 4
  %add1 = add i32 %4, 15350
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %2, i32 noundef %add1, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 65535, i32 noundef %event_triggers, i32 noundef 16, i32 noundef 16711680, i32 noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_timing_generator_set_test_pattern(ptr nocapture noundef readonly %tg, i32 noundef %test_pattern, i32 noundef %color_depth) #1 align 64 {
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
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dce120_timing_generator_set_test_pattern, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cmp62 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %entry.sw.epilog_crit_edge ]
  %bit_depth.0 = phi i32 [ %switch.tableidx, %switch.lookup ], [ 1, %entry.sw.epilog_crit_edge ]
  %4 = zext i32 %test_pattern to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %test_pattern, label %sw.epilog.sw.epilog127_crit_edge [
    i32 3, label %sw.epilog.sw.bb5_crit_edge
    i32 11, label %sw.epilog.sw.bb5_crit_edge201
    i32 4, label %sw.epilog.sw.bb15_crit_edge
    i32 5, label %sw.epilog.sw.bb15_crit_edge202
    i32 6, label %sw.bb61
    i32 7, label %sw.bb113
  ]

sw.epilog.sw.bb15_crit_edge202:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

sw.epilog.sw.bb15_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

sw.epilog.sw.bb5_crit_edge201:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.epilog.sw.epilog127_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog127

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge201
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %test_pattern)
  %cmp = icmp eq i32 %test_pattern, 11
  %cond = zext i1 %cmp to i32
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %5 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets, align 4
  %add7 = add i32 %6, 15308
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add7, i32 noundef 2, i8 noundef zeroext 8, i32 noundef 3840, i32 noundef 6, i32 noundef 12, i32 noundef 61440, i32 noundef 6) #5
  %7 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx1, align 4
  %9 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offsets, align 4
  %add13 = add i32 %10, 15307
  %call14 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %8, i32 noundef %add13, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 8, i32 noundef 1792, i32 noundef 0, i32 noundef 16, i32 noundef 65536, i32 noundef %cond, i32 noundef 24, i32 noundef -16777216, i32 noundef %bit_depth.0) #5
  br label %sw.epilog127

sw.bb15:                                          ; preds = %sw.epilog.sw.bb15_crit_edge, %sw.epilog.sw.bb15_crit_edge202
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %test_pattern)
  %cmp16 = icmp eq i32 %test_pattern, 4
  %cond17 = select i1 %cmp16, i32 3, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bit_depth.0)
  %11 = icmp ult i32 %bit_depth.0, 3
  %switch.idx.cast = trunc i32 %bit_depth.0 to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -2
  %switch.offset = add i16 %switch.idx.mult, 10
  %switch.offset.op = shl nsw i16 -1, %switch.offset
  %offsets31 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %12 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets31, align 4
  %add33 = add i32 %13, 15308
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add33, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %14 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets31, align 4
  %add43 = add i32 %15, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43, i32 noundef 65536, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %16 = zext i16 %switch.offset.op to i32
  %conv45 = select i1 %11, i32 %16, i32 65280
  %or.i.1 = or i32 %conv45, 131072
  %17 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offsets31, align 4
  %add43.1 = add i32 %18, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43.1, i32 noundef %or.i.1, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %or.i.2 = or i32 %conv45, 262144
  %19 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offsets31, align 4
  %add43.2 = add i32 %20, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43.2, i32 noundef %or.i.2, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %or.i.3 = or i32 %conv45, 524288
  %21 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets31, align 4
  %add43.3 = add i32 %22, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43.3, i32 noundef %or.i.3, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %23 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offsets31, align 4
  %add43.4 = add i32 %24, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43.4, i32 noundef 1048576, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %25 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offsets31, align 4
  %add43.5 = add i32 %26, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add43.5, i32 noundef 2097152, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %27 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offsets31, align 4
  %add53 = add i32 %28, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add53, i32 noundef 2097152, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %29 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx1, align 4
  %31 = ptrtoint ptr %offsets31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offsets31, align 4
  %add59 = add i32 %32, 15307
  %call60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %30, i32 noundef %add59, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 8, i32 noundef 1792, i32 noundef %cond17, i32 noundef 16, i32 noundef 65536, i32 noundef 0, i32 noundef 24, i32 noundef -16777216, i32 noundef %bit_depth.0) #5
  br label %sw.epilog127

sw.bb61:                                          ; preds = %sw.epilog
  %33 = zext i32 %bit_depth.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %bit_depth.0, label %sw.bb61.sw.epilog97_crit_edge [
    i32 0, label %sw.bb71
    i32 1, label %sw.bb79
    i32 2, label %sw.bb87
  ]

sw.bb61.sw.epilog97_crit_edge:                    ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog97

sw.bb71:                                          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  %offsets75 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %34 = ptrtoint ptr %offsets75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offsets75, align 4
  %add77 = add i32 %35, 15308
  %call78 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add77, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 15, i32 noundef 10, i32 noundef 4, i32 noundef 240, i32 noundef 0, i32 noundef 12, i32 noundef 61440, i32 noundef 6, i32 noundef 8, i32 noundef 3840, i32 noundef 6, i32 noundef 16, i32 noundef -65536, i32 noundef 0) #5
  br label %sw.epilog97

sw.bb79:                                          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  %offsets83 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %36 = ptrtoint ptr %offsets83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offsets83, align 4
  %add85 = add i32 %37, 15308
  %call86 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add85, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 15, i32 noundef 8, i32 noundef 4, i32 noundef 240, i32 noundef 0, i32 noundef 12, i32 noundef 61440, i32 noundef 8, i32 noundef 8, i32 noundef 3840, i32 noundef 6, i32 noundef 16, i32 noundef -65536, i32 noundef 0) #5
  br label %sw.epilog97

sw.bb87:                                          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  %offsets91 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %38 = ptrtoint ptr %offsets91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offsets91, align 4
  %add93 = add i32 %39, 15308
  %call95 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %add93, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 15, i32 noundef 6, i32 noundef 4, i32 noundef 240, i32 noundef 8, i32 noundef 12, i32 noundef 61440, i32 noundef 8, i32 noundef 8, i32 noundef 3840, i32 noundef 5, i32 noundef 16, i32 noundef -65536, i32 noundef 24576) #5
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %sw.bb87, %sw.bb79, %sw.bb71, %sw.bb61.sw.epilog97_crit_edge
  %offsets99 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %40 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offsets99, align 4
  %add101 = add i32 %41, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add101, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %42 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offsets99, align 4
  %add105 = add i32 %43, 15307
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add105, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %44 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx1, align 4
  %46 = ptrtoint ptr %offsets99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offsets99, align 4
  %add111 = add i32 %47, 15307
  %call112 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %45, i32 noundef %add111, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 8, i32 noundef 1792, i32 noundef %cmp62, i32 noundef 16, i32 noundef 65536, i32 noundef 0, i32 noundef 24, i32 noundef -16777216, i32 noundef %bit_depth.0) #5
  br label %sw.epilog127

sw.bb113:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %offsets115 = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %48 = ptrtoint ptr %offsets115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offsets115, align 4
  %add117 = add i32 %49, 15307
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add117, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %50 = ptrtoint ptr %offsets115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offsets115, align 4
  %add121 = add i32 %51, 15309
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add121, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  %52 = ptrtoint ptr %offsets115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offsets115, align 4
  %add125 = add i32 %53, 15308
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add125, i32 noundef 0, ptr noundef nonnull @__func__.dce120_timing_generator_set_test_pattern) #5
  br label %sw.epilog127

sw.epilog127:                                     ; preds = %sw.bb113, %sw.epilog97, %sw.bb15, %sw.bb5, %sw.epilog.sw.epilog127_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_arm_vert_intr(ptr noundef %tg, i8 noundef zeroext %width) #1 align 64 {
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
  store i32 -1, ptr %v_blank_start, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_blank_end) #5
  %1 = ptrtoint ptr %v_blank_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v_blank_end, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h_position) #5
  %2 = ptrtoint ptr %h_position to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %h_position, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_position) #5
  %3 = ptrtoint ptr %v_position to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %v_position, align 4, !annotation !50
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
  %ctx = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets, align 4
  %add2 = add i32 %15, 15325
  %conv = zext i8 %width to i32
  %add3 = add i32 %9, %conv
  %call = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %13, i32 noundef %add2, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %9, i32 noundef 16, i32 noundef 1073676288, i32 noundef %add3) #5
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
define internal zeroext i1 @dce120_is_tg_enabled(ptr nocapture noundef readonly %tg) #1 align 64 {
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
  %add1 = add i32 %3, 15279
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_is_tg_enabled) #5
  %4 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_configure_crc(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %offsets.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1
  %2 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets.i, align 4
  %add1.i = add i32 %3, 15279
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1.i, ptr noundef nonnull @__func__.dce120_is_tg_enabled) #5
  %4 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp ne i32 %4, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i, align 4
  %7 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offsets.i, align 4
  %add1 = add i32 %8, 15331
  tail call void @dm_write_reg_func(ptr noundef %6, i32 noundef %add1, i32 noundef 0, ptr noundef nonnull @__func__.dce120_configure_crc) #5
  %enable = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 12
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  %13 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets.i, align 4
  %add8 = add i32 %14, 15332
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %params, align 4
  %conv = zext i16 %16 to i32
  %windowa_x_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %windowa_x_end to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %windowa_x_end, align 2
  %conv9 = zext i16 %18 to i32
  %call10 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %12, i32 noundef %add8, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %conv, i32 noundef 16, i32 noundef 1073676288, i32 noundef %conv9) #5
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i, align 4
  %21 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets.i, align 4
  %add16 = add i32 %22, 15333
  %windowa_y_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %windowa_y_start to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %windowa_y_start, align 4
  %conv17 = zext i16 %24 to i32
  %windowa_y_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %windowa_y_end to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %windowa_y_end, align 2
  %conv18 = zext i16 %26 to i32
  %call19 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %20, i32 noundef %add16, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %conv17, i32 noundef 16, i32 noundef 1073676288, i32 noundef %conv18) #5
  %27 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i, align 4
  %29 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offsets.i, align 4
  %add25 = add i32 %30, 15334
  %windowb_x_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %windowb_x_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %windowb_x_start, align 4
  %conv26 = zext i16 %32 to i32
  %windowb_x_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 5
  %33 = ptrtoint ptr %windowb_x_end to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %windowb_x_end, align 2
  %conv27 = zext i16 %34 to i32
  %call28 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %28, i32 noundef %add25, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %conv26, i32 noundef 16, i32 noundef 1073676288, i32 noundef %conv27) #5
  %35 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx.i, align 4
  %37 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offsets.i, align 4
  %add34 = add i32 %38, 15335
  %windowb_y_start = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 6
  %39 = ptrtoint ptr %windowb_y_start to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %windowb_y_start, align 4
  %conv35 = zext i16 %40 to i32
  %windowb_y_end = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 7
  %41 = ptrtoint ptr %windowb_y_end to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %windowb_y_end, align 2
  %conv36 = zext i16 %42 to i32
  %call37 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %36, i32 noundef %add34, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 16383, i32 noundef %conv35, i32 noundef 16, i32 noundef 1073676288, i32 noundef %conv36) #5
  %43 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx.i, align 4
  %45 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offsets.i, align 4
  %add43 = add i32 %46, 15331
  %continuous_mode = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 11
  %47 = ptrtoint ptr %continuous_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %continuous_mode, align 2, !range !51
  %49 = zext i8 %48 to i32
  %selection = getelementptr inbounds %struct.crc_params, ptr %params, i32 0, i32 8
  %50 = ptrtoint ptr %selection to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %selection, align 4
  %call46 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %44, i32 noundef %add43, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1, i32 noundef %49, i32 noundef 20, i32 noundef 7340032, i32 noundef %51, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce120_get_crc(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %r_cr, ptr nocapture noundef writeonly %g_y, ptr nocapture noundef writeonly %b_cb) #1 align 64 {
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
  %add1 = add i32 %3, 15331
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add1, ptr noundef nonnull @__func__.dce120_get_crc) #5
  %and.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 4
  %add7 = add i32 %7, 15336
  %call8 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %add7, ptr noundef nonnull @__func__.dce120_get_crc) #5
  %and.i28 = and i32 %call8, 65535
  %8 = ptrtoint ptr %r_cr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i28, ptr %r_cr, align 4
  %shr.i = lshr i32 %call8, 16
  %9 = ptrtoint ptr %g_y to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr.i, ptr %g_y, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 4
  %add15 = add i32 %13, 15337
  %call16 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %add15, ptr noundef nonnull @__func__.dce120_get_crc) #5
  %and.i30 = and i32 %call16, 65535
  %14 = ptrtoint ptr %b_cb to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i30, ptr %b_cb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %15 = xor i1 %tobool.not, true
  ret i1 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_validate_timing(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_program_timing_generator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @dce120_tg_funcs, !1, !"dce120_tg_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 1165, i32 44}
!2 = distinct !{null, !3, !"DCE_BASE", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega10_ip_offset.h", i32 48, i32 44}
!4 = !{ptr @__func__.dce120_timing_generator_get_crtc_position, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 189, i32 19}
!6 = !{ptr @__func__.dce120_timing_generator_get_vblank_counter, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 173, i32 19}
!8 = !{ptr @__func__.dce120_timing_generator_get_crtc_scanoutpos, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 602, i32 31}
!10 = !{ptr @__func__.dce120_timing_generator_is_in_vertical_blank, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 90, i32 19}
!12 = !{ptr @__func__.dce120_tg_set_blank, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 742, i32 3}
!14 = !{ptr @__func__.dce120_tg_is_blanked, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 712, i32 19}
!16 = !{ptr @__func__.dce120_timing_generator_set_overscan_color_black, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 513, i32 10}
!18 = !{ptr @__func__.dce120_tg_program_blank_color, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 671, i32 10}
!20 = !{ptr @__func__.dce120_timing_generator_disable_vga, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 416, i32 10}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.dce120_timing_generator_did_triggered_reset_occur, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 374, i32 19}
!27 = !{ptr @__func__.dce120_timing_generator_setup_global_swap_lock, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 251, i32 8}
!29 = !{ptr @__func__.dce120_timing_generator_enable_reset_trigger, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 312, i32 23}
!31 = !{ptr @__func__.dce120_timing_generator_enable_advanced_request, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 630, i32 19}
!33 = !{ptr @__func__.dce120_timing_generator_set_test_pattern, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 903, i32 3}
!35 = !{ptr @__func__.dce120_is_tg_enabled, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 1085, i32 10}
!37 = !{ptr @__func__.dce120_configure_crc, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 1103, i32 2}
!39 = !{ptr @__func__.dce120_get_crc, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.c", i32 1145, i32 10}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
