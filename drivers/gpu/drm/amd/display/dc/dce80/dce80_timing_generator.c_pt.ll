; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce80/dce80_timing_generator.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_timing_generator = type { %struct.timing_generator, %struct.dce110_timing_generator_offsets, %struct.dce110_timing_generator_offsets, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }

@reg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 768, i32 768, i32 0 }, %struct.dce110_timing_generator_offsets { i32 9728, i32 9728, i32 0 }, %struct.dce110_timing_generator_offsets { i32 10496, i32 10496, i32 0 }, %struct.dce110_timing_generator_offsets { i32 11264, i32 11264, i32 0 }, %struct.dce110_timing_generator_offsets { i32 12032, i32 12032, i32 0 }], [56 x i8] zeroinitializer }, align 32
@dce80_tg_funcs = internal constant { %struct.timing_generator_funcs, [72 x i8] } { %struct.timing_generator_funcs { ptr @dce110_tg_validate_timing, ptr @program_timing, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_enable_crtc, ptr @dce110_timing_generator_disable_crtc, ptr null, ptr @dce110_timing_generator_is_counter_moving, ptr @dce110_timing_generator_get_position, ptr @dce110_timing_generator_get_vblank_counter, ptr @dce110_timing_generator_get_crtc_scanoutpos, ptr null, ptr null, ptr @dce110_timing_generator_set_early_control, ptr @dce110_tg_wait_for_state, ptr @dce110_tg_set_blank, ptr @dce110_tg_is_blanked, ptr null, ptr @dce110_timing_generator_set_overscan_color_black, ptr @dce110_timing_generator_program_blank_color, ptr @dce110_tg_set_colors, ptr @dce110_timing_generator_disable_vga, ptr @dce110_timing_generator_did_triggered_reset_occur, ptr @dce110_timing_generator_setup_global_swap_lock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_timing_generator_enable_reset_trigger, ptr null, ptr @dce110_timing_generator_disable_reset_trigger, ptr @dce110_timing_generator_tear_down_global_swap_lock, ptr @dce80_timing_generator_enable_advanced_request, ptr @dce110_timing_generator_set_drr, ptr null, ptr null, ptr @dce110_timing_generator_set_static_screen_control, ptr @dce110_timing_generator_set_test_pattern, ptr @dce110_arm_vert_intr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_configure_crc, ptr @dce110_get_crc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@__func__.program_pix_dur = private unnamed_addr constant [16 x i8] c"program_pix_dur\00", align 1
@__func__.dce80_timing_generator_enable_advanced_request = private unnamed_addr constant [47 x i8] c"dce80_timing_generator_enable_advanced_request\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"reg_offsets\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 51, i32 53 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"dce80_tg_funcs\00", align 1
@___asan_gen_.5 = private constant [75 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 185, i32 44 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @reg_offsets, ptr @dce80_tg_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce80_tg_funcs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce80_timing_generator_construct(ptr nocapture noundef writeonly %tg110, ptr noundef %ctx, i32 noundef %instance, ptr nocapture noundef readonly %offsets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %derived_offsets = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 2
  %arrayidx = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @reg_offsets, i32 0, i32 %instance
  %3 = call ptr @memcpy(ptr %derived_offsets, ptr %arrayidx, i32 12)
  %4 = ptrtoint ptr %tg110 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dce80_tg_funcs, ptr %tg110, align 4
  %ctx4 = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 2
  %5 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %ctx4, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_bios, align 4
  %bp = getelementptr inbounds %struct.timing_generator, ptr %tg110, i32 0, i32 1
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %bp, align 4
  %max_h_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 4
  %9 = ptrtoint ptr %max_h_total to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8192, ptr %max_h_total, align 4
  %max_v_total = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 5
  %10 = ptrtoint ptr %max_v_total to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %max_v_total, align 4
  %min_h_blank = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 6
  %11 = ptrtoint ptr %min_h_blank to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 56, ptr %min_h_blank, align 4
  %min_h_front_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 7
  %12 = ptrtoint ptr %min_h_front_porch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %min_h_front_porch, align 4
  %min_h_back_porch = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg110, i32 0, i32 8
  %13 = ptrtoint ptr %min_h_back_porch to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %min_h_back_porch, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_tg_validate_timing(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @program_timing(ptr noundef %tg, ptr noundef %timing, i32 noundef %vready_offset, i32 noundef %vstartup_start, i32 noundef %vupdate_offset, i32 noundef %vupdate_width, i32 noundef %signal, i1 noundef zeroext %use_vbios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %use_vbios, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %pix_clk_100hz = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 12
  %0 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_clk_100hz, align 4
  %dmif.i = getelementptr inbounds %struct.dce110_timing_generator, ptr %tg, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %dmif.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmif.i, align 4
  %add.i = add i32 %3, 6960
  %ctx.i = getelementptr inbounds %struct.timing_generator, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %add.i, ptr noundef nonnull @__func__.program_pix_dur) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.else174.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else174.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 10000000000) #6, !srcloc !20
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t = trunc i64 %asmresult1.i.i.i.i to i32
  %and.i.i = and i32 %call.i, -65536
  %and42.i.i = and i32 %extract.t, 65535
  %or.i.i = or i32 %and42.i.i, %and.i.i
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %8, i32 noundef %add.i, i32 noundef %or.i.i, ptr noundef nonnull @__func__.program_pix_dur) #3
  br label %if.end

if.end:                                           ; preds = %if.else174.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @dce110_tg_program_timing(ptr noundef %tg, ptr noundef %timing, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %use_vbios) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_enable_crtc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_disable_crtc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_is_counter_moving(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_get_position(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce110_timing_generator_get_vblank_counter(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_get_crtc_scanoutpos(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_set_early_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_tg_wait_for_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_tg_set_blank(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_tg_is_blanked(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_set_overscan_color_black(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_program_blank_color(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_tg_set_colors(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_disable_vga(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_timing_generator_did_triggered_reset_occur(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_setup_global_swap_lock(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_enable_reset_trigger(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_disable_reset_trigger(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_tear_down_global_swap_lock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce80_timing_generator_enable_advanced_request(ptr nocapture noundef readonly %tg, i1 noundef zeroext %enable, ptr nocapture noundef readonly %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %add, ptr noundef nonnull @__func__.dce80_timing_generator_enable_advanced_request) #3
  %and.i = and i32 %call, -270467330
  %masksel = select i1 %enable, i32 0, i32 1048576
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
  %value.1.v = select i1 %cmp, i32 196608, i32 268697600
  %value.1 = or i32 %value.0, %value.1.v
  %or.i37 = or i32 %value.1, 257
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef %add, i32 noundef %or.i37, ptr noundef nonnull @__func__.dce80_timing_generator_enable_advanced_request) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_set_drr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_set_static_screen_control(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_set_test_pattern(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_arm_vert_intr(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_configure_crc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_get_crc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_tg_program_timing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @reg_offsets, !1, !"reg_offsets", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c", i32 51, i32 53}
!2 = !{ptr @dce80_tg_funcs, !3, !"dce80_tg_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c", i32 185, i32 44}
!4 = !{ptr @__func__.program_pix_dur, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c", i32 92, i32 19}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.dce80_timing_generator_enable_advanced_request, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.c", i32 130, i32 19}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148775921, i64 2148776201, i64 2148776535, i64 2148776869}
