; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_compressor.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce110_compressor_reg_offsets = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.compressor_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.compressor = type { ptr, i32, i8, ptr, %union.anon.2, %union.fbc_physical_address, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.2 = type { i32 }
%union.fbc_physical_address = type { i64 }
%struct.dce110_compressor = type { %struct.compressor, %struct.dce110_compressor_reg_offsets }
%struct.anon.4 = type { i32, i32 }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }

@__func__.dce110_compressor_power_up_fbc = private unnamed_addr constant [31 x i8] c"dce110_compressor_power_up_fbc\00", align 1
@__func__.dce110_compressor_enable_fbc = private unnamed_addr constant [29 x i8] c"dce110_compressor_enable_fbc\00", align 1
@__func__.dce110_compressor_disable_fbc = private unnamed_addr constant [30 x i8] c"dce110_compressor_disable_fbc\00", align 1
@__func__.dce110_compressor_is_fbc_enabled_in_hw = private unnamed_addr constant [39 x i8] c"dce110_compressor_is_fbc_enabled_in_hw\00", align 1
@reg_offsets = internal constant { [3 x %struct.dce110_compressor_reg_offsets], [40 x i8] } { [3 x %struct.dce110_compressor_reg_offsets] [%struct.dce110_compressor_reg_offsets zeroinitializer, %struct.dce110_compressor_reg_offsets { i32 512, i32 512 }, %struct.dce110_compressor_reg_offsets { i32 1024, i32 1024 }], [40 x i8] zeroinitializer }, align 32
@__func__.dce110_compressor_program_compressed_surface_address_and_pitch = private unnamed_addr constant [63 x i8] c"dce110_compressor_program_compressed_surface_address_and_pitch\00", align 1
@dce110_compressor_program_compressed_surface_address_and_pitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @__func__.dce110_compressor_program_compressed_surface_address_and_pitch, ptr @.str.1, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014[drm] %s: Unexpected DCE11 compression ratio\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c\00", [60 x i8] zeroinitializer }, align 32
@dce110_compressor_program_compressed_surface_address_and_pitch._entry_ptr = internal global ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry, section ".printk_index", align 4
@__func__.dce110_compressor_set_fbc_invalidation_triggers = private unnamed_addr constant [48 x i8] c"dce110_compressor_set_fbc_invalidation_triggers\00", align 1
@dce110_compressor_funcs = internal constant { %struct.compressor_funcs, [40 x i8] } { %struct.compressor_funcs { ptr @dce110_compressor_power_up_fbc, ptr @dce110_compressor_enable_fbc, ptr @dce110_compressor_disable_fbc, ptr @dce110_compressor_set_fbc_invalidation_triggers, ptr @dce110_compressor_program_compressed_surface_address_and_pitch, ptr @dce110_compressor_is_fbc_enabled_in_hw }, [40 x i8] zeroinitializer }, align 32
@__func__.wait_for_fbc_state_changed = private unnamed_addr constant [27 x i8] c"wait_for_fbc_state_changed\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_for_fbc_state_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.wait_for_fbc_state_changed, ptr @.str.1, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014[drm] %s: wait counter exceeded, changes to HW not applied\00", [35 x i8] zeroinitializer }, align 32
@wait_for_fbc_state_changed._entry_ptr = internal global ptr @wait_for_fbc_state_changed._entry, section ".printk_index", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FBC status changed to %d\00", [39 x i8] zeroinitializer }, align 32
@__func__.reset_lb_on_vblank = private unnamed_addr constant [19 x i8] c"reset_lb_on_vblank\00", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Frame count did not increase for 100ms.\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"reg_offsets\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 47, i32 51 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 330, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"dce110_compressor_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 428, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 133, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 136, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 103, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry, ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry_ptr, ptr @wait_for_fbc_state_changed._entry, ptr @wait_for_fbc_state_changed._entry_ptr, ptr @reg_offsets, ptr @.str, ptr @.str.1, ptr @dce110_compressor_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_compressor_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_fbc_state_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_power_up_fbc(ptr nocapture noundef %compressor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %and.i50 = and i32 %call, 2147287038
  %or.i52 = or i32 %and.i50, -2147352576
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %options, align 8
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %and.i53 = and i32 %or.i52, -65794
  %spec.select = select i1 %cmp.not, i32 %or.i52, i32 %and.i53
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef 640, i32 noundef %spec.select, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef 645, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %or.i59 = or i32 %call7, 65793
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef 645, i32 noundef %or.i59, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %10 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressor, align 8
  %call13 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef 644, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %or.i61 = or i32 %call13, 524288
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 644, i32 noundef %or.i61, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %or.i63 = or i32 %call13, 524303
  %14 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef 644, i32 noundef %or.i63, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %min_compress_ratio = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 16
  %16 = ptrtoint ptr %min_compress_ratio to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %min_compress_ratio, align 8
  %17 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %18, i32 noundef 649, i32 noundef 0, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  %19 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %20, i32 noundef 650, i32 noundef 16777215, ptr noundef nonnull @__func__.dce110_compressor_power_up_fbc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_enable_fbc(ptr nocapture noundef %compressor, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %options, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %compressor, align 8
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef 675, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end3.i:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %compressor, align 8
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef 674, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %5 = and i32 %call5.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.end3.i.if.then_crit_edge, label %if.then8.i

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then8.i:                                       ; preds = %if.end3.i
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %call10.i = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i30.i = and i32 %call10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool12.not.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool12.not.i, label %if.then8.i.if.then_crit_edge, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.then8.i.if.then_crit_edge, %if.end3.i.if.then_crit_edge
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  %call1 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %params, align 4
  %or.i = and i32 %call1, -16
  %shl.i = shl i32 %11, 1
  %and42.i = and i32 %shl.i, 14
  %and.i39 = or i32 %and42.i, %or.i
  %or.i40 = or i32 %and.i39, 1
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 640, i32 noundef %or.i40, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %14 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_enabled, align 8
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %params, align 4
  %add = add i32 %16, 1
  %attached_inst = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %17 = ptrtoint ptr %attached_inst to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %attached_inst, align 4
  %18 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef 640, i32 noundef %and.i39, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  %20 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %compressor, align 8
  %call9 = tail call i32 @dm_read_reg_func(ptr noundef %21, i32 noundef 674, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  %or.i45 = and i32 %call9, -520159241
  %or.i47 = or i32 %or.i45, 335609864
  %22 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %23, i32 noundef 674, i32 noundef %or.i47, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  %24 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef 640, i32 noundef %or.i40, ptr noundef nonnull @__func__.dce110_compressor_enable_fbc) #6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then
  %counter.016.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %compressor, align 8
  %call.i49 = tail call i32 @dm_read_reg_func(ptr noundef %27, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %28 = and i32 %call.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %if.end.i, label %if.else.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #6
  %inc.i = add nuw nsw i32 %counter.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #9
  br label %if.end

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.end.i, %if.then8.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_compressor_is_fbc_enabled_in_hw(ptr nocapture noundef readonly %compressor, ptr noundef writeonly %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 675, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %inst, null
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef 674, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %4 = and i32 %call5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.then8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %compressor, align 8
  %call10 = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i30 = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool12.not = icmp eq i32 %and.i30, 0
  br i1 %tobool12.not, label %if.then8.cleanup_crit_edge, label %if.then13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  %cmp14.not = icmp eq ptr %inst, null
  br i1 %cmp14.not, label %if.then13.cleanup_crit_edge, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then13.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %attached_inst16 = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %7 = ptrtoint ptr %attached_inst16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attached_inst16, align 4
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %inst, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then.cleanup_crit_edge ], [ true, %if.then13.cleanup_crit_edge ], [ false, %if.then8.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_disable_fbc(ptr nocapture noundef %compressor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %options, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %compressor, align 8
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef 675, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then.if.then1_crit_edge

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.end3.i:                                        ; preds = %if.then
  %3 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %compressor, align 8
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef 674, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %5 = and i32 %call5.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.end3.i.if.end8_crit_edge, label %if.then8.i

if.end3.i.if.end8_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then8.i:                                       ; preds = %if.end3.i
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %call10.i = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_is_fbc_enabled_in_hw) #6
  %and.i30.i = and i32 %call10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool12.not.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool12.not.i, label %if.then8.i.if.end8_crit_edge, label %if.then8.i.if.then1_crit_edge

if.then8.i.if.then1_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.then8.i.if.end8_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then1:                                         ; preds = %if.then8.i.if.then1_crit_edge, %if.then.if.then1_crit_edge
  %attached_inst16.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %8 = ptrtoint ptr %attached_inst16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attached_inst16.i, align 4
  %10 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressor, align 8
  %call2 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef 640, ptr noundef nonnull @__func__.dce110_compressor_disable_fbc) #6
  %and.i = and i32 %call2, -2
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 640, i32 noundef %and.i, ptr noundef nonnull @__func__.dce110_compressor_disable_fbc) #6
  %14 = ptrtoint ptr %attached_inst16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %attached_inst16.i, align 4
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %15 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_enabled, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then1
  %counter.016.i = phi i32 [ 0, %if.then1 ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %compressor, align 8
  %call.i17 = tail call i32 @dm_read_reg_func(ptr noundef %17, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %18 = and i32 %call.i17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.else.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #6
  %inc.i = add nuw nsw i32 %counter.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #9
  br label %if.end

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.end.i
  %21 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %offsets.i = getelementptr inbounds %struct.dce110_compressor, ptr %compressor, i32 0, i32 1
  %arrayidx.i = getelementptr [3 x %struct.dce110_compressor_reg_offsets], ptr @reg_offsets, i32 0, i32 %21
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %offsets.i, align 8
  %26 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %compressor, align 8
  %28 = lshr i64 %24, 32
  %29 = trunc i64 %28 to i32
  %add.i = add i32 %29, 7076
  %call.i18 = tail call i32 @dm_read_reg_func(ptr noundef %27, i32 noundef %add.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  %30 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %compressor, align 8
  %32 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offsets.i, align 8
  %add5.i = add i32 %33, 7076
  %call6.i = tail call i32 @dm_read_reg_func(ptr noundef %31, i32 noundef %add5.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i18, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call.i18, %call6.i
  br i1 %cmp.not.i, label %if.then6.if.end8_crit_edge, label %if.then.i19

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then.i19:                                      ; preds = %if.then6
  %34 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %compressor, align 8
  %36 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offsets.i, align 8
  %add10.i = add i32 %37, 6860
  %call11.i = tail call i32 @dm_read_reg_func(ptr noundef %35, i32 noundef %add10.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  %or.i69.i = or i32 %call11.i, 19
  %38 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %compressor, align 8
  %40 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offsets.i, align 8
  %add17.i = add i32 %41, 6860
  tail call void @dm_write_reg_func(ptr noundef %39, i32 noundef %add17.i, i32 noundef %or.i69.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  %42 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %compressor, align 8
  %44 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offsets.i, align 8
  %add21.i = add i32 %45, 7078
  %call22.i = tail call i32 @dm_read_reg_func(ptr noundef %43, i32 noundef %add21.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i20.for.body.i_crit_edge, %if.then.i19
  %retry.073.i = phi i32 [ 10000, %if.then.i19 ], [ %dec.i, %if.end.i20.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %compressor, align 8
  %48 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offsets.i, align 8
  %add27.i = add i32 %49, 7078
  %call28.i = tail call i32 @dm_read_reg_func(ptr noundef %47, i32 noundef %add27.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call22.i, %call28.i
  br i1 %cmp29.not.i, label %if.end.i20, label %for.body.i.if.end32.i_crit_edge

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end.i20:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #6
  %dec.i = add nsw i32 %retry.073.i, -1
  %cond.i = icmp eq i32 %dec.i, 0
  br i1 %cond.i, label %if.then31.i, label %if.end.i20.for.body.i_crit_edge

if.end.i20.for.body.i_crit_edge:                  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then31.i:                                      ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %for.body.i.if.end32.i_crit_edge
  %51 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %compressor, align 8
  %53 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offsets.i, align 8
  %add36.i = add i32 %54, 6860
  %call37.i = tail call i32 @dm_read_reg_func(ptr noundef %52, i32 noundef %add36.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  %and.i70.i = and i32 %call37.i, -20
  %or.i71.i = or i32 %and.i70.i, 2
  %55 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %compressor, align 8
  %57 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offsets.i, align 8
  %add43.i = add i32 %58, 6860
  tail call void @dm_write_reg_func(ptr noundef %56, i32 noundef %add43.i, i32 noundef %or.i71.i, ptr noundef nonnull @__func__.reset_lb_on_vblank) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end32.i, %if.then6.if.end8_crit_edge, %if.end.if.end8_crit_edge, %if.then8.i.if.end8_crit_edge, %if.end3.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_program_compressed_surface_address_and_pitch(ptr nocapture noundef %compressor, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %compr_surface_address = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 5
  %0 = ptrtoint ptr %compr_surface_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compr_surface_address, align 8
  %offsets = getelementptr inbounds %struct.dce110_compressor, ptr %compressor, i32 0, i32 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %arrayidx = getelementptr [3 x %struct.dce110_compressor_reg_offsets], ptr @reg_offsets, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %offsets, align 8
  %7 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %compressor, align 8
  %9 = lshr i64 %5, 32
  %10 = trunc i64 %9 to i32
  %add = add i32 %10, 6683
  tail call void @dm_write_reg_func(ptr noundef %8, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  %11 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %compressor, align 8
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets, align 8
  %add5 = add i32 %14, 6681
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %add5, i32 noundef 0, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  %15 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %compressor, align 8
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offsets, align 8
  %add9 = add i32 %18, 6683
  %high_part = getelementptr inbounds %struct.anon.4, ptr %compr_surface_address, i32 0, i32 1
  %19 = ptrtoint ptr %high_part to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %high_part, align 4
  tail call void @dm_write_reg_func(ptr noundef %16, i32 noundef %add9, i32 noundef %20, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  %21 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %compressor, align 8
  %23 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offsets, align 8
  %add14 = add i32 %24, 6681
  tail call void @dm_write_reg_func(ptr noundef %22, i32 noundef %add14, i32 noundef %1, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  %source_view_width = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 1
  %25 = ptrtoint ptr %source_view_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %source_view_width, align 4
  %add.i = add i32 %26, 255
  %div1.i = and i32 %add.i, -256
  %min_compress_ratio = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 16
  %27 = ptrtoint ptr %min_compress_ratio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_compress_ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div44 = lshr exact i32 %div1.i, 3
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %fbc_pitch.0 = phi i32 [ %div44, %if.then ], [ %div1.i, %do.end ]
  %29 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %compressor, align 8
  %31 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offsets, align 8
  %add20 = add i32 %32, 6682
  tail call void @dm_write_reg_func(ptr noundef %30, i32 noundef %add20, i32 noundef 0, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  %shl.i = shl i32 %fbc_pitch.0, 6
  %and42.i = and i32 %shl.i, 131008
  %33 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %compressor, align 8
  %35 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets, align 8
  %add25 = add i32 %36, 6682
  tail call void @dm_write_reg_func(ptr noundef %34, i32 noundef %add25, i32 noundef %and42.i, ptr noundef nonnull @__func__.dce110_compressor_program_compressed_surface_address_and_pitch) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_set_fbc_invalidation_triggers(ptr nocapture noundef readonly %compressor, i32 noundef %fbc_trigger) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 667, ptr noundef nonnull @__func__.dce110_compressor_set_fbc_invalidation_triggers) #6
  %and.i = and i32 %call, -983041
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 667, i32 noundef %and.i, ptr noundef nonnull @__func__.dce110_compressor_set_fbc_invalidation_triggers) #6
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  %call4 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef 642, ptr noundef nonnull @__func__.dce110_compressor_set_fbc_invalidation_triggers) #6
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef 642, i32 noundef %fbc_trigger, ptr noundef nonnull @__func__.dce110_compressor_set_fbc_invalidation_triggers) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dce110_compressor_create(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %options.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2147483648, ptr %options.i, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %call7.i.i, align 8
  %embedded_panel_h_size.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %embedded_panel_h_size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %embedded_panel_h_size.i, align 8
  %embedded_panel_v_size.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %embedded_panel_v_size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %embedded_panel_v_size.i, align 4
  %vram_width.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vram_width.i, align 4
  %memory_bus_width.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %memory_bus_width.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %memory_bus_width.i, align 8
  %banks_num.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 9
  %attached_inst.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %attached_inst.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %attached_inst.i, align 4
  %is_enabled.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_enabled.i, align 8
  %funcs.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 3
  %10 = call ptr @memset(ptr %banks_num.i, i32 0, i32 32)
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dce110_compressor_funcs, ptr %funcs.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_compressor_construct(ptr nocapture noundef writeonly %compressor, ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2147483648, ptr %options, align 8
  %lpt_channels_num = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 15
  %1 = ptrtoint ptr %lpt_channels_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %lpt_channels_num, align 4
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %compressor, align 8
  %embedded_panel_h_size = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 6
  %3 = ptrtoint ptr %embedded_panel_h_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %embedded_panel_h_size, align 8
  %embedded_panel_v_size = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 7
  %4 = ptrtoint ptr %embedded_panel_v_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %embedded_panel_v_size, align 4
  %vram_width = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vram_width, align 4
  %memory_bus_width = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 8
  %7 = ptrtoint ptr %memory_bus_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %memory_bus_width, align 8
  %banks_num = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 9
  %attached_inst = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %8 = ptrtoint ptr %attached_inst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %attached_inst, align 4
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %9 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_enabled, align 8
  %funcs = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 3
  %10 = call ptr @memset(ptr %banks_num, i32 0, i32 32)
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dce110_compressor_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_compressor_destroy(ptr nocapture noundef %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %compressor, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @get_max_support_fbc_buffersize(ptr nocapture noundef writeonly %max_x, ptr nocapture noundef writeonly %max_y) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3840, ptr %max_x, align 4
  %1 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2400, ptr %max_y, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__func__.dce110_compressor_power_up_fbc, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 148, i32 10}
!2 = !{ptr @__func__.dce110_compressor_enable_fbc, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 201, i32 11}
!4 = !{ptr @__func__.dce110_compressor_disable_fbc, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 250, i32 15}
!6 = !{ptr @__func__.dce110_compressor_is_fbc_enabled_in_hw, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 275, i32 10}
!8 = !{ptr @__func__.dce110_compressor_program_compressed_surface_address_and_pitch, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 310, i32 2}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 330, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dce110_compressor_program_compressed_surface_address_and_pitch._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__func__.dce110_compressor_set_fbc_invalidation_triggers, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 354, i32 19}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.wait_for_fbc_state_changed, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 122, i32 11}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 133, i32 3}
!24 = !{ptr @wait_for_fbc_state_changed._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wait_for_fbc_state_changed._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 136, i32 3}
!28 = !{ptr @__func__.reset_lb_on_vblank, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 83, i32 15}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 103, i32 4}
!32 = !{ptr @reg_offsets, !33, !"reg_offsets", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 47, i32 51}
!34 = !{ptr @dce110_compressor_funcs, !35, !"dce110_compressor_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c", i32 428, i32 38}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
