; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_mem_input.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mem_input_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pte_setting = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.dce_mem_input = type { %struct.mem_input, ptr, ptr, ptr, %struct.dce_mem_input_wa }
%struct.dce_mem_input_wa = type { i8 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.9 }
%struct.anon.9 = type { i32 }
%struct.dce_mem_input_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_mem_input_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_mem_input_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%struct.rect = type { i32, i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }

@dce_mi_funcs = internal constant { %struct.mem_input_funcs, [56 x i8] } { %struct.mem_input_funcs { ptr null, ptr null, ptr null, ptr @dce_mi_program_display_marks, ptr null, ptr @dce_mi_allocate_dmif, ptr @dce_mi_free_dmif, ptr @dce_mi_program_surface_flip_and_addr, ptr @dce_mi_program_pte_vm, ptr null, ptr null, ptr @dce_mi_program_surface_config, ptr @dce_mi_is_flip_pending, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dce60_mi_funcs = internal constant { %struct.mem_input_funcs, [56 x i8] } { %struct.mem_input_funcs { ptr null, ptr null, ptr null, ptr @dce60_mi_program_display_marks, ptr null, ptr @dce_mi_allocate_dmif, ptr @dce_mi_free_dmif, ptr @dce_mi_program_surface_flip_and_addr, ptr @dce_mi_program_pte_vm, ptr null, ptr null, ptr @dce60_mi_program_surface_config, ptr @dce_mi_is_flip_pending, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dce112_mi_funcs = internal constant { %struct.mem_input_funcs, [56 x i8] } { %struct.mem_input_funcs { ptr null, ptr null, ptr null, ptr @dce112_mi_program_display_marks, ptr null, ptr @dce_mi_allocate_dmif, ptr @dce_mi_free_dmif, ptr @dce_mi_program_surface_flip_and_addr, ptr @dce_mi_program_pte_vm, ptr null, ptr null, ptr @dce_mi_program_surface_config, ptr @dce_mi_is_flip_pending, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dce120_mi_funcs = internal constant { %struct.mem_input_funcs, [56 x i8] } { %struct.mem_input_funcs { ptr null, ptr null, ptr null, ptr @dce120_mi_program_display_marks, ptr null, ptr @dce_mi_allocate_dmif, ptr @dce_mi_free_dmif, ptr @dce_mi_program_surface_flip_and_addr, ptr @dce_mi_program_pte_vm, ptr null, ptr null, ptr @dce_mi_program_surface_config, ptr @dce_mi_is_flip_pending, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__func__.dce_mi_allocate_dmif = private unnamed_addr constant [21 x i8] c"dce_mi_allocate_dmif\00", align 1
@get_dmif_switch_time_us.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c\00", [35 x i8] zeroinitializer }, align 32
@get_dmif_switch_time_us.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dce_mi_free_dmif = private unnamed_addr constant [17 x i8] c"dce_mi_free_dmif\00", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_mi_program_surface_flip_and_addr = private unnamed_addr constant [37 x i8] c"dce_mi_program_surface_flip_and_addr\00", align 1
@pte_settings = internal constant { [3 x [4 x %struct.pte_setting]], [48 x i8] } { [3 x [4 x %struct.pte_setting]] [[4 x %struct.pte_setting] [%struct.pte_setting { i32 8, i32 4096, i32 1, i8 8, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 16, i32 2048, i32 1, i8 8, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 32, i32 1024, i32 1, i8 8, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 64, i32 512, i32 1, i8 8, i8 0, i8 1, i8 0, i8 0, i8 0 }], [4 x %struct.pte_setting] [%struct.pte_setting { i32 8, i32 512, i32 8, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 16, i32 256, i32 8, i8 2, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 32, i32 128, i32 8, i8 4, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pte_setting { i32 64, i32 64, i32 8, i8 4, i8 0, i8 1, i8 0, i8 0, i8 0 }], [4 x %struct.pte_setting] [%struct.pte_setting { i32 8, i32 64, i32 64, i8 8, i8 8, i8 1, i8 4, i8 0, i8 0 }, %struct.pte_setting { i32 16, i32 64, i32 32, i8 8, i8 16, i8 1, i8 8, i8 0, i8 0 }, %struct.pte_setting { i32 32, i32 32, i32 32, i8 16, i8 16, i8 1, i8 8, i8 0, i8 0 }, %struct.pte_setting { i32 64, i32 8, i32 32, i8 16, i8 16, i8 1, i8 8, i8 0, i8 0 }]], [48 x i8] zeroinitializer }, align 32
@__const.program_size_and_rotation.rotation_angles = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported grph pixel format\00", [34 x i8] zeroinitializer }, align 32
@__func__.program_grph_pixel_format = private unnamed_addr constant [26 x i8] c"program_grph_pixel_format\00", align 1
@switch.table.dce_mi_program_pte_vm = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@switch.table.program_grph_pixel_format = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 0, i32 2, i32 2, i32 0, i32 2, i32 0, i32 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"dce_mi_funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 880, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"dce60_mi_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 893, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"dce112_mi_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 906, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"dce120_mi_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 918, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 695, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 866, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"pte_settings\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 66, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 615, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [35 x i8] c"switch.table.dce_mi_program_pte_vm\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [39 x i8] c"switch.table.program_grph_pixel_format\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @dce_mi_funcs, ptr @dce60_mi_funcs, ptr @dce112_mi_funcs, ptr @dce120_mi_funcs, ptr @.str, ptr @.str.3, ptr @pte_settings, ptr @.str.4, ptr @switch.table.dce_mi_program_pte_vm, ptr @switch.table.program_grph_pixel_format], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_mi_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_mi_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_mi_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_mi_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pte_settings to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_mi_program_pte_vm to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.program_grph_pixel_format to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce_mem_input_construct(ptr nocapture noundef writeonly %dce_mi, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %mi_shift, ptr noundef %mi_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %inst3 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 4
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3, align 8
  %2 = ptrtoint ptr %dce_mi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce_mi_funcs, ptr %dce_mi, align 8
  %regs5 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 8
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %4 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mi_shift, ptr %shifts, align 4
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %5 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mi_mask, ptr %masks, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce60_mem_input_construct(ptr nocapture noundef writeonly %dce_mi, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %mi_shift, ptr noundef %mi_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i, align 4
  %inst3.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 4
  %1 = ptrtoint ptr %inst3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3.i, align 8
  %regs5.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regs, ptr %regs5.i, align 8
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %3 = ptrtoint ptr %shifts.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mi_shift, ptr %shifts.i, align 4
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %4 = ptrtoint ptr %masks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mi_mask, ptr %masks.i, align 8
  %5 = ptrtoint ptr %dce_mi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dce60_mi_funcs, ptr %dce_mi, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce112_mem_input_construct(ptr nocapture noundef writeonly %dce_mi, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %mi_shift, ptr noundef %mi_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i, align 4
  %inst3.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 4
  %1 = ptrtoint ptr %inst3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3.i, align 8
  %regs5.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regs, ptr %regs5.i, align 8
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %3 = ptrtoint ptr %shifts.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mi_shift, ptr %shifts.i, align 4
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %4 = ptrtoint ptr %masks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mi_mask, ptr %masks.i, align 8
  %5 = ptrtoint ptr %dce_mi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dce112_mi_funcs, ptr %dce_mi, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce120_mem_input_construct(ptr nocapture noundef writeonly %dce_mi, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %mi_shift, ptr noundef %mi_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i, align 4
  %inst3.i = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 4
  %1 = ptrtoint ptr %inst3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3.i, align 8
  %regs5.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regs, ptr %regs5.i, align 8
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %3 = ptrtoint ptr %shifts.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mi_shift, ptr %shifts.i, align 4
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %4 = ptrtoint ptr %masks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mi_mask, ptr %masks.i, align 8
  %5 = ptrtoint ptr %dce_mi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dce120_mi_funcs, ptr %dce_mi, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mi_program_display_marks(ptr noundef readonly %mi, [4 x i32] %nbp.coerce, [4 x i32] %stutter_exit.coerce, [4 x i32] %stutter_enter.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nbp.coerce.fca.0.extract = extractvalue [4 x i32] %nbp.coerce, 0
  %nbp.coerce.fca.3.extract = extractvalue [4 x i32] %nbp.coerce, 3
  %stutter_exit.coerce.fca.0.extract = extractvalue [4 x i32] %stutter_exit.coerce, 0
  %urgent.coerce.fca.0.extract = extractvalue [4 x i32] %urgent.coerce, 0
  %urgent.coerce.fca.3.extract = extractvalue [4 x i32] %urgent.coerce, 3
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disable_stutter = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %disable_stutter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_stutter, align 8, !range !36
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %regs.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %12 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %13, i32 0, i32 43
  %14 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %URGENCY_WATERMARK_MASK.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %16 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %17, i32 0, i32 43
  %18 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %URGENCY_WATERMARK_MASK1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef 2) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %URGENCY_LOW_WATERMARK.i, align 1
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %URGENCY_LOW_WATERMARK7.i, align 4
  %URGENCY_HIGH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 48
  %34 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %URGENCY_HIGH_WATERMARK.i, align 1
  %conv.i = zext i8 %35 to i32
  %URGENCY_HIGH_WATERMARK10.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 48
  %36 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i, align 4
  %call11.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %urgent.coerce.fca.0.extract, i32 noundef %conv.i, i32 noundef %37, i32 noundef %total_dest_line_time_ns) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i25 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i25, align 4
  %44 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i27 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i27 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %URGENCY_WATERMARK_MASK.i27, align 1
  %48 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i29 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 43
  %50 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %URGENCY_WATERMARK_MASK1.i29, align 4
  %call.i30 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %47, i32 noundef %51, i32 noundef 1) #5
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i31 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i31, align 4
  %58 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i32 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i32 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %URGENCY_LOW_WATERMARK.i32, align 1
  %62 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i33 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 47
  %64 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %URGENCY_LOW_WATERMARK7.i33, align 4
  %URGENCY_HIGH_WATERMARK.i34 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 48
  %66 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i34 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %URGENCY_HIGH_WATERMARK.i34, align 1
  %conv.i35 = zext i8 %67 to i32
  %URGENCY_HIGH_WATERMARK10.i36 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 48
  %68 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i36, align 4
  %call11.i37 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %61, i32 noundef %65, i32 noundef %urgent.coerce.fca.3.extract, i32 noundef %conv.i35, i32 noundef %69, i32 noundef %total_dest_line_time_ns) #5
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL, align 4
  %76 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts.i, align 4
  %STUTTER_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 59
  %78 = ptrtoint ptr %STUTTER_ENABLE to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %STUTTER_ENABLE, align 1
  %80 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks.i, align 8
  %STUTTER_ENABLE2 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 59
  %82 = ptrtoint ptr %STUTTER_ENABLE2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %STUTTER_ENABLE2, align 4
  %STUTTER_IGNORE_FBC = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 60
  %84 = ptrtoint ptr %STUTTER_IGNORE_FBC to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %STUTTER_IGNORE_FBC, align 1
  %conv = zext i8 %85 to i32
  %STUTTER_IGNORE_FBC5 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 60
  %86 = ptrtoint ptr %STUTTER_IGNORE_FBC5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %STUTTER_IGNORE_FBC5, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 2, i8 noundef zeroext %79, i32 noundef %83, i32 noundef %7, i32 noundef %conv, i32 noundef %87, i32 noundef 1) #5
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 2, i32 noundef %nbp.coerce.fca.0.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 1, i32 noundef %nbp.coerce.fca.3.extract)
  %88 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx, align 4
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i40 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %91, i32 0, i32 21
  %92 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i40, align 4
  %94 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %95, i32 0, i32 46
  %96 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i, align 1
  %98 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %99, i32 0, i32 46
  %100 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i, align 4
  %call.i43 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 1, i8 noundef zeroext %97, i32 noundef %101, i32 noundef 2) #5
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %103, i32 0, i32 27
  %104 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i = icmp eq i32 %105, 0
  %106 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i, label %if.else.i, label %entry.program_stutter_watermark.exit_crit_edge

entry.program_stutter_watermark.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %103, i32 0, i32 26
  %108 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i, align 4
  br label %program_stutter_watermark.exit

program_stutter_watermark.exit:                   ; preds = %if.else.i, %entry.program_stutter_watermark.exit_crit_edge
  %.sink.i = phi i32 [ %109, %if.else.i ], [ %105, %entry.program_stutter_watermark.exit_crit_edge ]
  %110 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %111, i32 0, i32 61
  %112 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i, align 1
  %114 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %115, i32 0, i32 61
  %116 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i, align 4
  %call18.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %107, i32 noundef %.sink.i, i32 noundef 1, i8 noundef zeroext %113, i32 noundef %117, i32 noundef %stutter_exit.coerce.fca.0.extract) #5
  %118 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx, align 4
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i46 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %121, i32 0, i32 21
  %122 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i46 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i46, align 4
  %124 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i48 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %125, i32 0, i32 46
  %126 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i48 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i48, align 1
  %128 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i50 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %129, i32 0, i32 46
  %130 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i50 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i50, align 4
  %call.i51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %119, i32 noundef %123, i32 noundef 1, i8 noundef zeroext %127, i32 noundef %131, i32 noundef 1) #5
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i52 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %133, i32 0, i32 27
  %134 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i52 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i53 = icmp eq i32 %135, 0
  %136 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i53, label %if.else.i55, label %program_stutter_watermark.exit.program_stutter_watermark.exit60_crit_edge

program_stutter_watermark.exit.program_stutter_watermark.exit60_crit_edge: ; preds = %program_stutter_watermark.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit60

if.else.i55:                                      ; preds = %program_stutter_watermark.exit
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i54 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %133, i32 0, i32 26
  %138 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i54 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i54, align 4
  br label %program_stutter_watermark.exit60

program_stutter_watermark.exit60:                 ; preds = %if.else.i55, %program_stutter_watermark.exit.program_stutter_watermark.exit60_crit_edge
  %.sink.i56 = phi i32 [ %139, %if.else.i55 ], [ %135, %program_stutter_watermark.exit.program_stutter_watermark.exit60_crit_edge ]
  %stutter_exit.coerce.fca.3.extract = extractvalue [4 x i32] %stutter_exit.coerce, 3
  %140 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i57 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %141, i32 0, i32 61
  %142 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i57 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i57, align 1
  %144 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i58 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %145, i32 0, i32 61
  %146 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i58 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i58, align 4
  %call18.i59 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %137, i32 noundef %.sink.i56, i32 noundef 1, i8 noundef zeroext %143, i32 noundef %147, i32 noundef %stutter_exit.coerce.fca.3.extract) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mi_allocate_dmif(ptr nocapture noundef readonly %mi, i32 noundef %h_total, i32 noundef %v_total, i32 noundef %pix_clk_khz, i32 noundef %total_stream_num) #1 align 64 {
entry:
  %buffers_allocated = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h_total)
  %tobool.not.i = icmp eq i32 %h_total, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_total)
  %tobool1.not.i = icmp ne i32 %v_total, 0
  %or.cond.not.i = or i1 %tobool.not.i, %tobool1.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pix_clk_khz)
  %tobool3.not.i = icmp eq i32 %pix_clk_khz, 0
  %or.cond3.i = or i1 %or.cond.not.i, %tobool3.not.i
  br i1 %or.cond3.i, label %entry.get_dmif_switch_time_us.exit_crit_edge, label %if.end.i

entry.get_dmif_switch_time_us.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dmif_switch_time_us.exit

if.end.i:                                         ; preds = %entry
  %mul.i = mul i32 %pix_clk_khz, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool5.not.i = icmp eq i32 %mul.i, 0
  %.b1.i = load i1, ptr @get_dmif_switch_time_us.__already_done, align 1
  br i1 %.b1.i, label %if.end.i.if.then50.i_crit_edge, label %if.then18.i, !prof !37

if.end.i.if.then50.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @get_dmif_switch_time_us.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 695, i32 noundef 9, ptr noundef null) #5
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then18.i, %if.end.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br i1 %tobool5.not.i, label %land.rhs65.i, label %if.then50.i.get_dmif_switch_time_us.exit_crit_edge

if.then50.i.get_dmif_switch_time_us.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dmif_switch_time_us.exit

land.rhs65.i:                                     ; preds = %if.then50.i
  %.b2092.i = load i1, ptr @get_dmif_switch_time_us.__already_done.1, align 1
  br i1 %.b2092.i, label %land.rhs65.i.if.then112.i_crit_edge, label %if.then76.i, !prof !37

land.rhs65.i.if.then112.i_crit_edge:              ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then112.i

if.then76.i:                                      ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @get_dmif_switch_time_us.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 696, i32 noundef 9, ptr noundef null) #5
  br label %if.then112.i

if.then112.i:                                     ; preds = %if.then76.i, %land.rhs65.i.if.then112.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %get_dmif_switch_time_us.exit

get_dmif_switch_time_us.exit:                     ; preds = %if.then112.i, %if.then50.i.get_dmif_switch_time_us.exit_crit_edge, %entry.get_dmif_switch_time_us.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffers_allocated) #5
  %0 = ptrtoint ptr %buffers_allocated to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buffers_allocated, align 4, !annotation !38
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %DMIF_BUFFER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DMIF_BUFFER_CONTROL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %7 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATED = getelementptr inbounds %struct.dce_mem_input_shift, ptr %8, i32 0, i32 63
  %9 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DMIF_BUFFERS_ALLOCATED, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATED1 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %12, i32 0, i32 63
  %13 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DMIF_BUFFERS_ALLOCATED1, align 4
  %call2 = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %buffers_allocated) #5
  %15 = ptrtoint ptr %buffers_allocated to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffers_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %get_dmif_switch_time_us.exit.cleanup_crit_edge, label %if.end

get_dmif_switch_time_us.exit.cleanup_crit_edge:   ; preds = %get_dmif_switch_time_us.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_dmif_switch_time_us.exit
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL6 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %DMIF_BUFFER_CONTROL6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DMIF_BUFFER_CONTROL6, align 4
  %23 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATED8 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %24, i32 0, i32 63
  %25 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DMIF_BUFFERS_ALLOCATED8, align 1
  %27 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATED10 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %28, i32 0, i32 63
  %29 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DMIF_BUFFERS_ALLOCATED10, align 4
  %call11 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %18, i32 noundef %22, i32 noundef %call2, i32 noundef 1, i8 noundef zeroext %26, i32 noundef %30, i32 noundef 2) #5
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL15 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %34, i32 0, i32 28
  %35 = ptrtoint ptr %DMIF_BUFFER_CONTROL15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DMIF_BUFFER_CONTROL15, align 4
  %37 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATION_COMPLETED = getelementptr inbounds %struct.dce_mem_input_shift, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED, align 1
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATION_COMPLETED18 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %42, i32 0, i32 64
  %43 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED18, align 4
  call void @generic_reg_wait(ptr noundef %32, i32 noundef %36, i32 noundef %conv, i32 noundef %44, i32 noundef 1, i32 noundef 10, i32 noundef 6000, ptr noundef nonnull @__func__.dce_mi_allocate_dmif, i32 noundef 747) #5
  br i1 %tobool3.not.i, label %if.end.if.end32_crit_edge, label %if.then21

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = udiv i32 1000000000, %pix_clk_khz
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %DPG_PIPE_ARBITRATION_CONTROL1 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %DPG_PIPE_ARBITRATION_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %DPG_PIPE_ARBITRATION_CONTROL1, align 4
  %52 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %shifts, align 4
  %PIXEL_DURATION = getelementptr inbounds %struct.dce_mem_input_shift, ptr %53, i32 0, i32 42
  %54 = ptrtoint ptr %PIXEL_DURATION to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %PIXEL_DURATION, align 1
  %56 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %masks, align 8
  %PIXEL_DURATION30 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %57, i32 0, i32 42
  %58 = ptrtoint ptr %PIXEL_DURATION30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %PIXEL_DURATION30, align 4
  %call31 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %47, i32 noundef %51, i32 noundef 1, i8 noundef zeroext %55, i32 noundef %59, i32 noundef %45) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.end.if.end32_crit_edge
  %wa = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 4
  %60 = ptrtoint ptr %wa to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not = icmp eq i8 %61, 0
  br i1 %tobool.not, label %if.end32.cleanup_crit_edge, label %if.then33

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %total_stream_num)
  %cmp34 = icmp ugt i32 %total_stream_num, 1
  %conv38 = zext i8 %61 to i32
  %spec.select = select i1 %cmp34, i32 0, i32 %conv38
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx, align 4
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %MC_HUB_RDREQ_DMIF_LIMIT = getelementptr inbounds %struct.dce_mem_input_registers, ptr %65, i32 0, i32 29
  %66 = ptrtoint ptr %MC_HUB_RDREQ_DMIF_LIMIT to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %MC_HUB_RDREQ_DMIF_LIMIT, align 4
  %68 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shifts, align 4
  %ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %69, i32 0, i32 65
  %70 = ptrtoint ptr %ENABLE to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ENABLE, align 1
  %72 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %masks, align 8
  %ENABLE44 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %73, i32 0, i32 65
  %74 = ptrtoint ptr %ENABLE44 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ENABLE44, align 4
  %call45 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %63, i32 noundef %67, i32 noundef 1, i8 noundef zeroext %71, i32 noundef %75, i32 noundef %spec.select) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end32.cleanup_crit_edge, %get_dmif_switch_time_us.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffers_allocated) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mi_free_dmif(ptr nocapture noundef readonly %mi, i32 noundef %total_stream_num) #1 align 64 {
entry:
  %buffers_allocated = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffers_allocated) #5
  %0 = ptrtoint ptr %buffers_allocated to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buffers_allocated, align 4, !annotation !38
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %DMIF_BUFFER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DMIF_BUFFER_CONTROL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %7 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATED = getelementptr inbounds %struct.dce_mem_input_shift, ptr %8, i32 0, i32 63
  %9 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DMIF_BUFFERS_ALLOCATED, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATED1 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %12, i32 0, i32 63
  %13 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DMIF_BUFFERS_ALLOCATED1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %buffers_allocated) #5
  %15 = ptrtoint ptr %buffers_allocated to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffers_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL5 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %DMIF_BUFFER_CONTROL5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DMIF_BUFFER_CONTROL5, align 4
  %23 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATED7 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %24, i32 0, i32 63
  %25 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DMIF_BUFFERS_ALLOCATED7, align 1
  %27 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATED9 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %28, i32 0, i32 63
  %29 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATED9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DMIF_BUFFERS_ALLOCATED9, align 4
  %call10 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %18, i32 noundef %22, i32 noundef %call, i32 noundef 1, i8 noundef zeroext %26, i32 noundef %30, i32 noundef 0) #5
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %DMIF_BUFFER_CONTROL14 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %34, i32 0, i32 28
  %35 = ptrtoint ptr %DMIF_BUFFER_CONTROL14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DMIF_BUFFER_CONTROL14, align 4
  %37 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shifts, align 4
  %DMIF_BUFFERS_ALLOCATION_COMPLETED = getelementptr inbounds %struct.dce_mem_input_shift, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED, align 1
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %masks, align 8
  %DMIF_BUFFERS_ALLOCATION_COMPLETED17 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %42, i32 0, i32 64
  %43 = ptrtoint ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DMIF_BUFFERS_ALLOCATION_COMPLETED17, align 4
  call void @generic_reg_wait(ptr noundef %32, i32 noundef %36, i32 noundef %conv, i32 noundef %44, i32 noundef 1, i32 noundef 10, i32 noundef 3500, ptr noundef nonnull @__func__.dce_mi_free_dmif, i32 noundef 784) #5
  %wa = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 4
  %45 = ptrtoint ptr %wa to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %total_stream_num)
  %cmp19 = icmp ugt i32 %total_stream_num, 1
  %conv23 = zext i8 %46 to i32
  %spec.select = select i1 %cmp19, i32 0, i32 %conv23
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %MC_HUB_RDREQ_DMIF_LIMIT = getelementptr inbounds %struct.dce_mem_input_registers, ptr %50, i32 0, i32 29
  %51 = ptrtoint ptr %MC_HUB_RDREQ_DMIF_LIMIT to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %MC_HUB_RDREQ_DMIF_LIMIT, align 4
  %53 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shifts, align 4
  %ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %54, i32 0, i32 65
  %55 = ptrtoint ptr %ENABLE to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ENABLE, align 1
  %57 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %masks, align 8
  %ENABLE29 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %58, i32 0, i32 65
  %59 = ptrtoint ptr %ENABLE29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ENABLE29, align 4
  %call30 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %52, i32 noundef 1, i8 noundef zeroext %56, i32 noundef %60, i32 noundef %spec.select) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffers_allocated) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_mi_program_surface_flip_and_addr(ptr nocapture noundef %mem_input, ptr nocapture noundef readonly %address, i1 noundef zeroext %flip_immediate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %GRPH_UPDATE = getelementptr inbounds %struct.dce_mem_input_registers, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %GRPH_UPDATE to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %GRPH_UPDATE, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 4
  %GRPH_UPDATE_LOCK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %GRPH_UPDATE_LOCK to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %GRPH_UPDATE_LOCK, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 8
  %GRPH_UPDATE_LOCK1 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %GRPH_UPDATE_LOCK1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %GRPH_UPDATE_LOCK1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %GRPH_FLIP_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %GRPH_FLIP_CONTROL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %GRPH_FLIP_CONTROL, align 4
  %20 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shifts, align 4
  %GRPH_SURFACE_UPDATE_H_RETRACE_EN = getelementptr inbounds %struct.dce_mem_input_shift, ptr %21, i32 0, i32 40
  %22 = ptrtoint ptr %GRPH_SURFACE_UPDATE_H_RETRACE_EN to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 1
  %24 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %masks, align 8
  %GRPH_SURFACE_UPDATE_H_RETRACE_EN7 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %25, i32 0, i32 40
  %26 = ptrtoint ptr %GRPH_SURFACE_UPDATE_H_RETRACE_EN7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %GRPH_SURFACE_UPDATE_H_RETRACE_EN7, align 4
  %cond = zext i1 %flip_immediate to i32
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %15, i32 noundef %19, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %cond) #5
  %28 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %31 = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp = icmp eq i64 %33, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %address.sroa.2.0.extract.trunc.i = trunc i64 %33 to i32
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i, align 4
  %40 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shifts, align 4
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %41, i32 0, i32 37
  %42 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i, align 1
  %44 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %masks, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %45, i32 0, i32 37
  %46 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %35, i32 noundef %39, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %43, i32 noundef %47, i32 noundef %address.sroa.2.0.extract.trunc.i) #5
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS.i, align 4
  %54 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shifts, align 4
  %GRPH_PRIMARY_SURFACE_ADDRESS7.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %55, i32 0, i32 38
  %56 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %GRPH_PRIMARY_SURFACE_ADDRESS7.i, align 1
  %58 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %masks, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS9.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %59, i32 0, i32 38
  %60 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS9.i, align 4
  %sum.shift.i = lshr i64 %33, 40
  %shr18.i = trunc i64 %sum.shift.i to i32
  %call10.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %49, i32 noundef %53, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %61, i32 noundef %shr18.i) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %62 = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %cmp11 = icmp eq i64 %64, 0
  br i1 %cmp11, label %sw.bb10.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb10
  %right_addr = getelementptr inbounds %struct.dc_plane_address, ptr %address, i32 0, i32 2, i32 0, i32 3
  %65 = ptrtoint ptr %right_addr to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %right_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp12 = icmp eq i64 %66, 0
  br i1 %cmp12, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end14

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %address.sroa.2.0.extract.trunc.i58 = trunc i64 %64 to i32
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx, align 4
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i61 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH.i61, align 4
  %73 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %shifts, align 4
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i63 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %74, i32 0, i32 37
  %75 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i63 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH1.i63, align 1
  %77 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %masks, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i65 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %78, i32 0, i32 37
  %79 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS_HIGH2.i65, align 4
  %call.i66 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %68, i32 noundef %72, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %76, i32 noundef %80, i32 noundef %address.sroa.2.0.extract.trunc.i58) #5
  %81 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx, align 4
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS.i67 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %84, i32 0, i32 15
  %85 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS.i67 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS.i67, align 4
  %87 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %shifts, align 4
  %GRPH_PRIMARY_SURFACE_ADDRESS7.i68 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %88, i32 0, i32 38
  %89 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS7.i68 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %GRPH_PRIMARY_SURFACE_ADDRESS7.i68, align 1
  %91 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %masks, align 8
  %GRPH_PRIMARY_SURFACE_ADDRESS9.i69 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %92, i32 0, i32 38
  %93 = ptrtoint ptr %GRPH_PRIMARY_SURFACE_ADDRESS9.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %GRPH_PRIMARY_SURFACE_ADDRESS9.i69, align 4
  %sum.shift.i70 = lshr i64 %64, 40
  %shr18.i71 = trunc i64 %sum.shift.i70 to i32
  %call10.i72 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %82, i32 noundef %86, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %90, i32 noundef %94, i32 noundef %shr18.i71) #5
  %95 = ptrtoint ptr %right_addr to i32
  call void @__asan_load8_noabort(i32 %95)
  %.unpack56 = load i64, ptr %right_addr, align 8
  %address.sroa.2.0.extract.trunc.i73 = trunc i64 %.unpack56 to i32
  %96 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx, align 4
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 8
  %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %99, i32 0, i32 18
  %100 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH.i, align 4
  %102 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shifts, align 4
  %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH1.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %103, i32 0, i32 34
  %104 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH1.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH1.i, align 1
  %106 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %masks, align 8
  %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH2.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %107, i32 0, i32 34
  %108 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %GRPH_SECONDARY_SURFACE_ADDRESS_HIGH2.i, align 4
  %call.i78 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %97, i32 noundef %101, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %105, i32 noundef %109, i32 noundef %address.sroa.2.0.extract.trunc.i73) #5
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx, align 4
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 8
  %GRPH_SECONDARY_SURFACE_ADDRESS.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %113, i32 0, i32 17
  %114 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %GRPH_SECONDARY_SURFACE_ADDRESS.i, align 4
  %116 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %shifts, align 4
  %GRPH_SECONDARY_SURFACE_ADDRESS7.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %117, i32 0, i32 35
  %118 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS7.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %GRPH_SECONDARY_SURFACE_ADDRESS7.i, align 1
  %120 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %masks, align 8
  %GRPH_SECONDARY_SURFACE_ADDRESS9.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %121, i32 0, i32 35
  %122 = ptrtoint ptr %GRPH_SECONDARY_SURFACE_ADDRESS9.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %GRPH_SECONDARY_SURFACE_ADDRESS9.i, align 4
  %sum.shift.i79 = lshr i64 %.unpack56, 40
  %shr23.i = trunc i64 %sum.shift.i79 to i32
  %GRPH_SECONDARY_DFQ_ENABLE.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %117, i32 0, i32 36
  %124 = ptrtoint ptr %GRPH_SECONDARY_DFQ_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %GRPH_SECONDARY_DFQ_ENABLE.i, align 1
  %conv.i = zext i8 %125 to i32
  %GRPH_SECONDARY_DFQ_ENABLE12.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %121, i32 0, i32 36
  %126 = ptrtoint ptr %GRPH_SECONDARY_DFQ_ENABLE12.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %GRPH_SECONDARY_DFQ_ENABLE12.i, align 4
  %call13.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %111, i32 noundef %115, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %119, i32 noundef %123, i32 noundef %shr23.i, i32 noundef %conv.i, i32 noundef %127, i32 noundef 0) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce_mi_program_surface_flip_and_addr, i32 noundef 866) #5
  tail call void @kgdb_breakpoint() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end14, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  %request_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 2
  %128 = call ptr @memcpy(ptr %request_address, ptr %address, i32 120)
  br i1 %flip_immediate, label %if.then20, label %sw.epilog.if.end21_crit_edge

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %current_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 3
  %129 = call ptr @memcpy(ptr %current_address, ptr %address, i32 120)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.epilog.if.end21_crit_edge
  %130 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx, align 4
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 8
  %GRPH_UPDATE25 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %133, i32 0, i32 13
  %134 = ptrtoint ptr %GRPH_UPDATE25 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %GRPH_UPDATE25, align 4
  %136 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shifts, align 4
  %GRPH_UPDATE_LOCK27 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %137, i32 0, i32 41
  %138 = ptrtoint ptr %GRPH_UPDATE_LOCK27 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %GRPH_UPDATE_LOCK27, align 1
  %140 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %masks, align 8
  %GRPH_UPDATE_LOCK29 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %141, i32 0, i32 41
  %142 = ptrtoint ptr %GRPH_UPDATE_LOCK29 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %GRPH_UPDATE_LOCK29, align 4
  %call30 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %131, i32 noundef %135, i32 noundef 1, i8 noundef zeroext %139, i32 noundef %143, i32 noundef 0) #5
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mi_program_pte_vm(ptr nocapture noundef readonly %mi, i32 noundef %format, ptr nocapture noundef readonly %tiling_info, i32 noundef %rotation) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %format)
  %cmp.i = icmp ugt i32 %format, 7
  br i1 %cmp.i, label %entry.get_mi_bpp.exit_crit_edge, label %if.else.i

entry.get_mi_bpp.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_mi_bpp.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %format)
  %cmp1.i = icmp ugt i32 %format, 2
  br i1 %cmp1.i, label %if.else.i.get_mi_bpp.exit_crit_edge, label %if.else3.i

if.else.i.get_mi_bpp.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_mi_bpp.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp4.not.i = icmp ne i32 %format, 0
  %..i = zext i1 %cmp4.not.i to i32
  br label %get_mi_bpp.exit

get_mi_bpp.exit:                                  ; preds = %if.else3.i, %if.else.i.get_mi_bpp.exit_crit_edge, %entry.get_mi_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %entry.get_mi_bpp.exit_crit_edge ], [ 2, %if.else.i.get_mi_bpp.exit_crit_edge ], [ %..i, %if.else3.i ]
  %array_mode.i = getelementptr inbounds %struct.anon.5, ptr %tiling_info, i32 0, i32 12
  %0 = ptrtoint ptr %array_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %array_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %2 = icmp ult i32 %1, 11
  br i1 %2, label %switch.lookup, label %get_mi_bpp.exit.cond.false2.i_crit_edge

get_mi_bpp.exit.cond.false2.i_crit_edge:          ; preds = %get_mi_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false2.i

switch.lookup:                                    ; preds = %get_mi_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.dce_mi_program_pte_vm, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.false2.i

cond.false2.i:                                    ; preds = %switch.lookup, %get_mi_bpp.exit.cond.false2.i_crit_edge
  %retval.0.i60 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %get_mi_bpp.exit.cond.false2.i_crit_edge ]
  %page_width3 = getelementptr [3 x [4 x %struct.pte_setting]], ptr @pte_settings, i32 0, i32 %retval.0.i60, i32 %retval.0.i, i32 1
  %4 = ptrtoint ptr %page_width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_width3, align 4
  %page_height5 = getelementptr [3 x [4 x %struct.pte_setting]], ptr @pte_settings, i32 0, i32 %retval.0.i60, i32 %retval.0.i, i32 2
  %6 = ptrtoint ptr %page_height5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_height5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i66 = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #5, !range !39
  %sub.i.op.i.i67 = xor i32 %8, 31
  %sub.i.i68 = select i1 %tobool.not.i.i.i66, i32 -1, i32 %sub.i.op.i.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #5, !range !39
  %sub.i.op.i.i = xor i32 %9, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %10 = add i32 %rotation, -1
  %switch.and.i = and i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %min_pte_before_flip_vert_scan = getelementptr [3 x [4 x %struct.pte_setting]], ptr @pte_settings, i32 0, i32 %retval.0.i60, i32 %retval.0.i, i32 4
  %min_pte_before_flip_horiz_scan = getelementptr [3 x [4 x %struct.pte_setting]], ptr @pte_settings, i32 0, i32 %retval.0.i60, i32 %retval.0.i, i32 3
  %cond.in.in = select i1 %switch.selectcmp.i, ptr %min_pte_before_flip_vert_scan, ptr %min_pte_before_flip_horiz_scan
  %11 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT = getelementptr inbounds %struct.dce_mem_input_registers, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %18 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shifts, align 4
  %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT9 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT9, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %22 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %masks, align 8
  %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT10 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT10, align 4
  %call11 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext %21, i32 noundef %25, i32 noundef 127) #5
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %DVMM_PTE_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %DVMM_PTE_CONTROL to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DVMM_PTE_CONTROL, align 4
  %32 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shifts, align 4
  %DVMM_PAGE_WIDTH = getelementptr inbounds %struct.dce_mem_input_shift, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %DVMM_PAGE_WIDTH to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DVMM_PAGE_WIDTH, align 1
  %36 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %masks, align 8
  %DVMM_PAGE_WIDTH17 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %DVMM_PAGE_WIDTH17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DVMM_PAGE_WIDTH17, align 4
  %DVMM_PAGE_HEIGHT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %33, i32 0, i32 15
  %40 = ptrtoint ptr %DVMM_PAGE_HEIGHT to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %DVMM_PAGE_HEIGHT, align 1
  %conv19 = zext i8 %41 to i32
  %DVMM_PAGE_HEIGHT21 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %37, i32 0, i32 15
  %42 = ptrtoint ptr %DVMM_PAGE_HEIGHT21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DVMM_PAGE_HEIGHT21, align 4
  %DVMM_MIN_PTE_BEFORE_FLIP = getelementptr inbounds %struct.dce_mem_input_shift, ptr %33, i32 0, i32 16
  %44 = ptrtoint ptr %DVMM_MIN_PTE_BEFORE_FLIP to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DVMM_MIN_PTE_BEFORE_FLIP, align 1
  %conv23 = zext i8 %45 to i32
  %DVMM_MIN_PTE_BEFORE_FLIP25 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %37, i32 0, i32 16
  %46 = ptrtoint ptr %DVMM_MIN_PTE_BEFORE_FLIP25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %DVMM_MIN_PTE_BEFORE_FLIP25, align 4
  %call26 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %31, i32 noundef 3, i8 noundef zeroext %35, i32 noundef %39, i32 noundef %sub.i.i, i32 noundef %conv19, i32 noundef %43, i32 noundef %sub.i.i68, i32 noundef %conv23, i32 noundef %47, i32 noundef %cond) #5
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %DVMM_PTE_ARB_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %DVMM_PTE_ARB_CONTROL to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DVMM_PTE_ARB_CONTROL, align 4
  %54 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shifts, align 4
  %DVMM_PTE_REQ_PER_CHUNK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %DVMM_PTE_REQ_PER_CHUNK to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %DVMM_PTE_REQ_PER_CHUNK, align 1
  %58 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %masks, align 8
  %DVMM_PTE_REQ_PER_CHUNK32 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %DVMM_PTE_REQ_PER_CHUNK32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DVMM_PTE_REQ_PER_CHUNK32, align 4
  %pte_req_per_chunk = getelementptr [3 x [4 x %struct.pte_setting]], ptr @pte_settings, i32 0, i32 %retval.0.i60, i32 %retval.0.i, i32 5
  %62 = ptrtoint ptr %pte_req_per_chunk to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pte_req_per_chunk, align 2
  %conv33 = zext i8 %63 to i32
  %DVMM_MAX_PTE_REQ_OUTSTANDING = getelementptr inbounds %struct.dce_mem_input_shift, ptr %55, i32 0, i32 18
  %64 = ptrtoint ptr %DVMM_MAX_PTE_REQ_OUTSTANDING to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DVMM_MAX_PTE_REQ_OUTSTANDING, align 1
  %conv35 = zext i8 %65 to i32
  %DVMM_MAX_PTE_REQ_OUTSTANDING37 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %59, i32 0, i32 18
  %66 = ptrtoint ptr %DVMM_MAX_PTE_REQ_OUTSTANDING37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %DVMM_MAX_PTE_REQ_OUTSTANDING37, align 4
  %call38 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 2, i8 noundef zeroext %57, i32 noundef %61, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %67, i32 noundef 127) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_mi_program_surface_config(ptr nocapture noundef readonly %mi, i32 noundef %format, ptr nocapture noundef readonly %tiling_info, ptr nocapture noundef readonly %plane_size, i32 noundef %rotation, ptr nocapture noundef readnone %dcc, i1 noundef zeroext %horizontal_mirror) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  tail call fastcc void @program_tiling(ptr noundef %mi, ptr noundef %tiling_info)
  %surface_size.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2
  %hw_rect.sroa.12.0.surface_size1.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 3
  %hw_rect.sroa.9.0.surface_size1.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 2
  %hw_rect.sroa.6.0.surface_size1.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 1
  %14 = zext i32 %rotation to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rotation, label %entry.program_size_and_rotation.exit_crit_edge [
    i32 3, label %entry.if.then.i_crit_edge
    i32 1, label %entry.if.then.i_crit_edge12
  ]

entry.if.then.i_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

entry.program_size_and_rotation.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_size_and_rotation.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge12
  br label %program_size_and_rotation.exit

program_size_and_rotation.exit:                   ; preds = %if.then.i, %entry.program_size_and_rotation.exit_crit_edge
  %hw_rect.sroa.12.0.in.i = phi ptr [ %hw_rect.sroa.9.0.surface_size1.sroa_idx.i, %if.then.i ], [ %hw_rect.sroa.12.0.surface_size1.sroa_idx.i, %entry.program_size_and_rotation.exit_crit_edge ]
  %hw_rect.sroa.9.0.in.i = phi ptr [ %hw_rect.sroa.12.0.surface_size1.sroa_idx.i, %if.then.i ], [ %hw_rect.sroa.9.0.surface_size1.sroa_idx.i, %entry.program_size_and_rotation.exit_crit_edge ]
  %hw_rect.sroa.6.0.in.i = phi ptr [ %surface_size.i, %if.then.i ], [ %hw_rect.sroa.6.0.surface_size1.sroa_idx.i, %entry.program_size_and_rotation.exit_crit_edge ]
  %hw_rect.sroa.0.0.in.i = phi ptr [ %hw_rect.sroa.6.0.surface_size1.sroa_idx.i, %if.then.i ], [ %surface_size.i, %entry.program_size_and_rotation.exit_crit_edge ]
  %15 = ptrtoint ptr %hw_rect.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %hw_rect.sroa.0.0.i = load i32, ptr %hw_rect.sroa.0.0.in.i, align 4
  %16 = ptrtoint ptr %hw_rect.sroa.6.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %hw_rect.sroa.6.0.i = load i32, ptr %hw_rect.sroa.6.0.in.i, align 4
  %17 = ptrtoint ptr %hw_rect.sroa.9.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %hw_rect.sroa.9.0.i = load i32, ptr %hw_rect.sroa.9.0.in.i, align 4
  %18 = ptrtoint ptr %hw_rect.sroa.12.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %hw_rect.sroa.12.0.i = load i32, ptr %hw_rect.sroa.12.0.in.i, align 4
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %GRPH_X_START.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %GRPH_X_START.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %GRPH_X_START.i, align 4
  %25 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shifts, align 4
  %GRPH_X_START7.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %GRPH_X_START7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %GRPH_X_START7.i, align 1
  %29 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %masks, align 8
  %GRPH_X_START8.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %GRPH_X_START8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %GRPH_X_START8.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %28, i32 noundef %32, i32 noundef %hw_rect.sroa.0.0.i) #5
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %GRPH_Y_START.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %GRPH_Y_START.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %GRPH_Y_START.i, align 4
  %39 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shifts, align 4
  %GRPH_Y_START14.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %GRPH_Y_START14.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %GRPH_Y_START14.i, align 1
  %43 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %masks, align 8
  %GRPH_Y_START16.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %GRPH_Y_START16.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %GRPH_Y_START16.i, align 4
  %call18.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %34, i32 noundef %38, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %42, i32 noundef %46, i32 noundef %hw_rect.sroa.6.0.i) #5
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %GRPH_X_END.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %GRPH_X_END.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %GRPH_X_END.i, align 4
  %53 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shifts, align 4
  %GRPH_X_END23.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %GRPH_X_END23.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %GRPH_X_END23.i, align 1
  %57 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %masks, align 8
  %GRPH_X_END25.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %GRPH_X_END25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %GRPH_X_END25.i, align 4
  %call27.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %48, i32 noundef %52, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %56, i32 noundef %60, i32 noundef %hw_rect.sroa.9.0.i) #5
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 8
  %GRPH_Y_END.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %GRPH_Y_END.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %GRPH_Y_END.i, align 4
  %67 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %shifts, align 4
  %GRPH_Y_END32.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %GRPH_Y_END32.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %GRPH_Y_END32.i, align 1
  %71 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %masks, align 8
  %GRPH_Y_END34.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %GRPH_Y_END34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %GRPH_Y_END34.i, align 4
  %call36.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %62, i32 noundef %66, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %70, i32 noundef %74, i32 noundef %hw_rect.sroa.12.0.i) #5
  %75 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx, align 4
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 8
  %GRPH_PITCH.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %GRPH_PITCH.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %GRPH_PITCH.i, align 4
  %81 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %shifts, align 4
  %GRPH_PITCH41.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %GRPH_PITCH41.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %GRPH_PITCH41.i, align 1
  %85 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %masks, align 8
  %GRPH_PITCH43.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %GRPH_PITCH43.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %GRPH_PITCH43.i, align 4
  %89 = ptrtoint ptr %plane_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %plane_size, align 4
  %call44.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %76, i32 noundef %80, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %84, i32 noundef %88, i32 noundef %90) #5
  %91 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctx, align 4
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 8
  %HW_ROTATION.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %HW_ROTATION.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %HW_ROTATION.i, align 4
  %97 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %shifts, align 4
  %GRPH_ROTATION_ANGLE.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %GRPH_ROTATION_ANGLE.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %GRPH_ROTATION_ANGLE.i, align 1
  %101 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %masks, align 8
  %GRPH_ROTATION_ANGLE50.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %GRPH_ROTATION_ANGLE50.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %GRPH_ROTATION_ANGLE50.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__const.program_size_and_rotation.rotation_angles, i32 0, i32 %rotation
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 4
  %call51.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %92, i32 noundef %96, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %100, i32 noundef %104, i32 noundef %106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %format)
  %cmp3 = icmp ult i32 %format, 18
  br i1 %cmp3, label %if.then, label %program_size_and_rotation.exit.if.end_crit_edge

program_size_and_rotation.exit.if.end_crit_edge:  ; preds = %program_size_and_rotation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %program_size_and_rotation.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @program_grph_pixel_format(ptr noundef %mi, i32 noundef %format)
  br label %if.end

if.end:                                           ; preds = %if.then, %program_size_and_rotation.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_mi_is_flip_pending(ptr nocapture noundef %mem_input) #1 align 64 {
entry:
  %update_pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %update_pending) #5
  %0 = ptrtoint ptr %update_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %update_pending, align 4, !annotation !38
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %GRPH_UPDATE = getelementptr inbounds %struct.dce_mem_input_registers, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %GRPH_UPDATE to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %GRPH_UPDATE, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 2
  %7 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shifts, align 4
  %GRPH_SURFACE_UPDATE_PENDING = getelementptr inbounds %struct.dce_mem_input_shift, ptr %8, i32 0, i32 39
  %9 = ptrtoint ptr %GRPH_SURFACE_UPDATE_PENDING to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %GRPH_SURFACE_UPDATE_PENDING, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mem_input, i32 0, i32 3
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 8
  %GRPH_SURFACE_UPDATE_PENDING1 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %GRPH_SURFACE_UPDATE_PENDING1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %GRPH_SURFACE_UPDATE_PENDING1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %update_pending) #5
  %15 = ptrtoint ptr %update_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %update_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 3
  %request_address = getelementptr inbounds %struct.mem_input, ptr %mem_input, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %current_address, ptr %request_address, i32 120)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %18 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %update_pending) #5
  ret i1 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_nbp_watermark(ptr nocapture noundef readonly %dce_mi, i32 noundef %wm_select, i32 noundef %nbp_wm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %DPG_WATERMARK_MASK_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %8 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shifts, align 4
  %NB_PSTATE_CHANGE_WATERMARK_MASK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %12 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %masks, align 8
  %NB_PSTATE_CHANGE_WATERMARK_MASK2 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK2, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %7, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %wm_select) #5
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL6 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL6, align 4
  %22 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shifts, align 4
  %NB_PSTATE_CHANGE_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %23, i32 0, i32 51
  %24 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %NB_PSTATE_CHANGE_ENABLE, align 1
  %26 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %masks, align 8
  %NB_PSTATE_CHANGE_ENABLE9 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %27, i32 0, i32 51
  %28 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %NB_PSTATE_CHANGE_ENABLE9, align 4
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST = getelementptr inbounds %struct.dce_mem_input_shift, ptr %23, i32 0, i32 52
  %30 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST, align 1
  %conv = zext i8 %31 to i32
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST12 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %27, i32 0, i32 52
  %32 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST12, align 4
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST = getelementptr inbounds %struct.dce_mem_input_shift, ptr %23, i32 0, i32 53
  %34 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 1
  %conv14 = zext i8 %35 to i32
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST16 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %27, i32 0, i32 53
  %36 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST16, align 4
  %call17 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %17, i32 noundef %21, i32 noundef 3, i8 noundef zeroext %25, i32 noundef %29, i32 noundef 1, i32 noundef %conv, i32 noundef %33, i32 noundef 1, i32 noundef %conv14, i32 noundef %37, i32 noundef 1) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL21 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %41, i32 0, i32 24
  %42 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL21, align 4
  %44 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts, align 4
  %NB_PSTATE_CHANGE_WATERMARK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 54
  %46 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK, align 1
  %48 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks, align 8
  %NB_PSTATE_CHANGE_WATERMARK24 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 54
  %50 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK24, align 4
  %call25 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %47, i32 noundef %51, i32 noundef %nbp_wm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %DPG_PIPE_LOW_POWER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %DPG_PIPE_LOW_POWER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %DPG_PIPE_LOW_POWER_CONTROL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool27.not = icmp eq i32 %55, 0
  br i1 %tobool27.not, label %if.end.if.end61_crit_edge, label %if.then28

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx30 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %56 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx30, align 4
  %DPG_WATERMARK_MASK_CONTROL32 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %53, i32 0, i32 21
  %58 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL32, align 4
  %shifts33 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %60 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shifts33, align 4
  %PSTATE_CHANGE_WATERMARK_MASK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %PSTATE_CHANGE_WATERMARK_MASK to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %PSTATE_CHANGE_WATERMARK_MASK, align 1
  %masks34 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %64 = ptrtoint ptr %masks34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %masks34, align 8
  %PSTATE_CHANGE_WATERMARK_MASK35 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %PSTATE_CHANGE_WATERMARK_MASK35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %PSTATE_CHANGE_WATERMARK_MASK35, align 4
  %call36 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %59, i32 noundef 1, i8 noundef zeroext %63, i32 noundef %67, i32 noundef %wm_select) #5
  %68 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx30, align 4
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 8
  %DPG_PIPE_LOW_POWER_CONTROL40 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %71, i32 0, i32 25
  %72 = ptrtoint ptr %DPG_PIPE_LOW_POWER_CONTROL40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %DPG_PIPE_LOW_POWER_CONTROL40, align 4
  %74 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shifts33, align 4
  %PSTATE_CHANGE_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %75, i32 0, i32 55
  %76 = ptrtoint ptr %PSTATE_CHANGE_ENABLE to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %PSTATE_CHANGE_ENABLE, align 1
  %78 = ptrtoint ptr %masks34 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %masks34, align 8
  %PSTATE_CHANGE_ENABLE43 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %79, i32 0, i32 55
  %80 = ptrtoint ptr %PSTATE_CHANGE_ENABLE43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %PSTATE_CHANGE_ENABLE43, align 4
  %PSTATE_CHANGE_URGENT_DURING_REQUEST = getelementptr inbounds %struct.dce_mem_input_shift, ptr %75, i32 0, i32 56
  %82 = ptrtoint ptr %PSTATE_CHANGE_URGENT_DURING_REQUEST to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %PSTATE_CHANGE_URGENT_DURING_REQUEST, align 1
  %conv45 = zext i8 %83 to i32
  %PSTATE_CHANGE_URGENT_DURING_REQUEST47 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %79, i32 0, i32 56
  %84 = ptrtoint ptr %PSTATE_CHANGE_URGENT_DURING_REQUEST47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %PSTATE_CHANGE_URGENT_DURING_REQUEST47, align 4
  %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST = getelementptr inbounds %struct.dce_mem_input_shift, ptr %75, i32 0, i32 57
  %86 = ptrtoint ptr %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 1
  %conv49 = zext i8 %87 to i32
  %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST51 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %79, i32 0, i32 57
  %88 = ptrtoint ptr %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST51, align 4
  %call52 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %69, i32 noundef %73, i32 noundef 3, i8 noundef zeroext %77, i32 noundef %81, i32 noundef 1, i32 noundef %conv45, i32 noundef %85, i32 noundef 1, i32 noundef %conv49, i32 noundef %89, i32 noundef 1) #5
  %90 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx30, align 4
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 8
  %DPG_PIPE_LOW_POWER_CONTROL56 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %93, i32 0, i32 25
  %94 = ptrtoint ptr %DPG_PIPE_LOW_POWER_CONTROL56 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DPG_PIPE_LOW_POWER_CONTROL56, align 4
  %96 = ptrtoint ptr %shifts33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %shifts33, align 4
  %PSTATE_CHANGE_WATERMARK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %97, i32 0, i32 58
  %98 = ptrtoint ptr %PSTATE_CHANGE_WATERMARK to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %PSTATE_CHANGE_WATERMARK, align 1
  %100 = ptrtoint ptr %masks34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %masks34, align 8
  %PSTATE_CHANGE_WATERMARK59 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %101, i32 0, i32 58
  %102 = ptrtoint ptr %PSTATE_CHANGE_WATERMARK59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %PSTATE_CHANGE_WATERMARK59, align 4
  %call60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 1, i8 noundef zeroext %99, i32 noundef %103, i32 noundef %nbp_wm) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then28, %if.end.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_tiling(ptr nocapture noundef readonly %dce_mi, ptr nocapture noundef readonly %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %0 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks, align 8
  %GRPH_SW_MODE = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %GRPH_SW_MODE to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %GRPH_SW_MODE, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %GRPH_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %GRPH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %GRPH_CONTROL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %10 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shifts, align 4
  %GRPH_SW_MODE1 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %GRPH_SW_MODE1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %GRPH_SW_MODE1, align 1
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %GRPH_NUM_BANKS = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %GRPH_NUM_BANKS to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %GRPH_NUM_BANKS, align 1
  %conv = zext i8 %17 to i32
  %GRPH_NUM_BANKS6 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %GRPH_NUM_BANKS6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %GRPH_NUM_BANKS6, align 4
  %num_banks = getelementptr inbounds %struct.anon.6, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #5, !range !39
  %sub.i.op.i.i = xor i32 %22, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %GRPH_NUM_SHADER_ENGINES = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 32
  %23 = ptrtoint ptr %GRPH_NUM_SHADER_ENGINES to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %GRPH_NUM_SHADER_ENGINES, align 1
  %conv8 = zext i8 %24 to i32
  %GRPH_NUM_SHADER_ENGINES10 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %GRPH_NUM_SHADER_ENGINES10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %GRPH_NUM_SHADER_ENGINES10, align 4
  %num_shader_engines = getelementptr inbounds %struct.anon.6, ptr %info, i32 0, i32 5
  %27 = ptrtoint ptr %num_shader_engines to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_shader_engines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i211 = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true) #5, !range !39
  %sub.i.op.i.i212 = xor i32 %29, 31
  %sub.i.i213 = select i1 %tobool.not.i.i.i211, i32 -1, i32 %sub.i.op.i.i212
  %GRPH_NUM_PIPES = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 33
  %30 = ptrtoint ptr %GRPH_NUM_PIPES to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %GRPH_NUM_PIPES, align 1
  %conv13 = zext i8 %31 to i32
  %GRPH_NUM_PIPES15 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 33
  %32 = ptrtoint ptr %GRPH_NUM_PIPES15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %GRPH_NUM_PIPES15, align 4
  %num_pipes = getelementptr inbounds %struct.anon.6, ptr %info, i32 0, i32 1
  %34 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_pipes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i221 = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 true) #5, !range !39
  %sub.i.op.i.i222 = xor i32 %36, 31
  %sub.i.i223 = select i1 %tobool.not.i.i.i221, i32 -1, i32 %sub.i.op.i.i222
  %GRPH_COLOR_EXPANSION_MODE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 29
  %37 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %GRPH_COLOR_EXPANSION_MODE, align 1
  %conv18 = zext i8 %38 to i32
  %GRPH_COLOR_EXPANSION_MODE20 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 29
  %39 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %GRPH_COLOR_EXPANSION_MODE20, align 4
  %GRPH_SE_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %11, i32 0, i32 31
  %41 = ptrtoint ptr %GRPH_SE_ENABLE to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %GRPH_SE_ENABLE, align 1
  %conv22 = zext i8 %42 to i32
  %GRPH_SE_ENABLE24 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %1, i32 0, i32 31
  %43 = ptrtoint ptr %GRPH_SE_ENABLE24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %GRPH_SE_ENABLE24, align 4
  %shaderEnable = getelementptr inbounds %struct.anon.6, ptr %info, i32 0, i32 7
  %45 = ptrtoint ptr %shaderEnable to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %shaderEnable, align 4, !range !36
  %47 = zext i8 %46 to i32
  %call27 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 6, i8 noundef zeroext %13, i32 noundef %3, i32 noundef %15, i32 noundef %conv, i32 noundef %19, i32 noundef %sub.i.i, i32 noundef %conv8, i32 noundef %26, i32 noundef %sub.i.i213, i32 noundef %conv13, i32 noundef %33, i32 noundef %sub.i.i223, i32 noundef %conv18, i32 noundef %40, i32 noundef 1, i32 noundef %conv22, i32 noundef %44, i32 noundef %47) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %48 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks, align 8
  %GRPH_MICRO_TILE_MODE = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 26
  %50 = ptrtoint ptr %GRPH_MICRO_TILE_MODE to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %GRPH_MICRO_TILE_MODE, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool29.not = icmp eq i32 %51, 0
  br i1 %tobool29.not, label %if.end.if.end75_crit_edge, label %if.then30

if.end.if.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx32 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %52 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx32, align 4
  %regs33 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %54 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs33, align 8
  %GRPH_CONTROL34 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %GRPH_CONTROL34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %GRPH_CONTROL34, align 4
  %shifts35 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %58 = ptrtoint ptr %shifts35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shifts35, align 4
  %GRPH_NUM_BANKS36 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %GRPH_NUM_BANKS36 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %GRPH_NUM_BANKS36, align 1
  %GRPH_NUM_BANKS38 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 21
  %62 = ptrtoint ptr %GRPH_NUM_BANKS38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %GRPH_NUM_BANKS38, align 4
  %64 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %info, align 4
  %GRPH_BANK_WIDTH = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 22
  %66 = ptrtoint ptr %GRPH_BANK_WIDTH to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %GRPH_BANK_WIDTH, align 1
  %conv41 = zext i8 %67 to i32
  %GRPH_BANK_WIDTH43 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 22
  %68 = ptrtoint ptr %GRPH_BANK_WIDTH43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %GRPH_BANK_WIDTH43, align 4
  %bank_width = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 1
  %70 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bank_width, align 4
  %GRPH_BANK_HEIGHT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 23
  %72 = ptrtoint ptr %GRPH_BANK_HEIGHT to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %GRPH_BANK_HEIGHT, align 1
  %conv45 = zext i8 %73 to i32
  %GRPH_BANK_HEIGHT47 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 23
  %74 = ptrtoint ptr %GRPH_BANK_HEIGHT47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %GRPH_BANK_HEIGHT47, align 4
  %bank_height = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 3
  %76 = ptrtoint ptr %bank_height to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bank_height, align 4
  %GRPH_MACRO_TILE_ASPECT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 24
  %78 = ptrtoint ptr %GRPH_MACRO_TILE_ASPECT to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %GRPH_MACRO_TILE_ASPECT, align 1
  %conv49 = zext i8 %79 to i32
  %GRPH_MACRO_TILE_ASPECT51 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 24
  %80 = ptrtoint ptr %GRPH_MACRO_TILE_ASPECT51 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %GRPH_MACRO_TILE_ASPECT51, align 4
  %tile_aspect = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 5
  %82 = ptrtoint ptr %tile_aspect to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tile_aspect, align 4
  %GRPH_TILE_SPLIT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 25
  %84 = ptrtoint ptr %GRPH_TILE_SPLIT to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %GRPH_TILE_SPLIT, align 1
  %conv53 = zext i8 %85 to i32
  %GRPH_TILE_SPLIT55 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 25
  %86 = ptrtoint ptr %GRPH_TILE_SPLIT55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %GRPH_TILE_SPLIT55, align 4
  %tile_split = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 7
  %88 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tile_split, align 4
  %GRPH_MICRO_TILE_MODE57 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 26
  %90 = ptrtoint ptr %GRPH_MICRO_TILE_MODE57 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %GRPH_MICRO_TILE_MODE57, align 1
  %conv58 = zext i8 %91 to i32
  %tile_mode = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 9
  %92 = ptrtoint ptr %tile_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tile_mode, align 4
  %GRPH_PIPE_CONFIG = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 27
  %94 = ptrtoint ptr %GRPH_PIPE_CONFIG to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %GRPH_PIPE_CONFIG, align 1
  %conv62 = zext i8 %95 to i32
  %GRPH_PIPE_CONFIG64 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 27
  %96 = ptrtoint ptr %GRPH_PIPE_CONFIG64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %GRPH_PIPE_CONFIG64, align 4
  %pipe_config = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 11
  %98 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pipe_config, align 4
  %GRPH_ARRAY_MODE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 28
  %100 = ptrtoint ptr %GRPH_ARRAY_MODE to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %GRPH_ARRAY_MODE, align 1
  %conv66 = zext i8 %101 to i32
  %GRPH_ARRAY_MODE68 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 28
  %102 = ptrtoint ptr %GRPH_ARRAY_MODE68 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %GRPH_ARRAY_MODE68, align 4
  %array_mode = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 12
  %104 = ptrtoint ptr %array_mode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %array_mode, align 4
  %GRPH_COLOR_EXPANSION_MODE70 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 29
  %106 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE70 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %GRPH_COLOR_EXPANSION_MODE70, align 1
  %conv71 = zext i8 %107 to i32
  %GRPH_COLOR_EXPANSION_MODE73 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 29
  %108 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %GRPH_COLOR_EXPANSION_MODE73, align 4
  %call74 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %53, i32 noundef %57, i32 noundef 9, i8 noundef zeroext %61, i32 noundef %63, i32 noundef %65, i32 noundef %conv41, i32 noundef %69, i32 noundef %71, i32 noundef %conv45, i32 noundef %75, i32 noundef %77, i32 noundef %conv49, i32 noundef %81, i32 noundef %83, i32 noundef %conv53, i32 noundef %87, i32 noundef %89, i32 noundef %conv58, i32 noundef %51, i32 noundef %93, i32 noundef %conv62, i32 noundef %97, i32 noundef %99, i32 noundef %conv66, i32 noundef %103, i32 noundef %105, i32 noundef %conv71, i32 noundef %109, i32 noundef 1) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then30, %if.end.if.end75_crit_edge
  %110 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %masks, align 8
  %GRPH_ARRAY_MODE77 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 28
  %112 = ptrtoint ptr %GRPH_ARRAY_MODE77 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %GRPH_ARRAY_MODE77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool78.not = icmp eq i32 %113, 0
  br i1 %tobool78.not, label %if.end75.if.end131_crit_edge, label %if.then79

if.end75.if.end131_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %ctx81 = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %114 = ptrtoint ptr %ctx81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx81, align 4
  %regs82 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %116 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs82, align 8
  %GRPH_CONTROL83 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %GRPH_CONTROL83 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %GRPH_CONTROL83, align 4
  %shifts84 = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %120 = ptrtoint ptr %shifts84 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shifts84, align 4
  %GRPH_NUM_BANKS85 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 21
  %122 = ptrtoint ptr %GRPH_NUM_BANKS85 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %GRPH_NUM_BANKS85, align 1
  %GRPH_NUM_BANKS87 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 21
  %124 = ptrtoint ptr %GRPH_NUM_BANKS87 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %GRPH_NUM_BANKS87, align 4
  %126 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %info, align 4
  %GRPH_BANK_WIDTH90 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 22
  %128 = ptrtoint ptr %GRPH_BANK_WIDTH90 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %GRPH_BANK_WIDTH90, align 1
  %conv91 = zext i8 %129 to i32
  %GRPH_BANK_WIDTH93 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 22
  %130 = ptrtoint ptr %GRPH_BANK_WIDTH93 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %GRPH_BANK_WIDTH93, align 4
  %bank_width94 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 1
  %132 = ptrtoint ptr %bank_width94 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bank_width94, align 4
  %GRPH_BANK_HEIGHT96 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 23
  %134 = ptrtoint ptr %GRPH_BANK_HEIGHT96 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %GRPH_BANK_HEIGHT96, align 1
  %conv97 = zext i8 %135 to i32
  %GRPH_BANK_HEIGHT99 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 23
  %136 = ptrtoint ptr %GRPH_BANK_HEIGHT99 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %GRPH_BANK_HEIGHT99, align 4
  %bank_height100 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 3
  %138 = ptrtoint ptr %bank_height100 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bank_height100, align 4
  %GRPH_MACRO_TILE_ASPECT102 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 24
  %140 = ptrtoint ptr %GRPH_MACRO_TILE_ASPECT102 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %GRPH_MACRO_TILE_ASPECT102, align 1
  %conv103 = zext i8 %141 to i32
  %GRPH_MACRO_TILE_ASPECT105 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 24
  %142 = ptrtoint ptr %GRPH_MACRO_TILE_ASPECT105 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %GRPH_MACRO_TILE_ASPECT105, align 4
  %tile_aspect106 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 5
  %144 = ptrtoint ptr %tile_aspect106 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tile_aspect106, align 4
  %GRPH_TILE_SPLIT108 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 25
  %146 = ptrtoint ptr %GRPH_TILE_SPLIT108 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %GRPH_TILE_SPLIT108, align 1
  %conv109 = zext i8 %147 to i32
  %GRPH_TILE_SPLIT111 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 25
  %148 = ptrtoint ptr %GRPH_TILE_SPLIT111 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %GRPH_TILE_SPLIT111, align 4
  %tile_split112 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 7
  %150 = ptrtoint ptr %tile_split112 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tile_split112, align 4
  %GRPH_PIPE_CONFIG114 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 27
  %152 = ptrtoint ptr %GRPH_PIPE_CONFIG114 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %GRPH_PIPE_CONFIG114, align 1
  %conv115 = zext i8 %153 to i32
  %GRPH_PIPE_CONFIG117 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 27
  %154 = ptrtoint ptr %GRPH_PIPE_CONFIG117 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %GRPH_PIPE_CONFIG117, align 4
  %pipe_config118 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 11
  %156 = ptrtoint ptr %pipe_config118 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pipe_config118, align 4
  %GRPH_ARRAY_MODE120 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 28
  %158 = ptrtoint ptr %GRPH_ARRAY_MODE120 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %GRPH_ARRAY_MODE120, align 1
  %conv121 = zext i8 %159 to i32
  %array_mode124 = getelementptr inbounds %struct.anon.5, ptr %info, i32 0, i32 12
  %160 = ptrtoint ptr %array_mode124 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %array_mode124, align 4
  %GRPH_COLOR_EXPANSION_MODE126 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %121, i32 0, i32 29
  %162 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE126 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %GRPH_COLOR_EXPANSION_MODE126, align 1
  %conv127 = zext i8 %163 to i32
  %GRPH_COLOR_EXPANSION_MODE129 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %111, i32 0, i32 29
  %164 = ptrtoint ptr %GRPH_COLOR_EXPANSION_MODE129 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %GRPH_COLOR_EXPANSION_MODE129, align 4
  %call130 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %115, i32 noundef %119, i32 noundef 8, i8 noundef zeroext %123, i32 noundef %125, i32 noundef %127, i32 noundef %conv91, i32 noundef %131, i32 noundef %133, i32 noundef %conv97, i32 noundef %137, i32 noundef %139, i32 noundef %conv103, i32 noundef %143, i32 noundef %145, i32 noundef %conv109, i32 noundef %149, i32 noundef %151, i32 noundef %conv115, i32 noundef %155, i32 noundef %157, i32 noundef %conv121, i32 noundef %113, i32 noundef %161, i32 noundef %conv127, i32 noundef %165, i32 noundef 1) #5
  br label %if.end131

if.end131:                                        ; preds = %if.then79, %if.end75.if.end131_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_grph_pixel_format(ptr nocapture noundef readonly %dce_mi, i32 noundef %format) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %format, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.program_grph_pixel_format, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %blue_xbar.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %ctx = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %GRPH_SWAP_CNTL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %GRPH_SWAP_CNTL to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %GRPH_SWAP_CNTL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %8 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shifts, align 4
  %GRPH_RED_CROSSBAR = getelementptr inbounds %struct.dce_mem_input_shift, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %GRPH_RED_CROSSBAR to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GRPH_RED_CROSSBAR, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %12 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %masks, align 8
  %GRPH_RED_CROSSBAR8 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %GRPH_RED_CROSSBAR8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %GRPH_RED_CROSSBAR8, align 4
  %GRPH_BLUE_CROSSBAR = getelementptr inbounds %struct.dce_mem_input_shift, ptr %9, i32 0, i32 8
  %16 = ptrtoint ptr %GRPH_BLUE_CROSSBAR to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %GRPH_BLUE_CROSSBAR, align 1
  %conv = zext i8 %17 to i32
  %GRPH_BLUE_CROSSBAR11 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %GRPH_BLUE_CROSSBAR11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %GRPH_BLUE_CROSSBAR11, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %blue_xbar.0, i32 noundef %conv, i32 noundef %19, i32 noundef %blue_xbar.0) #5
  %20 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %format, label %do.body [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
    i32 3, label %if.end.sw.bb14_crit_edge
    i32 4, label %if.end.sw.bb14_crit_edge79
    i32 5, label %if.end.sw.bb15_crit_edge
    i32 6, label %if.end.sw.bb15_crit_edge80
    i32 7, label %if.end.sw.bb15_crit_edge81
    i32 11, label %sw.bb16
    i32 10, label %if.end.sw.bb17_crit_edge
    i32 8, label %if.end.sw.bb17_crit_edge82
    i32 9, label %if.end.sw.bb17_crit_edge83
  ]

if.end.sw.bb17_crit_edge83:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

if.end.sw.bb17_crit_edge82:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

if.end.sw.bb15_crit_edge81:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb15_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb14_crit_edge79:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge79
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge80, %if.end.sw.bb15_crit_edge81
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb16, %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge82, %if.end.sw.bb17_crit_edge83
  %floating.0 = phi i32 [ 0, %if.end.sw.bb17_crit_edge ], [ 0, %if.end.sw.bb17_crit_edge82 ], [ 0, %if.end.sw.bb17_crit_edge83 ], [ 1, %sw.bb16 ]
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.program_grph_pixel_format, i32 noundef 615) #5
  tail call void @kgdb_breakpoint() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb17, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %if.end.sw.epilog_crit_edge
  %grph_depth.0 = phi i32 [ 0, %do.body ], [ 3, %sw.bb17 ], [ 2, %sw.bb15 ], [ 2, %sw.bb14 ], [ 1, %sw.bb13 ], [ 1, %sw.bb12 ], [ %format, %if.end.sw.epilog_crit_edge ]
  %grph_format.0 = phi i32 [ 0, %do.body ], [ 0, %sw.bb17 ], [ 1, %sw.bb15 ], [ 0, %sw.bb14 ], [ 1, %sw.bb13 ], [ 0, %sw.bb12 ], [ %format, %if.end.sw.epilog_crit_edge ]
  %floating.1 = phi i32 [ 0, %do.body ], [ %floating.0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ %format, %if.end.sw.epilog_crit_edge ]
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %GRPH_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %GRPH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %GRPH_CONTROL, align 4
  %27 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shifts, align 4
  %GRPH_DEPTH = getelementptr inbounds %struct.dce_mem_input_shift, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %GRPH_DEPTH to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %GRPH_DEPTH, align 1
  %31 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %masks, align 8
  %GRPH_DEPTH26 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %GRPH_DEPTH26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %GRPH_DEPTH26, align 4
  %GRPH_FORMAT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %28, i32 0, i32 20
  %35 = ptrtoint ptr %GRPH_FORMAT to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %GRPH_FORMAT, align 1
  %conv28 = zext i8 %36 to i32
  %GRPH_FORMAT30 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %32, i32 0, i32 20
  %37 = ptrtoint ptr %GRPH_FORMAT30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %GRPH_FORMAT30, align 4
  %call31 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %22, i32 noundef %26, i32 noundef 2, i8 noundef zeroext %30, i32 noundef %34, i32 noundef %grph_depth.0, i32 noundef %conv28, i32 noundef %38, i32 noundef %grph_format.0) #5
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %PRESCALE_GRPH_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %PRESCALE_GRPH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %PRESCALE_GRPH_CONTROL, align 4
  %45 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shifts, align 4
  %GRPH_PRESCALE_SELECT = getelementptr inbounds %struct.dce_mem_input_shift, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %GRPH_PRESCALE_SELECT to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %GRPH_PRESCALE_SELECT, align 1
  %49 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %masks, align 8
  %GRPH_PRESCALE_SELECT37 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %GRPH_PRESCALE_SELECT37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %GRPH_PRESCALE_SELECT37, align 4
  %GRPH_PRESCALE_R_SIGN = getelementptr inbounds %struct.dce_mem_input_shift, ptr %46, i32 0, i32 10
  %53 = ptrtoint ptr %GRPH_PRESCALE_R_SIGN to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %GRPH_PRESCALE_R_SIGN, align 1
  %conv39 = zext i8 %54 to i32
  %GRPH_PRESCALE_R_SIGN41 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %50, i32 0, i32 10
  %55 = ptrtoint ptr %GRPH_PRESCALE_R_SIGN41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %GRPH_PRESCALE_R_SIGN41, align 4
  %GRPH_PRESCALE_G_SIGN = getelementptr inbounds %struct.dce_mem_input_shift, ptr %46, i32 0, i32 11
  %57 = ptrtoint ptr %GRPH_PRESCALE_G_SIGN to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %GRPH_PRESCALE_G_SIGN, align 1
  %conv43 = zext i8 %58 to i32
  %GRPH_PRESCALE_G_SIGN45 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %50, i32 0, i32 11
  %59 = ptrtoint ptr %GRPH_PRESCALE_G_SIGN45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %GRPH_PRESCALE_G_SIGN45, align 4
  %GRPH_PRESCALE_B_SIGN = getelementptr inbounds %struct.dce_mem_input_shift, ptr %46, i32 0, i32 12
  %61 = ptrtoint ptr %GRPH_PRESCALE_B_SIGN to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %GRPH_PRESCALE_B_SIGN, align 1
  %conv47 = zext i8 %62 to i32
  %GRPH_PRESCALE_B_SIGN49 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %50, i32 0, i32 12
  %63 = ptrtoint ptr %GRPH_PRESCALE_B_SIGN49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %GRPH_PRESCALE_B_SIGN49, align 4
  %call50 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %40, i32 noundef %44, i32 noundef 4, i8 noundef zeroext %48, i32 noundef %52, i32 noundef %floating.1, i32 noundef %conv39, i32 noundef %56, i32 noundef %floating.1, i32 noundef %conv43, i32 noundef %60, i32 noundef %floating.1, i32 noundef %conv47, i32 noundef %64, i32 noundef %floating.1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_mi_program_display_marks(ptr noundef readonly %mi, [4 x i32] %nbp.coerce, [4 x i32] %stutter_exit.coerce, [4 x i32] %stutter_enter.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nbp.coerce.fca.0.extract = extractvalue [4 x i32] %nbp.coerce, 0
  %nbp.coerce.fca.3.extract = extractvalue [4 x i32] %nbp.coerce, 3
  %stutter_exit.coerce.fca.0.extract = extractvalue [4 x i32] %stutter_exit.coerce, 0
  %stutter_exit.coerce.fca.3.extract = extractvalue [4 x i32] %stutter_exit.coerce, 3
  %urgent.coerce.fca.0.extract = extractvalue [4 x i32] %urgent.coerce, 0
  %urgent.coerce.fca.3.extract = extractvalue [4 x i32] %urgent.coerce, 3
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disable_stutter = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %disable_stutter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_stutter, align 8, !range !36
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %regs.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_ARBITRATION_CONTROL3.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %DPG_PIPE_ARBITRATION_CONTROL3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DPG_PIPE_ARBITRATION_CONTROL3.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %12 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %13, i32 0, i32 43
  %14 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %URGENCY_WATERMARK_MASK.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %16 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %17, i32 0, i32 43
  %18 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %URGENCY_WATERMARK_MASK1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef 2) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %URGENCY_LOW_WATERMARK.i, align 1
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %URGENCY_LOW_WATERMARK7.i, align 4
  %URGENCY_HIGH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 48
  %34 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %URGENCY_HIGH_WATERMARK.i, align 1
  %conv.i = zext i8 %35 to i32
  %URGENCY_HIGH_WATERMARK10.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 48
  %36 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i, align 4
  %call11.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %urgent.coerce.fca.0.extract, i32 noundef %conv.i, i32 noundef %37, i32 noundef %total_dest_line_time_ns) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_ARBITRATION_CONTROL3.i25 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %41, i32 0, i32 20
  %42 = ptrtoint ptr %DPG_PIPE_ARBITRATION_CONTROL3.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DPG_PIPE_ARBITRATION_CONTROL3.i25, align 4
  %44 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i27 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i27 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %URGENCY_WATERMARK_MASK.i27, align 1
  %48 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i29 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 43
  %50 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %URGENCY_WATERMARK_MASK1.i29, align 4
  %call.i30 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %47, i32 noundef %51, i32 noundef 1) #5
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i31 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i31, align 4
  %58 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i32 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i32 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %URGENCY_LOW_WATERMARK.i32, align 1
  %62 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i33 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 47
  %64 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %URGENCY_LOW_WATERMARK7.i33, align 4
  %URGENCY_HIGH_WATERMARK.i34 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 48
  %66 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i34 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %URGENCY_HIGH_WATERMARK.i34, align 1
  %conv.i35 = zext i8 %67 to i32
  %URGENCY_HIGH_WATERMARK10.i36 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 48
  %68 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i36, align 4
  %call11.i37 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %61, i32 noundef %65, i32 noundef %urgent.coerce.fca.3.extract, i32 noundef %conv.i35, i32 noundef %69, i32 noundef %total_dest_line_time_ns) #5
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL, align 4
  %76 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts.i, align 4
  %STUTTER_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 59
  %78 = ptrtoint ptr %STUTTER_ENABLE to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %STUTTER_ENABLE, align 1
  %80 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks.i, align 8
  %STUTTER_ENABLE2 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 59
  %82 = ptrtoint ptr %STUTTER_ENABLE2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %STUTTER_ENABLE2, align 4
  %STUTTER_IGNORE_FBC = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 60
  %84 = ptrtoint ptr %STUTTER_IGNORE_FBC to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %STUTTER_IGNORE_FBC, align 1
  %conv = zext i8 %85 to i32
  %STUTTER_IGNORE_FBC5 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 60
  %86 = ptrtoint ptr %STUTTER_IGNORE_FBC5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %STUTTER_IGNORE_FBC5, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 2, i8 noundef zeroext %79, i32 noundef %83, i32 noundef %7, i32 noundef %conv, i32 noundef %87, i32 noundef 1) #5
  %88 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx, align 4
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %91, i32 0, i32 24
  %92 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i, align 4
  %94 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %95, i32 0, i32 45
  %96 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK.i, align 1
  %98 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %99, i32 0, i32 45
  %100 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK1.i, align 4
  %call.i42 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 1, i8 noundef zeroext %97, i32 noundef %101, i32 noundef 2) #5
  %102 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx, align 4
  %104 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %105, i32 0, i32 24
  %106 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i, align 4
  %108 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_ENABLE.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %109, i32 0, i32 51
  %110 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %NB_PSTATE_CHANGE_ENABLE.i, align 1
  %112 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_ENABLE8.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %113, i32 0, i32 51
  %114 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE8.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %NB_PSTATE_CHANGE_ENABLE8.i, align 4
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %109, i32 0, i32 52
  %116 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i, align 1
  %conv.i43 = zext i8 %117 to i32
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %113, i32 0, i32 52
  %118 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i, align 4
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %109, i32 0, i32 53
  %120 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i, align 1
  %conv13.i = zext i8 %121 to i32
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %113, i32 0, i32 53
  %122 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i, align 4
  %call16.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %103, i32 noundef %107, i32 noundef 3, i8 noundef zeroext %111, i32 noundef %115, i32 noundef 1, i32 noundef %conv.i43, i32 noundef %119, i32 noundef 1, i32 noundef %conv13.i, i32 noundef %123, i32 noundef 1) #5
  %124 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ctx, align 4
  %126 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %127, i32 0, i32 24
  %128 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i, align 4
  %130 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %131, i32 0, i32 54
  %132 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK.i, align 1
  %134 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_WATERMARK23.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %135, i32 0, i32 54
  %136 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK23.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK23.i, align 4
  %call24.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %125, i32 noundef %129, i32 noundef 1, i8 noundef zeroext %133, i32 noundef %137, i32 noundef %nbp.coerce.fca.0.extract) #5
  %138 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx, align 4
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i46 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %141, i32 0, i32 24
  %142 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i46 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL.i46, align 4
  %144 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_WATERMARK_MASK.i48 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %145, i32 0, i32 45
  %146 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK.i48 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK.i48, align 1
  %148 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_WATERMARK_MASK1.i50 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %149, i32 0, i32 45
  %150 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK_MASK1.i50 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK_MASK1.i50, align 4
  %call.i51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %139, i32 noundef %143, i32 noundef 1, i8 noundef zeroext %147, i32 noundef %151, i32 noundef 1) #5
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx, align 4
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i52 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %155, i32 0, i32 24
  %156 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i52 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL5.i52, align 4
  %158 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_ENABLE.i53 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %159, i32 0, i32 51
  %160 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE.i53 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %NB_PSTATE_CHANGE_ENABLE.i53, align 1
  %162 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_ENABLE8.i54 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %163, i32 0, i32 51
  %164 = ptrtoint ptr %NB_PSTATE_CHANGE_ENABLE8.i54 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %NB_PSTATE_CHANGE_ENABLE8.i54, align 4
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i55 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %159, i32 0, i32 52
  %166 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i55 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST.i55, align 1
  %conv.i56 = zext i8 %167 to i32
  %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i57 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %163, i32 0, i32 52
  %168 = ptrtoint ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i57 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %NB_PSTATE_CHANGE_URGENT_DURING_REQUEST11.i57, align 4
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i58 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %159, i32 0, i32 53
  %170 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i58 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST.i58, align 1
  %conv13.i59 = zext i8 %171 to i32
  %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i60 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %163, i32 0, i32 53
  %172 = ptrtoint ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i60 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST15.i60, align 4
  %call16.i61 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %153, i32 noundef %157, i32 noundef 3, i8 noundef zeroext %161, i32 noundef %165, i32 noundef 1, i32 noundef %conv.i56, i32 noundef %169, i32 noundef 1, i32 noundef %conv13.i59, i32 noundef %173, i32 noundef 1) #5
  %174 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ctx, align 4
  %176 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i62 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %177, i32 0, i32 24
  %178 = ptrtoint ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i62 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %DPG_PIPE_NB_PSTATE_CHANGE_CONTROL20.i62, align 4
  %180 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %shifts.i, align 4
  %NB_PSTATE_CHANGE_WATERMARK.i63 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %181, i32 0, i32 54
  %182 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK.i63 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %NB_PSTATE_CHANGE_WATERMARK.i63, align 1
  %184 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %masks.i, align 8
  %NB_PSTATE_CHANGE_WATERMARK23.i64 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %185, i32 0, i32 54
  %186 = ptrtoint ptr %NB_PSTATE_CHANGE_WATERMARK23.i64 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %NB_PSTATE_CHANGE_WATERMARK23.i64, align 4
  %call24.i65 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %175, i32 noundef %179, i32 noundef 1, i8 noundef zeroext %183, i32 noundef %187, i32 noundef %nbp.coerce.fca.3.extract) #5
  %188 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ctx, align 4
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %191, i32 0, i32 26
  %192 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i, align 4
  %194 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %195, i32 0, i32 46
  %196 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i, align 1
  %198 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %199, i32 0, i32 46
  %200 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i, align 4
  %call.i70 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %189, i32 noundef %193, i32 noundef 1, i8 noundef zeroext %197, i32 noundef %201, i32 noundef 2) #5
  %202 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx, align 4
  %204 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL5.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %205, i32 0, i32 26
  %206 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL5.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL5.i, align 4
  %208 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %209, i32 0, i32 61
  %210 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i, align 1
  %212 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %213, i32 0, i32 61
  %214 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i, align 4
  %call9.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %203, i32 noundef %207, i32 noundef 1, i8 noundef zeroext %211, i32 noundef %215, i32 noundef %stutter_exit.coerce.fca.0.extract) #5
  %216 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctx, align 4
  %218 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL.i73 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %219, i32 0, i32 26
  %220 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i73 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i73, align 4
  %222 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i75 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %223, i32 0, i32 46
  %224 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i75 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i75, align 1
  %226 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i77 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %227, i32 0, i32 46
  %228 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i77 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i77, align 4
  %call.i78 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %217, i32 noundef %221, i32 noundef 1, i8 noundef zeroext %225, i32 noundef %229, i32 noundef 1) #5
  %230 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ctx, align 4
  %232 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL5.i79 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %233, i32 0, i32 26
  %234 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL5.i79 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL5.i79, align 4
  %236 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i80 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %237, i32 0, i32 61
  %238 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i80 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK.i80, align 1
  %240 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i81 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %241, i32 0, i32 61
  %242 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i81 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK8.i81, align 4
  %call9.i82 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %231, i32 noundef %235, i32 noundef 1, i8 noundef zeroext %239, i32 noundef %243, i32 noundef %stutter_exit.coerce.fca.3.extract) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_mi_program_surface_config(ptr nocapture noundef readonly %mi, i32 noundef %format, ptr nocapture noundef readonly %tiling_info, ptr nocapture noundef readonly %plane_size, i32 noundef %rotation, ptr nocapture noundef readnone %dcc, i1 noundef zeroext %horizontal_mirror) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  tail call fastcc void @program_tiling(ptr noundef %mi, ptr noundef %tiling_info)
  %surface_size.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2
  %14 = ptrtoint ptr %surface_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %hw_rect.sroa.0.0.copyload.i = load i32, ptr %surface_size.i, align 4
  %hw_rect.sroa.5.0.surface_size.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %hw_rect.sroa.5.0.surface_size.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %hw_rect.sroa.5.0.copyload.i = load i32, ptr %hw_rect.sroa.5.0.surface_size.sroa_idx.i, align 4
  %hw_rect.sroa.7.0.surface_size.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %hw_rect.sroa.7.0.surface_size.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %hw_rect.sroa.7.0.copyload.i = load i32, ptr %hw_rect.sroa.7.0.surface_size.sroa_idx.i, align 4
  %hw_rect.sroa.9.0.surface_size.sroa_idx.i = getelementptr inbounds %struct.plane_size, ptr %plane_size, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %hw_rect.sroa.9.0.surface_size.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %hw_rect.sroa.9.0.copyload.i = load i32, ptr %hw_rect.sroa.9.0.surface_size.sroa_idx.i, align 4
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %GRPH_X_START.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %GRPH_X_START.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %GRPH_X_START.i, align 4
  %24 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shifts, align 4
  %GRPH_X_START1.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %GRPH_X_START1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %GRPH_X_START1.i, align 1
  %28 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %masks, align 8
  %GRPH_X_START2.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %GRPH_X_START2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %GRPH_X_START2.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %19, i32 noundef %23, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %27, i32 noundef %31, i32 noundef %hw_rect.sroa.0.0.copyload.i) #5
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %GRPH_Y_START.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %GRPH_Y_START.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %GRPH_Y_START.i, align 4
  %38 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shifts, align 4
  %GRPH_Y_START7.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %GRPH_Y_START7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %GRPH_Y_START7.i, align 1
  %42 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %masks, align 8
  %GRPH_Y_START9.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %GRPH_Y_START9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %GRPH_Y_START9.i, align 4
  %call10.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %33, i32 noundef %37, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %41, i32 noundef %45, i32 noundef %hw_rect.sroa.5.0.copyload.i) #5
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %GRPH_X_END.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %GRPH_X_END.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %GRPH_X_END.i, align 4
  %52 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %shifts, align 4
  %GRPH_X_END15.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %GRPH_X_END15.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %GRPH_X_END15.i, align 1
  %56 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %masks, align 8
  %GRPH_X_END17.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %GRPH_X_END17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %GRPH_X_END17.i, align 4
  %call18.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %47, i32 noundef %51, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %55, i32 noundef %59, i32 noundef %hw_rect.sroa.7.0.copyload.i) #5
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 4
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 8
  %GRPH_Y_END.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %GRPH_Y_END.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %GRPH_Y_END.i, align 4
  %66 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shifts, align 4
  %GRPH_Y_END23.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %GRPH_Y_END23.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %GRPH_Y_END23.i, align 1
  %70 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %masks, align 8
  %GRPH_Y_END25.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %GRPH_Y_END25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %GRPH_Y_END25.i, align 4
  %call26.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %61, i32 noundef %65, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %69, i32 noundef %73, i32 noundef %hw_rect.sroa.9.0.copyload.i) #5
  %74 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx, align 4
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 8
  %GRPH_PITCH.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %GRPH_PITCH.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %GRPH_PITCH.i, align 4
  %80 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %shifts, align 4
  %GRPH_PITCH31.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %GRPH_PITCH31.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %GRPH_PITCH31.i, align 1
  %84 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %masks, align 8
  %GRPH_PITCH33.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %GRPH_PITCH33.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %GRPH_PITCH33.i, align 4
  %88 = ptrtoint ptr %plane_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %plane_size, align 4
  %call34.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %75, i32 noundef %79, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %83, i32 noundef %87, i32 noundef %89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %format)
  %cmp3 = icmp ult i32 %format, 18
  br i1 %cmp3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @program_grph_pixel_format(ptr noundef %mi, i32 noundef %format)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce112_mi_program_display_marks(ptr noundef readonly %mi, [4 x i32] %nbp.coerce, [4 x i32] %stutter_exit.coerce, [4 x i32] %stutter_entry.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nbp.coerce.fca.0.extract = extractvalue [4 x i32] %nbp.coerce, 0
  %nbp.coerce.fca.1.extract = extractvalue [4 x i32] %nbp.coerce, 1
  %nbp.coerce.fca.2.extract = extractvalue [4 x i32] %nbp.coerce, 2
  %nbp.coerce.fca.3.extract = extractvalue [4 x i32] %nbp.coerce, 3
  %stutter_exit.coerce.fca.0.extract = extractvalue [4 x i32] %stutter_exit.coerce, 0
  %stutter_exit.coerce.fca.1.extract = extractvalue [4 x i32] %stutter_exit.coerce, 1
  %stutter_exit.coerce.fca.2.extract = extractvalue [4 x i32] %stutter_exit.coerce, 2
  %urgent.coerce.fca.0.extract = extractvalue [4 x i32] %urgent.coerce, 0
  %urgent.coerce.fca.1.extract = extractvalue [4 x i32] %urgent.coerce, 1
  %urgent.coerce.fca.2.extract = extractvalue [4 x i32] %urgent.coerce, 2
  %urgent.coerce.fca.3.extract = extractvalue [4 x i32] %urgent.coerce, 3
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disable_stutter = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %disable_stutter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_stutter, align 8, !range !36
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %regs.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %12 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %13, i32 0, i32 43
  %14 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %URGENCY_WATERMARK_MASK.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %16 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %17, i32 0, i32 43
  %18 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %URGENCY_WATERMARK_MASK1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef 0) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %URGENCY_LOW_WATERMARK.i, align 1
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %URGENCY_LOW_WATERMARK7.i, align 4
  %URGENCY_HIGH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 48
  %34 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %URGENCY_HIGH_WATERMARK.i, align 1
  %conv.i = zext i8 %35 to i32
  %URGENCY_HIGH_WATERMARK10.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 48
  %36 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i, align 4
  %call11.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %urgent.coerce.fca.0.extract, i32 noundef %conv.i, i32 noundef %37, i32 noundef %total_dest_line_time_ns) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i37 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i37, align 4
  %44 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i39 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i39 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %URGENCY_WATERMARK_MASK.i39, align 1
  %48 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i41 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 43
  %50 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %URGENCY_WATERMARK_MASK1.i41, align 4
  %call.i42 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %47, i32 noundef %51, i32 noundef 1) #5
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i43 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i43, align 4
  %58 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i44 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i44 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %URGENCY_LOW_WATERMARK.i44, align 1
  %62 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i45 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 47
  %64 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %URGENCY_LOW_WATERMARK7.i45, align 4
  %URGENCY_HIGH_WATERMARK.i46 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %59, i32 0, i32 48
  %66 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i46 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %URGENCY_HIGH_WATERMARK.i46, align 1
  %conv.i47 = zext i8 %67 to i32
  %URGENCY_HIGH_WATERMARK10.i48 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %63, i32 0, i32 48
  %68 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i48 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i48, align 4
  %call11.i49 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %61, i32 noundef %65, i32 noundef %urgent.coerce.fca.1.extract, i32 noundef %conv.i47, i32 noundef %69, i32 noundef %total_dest_line_time_ns) #5
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i52 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %73, i32 0, i32 21
  %74 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i52, align 4
  %76 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i54 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 43
  %78 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i54 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %URGENCY_WATERMARK_MASK.i54, align 1
  %80 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i56 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 43
  %82 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %URGENCY_WATERMARK_MASK1.i56, align 4
  %call.i57 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 1, i8 noundef zeroext %79, i32 noundef %83, i32 noundef 2) #5
  %84 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx, align 4
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i58 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i58 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i58, align 4
  %90 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i59 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %91, i32 0, i32 47
  %92 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i59 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %URGENCY_LOW_WATERMARK.i59, align 1
  %94 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i60 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %95, i32 0, i32 47
  %96 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %URGENCY_LOW_WATERMARK7.i60, align 4
  %URGENCY_HIGH_WATERMARK.i61 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %91, i32 0, i32 48
  %98 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i61 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %URGENCY_HIGH_WATERMARK.i61, align 1
  %conv.i62 = zext i8 %99 to i32
  %URGENCY_HIGH_WATERMARK10.i63 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %95, i32 0, i32 48
  %100 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i63, align 4
  %call11.i64 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %85, i32 noundef %89, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %93, i32 noundef %97, i32 noundef %urgent.coerce.fca.2.extract, i32 noundef %conv.i62, i32 noundef %101, i32 noundef %total_dest_line_time_ns) #5
  %102 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx, align 4
  %104 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i67 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %105, i32 0, i32 21
  %106 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i67 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i67, align 4
  %108 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i69 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %109, i32 0, i32 43
  %110 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i69 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %URGENCY_WATERMARK_MASK.i69, align 1
  %112 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i71 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %113, i32 0, i32 43
  %114 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i71 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %URGENCY_WATERMARK_MASK1.i71, align 4
  %call.i72 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %103, i32 noundef %107, i32 noundef 1, i8 noundef zeroext %111, i32 noundef %115, i32 noundef 3) #5
  %116 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx, align 4
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i73 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %119, i32 0, i32 22
  %120 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i73, align 4
  %122 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i74 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %123, i32 0, i32 47
  %124 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i74 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %URGENCY_LOW_WATERMARK.i74, align 1
  %126 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i75 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %127, i32 0, i32 47
  %128 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i75 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %URGENCY_LOW_WATERMARK7.i75, align 4
  %URGENCY_HIGH_WATERMARK.i76 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %123, i32 0, i32 48
  %130 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i76 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %URGENCY_HIGH_WATERMARK.i76, align 1
  %conv.i77 = zext i8 %131 to i32
  %URGENCY_HIGH_WATERMARK10.i78 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %127, i32 0, i32 48
  %132 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i78 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i78, align 4
  %call11.i79 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %117, i32 noundef %121, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %125, i32 noundef %129, i32 noundef %urgent.coerce.fca.3.extract, i32 noundef %conv.i77, i32 noundef %133, i32 noundef %total_dest_line_time_ns) #5
  %134 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx, align 4
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %137, i32 0, i32 26
  %138 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL, align 4
  %140 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %shifts.i, align 4
  %STUTTER_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %141, i32 0, i32 59
  %142 = ptrtoint ptr %STUTTER_ENABLE to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %STUTTER_ENABLE, align 1
  %144 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %masks.i, align 8
  %STUTTER_ENABLE2 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %145, i32 0, i32 59
  %146 = ptrtoint ptr %STUTTER_ENABLE2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %STUTTER_ENABLE2, align 4
  %STUTTER_IGNORE_FBC = getelementptr inbounds %struct.dce_mem_input_shift, ptr %141, i32 0, i32 60
  %148 = ptrtoint ptr %STUTTER_IGNORE_FBC to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %STUTTER_IGNORE_FBC, align 1
  %conv = zext i8 %149 to i32
  %STUTTER_IGNORE_FBC5 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %145, i32 0, i32 60
  %150 = ptrtoint ptr %STUTTER_IGNORE_FBC5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %STUTTER_IGNORE_FBC5, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %135, i32 noundef %139, i32 noundef 2, i8 noundef zeroext %143, i32 noundef %147, i32 noundef %7, i32 noundef %conv, i32 noundef %151, i32 noundef 1) #5
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 0, i32 noundef %nbp.coerce.fca.0.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 1, i32 noundef %nbp.coerce.fca.1.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 2, i32 noundef %nbp.coerce.fca.2.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 3, i32 noundef %nbp.coerce.fca.3.extract)
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx, align 4
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i82 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %155, i32 0, i32 21
  %156 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i82 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i82, align 4
  %158 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %159, i32 0, i32 46
  %160 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i, align 1
  %162 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %163, i32 0, i32 46
  %164 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i, align 4
  %call.i85 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %153, i32 noundef %157, i32 noundef 1, i8 noundef zeroext %161, i32 noundef %165, i32 noundef 0) #5
  %166 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %167, i32 0, i32 27
  %168 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i = icmp eq i32 %169, 0
  %170 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i, label %if.else.i, label %entry.program_stutter_watermark.exit_crit_edge

entry.program_stutter_watermark.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %167, i32 0, i32 26
  %172 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i, align 4
  br label %program_stutter_watermark.exit

program_stutter_watermark.exit:                   ; preds = %if.else.i, %entry.program_stutter_watermark.exit_crit_edge
  %.sink.i = phi i32 [ %173, %if.else.i ], [ %169, %entry.program_stutter_watermark.exit_crit_edge ]
  %174 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %175, i32 0, i32 61
  %176 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i, align 1
  %178 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %179, i32 0, i32 61
  %180 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i, align 4
  %call18.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %171, i32 noundef %.sink.i, i32 noundef 1, i8 noundef zeroext %177, i32 noundef %181, i32 noundef %stutter_exit.coerce.fca.0.extract) #5
  %182 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctx, align 4
  %184 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i88 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %185, i32 0, i32 21
  %186 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i88 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i88, align 4
  %188 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i90 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %189, i32 0, i32 46
  %190 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i90 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i90, align 1
  %192 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i92 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %193, i32 0, i32 46
  %194 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i92 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i92, align 4
  %call.i93 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %183, i32 noundef %187, i32 noundef 1, i8 noundef zeroext %191, i32 noundef %195, i32 noundef 1) #5
  %196 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i94 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %197, i32 0, i32 27
  %198 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i94 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i95 = icmp eq i32 %199, 0
  %200 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i95, label %if.else.i97, label %program_stutter_watermark.exit.program_stutter_watermark.exit102_crit_edge

program_stutter_watermark.exit.program_stutter_watermark.exit102_crit_edge: ; preds = %program_stutter_watermark.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit102

if.else.i97:                                      ; preds = %program_stutter_watermark.exit
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i96 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %197, i32 0, i32 26
  %202 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i96 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i96, align 4
  br label %program_stutter_watermark.exit102

program_stutter_watermark.exit102:                ; preds = %if.else.i97, %program_stutter_watermark.exit.program_stutter_watermark.exit102_crit_edge
  %.sink.i98 = phi i32 [ %203, %if.else.i97 ], [ %199, %program_stutter_watermark.exit.program_stutter_watermark.exit102_crit_edge ]
  %204 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i99 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %205, i32 0, i32 61
  %206 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i99 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i99, align 1
  %208 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i100 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %209, i32 0, i32 61
  %210 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i100 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i100, align 4
  %call18.i101 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %201, i32 noundef %.sink.i98, i32 noundef 1, i8 noundef zeroext %207, i32 noundef %211, i32 noundef %stutter_exit.coerce.fca.1.extract) #5
  %212 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ctx, align 4
  %214 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i105 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %215, i32 0, i32 21
  %216 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i105 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i105, align 4
  %218 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i107 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %219, i32 0, i32 46
  %220 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i107 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i107, align 1
  %222 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i109 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %223, i32 0, i32 46
  %224 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i109 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i109, align 4
  %call.i110 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %213, i32 noundef %217, i32 noundef 1, i8 noundef zeroext %221, i32 noundef %225, i32 noundef 2) #5
  %226 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i111 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %227, i32 0, i32 27
  %228 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i111 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool.not.i112 = icmp eq i32 %229, 0
  %230 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i112, label %if.else.i114, label %program_stutter_watermark.exit102.program_stutter_watermark.exit119_crit_edge

program_stutter_watermark.exit102.program_stutter_watermark.exit119_crit_edge: ; preds = %program_stutter_watermark.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit119

if.else.i114:                                     ; preds = %program_stutter_watermark.exit102
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i113 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %227, i32 0, i32 26
  %232 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i113 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i113, align 4
  br label %program_stutter_watermark.exit119

program_stutter_watermark.exit119:                ; preds = %if.else.i114, %program_stutter_watermark.exit102.program_stutter_watermark.exit119_crit_edge
  %.sink.i115 = phi i32 [ %233, %if.else.i114 ], [ %229, %program_stutter_watermark.exit102.program_stutter_watermark.exit119_crit_edge ]
  %234 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i116 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %235, i32 0, i32 61
  %236 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i116 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i116, align 1
  %238 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i117 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %239, i32 0, i32 61
  %240 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i117 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i117, align 4
  %call18.i118 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %231, i32 noundef %.sink.i115, i32 noundef 1, i8 noundef zeroext %237, i32 noundef %241, i32 noundef %stutter_exit.coerce.fca.2.extract) #5
  %242 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx, align 4
  %244 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i122 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %245, i32 0, i32 21
  %246 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i122 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i122, align 4
  %248 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i124 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %249, i32 0, i32 46
  %250 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i124 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK.i124, align 1
  %252 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i126 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %253, i32 0, i32 46
  %254 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i126 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1.i126, align 4
  %call.i127 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %243, i32 noundef %247, i32 noundef 1, i8 noundef zeroext %251, i32 noundef %255, i32 noundef 3) #5
  %256 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL2.i128 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %257, i32 0, i32 27
  %258 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2.i128 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i129 = icmp eq i32 %259, 0
  %260 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not.i129, label %if.else.i131, label %program_stutter_watermark.exit119.program_stutter_watermark.exit136_crit_edge

program_stutter_watermark.exit119.program_stutter_watermark.exit136_crit_edge: ; preds = %program_stutter_watermark.exit119
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_stutter_watermark.exit136

if.else.i131:                                     ; preds = %program_stutter_watermark.exit119
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL.i130 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %257, i32 0, i32 26
  %262 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL.i130 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL.i130, align 4
  br label %program_stutter_watermark.exit136

program_stutter_watermark.exit136:                ; preds = %if.else.i131, %program_stutter_watermark.exit119.program_stutter_watermark.exit136_crit_edge
  %.sink.i132 = phi i32 [ %263, %if.else.i131 ], [ %259, %program_stutter_watermark.exit119.program_stutter_watermark.exit136_crit_edge ]
  %stutter_exit.coerce.fca.3.extract = extractvalue [4 x i32] %stutter_exit.coerce, 3
  %264 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %shifts.i, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i133 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %265, i32 0, i32 61
  %266 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i133 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK15.i133, align 1
  %268 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %masks.i, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i134 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %269, i32 0, i32 61
  %270 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i134 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK17.i134, align 4
  %call18.i135 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %261, i32 noundef %.sink.i132, i32 noundef 1, i8 noundef zeroext %267, i32 noundef %271, i32 noundef %stutter_exit.coerce.fca.3.extract) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_mi_program_display_marks(ptr noundef readonly %mi, [4 x i32] %nbp.coerce, [4 x i32] %stutter_exit.coerce, [4 x i32] %stutter_entry.coerce, [4 x i32] %urgent.coerce, i32 noundef %total_dest_line_time_ns) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nbp.coerce.fca.0.extract = extractvalue [4 x i32] %nbp.coerce, 0
  %nbp.coerce.fca.1.extract = extractvalue [4 x i32] %nbp.coerce, 1
  %nbp.coerce.fca.2.extract = extractvalue [4 x i32] %nbp.coerce, 2
  %nbp.coerce.fca.3.extract = extractvalue [4 x i32] %nbp.coerce, 3
  %stutter_exit.coerce.fca.0.extract = extractvalue [4 x i32] %stutter_exit.coerce, 0
  %stutter_exit.coerce.fca.1.extract = extractvalue [4 x i32] %stutter_exit.coerce, 1
  %stutter_exit.coerce.fca.2.extract = extractvalue [4 x i32] %stutter_exit.coerce, 2
  %stutter_exit.coerce.fca.3.extract = extractvalue [4 x i32] %stutter_exit.coerce, 3
  %stutter_entry.coerce.fca.0.extract = extractvalue [4 x i32] %stutter_entry.coerce, 0
  %stutter_entry.coerce.fca.1.extract = extractvalue [4 x i32] %stutter_entry.coerce, 1
  %stutter_entry.coerce.fca.2.extract = extractvalue [4 x i32] %stutter_entry.coerce, 2
  %stutter_entry.coerce.fca.3.extract = extractvalue [4 x i32] %stutter_entry.coerce, 3
  %urgent.coerce.fca.0.extract = extractvalue [4 x i32] %urgent.coerce, 0
  %urgent.coerce.fca.1.extract = extractvalue [4 x i32] %urgent.coerce, 1
  %urgent.coerce.fca.2.extract = extractvalue [4 x i32] %urgent.coerce, 2
  %urgent.coerce.fca.3.extract = extractvalue [4 x i32] %urgent.coerce, 3
  %ctx = getelementptr inbounds %struct.mem_input, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disable_stutter = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %disable_stutter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_stutter, align 8, !range !36
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %regs.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i, align 4
  %shifts.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 2
  %12 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %13, i32 0, i32 43
  %14 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %URGENCY_WATERMARK_MASK.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_mem_input, ptr %mi, i32 0, i32 3
  %16 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %17, i32 0, i32 43
  %18 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %URGENCY_WATERMARK_MASK1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef 0) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %URGENCY_LOW_WATERMARK.i, align 1
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %URGENCY_LOW_WATERMARK7.i, align 4
  %URGENCY_HIGH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %27, i32 0, i32 48
  %34 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %URGENCY_HIGH_WATERMARK.i, align 1
  %conv.i = zext i8 %35 to i32
  %URGENCY_HIGH_WATERMARK10.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %31, i32 0, i32 48
  %36 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i, align 4
  %call11.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %urgent.coerce.fca.0.extract, i32 noundef %conv.i, i32 noundef %37, i32 noundef %total_dest_line_time_ns) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENT_LEVEL_CONTROL.i = getelementptr inbounds %struct.dce_mem_input_registers, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i, align 4
  %44 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shifts.i, align 4
  %URGENT_LEVEL_LOW_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 49
  %46 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %URGENT_LEVEL_LOW_WATERMARK.i, align 1
  %48 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %masks.i, align 8
  %URGENT_LEVEL_LOW_WATERMARK17.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 49
  %50 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %URGENT_LEVEL_LOW_WATERMARK17.i, align 4
  %URGENT_LEVEL_HIGH_WATERMARK.i = getelementptr inbounds %struct.dce_mem_input_shift, ptr %45, i32 0, i32 50
  %52 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %URGENT_LEVEL_HIGH_WATERMARK.i, align 1
  %conv19.i = zext i8 %53 to i32
  %URGENT_LEVEL_HIGH_WATERMARK21.i = getelementptr inbounds %struct.dce_mem_input_mask, ptr %49, i32 0, i32 50
  %54 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %URGENT_LEVEL_HIGH_WATERMARK21.i, align 4
  %call22.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %39, i32 noundef %43, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %47, i32 noundef %51, i32 noundef %urgent.coerce.fca.0.extract, i32 noundef %conv19.i, i32 noundef %55, i32 noundef %total_dest_line_time_ns) #5
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i41 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i41, align 4
  %62 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i43 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %63, i32 0, i32 43
  %64 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i43 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %URGENCY_WATERMARK_MASK.i43, align 1
  %66 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i45 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %67, i32 0, i32 43
  %68 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %URGENCY_WATERMARK_MASK1.i45, align 4
  %call.i46 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 1, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 1) #5
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i47 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %73, i32 0, i32 22
  %74 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i47, align 4
  %76 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i48 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 47
  %78 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i48 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %URGENCY_LOW_WATERMARK.i48, align 1
  %80 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i49 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 47
  %82 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %URGENCY_LOW_WATERMARK7.i49, align 4
  %URGENCY_HIGH_WATERMARK.i50 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %77, i32 0, i32 48
  %84 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i50 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %URGENCY_HIGH_WATERMARK.i50, align 1
  %conv.i51 = zext i8 %85 to i32
  %URGENCY_HIGH_WATERMARK10.i52 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %81, i32 0, i32 48
  %86 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i52, align 4
  %call11.i53 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %71, i32 noundef %75, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %79, i32 noundef %83, i32 noundef %urgent.coerce.fca.1.extract, i32 noundef %conv.i51, i32 noundef %87, i32 noundef %total_dest_line_time_ns) #5
  %88 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx, align 4
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENT_LEVEL_CONTROL.i54 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %91, i32 0, i32 23
  %92 = ptrtoint ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i54, align 4
  %94 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shifts.i, align 4
  %URGENT_LEVEL_LOW_WATERMARK.i55 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %95, i32 0, i32 49
  %96 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK.i55 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %URGENT_LEVEL_LOW_WATERMARK.i55, align 1
  %98 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %masks.i, align 8
  %URGENT_LEVEL_LOW_WATERMARK17.i56 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %99, i32 0, i32 49
  %100 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK17.i56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %URGENT_LEVEL_LOW_WATERMARK17.i56, align 4
  %URGENT_LEVEL_HIGH_WATERMARK.i57 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %95, i32 0, i32 50
  %102 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK.i57 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %URGENT_LEVEL_HIGH_WATERMARK.i57, align 1
  %conv19.i58 = zext i8 %103 to i32
  %URGENT_LEVEL_HIGH_WATERMARK21.i59 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %99, i32 0, i32 50
  %104 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK21.i59 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %URGENT_LEVEL_HIGH_WATERMARK21.i59, align 4
  %call22.i60 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %89, i32 noundef %93, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %97, i32 noundef %101, i32 noundef %urgent.coerce.fca.1.extract, i32 noundef %conv19.i58, i32 noundef %105, i32 noundef %total_dest_line_time_ns) #5
  %106 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctx, align 4
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i63 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %109, i32 0, i32 21
  %110 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i63, align 4
  %112 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i65 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %113, i32 0, i32 43
  %114 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i65 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %URGENCY_WATERMARK_MASK.i65, align 1
  %116 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i67 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %117, i32 0, i32 43
  %118 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i67 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %URGENCY_WATERMARK_MASK1.i67, align 4
  %call.i68 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %107, i32 noundef %111, i32 noundef 1, i8 noundef zeroext %115, i32 noundef %119, i32 noundef 2) #5
  %120 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx, align 4
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i69 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %123, i32 0, i32 22
  %124 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i69 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i69, align 4
  %126 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i70 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %127, i32 0, i32 47
  %128 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i70 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %URGENCY_LOW_WATERMARK.i70, align 1
  %130 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i71 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %131, i32 0, i32 47
  %132 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i71 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %URGENCY_LOW_WATERMARK7.i71, align 4
  %URGENCY_HIGH_WATERMARK.i72 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %127, i32 0, i32 48
  %134 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i72 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %URGENCY_HIGH_WATERMARK.i72, align 1
  %conv.i73 = zext i8 %135 to i32
  %URGENCY_HIGH_WATERMARK10.i74 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %131, i32 0, i32 48
  %136 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i74 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i74, align 4
  %call11.i75 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %121, i32 noundef %125, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %129, i32 noundef %133, i32 noundef %urgent.coerce.fca.2.extract, i32 noundef %conv.i73, i32 noundef %137, i32 noundef %total_dest_line_time_ns) #5
  %138 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx, align 4
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENT_LEVEL_CONTROL.i76 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %141, i32 0, i32 23
  %142 = ptrtoint ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i76 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i76, align 4
  %144 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %shifts.i, align 4
  %URGENT_LEVEL_LOW_WATERMARK.i77 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %145, i32 0, i32 49
  %146 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK.i77 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %URGENT_LEVEL_LOW_WATERMARK.i77, align 1
  %148 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %masks.i, align 8
  %URGENT_LEVEL_LOW_WATERMARK17.i78 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %149, i32 0, i32 49
  %150 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK17.i78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %URGENT_LEVEL_LOW_WATERMARK17.i78, align 4
  %URGENT_LEVEL_HIGH_WATERMARK.i79 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %145, i32 0, i32 50
  %152 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK.i79 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %URGENT_LEVEL_HIGH_WATERMARK.i79, align 1
  %conv19.i80 = zext i8 %153 to i32
  %URGENT_LEVEL_HIGH_WATERMARK21.i81 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %149, i32 0, i32 50
  %154 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK21.i81 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %URGENT_LEVEL_HIGH_WATERMARK21.i81, align 4
  %call22.i82 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %139, i32 noundef %143, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %147, i32 noundef %151, i32 noundef %urgent.coerce.fca.2.extract, i32 noundef %conv19.i80, i32 noundef %155, i32 noundef %total_dest_line_time_ns) #5
  %156 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctx, align 4
  %158 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i, align 8
  %DPG_WATERMARK_MASK_CONTROL.i85 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %159, i32 0, i32 21
  %160 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL.i85 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL.i85, align 4
  %162 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %shifts.i, align 4
  %URGENCY_WATERMARK_MASK.i87 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %163, i32 0, i32 43
  %164 = ptrtoint ptr %URGENCY_WATERMARK_MASK.i87 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %URGENCY_WATERMARK_MASK.i87, align 1
  %166 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %masks.i, align 8
  %URGENCY_WATERMARK_MASK1.i89 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %167, i32 0, i32 43
  %168 = ptrtoint ptr %URGENCY_WATERMARK_MASK1.i89 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %URGENCY_WATERMARK_MASK1.i89, align 4
  %call.i90 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %157, i32 noundef %161, i32 noundef 1, i8 noundef zeroext %165, i32 noundef %169, i32 noundef 3) #5
  %170 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctx, align 4
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENCY_CONTROL.i91 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %173, i32 0, i32 22
  %174 = ptrtoint ptr %DPG_PIPE_URGENCY_CONTROL.i91 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %DPG_PIPE_URGENCY_CONTROL.i91, align 4
  %176 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %shifts.i, align 4
  %URGENCY_LOW_WATERMARK.i92 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %177, i32 0, i32 47
  %178 = ptrtoint ptr %URGENCY_LOW_WATERMARK.i92 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %URGENCY_LOW_WATERMARK.i92, align 1
  %180 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %masks.i, align 8
  %URGENCY_LOW_WATERMARK7.i93 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %181, i32 0, i32 47
  %182 = ptrtoint ptr %URGENCY_LOW_WATERMARK7.i93 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %URGENCY_LOW_WATERMARK7.i93, align 4
  %URGENCY_HIGH_WATERMARK.i94 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %177, i32 0, i32 48
  %184 = ptrtoint ptr %URGENCY_HIGH_WATERMARK.i94 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %URGENCY_HIGH_WATERMARK.i94, align 1
  %conv.i95 = zext i8 %185 to i32
  %URGENCY_HIGH_WATERMARK10.i96 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %181, i32 0, i32 48
  %186 = ptrtoint ptr %URGENCY_HIGH_WATERMARK10.i96 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %URGENCY_HIGH_WATERMARK10.i96, align 4
  %call11.i97 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %171, i32 noundef %175, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %179, i32 noundef %183, i32 noundef %urgent.coerce.fca.3.extract, i32 noundef %conv.i95, i32 noundef %187, i32 noundef %total_dest_line_time_ns) #5
  %188 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ctx, align 4
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_URGENT_LEVEL_CONTROL.i98 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %191, i32 0, i32 23
  %192 = ptrtoint ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i98 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %DPG_PIPE_URGENT_LEVEL_CONTROL.i98, align 4
  %194 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %shifts.i, align 4
  %URGENT_LEVEL_LOW_WATERMARK.i99 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %195, i32 0, i32 49
  %196 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK.i99 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %URGENT_LEVEL_LOW_WATERMARK.i99, align 1
  %198 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %masks.i, align 8
  %URGENT_LEVEL_LOW_WATERMARK17.i100 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %199, i32 0, i32 49
  %200 = ptrtoint ptr %URGENT_LEVEL_LOW_WATERMARK17.i100 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %URGENT_LEVEL_LOW_WATERMARK17.i100, align 4
  %URGENT_LEVEL_HIGH_WATERMARK.i101 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %195, i32 0, i32 50
  %202 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK.i101 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %URGENT_LEVEL_HIGH_WATERMARK.i101, align 1
  %conv19.i102 = zext i8 %203 to i32
  %URGENT_LEVEL_HIGH_WATERMARK21.i103 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %199, i32 0, i32 50
  %204 = ptrtoint ptr %URGENT_LEVEL_HIGH_WATERMARK21.i103 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %URGENT_LEVEL_HIGH_WATERMARK21.i103, align 4
  %call22.i104 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %189, i32 noundef %193, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %197, i32 noundef %201, i32 noundef %urgent.coerce.fca.3.extract, i32 noundef %conv19.i102, i32 noundef %205, i32 noundef %total_dest_line_time_ns) #5
  %206 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctx, align 4
  %208 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i, align 8
  %DPG_PIPE_STUTTER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %209, i32 0, i32 26
  %210 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL, align 4
  %212 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %shifts.i, align 4
  %STUTTER_ENABLE = getelementptr inbounds %struct.dce_mem_input_shift, ptr %213, i32 0, i32 59
  %214 = ptrtoint ptr %STUTTER_ENABLE to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %STUTTER_ENABLE, align 1
  %216 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %masks.i, align 8
  %STUTTER_ENABLE2 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %217, i32 0, i32 59
  %218 = ptrtoint ptr %STUTTER_ENABLE2 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %STUTTER_ENABLE2, align 4
  %STUTTER_IGNORE_FBC = getelementptr inbounds %struct.dce_mem_input_shift, ptr %213, i32 0, i32 60
  %220 = ptrtoint ptr %STUTTER_IGNORE_FBC to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %STUTTER_IGNORE_FBC, align 1
  %conv = zext i8 %221 to i32
  %STUTTER_IGNORE_FBC5 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %217, i32 0, i32 60
  %222 = ptrtoint ptr %STUTTER_IGNORE_FBC5 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %STUTTER_IGNORE_FBC5, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %207, i32 noundef %211, i32 noundef 2, i8 noundef zeroext %215, i32 noundef %219, i32 noundef %7, i32 noundef %conv, i32 noundef %223, i32 noundef 1) #5
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 0, i32 noundef %nbp.coerce.fca.0.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 1, i32 noundef %nbp.coerce.fca.1.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 2, i32 noundef %nbp.coerce.fca.2.extract)
  tail call fastcc void @program_nbp_watermark(ptr noundef %mi, i32 noundef 3, i32 noundef %nbp.coerce.fca.3.extract)
  tail call fastcc void @dce120_program_stutter_watermark(ptr noundef %mi, i32 noundef 0, i32 noundef %stutter_exit.coerce.fca.0.extract, i32 noundef %stutter_entry.coerce.fca.0.extract)
  tail call fastcc void @dce120_program_stutter_watermark(ptr noundef %mi, i32 noundef 1, i32 noundef %stutter_exit.coerce.fca.1.extract, i32 noundef %stutter_entry.coerce.fca.1.extract)
  tail call fastcc void @dce120_program_stutter_watermark(ptr noundef %mi, i32 noundef 2, i32 noundef %stutter_exit.coerce.fca.2.extract, i32 noundef %stutter_entry.coerce.fca.2.extract)
  tail call fastcc void @dce120_program_stutter_watermark(ptr noundef %mi, i32 noundef 3, i32 noundef %stutter_exit.coerce.fca.3.extract, i32 noundef %stutter_entry.coerce.fca.3.extract)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce120_program_stutter_watermark(ptr nocapture noundef readonly %dce_mi, i32 noundef %wm_select, i32 noundef %stutter_mark, i32 noundef %stutter_entry) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.mem_input, ptr %dce_mi, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %DPG_WATERMARK_MASK_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %DPG_WATERMARK_MASK_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DPG_WATERMARK_MASK_CONTROL, align 4
  %shifts = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK, align 1
  %masks = getelementptr inbounds %struct.dce_mem_input, ptr %dce_mi, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %wm_select) #5
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %DPG_PIPE_STUTTER_CONTROL2 = getelementptr inbounds %struct.dce_mem_input_registers, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shifts, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK, align 1
  %24 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %masks, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK9 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %25, i32 0, i32 61
  %26 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK9, align 4
  %STUTTER_ENTER_SELF_REFRESH_WATERMARK = getelementptr inbounds %struct.dce_mem_input_shift, ptr %21, i32 0, i32 62
  %28 = ptrtoint ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK, align 1
  %conv = zext i8 %29 to i32
  %STUTTER_ENTER_SELF_REFRESH_WATERMARK12 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %25, i32 0, i32 62
  %30 = ptrtoint ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK12, align 4
  %call13 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %17, i32 noundef 2, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %stutter_mark, i32 noundef %conv, i32 noundef %31, i32 noundef %stutter_entry) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %DPG_PIPE_STUTTER_CONTROL = getelementptr inbounds %struct.dce_mem_input_registers, ptr %15, i32 0, i32 26
  %32 = ptrtoint ptr %DPG_PIPE_STUTTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DPG_PIPE_STUTTER_CONTROL, align 4
  %34 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shifts, align 4
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK18 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %35, i32 0, i32 61
  %36 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK18, align 1
  %38 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %masks, align 8
  %STUTTER_EXIT_SELF_REFRESH_WATERMARK20 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %39, i32 0, i32 61
  %40 = ptrtoint ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %STUTTER_EXIT_SELF_REFRESH_WATERMARK20, align 4
  %STUTTER_ENTER_SELF_REFRESH_WATERMARK22 = getelementptr inbounds %struct.dce_mem_input_shift, ptr %35, i32 0, i32 62
  %42 = ptrtoint ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK22 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK22, align 1
  %conv23 = zext i8 %43 to i32
  %STUTTER_ENTER_SELF_REFRESH_WATERMARK25 = getelementptr inbounds %struct.dce_mem_input_mask, ptr %39, i32 0, i32 62
  %44 = ptrtoint ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %STUTTER_ENTER_SELF_REFRESH_WATERMARK25, align 4
  %call26 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %33, i32 noundef 2, i8 noundef zeroext %37, i32 noundef %41, i32 noundef %stutter_mark, i32 noundef %conv23, i32 noundef %45, i32 noundef %stutter_entry) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @dce_mi_funcs, !1, !"dce_mi_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 880, i32 37}
!2 = !{ptr @__func__.dce_mi_allocate_dmif, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 745, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 695, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 696, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 704, i32 3}
!11 = !{ptr @__func__.dce_mi_free_dmif, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 782, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 866, i32 3}
!15 = !{ptr @__func__.dce_mi_program_surface_flip_and_addr, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pte_settings, !17, !"pte_settings", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 66, i32 33}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 615, i32 3}
!20 = !{ptr @__func__.program_grph_pixel_format, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dce60_mi_funcs, !22, !"dce60_mi_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 893, i32 37}
!23 = !{ptr @dce112_mi_funcs, !24, !"dce112_mi_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 906, i32 37}
!25 = !{ptr @dce120_mi_funcs, !26, !"dce120_mi_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_mem_input.c", i32 918, i32 37}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"auto-init"}
!39 = !{i32 0, i32 33}
