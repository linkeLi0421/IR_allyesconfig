; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_mem_input_v.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mem_input_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.9 }
%struct.anon.9 = type { i32 }

@dce110_mem_input_v_funcs = internal constant { %struct.mem_input_funcs, [56 x i8] } { %struct.mem_input_funcs { ptr null, ptr null, ptr null, ptr @dce_mem_input_v_program_display_marks, ptr @dce_mem_input_program_chroma_display_marks, ptr @dce110_allocate_mem_input_v, ptr @dce110_free_mem_input_v, ptr @dce_mem_input_v_program_surface_flip_and_addr, ptr @dce_mem_input_v_program_pte_vm, ptr null, ptr null, ptr @dce_mem_input_v_program_surface_config, ptr @dce_mem_input_v_is_surface_pending, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__func__.program_urgency_watermark = private unnamed_addr constant [26 x i8] c"program_urgency_watermark\00", align 1
@__func__.program_nbp_watermark = private unnamed_addr constant [22 x i8] c"program_nbp_watermark\00", align 1
@__func__.program_stutter_watermark = private unnamed_addr constant [26 x i8] c"program_stutter_watermark\00", align 1
@__func__.dce110_allocate_mem_input_v = private unnamed_addr constant [28 x i8] c"dce110_allocate_mem_input_v\00", align 1
@__func__.set_flip_control = private unnamed_addr constant [17 x i8] c"set_flip_control\00", align 1
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.program_addr = private unnamed_addr constant [13 x i8] c"program_addr\00", align 1
@__func__.program_pri_addr_l = private unnamed_addr constant [19 x i8] c"program_pri_addr_l\00", align 1
@__func__.program_pri_addr_c = private unnamed_addr constant [19 x i8] c"program_pri_addr_c\00", align 1
@__func__.dce_mem_input_v_program_pte_vm = private unnamed_addr constant [31 x i8] c"dce_mem_input_v_program_pte_vm\00", align 1
@dvmm_Hw_Setting_1DTiling = internal constant { [4 x [9 x i32]], [48 x i8] } { [4 x [9 x i32]] [[9 x i32] [i32 8, i32 512, i32 8, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 16, i32 256, i32 8, i32 2, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 32, i32 128, i32 8, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 64, i32 64, i32 8, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0]], [48 x i8] zeroinitializer }, align 32
@dvmm_Hw_Setting_2DTiling = internal constant { [4 x [9 x i32]], [48 x i8] } { [4 x [9 x i32]] [[9 x i32] [i32 8, i32 64, i32 64, i32 8, i32 8, i32 1, i32 4, i32 0, i32 0], [9 x i32] [i32 16, i32 64, i32 32, i32 8, i32 16, i32 1, i32 8, i32 0, i32 0], [9 x i32] [i32 32, i32 32, i32 32, i32 16, i32 16, i32 1, i32 8, i32 0, i32 0], [9 x i32] [i32 64, i32 8, i32 32, i32 16, i32 16, i32 1, i32 8, i32 0, i32 0]], [48 x i8] zeroinitializer }, align 32
@dvmm_Hw_Setting_Linear = internal constant { [4 x [9 x i32]], [48 x i8] } { [4 x [9 x i32]] [[9 x i32] [i32 8, i32 4096, i32 1, i32 8, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 16, i32 2048, i32 1, i32 8, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 32, i32 1024, i32 1, i32 8, i32 0, i32 1, i32 0, i32 0, i32 0], [9 x i32] [i32 64, i32 512, i32 1, i32 8, i32 0, i32 1, i32 0, i32 0, i32 0]], [48 x i8] zeroinitializer }, align 32
@__func__.enable = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@__func__.program_tiling = private unnamed_addr constant [15 x i8] c"program_tiling\00", align 1
@__func__.program_size_and_rotation = private unnamed_addr constant [26 x i8] c"program_size_and_rotation\00", align 1
@__func__.program_pixel_format = private unnamed_addr constant [21 x i8] c"program_pixel_format\00", align 1
@__func__.dce_mem_input_v_is_surface_pending = private unnamed_addr constant [35 x i8] c"dce_mem_input_v_is_surface_pending\00", align 1
@switch.table.dce_mem_input_v_program_pte_vm = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dvmm_Hw_Setting_Linear, ptr @dvmm_Hw_Setting_Linear, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling], [52 x i8] zeroinitializer }, align 32
@switch.table.dce_mem_input_v_program_pte_vm.2 = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dvmm_Hw_Setting_Linear, ptr @dvmm_Hw_Setting_Linear, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_2DTiling], [52 x i8] zeroinitializer }, align 32
@switch.table.dce_mem_input_v_program_surface_config = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], [48 x i8] zeroinitializer }, align 32
@switch.table.dce_mem_input_v_program_surface_config.3 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 0, i32 256, i32 0, i32 0, i32 256, i32 256, i32 256, i32 0, i32 0, i32 0, i32 0], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"dce110_mem_input_v_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 1016, i32 37 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 150, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"dvmm_Hw_Setting_1DTiling\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 512, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"dvmm_Hw_Setting_2DTiling\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 505, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"dvmm_Hw_Setting_Linear\00", align 1
@___asan_gen_.18 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 519, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant [44 x i8] c"switch.table.dce_mem_input_v_program_pte_vm\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [46 x i8] c"switch.table.dce_mem_input_v_program_pte_vm.2\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [52 x i8] c"switch.table.dce_mem_input_v_program_surface_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [54 x i8] c"switch.table.dce_mem_input_v_program_surface_config.3\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @dce110_mem_input_v_funcs, ptr @.str.1, ptr @dvmm_Hw_Setting_1DTiling, ptr @dvmm_Hw_Setting_2DTiling, ptr @dvmm_Hw_Setting_Linear, ptr @switch.table.dce_mem_input_v_program_pte_vm, ptr @switch.table.dce_mem_input_v_program_pte_vm.2, ptr @switch.table.dce_mem_input_v_program_surface_config, ptr @switch.table.dce_mem_input_v_program_surface_config.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_mem_input_v_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvmm_Hw_Setting_1DTiling to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvmm_Hw_Setting_2DTiling to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvmm_Hw_Setting_Linear to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_mem_input_v_program_pte_vm to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_mem_input_v_program_pte_vm.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_mem_input_v_program_surface_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_mem_input_v_program_surface_config.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce110_mem_input_v_construct(ptr nocapture noundef writeonly %dce_mi, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dce_mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dce110_mem_input_v_funcs, ptr %dce_mi, align 8
  %ctx2 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %1 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mem_input_v_program_display_marks(ptr nocapture noundef readonly %mem_input, [4 x i32] %nbp.coerce, [4 x i32] %stutter.coerce, [4 x i32] %stutter_enter.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_urgency_watermark(ptr noundef %1, i32 noundef 18227, i32 noundef 18226, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_nbp_watermark(ptr noundef %3, i32 noundef 18226, i32 noundef 18230, [4 x i32] %nbp.coerce) #4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_stutter_watermark(ptr noundef %5, i32 noundef 18229, i32 noundef 18226, [4 x i32] %stutter.coerce) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mem_input_program_chroma_display_marks(ptr nocapture noundef readonly %mem_input, [4 x i32] %nbp.coerce, [4 x i32] %stutter.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_urgency_watermark(ptr noundef %1, i32 noundef 18240, i32 noundef 18239, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_nbp_watermark(ptr noundef %3, i32 noundef 18239, i32 noundef 18243, [4 x i32] %nbp.coerce) #4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call fastcc void @program_stutter_watermark(ptr noundef %5, i32 noundef 18242, i32 noundef 18239, [4 x i32] %stutter.coerce) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_allocate_mem_input_v(ptr nocapture noundef readonly %mi, i32 noundef %h_total, i32 noundef %v_total, i32 noundef %pix_clk_khz, i32 noundef %total_stream_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pix_clk_khz)
  %cmp.not = icmp eq i32 %pix_clk_khz, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18224, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  %2 = udiv i32 1000000000, %pix_clk_khz
  %and.i = and i32 %call, -65536
  %and42.i = and i32 %2, 65535
  %or.i = or i32 %and42.i, %and.i
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %4, i32 noundef 18224, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 18237, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  %and.i31 = and i32 %call5, -65536
  %or.i33 = or i32 %and.i31, %and42.i
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %8, i32 noundef 18237, i32 noundef %or.i33, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %10, i32 noundef 18225, i32 noundef 67110912, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef 18238, i32 noundef 67110912, ptr noundef nonnull @__func__.dce110_allocate_mem_input_v) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce110_free_mem_input_v(ptr nocapture noundef %mi, i32 noundef %total_stream_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_mem_input_v_program_surface_flip_and_addr(ptr nocapture noundef %mem_input, ptr nocapture noundef readonly %address, i1 noundef zeroext %flip_immediate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 17967, ptr noundef nonnull @__func__.set_flip_control) #4
  %or.i.i = or i32 %call.i, 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 17967, i32 noundef %or.i.i, ptr noundef nonnull @__func__.set_flip_control) #4
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack11.i = load i64, ptr %7, align 8
  %address.sroa.2.0.extract.trunc.i.i = trunc i64 %.unpack11.i to i32
  %and.i.i = and i32 %address.sroa.2.0.extract.trunc.i.i, 255
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %10, i32 noundef 17928, i32 noundef %and.i.i, ptr noundef nonnull @__func__.program_pri_addr_l) #4
  %sh.diff.i.i = lshr i64 %.unpack11.i, 32
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %shl.i.i.i = and i32 %tr.sh.diff.i.i, -256
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef 17926, i32 noundef %shl.i.i.i, ptr noundef nonnull @__func__.program_pri_addr_l) #4
  br label %program_addr.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2
  %chroma_addr.i = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %chroma_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack.i = load i64, ptr %chroma_addr.i, align 8
  %address.sroa.2.0.extract.trunc.i12.i = trunc i64 %.unpack.i to i32
  %and.i13.i = and i32 %address.sroa.2.0.extract.trunc.i12.i, 255
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %16, i32 noundef 17929, i32 noundef %and.i13.i, ptr noundef nonnull @__func__.program_pri_addr_c) #4
  %sh.diff.i15.i = lshr i64 %.unpack.i, 32
  %tr.sh.diff.i16.i = trunc i64 %sh.diff.i15.i to i32
  %shl.i.i17.i = and i32 %tr.sh.diff.i16.i, -256
  %17 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %18, i32 noundef 17927, i32 noundef %shl.i.i17.i, ptr noundef nonnull @__func__.program_pri_addr_c) #4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.unpack10.i = load i64, ptr %13, align 8
  %address.sroa.2.0.extract.trunc.i18.i = trunc i64 %.unpack10.i to i32
  %and.i19.i = and i32 %address.sroa.2.0.extract.trunc.i18.i, 255
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef 17928, i32 noundef %and.i19.i, ptr noundef nonnull @__func__.program_pri_addr_l) #4
  %sh.diff.i21.i = lshr i64 %.unpack10.i, 32
  %tr.sh.diff.i22.i = trunc i64 %sh.diff.i21.i to i32
  %shl.i.i23.i = and i32 %tr.sh.diff.i22.i, -256
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %23, i32 noundef 17926, i32 noundef %shl.i.i23.i, ptr noundef nonnull @__func__.program_pri_addr_l) #4
  br label %program_addr.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.program_addr, i32 noundef 150) #4
  tail call void @kgdb_breakpoint() #4
  br label %program_addr.exit

program_addr.exit:                                ; preds = %do.body.i, %sw.bb2.i, %sw.bb.i
  %request_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %request_address, ptr %address, i32 120)
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mem_input_v_program_pte_vm(ptr nocapture noundef readonly %mem_input, i32 noundef %format, ptr nocapture noundef readonly %tiling_info, i32 noundef %rotation) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %array_mode.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 12
  %0 = ptrtoint ptr %array_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %array_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %2 = icmp ult i32 %1, 11
  br i1 %2, label %switch.lookup, label %entry.get_dvmm_hw_setting.exit_crit_edge

entry.get_dvmm_hw_setting.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_dvmm_hw_setting.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.dce_mem_input_v_program_pte_vm, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_dvmm_hw_setting.exit

get_dvmm_hw_setting.exit:                         ; preds = %switch.lookup, %entry.get_dvmm_hw_setting.exit_crit_edge
  %dvmm_Hw_Setting_2DTiling.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @dvmm_Hw_Setting_2DTiling, %entry.get_dvmm_hw_setting.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %format)
  %cmp.i = icmp ugt i32 %format, 25
  %bpp.0.i = select i1 %cmp.i, i32 2, i32 0
  %arrayidx11.i = getelementptr [4 x [9 x i32]], ptr %dvmm_Hw_Setting_2DTiling.sink.i, i32 0, i32 %bpp.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %4 = icmp ult i32 %1, 11
  br i1 %4, label %switch.lookup172, label %get_dvmm_hw_setting.exit.get_dvmm_hw_setting.exit114_crit_edge

get_dvmm_hw_setting.exit.get_dvmm_hw_setting.exit114_crit_edge: ; preds = %get_dvmm_hw_setting.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_dvmm_hw_setting.exit114

switch.lookup172:                                 ; preds = %get_dvmm_hw_setting.exit
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep173 = getelementptr inbounds [11 x ptr], ptr @switch.table.dce_mem_input_v_program_pte_vm.2, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep173 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load174 = load ptr, ptr %switch.gep173, align 4
  br label %get_dvmm_hw_setting.exit114

get_dvmm_hw_setting.exit114:                      ; preds = %switch.lookup172, %get_dvmm_hw_setting.exit.get_dvmm_hw_setting.exit114_crit_edge
  %dvmm_Hw_Setting_2DTiling.sink.i109 = phi ptr [ %switch.load174, %switch.lookup172 ], [ @dvmm_Hw_Setting_2DTiling, %get_dvmm_hw_setting.exit.get_dvmm_hw_setting.exit114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %format)
  %cmp1.i111 = icmp ugt i32 %format, 17
  %spec.select.i = zext i1 %cmp1.i111 to i32
  %bpp.0.i112 = select i1 %cmp.i, i32 2, i32 %spec.select.i
  %arrayidx11.i113 = getelementptr [4 x [9 x i32]], ptr %dvmm_Hw_Setting_2DTiling.sink.i109, i32 0, i32 %bpp.0.i112
  %arrayidx = getelementptr i32, ptr %arrayidx11.i, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %arrayidx11.i, i32 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not149 = icmp ult i32 %7, 2
  br i1 %cmp.not149, label %get_dvmm_hw_setting.exit114.while.cond3.preheader_crit_edge, label %get_dvmm_hw_setting.exit114.while.body_crit_edge

get_dvmm_hw_setting.exit114.while.body_crit_edge: ; preds = %get_dvmm_hw_setting.exit114
  br label %while.body

get_dvmm_hw_setting.exit114.while.cond3.preheader_crit_edge: ; preds = %get_dvmm_hw_setting.exit114
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond3.preheader

while.cond3.preheader.loopexit:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo = shl nuw i32 %inc, 1
  %phi.bo164 = and i32 %phi.bo, 30
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.cond3.preheader.loopexit, %get_dvmm_hw_setting.exit114.while.cond3.preheader_crit_edge
  %page_width.0.lcssa = phi i32 [ 0, %get_dvmm_hw_setting.exit114.while.cond3.preheader_crit_edge ], [ %phi.bo164, %while.cond3.preheader.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5.not152 = icmp ult i32 %9, 2
  br i1 %cmp5.not152, label %while.cond3.preheader.while.end8_crit_edge, label %while.cond3.preheader.while.body6_crit_edge

while.cond3.preheader.while.body6_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body6

while.cond3.preheader.while.end8_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end8

while.body:                                       ; preds = %while.body.while.body_crit_edge, %get_dvmm_hw_setting.exit114.while.body_crit_edge
  %temp_page_width.0151 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %7, %get_dvmm_hw_setting.exit114.while.body_crit_edge ]
  %page_width.0150 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %get_dvmm_hw_setting.exit114.while.body_crit_edge ]
  %shr = lshr i32 %temp_page_width.0151, 1
  %inc = add nuw nsw i32 %page_width.0150, 1
  %cmp.not = icmp ult i32 %temp_page_width.0151, 4
  br i1 %cmp.not, label %while.cond3.preheader.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.cond3.preheader.while.body6_crit_edge
  %temp_page_height.0154 = phi i32 [ %shr4, %while.body6.while.body6_crit_edge ], [ %9, %while.cond3.preheader.while.body6_crit_edge ]
  %page_height.0153 = phi i32 [ %inc7, %while.body6.while.body6_crit_edge ], [ 0, %while.cond3.preheader.while.body6_crit_edge ]
  %shr4 = lshr i32 %temp_page_height.0154, 1
  %inc7 = add nuw nsw i32 %page_height.0153, 1
  %cmp5.not = icmp ult i32 %temp_page_height.0154, 4
  br i1 %cmp5.not, label %while.end8.loopexit, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body6

while.end8.loopexit:                              ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo165 = shl i32 %inc7, 5
  %phi.bo166 = and i32 %phi.bo165, 480
  br label %while.end8

while.end8:                                       ; preds = %while.end8.loopexit, %while.cond3.preheader.while.end8_crit_edge
  %page_height.0.lcssa = phi i32 [ 0, %while.cond3.preheader.while.end8_crit_edge ], [ %phi.bo166, %while.end8.loopexit ]
  %arrayidx9 = getelementptr i32, ptr %arrayidx11.i113, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %arrayidx11.i113, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp13.not156 = icmp ult i32 %11, 2
  br i1 %cmp13.not156, label %while.end8.while.cond17.preheader_crit_edge, label %while.end8.while.body14_crit_edge

while.end8.while.body14_crit_edge:                ; preds = %while.end8
  br label %while.body14

while.end8.while.cond17.preheader_crit_edge:      ; preds = %while.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond17.preheader

while.cond17.preheader.loopexit:                  ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo167 = shl nuw i32 %inc15, 1
  %phi.bo168 = and i32 %phi.bo167, 30
  br label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %while.cond17.preheader.loopexit, %while.end8.while.cond17.preheader_crit_edge
  %page_width_chroma.0.lcssa = phi i32 [ 0, %while.end8.while.cond17.preheader_crit_edge ], [ %phi.bo168, %while.cond17.preheader.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp19.not160 = icmp ult i32 %13, 2
  br i1 %cmp19.not160, label %while.cond17.preheader.while.end22_crit_edge, label %while.cond17.preheader.while.body20_crit_edge

while.cond17.preheader.while.body20_crit_edge:    ; preds = %while.cond17.preheader
  br label %while.body20

while.cond17.preheader.while.end22_crit_edge:     ; preds = %while.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end22

while.body14:                                     ; preds = %while.body14.while.body14_crit_edge, %while.end8.while.body14_crit_edge
  %temp_page_width.1158 = phi i32 [ %shr12, %while.body14.while.body14_crit_edge ], [ %11, %while.end8.while.body14_crit_edge ]
  %page_width_chroma.0157 = phi i32 [ %inc15, %while.body14.while.body14_crit_edge ], [ 0, %while.end8.while.body14_crit_edge ]
  %shr12 = lshr i32 %temp_page_width.1158, 1
  %inc15 = add nuw nsw i32 %page_width_chroma.0157, 1
  %cmp13.not = icmp ult i32 %temp_page_width.1158, 4
  br i1 %cmp13.not, label %while.cond17.preheader.loopexit, label %while.body14.while.body14_crit_edge

while.body14.while.body14_crit_edge:              ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14

while.body20:                                     ; preds = %while.body20.while.body20_crit_edge, %while.cond17.preheader.while.body20_crit_edge
  %temp_page_height.1162 = phi i32 [ %shr18, %while.body20.while.body20_crit_edge ], [ %13, %while.cond17.preheader.while.body20_crit_edge ]
  %page_height_chroma.0161 = phi i32 [ %inc21, %while.body20.while.body20_crit_edge ], [ 0, %while.cond17.preheader.while.body20_crit_edge ]
  %shr18 = lshr i32 %temp_page_height.1162, 1
  %inc21 = add nuw nsw i32 %page_height_chroma.0161, 1
  %cmp19.not = icmp ult i32 %temp_page_height.1162, 4
  br i1 %cmp19.not, label %while.end22.loopexit, label %while.body20.while.body20_crit_edge

while.body20.while.body20_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body20

while.end22.loopexit:                             ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo169 = shl i32 %inc21, 5
  %phi.bo170 = and i32 %phi.bo169, 480
  br label %while.end22

while.end22:                                      ; preds = %while.end22.loopexit, %while.cond17.preheader.while.end22_crit_edge
  %page_height_chroma.0.lcssa = phi i32 [ 0, %while.cond17.preheader.while.end22_crit_edge ], [ %phi.bo170, %while.end22.loopexit ]
  %14 = add i32 %rotation, -1
  %switch.and = and i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %15 = select i1 %switch.selectcmp, i32 4, i32 3
  %arrayidx25 = getelementptr i32, ptr %arrayidx11.i, i32 %15
  %arrayidx26 = getelementptr i32, ptr %arrayidx11.i113, i32 %15
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %min_pte_before_flip_chroma.0 = load i32, ptr %arrayidx26, align 4
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %min_pte_before_flip.0 = load i32, ptr %arrayidx25, align 4
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %call27 = tail call i32 @dm_read_reg_func(ptr noundef %19, i32 noundef 17978, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %or.i116 = or i32 %call27, 65535
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef 17978, i32 noundef %or.i116, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %call34 = tail call i32 @dm_read_reg_func(ptr noundef %23, i32 noundef 17961, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %and.i117 = and i32 %call34, -524287
  %shl.i124 = shl i32 %min_pte_before_flip.0, 9
  %and42.i125 = and i32 %shl.i124, 523776
  %or.i118 = or i32 %page_height.0.lcssa, %page_width.0.lcssa
  %or.i122 = or i32 %or.i118, %and42.i125
  %or.i126 = or i32 %or.i122, %and.i117
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef 17961, i32 noundef %or.i126, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %call42 = tail call i32 @dm_read_reg_func(ptr noundef %27, i32 noundef 17962, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %arrayidx43 = getelementptr i32, ptr %arrayidx11.i, i32 5
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx43, align 4
  %and.i127 = and i32 %call42, -65344
  %and42.i128 = and i32 %29, 63
  %or.i129 = or i32 %and.i127, %and42.i128
  %or.i131 = or i32 %or.i129, 65280
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %31, i32 noundef 17962, i32 noundef %or.i131, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %call50 = tail call i32 @dm_read_reg_func(ptr noundef %33, i32 noundef 17924, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %and.i132 = and i32 %call50, -524287
  %shl.i141 = shl i32 %min_pte_before_flip_chroma.0, 9
  %and42.i142 = and i32 %shl.i141, 523776
  %or.i135 = or i32 %page_height_chroma.0.lcssa, %page_width_chroma.0.lcssa
  %or.i139 = or i32 %or.i135, %and42.i142
  %or.i143 = or i32 %or.i139, %and.i132
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %35, i32 noundef 17924, i32 noundef %or.i143, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %call58 = tail call i32 @dm_read_reg_func(ptr noundef %37, i32 noundef 17965, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  %arrayidx59 = getelementptr i32, ptr %arrayidx11.i113, i32 5
  %38 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx59, align 4
  %and.i144 = and i32 %call58, -65344
  %and42.i145 = and i32 %39, 63
  %or.i146 = or i32 %and.i144, %and42.i145
  %or.i148 = or i32 %or.i146, 65280
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %41, i32 noundef 17965, i32 noundef %or.i148, ptr noundef nonnull @__func__.dce_mem_input_v_program_pte_vm) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mem_input_v_program_surface_config(ptr nocapture noundef readonly %mem_input, i32 noundef %format, ptr nocapture noundef readonly %tiling_info, ptr nocapture noundef readonly %plane_size, i32 noundef %rotation, ptr nocapture noundef readnone %dcc, i1 noundef zeroext %horizotal_mirror) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 17920, ptr noundef nonnull @__func__.enable) #4
  %or.i.i = or i32 %call.i, 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 17920, i32 noundef %or.i.i, ptr noundef nonnull @__func__.enable) #4
  %4 = ptrtoint ptr %tiling_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiling_info, align 4
  %shl.i.i = shl i32 %5, 2
  %and42.i.i = and i32 %shl.i.i, 12
  %bank_width.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 1
  %6 = ptrtoint ptr %bank_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank_width.i, align 4
  %shl.i1.i = shl i32 %7, 6
  %and42.i2.i = and i32 %shl.i1.i, 192
  %or.i.i5 = or i32 %and42.i2.i, %and42.i.i
  %bank_height.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 3
  %8 = ptrtoint ptr %bank_height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank_height.i, align 4
  %shl.i3.i = shl i32 %9, 11
  %and42.i4.i = and i32 %shl.i3.i, 6144
  %or.i5.i = or i32 %or.i.i5, %and42.i4.i
  %tile_aspect.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 5
  %10 = ptrtoint ptr %tile_aspect.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tile_aspect.i, align 4
  %shl.i6.i = shl i32 %11, 18
  %and42.i7.i = and i32 %shl.i6.i, 786432
  %or.i8.i = or i32 %or.i5.i, %and42.i7.i
  %tile_split.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 7
  %12 = ptrtoint ptr %tile_split.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tile_split.i, align 4
  %shl.i9.i = shl i32 %13, 13
  %and42.i10.i = and i32 %shl.i9.i, 57344
  %or.i11.i = or i32 %or.i8.i, %and42.i10.i
  %tile_mode.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 9
  %14 = ptrtoint ptr %tile_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tile_mode.i, align 4
  %shl.i13.i = shl i32 %15, 29
  %pipe_config.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 11
  %16 = ptrtoint ptr %pipe_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_config.i, align 4
  %shl.i17.i = shl i32 %17, 24
  %and42.i18.i = and i32 %shl.i17.i, 520093696
  %array_mode.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 12
  %18 = ptrtoint ptr %array_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %array_mode.i, align 4
  %shl.i21.i = shl i32 %19, 20
  %and42.i22.i = and i32 %shl.i21.i, 15728640
  %and.i16.masked.masked.masked.i = or i32 %or.i11.i, %shl.i13.i
  %and.i20.masked.masked.i = or i32 %and.i16.masked.masked.masked.i, %and42.i18.i
  %or.i25.i = or i32 %and42.i22.i, %and.i20.masked.masked.i
  %and.i26.i = or i32 %or.i25.i, -2147483648
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef 17921, i32 noundef %and.i26.i, ptr noundef nonnull @__func__.program_tiling) #4
  %bank_width_c.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 2
  %22 = ptrtoint ptr %bank_width_c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bank_width_c.i, align 4
  %shl.i27.i = shl i32 %23, 6
  %and42.i28.i = and i32 %shl.i27.i, 192
  %bank_height_c.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 4
  %24 = ptrtoint ptr %bank_height_c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank_height_c.i, align 4
  %shl.i29.i = shl i32 %25, 11
  %and42.i30.i = and i32 %shl.i29.i, 6144
  %or.i31.i = or i32 %and42.i30.i, %and42.i28.i
  %tile_aspect_c.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 6
  %26 = ptrtoint ptr %tile_aspect_c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tile_aspect_c.i, align 4
  %shl.i32.i = shl i32 %27, 18
  %and42.i33.i = and i32 %shl.i32.i, 786432
  %or.i34.i = or i32 %or.i31.i, %and42.i33.i
  %tile_split_c.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 8
  %28 = ptrtoint ptr %tile_split_c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tile_split_c.i, align 4
  %shl.i35.i = shl i32 %29, 13
  %and42.i36.i = and i32 %shl.i35.i, 57344
  %or.i37.i = or i32 %or.i34.i, %and42.i36.i
  %tile_mode_c.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 10
  %30 = ptrtoint ptr %tile_mode_c.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tile_mode_c.i, align 4
  %shl.i39.i = shl i32 %31, 29
  %and42.i40.i = and i32 %shl.i39.i, 1610612736
  %or.i41.i = or i32 %or.i37.i, %and42.i40.i
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %33, i32 noundef 17922, i32 noundef %or.i41.i, ptr noundef nonnull @__func__.program_tiling) #4
  %34 = ptrtoint ptr %plane_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %local_size.sroa.0.0.copyload.i = load i32, ptr %plane_size, align 4
  %local_size.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 4
  %35 = ptrtoint ptr %local_size.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %local_size.sroa.5.0.copyload.i = load i32, ptr %local_size.sroa.5.0..sroa_idx.i, align 4
  %local_size.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 8
  %36 = ptrtoint ptr %local_size.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %local_size.sroa.6.0.copyload.i = load i32, ptr %local_size.sroa.6.0..sroa_idx.i, align 4
  %local_size.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 12
  %37 = ptrtoint ptr %local_size.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %local_size.sroa.9.0.copyload.i = load i32, ptr %local_size.sroa.9.0..sroa_idx.i, align 4
  %local_size.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 16
  %38 = ptrtoint ptr %local_size.sroa.12.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %local_size.sroa.12.0.copyload.i = load i32, ptr %local_size.sroa.12.0..sroa_idx.i, align 4
  %local_size.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 20
  %39 = ptrtoint ptr %local_size.sroa.15.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %local_size.sroa.15.0.copyload.i = load i32, ptr %local_size.sroa.15.0..sroa_idx.i, align 4
  %local_size.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 24
  %40 = ptrtoint ptr %local_size.sroa.18.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %local_size.sroa.18.0.copyload.i = load i32, ptr %local_size.sroa.18.0..sroa_idx.i, align 4
  %local_size.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 28
  %41 = ptrtoint ptr %local_size.sroa.21.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %local_size.sroa.21.0.copyload.i = load i32, ptr %local_size.sroa.21.0..sroa_idx.i, align 4
  %local_size.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 32
  %42 = ptrtoint ptr %local_size.sroa.24.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %local_size.sroa.24.0.copyload.i = load i32, ptr %local_size.sroa.24.0..sroa_idx.i, align 4
  %local_size.sroa.27.0..sroa_idx.i = getelementptr inbounds i8, ptr %plane_size, i32 36
  %43 = ptrtoint ptr %local_size.sroa.27.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %local_size.sroa.27.0.copyload.i = load i32, ptr %local_size.sroa.27.0..sroa_idx.i, align 4
  %44 = zext i32 %rotation to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %rotation, label %entry.if.end.i_crit_edge [
    i32 1, label %entry.do.body.i_crit_edge
    i32 3, label %entry.do.body.i_crit_edge17
  ]

entry.do.body.i_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body.i:                                        ; preds = %entry.do.body.i_crit_edge, %entry.do.body.i_crit_edge17
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %local_size.sroa.9.0.i = phi i32 [ %local_size.sroa.6.0.copyload.i, %do.body.i ], [ %local_size.sroa.9.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.12.0.i = phi i32 [ %local_size.sroa.15.0.copyload.i, %do.body.i ], [ %local_size.sroa.12.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.15.0.i = phi i32 [ %local_size.sroa.12.0.copyload.i, %do.body.i ], [ %local_size.sroa.15.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.18.0.i = phi i32 [ %local_size.sroa.21.0.copyload.i, %do.body.i ], [ %local_size.sroa.18.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.21.0.i = phi i32 [ %local_size.sroa.18.0.copyload.i, %do.body.i ], [ %local_size.sroa.21.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.24.0.i = phi i32 [ %local_size.sroa.27.0.copyload.i, %do.body.i ], [ %local_size.sroa.24.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.27.0.i = phi i32 [ %local_size.sroa.24.0.copyload.i, %do.body.i ], [ %local_size.sroa.27.0.copyload.i, %entry.if.end.i_crit_edge ]
  %local_size.sroa.6.0.i = phi i32 [ %local_size.sroa.9.0.copyload.i, %do.body.i ], [ %local_size.sroa.6.0.copyload.i, %entry.if.end.i_crit_edge ]
  %and42.i.i7 = and i32 %local_size.sroa.0.0.copyload.i, 32767
  %45 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %46, i32 noundef 17942, i32 noundef %and42.i.i7, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %and42.i145.i = and i32 %local_size.sroa.5.0.copyload.i, 32767
  %47 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %48, i32 noundef 17943, i32 noundef %and42.i145.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %49 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %50, i32 noundef 17948, i32 noundef 0, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %51 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %52, i32 noundef 17949, i32 noundef 0, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %53 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %54, i32 noundef 17950, i32 noundef 0, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %55 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %56, i32 noundef 17951, i32 noundef 0, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %add.i = add i32 %local_size.sroa.6.0.i, %local_size.sroa.12.0.i
  %and42.i146.i = and i32 %add.i, 32767
  %57 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %58, i32 noundef 17952, i32 noundef %and42.i146.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %add66.i = add i32 %local_size.sroa.24.0.i, %local_size.sroa.18.0.i
  %and42.i147.i = and i32 %add66.i, 32767
  %59 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %60, i32 noundef 17953, i32 noundef %and42.i147.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %add74.i = add i32 %local_size.sroa.15.0.i, %local_size.sroa.9.0.i
  %and42.i148.i = and i32 %add74.i, 32767
  %61 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %62, i32 noundef 17954, i32 noundef %and42.i148.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %add82.i = add i32 %local_size.sroa.27.0.i, %local_size.sroa.21.0.i
  %and42.i149.i = and i32 %add82.i, 32767
  %63 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %64, i32 noundef 17955, i32 noundef %and42.i149.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  %switch.tableidx = add i32 %rotation, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %65 = icmp ult i32 %switch.tableidx, 3
  %switch.offset = sub i32 4, %rotation
  %value.0.i = select i1 %65, i32 %switch.offset, i32 0
  %66 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %67, i32 noundef 17973, i32 noundef %value.0.i, ptr noundef nonnull @__func__.program_size_and_rotation) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %format)
  %cmp.i = icmp ult i32 %format, 18
  %68 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end.i
  %call.i10 = tail call i32 @dm_read_reg_func(ptr noundef %69, i32 noundef 17921, ptr noundef nonnull @__func__.program_pixel_format) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %format)
  %70 = icmp ult i32 %format, 12
  br i1 %70, label %switch.lookup14, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

switch.lookup14:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.dce_mem_input_v_program_surface_config, i32 0, i32 %format
  %71 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep15 = getelementptr inbounds [12 x i32], ptr @switch.table.dce_mem_input_v_program_surface_config.3, i32 0, i32 %format
  %72 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup14, %if.then.i.sw.epilog.i_crit_edge
  %grph_depth.0.i = phi i32 [ %switch.load, %switch.lookup14 ], [ 2, %if.then.i.sw.epilog.i_crit_edge ]
  %grph_format.0.i = phi i32 [ %switch.load16, %switch.lookup14 ], [ 0, %if.then.i.sw.epilog.i_crit_edge ]
  %and.i.i = and i32 %call.i10, -1796
  %or.i.i12 = or i32 %grph_depth.0.i, %and.i.i
  %or.i44.i = or i32 %or.i.i12, %grph_format.0.i
  %73 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %74, i32 noundef 17921, i32 noundef %or.i44.i, ptr noundef nonnull @__func__.program_pixel_format) #4
  %75 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx.i, align 4
  %call12.i = tail call i32 @dm_read_reg_func(ptr noundef %76, i32 noundef 17923, ptr noundef nonnull @__func__.program_pixel_format) #4
  %and.i45.i = and i32 %call12.i, -8
  br label %program_pixel_format.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call19.i = tail call i32 @dm_read_reg_func(ptr noundef %69, i32 noundef 17923, ptr noundef nonnull @__func__.program_pixel_format) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %format)
  %switch.selectcmp.i = icmp eq i32 %format, 19
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %format)
  %switch.selectcmp40.i = icmp eq i32 %format, 18
  %switch.select41.i = select i1 %switch.selectcmp40.i, i32 2, i32 %switch.select.i
  %and.i46.i = and i32 %call19.i, -8
  %or.i47.i = or i32 %and.i46.i, %switch.select41.i
  br label %program_pixel_format.exit

program_pixel_format.exit:                        ; preds = %if.else.i, %sw.epilog.i
  %or.i47.sink.i = phi i32 [ %or.i47.i, %if.else.i ], [ %and.i45.i, %sw.epilog.i ]
  %77 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %78, i32 noundef 17923, i32 noundef %or.i47.sink.i, ptr noundef nonnull @__func__.program_pixel_format) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_mem_input_v_is_surface_pending(ptr nocapture noundef %mem_input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 17956, ptr noundef nonnull @__func__.dce_mem_input_v_is_surface_pending) #4
  %2 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %current_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 3
  %request_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %current_address, ptr %request_address, i32 120)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %4 = xor i1 %tobool.not, true
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_urgency_watermark(ptr noundef %ctx, i32 noundef %urgency_addr, i32 noundef %wm_addr, [4 x i32] %marks_low.coerce, i32 noundef %total_dest_line_time_ns) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %marks_low.coerce.fca.0.extract = extractvalue [4 x i32] %marks_low.coerce, 0
  %marks_low.coerce.fca.1.extract = extractvalue [4 x i32] %marks_low.coerce, 1
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %and.i = and i32 %call, -769
  %or.i = or i32 %and.i, 256
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, i32 noundef %or.i, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %call2 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %urgency_addr, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %and42.i = and i32 %marks_low.coerce.fca.0.extract, 65535
  %shl.i = shl i32 %total_dest_line_time_ns, 16
  %or.i34 = or i32 %shl.i, %and42.i
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %urgency_addr, i32 noundef %or.i34, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %and.i35 = and i32 %call5, -769
  %or.i36 = or i32 %and.i35, 512
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, i32 noundef %or.i36, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %urgency_addr, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  %and42.i38 = and i32 %marks_low.coerce.fca.1.extract, 65535
  %or.i41 = or i32 %shl.i, %and42.i38
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %urgency_addr, i32 noundef %or.i41, ptr noundef nonnull @__func__.program_urgency_watermark) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_nbp_watermark(ptr noundef %ctx, i32 noundef %wm_mask_ctrl_addr, i32 noundef %nbp_pstate_ctrl_addr, [4 x i32] %marks.coerce) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %marks.coerce.fca.0.extract = extractvalue [4 x i32] %marks.coerce, 0
  %marks.coerce.fca.1.extract = extractvalue [4 x i32] %marks.coerce, 1
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_mask_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %and.i = and i32 %call, -196609
  %or.i = or i32 %and.i, 65536
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_mask_ctrl_addr, i32 noundef %or.i, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %call2 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %or.i57 = or i32 %call2, 273
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, i32 noundef %or.i57, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %call6 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %and.i58 = and i32 %call6, 65535
  %shl.i = shl i32 %marks.coerce.fca.0.extract, 16
  %or.i59 = or i32 %and.i58, %shl.i
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, i32 noundef %or.i59, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %call8 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_mask_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %and.i60 = and i32 %call8, -196609
  %or.i61 = or i32 %and.i60, 131072
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_mask_ctrl_addr, i32 noundef %or.i61, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %call10 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %or.i67 = or i32 %call10, 273
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, i32 noundef %or.i67, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %call14 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  %and.i68 = and i32 %call14, 65535
  %shl.i69 = shl i32 %marks.coerce.fca.1.extract, 16
  %or.i70 = or i32 %and.i68, %shl.i69
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %nbp_pstate_ctrl_addr, i32 noundef %or.i70, ptr noundef nonnull @__func__.program_nbp_watermark) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_stutter_watermark(ptr noundef %ctx, i32 noundef %stutter_addr, i32 noundef %wm_addr, [4 x i32] %marks.coerce) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %and.i = and i32 %call, -4
  %or.i = or i32 %and.i, 1
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, i32 noundef %or.i, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %call2 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %stutter_addr, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %disable_stutter = getelementptr inbounds %struct.dc_debug_options, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %disable_stutter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_stutter, align 8, !range !49
  %and.i34 = and i32 %call2, 65406
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  %marks.coerce.fca.1.extract = extractvalue [4 x i32] %marks.coerce, 1
  %marks.coerce.fca.0.extract = extractvalue [4 x i32] %marks.coerce, 0
  %shl.i = shl i32 %marks.coerce.fca.0.extract, 16
  %or.i38 = or i32 %shl.i, %and.i34
  %stutter_cntl.0 = or i32 %or.i38, %5
  %or.i40 = or i32 %stutter_cntl.0, 128
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %stutter_addr, i32 noundef %or.i40, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %and.i41 = and i32 %call7, -4
  %or.i42 = or i32 %and.i41, 2
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %wm_addr, i32 noundef %or.i42, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %call9 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %stutter_addr, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  %and.i43 = and i32 %call9, 65535
  %shl.i44 = shl i32 %marks.coerce.fca.1.extract, 16
  %or.i45 = or i32 %and.i43, %shl.i44
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %stutter_addr, i32 noundef %or.i45, ptr noundef nonnull @__func__.program_stutter_watermark) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @dce110_mem_input_v_funcs, !1, !"dce110_mem_input_v_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 1016, i32 37}
!2 = !{ptr @__func__.program_urgency_watermark, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 667, i32 17}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.program_nbp_watermark, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 830, i32 10}
!9 = !{ptr @__func__.program_stutter_watermark, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 750, i32 17}
!11 = !{ptr @__func__.dce110_allocate_mem_input_v, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 980, i32 11}
!13 = !{ptr @__func__.set_flip_control, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 45, i32 10}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 150, i32 3}
!17 = !{ptr @__func__.program_addr, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.program_pri_addr_l, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 110, i32 2}
!20 = !{ptr @__func__.program_pri_addr_c, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 74, i32 2}
!22 = !{ptr @__func__.dce_mem_input_v_program_pte_vm, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 609, i32 10}
!24 = !{ptr @dvmm_Hw_Setting_1DTiling, !25, !"dvmm_Hw_Setting_1DTiling", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 512, i32 27}
!26 = !{ptr @dvmm_Hw_Setting_2DTiling, !27, !"dvmm_Hw_Setting_2DTiling", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 505, i32 27}
!28 = !{ptr @dvmm_Hw_Setting_Linear, !29, !"dvmm_Hw_Setting_Linear", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 519, i32 27}
!30 = !{ptr @__func__.enable, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 158, i32 10}
!32 = !{ptr @__func__.program_tiling, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 202, i32 2}
!34 = !{ptr @__func__.program_size_and_rotation, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 255, i32 2}
!36 = !{ptr @__func__.program_pixel_format, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 371, i32 11}
!38 = !{ptr @__func__.dce_mem_input_v_is_surface_pending, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c", i32 478, i32 10}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
