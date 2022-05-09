; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_ipp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_pixel_processor = type { ptr, i32, ptr }
%struct.dce_ipp = type { %struct.input_pixel_processor, ptr, ptr, ptr }
%struct.dce_ipp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_ipp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_ipp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.large_integer = type { i64 }
%union.dc_cursor_attribute_flags = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%struct.anon = type { i32, i32 }
%struct.ipp_prescale_params = type { i32, i16, i16 }
%struct.dc_gamma = type { %struct.kref, i32, i32, %struct.dc_gamma_entries, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dc_gamma_entries = type { [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32] }
%struct.fixed31_32 = type { i64 }

@dce_ipp_funcs = internal constant { %struct.ipp_funcs, [60 x i8] } { %struct.ipp_funcs { ptr @dce_ipp_cursor_set_position, ptr @dce_ipp_cursor_set_attributes, ptr null, ptr null, ptr @dce_ipp_program_prescale, ptr @dce_ipp_program_input_lut, ptr @dce_ipp_set_degamma, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dce60_ipp_funcs = internal constant { %struct.ipp_funcs, [60 x i8] } { %struct.ipp_funcs { ptr @dce_ipp_cursor_set_position, ptr @dce_ipp_cursor_set_attributes, ptr null, ptr null, ptr @dce_ipp_program_prescale, ptr @dce_ipp_program_input_lut, ptr @dce60_ipp_set_degamma, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_ipp_cursor_set_attributes = private unnamed_addr constant [30 x i8] c"dce_ipp_cursor_set_attributes\00", align 1
@dc_fixpt_round.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dce_ipp_set_degamma.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c\00", [41 x i8] zeroinitializer }, align 32
@dce60_ipp_set_degamma.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"dce_ipp_funcs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 250, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"dce60_ipp_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 259, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 94, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 466, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 226, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @dce_ipp_funcs, ptr @dce60_ipp_funcs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_ipp_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_ipp_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce_ipp_construct(ptr nocapture noundef writeonly %ipp_dce, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %ipp_shift, ptr noundef %ipp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp_dce to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ipp_dce, align 4
  %inst3 = getelementptr inbounds %struct.input_pixel_processor, ptr %ipp_dce, i32 0, i32 1
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3, align 4
  %funcs = getelementptr inbounds %struct.input_pixel_processor, ptr %ipp_dce, i32 0, i32 2
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce_ipp_funcs, ptr %funcs, align 4
  %regs5 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 4
  %ipp_shift6 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 2
  %4 = ptrtoint ptr %ipp_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipp_shift, ptr %ipp_shift6, align 4
  %ipp_mask7 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 3
  %5 = ptrtoint ptr %ipp_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ipp_mask, ptr %ipp_mask7, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce60_ipp_construct(ptr nocapture noundef writeonly %ipp_dce, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %ipp_shift, ptr noundef %ipp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp_dce to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ipp_dce, align 4
  %inst3 = getelementptr inbounds %struct.input_pixel_processor, ptr %ipp_dce, i32 0, i32 1
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3, align 4
  %funcs = getelementptr inbounds %struct.input_pixel_processor, ptr %ipp_dce, i32 0, i32 2
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce60_ipp_funcs, ptr %funcs, align 4
  %regs5 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 4
  %ipp_shift6 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 2
  %4 = ptrtoint ptr %ipp_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipp_shift, ptr %ipp_shift6, align 4
  %ipp_mask7 = getelementptr inbounds %struct.dce_ipp, ptr %ipp_dce, i32 0, i32 3
  %5 = ptrtoint ptr %ipp_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ipp_mask, ptr %ipp_mask7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_ipp_destroy(ptr nocapture noundef %ipp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ipp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_ipp_cursor_set_position(ptr nocapture noundef readonly %ipp, ptr nocapture noundef readonly %position, ptr nocapture noundef readnone %param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #4
  %14 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipp, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %CUR_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %CUR_CONTROL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %CUR_CONTROL, align 4
  %20 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_EN = getelementptr inbounds %struct.dce_ipp_shift, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %CURSOR_EN to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %CURSOR_EN, align 1
  %24 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_EN7 = getelementptr inbounds %struct.dce_ipp_mask, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %CURSOR_EN7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %CURSOR_EN7, align 4
  %enable = getelementptr inbounds %struct.dc_cursor_position, ptr %position, i32 0, i32 4
  %28 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable, align 4, !range !26
  %30 = zext i8 %29 to i32
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %15, i32 noundef %19, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %30) #4
  %31 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipp, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %CUR_POSITION = getelementptr inbounds %struct.dce_ipp_registers, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %CUR_POSITION to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %CUR_POSITION, align 4
  %37 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_X_POSITION = getelementptr inbounds %struct.dce_ipp_shift, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %CURSOR_X_POSITION to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %CURSOR_X_POSITION, align 1
  %41 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_X_POSITION14 = getelementptr inbounds %struct.dce_ipp_mask, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %CURSOR_X_POSITION14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %CURSOR_X_POSITION14, align 4
  %45 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %position, align 4
  %CURSOR_Y_POSITION = getelementptr inbounds %struct.dce_ipp_shift, ptr %38, i32 0, i32 3
  %47 = ptrtoint ptr %CURSOR_Y_POSITION to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %CURSOR_Y_POSITION, align 1
  %conv16 = zext i8 %48 to i32
  %CURSOR_Y_POSITION18 = getelementptr inbounds %struct.dce_ipp_mask, ptr %42, i32 0, i32 3
  %49 = ptrtoint ptr %CURSOR_Y_POSITION18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %CURSOR_Y_POSITION18, align 4
  %y = getelementptr inbounds %struct.dc_cursor_position, ptr %position, i32 0, i32 1
  %51 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y, align 4
  %call19 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %32, i32 noundef %36, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %40, i32 noundef %44, i32 noundef %46, i32 noundef %conv16, i32 noundef %50, i32 noundef %52) #4
  %53 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipp, align 4
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %CUR_HOT_SPOT = getelementptr inbounds %struct.dce_ipp_registers, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %CUR_HOT_SPOT to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %CUR_HOT_SPOT, align 4
  %59 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_HOT_SPOT_X = getelementptr inbounds %struct.dce_ipp_shift, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %CURSOR_HOT_SPOT_X to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %CURSOR_HOT_SPOT_X, align 1
  %63 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_HOT_SPOT_X25 = getelementptr inbounds %struct.dce_ipp_mask, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %CURSOR_HOT_SPOT_X25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %CURSOR_HOT_SPOT_X25, align 4
  %x_hotspot = getelementptr inbounds %struct.dc_cursor_position, ptr %position, i32 0, i32 2
  %67 = ptrtoint ptr %x_hotspot to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %x_hotspot, align 4
  %CURSOR_HOT_SPOT_Y = getelementptr inbounds %struct.dce_ipp_shift, ptr %60, i32 0, i32 5
  %69 = ptrtoint ptr %CURSOR_HOT_SPOT_Y to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %CURSOR_HOT_SPOT_Y, align 1
  %conv27 = zext i8 %70 to i32
  %CURSOR_HOT_SPOT_Y29 = getelementptr inbounds %struct.dce_ipp_mask, ptr %64, i32 0, i32 5
  %71 = ptrtoint ptr %CURSOR_HOT_SPOT_Y29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %CURSOR_HOT_SPOT_Y29, align 4
  %y_hotspot = getelementptr inbounds %struct.dc_cursor_position, ptr %position, i32 0, i32 3
  %73 = ptrtoint ptr %y_hotspot to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %y_hotspot, align 4
  %call30 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %54, i32 noundef %58, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %62, i32 noundef %66, i32 noundef %68, i32 noundef %conv27, i32 noundef %72, i32 noundef %74) #4
  %75 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ipp, align 4
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %81 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ipp_shift, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %85 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ipp_mask, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %call39 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %76, i32 noundef %80, i32 noundef 1, i8 noundef zeroext %84, i32 noundef %88, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_ipp_cursor_set_attributes(ptr nocapture noundef readonly %ipp, ptr nocapture noundef readonly %attributes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #4
  %color_format = getelementptr inbounds %struct.dc_cursor_attributes, ptr %attributes, i32 0, i32 4
  %14 = ptrtoint ptr %color_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %entry.sw.epilog_crit_edge, label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce_ipp_cursor_set_attributes, i32 noundef 94) #4
  tail call void @kgdb_breakpoint() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %do.body ], [ %15, %entry.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipp, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %CUR_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %CUR_CONTROL to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %CUR_CONTROL, align 4
  %23 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %CURSOR_MODE to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %CURSOR_MODE, align 1
  %27 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_MODE10 = getelementptr inbounds %struct.dce_ipp_mask, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %CURSOR_MODE10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %CURSOR_MODE10, align 4
  %CURSOR_2X_MAGNIFY = getelementptr inbounds %struct.dce_ipp_shift, ptr %24, i32 0, i32 7
  %31 = ptrtoint ptr %CURSOR_2X_MAGNIFY to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %CURSOR_2X_MAGNIFY, align 1
  %conv = zext i8 %32 to i32
  %CURSOR_2X_MAGNIFY13 = getelementptr inbounds %struct.dce_ipp_mask, ptr %28, i32 0, i32 7
  %33 = ptrtoint ptr %CURSOR_2X_MAGNIFY13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %CURSOR_2X_MAGNIFY13, align 4
  %attribute_flags = getelementptr inbounds %struct.dc_cursor_attributes, ptr %attributes, i32 0, i32 7
  %35 = ptrtoint ptr %attribute_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load = load i32, ptr %attribute_flags, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %CUR_INV_TRANS_CLAMP = getelementptr inbounds %struct.dce_ipp_shift, ptr %24, i32 0, i32 8
  %36 = ptrtoint ptr %CUR_INV_TRANS_CLAMP to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %CUR_INV_TRANS_CLAMP, align 1
  %conv15 = zext i8 %37 to i32
  %CUR_INV_TRANS_CLAMP17 = getelementptr inbounds %struct.dce_ipp_mask, ptr %28, i32 0, i32 8
  %38 = ptrtoint ptr %CUR_INV_TRANS_CLAMP17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %CUR_INV_TRANS_CLAMP17, align 4
  %bf.lshr20 = lshr i32 %bf.load, 30
  %bf.clear = and i32 %bf.lshr20, 1
  %call21 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %18, i32 noundef %22, i32 noundef 3, i8 noundef zeroext %26, i32 noundef %30, i32 noundef %mode.0, i32 noundef %conv, i32 noundef %34, i32 noundef %bf.lshr, i32 noundef %conv15, i32 noundef %39, i32 noundef %bf.clear) #4
  %40 = ptrtoint ptr %color_format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %color_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp = icmp eq i32 %41, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipp, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %CUR_COLOR1 = getelementptr inbounds %struct.dce_ipp_registers, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %CUR_COLOR1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %CUR_COLOR1, align 4
  %48 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ipp_shift, align 4
  %CUR_COLOR1_BLUE = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %CUR_COLOR1_BLUE to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %CUR_COLOR1_BLUE, align 1
  %52 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ipp_mask, align 4
  %CUR_COLOR1_BLUE29 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %CUR_COLOR1_BLUE29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %CUR_COLOR1_BLUE29, align 4
  %CUR_COLOR1_GREEN = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 10
  %56 = ptrtoint ptr %CUR_COLOR1_GREEN to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %CUR_COLOR1_GREEN, align 1
  %conv31 = zext i8 %57 to i32
  %CUR_COLOR1_GREEN33 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 10
  %58 = ptrtoint ptr %CUR_COLOR1_GREEN33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %CUR_COLOR1_GREEN33, align 4
  %CUR_COLOR1_RED = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 11
  %60 = ptrtoint ptr %CUR_COLOR1_RED to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %CUR_COLOR1_RED, align 1
  %conv35 = zext i8 %61 to i32
  %CUR_COLOR1_RED37 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 11
  %62 = ptrtoint ptr %CUR_COLOR1_RED37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %CUR_COLOR1_RED37, align 4
  %call38 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %43, i32 noundef %47, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %51, i32 noundef %55, i32 noundef 0, i32 noundef %conv31, i32 noundef %59, i32 noundef 0, i32 noundef %conv35, i32 noundef %63, i32 noundef 0) #4
  %64 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipp, align 4
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %CUR_COLOR2 = getelementptr inbounds %struct.dce_ipp_registers, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %CUR_COLOR2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %CUR_COLOR2, align 4
  %70 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ipp_shift, align 4
  %CUR_COLOR2_BLUE = getelementptr inbounds %struct.dce_ipp_shift, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %CUR_COLOR2_BLUE to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %CUR_COLOR2_BLUE, align 1
  %74 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ipp_mask, align 4
  %CUR_COLOR2_BLUE44 = getelementptr inbounds %struct.dce_ipp_mask, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %CUR_COLOR2_BLUE44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %CUR_COLOR2_BLUE44, align 4
  %CUR_COLOR2_GREEN = getelementptr inbounds %struct.dce_ipp_shift, ptr %71, i32 0, i32 13
  %78 = ptrtoint ptr %CUR_COLOR2_GREEN to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %CUR_COLOR2_GREEN, align 1
  %conv46 = zext i8 %79 to i32
  %CUR_COLOR2_GREEN48 = getelementptr inbounds %struct.dce_ipp_mask, ptr %75, i32 0, i32 13
  %80 = ptrtoint ptr %CUR_COLOR2_GREEN48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %CUR_COLOR2_GREEN48, align 4
  %CUR_COLOR2_RED = getelementptr inbounds %struct.dce_ipp_shift, ptr %71, i32 0, i32 14
  %82 = ptrtoint ptr %CUR_COLOR2_RED to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %CUR_COLOR2_RED, align 1
  %conv50 = zext i8 %83 to i32
  %CUR_COLOR2_RED52 = getelementptr inbounds %struct.dce_ipp_mask, ptr %75, i32 0, i32 14
  %84 = ptrtoint ptr %CUR_COLOR2_RED52 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %CUR_COLOR2_RED52, align 4
  %call53 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %65, i32 noundef %69, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %73, i32 noundef %77, i32 noundef 255, i32 noundef %conv46, i32 noundef %81, i32 noundef 255, i32 noundef %conv50, i32 noundef %85, i32 noundef 255) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %86 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ipp, align 4
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %CUR_SIZE = getelementptr inbounds %struct.dce_ipp_registers, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %CUR_SIZE to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %CUR_SIZE, align 4
  %92 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_WIDTH = getelementptr inbounds %struct.dce_ipp_shift, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %CURSOR_WIDTH to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %CURSOR_WIDTH, align 1
  %96 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_WIDTH59 = getelementptr inbounds %struct.dce_ipp_mask, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %CURSOR_WIDTH59 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %CURSOR_WIDTH59, align 4
  %width = getelementptr inbounds %struct.dc_cursor_attributes, ptr %attributes, i32 0, i32 2
  %100 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %width, align 4
  %sub = add i32 %101, -1
  %CURSOR_HEIGHT = getelementptr inbounds %struct.dce_ipp_shift, ptr %93, i32 0, i32 16
  %102 = ptrtoint ptr %CURSOR_HEIGHT to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %CURSOR_HEIGHT, align 1
  %conv61 = zext i8 %103 to i32
  %CURSOR_HEIGHT63 = getelementptr inbounds %struct.dce_ipp_mask, ptr %97, i32 0, i32 16
  %104 = ptrtoint ptr %CURSOR_HEIGHT63 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %CURSOR_HEIGHT63, align 4
  %height = getelementptr inbounds %struct.dc_cursor_attributes, ptr %attributes, i32 0, i32 3
  %106 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %height, align 8
  %sub64 = add i32 %107, -1
  %call65 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %87, i32 noundef %91, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %95, i32 noundef %99, i32 noundef %sub, i32 noundef %conv61, i32 noundef %105, i32 noundef %sub64) #4
  %108 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ipp, align 4
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 4
  %CUR_SURFACE_ADDRESS_HIGH = getelementptr inbounds %struct.dce_ipp_registers, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %CUR_SURFACE_ADDRESS_HIGH to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %CUR_SURFACE_ADDRESS_HIGH, align 4
  %114 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_SURFACE_ADDRESS_HIGH = getelementptr inbounds %struct.dce_ipp_shift, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %CURSOR_SURFACE_ADDRESS_HIGH to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %CURSOR_SURFACE_ADDRESS_HIGH, align 1
  %118 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_SURFACE_ADDRESS_HIGH71 = getelementptr inbounds %struct.dce_ipp_mask, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %CURSOR_SURFACE_ADDRESS_HIGH71 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %CURSOR_SURFACE_ADDRESS_HIGH71, align 4
  %high_part = getelementptr inbounds %struct.anon, ptr %attributes, i32 0, i32 1
  %122 = ptrtoint ptr %high_part to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %high_part, align 4
  %call72 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %109, i32 noundef %113, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %117, i32 noundef %121, i32 noundef %123) #4
  %124 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ipp, align 4
  %126 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs, align 4
  %CUR_SURFACE_ADDRESS = getelementptr inbounds %struct.dce_ipp_registers, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %CUR_SURFACE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %CUR_SURFACE_ADDRESS, align 4
  %130 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ipp_shift, align 4
  %CURSOR_SURFACE_ADDRESS = getelementptr inbounds %struct.dce_ipp_shift, ptr %131, i32 0, i32 18
  %132 = ptrtoint ptr %CURSOR_SURFACE_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %CURSOR_SURFACE_ADDRESS, align 1
  %134 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ipp_mask, align 4
  %CURSOR_SURFACE_ADDRESS78 = getelementptr inbounds %struct.dce_ipp_mask, ptr %135, i32 0, i32 18
  %136 = ptrtoint ptr %CURSOR_SURFACE_ADDRESS78 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %CURSOR_SURFACE_ADDRESS78, align 4
  %138 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %attributes, align 8
  %call80 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %125, i32 noundef %129, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %133, i32 noundef %137, i32 noundef %139) #4
  %140 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ipp, align 4
  %142 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %146 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ipp_shift, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 1
  %150 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ipp_mask, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %call89 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %141, i32 noundef %145, i32 noundef 1, i8 noundef zeroext %149, i32 noundef %153, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_ipp_program_prescale(ptr nocapture noundef readonly %ipp, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %PRESCALE_GRPH_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %PRESCALE_GRPH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %PRESCALE_GRPH_CONTROL, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %GRPH_PRESCALE_BYPASS = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %GRPH_PRESCALE_BYPASS to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %GRPH_PRESCALE_BYPASS, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %GRPH_PRESCALE_BYPASS1 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %GRPH_PRESCALE_BYPASS1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %GRPH_PRESCALE_BYPASS1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #4
  %14 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipp, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %PRESCALE_VALUES_GRPH_R = getelementptr inbounds %struct.dce_ipp_registers, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %PRESCALE_VALUES_GRPH_R to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %PRESCALE_VALUES_GRPH_R, align 4
  %20 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipp_shift, align 4
  %GRPH_PRESCALE_SCALE_R = getelementptr inbounds %struct.dce_ipp_shift, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %GRPH_PRESCALE_SCALE_R to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %GRPH_PRESCALE_SCALE_R, align 1
  %24 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipp_mask, align 4
  %GRPH_PRESCALE_SCALE_R7 = getelementptr inbounds %struct.dce_ipp_mask, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %GRPH_PRESCALE_SCALE_R7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %GRPH_PRESCALE_SCALE_R7, align 4
  %scale = getelementptr inbounds %struct.ipp_prescale_params, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %scale to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %scale, align 2
  %conv = zext i16 %29 to i32
  %GRPH_PRESCALE_BIAS_R = getelementptr inbounds %struct.dce_ipp_shift, ptr %21, i32 0, i32 21
  %30 = ptrtoint ptr %GRPH_PRESCALE_BIAS_R to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %GRPH_PRESCALE_BIAS_R, align 1
  %conv9 = zext i8 %31 to i32
  %GRPH_PRESCALE_BIAS_R11 = getelementptr inbounds %struct.dce_ipp_mask, ptr %25, i32 0, i32 21
  %32 = ptrtoint ptr %GRPH_PRESCALE_BIAS_R11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %GRPH_PRESCALE_BIAS_R11, align 4
  %bias = getelementptr inbounds %struct.ipp_prescale_params, ptr %params, i32 0, i32 1
  %34 = ptrtoint ptr %bias to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bias, align 4
  %conv12 = zext i16 %35 to i32
  %call13 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %19, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %conv, i32 noundef %conv9, i32 noundef %33, i32 noundef %conv12) #4
  %36 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipp, align 4
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %PRESCALE_VALUES_GRPH_G = getelementptr inbounds %struct.dce_ipp_registers, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %PRESCALE_VALUES_GRPH_G to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %PRESCALE_VALUES_GRPH_G, align 4
  %42 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipp_shift, align 4
  %GRPH_PRESCALE_SCALE_G = getelementptr inbounds %struct.dce_ipp_shift, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %GRPH_PRESCALE_SCALE_G to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %GRPH_PRESCALE_SCALE_G, align 1
  %46 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ipp_mask, align 4
  %GRPH_PRESCALE_SCALE_G19 = getelementptr inbounds %struct.dce_ipp_mask, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %GRPH_PRESCALE_SCALE_G19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %GRPH_PRESCALE_SCALE_G19, align 4
  %50 = ptrtoint ptr %scale to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %scale, align 2
  %conv21 = zext i16 %51 to i32
  %GRPH_PRESCALE_BIAS_G = getelementptr inbounds %struct.dce_ipp_shift, ptr %43, i32 0, i32 23
  %52 = ptrtoint ptr %GRPH_PRESCALE_BIAS_G to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %GRPH_PRESCALE_BIAS_G, align 1
  %conv23 = zext i8 %53 to i32
  %GRPH_PRESCALE_BIAS_G25 = getelementptr inbounds %struct.dce_ipp_mask, ptr %47, i32 0, i32 23
  %54 = ptrtoint ptr %GRPH_PRESCALE_BIAS_G25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %GRPH_PRESCALE_BIAS_G25, align 4
  %56 = ptrtoint ptr %bias to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bias, align 4
  %conv27 = zext i16 %57 to i32
  %call28 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %37, i32 noundef %41, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %45, i32 noundef %49, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %55, i32 noundef %conv27) #4
  %58 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipp, align 4
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %PRESCALE_VALUES_GRPH_B = getelementptr inbounds %struct.dce_ipp_registers, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %PRESCALE_VALUES_GRPH_B to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %PRESCALE_VALUES_GRPH_B, align 4
  %64 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipp_shift, align 4
  %GRPH_PRESCALE_SCALE_B = getelementptr inbounds %struct.dce_ipp_shift, ptr %65, i32 0, i32 24
  %66 = ptrtoint ptr %GRPH_PRESCALE_SCALE_B to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %GRPH_PRESCALE_SCALE_B, align 1
  %68 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ipp_mask, align 4
  %GRPH_PRESCALE_SCALE_B34 = getelementptr inbounds %struct.dce_ipp_mask, ptr %69, i32 0, i32 24
  %70 = ptrtoint ptr %GRPH_PRESCALE_SCALE_B34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %GRPH_PRESCALE_SCALE_B34, align 4
  %72 = ptrtoint ptr %scale to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %scale, align 2
  %conv36 = zext i16 %73 to i32
  %GRPH_PRESCALE_BIAS_B = getelementptr inbounds %struct.dce_ipp_shift, ptr %65, i32 0, i32 25
  %74 = ptrtoint ptr %GRPH_PRESCALE_BIAS_B to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %GRPH_PRESCALE_BIAS_B, align 1
  %conv38 = zext i8 %75 to i32
  %GRPH_PRESCALE_BIAS_B40 = getelementptr inbounds %struct.dce_ipp_mask, ptr %69, i32 0, i32 25
  %76 = ptrtoint ptr %GRPH_PRESCALE_BIAS_B40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %GRPH_PRESCALE_BIAS_B40, align 4
  %78 = ptrtoint ptr %bias to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %bias, align 4
  %conv42 = zext i16 %79 to i32
  %call43 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %59, i32 noundef %63, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %67, i32 noundef %71, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %77, i32 noundef %conv42) #4
  %80 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.not = icmp eq i32 %81, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipp, align 4
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %PRESCALE_GRPH_CONTROL48 = getelementptr inbounds %struct.dce_ipp_registers, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %PRESCALE_GRPH_CONTROL48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %PRESCALE_GRPH_CONTROL48, align 4
  %88 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ipp_shift, align 4
  %GRPH_PRESCALE_BYPASS50 = getelementptr inbounds %struct.dce_ipp_shift, ptr %89, i32 0, i32 19
  %90 = ptrtoint ptr %GRPH_PRESCALE_BYPASS50 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %GRPH_PRESCALE_BYPASS50, align 1
  %92 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ipp_mask, align 4
  %GRPH_PRESCALE_BYPASS52 = getelementptr inbounds %struct.dce_ipp_mask, ptr %93, i32 0, i32 19
  %94 = ptrtoint ptr %GRPH_PRESCALE_BYPASS52 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %GRPH_PRESCALE_BYPASS52, align 4
  %call53 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %83, i32 noundef %87, i32 noundef 1, i8 noundef zeroext %91, i32 noundef %95, i32 noundef 0) #4
  %96 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ipp, align 4
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %INPUT_GAMMA_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %99, i32 0, i32 13
  %100 = ptrtoint ptr %INPUT_GAMMA_CONTROL to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %INPUT_GAMMA_CONTROL, align 4
  %102 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ipp_shift, align 4
  %GRPH_INPUT_GAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %103, i32 0, i32 26
  %104 = ptrtoint ptr %GRPH_INPUT_GAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %GRPH_INPUT_GAMMA_MODE, align 1
  %106 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ipp_mask, align 4
  %GRPH_INPUT_GAMMA_MODE59 = getelementptr inbounds %struct.dce_ipp_mask, ptr %107, i32 0, i32 26
  %108 = ptrtoint ptr %GRPH_INPUT_GAMMA_MODE59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %GRPH_INPUT_GAMMA_MODE59, align 4
  %call60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %97, i32 noundef %101, i32 noundef 1, i8 noundef zeroext %105, i32 noundef %109, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_ipp_program_input_lut(ptr nocapture noundef readonly %ipp, ptr nocapture noundef readonly %gamma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %DCFE_MEM_PWR_CTRL = getelementptr inbounds %struct.dce_ipp_registers, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %DCFE_MEM_PWR_CTRL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DCFE_MEM_PWR_CTRL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipp, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %DCP_LUT_MEM_PWR_DIS = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DCP_LUT_MEM_PWR_DIS, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %DCP_LUT_MEM_PWR_DIS3 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DCP_LUT_MEM_PWR_DIS3, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %5, i32 noundef %3, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipp, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %DC_LUT_WRITE_EN_MASK = getelementptr inbounds %struct.dce_ipp_registers, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %DC_LUT_WRITE_EN_MASK to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DC_LUT_WRITE_EN_MASK, align 4
  %ipp_shift7 = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %20 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_WRITE_EN_MASK8 = getelementptr inbounds %struct.dce_ipp_shift, ptr %21, i32 0, i32 28
  %22 = ptrtoint ptr %DC_LUT_WRITE_EN_MASK8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DC_LUT_WRITE_EN_MASK8, align 1
  %ipp_mask9 = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %24 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_WRITE_EN_MASK10 = getelementptr inbounds %struct.dce_ipp_mask, ptr %25, i32 0, i32 28
  %26 = ptrtoint ptr %DC_LUT_WRITE_EN_MASK10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DC_LUT_WRITE_EN_MASK10, align 4
  %call11 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %19, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef 7) #4
  %28 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipp, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %DC_LUT_RW_MODE = getelementptr inbounds %struct.dce_ipp_registers, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %DC_LUT_RW_MODE to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DC_LUT_RW_MODE, align 4
  %34 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_RW_MODE16 = getelementptr inbounds %struct.dce_ipp_shift, ptr %35, i32 0, i32 29
  %36 = ptrtoint ptr %DC_LUT_RW_MODE16 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DC_LUT_RW_MODE16, align 1
  %38 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_RW_MODE18 = getelementptr inbounds %struct.dce_ipp_mask, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %DC_LUT_RW_MODE18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DC_LUT_RW_MODE18, align 4
  %call19 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %29, i32 noundef %33, i32 noundef 1, i8 noundef zeroext %37, i32 noundef %41, i32 noundef 0) #4
  %42 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipp, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %DC_LUT_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %DC_LUT_CONTROL to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %DC_LUT_CONTROL, align 4
  %48 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_DATA_R_FORMAT = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 30
  %50 = ptrtoint ptr %DC_LUT_DATA_R_FORMAT to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %DC_LUT_DATA_R_FORMAT, align 1
  %52 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_DATA_R_FORMAT25 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 30
  %54 = ptrtoint ptr %DC_LUT_DATA_R_FORMAT25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %DC_LUT_DATA_R_FORMAT25, align 4
  %DC_LUT_DATA_G_FORMAT = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 31
  %56 = ptrtoint ptr %DC_LUT_DATA_G_FORMAT to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %DC_LUT_DATA_G_FORMAT, align 1
  %conv = zext i8 %57 to i32
  %DC_LUT_DATA_G_FORMAT28 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 31
  %58 = ptrtoint ptr %DC_LUT_DATA_G_FORMAT28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %DC_LUT_DATA_G_FORMAT28, align 4
  %DC_LUT_DATA_B_FORMAT = getelementptr inbounds %struct.dce_ipp_shift, ptr %49, i32 0, i32 32
  %60 = ptrtoint ptr %DC_LUT_DATA_B_FORMAT to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %DC_LUT_DATA_B_FORMAT, align 1
  %conv30 = zext i8 %61 to i32
  %DC_LUT_DATA_B_FORMAT32 = getelementptr inbounds %struct.dce_ipp_mask, ptr %53, i32 0, i32 32
  %62 = ptrtoint ptr %DC_LUT_DATA_B_FORMAT32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %DC_LUT_DATA_B_FORMAT32, align 4
  %call33 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %43, i32 noundef %47, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %51, i32 noundef %55, i32 noundef 3, i32 noundef %conv, i32 noundef %59, i32 noundef 3, i32 noundef %conv30, i32 noundef %63, i32 noundef 3) #4
  %64 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipp, align 4
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %DC_LUT_RW_INDEX = getelementptr inbounds %struct.dce_ipp_registers, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %DC_LUT_RW_INDEX to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %DC_LUT_RW_INDEX, align 4
  %70 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_RW_INDEX38 = getelementptr inbounds %struct.dce_ipp_shift, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %DC_LUT_RW_INDEX38 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %DC_LUT_RW_INDEX38, align 1
  %74 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_RW_INDEX40 = getelementptr inbounds %struct.dce_ipp_mask, ptr %75, i32 0, i32 33
  %76 = ptrtoint ptr %DC_LUT_RW_INDEX40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %DC_LUT_RW_INDEX40, align 4
  %call41 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %65, i32 noundef %69, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %73, i32 noundef %77, i32 noundef 0) #4
  %num_entries = getelementptr inbounds %struct.dc_gamma, ptr %gamma, i32 0, i32 2
  %78 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp189.not = icmp eq i32 %79, 0
  br i1 %cmp189.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.dc_gamma, ptr %gamma, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %dc_fixpt_round.exit188.for.body_crit_edge, %for.body.lr.ph
  %i.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dc_fixpt_round.exit188.for.body_crit_edge ]
  %80 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ipp, align 4
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %DC_LUT_SEQ_COLOR = getelementptr inbounds %struct.dce_ipp_registers, ptr %83, i32 0, i32 19
  %84 = ptrtoint ptr %DC_LUT_SEQ_COLOR to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %DC_LUT_SEQ_COLOR, align 4
  %86 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_SEQ_COLOR47 = getelementptr inbounds %struct.dce_ipp_shift, ptr %87, i32 0, i32 34
  %88 = ptrtoint ptr %DC_LUT_SEQ_COLOR47 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %DC_LUT_SEQ_COLOR47, align 1
  %90 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_SEQ_COLOR49 = getelementptr inbounds %struct.dce_ipp_mask, ptr %91, i32 0, i32 34
  %92 = ptrtoint ptr %DC_LUT_SEQ_COLOR49 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DC_LUT_SEQ_COLOR49, align 4
  %arrayidx = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %i.0190
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %94)
  %.unpack = load i64, ptr %arrayidx, align 8
  %95 = tail call i64 @llvm.abs.i64(i64 %.unpack, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372034707292159, i64 %95)
  %cmp4.i = icmp ugt i64 %95, 9223372034707292159
  br i1 %cmp4.i, label %land.rhs.i, label %for.body.dc_fixpt_round.exit_crit_edge

for.body.dc_fixpt_round.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_round.exit

land.rhs.i:                                       ; preds = %for.body
  %.b62.i = load i1, ptr @dc_fixpt_round.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.if.then42.i_crit_edge, label %if.then.i, !prof !27

land.rhs.i.if.then42.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_round.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 466, i32 noundef 9, ptr noundef null) #4
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then42.i_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %dc_fixpt_round.exit

dc_fixpt_round.exit:                              ; preds = %if.then42.i, %for.body.dc_fixpt_round.exit_crit_edge
  %add.i = add nuw i64 %95, 2147483648
  %shr.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %sub51.i = sub i32 0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack)
  %cmp4764.i = icmp slt i64 %.unpack, 0
  %retval.0.i = select i1 %cmp4764.i, i32 %sub51.i, i32 %conv.i
  %call51 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %81, i32 noundef %85, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %89, i32 noundef %93, i32 noundef %retval.0.i) #4
  %96 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ipp, align 4
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %DC_LUT_SEQ_COLOR55 = getelementptr inbounds %struct.dce_ipp_registers, ptr %99, i32 0, i32 19
  %100 = ptrtoint ptr %DC_LUT_SEQ_COLOR55 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %DC_LUT_SEQ_COLOR55, align 4
  %102 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_SEQ_COLOR57 = getelementptr inbounds %struct.dce_ipp_shift, ptr %103, i32 0, i32 34
  %104 = ptrtoint ptr %DC_LUT_SEQ_COLOR57 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %DC_LUT_SEQ_COLOR57, align 1
  %106 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_SEQ_COLOR59 = getelementptr inbounds %struct.dce_ipp_mask, ptr %107, i32 0, i32 34
  %108 = ptrtoint ptr %DC_LUT_SEQ_COLOR59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %DC_LUT_SEQ_COLOR59, align 4
  %arrayidx61 = getelementptr %struct.dc_gamma, ptr %gamma, i32 0, i32 3, i32 1, i32 %i.0190
  %110 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %110)
  %.unpack163 = load i64, ptr %arrayidx61, align 8
  %111 = tail call i64 @llvm.abs.i64(i64 %.unpack163, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372034707292159, i64 %111)
  %cmp4.i165 = icmp ugt i64 %111, 9223372034707292159
  br i1 %cmp4.i165, label %land.rhs.i167, label %dc_fixpt_round.exit.dc_fixpt_round.exit176_crit_edge

dc_fixpt_round.exit.dc_fixpt_round.exit176_crit_edge: ; preds = %dc_fixpt_round.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_round.exit176

land.rhs.i167:                                    ; preds = %dc_fixpt_round.exit
  %.b62.i166 = load i1, ptr @dc_fixpt_round.__already_done, align 1
  br i1 %.b62.i166, label %land.rhs.i167.if.then42.i169_crit_edge, label %if.then.i168, !prof !27

land.rhs.i167.if.then42.i169_crit_edge:           ; preds = %land.rhs.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42.i169

if.then.i168:                                     ; preds = %land.rhs.i167
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_round.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 466, i32 noundef 9, ptr noundef null) #4
  br label %if.then42.i169

if.then42.i169:                                   ; preds = %if.then.i168, %land.rhs.i167.if.then42.i169_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %dc_fixpt_round.exit176

dc_fixpt_round.exit176:                           ; preds = %if.then42.i169, %dc_fixpt_round.exit.dc_fixpt_round.exit176_crit_edge
  %add.i170 = add nuw i64 %111, 2147483648
  %shr.i171 = lshr i64 %add.i170, 32
  %conv.i172 = trunc i64 %shr.i171 to i32
  %sub51.i173 = sub i32 0, %conv.i172
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack163)
  %cmp4764.i174 = icmp slt i64 %.unpack163, 0
  %retval.0.i175 = select i1 %cmp4764.i174, i32 %sub51.i173, i32 %conv.i172
  %call64 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %97, i32 noundef %101, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %105, i32 noundef %109, i32 noundef %retval.0.i175) #4
  %112 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ipp, align 4
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  %DC_LUT_SEQ_COLOR68 = getelementptr inbounds %struct.dce_ipp_registers, ptr %115, i32 0, i32 19
  %116 = ptrtoint ptr %DC_LUT_SEQ_COLOR68 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %DC_LUT_SEQ_COLOR68, align 4
  %118 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ipp_shift7, align 4
  %DC_LUT_SEQ_COLOR70 = getelementptr inbounds %struct.dce_ipp_shift, ptr %119, i32 0, i32 34
  %120 = ptrtoint ptr %DC_LUT_SEQ_COLOR70 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %DC_LUT_SEQ_COLOR70, align 1
  %122 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ipp_mask9, align 4
  %DC_LUT_SEQ_COLOR72 = getelementptr inbounds %struct.dce_ipp_mask, ptr %123, i32 0, i32 34
  %124 = ptrtoint ptr %DC_LUT_SEQ_COLOR72 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %DC_LUT_SEQ_COLOR72, align 4
  %arrayidx74 = getelementptr %struct.dc_gamma, ptr %gamma, i32 0, i32 3, i32 2, i32 %i.0190
  %126 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %126)
  %.unpack164 = load i64, ptr %arrayidx74, align 8
  %127 = tail call i64 @llvm.abs.i64(i64 %.unpack164, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372034707292159, i64 %127)
  %cmp4.i177 = icmp ugt i64 %127, 9223372034707292159
  br i1 %cmp4.i177, label %land.rhs.i179, label %dc_fixpt_round.exit176.dc_fixpt_round.exit188_crit_edge

dc_fixpt_round.exit176.dc_fixpt_round.exit188_crit_edge: ; preds = %dc_fixpt_round.exit176
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_round.exit188

land.rhs.i179:                                    ; preds = %dc_fixpt_round.exit176
  %.b62.i178 = load i1, ptr @dc_fixpt_round.__already_done, align 1
  br i1 %.b62.i178, label %land.rhs.i179.if.then42.i181_crit_edge, label %if.then.i180, !prof !27

land.rhs.i179.if.then42.i181_crit_edge:           ; preds = %land.rhs.i179
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42.i181

if.then.i180:                                     ; preds = %land.rhs.i179
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_round.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 466, i32 noundef 9, ptr noundef null) #4
  br label %if.then42.i181

if.then42.i181:                                   ; preds = %if.then.i180, %land.rhs.i179.if.then42.i181_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %dc_fixpt_round.exit188

dc_fixpt_round.exit188:                           ; preds = %if.then42.i181, %dc_fixpt_round.exit176.dc_fixpt_round.exit188_crit_edge
  %add.i182 = add nuw i64 %127, 2147483648
  %shr.i183 = lshr i64 %add.i182, 32
  %conv.i184 = trunc i64 %shr.i183 to i32
  %sub51.i185 = sub i32 0, %conv.i184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack164)
  %cmp4764.i186 = icmp slt i64 %.unpack164, 0
  %retval.0.i187 = select i1 %cmp4764.i186, i32 %sub51.i185, i32 %conv.i184
  %call77 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %113, i32 noundef %117, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %121, i32 noundef %125, i32 noundef %retval.0.i187) #4
  %inc = add nuw i32 %i.0190, 1
  %128 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_entries, align 8
  %cmp = icmp ult i32 %inc, %129
  br i1 %cmp, label %dc_fixpt_round.exit188.for.body_crit_edge, label %dc_fixpt_round.exit188.for.end_crit_edge

dc_fixpt_round.exit188.for.end_crit_edge:         ; preds = %dc_fixpt_round.exit188
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

dc_fixpt_round.exit188.for.body_crit_edge:        ; preds = %dc_fixpt_round.exit188
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %dc_fixpt_round.exit188.for.end_crit_edge, %if.end.for.end_crit_edge
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 4
  %DCFE_MEM_PWR_CTRL79 = getelementptr inbounds %struct.dce_ipp_registers, ptr %131, i32 0, i32 14
  %132 = ptrtoint ptr %DCFE_MEM_PWR_CTRL79 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %DCFE_MEM_PWR_CTRL79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool80.not = icmp eq i32 %133, 0
  br i1 %tobool80.not, label %for.end.if.end91_crit_edge, label %if.then81

for.end.if.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ipp, align 4
  %136 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ipp_shift7, align 4
  %DCP_LUT_MEM_PWR_DIS87 = getelementptr inbounds %struct.dce_ipp_shift, ptr %137, i32 0, i32 27
  %138 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS87 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %DCP_LUT_MEM_PWR_DIS87, align 1
  %140 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ipp_mask9, align 4
  %DCP_LUT_MEM_PWR_DIS89 = getelementptr inbounds %struct.dce_ipp_mask, ptr %141, i32 0, i32 27
  %142 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS89 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DCP_LUT_MEM_PWR_DIS89, align 4
  %call90 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %135, i32 noundef %133, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %139, i32 noundef %143, i32 noundef 0) #4
  br label %if.end91

if.end91:                                         ; preds = %if.then81, %for.end.if.end91_crit_edge
  %144 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ipp, align 4
  %146 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs, align 4
  %PRESCALE_GRPH_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %147, i32 0, i32 9
  %148 = ptrtoint ptr %PRESCALE_GRPH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %PRESCALE_GRPH_CONTROL, align 4
  %150 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ipp_shift7, align 4
  %GRPH_PRESCALE_BYPASS = getelementptr inbounds %struct.dce_ipp_shift, ptr %151, i32 0, i32 19
  %152 = ptrtoint ptr %GRPH_PRESCALE_BYPASS to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %GRPH_PRESCALE_BYPASS, align 1
  %154 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ipp_mask9, align 4
  %GRPH_PRESCALE_BYPASS97 = getelementptr inbounds %struct.dce_ipp_mask, ptr %155, i32 0, i32 19
  %156 = ptrtoint ptr %GRPH_PRESCALE_BYPASS97 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %GRPH_PRESCALE_BYPASS97, align 4
  %call98 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %145, i32 noundef %149, i32 noundef 1, i8 noundef zeroext %153, i32 noundef %157, i32 noundef 1) #4
  %158 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ipp, align 4
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %INPUT_GAMMA_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %161, i32 0, i32 13
  %162 = ptrtoint ptr %INPUT_GAMMA_CONTROL to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %INPUT_GAMMA_CONTROL, align 4
  %164 = ptrtoint ptr %ipp_shift7 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ipp_shift7, align 4
  %GRPH_INPUT_GAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %165, i32 0, i32 26
  %166 = ptrtoint ptr %GRPH_INPUT_GAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %GRPH_INPUT_GAMMA_MODE, align 1
  %168 = ptrtoint ptr %ipp_mask9 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ipp_mask9, align 4
  %GRPH_INPUT_GAMMA_MODE104 = getelementptr inbounds %struct.dce_ipp_mask, ptr %169, i32 0, i32 26
  %170 = ptrtoint ptr %GRPH_INPUT_GAMMA_MODE104 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %GRPH_INPUT_GAMMA_MODE104, align 4
  %call105 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %159, i32 noundef %163, i32 noundef 1, i8 noundef zeroext %167, i32 noundef %171, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_ipp_set_degamma(ptr nocapture noundef readonly %ipp, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp1 = icmp ne i32 %mode, 0
  %spec.select = xor i1 %cmp, %cmp1
  br i1 %spec.select, label %land.rhs, label %entry.do.end44_crit_edge

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @dce_ipp_set_degamma.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.then41_crit_edge, label %if.then, !prof !27

land.rhs.if.then41_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dce_ipp_set_degamma.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 226, i32 noundef 9, ptr noundef null) #4
  br label %if.then41

if.then41:                                        ; preds = %if.then, %land.rhs.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %entry.do.end44_crit_edge
  %cond = zext i1 %cmp to i32
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DEGAMMA_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %DEGAMMA_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DEGAMMA_CONTROL, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %GRPH_DEGAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %GRPH_DEGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %GRPH_DEGAMMA_MODE, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %GRPH_DEGAMMA_MODE45 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %GRPH_DEGAMMA_MODE45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %GRPH_DEGAMMA_MODE45, align 4
  %CURSOR_DEGAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 36
  %14 = ptrtoint ptr %CURSOR_DEGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %CURSOR_DEGAMMA_MODE, align 1
  %conv = zext i8 %15 to i32
  %CURSOR_DEGAMMA_MODE48 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 36
  %16 = ptrtoint ptr %CURSOR_DEGAMMA_MODE48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %CURSOR_DEGAMMA_MODE48, align 4
  %CURSOR2_DEGAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 37
  %18 = ptrtoint ptr %CURSOR2_DEGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CURSOR2_DEGAMMA_MODE, align 1
  %conv50 = zext i8 %19 to i32
  %CURSOR2_DEGAMMA_MODE52 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 37
  %20 = ptrtoint ptr %CURSOR2_DEGAMMA_MODE52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %CURSOR2_DEGAMMA_MODE52, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %cond, i32 noundef %conv, i32 noundef %17, i32 noundef %cond, i32 noundef %conv50, i32 noundef %21, i32 noundef %cond) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_ipp_set_degamma(ptr nocapture noundef readonly %ipp, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp1 = icmp ne i32 %mode, 0
  %spec.select = xor i1 %cmp, %cmp1
  br i1 %spec.select, label %land.rhs, label %entry.do.end44_crit_edge

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @dce60_ipp_set_degamma.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.then41_crit_edge, label %if.then, !prof !27

land.rhs.if.then41_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dce60_ipp_set_degamma.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 242, i32 noundef 9, ptr noundef null) #4
  br label %if.then41

if.then41:                                        ; preds = %if.then, %land.rhs.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %entry.do.end44_crit_edge
  %cond = zext i1 %cmp to i32
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %regs = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DEGAMMA_CONTROL = getelementptr inbounds %struct.dce_ipp_registers, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %DEGAMMA_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DEGAMMA_CONTROL, align 4
  %ipp_shift = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 2
  %6 = ptrtoint ptr %ipp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_shift, align 4
  %GRPH_DEGAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %GRPH_DEGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %GRPH_DEGAMMA_MODE, align 1
  %ipp_mask = getelementptr inbounds %struct.dce_ipp, ptr %ipp, i32 0, i32 3
  %10 = ptrtoint ptr %ipp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipp_mask, align 4
  %GRPH_DEGAMMA_MODE45 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %GRPH_DEGAMMA_MODE45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %GRPH_DEGAMMA_MODE45, align 4
  %CURSOR_DEGAMMA_MODE = getelementptr inbounds %struct.dce_ipp_shift, ptr %7, i32 0, i32 36
  %14 = ptrtoint ptr %CURSOR_DEGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %CURSOR_DEGAMMA_MODE, align 1
  %conv = zext i8 %15 to i32
  %CURSOR_DEGAMMA_MODE48 = getelementptr inbounds %struct.dce_ipp_mask, ptr %11, i32 0, i32 36
  %16 = ptrtoint ptr %CURSOR_DEGAMMA_MODE48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %CURSOR_DEGAMMA_MODE48, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %cond, i32 noundef %conv, i32 noundef %17, i32 noundef %cond) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @dce_ipp_funcs, !1, !"dce_ipp_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c", i32 250, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c", i32 94, i32 3}
!4 = !{ptr @__func__.dce_ipp_cursor_set_attributes, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 466, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"dc_fixpt_half", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 69, i32 32}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c", i32 226, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dce60_ipp_funcs, !14, !"dce60_ipp_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c", i32 259, i32 31}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_ipp.c", i32 242, i32 2}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 2000, i32 1}
