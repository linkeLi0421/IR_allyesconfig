; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/color/color_gamma.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_x_point = type { i32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.translate_from_linear_space_args = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, ptr }
%struct.gamma_coefficients = type { [3 x %struct.fixed31_32], [3 x %struct.fixed31_32], [3 x %struct.fixed31_32], [3 x %struct.fixed31_32], [3 x %struct.fixed31_32], %struct.fixed31_32, %struct.fixed31_32 }
%struct.regamma_lut = type { %union.regamma_flags, %union.anon.1 }
%union.regamma_flags = type { i32 }
%union.anon.1 = type { %struct.regamma_coeff, [1476 x i8] }
%struct.regamma_coeff = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32] }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }
%struct.dc_gamma = type { %struct.kref, i32, i32, %struct.dc_gamma_entries, ptr, i8 }
%struct.dc_gamma_entries = type { [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32] }
%struct.pwl_float_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.pwl_float_data_ex = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.gamma_pixel = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.pixel_gamma_point = type { %struct.gamma_point, %struct.gamma_point, %struct.gamma_point }
%struct.gamma_point = type { i32, i32, i32, %struct.fixed31_32 }
%struct.hdr_tm_params = type { i32, i32, i32, i32, i32, i32 }
%struct.calculate_buffer = type { i32, [16 x %struct.fixed31_32], %struct.fixed31_32 }

@coordinates_x = internal global { [514 x %struct.hw_x_point], [5136 x i8] } zeroinitializer, align 32
@dc_fixpt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@numerator01 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 31308, i32 180000, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@numerator02 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12920, i32 4500, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@numerator03 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 55, i32 99, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@numerator04 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 55, i32 99, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@numerator05 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2400, i32 2200, i32 2200, i32 2400, i32 2600], [44 x i8] zeroinitializer }, align 32
@build_evenly_distributed_points.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.build_custom_gamma_mapping_coefficients_worker = private unnamed_addr constant [47 x i8] c"build_custom_gamma_mapping_coefficients_worker\00", align 1
@__func__.calculate_mapped_value = private unnamed_addr constant [23 x i8] c"calculate_mapped_value\00", align 1
@switch.table.build_coefficients = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 4], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"coordinates_x\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 41, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 249, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"numerator01\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 63, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"numerator02\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 64, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"numerator03\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 65, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"numerator04\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 66, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"numerator05\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 67, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1474, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 624, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [32 x i8] c"switch.table.build_coefficients\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @coordinates_x, ptr @.str, ptr @numerator01, ptr @numerator02, ptr @numerator03, ptr @numerator04, ptr @numerator05, ptr @.str.1, ptr @.str.2, ptr @switch.table.build_coefficients], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coordinates_x to i32), i32 20560, i32 25696, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numerator01 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numerator02 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numerator03 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numerator04 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numerator05 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.build_coefficients to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_x_points_distribution() local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp1 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i64 549755813888, ptr getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 512, i32 1), align 8
  store i64 549755813888, ptr getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 513, i32 1), align 8
  br label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.inc15.for.body7.preheader_crit_edge, %entry
  %indvars.iv = phi i32 [ 512, %entry ], [ %indvars.iv.next, %for.inc15.for.body7.preheader_crit_edge ]
  %segment.033 = phi i32 [ 6, %entry ], [ %dec, %for.inc15.for.body7.preheader_crit_edge ]
  %region_size.sroa.0.032 = phi i64 [ 549755813888, %entry ], [ %1, %for.inc15.for.body7.preheader_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %region_size.sroa.0.032, i64 noundef 8589934592) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp1) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp1, i64 noundef %1, i64 noundef 68719476736) #8
  %2 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %increment.sroa.0.0.copyload = load i64, ptr %tmp1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp1) #8
  %add = shl i32 %segment.033, 4
  %mul = add nsw i32 %add, 400
  %x = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %mul, i32 1
  %3 = ptrtoint ptr %x to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %1, ptr %x, align 8
  %add3 = add nsw i32 %add, 401
  br label %for.body7

for.body7:                                        ; preds = %dc_fixpt_add.exit.for.body7_crit_edge, %for.body7.preheader
  %index.031 = phi i32 [ %inc, %dc_fixpt_add.exit.for.body7_crit_edge ], [ %add3, %for.body7.preheader ]
  %x9 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %index.031, i32 1
  %sub = add nsw i32 %index.031, -1
  %x12 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %sub, i32 1
  %4 = ptrtoint ptr %x12 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack = load i64, ptr %x12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack)
  %cmp.i = icmp slt i64 %.unpack, 0
  %sub.i = sub i64 9223372036854775807, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %increment.sroa.0.0.copyload)
  %cmp4.not.i = icmp slt i64 %sub.i, %increment.sroa.0.0.copyload
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %for.body7.dc_fixpt_add.exit_crit_edge

for.body7.dc_fixpt_add.exit_crit_edge:            ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack)
  %cmp6.i = icmp sgt i64 %.unpack, -1
  %sub8.i = sub i64 -9223372036854775808, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %increment.sroa.0.0.copyload)
  %cmp10.i = icmp sgt i64 %sub8.i, %increment.sroa.0.0.copyload
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_add.exit_crit_edge

lor.rhs.i.dc_fixpt_add.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !40
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !40
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !40
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_add.exit_crit_edge, %for.body7.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.unpack, %increment.sroa.0.0.copyload
  %5 = ptrtoint ptr %x9 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add.i, ptr %x9, align 8
  %inc = add nuw nsw i32 %index.031, 1
  %exitcond.not = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond.not, label %for.inc15, label %dc_fixpt_add.exit.for.body7_crit_edge

dc_fixpt_add.exit.for.body7_crit_edge:            ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.inc15:                                        ; preds = %dc_fixpt_add.exit
  %dec = add nsw i32 %segment.033, -1
  %cmp = icmp sgt i32 %segment.033, -25
  %indvars.iv.next = add nsw i32 %indvars.iv, -16
  br i1 %cmp, label %for.inc15.for.body7.preheader_crit_edge, label %for.end16

for.inc15.for.body7.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.preheader

for.end16:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local void @log_x_points_distribution(ptr nocapture noundef %logger) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @precompute_pq() local_unnamed_addr #0 align 64 {
entry:
  %scaling_factor = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaling_factor) #8
  %0 = ptrtoint ptr %scaling_factor to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %scaling_factor, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaling_factor, i64 noundef 80, i64 noundef 10000) #8
  %call = call ptr @mod_color_get_table(i32 noundef 0) #8
  %1 = call ptr @memset(ptr %call, i32 0, i32 256)
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %coord_x.023 = phi ptr [ %incdec.ptr, %for.body3.for.body3_crit_edge ], [ getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 32), %entry ]
  %i.122 = phi i32 [ %inc9, %for.body3.for.body3_crit_edge ], [ 32, %entry ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %x4 = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.023, i32 0, i32 1
  %2 = ptrtoint ptr %x4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %x4, align 8
  %3 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %4 = ptrtoint ptr %scaling_factor to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load = load i64, ptr %scaling_factor, align 8
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] %3, [1 x i64] %.fca.0.insert) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %x.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx6 = getelementptr %struct.fixed31_32, ptr %call, i32 %i.122
  %.fca.0.insert15 = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert15, ptr noundef %arrayidx6)
  %incdec.ptr = getelementptr %struct.hw_x_point, ptr %coord_x.023, i32 1
  %inc9 = add nuw nsw i32 %i.122, 1
  %exitcond.not = icmp eq i32 %inc9, 513
  br i1 %exitcond.not, label %for.end10, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.end10:                                        ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaling_factor) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mod_color_get_table(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @compute_pq([1 x i64] %in_x.coerce, ptr nocapture noundef writeonly %out_y) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i73 = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i74 = alloca %struct.fixed31_32, align 8
  %agg.tmp.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i = alloca %struct.fixed31_32, align 8
  %m1 = alloca %struct.fixed31_32, align 8
  %m2 = alloca %struct.fixed31_32, align 8
  %c1 = alloca %struct.fixed31_32, align 8
  %c2 = alloca %struct.fixed31_32, align 8
  %c3 = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp4 = alloca %struct.fixed31_32, align 8
  %agg.tmp5 = alloca %struct.fixed31_32, align 8
  %agg.tmp11 = alloca %struct.fixed31_32, align 8
  %tmp17 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_x.coerce.fca.0.extract = extractvalue [1 x i64] %in_x.coerce, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m1) #8
  %0 = ptrtoint ptr %m1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %m1, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %m1, i64 noundef 159301758, i64 noundef 1000000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m2) #8
  %1 = ptrtoint ptr %m2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %m2, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %m2, i64 noundef 7884375, i64 noundef 100000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c1) #8
  %2 = ptrtoint ptr %c1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %c1, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c1, i64 noundef 8359375, i64 noundef 10000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c2) #8
  %3 = ptrtoint ptr %c2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %c2, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c2, i64 noundef 188515625, i64 noundef 10000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c3) #8
  %4 = ptrtoint ptr %c3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %c3, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c3, i64 noundef 186875, i64 noundef 10000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %5 = ptrtoint ptr %m1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load52 = load i64, ptr %m1, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %in_x.coerce.fca.0.extract)
  %cmp.i61 = icmp slt i64 %in_x.coerce.fca.0.extract, 1
  br i1 %cmp.i61, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load52)
  %cmp3.i = icmp eq i64 %.fca.0.load52, 0
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967296, ptr %tmp, align 8, !alias.scope !45
  br label %dc_fixpt_pow.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %tmp, align 8, !alias.scope !45
  br label %dc_fixpt_pow.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert53 = insertvalue [1 x i64] poison, i64 %.fca.0.load52, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i, [1 x i64] %in_x.coerce) #8, !noalias !45
  %8 = ptrtoint ptr %agg.tmp4.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.0.load.i = load i64, ptr %agg.tmp4.i, align 8, !noalias !45
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i, [1 x i64] %.fca.0.insert.i, [1 x i64] %.fca.0.insert53) #8, !noalias !45
  %9 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load10.i = load i64, ptr %agg.tmp.i, align 8, !noalias !45
  %.fca.0.insert11.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] %.fca.0.insert11.i) #8
  br label %dc_fixpt_pow.exit

dc_fixpt_pow.exit:                                ; preds = %if.end.i, %cond.false.i, %cond.true.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i)
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %10)
  %l_pow_m1.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4) #8
  %11 = ptrtoint ptr %c2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %.fca.0.load43 = load i64, ptr %c2, align 8
  %.fca.0.insert44 = insertvalue [1 x i64] poison, i64 %.fca.0.load43, 0
  %.fca.0.insert34 = insertvalue [1 x i64] poison, i64 %l_pow_m1.sroa.0.0.copyload, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp5, [1 x i64] %.fca.0.insert44, [1 x i64] %.fca.0.insert34) #8
  %12 = ptrtoint ptr %c1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %.fca.0.load46 = load i64, ptr %c1, align 8
  %13 = ptrtoint ptr %agg.tmp5 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load24 = load i64, ptr %agg.tmp5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load46)
  %cmp.i62 = icmp slt i64 %.fca.0.load46, 0
  %sub.i = sub i64 9223372036854775807, %.fca.0.load46
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %.fca.0.load24)
  %cmp4.not.i = icmp slt i64 %sub.i, %.fca.0.load24
  %or.cond.i = select i1 %cmp.i62, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %dc_fixpt_pow.exit.dc_fixpt_add.exit_crit_edge

dc_fixpt_pow.exit.dc_fixpt_add.exit_crit_edge:    ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i:                                        ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load46)
  %cmp6.i = icmp sgt i64 %.fca.0.load46, -1
  %sub8.i = sub i64 -9223372036854775808, %.fca.0.load46
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %.fca.0.load24)
  %cmp10.i = icmp sgt i64 %sub8.i, %.fca.0.load24
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_add.exit_crit_edge

lor.rhs.i.dc_fixpt_add.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !48
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i63, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i63:                                      ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !48
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i63, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !48
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_add.exit_crit_edge, %dc_fixpt_pow.exit.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.fca.0.load24, %.fca.0.load46
  %14 = ptrtoint ptr %c3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %.fca.0.load40 = load i64, ptr %c3, align 8
  %.fca.0.insert41 = insertvalue [1 x i64] poison, i64 %.fca.0.load40, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp11, [1 x i64] %.fca.0.insert41, [1 x i64] %.fca.0.insert34) #8
  %15 = ptrtoint ptr %agg.tmp11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.fca.0.load = load i64, ptr %agg.tmp11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.fca.0.load)
  %cmp4.not.i64 = icmp sgt i64 %.fca.0.load, 9223372032559808511
  br i1 %cmp4.not.i64, label %lor.rhs.i66, label %dc_fixpt_add.exit.dc_fixpt_add.exit72_crit_edge

dc_fixpt_add.exit.dc_fixpt_add.exit72_crit_edge:  ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit72

lor.rhs.i66:                                      ; preds = %dc_fixpt_add.exit
  %.b65.i67 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !51
  br i1 %.b65.i67, label %lor.rhs.i66.if.then50.i70_crit_edge, label %if.then.i69, !prof !43

lor.rhs.i66.if.then50.i70_crit_edge:              ; preds = %lor.rhs.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i70

if.then.i69:                                      ; preds = %lor.rhs.i66
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !51
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !51
  br label %if.then50.i70

if.then50.i70:                                    ; preds = %if.then.i69, %lor.rhs.i66.if.then50.i70_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !51
  br label %dc_fixpt_add.exit72

dc_fixpt_add.exit72:                              ; preds = %if.then50.i70, %dc_fixpt_add.exit.dc_fixpt_add.exit72_crit_edge
  %add.i71 = add i64 %.fca.0.load, 4294967296
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp4, i64 noundef %add.i, i64 noundef %add.i71) #8
  %16 = ptrtoint ptr %tmp4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %base.sroa.0.0.copyload = load i64, ptr %tmp4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp17) #8
  %17 = ptrtoint ptr %m2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.0.load49 = load i64, ptr %m2, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i73)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i74)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %base.sroa.0.0.copyload)
  %cmp.i75 = icmp eq i64 %base.sroa.0.0.copyload, 0
  br i1 %cmp.i75, label %if.then.i77, label %if.end.i84

if.then.i77:                                      ; preds = %dc_fixpt_add.exit72
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load49)
  %cmp3.i76 = icmp eq i64 %.fca.0.load49, 0
  br i1 %cmp3.i76, label %cond.true.i78, label %cond.false.i79

cond.true.i78:                                    ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %tmp17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 4294967296, ptr %tmp17, align 8, !alias.scope !54
  br label %dc_fixpt_pow.exit85

cond.false.i79:                                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %tmp17 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %tmp17, align 8, !alias.scope !54
  br label %dc_fixpt_pow.exit85

if.end.i84:                                       ; preds = %dc_fixpt_add.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert50 = insertvalue [1 x i64] poison, i64 %.fca.0.load49, 0
  %.fca.0.insert31 = insertvalue [1 x i64] poison, i64 %base.sroa.0.0.copyload, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i74, [1 x i64] %.fca.0.insert31) #8, !noalias !54
  %20 = ptrtoint ptr %agg.tmp4.i74 to i32
  call void @__asan_load8_noabort(i32 %20)
  %.fca.0.load.i80 = load i64, ptr %agg.tmp4.i74, align 8, !noalias !54
  %.fca.0.insert.i81 = insertvalue [1 x i64] poison, i64 %.fca.0.load.i80, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i73, [1 x i64] %.fca.0.insert.i81, [1 x i64] %.fca.0.insert50) #8, !noalias !54
  %21 = ptrtoint ptr %agg.tmp.i73 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.0.load10.i82 = load i64, ptr %agg.tmp.i73, align 8, !noalias !54
  %.fca.0.insert11.i83 = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i82, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp17, [1 x i64] %.fca.0.insert11.i83) #8
  br label %dc_fixpt_pow.exit85

dc_fixpt_pow.exit85:                              ; preds = %if.end.i84, %cond.false.i79, %cond.true.i78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i73)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i74)
  %22 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tmp17, align 8
  %24 = ptrtoint ptr %out_y to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %out_y, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @precompute_de_pq() local_unnamed_addr #0 align 64 {
for.body3.preheader:
  %y = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y) #8
  %0 = ptrtoint ptr %y to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %y, align 8, !annotation !44
  %call = tail call ptr @mod_color_get_table(i32 noundef 1) #8
  %1 = call ptr @memset(ptr %call, i32 0, i32 1672)
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.preheader
  %i.138 = phi i32 [ %inc9, %for.body3.for.body3_crit_edge ], [ 209, %for.body3.preheader ]
  %x = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.138, i32 1
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %x, align 8
  %3 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call fastcc void @compute_de_pq([1 x i64] %3, ptr noundef nonnull %y)
  %arrayidx5 = getelementptr %struct.fixed31_32, ptr %call, i32 %i.138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load24 = load i64, ptr %y, align 8
  %.fca.0.insert25 = insertvalue [1 x i64] poison, i64 %.fca.0.load24, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] %.fca.0.insert25, [1 x i64] [i64 536870912000]) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %inc9 = add nuw nsw i32 %i.138, 1
  %exitcond.not = icmp eq i32 %inc9, 401
  br i1 %exitcond.not, label %for.body13.preheader, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.body13.preheader:                             ; preds = %for.body3
  %uglygep = getelementptr i8, ptr %call, i32 3200
  %8 = ptrtoint ptr %uglygep to i32
  call void @__asan_load8_noabort(i32 %8)
  %load_initial = load i64, ptr %uglygep, align 8
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.preheader
  %i.240 = phi i32 [ %inc17, %for.body13.for.body13_crit_edge ], [ 401, %for.body13.preheader ]
  %arrayidx14 = getelementptr %struct.fixed31_32, ptr %call, i32 %i.240
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %load_initial, ptr %arrayidx14, align 8
  %inc17 = add nuw nsw i32 %i.240, 1
  %exitcond42.not = icmp eq i32 %inc17, 513
  br i1 %exitcond42.not, label %for.end18, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.end18:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @compute_de_pq([1 x i64] %in_x.coerce, ptr nocapture noundef writeonly %out_y) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i115 = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i116 = alloca %struct.fixed31_32, align 8
  %agg.tmp.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i = alloca %struct.fixed31_32, align 8
  %m1 = alloca %struct.fixed31_32, align 8
  %m2 = alloca %struct.fixed31_32, align 8
  %c1 = alloca %struct.fixed31_32, align 8
  %c2 = alloca %struct.fixed31_32, align 8
  %c3 = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp9 = alloca %struct.fixed31_32, align 8
  %tmp14 = alloca %struct.fixed31_32, align 8
  %tmp23 = alloca %struct.fixed31_32, align 8
  %agg.tmp24 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_x.coerce.fca.0.extract = extractvalue [1 x i64] %in_x.coerce, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m1) #8
  %0 = ptrtoint ptr %m1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %m1, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %m1, i64 noundef 159301758, i64 noundef 1000000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m2) #8
  %1 = ptrtoint ptr %m2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %m2, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %m2, i64 noundef 7884375, i64 noundef 100000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c1) #8
  %2 = ptrtoint ptr %c1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %c1, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c1, i64 noundef 8359375, i64 noundef 10000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c2) #8
  %3 = ptrtoint ptr %c2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %c2, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c2, i64 noundef 188515625, i64 noundef 10000000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c3) #8
  %4 = ptrtoint ptr %c3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %c3, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %c3, i64 noundef 186875, i64 noundef 10000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %5 = ptrtoint ptr %m2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load69 = load i64, ptr %m2, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, i64 noundef 4294967296, i64 noundef %.fca.0.load69) #8
  %6 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load32 = load i64, ptr %agg.tmp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %in_x.coerce.fca.0.extract)
  %cmp.i81 = icmp slt i64 %in_x.coerce.fca.0.extract, 1
  br i1 %cmp.i81, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load32)
  %cmp3.i = icmp eq i64 %.fca.0.load32, 0
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4294967296, ptr %tmp, align 8, !alias.scope !57
  br label %dc_fixpt_pow.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %tmp, align 8, !alias.scope !57
  br label %dc_fixpt_pow.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert33 = insertvalue [1 x i64] poison, i64 %.fca.0.load32, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i, [1 x i64] %in_x.coerce) #8, !noalias !57
  %9 = ptrtoint ptr %agg.tmp4.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load.i = load i64, ptr %agg.tmp4.i, align 8, !noalias !57
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i, [1 x i64] %.fca.0.insert.i, [1 x i64] %.fca.0.insert33) #8, !noalias !57
  %10 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.fca.0.load10.i = load i64, ptr %agg.tmp.i, align 8, !noalias !57
  %.fca.0.insert11.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] %.fca.0.insert11.i) #8
  br label %dc_fixpt_pow.exit

dc_fixpt_pow.exit:                                ; preds = %if.end.i, %cond.false.i, %cond.true.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i)
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %11)
  %l_pow_m1.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %.fca.0.insert54 = insertvalue [1 x i64] poison, i64 %l_pow_m1.sroa.0.0.copyload, 0
  %12 = ptrtoint ptr %c1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %.fca.0.load66 = load i64, ptr %c1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load66)
  %cmp.i82 = icmp slt i64 %.fca.0.load66, 0
  %add.i = xor i64 %.fca.0.load66, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %l_pow_m1.sroa.0.0.copyload)
  %cmp4.not.i = icmp sgt i64 %add.i, %l_pow_m1.sroa.0.0.copyload
  %or.cond.i = select i1 %cmp.i82, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge

dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge:    ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load66)
  %cmp6.i = icmp sgt i64 %.fca.0.load66, -1
  %add8.i = add i64 %.fca.0.load66, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %l_pow_m1.sroa.0.0.copyload)
  %cmp10.i = icmp slt i64 %add8.i, %l_pow_m1.sroa.0.0.copyload
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !60
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i83, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i83:                                      ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !60
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i83, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !60
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %l_pow_m1.sroa.0.0.copyload, %.fca.0.load66
  %13 = ptrtoint ptr %c3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load60 = load i64, ptr %c3, align 8
  %.fca.0.insert61 = insertvalue [1 x i64] poison, i64 %.fca.0.load60, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp9, [1 x i64] %.fca.0.insert61, [1 x i64] %.fca.0.insert54) #8
  %14 = ptrtoint ptr %c2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %.fca.0.load63 = load i64, ptr %c2, align 8
  %15 = ptrtoint ptr %agg.tmp9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.fca.0.load29 = load i64, ptr %agg.tmp9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load29)
  %cmp.i84 = icmp slt i64 %.fca.0.load29, 0
  %add.i85 = xor i64 %.fca.0.load29, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i85, i64 %.fca.0.load63)
  %cmp4.not.i86 = icmp sgt i64 %add.i85, %.fca.0.load63
  %or.cond.i87 = select i1 %cmp.i84, i1 true, i1 %cmp4.not.i86
  br i1 %or.cond.i87, label %lor.rhs.i92, label %dc_fixpt_sub.exit.dc_fixpt_sub.exit98_crit_edge

dc_fixpt_sub.exit.dc_fixpt_sub.exit98_crit_edge:  ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit98

lor.rhs.i92:                                      ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load29)
  %cmp6.i88 = icmp sgt i64 %.fca.0.load29, -1
  %add8.i89 = add i64 %.fca.0.load29, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i89, i64 %.fca.0.load63)
  %cmp10.i90 = icmp slt i64 %add8.i89, %.fca.0.load63
  %or.cond67.i91 = select i1 %cmp6.i88, i1 true, i1 %cmp10.i90
  br i1 %or.cond67.i91, label %land.rhs13.i94, label %lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge

lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge:        ; preds = %lor.rhs.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit98

land.rhs13.i94:                                   ; preds = %lor.rhs.i92
  %.b65.i93 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !63
  br i1 %.b65.i93, label %land.rhs13.i94.if.then50.i96_crit_edge, label %if.then.i95, !prof !43

land.rhs13.i94.if.then50.i96_crit_edge:           ; preds = %land.rhs13.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i96

if.then.i95:                                      ; preds = %land.rhs13.i94
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !63
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !63
  br label %if.then50.i96

if.then50.i96:                                    ; preds = %if.then.i95, %land.rhs13.i94.if.then50.i96_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !63
  br label %dc_fixpt_sub.exit98

dc_fixpt_sub.exit98:                              ; preds = %if.then50.i96, %lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge, %dc_fixpt_sub.exit.dc_fixpt_sub.exit98_crit_edge
  %sub.i97 = sub i64 %.fca.0.load63, %.fca.0.load29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp14) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp14, i64 noundef %sub.i, i64 noundef %sub.i97) #8
  %16 = ptrtoint ptr %tmp14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %base2.sroa.0.0.copyload = load i64, ptr %tmp14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp14) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %base2.sroa.0.0.copyload)
  %cmp.i99 = icmp slt i64 %base2.sroa.0.0.copyload, 0
  br i1 %cmp.i99, label %lor.rhs.i108, label %dc_fixpt_sub.exit98.if.end22_crit_edge

dc_fixpt_sub.exit98.if.end22_crit_edge:           ; preds = %dc_fixpt_sub.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

lor.rhs.i108:                                     ; preds = %dc_fixpt_sub.exit98
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %base2.sroa.0.0.copyload)
  %cmp10.i106 = icmp eq i64 %base2.sroa.0.0.copyload, -9223372036854775808
  br i1 %cmp10.i106, label %land.rhs13.i110, label %lor.rhs.i108.dc_fixpt_sub.exit114_crit_edge

lor.rhs.i108.dc_fixpt_sub.exit114_crit_edge:      ; preds = %lor.rhs.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit114

land.rhs13.i110:                                  ; preds = %lor.rhs.i108
  %.b65.i109 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !66
  br i1 %.b65.i109, label %land.rhs13.i110.if.then50.i112_crit_edge, label %if.then.i111, !prof !43

land.rhs13.i110.if.then50.i112_crit_edge:         ; preds = %land.rhs13.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i112

if.then.i111:                                     ; preds = %land.rhs13.i110
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !66
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !66
  br label %if.then50.i112

if.then50.i112:                                   ; preds = %if.then.i111, %land.rhs13.i110.if.then50.i112_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !66
  br label %dc_fixpt_sub.exit114

dc_fixpt_sub.exit114:                             ; preds = %if.then50.i112, %lor.rhs.i108.dc_fixpt_sub.exit114_crit_edge
  %sub.i113 = sub i64 0, %base2.sroa.0.0.copyload
  br label %if.end22

if.end22:                                         ; preds = %dc_fixpt_sub.exit114, %dc_fixpt_sub.exit98.if.end22_crit_edge
  %base2.sroa.0.0 = phi i64 [ %sub.i113, %dc_fixpt_sub.exit114 ], [ %base2.sroa.0.0.copyload, %dc_fixpt_sub.exit98.if.end22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23) #8
  %17 = ptrtoint ptr %m1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.0.load72 = load i64, ptr %m1, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp24, i64 noundef 4294967296, i64 noundef %.fca.0.load72) #8
  %18 = ptrtoint ptr %agg.tmp24 to i32
  call void @__asan_load8_noabort(i32 %18)
  %.fca.0.load = load i64, ptr %agg.tmp24, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i115)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i116)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %base2.sroa.0.0)
  %cmp.i117 = icmp eq i64 %base2.sroa.0.0, 0
  br i1 %cmp.i117, label %if.then.i119, label %if.end.i126

if.then.i119:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load)
  %cmp3.i118 = icmp eq i64 %.fca.0.load, 0
  br i1 %cmp3.i118, label %cond.true.i120, label %cond.false.i121

cond.true.i120:                                   ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %tmp23 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 4294967296, ptr %tmp23, align 8, !alias.scope !69
  br label %dc_fixpt_pow.exit127

cond.false.i121:                                  ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tmp23 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %tmp23, align 8, !alias.scope !69
  br label %dc_fixpt_pow.exit127

if.end.i126:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  %.fca.0.insert42 = insertvalue [1 x i64] poison, i64 %base2.sroa.0.0, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i116, [1 x i64] %.fca.0.insert42) #8, !noalias !69
  %21 = ptrtoint ptr %agg.tmp4.i116 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.0.load.i122 = load i64, ptr %agg.tmp4.i116, align 8, !noalias !69
  %.fca.0.insert.i123 = insertvalue [1 x i64] poison, i64 %.fca.0.load.i122, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i115, [1 x i64] %.fca.0.insert.i123, [1 x i64] %.fca.0.insert) #8, !noalias !69
  %22 = ptrtoint ptr %agg.tmp.i115 to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.0.load10.i124 = load i64, ptr %agg.tmp.i115, align 8, !noalias !69
  %.fca.0.insert11.i125 = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i124, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23, [1 x i64] %.fca.0.insert11.i125) #8
  br label %dc_fixpt_pow.exit127

dc_fixpt_pow.exit127:                             ; preds = %if.end.i126, %cond.false.i121, %cond.true.i120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i115)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i116)
  %23 = ptrtoint ptr %tmp23 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tmp23, align 8
  %25 = ptrtoint ptr %out_y to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %out_y, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @calculate_user_regamma_coeff(ptr nocapture noundef %output_tf, ptr nocapture noundef readonly %regamma, ptr noundef %cal_buffer, ptr noundef readonly %ramp) local_unnamed_addr #0 align 64 {
entry:
  %scratch_gamma_args.i102 = alloca %struct.translate_from_linear_space_args, align 8
  %scratch_gamma_args.i91 = alloca %struct.translate_from_linear_space_args, align 8
  %scratch_gamma_args.i = alloca %struct.translate_from_linear_space_args, align 8
  %coeff = alloca %struct.gamma_coefficients, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp3 = alloca %struct.fixed31_32, align 8
  %tmp7 = alloca %struct.fixed31_32, align 8
  %tmp11 = alloca %struct.fixed31_32, align 8
  %tmp15 = alloca %struct.fixed31_32, align 8
  %tmp31 = alloca %struct.fixed31_32, align 8
  %tmp34 = alloca %struct.fixed31_32, align 8
  %tmp39 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %coeff) #8
  %0 = call ptr @memset(ptr %coeff, i32 255, i32 136)
  %1 = getelementptr inbounds %struct.regamma_lut, ptr %regamma, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.fixed31_32], ptr %coeff, i32 0, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx1 = getelementptr %struct.regamma_lut, ptr %regamma, i32 0, i32 1, i32 0, i32 1, i32 %i.0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %conv = sext i32 %3 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %conv, i64 noundef 10000000) #8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tmp, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx2 = getelementptr %struct.gamma_coefficients, ptr %coeff, i32 0, i32 1, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp3) #8
  %arrayidx4 = getelementptr %struct.regamma_lut, ptr %regamma, i32 0, i32 1, i32 0, i32 2, i32 %i.0
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %conv5 = sext i32 %8 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp3, i64 noundef %conv5, i64 noundef 1000) #8
  %9 = ptrtoint ptr %tmp3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tmp3, align 8
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp3) #8
  %arrayidx6 = getelementptr %struct.gamma_coefficients, ptr %coeff, i32 0, i32 2, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7) #8
  %arrayidx8 = getelementptr %struct.regamma_lut, ptr %regamma, i32 0, i32 1, i32 0, i32 3, i32 %i.0
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %conv9 = sext i32 %13 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp7, i64 noundef %conv9, i64 noundef 1000) #8
  %14 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp7, align 8
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7) #8
  %arrayidx10 = getelementptr %struct.gamma_coefficients, ptr %coeff, i32 0, i32 3, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp11) #8
  %arrayidx12 = getelementptr %struct.regamma_lut, ptr %regamma, i32 0, i32 1, i32 0, i32 4, i32 %i.0
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %conv13 = sext i32 %18 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp11, i64 noundef %conv13, i64 noundef 1000) #8
  %19 = ptrtoint ptr %tmp11 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tmp11, align 8
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp11) #8
  %arrayidx14 = getelementptr %struct.gamma_coefficients, ptr %coeff, i32 0, i32 4, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp15) #8
  %arrayidx16 = getelementptr [3 x i32], ptr %1, i32 0, i32 %i.0
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  %conv17 = sext i32 %23 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp15, i64 noundef %conv17, i64 noundef 1000) #8
  %24 = ptrtoint ptr %tmp15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tmp15, align 8
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp15) #8
  %inc = add nuw nsw i32 %i.0, 1
  %cmp.not = icmp eq i32 %inc, 3
  br i1 %cmp.not, label %while.cond.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.cond.preheader:                             ; preds = %do.body
  %27 = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4
  br label %while.body

while.cond25.preheader:                           ; preds = %while.body
  %28 = getelementptr inbounds i8, ptr %scratch_gamma_args.i, i32 48
  %a0.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i, i32 0, i32 1
  %a1.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i, i32 0, i32 2
  %arrayidx4.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 1, i32 0
  %a2.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i, i32 0, i32 3
  %arrayidx6.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 2, i32 0
  %a3.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i, i32 0, i32 4
  %arrayidx8.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 3, i32 0
  %gamma.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i, i32 0, i32 5
  %arrayidx9.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 4, i32 0
  %29 = getelementptr inbounds i8, ptr %scratch_gamma_args.i91, i32 48
  %a0.i92 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i91, i32 0, i32 1
  %arrayidx.i = getelementptr inbounds [3 x %struct.fixed31_32], ptr %coeff, i32 0, i32 1
  %a1.i93 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i91, i32 0, i32 2
  %arrayidx4.i94 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 1, i32 1
  %a2.i95 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i91, i32 0, i32 3
  %arrayidx6.i96 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 2, i32 1
  %a3.i97 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i91, i32 0, i32 4
  %arrayidx8.i98 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 3, i32 1
  %gamma.i99 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i91, i32 0, i32 5
  %arrayidx9.i100 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds i8, ptr %scratch_gamma_args.i102, i32 48
  %a0.i103 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i102, i32 0, i32 1
  %arrayidx.i104 = getelementptr inbounds [3 x %struct.fixed31_32], ptr %coeff, i32 0, i32 2
  %a1.i105 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i102, i32 0, i32 2
  %arrayidx4.i106 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 1, i32 2
  %a2.i107 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i102, i32 0, i32 3
  %arrayidx6.i108 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 2, i32 2
  %a3.i109 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i102, i32 0, i32 4
  %arrayidx8.i110 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 3, i32 2
  %gamma.i111 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i102, i32 0, i32 5
  %arrayidx9.i112 = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 4, i32 2
  br label %while.body28

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %i.1117 = phi i32 [ 0, %while.cond.preheader ], [ %inc24, %while.body.while.body_crit_edge ]
  %arrayidx21 = getelementptr [1025 x %struct.fixed31_32], ptr %27, i32 0, i32 %i.1117
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 1, i32 %i.1117
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 2, i32 %i.1117
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %arrayidx23, align 8
  %inc24 = add nuw nsw i32 %i.1117, 1
  %cmp19.not = icmp eq i32 %inc24, 32
  br i1 %cmp19.not, label %while.cond25.preheader, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body28:                                     ; preds = %while.body28.while.body28_crit_edge, %while.cond25.preheader
  %i.2119 = phi i32 [ 32, %while.cond25.preheader ], [ %inc43, %while.body28.while.body28_crit_edge ]
  %coord_x.1118 = phi ptr [ getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 32, i32 0), %while.cond25.preheader ], [ %incdec.ptr42, %while.body28.while.body28_crit_edge ]
  %arrayidx30 = getelementptr [1025 x %struct.fixed31_32], ptr %27, i32 0, i32 %i.2119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31) #8
  %x = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.1118, i32 0, i32 1
  %34 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %34)
  %.unpack = load i64, ptr %x, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i) #8, !noalias !72
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %28, align 8, !noalias !72, !annotation !44
  %36 = ptrtoint ptr %scratch_gamma_args.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %.unpack, ptr %scratch_gamma_args.i, align 8, !noalias !72
  %37 = ptrtoint ptr %coeff to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %coeff, align 8, !noalias !72
  %39 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %a0.i, align 8, !noalias !72
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx4.i, align 8, !noalias !72
  %42 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %a1.i, align 8, !noalias !72
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx6.i, align 8, !noalias !72
  %45 = ptrtoint ptr %a2.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %a2.i, align 8, !noalias !72
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx8.i, align 8, !noalias !72
  %48 = ptrtoint ptr %a3.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %a3.i, align 8, !noalias !72
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx9.i, align 8, !noalias !72
  %51 = ptrtoint ptr %gamma.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %gamma.i, align 8, !noalias !72
  store ptr %cal_buffer, ptr %28, align 8, !noalias !72
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp31, ptr noundef nonnull %scratch_gamma_args.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i) #8, !noalias !72
  %52 = ptrtoint ptr %tmp31 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tmp31, align 8
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx30, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31) #8
  %arrayidx33 = getelementptr %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 1, i32 %i.2119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp34) #8
  %55 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %55)
  %.unpack89 = load i64, ptr %x, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i91) #8, !noalias !75
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %29, align 8, !noalias !75, !annotation !44
  %57 = ptrtoint ptr %scratch_gamma_args.i91 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %.unpack89, ptr %scratch_gamma_args.i91, align 8, !noalias !75
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.i, align 8, !noalias !75
  %60 = ptrtoint ptr %a0.i92 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %a0.i92, align 8, !noalias !75
  %61 = ptrtoint ptr %arrayidx4.i94 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx4.i94, align 8, !noalias !75
  %63 = ptrtoint ptr %a1.i93 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %a1.i93, align 8, !noalias !75
  %64 = ptrtoint ptr %arrayidx6.i96 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx6.i96, align 8, !noalias !75
  %66 = ptrtoint ptr %a2.i95 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %a2.i95, align 8, !noalias !75
  %67 = ptrtoint ptr %arrayidx8.i98 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx8.i98, align 8, !noalias !75
  %69 = ptrtoint ptr %a3.i97 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %a3.i97, align 8, !noalias !75
  %70 = ptrtoint ptr %arrayidx9.i100 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx9.i100, align 8, !noalias !75
  %72 = ptrtoint ptr %gamma.i99 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %gamma.i99, align 8, !noalias !75
  store ptr %cal_buffer, ptr %29, align 8, !noalias !75
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp34, ptr noundef nonnull %scratch_gamma_args.i91) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i91) #8, !noalias !75
  %73 = ptrtoint ptr %tmp34 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tmp34, align 8
  %75 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx33, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp34) #8
  %arrayidx38 = getelementptr %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 2, i32 %i.2119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp39) #8
  %76 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %76)
  %.unpack90 = load i64, ptr %x, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i102) #8, !noalias !78
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %30, align 8, !noalias !78, !annotation !44
  %78 = ptrtoint ptr %scratch_gamma_args.i102 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %.unpack90, ptr %scratch_gamma_args.i102, align 8, !noalias !78
  %79 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx.i104, align 8, !noalias !78
  %81 = ptrtoint ptr %a0.i103 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %a0.i103, align 8, !noalias !78
  %82 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx4.i106, align 8, !noalias !78
  %84 = ptrtoint ptr %a1.i105 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %a1.i105, align 8, !noalias !78
  %85 = ptrtoint ptr %arrayidx6.i108 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx6.i108, align 8, !noalias !78
  %87 = ptrtoint ptr %a2.i107 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %a2.i107, align 8, !noalias !78
  %88 = ptrtoint ptr %arrayidx8.i110 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx8.i110, align 8, !noalias !78
  %90 = ptrtoint ptr %a3.i109 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %a3.i109, align 8, !noalias !78
  %91 = ptrtoint ptr %arrayidx9.i112 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx9.i112, align 8, !noalias !78
  %93 = ptrtoint ptr %gamma.i111 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %gamma.i111, align 8, !noalias !78
  store ptr %cal_buffer, ptr %30, align 8, !noalias !78
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp39, ptr noundef nonnull %scratch_gamma_args.i102) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i102) #8, !noalias !78
  %94 = ptrtoint ptr %tmp39 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %tmp39, align 8
  %96 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %arrayidx38, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp39) #8
  %incdec.ptr42 = getelementptr %struct.hw_x_point, ptr %coord_x.1118, i32 1
  %inc43 = add nuw nsw i32 %i.2119, 1
  %cmp26.not = icmp eq i32 %inc43, 513
  br i1 %cmp26.not, label %while.end44, label %while.body28.while.body28_crit_edge

while.body28.while.body28_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body28

while.end44:                                      ; preds = %while.body28
  %tobool.not = icmp eq ptr %ramp, null
  br i1 %tobool.not, label %while.end44.while.body.i.preheader_crit_edge, label %land.lhs.true

while.end44.while.body.i.preheader_crit_edge:     ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

land.lhs.true:                                    ; preds = %while.end44
  %type = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %97 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp45 = icmp eq i32 %98, 3
  br i1 %cmp45, label %if.then, label %land.lhs.true.while.body.i.preheader_crit_edge

land.lhs.true.while.body.i.preheader_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @apply_lut_1d(ptr noundef nonnull %ramp, ptr noundef %27)
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then, %land.lhs.true.while.body.i.preheader_crit_edge, %while.end44.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %i.010.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %arrayidx.i114 = getelementptr [1025 x %struct.fixed31_32], ptr %27, i32 0, i32 %i.010.i
  %99 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load8_noabort(i32 %99)
  %.unpack.i = load i64, ptr %arrayidx.i114, align 8
  %100 = call i64 @llvm.smin.i64(i64 %.unpack.i, i64 4294967296) #8
  %101 = call i64 @llvm.smax.i64(i64 %100, i64 0) #8
  %102 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %arrayidx.i114, align 8
  %arrayidx3.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %27, i32 0, i32 1, i32 %i.010.i
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %.unpack2.i = load i64, ptr %arrayidx3.i, align 8
  %104 = call i64 @llvm.smin.i64(i64 %.unpack2.i, i64 4294967296) #8
  %105 = call i64 @llvm.smax.i64(i64 %104, i64 0) #8
  %106 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %arrayidx3.i, align 8
  %arrayidx8.i115 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %27, i32 0, i32 2, i32 %i.010.i
  %107 = ptrtoint ptr %arrayidx8.i115 to i32
  call void @__asan_load8_noabort(i32 %107)
  %.unpack4.i = load i64, ptr %arrayidx8.i115, align 8
  %108 = call i64 @llvm.smin.i64(i64 %.unpack4.i, i64 4294967296) #8
  %109 = call i64 @llvm.smax.i64(i64 %108, i64 0) #8
  %110 = ptrtoint ptr %arrayidx8.i115 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %arrayidx8.i115, align 8
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %cmp.not.i = icmp eq i32 %inc.i, 513
  br i1 %cmp.not.i, label %build_new_custom_resulted_curve.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

build_new_custom_resulted_curve.exit:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %type47 = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 1
  %111 = ptrtoint ptr %type47 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type47, align 4
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %coeff) #8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apply_lut_1d(ptr nocapture noundef readonly %ramp, ptr nocapture noundef %tf_pts) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc63.for.cond4.preheader_crit_edge, %for.cond.preheader
  %i.032 = phi i32 [ 0, %for.cond.preheader ], [ %inc64, %for.inc63.for.cond4.preheader_crit_edge ]
  %arrayidx13 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 2, i32 %i.032
  %arrayidx11 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 1, i32 %i.032
  %arrayidx = getelementptr [1025 x %struct.fixed31_32], ptr %tf_pts, i32 0, i32 %i.032
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.cond4.preheader
  %color.029 = phi i32 [ 0, %for.cond4.preheader ], [ %inc, %for.inc.for.body6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %color.029)
  %cmp7 = icmp eq i32 %color.029, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %color.029)
  %cmp9 = icmp eq i32 %color.029, 1
  %arrayidx11.arrayidx13 = select i1 %cmp9, ptr %arrayidx11, ptr %arrayidx13
  %regamma_y.0 = select i1 %cmp7, ptr %arrayidx, ptr %arrayidx11.arrayidx13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %regamma_y.0 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %regamma_y.0, align 8
  %3 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] [i64 17587891077120], [1 x i64] %3) #8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %4)
  %norm_y.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %5 = call i64 @llvm.abs.i64(i64 %norm_y.sroa.0.0.copyload, i1 false) #8
  %extract12.i = lshr i64 %5, 32
  %extract.t13.i = trunc i64 %extract12.i to i32
  %sub7.i = sub i32 0, %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %norm_y.sroa.0.0.copyload)
  %cmp414.i = icmp slt i64 %norm_y.sroa.0.0.copyload, 0
  %retval.0.i = select i1 %cmp414.i, i32 %sub7.i, i32 %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %for.body6.for.inc_crit_edge, label %if.end21

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %for.body6
  %conv1.i = zext i32 %retval.0.i to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i)
  %cmp22 = icmp ult i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %retval.0.i)
  %cmp24 = icmp eq i32 %retval.0.i, 4095
  %add = add nuw nsw i32 %retval.0.i, 1
  %cond = select i1 %cmp24, i32 4095, i32 %add
  %index.0 = select i1 %cmp22, i32 %retval.0.i, i32 4094
  %index_next.0 = select i1 %cmp22, i32 %cond, i32 4095
  %index_f.sroa.0.0 = select i1 %cmp22, i64 %shl.i, i64 17583596109824
  br i1 %cmp7, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30 = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %index.0
  %arrayidx33 = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %index_next.0
  br label %if.end51

if.else34:                                        ; preds = %if.end21
  br i1 %cmp9, label %if.then36, label %if.else43

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx39 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %index.0
  %arrayidx42 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %index_next.0
  br label %if.end51

if.else43:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %index.0
  %arrayidx49 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %index_next.0
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.then36, %if.then28
  %lut1.sroa.0.0.in = phi ptr [ %arrayidx30, %if.then28 ], [ %arrayidx39, %if.then36 ], [ %arrayidx46, %if.else43 ]
  %lut2.sroa.0.0.in = phi ptr [ %arrayidx33, %if.then28 ], [ %arrayidx42, %if.then36 ], [ %arrayidx49, %if.else43 ]
  %6 = ptrtoint ptr %lut2.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %6)
  %lut2.sroa.0.0 = load i64, ptr %lut2.sroa.0.0.in, align 8
  %7 = ptrtoint ptr %lut1.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %7)
  %lut1.sroa.0.0 = load i64, ptr %lut1.sroa.0.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lut1.sroa.0.0)
  %cmp.i = icmp slt i64 %lut1.sroa.0.0, 0
  %add.i = xor i64 %lut1.sroa.0.0, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %lut2.sroa.0.0)
  %cmp4.not.i = icmp sgt i64 %add.i, %lut2.sroa.0.0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %if.end51.dc_fixpt_sub.exit_crit_edge

if.end51.dc_fixpt_sub.exit_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lut1.sroa.0.0)
  %cmp6.i = icmp sgt i64 %lut1.sroa.0.0, -1
  %add8.i = add i64 %lut1.sroa.0.0, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %lut2.sroa.0.0)
  %cmp10.i = icmp slt i64 %add8.i, %lut2.sroa.0.0
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !81
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !81
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !81
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !81
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %if.end51.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %lut2.sroa.0.0, %lut1.sroa.0.0
  %add.i234 = or i64 %index_f.sroa.0.0, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i234, i64 %norm_y.sroa.0.0.copyload)
  %cmp4.not.i3 = icmp sgt i64 %add.i234, %norm_y.sroa.0.0.copyload
  br i1 %cmp4.not.i3, label %land.rhs13.i11, label %dc_fixpt_sub.exit.dc_fixpt_sub.exit15_crit_edge

dc_fixpt_sub.exit.dc_fixpt_sub.exit15_crit_edge:  ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit15

land.rhs13.i11:                                   ; preds = %dc_fixpt_sub.exit
  %.b65.i10 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !84
  br i1 %.b65.i10, label %land.rhs13.i11.if.then50.i13_crit_edge, label %if.then.i12, !prof !43

land.rhs13.i11.if.then50.i13_crit_edge:           ; preds = %land.rhs13.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i13

if.then.i12:                                      ; preds = %land.rhs13.i11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !84
  br label %if.then50.i13

if.then50.i13:                                    ; preds = %if.then.i12, %land.rhs13.i11.if.then50.i13_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !84
  br label %dc_fixpt_sub.exit15

dc_fixpt_sub.exit15:                              ; preds = %if.then50.i13, %dc_fixpt_sub.exit.dc_fixpt_sub.exit15_crit_edge
  %sub.i14 = sub i64 %norm_y.sroa.0.0.copyload, %index_f.sroa.0.0
  %.fca.0.insert81 = insertvalue [1 x i64] poison, i64 %sub.i14, 0
  %.fca.0.insert84 = insertvalue [1 x i64] poison, i64 %sub.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, [1 x i64] %.fca.0.insert81, [1 x i64] %.fca.0.insert84) #8
  %8 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %sub.i17 = sub i64 9223372036854775807, %lut1.sroa.0.0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i17, i64 %.fca.0.load)
  %cmp4.not.i18 = icmp slt i64 %sub.i17, %.fca.0.load
  %or.cond.i19 = select i1 %cmp.i, i1 true, i1 %cmp4.not.i18
  br i1 %or.cond.i19, label %lor.rhs.i23, label %dc_fixpt_sub.exit15.dc_fixpt_add.exit_crit_edge

dc_fixpt_sub.exit15.dc_fixpt_add.exit_crit_edge:  ; preds = %dc_fixpt_sub.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i23:                                      ; preds = %dc_fixpt_sub.exit15
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lut1.sroa.0.0)
  %cmp6.i20 = icmp sgt i64 %lut1.sroa.0.0, -1
  %sub8.i = sub i64 -9223372036854775808, %lut1.sroa.0.0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %.fca.0.load)
  %cmp10.i21 = icmp sgt i64 %sub8.i, %.fca.0.load
  %or.cond67.i22 = select i1 %cmp6.i20, i1 true, i1 %cmp10.i21
  br i1 %or.cond67.i22, label %land.rhs13.i25, label %lor.rhs.i23.dc_fixpt_add.exit_crit_edge

lor.rhs.i23.dc_fixpt_add.exit_crit_edge:          ; preds = %lor.rhs.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i25:                                   ; preds = %lor.rhs.i23
  %.b65.i24 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !87
  br i1 %.b65.i24, label %land.rhs13.i25.if.then50.i27_crit_edge, label %if.then.i26, !prof !43

land.rhs13.i25.if.then50.i27_crit_edge:           ; preds = %land.rhs13.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i27

if.then.i26:                                      ; preds = %land.rhs13.i25
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !87
  br label %if.then50.i27

if.then50.i27:                                    ; preds = %if.then.i26, %land.rhs13.i25.if.then50.i27_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !87
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i27, %lor.rhs.i23.dc_fixpt_add.exit_crit_edge, %dc_fixpt_sub.exit15.dc_fixpt_add.exit_crit_edge
  %add.i28 = add i64 %.fca.0.load, %lut1.sroa.0.0
  %9 = ptrtoint ptr %regamma_y.0 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add.i28, ptr %regamma_y.0, align 8
  br label %for.inc

for.inc:                                          ; preds = %dc_fixpt_add.exit, %for.body6.for.inc_crit_edge
  %inc = add nuw nsw i32 %color.029, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc63, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc63:                                        ; preds = %for.inc
  %inc64 = add nuw nsw i32 %i.032, 1
  %exitcond33.not = icmp eq i32 %inc64, 512
  br i1 %exitcond33.not, label %for.inc63.cleanup_crit_edge, label %for.inc63.for.cond4.preheader_crit_edge

for.inc63.for.cond4.preheader_crit_edge:          ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc63.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @calculate_user_regamma_ramp(ptr nocapture noundef %output_tf, ptr noundef readonly %regamma, ptr noundef %cal_buffer, ptr noundef readonly %ramp) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i57 = alloca %struct.fixed31_32, align 8
  %agg.tmp.i = alloca %struct.fixed31_32, align 8
  %scratch_gamma_args.i.i = alloca %struct.translate_from_linear_space_args, align 8
  %coeff.i = alloca %struct.gamma_coefficients, align 8
  %tmp.i46 = alloca %struct.fixed31_32, align 8
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp25.i = alloca %struct.fixed31_32, align 8
  %tmp31.i = alloca %struct.fixed31_32, align 8
  %tmp43.i = alloca %struct.fixed31_32, align 8
  %tmp47.i = alloca %struct.fixed31_32, align 8
  %tmp53.i = alloca %struct.fixed31_32, align 8
  %tmp60.i = alloca %struct.fixed31_32, align 8
  %tmp65.i = alloca %struct.fixed31_32, align 8
  %tmp71.i = alloca %struct.fixed31_32, align 8
  %tmp78.i = alloca %struct.fixed31_32, align 8
  %tmp83.i = alloca %struct.fixed31_32, align 8
  %tmp89.i = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp8 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4
  %cmp = icmp eq ptr %regamma, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6216) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24720, i32 noundef 3520, i32 noundef 3) #12
  %tobool4 = icmp ne ptr %call1.i.i.i.i, null
  br i1 %tobool4, label %if.end6, label %if.end2.rgb_regamma_alloc_fail_crit_edge

if.end2.rgb_regamma_alloc_fail_crit_edge:         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rgb_regamma_alloc_fail

if.end6:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef 3, i64 noundef 2) #8
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %3)
  %dividers.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp8) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp8, i64 noundef 5, i64 noundef 2) #8
  %4 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load8_noabort(i32 %4)
  %dividers.sroa.8.16.copyload = load i64, ptr %tmp8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp8) #8
  %5 = getelementptr inbounds %struct.regamma_lut, ptr %regamma, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end6
  %i.0.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %7)
  %cmp.i = icmp ugt i16 %7, -256
  br i1 %cmp.i, label %do.body.i.do.end.i_crit_edge, label %lor.lhs.false.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %add.i = add nuw nsw i32 %i.0.i, 256
  %arrayidx5.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %add.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %9)
  %cmp8.i = icmp ugt i16 %9, -256
  br i1 %cmp8.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %add12.i = add nuw nsw i32 %i.0.i, 512
  %arrayidx13.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %add12.i
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %11)
  %cmp16.i = icmp ugt i16 %11, -256
  br i1 %cmp16.i, label %lor.lhs.false10.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false10.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %lor.lhs.false10.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %cmp18.not.i = icmp eq i32 %inc.i, 256
  br i1 %cmp18.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %lor.lhs.false10.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %scaler.0.i = phi i16 [ -256, %if.end.i.do.end.i_crit_edge ], [ -1, %lor.lhs.false10.i.do.end.i_crit_edge ], [ -1, %lor.lhs.false.i.do.end.i_crit_edge ], [ -1, %do.body.i.do.end.i_crit_edge ]
  %conv24.i = zext i16 %scaler.0.i to i64
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.body20.i.do.body20.i_crit_edge, %do.end.i
  %i.1.i = phi i32 [ 0, %do.end.i ], [ %inc37.i, %do.body20.i.do.body20.i_crit_edge ]
  %rgb.0.i = phi ptr [ %call7.i.i.i, %do.end.i ], [ %incdec.ptr.i, %do.body20.i.do.body20.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %arrayidx22.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %i.1.i
  %12 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = zext i16 %13 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, i64 noundef %conv23.i, i64 noundef %conv24.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp.i, align 8
  %16 = ptrtoint ptr %rgb.0.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rgb.0.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %g.i = getelementptr inbounds %struct.pwl_float_data, ptr %rgb.0.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp25.i) #8
  %add27.i = add nuw nsw i32 %i.1.i, 256
  %arrayidx28.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %add27.i
  %17 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx28.i, align 2
  %conv29.i = zext i16 %18 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp25.i, i64 noundef %conv29.i, i64 noundef %conv24.i) #8
  %19 = ptrtoint ptr %tmp25.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tmp25.i, align 8
  %21 = ptrtoint ptr %g.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %g.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp25.i) #8
  %b.i = getelementptr inbounds %struct.pwl_float_data, ptr %rgb.0.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31.i) #8
  %add33.i = add nuw nsw i32 %i.1.i, 512
  %arrayidx34.i = getelementptr [768 x i16], ptr %5, i32 0, i32 %add33.i
  %22 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx34.i, align 2
  %conv35.i = zext i16 %23 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp31.i, i64 noundef %conv35.i, i64 noundef %conv24.i) #8
  %24 = ptrtoint ptr %tmp31.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tmp31.i, align 8
  %26 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %b.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31.i) #8
  %incdec.ptr.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 1
  %inc37.i = add nuw nsw i32 %i.1.i, 1
  %cmp39.not.i = icmp eq i32 %inc37.i, 256
  br i1 %cmp39.not.i, label %scale_user_regamma_ramp.exit, label %do.body20.i.do.body20.i_crit_edge

do.body20.i.do.body20.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i

scale_user_regamma_ramp.exit:                     ; preds = %do.body20.i
  %add.ptr1.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp43.i) #8
  %27 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %.unpack.i = load i64, ptr %add.ptr1.i, align 8
  %28 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %dividers.sroa.0.0.copyload, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp43.i, [1 x i64] %28, [1 x i64] %.fca.0.insert.i) #8
  %29 = ptrtoint ptr %tmp43.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tmp43.i, align 8
  %31 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %incdec.ptr.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp43.i) #8
  %g46.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp47.i) #8
  %g48.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 255, i32 1
  %32 = ptrtoint ptr %g48.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %.unpack166.i = load i64, ptr %g48.i, align 8
  %33 = insertvalue [1 x i64] undef, i64 %.unpack166.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp47.i, [1 x i64] %33, [1 x i64] %.fca.0.insert.i) #8
  %34 = ptrtoint ptr %tmp47.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tmp47.i, align 8
  %36 = ptrtoint ptr %g46.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %g46.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp47.i) #8
  %b52.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp53.i) #8
  %b54.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 255, i32 2
  %37 = ptrtoint ptr %b54.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %.unpack167.i = load i64, ptr %b54.i, align 8
  %38 = insertvalue [1 x i64] undef, i64 %.unpack167.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp53.i, [1 x i64] %38, [1 x i64] %.fca.0.insert.i) #8
  %39 = ptrtoint ptr %tmp53.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tmp53.i, align 8
  %41 = ptrtoint ptr %b52.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %b52.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp53.i) #8
  %incdec.ptr58.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp60.i) #8
  %42 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %.unpack168.i = load i64, ptr %add.ptr1.i, align 8
  %43 = insertvalue [1 x i64] undef, i64 %.unpack168.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp60.i, [1 x i64] %43, [1 x i64] [i64 8589934592]) #8
  %44 = ptrtoint ptr %tmp60.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tmp60.i, align 8
  %46 = ptrtoint ptr %incdec.ptr58.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %incdec.ptr58.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp60.i) #8
  %g64.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp65.i) #8
  %47 = ptrtoint ptr %g48.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %.unpack169.i = load i64, ptr %g48.i, align 8
  %48 = insertvalue [1 x i64] undef, i64 %.unpack169.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp65.i, [1 x i64] %48, [1 x i64] [i64 8589934592]) #8
  %49 = ptrtoint ptr %tmp65.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tmp65.i, align 8
  %51 = ptrtoint ptr %g64.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %g64.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp65.i) #8
  %b70.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp71.i) #8
  %52 = ptrtoint ptr %b54.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %.unpack170.i = load i64, ptr %b54.i, align 8
  %53 = insertvalue [1 x i64] undef, i64 %.unpack170.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp71.i, [1 x i64] %53, [1 x i64] [i64 8589934592]) #8
  %54 = ptrtoint ptr %tmp71.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tmp71.i, align 8
  %56 = ptrtoint ptr %b70.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %b70.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp71.i) #8
  %incdec.ptr76.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp78.i) #8
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %.unpack171.i = load i64, ptr %add.ptr1.i, align 8
  %58 = insertvalue [1 x i64] undef, i64 %.unpack171.i, 0
  %.fca.0.insert153.i = insertvalue [1 x i64] poison, i64 %dividers.sroa.8.16.copyload, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp78.i, [1 x i64] %58, [1 x i64] %.fca.0.insert153.i) #8
  %59 = ptrtoint ptr %tmp78.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tmp78.i, align 8
  %61 = ptrtoint ptr %incdec.ptr76.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %incdec.ptr76.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp78.i) #8
  %g82.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp83.i) #8
  %62 = ptrtoint ptr %g48.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %.unpack172.i = load i64, ptr %g48.i, align 8
  %63 = insertvalue [1 x i64] undef, i64 %.unpack172.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp83.i, [1 x i64] %63, [1 x i64] %.fca.0.insert153.i) #8
  %64 = ptrtoint ptr %tmp83.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tmp83.i, align 8
  %66 = ptrtoint ptr %g82.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %g82.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp83.i) #8
  %b88.i = getelementptr %struct.pwl_float_data, ptr %rgb.0.i, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp89.i) #8
  %67 = ptrtoint ptr %b54.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %.unpack173.i = load i64, ptr %b54.i, align 8
  %68 = insertvalue [1 x i64] undef, i64 %.unpack173.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp89.i, [1 x i64] %68, [1 x i64] %.fca.0.insert153.i) #8
  %69 = ptrtoint ptr %tmp89.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tmp89.i, align 8
  %71 = ptrtoint ptr %b88.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %b88.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp89.i) #8
  %72 = ptrtoint ptr %regamma to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load = load i16, ptr %regamma, align 4
  %73 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp9.not = icmp eq i16 %73, 0
  br i1 %cmp9.not, label %scale_user_regamma_ramp.exit.if.end11_crit_edge, label %if.then10

scale_user_regamma_ramp.exit.if.end11_crit_edge:  ; preds = %scale_user_regamma_ramp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %scale_user_regamma_ramp.exit
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %coeff.i) #8
  %74 = call ptr @memset(ptr %coeff.i, i32 255, i32 136)
  %call.i = call fastcc zeroext i1 @build_coefficients(ptr noundef nonnull %coeff.i, i32 noundef 1) #8
  %75 = getelementptr inbounds i8, ptr %scratch_gamma_args.i.i, i32 48
  %a0.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %coeff.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %coeff.i, align 8, !noalias !90
  %a1.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i, i32 0, i32 2
  %arrayidx4.i.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff.i, i32 0, i32 1, i32 0
  %78 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx4.i.i, align 8, !noalias !90
  %a2.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i, i32 0, i32 3
  %arrayidx6.i.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff.i, i32 0, i32 2, i32 0
  %80 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx6.i.i, align 8, !noalias !90
  %a3.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i, i32 0, i32 4
  %arrayidx8.i.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff.i, i32 0, i32 3, i32 0
  %82 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx8.i.i, align 8, !noalias !90
  %gamma.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i, i32 0, i32 5
  %arrayidx9.i.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff.i, i32 0, i32 4, i32 0
  %84 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx9.i.i, align 8, !noalias !90
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then10
  %coord_x.03.i = phi ptr [ @coordinates_x, %if.then10 ], [ %incdec.ptr.i50, %while.body.i.while.body.i_crit_edge ]
  %rgb.02.i = phi ptr [ %call1.i.i.i.i, %if.then10 ], [ %incdec.ptr3.i, %while.body.i.while.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.then10 ], [ %inc.i51, %while.body.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i46) #8
  %x.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.03.i, i32 0, i32 1
  %86 = ptrtoint ptr %x.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %.unpack.i47 = load i64, ptr %x.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i) #8, !noalias !90
  %87 = ptrtoint ptr %75 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %75, align 8, !noalias !90, !annotation !44
  %88 = ptrtoint ptr %scratch_gamma_args.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %.unpack.i47, ptr %scratch_gamma_args.i.i, align 8, !noalias !90
  %89 = ptrtoint ptr %a0.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %77, ptr %a0.i.i, align 8, !noalias !90
  %90 = ptrtoint ptr %a1.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %79, ptr %a1.i.i, align 8, !noalias !90
  %91 = ptrtoint ptr %a2.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %81, ptr %a2.i.i, align 8, !noalias !90
  %92 = ptrtoint ptr %a3.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %83, ptr %a3.i.i, align 8, !noalias !90
  %93 = ptrtoint ptr %gamma.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %85, ptr %gamma.i.i, align 8, !noalias !90
  store ptr %cal_buffer, ptr %75, align 8, !noalias !90
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i46, ptr noundef nonnull %scratch_gamma_args.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i) #8, !noalias !90
  %94 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %tmp.i46, align 8
  %96 = ptrtoint ptr %rgb.02.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %rgb.02.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i46) #8
  %g.i48 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i, i32 0, i32 1
  %97 = ptrtoint ptr %g.i48 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %95, ptr %g.i48, align 8
  %b.i49 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i, i32 0, i32 2
  %98 = ptrtoint ptr %b.i49 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %95, ptr %b.i49, align 8
  %incdec.ptr.i50 = getelementptr %struct.hw_x_point, ptr %coord_x.03.i, i32 1
  %incdec.ptr3.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb.02.i, i32 1
  %inc.i51 = add nuw nsw i32 %i.01.i, 1
  %cmp.not.i = icmp eq i32 %inc.i51, 513
  br i1 %cmp.not.i, label %apply_degamma_for_user_regamma.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

apply_degamma_for_user_regamma.exit:              ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %coeff.i) #8
  br label %while.body.i56

while.body.i56:                                   ; preds = %while.body.i56.while.body.i56_crit_edge, %apply_degamma_for_user_regamma.exit
  %rgb_regamma.03.i = phi ptr [ %call1.i.i.i.i, %apply_degamma_for_user_regamma.exit ], [ %incdec.ptr1.i, %while.body.i56.while.body.i56_crit_edge ]
  %i.02.i = phi i32 [ 0, %apply_degamma_for_user_regamma.exit ], [ %inc.i55, %while.body.i56.while.body.i56_crit_edge ]
  %coords.01.i = phi ptr [ @coordinates_x, %apply_degamma_for_user_regamma.exit ], [ %incdec.ptr.i54, %while.body.i56.while.body.i56_crit_edge ]
  %regamma_y_red.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 2
  %99 = ptrtoint ptr %rgb_regamma.03.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %rgb_regamma.03.i, align 8
  %101 = ptrtoint ptr %regamma_y_red.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %regamma_y_red.i, align 8
  %regamma_y_green.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 3
  %g.i52 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 0, i32 1
  %102 = ptrtoint ptr %g.i52 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %g.i52, align 8
  %104 = ptrtoint ptr %regamma_y_green.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %regamma_y_green.i, align 8
  %regamma_y_blue.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 4
  %b.i53 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 0, i32 2
  %105 = ptrtoint ptr %b.i53 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %b.i53, align 8
  %107 = ptrtoint ptr %regamma_y_blue.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %regamma_y_blue.i, align 8
  %incdec.ptr.i54 = getelementptr %struct.hw_x_point, ptr %coords.01.i, i32 1
  %incdec.ptr1.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 1
  %inc.i55 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i55, 514
  br i1 %exitcond.not.i, label %while.body.i56.if.end11_crit_edge, label %while.body.i56.while.body.i56_crit_edge

while.body.i56.while.body.i56_crit_edge:          ; preds = %while.body.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i56

while.body.i56.if.end11_crit_edge:                ; preds = %while.body.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %while.body.i56.if.end11_crit_edge, %scale_user_regamma_ramp.exit.if.end11_crit_edge
  %108 = ptrtoint ptr %regamma to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load13 = load i16, ptr %regamma, align 4
  %109 = and i16 %bf.load13, 512
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  br label %while.body.i61

while.body.i61:                                   ; preds = %while.body.i61.while.body.i61_crit_edge, %if.end11
  %i.036.i = phi i32 [ 0, %if.end11 ], [ %inc.i59, %while.body.i61.while.body.i61_crit_edge ]
  %arrayidx.i58 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.036.i
  %110 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %arrayidx.i58, align 8
  %arrayidx1.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.036.i
  %111 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %arrayidx1.i, align 8
  %arrayidx2.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.036.i
  %112 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 0, ptr %arrayidx2.i, align 8
  %inc.i59 = add nuw nsw i32 %i.036.i, 1
  %cmp.not.i60 = icmp eq i32 %inc.i59, 32
  br i1 %cmp.not.i60, label %for.cond.preheader.i.preheader, label %while.body.i61.while.body.i61_crit_edge

while.body.i61.while.body.i61_crit_edge:          ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i61

for.cond.preheader.i.preheader:                   ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool17.not = icmp eq i16 %109, 0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.i.preheader
  %i.140.i = phi i32 [ %inc71.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ 32, %for.cond.preheader.i.preheader ]
  %arrayidx13.i62 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.140.i
  %arrayidx16.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.140.i
  %regamma_y_blue.i63 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.140.i, i32 4
  %regamma_y_green.i64 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.140.i, i32 3
  %arrayidx9.i = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.140.i
  %x.i65 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.140.i, i32 1
  %regamma_y_red.i66 = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.140.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %color.037.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc70.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %color.037.i)
  %cmp7.i = icmp eq i32 %color.037.i, 0
  br i1 %cmp7.i, label %if.end17.thread.i, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %color.037.i)
  %cmp10.i = icmp eq i32 %color.037.i, 1
  %tf_point.0.i = select i1 %cmp10.i, ptr %arrayidx13.i62, ptr %arrayidx16.i
  br i1 %tobool17.not, label %if.else.i.if.else30.i_crit_edge, label %if.else22.i

if.else.i.if.else30.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30.i

if.end17.thread.i:                                ; preds = %for.body.i
  br i1 %tobool17.not, label %if.end17.thread.i.if.else30.i_crit_edge, label %if.end17.thread.i.if.end32.i_crit_edge

if.end17.thread.i.if.end32.i_crit_edge:           ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.end17.thread.i.if.else30.i_crit_edge:          ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %regamma_y_green.regamma_y_blue.i = select i1 %cmp10.i, ptr %regamma_y_green.i64, ptr %regamma_y_blue.i63
  br label %if.end32.i

if.else30.i:                                      ; preds = %if.end17.thread.i.if.else30.i_crit_edge, %if.else.i.if.else30.i_crit_edge
  %tf_point.031.i = phi ptr [ %arrayidx9.i, %if.end17.thread.i.if.else30.i_crit_edge ], [ %tf_point.0.i, %if.else.i.if.else30.i_crit_edge ]
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else30.i, %if.else22.i, %if.end17.thread.i.if.end32.i_crit_edge
  %tf_point.030.i = phi ptr [ %tf_point.031.i, %if.else30.i ], [ %arrayidx9.i, %if.end17.thread.i.if.end32.i_crit_edge ], [ %tf_point.0.i, %if.else22.i ]
  %hw_x.sroa.0.0.in.i = phi ptr [ %x.i65, %if.else30.i ], [ %regamma_y_red.i66, %if.end17.thread.i.if.end32.i_crit_edge ], [ %regamma_y_green.regamma_y_blue.i, %if.else22.i ]
  %113 = ptrtoint ptr %hw_x.sroa.0.0.in.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %hw_x.sroa.0.0.i = load i64, ptr %hw_x.sroa.0.0.in.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i57) #8
  %.fca.0.insert108.i = insertvalue [1 x i64] poison, i64 %hw_x.sroa.0.0.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i57, [1 x i64] [i64 1095216660480], [1 x i64] %.fca.0.insert108.i) #8
  %114 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_load8_noabort(i32 %114)
  %norm_x.sroa.0.0.copyload.i = load i64, ptr %tmp.i57, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i57) #8
  %115 = call i64 @llvm.abs.i64(i64 %norm_x.sroa.0.0.copyload.i, i1 false) #8
  %extract12.i.i = lshr i64 %115, 32
  %extract.t13.i.i = trunc i64 %extract12.i.i to i32
  %sub7.i.i = sub i32 0, %extract.t13.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %norm_x.sroa.0.0.copyload.i)
  %cmp414.i.i = icmp slt i64 %norm_x.sroa.0.0.copyload.i, 0
  %retval.0.i.i = select i1 %cmp414.i.i, i32 %sub7.i.i, i32 %extract.t13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %retval.0.i.i)
  %116 = icmp ugt i32 %retval.0.i.i, 255
  br i1 %116, label %if.end32.i.for.inc.i_crit_edge, label %if.end38.i

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end32.i
  %conv1.i.i = zext i32 %retval.0.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv1.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %retval.0.i.i)
  %cmp40.i = icmp eq i32 %retval.0.i.i, 255
  %add41.i = add nuw nsw i32 %retval.0.i.i, 1
  %cond.i = select i1 %cmp40.i, i32 255, i32 %add41.i
  br i1 %cmp7.i, label %if.then43.i, label %if.else47.i

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %retval.0.i.i
  %arrayidx45.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %cond.i
  br label %if.end58.i

if.else47.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %color.037.i)
  %cmp48.i = icmp eq i32 %color.037.i, 1
  br i1 %cmp48.i, label %if.then49.i, label %if.else53.i

if.then49.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  %g.i67 = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %retval.0.i.i, i32 1
  %g52.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %cond.i, i32 1
  br label %if.end58.i

if.else53.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  %b.i68 = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %retval.0.i.i, i32 2
  %b56.i = getelementptr %struct.pwl_float_data, ptr %call7.i.i.i, i32 %cond.i, i32 2
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else53.i, %if.then49.i, %if.then43.i
  %lut1.sroa.0.0.in.i = phi ptr [ %arrayidx44.i, %if.then43.i ], [ %g.i67, %if.then49.i ], [ %b.i68, %if.else53.i ]
  %lut2.sroa.0.0.in.i = phi ptr [ %arrayidx45.i, %if.then43.i ], [ %g52.i, %if.then49.i ], [ %b56.i, %if.else53.i ]
  %117 = ptrtoint ptr %lut2.sroa.0.0.in.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %lut2.sroa.0.0.i = load i64, ptr %lut2.sroa.0.0.in.i, align 8
  %118 = ptrtoint ptr %lut1.sroa.0.0.in.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %lut1.sroa.0.0.i = load i64, ptr %lut1.sroa.0.0.in.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lut1.sroa.0.0.i)
  %cmp.i.i = icmp slt i64 %lut1.sroa.0.0.i, 0
  %add.i.i = xor i64 %lut1.sroa.0.0.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %lut2.sroa.0.0.i)
  %cmp4.not.i.i = icmp sgt i64 %add.i.i, %lut2.sroa.0.0.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.end58.i.dc_fixpt_sub.exit.i_crit_edge

if.end58.i.dc_fixpt_sub.exit.i_crit_edge:         ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i

lor.rhs.i.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lut1.sroa.0.0.i)
  %cmp6.i.i = icmp sgt i64 %lut1.sroa.0.0.i, -1
  %add8.i.i = add i64 %lut1.sroa.0.0.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i, i64 %lut2.sroa.0.0.i)
  %cmp10.i.i = icmp slt i64 %add8.i.i, %lut2.sroa.0.0.i
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge

lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge:        ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !93
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !93
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !93
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !93
  br label %dc_fixpt_sub.exit.i

dc_fixpt_sub.exit.i:                              ; preds = %if.then50.i.i, %lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge, %if.end58.i.dc_fixpt_sub.exit.i_crit_edge
  %sub.i.i = sub i64 %lut2.sroa.0.0.i, %lut1.sroa.0.0.i
  %add.i235.i = or i64 %shl.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i235.i, i64 %norm_x.sroa.0.0.copyload.i)
  %cmp4.not.i3.i = icmp sgt i64 %add.i235.i, %norm_x.sroa.0.0.copyload.i
  br i1 %cmp4.not.i3.i, label %land.rhs13.i11.i, label %dc_fixpt_sub.exit.i.dc_fixpt_sub.exit15.i_crit_edge

dc_fixpt_sub.exit.i.dc_fixpt_sub.exit15.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit15.i

land.rhs13.i11.i:                                 ; preds = %dc_fixpt_sub.exit.i
  %.b65.i10.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !96
  br i1 %.b65.i10.i, label %land.rhs13.i11.i.if.then50.i13.i_crit_edge, label %if.then.i12.i, !prof !43

land.rhs13.i11.i.if.then50.i13.i_crit_edge:       ; preds = %land.rhs13.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i13.i

if.then.i12.i:                                    ; preds = %land.rhs13.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !96
  br label %if.then50.i13.i

if.then50.i13.i:                                  ; preds = %if.then.i12.i, %land.rhs13.i11.i.if.then50.i13.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !96
  br label %dc_fixpt_sub.exit15.i

dc_fixpt_sub.exit15.i:                            ; preds = %if.then50.i13.i, %dc_fixpt_sub.exit.i.dc_fixpt_sub.exit15.i_crit_edge
  %sub.i14.i = sub i64 %norm_x.sroa.0.0.copyload.i, %shl.i.i
  %.fca.0.insert75.i = insertvalue [1 x i64] poison, i64 %sub.i14.i, 0
  %.fca.0.insert78.i = insertvalue [1 x i64] poison, i64 %sub.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i, [1 x i64] %.fca.0.insert75.i, [1 x i64] %.fca.0.insert78.i) #8
  %119 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %.fca.0.load.i = load i64, ptr %agg.tmp.i, align 8
  %sub.i17.i = sub i64 9223372036854775807, %lut1.sroa.0.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i17.i, i64 %.fca.0.load.i)
  %cmp4.not.i18.i = icmp slt i64 %sub.i17.i, %.fca.0.load.i
  %or.cond.i19.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i18.i
  br i1 %or.cond.i19.i, label %lor.rhs.i23.i, label %dc_fixpt_sub.exit15.i.dc_fixpt_add.exit.i_crit_edge

dc_fixpt_sub.exit15.i.dc_fixpt_add.exit.i_crit_edge: ; preds = %dc_fixpt_sub.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i

lor.rhs.i23.i:                                    ; preds = %dc_fixpt_sub.exit15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lut1.sroa.0.0.i)
  %cmp6.i20.i = icmp sgt i64 %lut1.sroa.0.0.i, -1
  %sub8.i.i = sub i64 -9223372036854775808, %lut1.sroa.0.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i, i64 %.fca.0.load.i)
  %cmp10.i21.i = icmp sgt i64 %sub8.i.i, %.fca.0.load.i
  %or.cond67.i22.i = select i1 %cmp6.i20.i, i1 true, i1 %cmp10.i21.i
  br i1 %or.cond67.i22.i, label %land.rhs13.i25.i, label %lor.rhs.i23.i.dc_fixpt_add.exit.i_crit_edge

lor.rhs.i23.i.dc_fixpt_add.exit.i_crit_edge:      ; preds = %lor.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i

land.rhs13.i25.i:                                 ; preds = %lor.rhs.i23.i
  %.b65.i24.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !99
  br i1 %.b65.i24.i, label %land.rhs13.i25.i.if.then50.i27.i_crit_edge, label %if.then.i26.i, !prof !43

land.rhs13.i25.i.if.then50.i27.i_crit_edge:       ; preds = %land.rhs13.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i27.i

if.then.i26.i:                                    ; preds = %land.rhs13.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !99
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !99
  br label %if.then50.i27.i

if.then50.i27.i:                                  ; preds = %if.then.i26.i, %land.rhs13.i25.i.if.then50.i27.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !99
  br label %dc_fixpt_add.exit.i

dc_fixpt_add.exit.i:                              ; preds = %if.then50.i27.i, %lor.rhs.i23.i.dc_fixpt_add.exit.i_crit_edge, %dc_fixpt_sub.exit15.i.dc_fixpt_add.exit.i_crit_edge
  %add.i28.i = add i64 %.fca.0.load.i, %lut1.sroa.0.0.i
  %120 = ptrtoint ptr %tf_point.030.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %add.i28.i, ptr %tf_point.030.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %dc_fixpt_add.exit.i, %if.end32.i.for.inc.i_crit_edge
  %inc70.i = add nuw nsw i32 %color.037.i, 1
  %exitcond.not.i69 = icmp eq i32 %inc70.i, 3
  br i1 %exitcond.not.i69, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %inc71.i = add nuw nsw i32 %i.140.i, 1
  %exitcond41.not.i = icmp eq i32 %inc71.i, 514
  br i1 %exitcond41.not.i, label %interpolate_user_regamma.exit, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

interpolate_user_regamma.exit:                    ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  %end_exponent = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 3
  %121 = ptrtoint ptr %end_exponent to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %end_exponent, align 8
  %x_point_at_y1_red = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 4
  %122 = ptrtoint ptr %x_point_at_y1_red to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %x_point_at_y1_red, align 2
  %x_point_at_y1_green = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 5
  %123 = ptrtoint ptr %x_point_at_y1_green to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %x_point_at_y1_green, align 4
  %x_point_at_y1_blue = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 6
  %124 = ptrtoint ptr %x_point_at_y1_blue to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %x_point_at_y1_blue, align 2
  %tobool18.not = icmp eq ptr %ramp, null
  br i1 %tobool18.not, label %interpolate_user_regamma.exit.while.body.i74.preheader_crit_edge, label %land.lhs.true

interpolate_user_regamma.exit.while.body.i74.preheader_crit_edge: ; preds = %interpolate_user_regamma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i74.preheader

land.lhs.true:                                    ; preds = %interpolate_user_regamma.exit
  %type19 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %125 = ptrtoint ptr %type19 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp20 = icmp eq i32 %126, 3
  br i1 %cmp20, label %if.then21, label %land.lhs.true.while.body.i74.preheader_crit_edge

land.lhs.true.while.body.i74.preheader_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i74.preheader

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @apply_lut_1d(ptr noundef nonnull %ramp, ptr noundef %0)
  br label %while.body.i74.preheader

while.body.i74.preheader:                         ; preds = %if.then21, %land.lhs.true.while.body.i74.preheader_crit_edge, %interpolate_user_regamma.exit.while.body.i74.preheader_crit_edge
  br label %while.body.i74

while.body.i74:                                   ; preds = %while.body.i74.while.body.i74_crit_edge, %while.body.i74.preheader
  %i.010.i = phi i32 [ %inc.i72, %while.body.i74.while.body.i74_crit_edge ], [ 0, %while.body.i74.preheader ]
  %arrayidx.i70 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.010.i
  %127 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load8_noabort(i32 %127)
  %.unpack.i71 = load i64, ptr %arrayidx.i70, align 8
  %128 = call i64 @llvm.smin.i64(i64 %.unpack.i71, i64 4294967296) #8
  %129 = call i64 @llvm.smax.i64(i64 %128, i64 0) #8
  %130 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %arrayidx.i70, align 8
  %arrayidx3.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.010.i
  %131 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %.unpack2.i = load i64, ptr %arrayidx3.i, align 8
  %132 = call i64 @llvm.smin.i64(i64 %.unpack2.i, i64 4294967296) #8
  %133 = call i64 @llvm.smax.i64(i64 %132, i64 0) #8
  %134 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %arrayidx3.i, align 8
  %arrayidx8.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.010.i
  %135 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %.unpack4.i = load i64, ptr %arrayidx8.i, align 8
  %136 = call i64 @llvm.smin.i64(i64 %.unpack4.i, i64 4294967296) #8
  %137 = call i64 @llvm.smax.i64(i64 %136, i64 0) #8
  %138 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %arrayidx8.i, align 8
  %inc.i72 = add nuw nsw i32 %i.010.i, 1
  %cmp.not.i73 = icmp eq i32 %inc.i72, 513
  br i1 %cmp.not.i73, label %build_new_custom_resulted_curve.exit, label %while.body.i74.while.body.i74_crit_edge

while.body.i74.while.body.i74_crit_edge:          ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i74

build_new_custom_resulted_curve.exit:             ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #8
  br label %rgb_regamma_alloc_fail

rgb_regamma_alloc_fail:                           ; preds = %build_new_custom_resulted_curve.exit, %if.end2.rgb_regamma_alloc_fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %rgb_regamma_alloc_fail, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool4, %rgb_regamma_alloc_fail ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_color_calculate_degamma_params(ptr noundef readonly %dc_caps, ptr nocapture noundef %input_tf, ptr noundef %ramp, i1 noundef zeroext %mapUserRamp) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp79 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.if.end58_crit_edge [
    i32 2, label %entry.cleanup_crit_edge
    i32 0, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then3:                                         ; preds = %entry
  %tf4 = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 2
  %4 = ptrtoint ptr %tf4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tf4, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %5, label %if.then3.if.end9_crit_edge [
    i32 0, label %if.then3.land.lhs.true_crit_edge
    i32 3, label %if.then3.land.lhs.true_crit_edge286
  ]

if.then3.land.lhs.true_crit_edge286:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then3.land.lhs.true_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then3.land.lhs.true_crit_edge, %if.then3.land.lhs.true_crit_edge286
  br i1 %mapUserRamp, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.then3.if.end9_crit_edge
  %cmp10.not = icmp eq ptr %dc_caps, null
  br i1 %cmp10.not, label %if.end9.if.end58_crit_edge, label %land.lhs.true11

if.end9.if.end58_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true11:                                  ; preds = %if.end9
  %7 = ptrtoint ptr %dc_caps to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %dc_caps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load)
  %cmp12 = icmp slt i16 %bf.load, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true11.if.end58_crit_edge

land.lhs.true11.if.end58_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then14:                                        ; preds = %land.lhs.true11
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %if.then14.if.end58_crit_edge [
    i32 2, label %land.lhs.true18
    i32 7, label %land.lhs.true30
    i32 5, label %land.lhs.true45
  ]

if.then14.if.end58_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true18:                                  ; preds = %if.then14
  %dgam_rom_caps = getelementptr inbounds %struct.dpp_color_caps, ptr %dc_caps, i32 0, i32 1
  %9 = ptrtoint ptr %dgam_rom_caps to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load20 = load i8, ptr %dgam_rom_caps, align 2
  %10 = and i8 %bf.load20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp23.not = icmp eq i8 %10, 0
  br i1 %cmp23.not, label %land.lhs.true18.if.end58_crit_edge, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true18.if.end58_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true30:                                  ; preds = %if.then14
  %dgam_rom_caps32 = getelementptr inbounds %struct.dpp_color_caps, ptr %dc_caps, i32 0, i32 1
  %11 = ptrtoint ptr %dgam_rom_caps32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load33 = load i8, ptr %dgam_rom_caps32, align 2
  %12 = and i8 %bf.load33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp38.not = icmp eq i8 %12, 0
  br i1 %cmp38.not, label %land.lhs.true30.if.end58_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true30.if.end58_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true45:                                  ; preds = %if.then14
  %dgam_rom_caps47 = getelementptr inbounds %struct.dpp_color_caps, ptr %dc_caps, i32 0, i32 1
  %13 = ptrtoint ptr %dgam_rom_caps47 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load48 = load i8, ptr %dgam_rom_caps47, align 2
  %14 = and i8 %bf.load48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp53.not = icmp eq i8 %14, 0
  br i1 %cmp53.not, label %land.lhs.true45.if.end58_crit_edge, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true45.if.end58_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true45.if.end58_crit_edge, %land.lhs.true30.if.end58_crit_edge, %land.lhs.true18.if.end58_crit_edge, %if.then14.if.end58_crit_edge, %land.lhs.true11.if.end58_crit_edge, %if.end9.if.end58_crit_edge, %entry.if.end58_crit_edge
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %mapUserRamp.not = xor i1 %mapUserRamp, true
  %tobool63.not = icmp eq ptr %ramp, null
  %or.cond = or i1 %tobool63.not, %mapUserRamp.not
  br i1 %or.cond, label %if.end58.if.end81_crit_edge, label %land.lhs.true64

if.end58.if.end81_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

land.lhs.true64:                                  ; preds = %if.end58
  %type65 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %16 = ptrtoint ptr %type65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp66 = icmp eq i32 %17, 1
  br i1 %cmp66, label %if.then68, label %land.lhs.true64.if.end81_crit_edge

land.lhs.true64.if.end81_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then68:                                        ; preds = %land.lhs.true64
  %num_entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 2
  %18 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_entries, align 8
  %add = add i32 %19, 3
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 24) #8
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.then68.cleanup_crit_edge, label %kvcalloc.exit, !prof !102

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.then68
  %22 = extractvalue { i32, i1 } %20, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %22, i32 noundef 3520, i32 noundef -1) #12
  %tobool69.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool69.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end71

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %kvcalloc.exit
  %23 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_entries, align 8
  %add73 = add i32 %24, 3
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add73, i32 24) #8
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %if.end71.axis_x_alloc_fail_crit_edge, label %kvcalloc.exit270, !prof !102

if.end71.axis_x_alloc_fail_crit_edge:             ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %axis_x_alloc_fail

kvcalloc.exit270:                                 ; preds = %if.end71
  %27 = extractvalue { i32, i1 } %25, 0
  %call.i.i.i267 = tail call noalias ptr @kvmalloc_node(i32 noundef %27, i32 noundef 3520, i32 noundef -1) #12
  %tobool75.not = icmp eq ptr %call.i.i.i267, null
  br i1 %tobool75.not, label %kvcalloc.exit270.axis_x_alloc_fail_crit_edge, label %if.end77

kvcalloc.exit270.axis_x_alloc_fail_crit_edge:     ; preds = %kvcalloc.exit270
  call void @__sanitizer_cov_trace_pc() #10
  br label %axis_x_alloc_fail

if.end77:                                         ; preds = %kvcalloc.exit270
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef 3, i64 noundef 2) #8
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %28)
  %dividers.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp79) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp79, i64 noundef 5, i64 noundef 2) #8
  %29 = ptrtoint ptr %tmp79 to i32
  call void @__asan_load8_noabort(i32 %29)
  %dividers.sroa.10.16.copyload = load i64, ptr %tmp79, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp79) #8
  %30 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_entries, align 8
  %.fca.0.insert = insertvalue [3 x i64] poison, i64 %dividers.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [3 x i64] %.fca.0.insert, i64 8589934592, 1
  %.fca.2.insert = insertvalue [3 x i64] %.fca.1.insert, i64 %dividers.sroa.10.16.copyload, 2
  call fastcc void @build_evenly_distributed_points(ptr noundef nonnull %call.i.i.i267, i32 noundef %31, [3 x i64] %.fca.2.insert)
  call fastcc void @scale_gamma(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %ramp, [3 x i64] %.fca.2.insert)
  br label %if.end81

if.end81:                                         ; preds = %if.end77, %land.lhs.true64.if.end81_crit_edge, %if.end58.if.end81_crit_edge
  %rgb_user.0 = phi ptr [ %call.i.i.i, %if.end77 ], [ null, %land.lhs.true64.if.end81_crit_edge ], [ null, %if.end58.if.end81_crit_edge ]
  %axis_x.0 = phi ptr [ %call.i.i.i267, %if.end77 ], [ null, %land.lhs.true64.if.end81_crit_edge ], [ null, %if.end58.if.end81_crit_edge ]
  %call.i.i.i271 = call noalias ptr @kvmalloc_node(i32 noundef 24720, i32 noundef 3520, i32 noundef -1) #12
  %tobool83.not = icmp eq ptr %call.i.i.i271, null
  br i1 %tobool83.not, label %if.end81.curve_alloc_fail_crit_edge, label %if.end85

if.end81.curve_alloc_fail_crit_edge:              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %curve_alloc_fail

if.end85:                                         ; preds = %if.end81
  %call.i.i.i274 = call noalias ptr @kvmalloc_node(i32 noundef 37080, i32 noundef 3520, i32 noundef -1) #12
  %tobool87.not = icmp eq ptr %call.i.i.i274, null
  br i1 %tobool87.not, label %if.end85.coeff_alloc_fail_crit_edge, label %if.end89

if.end85.coeff_alloc_fail_crit_edge:              ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %coeff_alloc_fail

if.end89:                                         ; preds = %if.end85
  %tf90 = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 2
  %32 = ptrtoint ptr %tf90 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tf90, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %33, label %if.end89.invalid_tf_fail_crit_edge [
    i32 2, label %if.then93
    i32 0, label %if.end89.if.then108_crit_edge
    i32 1, label %if.end89.if.then108_crit_edge287
    i32 7, label %if.end89.if.then108_crit_edge288
    i32 8, label %if.end89.if.then108_crit_edge289
    i32 9, label %if.end89.if.then108_crit_edge290
    i32 5, label %if.then113
    i32 3, label %if.end89.while.body_crit_edge
  ]

if.end89.while.body_crit_edge:                    ; preds = %if.end89
  br label %while.body

if.end89.if.then108_crit_edge290:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end89.if.then108_crit_edge289:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end89.if.then108_crit_edge288:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end89.if.then108_crit_edge287:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end89.if.then108_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end89.invalid_tf_fail_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid_tf_fail

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @build_de_pq(ptr noundef nonnull %call.i.i.i271)
  br label %if.end131

if.then108:                                       ; preds = %if.end89.if.then108_crit_edge, %if.end89.if.then108_crit_edge287, %if.end89.if.then108_crit_edge288, %if.end89.if.then108_crit_edge289, %if.end89.if.then108_crit_edge290
  call fastcc void @build_degamma(ptr noundef nonnull %call.i.i.i271, i32 noundef %33)
  br label %if.end131

if.then113:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @build_hlg_degamma(ptr noundef nonnull %call.i.i.i271)
  br label %if.end131

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end89.while.body_crit_edge
  %i.0283 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end89.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i271, i32 %i.0283
  %x = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.0283, i32 1
  %35 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %x, align 8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx, align 8
  %g = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i271, i32 %i.0283, i32 1
  %38 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %36, ptr %g, align 8
  %b = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i271, i32 %i.0283, i32 2
  %39 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %36, ptr %b, align 8
  %inc = add nuw nsw i32 %i.0283, 1
  %cmp118.not = icmp eq i32 %inc, 513
  br i1 %cmp118.not, label %while.body.if.end131_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end131_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.end131:                                        ; preds = %while.body.if.end131_crit_edge, %if.then113, %if.then108, %if.then93
  %end_exponent = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 3
  %40 = ptrtoint ptr %end_exponent to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %end_exponent, align 8
  %x_point_at_y1_red = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 4
  %41 = ptrtoint ptr %x_point_at_y1_red to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %x_point_at_y1_red, align 2
  %x_point_at_y1_green = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 5
  %42 = ptrtoint ptr %x_point_at_y1_green to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %x_point_at_y1_green, align 4
  %x_point_at_y1_blue = getelementptr inbounds %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 6
  %43 = ptrtoint ptr %x_point_at_y1_blue to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %x_point_at_y1_blue, align 2
  %44 = ptrtoint ptr %tf90 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tf90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp133 = icmp eq i32 %45, 2
  br i1 %cmp133, label %if.end131.while.body140_crit_edge, label %if.else149

if.end131.while.body140_crit_edge:                ; preds = %if.end131
  br label %while.body140

while.body140:                                    ; preds = %while.body140.while.body140_crit_edge, %if.end131.while.body140_crit_edge
  %i136.0285 = phi i32 [ %inc147, %while.body140.while.body140_crit_edge ], [ 0, %if.end131.while.body140_crit_edge ]
  %curvePt.0284 = phi ptr [ %incdec.ptr, %while.body140.while.body140_crit_edge ], [ %call.i.i.i271, %if.end131.while.body140_crit_edge ]
  %arrayidx141 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i136.0285
  %46 = ptrtoint ptr %curvePt.0284 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %curvePt.0284, align 8
  %48 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx141, align 8
  %arrayidx143 = getelementptr %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 1, i32 %i136.0285
  %g144 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %curvePt.0284, i32 0, i32 1
  %49 = ptrtoint ptr %g144 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %g144, align 8
  %51 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx143, align 8
  %arrayidx145 = getelementptr %struct.dc_transfer_func, ptr %input_tf, i32 0, i32 4, i32 0, i32 2, i32 %i136.0285
  %b146 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %curvePt.0284, i32 0, i32 2
  %52 = ptrtoint ptr %b146 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %b146, align 8
  %54 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx145, align 8
  %incdec.ptr = getelementptr %struct.pwl_float_data_ex, ptr %curvePt.0284, i32 1
  %inc147 = add nuw nsw i32 %i136.0285, 1
  %exitcond.not = icmp eq i32 %inc147, 513
  br i1 %exitcond.not, label %while.body140.if.end158_crit_edge, label %while.body140.while.body140_crit_edge

while.body140.while.body140_crit_edge:            ; preds = %while.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body140

while.body140.if.end158_crit_edge:                ; preds = %while.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else149:                                       ; preds = %if.end131
  br i1 %or.cond, label %if.else149.land.end_crit_edge, label %land.rhs

if.else149.land.end_crit_edge:                    ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #10
  %type154 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %55 = ptrtoint ptr %type154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp155 = icmp eq i32 %56, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else149.land.end_crit_edge
  %57 = phi i1 [ false, %if.else149.land.end_crit_edge ], [ %cmp155, %land.rhs ]
  call fastcc void @map_regamma_hw_to_x_user(ptr noundef %ramp, ptr noundef nonnull %call.i.i.i274, ptr noundef %rgb_user.0, ptr noundef %axis_x.0, ptr noundef nonnull %call.i.i.i271, ptr noundef %0, i1 noundef zeroext %57, i1 noundef zeroext true)
  br label %if.end158

if.end158:                                        ; preds = %land.end, %while.body140.if.end158_crit_edge
  br i1 %tobool63.not, label %if.end158.invalid_tf_fail_crit_edge, label %land.lhs.true160

if.end158.invalid_tf_fail_crit_edge:              ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid_tf_fail

land.lhs.true160:                                 ; preds = %if.end158
  %type161 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %58 = ptrtoint ptr %type161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp162 = icmp eq i32 %59, 4
  br i1 %cmp162, label %if.then164, label %land.lhs.true160.invalid_tf_fail_crit_edge

land.lhs.true160.invalid_tf_fail_crit_edge:       ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid_tf_fail

if.then164:                                       ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @apply_lut_1d(ptr noundef nonnull %ramp, ptr noundef %0)
  br label %invalid_tf_fail

invalid_tf_fail:                                  ; preds = %if.then164, %land.lhs.true160.invalid_tf_fail_crit_edge, %if.end158.invalid_tf_fail_crit_edge, %if.end89.invalid_tf_fail_crit_edge
  %ret.0 = phi i1 [ false, %if.end89.invalid_tf_fail_crit_edge ], [ true, %if.then164 ], [ true, %land.lhs.true160.invalid_tf_fail_crit_edge ], [ true, %if.end158.invalid_tf_fail_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i274) #8
  br label %coeff_alloc_fail

coeff_alloc_fail:                                 ; preds = %invalid_tf_fail, %if.end85.coeff_alloc_fail_crit_edge
  %ret.1 = phi i1 [ %ret.0, %invalid_tf_fail ], [ false, %if.end85.coeff_alloc_fail_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i271) #8
  br label %curve_alloc_fail

curve_alloc_fail:                                 ; preds = %coeff_alloc_fail, %if.end81.curve_alloc_fail_crit_edge
  %ret.2.off0 = phi i1 [ %ret.1, %coeff_alloc_fail ], [ false, %if.end81.curve_alloc_fail_crit_edge ]
  call void @kvfree(ptr noundef %axis_x.0) #8
  br label %axis_x_alloc_fail

axis_x_alloc_fail:                                ; preds = %curve_alloc_fail, %kvcalloc.exit270.axis_x_alloc_fail_crit_edge, %if.end71.axis_x_alloc_fail_crit_edge
  %rgb_user.1 = phi ptr [ %rgb_user.0, %curve_alloc_fail ], [ %call.i.i.i, %kvcalloc.exit270.axis_x_alloc_fail_crit_edge ], [ %call.i.i.i, %if.end71.axis_x_alloc_fail_crit_edge ]
  %ret.3.off0 = phi i1 [ %ret.2.off0, %curve_alloc_fail ], [ false, %kvcalloc.exit270.axis_x_alloc_fail_crit_edge ], [ false, %if.end71.axis_x_alloc_fail_crit_edge ]
  call void @kvfree(ptr noundef %rgb_user.1) #8
  br label %cleanup

cleanup:                                          ; preds = %axis_x_alloc_fail, %kvcalloc.exit.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true18.cleanup_crit_edge ], [ true, %land.lhs.true30.cleanup_crit_edge ], [ true, %land.lhs.true45.cleanup_crit_edge ], [ %ret.3.off0, %axis_x_alloc_fail ], [ false, %kvcalloc.exit.cleanup_crit_edge ], [ false, %if.then68.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_evenly_distributed_points(ptr nocapture noundef %points, i32 noundef %numberof_points, [3 x i64] %dividers.coerce) unnamed_addr #0 align 64 {
entry:
  %value = alloca %struct.fixed31_32, align 8
  %tmp50 = alloca %struct.fixed31_32, align 8
  %tmp54 = alloca %struct.fixed31_32, align 8
  %tmp60 = alloca %struct.fixed31_32, align 8
  %tmp67 = alloca %struct.fixed31_32, align 8
  %tmp72 = alloca %struct.fixed31_32, align 8
  %tmp78 = alloca %struct.fixed31_32, align 8
  %tmp85 = alloca %struct.fixed31_32, align 8
  %tmp90 = alloca %struct.fixed31_32, align 8
  %tmp96 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numberof_points)
  %cmp.not = icmp eq i32 %numberof_points, 0
  br i1 %cmp.not, label %land.rhs, label %entry.do.end41_crit_edge

entry.do.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.rhs:                                         ; preds = %entry
  %.b169 = load i1, ptr @build_evenly_distributed_points.__already_done, align 1
  br i1 %.b169, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !43

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @build_evenly_distributed_points.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1474, i32 noundef 9, ptr noundef null) #8
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %entry.do.end41_crit_edge
  %sub = add i32 %numberof_points, -1
  %conv44 = zext i32 %sub to i64
  %umax = call i32 @llvm.umax.i32(i32 %numberof_points, i32 1)
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.end41
  %i.0 = phi i32 [ 0, %do.end41 ], [ %inc, %do.body43.do.body43_crit_edge ]
  %p.0 = phi ptr [ %points, %do.end41 ], [ %incdec.ptr, %do.body43.do.body43_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !44
  %conv = zext i32 %i.0 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %value, i64 noundef %conv, i64 noundef %conv44) #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %value, align 8
  %3 = ptrtoint ptr %p.0 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %p.0, align 8
  %g = getelementptr inbounds %struct.gamma_pixel, ptr %p.0, i32 0, i32 1
  %4 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %2, ptr %g, align 8
  %b = getelementptr inbounds %struct.gamma_pixel, ptr %p.0, i32 0, i32 2
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %2, ptr %b, align 8
  %incdec.ptr = getelementptr %struct.gamma_pixel, ptr %p.0, i32 1
  %inc = add nuw i32 %i.0, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #8
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end48, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.gamma_pixel, ptr %points, i32 %numberof_points
  %add.ptr42 = getelementptr %struct.gamma_pixel, ptr %add.ptr, i32 -1
  %dividers.coerce.fca.2.extract = extractvalue [3 x i64] %dividers.coerce, 2
  %dividers.coerce.fca.1.extract = extractvalue [3 x i64] %dividers.coerce, 1
  %dividers.coerce.fca.0.extract = extractvalue [3 x i64] %dividers.coerce, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp50) #8
  %6 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack = load i64, ptr %add.ptr42, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp50, i64 noundef %.unpack, i64 noundef %dividers.coerce.fca.0.extract) #8
  %7 = ptrtoint ptr %tmp50 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tmp50, align 8
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %incdec.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp50) #8
  %g53 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp54) #8
  %g55 = getelementptr inbounds %struct.gamma_pixel, ptr %add.ptr42, i32 0, i32 1
  %10 = ptrtoint ptr %g55 to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack161 = load i64, ptr %g55, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp54, i64 noundef %.unpack161, i64 noundef %dividers.coerce.fca.0.extract) #8
  %11 = ptrtoint ptr %tmp54 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmp54, align 8
  %13 = ptrtoint ptr %g53 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %g53, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp54) #8
  %b59 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp60) #8
  %b61 = getelementptr inbounds %struct.gamma_pixel, ptr %add.ptr42, i32 0, i32 2
  %14 = ptrtoint ptr %b61 to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack162 = load i64, ptr %b61, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp60, i64 noundef %.unpack162, i64 noundef %dividers.coerce.fca.0.extract) #8
  %15 = ptrtoint ptr %tmp60 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tmp60, align 8
  %17 = ptrtoint ptr %b59 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %b59, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp60) #8
  %incdec.ptr65 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp67) #8
  %18 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %18)
  %.unpack163 = load i64, ptr %add.ptr42, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp67, i64 noundef %.unpack163, i64 noundef %dividers.coerce.fca.1.extract) #8
  %19 = ptrtoint ptr %tmp67 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tmp67, align 8
  %21 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %incdec.ptr65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp67) #8
  %g71 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp72) #8
  %22 = ptrtoint ptr %g55 to i32
  call void @__asan_load8_noabort(i32 %22)
  %.unpack164 = load i64, ptr %g55, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp72, i64 noundef %.unpack164, i64 noundef %dividers.coerce.fca.1.extract) #8
  %23 = ptrtoint ptr %tmp72 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tmp72, align 8
  %25 = ptrtoint ptr %g71 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %g71, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp72) #8
  %b77 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp78) #8
  %26 = ptrtoint ptr %b61 to i32
  call void @__asan_load8_noabort(i32 %26)
  %.unpack165 = load i64, ptr %b61, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp78, i64 noundef %.unpack165, i64 noundef %dividers.coerce.fca.1.extract) #8
  %27 = ptrtoint ptr %tmp78 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tmp78, align 8
  %29 = ptrtoint ptr %b77 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %b77, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp78) #8
  %incdec.ptr83 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp85) #8
  %30 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %30)
  %.unpack166 = load i64, ptr %add.ptr42, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp85, i64 noundef %.unpack166, i64 noundef %dividers.coerce.fca.2.extract) #8
  %31 = ptrtoint ptr %tmp85 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp85, align 8
  %33 = ptrtoint ptr %incdec.ptr83 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %incdec.ptr83, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp85) #8
  %g89 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp90) #8
  %34 = ptrtoint ptr %g55 to i32
  call void @__asan_load8_noabort(i32 %34)
  %.unpack167 = load i64, ptr %g55, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp90, i64 noundef %.unpack167, i64 noundef %dividers.coerce.fca.2.extract) #8
  %35 = ptrtoint ptr %tmp90 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tmp90, align 8
  %37 = ptrtoint ptr %g89 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %g89, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp90) #8
  %b95 = getelementptr %struct.gamma_pixel, ptr %p.0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp96) #8
  %38 = ptrtoint ptr %b61 to i32
  call void @__asan_load8_noabort(i32 %38)
  %.unpack168 = load i64, ptr %b61, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp96, i64 noundef %.unpack168, i64 noundef %dividers.coerce.fca.2.extract) #8
  %39 = ptrtoint ptr %tmp96 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tmp96, align 8
  %41 = ptrtoint ptr %b95 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %b95, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp96) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scale_gamma(ptr nocapture noundef %pwl_rgb, ptr nocapture noundef readonly %ramp, [3 x i64] %dividers.coerce) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp21 = alloca %struct.fixed31_32, align 8
  %tmp27 = alloca %struct.fixed31_32, align 8
  %tmp39 = alloca %struct.fixed31_32, align 8
  %tmp44 = alloca %struct.fixed31_32, align 8
  %tmp50 = alloca %struct.fixed31_32, align 8
  %tmp57 = alloca %struct.fixed31_32, align 8
  %tmp62 = alloca %struct.fixed31_32, align 8
  %tmp68 = alloca %struct.fixed31_32, align 8
  %tmp75 = alloca %struct.fixed31_32, align 8
  %tmp80 = alloca %struct.fixed31_32, align 8
  %tmp86 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 2
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 8
  %entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %arrayidx = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 280375465082880, i64 %.unpack)
  %cmp.i = icmp sgt i64 %.unpack, 280375465082880
  br i1 %cmp.i, label %do.body.do.end_crit_edge, label %lor.lhs.false

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %arrayidx4 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %i.0
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack180 = load i64, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 280375465082880, i64 %.unpack180)
  %cmp.i194 = icmp sgt i64 %.unpack180, 280375465082880
  br i1 %cmp.i194, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %i.0
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack181 = load i64, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 280375465082880, i64 %.unpack181)
  %cmp.i195 = icmp sgt i64 %.unpack181, 280375465082880
  br i1 %cmp.i195, label %lor.lhs.false8.do.end_crit_edge, label %if.end

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false8
  %inc = add i32 %i.0, 1
  %cmp.not = icmp eq i32 %inc, %1
  br i1 %cmp.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %scaler.sroa.0.0 = phi i64 [ 280375465082880, %if.end.do.end_crit_edge ], [ 281470681743360, %lor.lhs.false8.do.end_crit_edge ], [ 281470681743360, %lor.lhs.false.do.end_crit_edge ], [ 281470681743360, %do.body.do.end_crit_edge ]
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %do.end
  %i.1 = phi i32 [ 0, %do.end ], [ %inc33, %do.body15.do.body15_crit_edge ]
  %rgb.0 = phi ptr [ %pwl_rgb, %do.end ], [ %incdec.ptr, %do.body15.do.body15_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx18 = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %i.1
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.unpack182 = load i64, ptr %arrayidx18, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %.unpack182, i64 noundef %scaler.sroa.0.0) #8
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tmp, align 8
  %8 = ptrtoint ptr %rgb.0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rgb.0, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %g = getelementptr inbounds %struct.pwl_float_data, ptr %rgb.0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp21) #8
  %arrayidx24 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %i.1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack183 = load i64, ptr %arrayidx24, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp21, i64 noundef %.unpack183, i64 noundef %scaler.sroa.0.0) #8
  %10 = ptrtoint ptr %tmp21 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tmp21, align 8
  %12 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %g, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp21) #8
  %b = getelementptr inbounds %struct.pwl_float_data, ptr %rgb.0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp27) #8
  %arrayidx30 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %i.1
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack184 = load i64, ptr %arrayidx30, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp27, i64 noundef %.unpack184, i64 noundef %scaler.sroa.0.0) #8
  %14 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp27, align 8
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %b, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp27) #8
  %incdec.ptr = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 1
  %inc33 = add i32 %i.1, 1
  %17 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_entries, align 8
  %cmp36.not = icmp eq i32 %inc33, %18
  br i1 %cmp36.not, label %do.end37, label %do.body15.do.body15_crit_edge

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.end37:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %1
  %add.ptr1 = getelementptr %struct.pwl_float_data, ptr %add.ptr, i32 -1
  %dividers.coerce.fca.2.extract = extractvalue [3 x i64] %dividers.coerce, 2
  %dividers.coerce.fca.1.extract = extractvalue [3 x i64] %dividers.coerce, 1
  %dividers.coerce.fca.0.extract = extractvalue [3 x i64] %dividers.coerce, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp39) #8
  %19 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.unpack185 = load i64, ptr %add.ptr1, align 8
  %20 = insertvalue [1 x i64] undef, i64 %.unpack185, 0
  %.fca.0.insert149 = insertvalue [1 x i64] poison, i64 %dividers.coerce.fca.0.extract, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp39, [1 x i64] %20, [1 x i64] %.fca.0.insert149) #8
  %21 = ptrtoint ptr %tmp39 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tmp39, align 8
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %incdec.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp39) #8
  %g43 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp44) #8
  %g45 = getelementptr inbounds %struct.pwl_float_data, ptr %add.ptr1, i32 0, i32 1
  %24 = ptrtoint ptr %g45 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack186 = load i64, ptr %g45, align 8
  %25 = insertvalue [1 x i64] undef, i64 %.unpack186, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp44, [1 x i64] %25, [1 x i64] %.fca.0.insert149) #8
  %26 = ptrtoint ptr %tmp44 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tmp44, align 8
  %28 = ptrtoint ptr %g43 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %g43, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp44) #8
  %b49 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp50) #8
  %b51 = getelementptr inbounds %struct.pwl_float_data, ptr %add.ptr1, i32 0, i32 2
  %29 = ptrtoint ptr %b51 to i32
  call void @__asan_load8_noabort(i32 %29)
  %.unpack187 = load i64, ptr %b51, align 8
  %30 = insertvalue [1 x i64] undef, i64 %.unpack187, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp50, [1 x i64] %30, [1 x i64] %.fca.0.insert149) #8
  %31 = ptrtoint ptr %tmp50 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp50, align 8
  %33 = ptrtoint ptr %b49 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %b49, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp50) #8
  %incdec.ptr55 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp57) #8
  %34 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %.unpack188 = load i64, ptr %add.ptr1, align 8
  %35 = insertvalue [1 x i64] undef, i64 %.unpack188, 0
  %.fca.0.insert158 = insertvalue [1 x i64] poison, i64 %dividers.coerce.fca.1.extract, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp57, [1 x i64] %35, [1 x i64] %.fca.0.insert158) #8
  %36 = ptrtoint ptr %tmp57 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tmp57, align 8
  %38 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %incdec.ptr55, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp57) #8
  %g61 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp62) #8
  %39 = ptrtoint ptr %g45 to i32
  call void @__asan_load8_noabort(i32 %39)
  %.unpack189 = load i64, ptr %g45, align 8
  %40 = insertvalue [1 x i64] undef, i64 %.unpack189, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp62, [1 x i64] %40, [1 x i64] %.fca.0.insert158) #8
  %41 = ptrtoint ptr %tmp62 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tmp62, align 8
  %43 = ptrtoint ptr %g61 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %g61, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp62) #8
  %b67 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp68) #8
  %44 = ptrtoint ptr %b51 to i32
  call void @__asan_load8_noabort(i32 %44)
  %.unpack190 = load i64, ptr %b51, align 8
  %45 = insertvalue [1 x i64] undef, i64 %.unpack190, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp68, [1 x i64] %45, [1 x i64] %.fca.0.insert158) #8
  %46 = ptrtoint ptr %tmp68 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tmp68, align 8
  %48 = ptrtoint ptr %b67 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %b67, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp68) #8
  %incdec.ptr73 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp75) #8
  %49 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load8_noabort(i32 %49)
  %.unpack191 = load i64, ptr %add.ptr1, align 8
  %50 = insertvalue [1 x i64] undef, i64 %.unpack191, 0
  %.fca.0.insert167 = insertvalue [1 x i64] poison, i64 %dividers.coerce.fca.2.extract, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp75, [1 x i64] %50, [1 x i64] %.fca.0.insert167) #8
  %51 = ptrtoint ptr %tmp75 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tmp75, align 8
  %53 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %incdec.ptr73, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp75) #8
  %g79 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp80) #8
  %54 = ptrtoint ptr %g45 to i32
  call void @__asan_load8_noabort(i32 %54)
  %.unpack192 = load i64, ptr %g45, align 8
  %55 = insertvalue [1 x i64] undef, i64 %.unpack192, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp80, [1 x i64] %55, [1 x i64] %.fca.0.insert167) #8
  %56 = ptrtoint ptr %tmp80 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tmp80, align 8
  %58 = ptrtoint ptr %g79 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %g79, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp80) #8
  %b85 = getelementptr %struct.pwl_float_data, ptr %rgb.0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp86) #8
  %59 = ptrtoint ptr %b51 to i32
  call void @__asan_load8_noabort(i32 %59)
  %.unpack193 = load i64, ptr %b51, align 8
  %60 = insertvalue [1 x i64] undef, i64 %.unpack193, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp86, [1 x i64] %60, [1 x i64] %.fca.0.insert167) #8
  %61 = ptrtoint ptr %tmp86 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tmp86, align 8
  %63 = ptrtoint ptr %b85 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %b85, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp86) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_de_pq(ptr nocapture noundef writeonly %de_pq) unnamed_addr #0 align 64 {
entry:
  %y.i = alloca %struct.fixed31_32, align 8
  %tmp.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mod_color_get_table(i32 noundef 1) #8
  %call1 = tail call zeroext i1 @mod_color_is_table_init(i32 noundef 1) #8
  br i1 %call1, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y.i) #8
  %0 = ptrtoint ptr %y.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %y.i, align 8, !annotation !44
  %call.i = tail call ptr @mod_color_get_table(i32 noundef 1) #8
  %1 = call ptr @memset(ptr %call.i, i32 0, i32 1672)
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %if.then
  %i.138.i = phi i32 [ %inc9.i, %for.body3.i.for.body3.i_crit_edge ], [ 209, %if.then ]
  %x.i = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.138.i, i32 1
  %2 = ptrtoint ptr %x.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack.i = load i64, ptr %x.i, align 8
  %3 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  call fastcc void @compute_de_pq([1 x i64] %3, ptr noundef nonnull %y.i) #8
  %arrayidx5.i = getelementptr %struct.fixed31_32, ptr %call.i, i32 %i.138.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %y.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load24.i = load i64, ptr %y.i, align 8
  %.fca.0.insert25.i = insertvalue [1 x i64] poison, i64 %.fca.0.load24.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, [1 x i64] %.fca.0.insert25.i, [1 x i64] [i64 536870912000]) #8
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp.i, align 8
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx5.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %inc9.i = add nuw nsw i32 %i.138.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 401
  br i1 %exitcond.not.i, label %for.body13.i.preheader, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.body13.i.preheader:                           ; preds = %for.body3.i
  %uglygep = getelementptr i8, ptr %call.i, i32 3200
  %8 = ptrtoint ptr %uglygep to i32
  call void @__asan_load8_noabort(i32 %8)
  %load_initial = load i64, ptr %uglygep, align 8
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body13.i.preheader
  %i.240.i = phi i32 [ %inc17.i, %for.body13.i.for.body13.i_crit_edge ], [ 401, %for.body13.i.preheader ]
  %arrayidx14.i = getelementptr %struct.fixed31_32, ptr %call.i, i32 %i.240.i
  %9 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %load_initial, ptr %arrayidx14.i, align 8
  %inc17.i = add nuw nsw i32 %i.240.i, 1
  %exitcond42.not.i = icmp eq i32 %inc17.i, 513
  br i1 %exitcond42.not.i, label %precompute_de_pq.exit, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13.i

precompute_de_pq.exit:                            ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y.i) #8
  call void @mod_color_set_table_init_state(i32 noundef 1, i1 noundef zeroext true) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %precompute_de_pq.exit, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.fixed31_32, ptr %call, i32 %i.03
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %output.sroa.0.0.copyload = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %output.sroa.0.0.copyload)
  %cmp.i = icmp slt i64 %output.sroa.0.0.copyload, 0
  %11 = call i64 @llvm.umin.i64(i64 %output.sroa.0.0.copyload, i64 536870912000)
  %output.sroa.0.0 = select i1 %cmp.i, i64 0, i64 %11
  %arrayidx10 = getelementptr %struct.pwl_float_data_ex, ptr %de_pq, i32 %i.03
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %output.sroa.0.0, ptr %arrayidx10, align 8
  %g = getelementptr %struct.pwl_float_data_ex, ptr %de_pq, i32 %i.03, i32 1
  %13 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %output.sroa.0.0, ptr %g, align 8
  %b = getelementptr %struct.pwl_float_data_ex, ptr %de_pq, i32 %i.03, i32 2
  %14 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %output.sroa.0.0, ptr %b, align 8
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 513
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_degamma(ptr nocapture noundef writeonly %curve, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i188.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i189.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp12.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp13.i.i = alloca %struct.fixed31_32, align 8
  %tmp37.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp38.i.i = alloca %struct.fixed31_32, align 8
  %coeff = alloca %struct.gamma_coefficients, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %coeff) #8
  %0 = call ptr @memset(ptr %coeff, i32 255, i32 136)
  %call = call fastcc zeroext i1 @build_coefficients(ptr noundef nonnull %coeff, i32 noundef %type)
  br i1 %call, label %entry.while.body_crit_edge, label %entry.release_crit_edge

entry.release_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond3.preheader:                            ; preds = %while.body
  %a1.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 1
  %a2.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 2
  %a3.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 3
  %user_gamma.i = getelementptr inbounds %struct.gamma_coefficients, ptr %coeff, i32 0, i32 4
  %1 = ptrtoint ptr %coeff to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack.i = load i64, ptr %coeff, align 8, !noalias !103
  %2 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  %3 = ptrtoint ptr %a1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack1.i = load i64, ptr %a1.i, align 8, !noalias !103
  %4 = insertvalue [1 x i64] undef, i64 %.unpack1.i, 0
  %5 = ptrtoint ptr %a2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %.unpack2.i = load i64, ptr %a2.i, align 8, !noalias !103
  %6 = ptrtoint ptr %a3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack3.i = load i64, ptr %a3.i, align 8, !noalias !103
  %7 = ptrtoint ptr %user_gamma.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack4.i = load i64, ptr %user_gamma.i, align 8, !noalias !103
  %8 = insertvalue [1 x i64] undef, i64 %.unpack4.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.unpack3.i)
  %cmp4.not.i143.i.i = icmp sgt i64 %.unpack3.i, 9223372032559808511
  %add.i150.i.i = add i64 %.unpack3.i, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack4.i)
  %cmp3.i.i.i = icmp eq i64 %.unpack4.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack2.i)
  %cmp.i164.i.i = icmp slt i64 %.unpack2.i, 0
  %sub.i165.i.i = sub i64 9223372036854775807, %.unpack2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack2.i)
  %cmp6.i168.i.i = icmp sgt i64 %.unpack2.i, -1
  %sub8.i.i.i = sub i64 -9223372036854775808, %.unpack2.i
  br label %while.body5

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.01 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.01
  %inc = add nuw nsw i32 %i.01, 1
  %cmp.not = icmp eq i32 %inc, 208
  %9 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  br i1 %cmp.not, label %while.cond3.preheader, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body5:                                      ; preds = %translate_to_linear_space_ex.exit.while.body5_crit_edge, %while.cond3.preheader
  %i.12 = phi i32 [ 208, %while.cond3.preheader ], [ %inc17, %translate_to_linear_space_ex.exit.while.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %x = getelementptr %struct.hw_x_point, ptr @coordinates_x, i32 %i.12, i32 1
  %10 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack = load i64, ptr %x, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp12.i.i) #8, !noalias !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp13.i.i) #8, !noalias !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp38.i.i) #8, !noalias !103
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %tmp, align 8, !alias.scope !109, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #8, !noalias !109
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i, [1 x i64] %2, [1 x i64] %4) #8, !noalias !109
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %a0.sroa.0.0.copyload.i.i = load i64, ptr %tmp.i.i, align 8, !noalias !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #8, !noalias !109
  %sub.i.i.i = sub i64 0, %a0.sroa.0.0.copyload.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack, i64 %sub.i.i.i)
  %cmp.i.not.i.i = icmp sgt i64 %.unpack, %sub.i.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack)
  %cmp.i140.i.i = icmp slt i64 %.unpack, 0
  %add.i.i.i = xor i64 %.unpack, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %.unpack2.i)
  %cmp4.not.i.i.i = icmp sgt i64 %add.i.i.i, %.unpack2.i
  %or.cond.i.i.i = select i1 %cmp.i140.i.i, i1 true, i1 %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %lor.rhs.i.i.i, label %if.then.i.i.dc_fixpt_sub.exit.i.i_crit_edge

if.then.i.i.dc_fixpt_sub.exit.i.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack)
  %cmp6.i.i.i = icmp sgt i64 %.unpack, -1
  %add8.i.i.i = add i64 %.unpack, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i, i64 %.unpack2.i)
  %cmp10.i.i.i = icmp slt i64 %add8.i.i.i, %.unpack2.i
  %or.cond67.i.i.i = select i1 %cmp6.i.i.i, i1 true, i1 %cmp10.i.i.i
  br i1 %or.cond67.i.i.i, label %land.rhs13.i.i.i, label %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge

lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

land.rhs13.i.i.i:                                 ; preds = %lor.rhs.i.i.i
  %.b65.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !110
  br i1 %.b65.i.i.i, label %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge, label %if.then.i.i.i, !prof !43

land.rhs13.i.i.i.if.then50.i.i.i_crit_edge:       ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !110
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !110
  br label %if.then50.i.i.i

if.then50.i.i.i:                                  ; preds = %if.then.i.i.i, %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !110
  br label %dc_fixpt_sub.exit.i.i

dc_fixpt_sub.exit.i.i:                            ; preds = %if.then50.i.i.i, %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge, %if.then.i.i.dc_fixpt_sub.exit.i.i_crit_edge
  %sub.i141.i.i = sub i64 %.unpack2.i, %.unpack
  br i1 %cmp4.not.i143.i.i, label %lor.rhs.i145.i.i, label %dc_fixpt_sub.exit.i.i.dc_fixpt_add.exit.i.i_crit_edge

dc_fixpt_sub.exit.i.i.dc_fixpt_add.exit.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i

lor.rhs.i145.i.i:                                 ; preds = %dc_fixpt_sub.exit.i.i
  %.b65.i146.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !113
  br i1 %.b65.i146.i.i, label %lor.rhs.i145.i.i.if.then50.i149.i.i_crit_edge, label %if.then.i148.i.i, !prof !43

lor.rhs.i145.i.i.if.then50.i149.i.i_crit_edge:    ; preds = %lor.rhs.i145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i149.i.i

if.then.i148.i.i:                                 ; preds = %lor.rhs.i145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !113
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !113
  br label %if.then50.i149.i.i

if.then50.i149.i.i:                               ; preds = %if.then.i148.i.i, %lor.rhs.i145.i.i.if.then50.i149.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !113
  br label %dc_fixpt_add.exit.i.i

dc_fixpt_add.exit.i.i:                            ; preds = %if.then50.i149.i.i, %dc_fixpt_sub.exit.i.i.dc_fixpt_add.exit.i.i_crit_edge
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp13.i.i, i64 noundef %sub.i141.i.i, i64 noundef %add.i150.i.i) #8, !noalias !109
  %13 = ptrtoint ptr %agg.tmp13.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load65.i.i = load i64, ptr %agg.tmp13.i.i, align 8, !noalias !109
  call void @llvm.experimental.noalias.scope.decl(metadata !116) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i.i) #8, !noalias !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i.i.i) #8, !noalias !109
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load65.i.i)
  %cmp.i151.i.i = icmp eq i64 %.fca.0.load65.i.i, 0
  br i1 %cmp.i151.i.i, label %if.then.i153.i.i, label %if.end.i.i.i

if.then.i153.i.i:                                 ; preds = %dc_fixpt_add.exit.i.i
  br i1 %cmp3.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.then.i153.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %agg.tmp12.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 4294967296, ptr %agg.tmp12.i.i, align 8, !alias.scope !116, !noalias !109
  br label %dc_fixpt_pow.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i153.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %agg.tmp12.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %agg.tmp12.i.i, align 8, !alias.scope !116, !noalias !109
  br label %dc_fixpt_pow.exit.i.i

if.end.i.i.i:                                     ; preds = %dc_fixpt_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert66.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load65.i.i, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i.i.i, [1 x i64] %.fca.0.insert66.i.i) #8, !noalias !119
  %16 = ptrtoint ptr %agg.tmp4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.0.load.i.i.i = load i64, ptr %agg.tmp4.i.i.i, align 8, !noalias !119
  %.fca.0.insert.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i.i, [1 x i64] %.fca.0.insert.i.i.i, [1 x i64] %8) #8, !noalias !119
  %17 = ptrtoint ptr %agg.tmp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.0.load10.i.i.i = load i64, ptr %agg.tmp.i.i.i, align 8, !noalias !119
  %.fca.0.insert11.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i.i.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp12.i.i, [1 x i64] %.fca.0.insert11.i.i.i) #8, !noalias !109
  br label %dc_fixpt_pow.exit.i.i

dc_fixpt_pow.exit.i.i:                            ; preds = %if.end.i.i.i, %cond.false.i.i.i, %cond.true.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i.i) #8, !noalias !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i.i.i) #8, !noalias !109
  %18 = ptrtoint ptr %agg.tmp12.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %.fca.0.load68.i.i = load i64, ptr %agg.tmp12.i.i, align 8, !noalias !109
  %sub.i154.i.i = sub i64 0, %.fca.0.load68.i.i
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub.i154.i.i, ptr %tmp, align 8, !alias.scope !109
  br label %translate_to_linear_space_ex.exit

land.lhs.true.i.i:                                ; preds = %while.body5
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack, i64 %a0.sroa.0.0.copyload.i.i)
  %cmp.i159.not.i.i = icmp sgt i64 %.unpack, %a0.sroa.0.0.copyload.i.i
  br i1 %cmp.i159.not.i.i, label %if.else36.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %.unpack, i64 noundef %.unpack1.i) #8
  br label %translate_to_linear_space_ex.exit

if.else36.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp37.i.i) #8, !noalias !109
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i165.i.i, i64 %.unpack)
  %cmp4.not.i166.i.i = icmp slt i64 %sub.i165.i.i, %.unpack
  %or.cond.i167.i.i = select i1 %cmp.i164.i.i, i1 true, i1 %cmp4.not.i166.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i.i, i64 %.unpack)
  %cmp10.i169.i.i = icmp sgt i64 %sub8.i.i.i, %.unpack
  %or.cond67.i170.i.i = select i1 %cmp6.i168.i.i, i1 true, i1 %cmp10.i169.i.i
  %or.cond = select i1 %or.cond.i167.i.i, i1 %or.cond67.i170.i.i, i1 false
  br i1 %or.cond, label %land.rhs13.i173.i.i, label %if.else36.i.i.dc_fixpt_add.exit177.i.i_crit_edge

if.else36.i.i.dc_fixpt_add.exit177.i.i_crit_edge: ; preds = %if.else36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit177.i.i

land.rhs13.i173.i.i:                              ; preds = %if.else36.i.i
  %.b65.i172.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !120
  br i1 %.b65.i172.i.i, label %land.rhs13.i173.i.i.if.then50.i175.i.i_crit_edge, label %if.then.i174.i.i, !prof !43

land.rhs13.i173.i.i.if.then50.i175.i.i_crit_edge: ; preds = %land.rhs13.i173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i175.i.i

if.then.i174.i.i:                                 ; preds = %land.rhs13.i173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !120
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !120
  br label %if.then50.i175.i.i

if.then50.i175.i.i:                               ; preds = %if.then.i174.i.i, %land.rhs13.i173.i.i.if.then50.i175.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !120
  br label %dc_fixpt_add.exit177.i.i

dc_fixpt_add.exit177.i.i:                         ; preds = %if.then50.i175.i.i, %if.else36.i.i.dc_fixpt_add.exit177.i.i_crit_edge
  %add.i176.i.i = add i64 %.unpack2.i, %.unpack
  br i1 %cmp4.not.i143.i.i, label %lor.rhs.i181.i.i, label %dc_fixpt_add.exit177.i.i.dc_fixpt_add.exit187.i.i_crit_edge

dc_fixpt_add.exit177.i.i.dc_fixpt_add.exit187.i.i_crit_edge: ; preds = %dc_fixpt_add.exit177.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit187.i.i

lor.rhs.i181.i.i:                                 ; preds = %dc_fixpt_add.exit177.i.i
  %.b65.i182.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !123
  br i1 %.b65.i182.i.i, label %lor.rhs.i181.i.i.if.then50.i185.i.i_crit_edge, label %if.then.i184.i.i, !prof !43

lor.rhs.i181.i.i.if.then50.i185.i.i_crit_edge:    ; preds = %lor.rhs.i181.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i185.i.i

if.then.i184.i.i:                                 ; preds = %lor.rhs.i181.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !123
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !123
  br label %if.then50.i185.i.i

if.then50.i185.i.i:                               ; preds = %if.then.i184.i.i, %lor.rhs.i181.i.i.if.then50.i185.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !123
  br label %dc_fixpt_add.exit187.i.i

dc_fixpt_add.exit187.i.i:                         ; preds = %if.then50.i185.i.i, %dc_fixpt_add.exit177.i.i.dc_fixpt_add.exit187.i.i_crit_edge
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp38.i.i, i64 noundef %add.i176.i.i, i64 noundef %add.i150.i.i) #8, !noalias !109
  %20 = ptrtoint ptr %agg.tmp38.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %.fca.0.load53.i.i = load i64, ptr %agg.tmp38.i.i, align 8, !noalias !109
  call void @llvm.experimental.noalias.scope.decl(metadata !126) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i188.i.i) #8, !noalias !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i189.i.i) #8, !noalias !109
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load53.i.i)
  %cmp.i190.i.i = icmp eq i64 %.fca.0.load53.i.i, 0
  br i1 %cmp.i190.i.i, label %if.then.i193.i.i, label %if.end.i200.i.i

if.then.i193.i.i:                                 ; preds = %dc_fixpt_add.exit187.i.i
  br i1 %cmp3.i.i.i, label %cond.true.i194.i.i, label %cond.false.i195.i.i

cond.true.i194.i.i:                               ; preds = %if.then.i193.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4294967296, ptr %tmp37.i.i, align 8, !alias.scope !126, !noalias !109
  br label %dc_fixpt_pow.exit201.i.i

cond.false.i195.i.i:                              ; preds = %if.then.i193.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %tmp37.i.i, align 8, !alias.scope !126, !noalias !109
  br label %dc_fixpt_pow.exit201.i.i

if.end.i200.i.i:                                  ; preds = %dc_fixpt_add.exit187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert54.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load53.i.i, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i189.i.i, [1 x i64] %.fca.0.insert54.i.i) #8, !noalias !129
  %23 = ptrtoint ptr %agg.tmp4.i189.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %.fca.0.load.i196.i.i = load i64, ptr %agg.tmp4.i189.i.i, align 8, !noalias !129
  %.fca.0.insert.i197.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i196.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i188.i.i, [1 x i64] %.fca.0.insert.i197.i.i, [1 x i64] %8) #8, !noalias !129
  %24 = ptrtoint ptr %agg.tmp.i188.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %.fca.0.load10.i198.i.i = load i64, ptr %agg.tmp.i188.i.i, align 8, !noalias !129
  %.fca.0.insert11.i199.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i198.i.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp37.i.i, [1 x i64] %.fca.0.insert11.i199.i.i) #8, !noalias !109
  br label %dc_fixpt_pow.exit201.i.i

dc_fixpt_pow.exit201.i.i:                         ; preds = %if.end.i200.i.i, %cond.false.i195.i.i, %cond.true.i194.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i188.i.i) #8, !noalias !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i189.i.i) #8, !noalias !109
  %25 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tmp37.i.i, align 8, !noalias !109
  %27 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tmp, align 8, !alias.scope !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp37.i.i) #8, !noalias !109
  br label %translate_to_linear_space_ex.exit

translate_to_linear_space_ex.exit:                ; preds = %dc_fixpt_pow.exit201.i.i, %if.then32.i.i, %dc_fixpt_pow.exit.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp12.i.i) #8, !noalias !103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp13.i.i) #8, !noalias !103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp38.i.i) #8, !noalias !103
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tmp, align 8
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %g10 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.12, i32 1
  %31 = ptrtoint ptr %g10 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %g10, align 8
  %b14 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.12, i32 2
  %32 = ptrtoint ptr %b14 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %29, ptr %b14, align 8
  %inc17 = add nuw nsw i32 %i.12, 1
  %cmp4.not = icmp eq i32 %inc17, 400
  br i1 %cmp4.not, label %translate_to_linear_space_ex.exit.while.body22_crit_edge, label %translate_to_linear_space_ex.exit.while.body5_crit_edge

translate_to_linear_space_ex.exit.while.body5_crit_edge: ; preds = %translate_to_linear_space_ex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body5

translate_to_linear_space_ex.exit.while.body22_crit_edge: ; preds = %translate_to_linear_space_ex.exit
  br label %while.body22

while.body22:                                     ; preds = %while.body22.while.body22_crit_edge, %translate_to_linear_space_ex.exit.while.body22_crit_edge
  %i.23 = phi i32 [ %inc29, %while.body22.while.body22_crit_edge ], [ 400, %translate_to_linear_space_ex.exit.while.body22_crit_edge ]
  %arrayidx23 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.23
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 4294967296, ptr %arrayidx23, align 8
  %g26 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.23, i32 1
  %34 = ptrtoint ptr %g26 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 4294967296, ptr %g26, align 8
  %b28 = getelementptr %struct.pwl_float_data_ex, ptr %curve, i32 %i.23, i32 2
  %35 = ptrtoint ptr %b28 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 4294967296, ptr %b28, align 8
  %inc29 = add nuw nsw i32 %i.23, 1
  %cmp21.not = icmp eq i32 %inc29, 513
  br i1 %cmp21.not, label %while.body22.release_crit_edge, label %while.body22.while.body22_crit_edge

while.body22.while.body22_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body22

while.body22.release_crit_edge:                   ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

release:                                          ; preds = %while.body22.release_crit_edge, %entry.release_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %coeff) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_hlg_degamma(ptr nocapture noundef %degamma) unnamed_addr #0 align 64 {
entry:
  %scaling_factor.i = alloca %struct.fixed31_32, align 8
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp2.i = alloca %struct.fixed31_32, align 8
  %tmp3.i = alloca %struct.fixed31_32, align 8
  %tmp4.i = alloca %struct.fixed31_32, align 8
  %tmp7.i = alloca %struct.fixed31_32, align 8
  %tmp10.i = alloca %struct.fixed31_32, align 8
  %tmp15.i = alloca %struct.fixed31_32, align 8
  %tmp18.i = alloca %struct.fixed31_32, align 8
  %tmp23.i = alloca %struct.fixed31_32, align 8
  %tmp25.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %compute_hlg_eotf.exit.while.body_crit_edge, %entry
  %coord_x.03 = phi ptr [ @coordinates_x, %entry ], [ %incdec.ptr, %compute_hlg_eotf.exit.while.body_crit_edge ]
  %rgb.02 = phi ptr [ %degamma, %entry ], [ %incdec.ptr3, %compute_hlg_eotf.exit.while.body_crit_edge ]
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %compute_hlg_eotf.exit.while.body_crit_edge ]
  %x = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.03, i32 0, i32 1
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %x, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaling_factor.i) #8
  %1 = ptrtoint ptr %scaling_factor.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %scaling_factor.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaling_factor.i, i64 noundef 1000, i64 noundef 80) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, i64 noundef 17883277, i64 noundef 100000000) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %a.sroa.0.0.copyload.i = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp2.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp2.i, i64 noundef 28466892, i64 noundef 100000000) #8
  %3 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %b.sroa.0.0.copyload.i = load i64, ptr %tmp2.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp2.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp3.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp3.i, i64 noundef 55991073, i64 noundef 100000000) #8
  %4 = ptrtoint ptr %tmp3.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %c.sroa.0.0.copyload.i = load i64, ptr %tmp3.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp3.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp4.i, i64 noundef 1, i64 noundef 2) #8
  %5 = ptrtoint ptr %tmp4.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %threshold.sroa.0.0.copyload.i = load i64, ptr %tmp4.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack, i64 %threshold.sroa.0.0.copyload.i)
  %cmp.i.i = icmp slt i64 %.unpack, %threshold.sroa.0.0.copyload.i
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7.i) #8
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp7.i, [1 x i64] %6, [1 x i64] %6) #8
  %7 = ptrtoint ptr %tmp7.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %x.sroa.0.0.copyload.i = load i64, ptr %tmp7.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp10.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp10.i, i64 noundef %x.sroa.0.0.copyload.i, i64 noundef 12884901888) #8
  %8 = ptrtoint ptr %tmp10.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %x.sroa.0.0.copyload46.i = load i64, ptr %tmp10.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp10.i) #8
  br label %compute_hlg_eotf.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %c.sroa.0.0.copyload.i)
  %cmp.i2.i = icmp slt i64 %c.sroa.0.0.copyload.i, 0
  %add.i.i = xor i64 %c.sroa.0.0.copyload.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %.unpack)
  %cmp4.not.i.i = icmp sgt i64 %add.i.i, %.unpack
  %or.cond.i.i = select i1 %cmp.i2.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.else.i.dc_fixpt_sub.exit.i_crit_edge

if.else.i.dc_fixpt_sub.exit.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i

lor.rhs.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %c.sroa.0.0.copyload.i)
  %cmp6.i.i = icmp sgt i64 %c.sroa.0.0.copyload.i, -1
  %add8.i.i = add i64 %c.sroa.0.0.copyload.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i, i64 %.unpack)
  %cmp10.i.i = icmp slt i64 %add8.i.i, %.unpack
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge

lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge:        ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !130
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !130
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !130
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !130
  br label %dc_fixpt_sub.exit.i

dc_fixpt_sub.exit.i:                              ; preds = %if.then50.i.i, %lor.rhs.i.i.dc_fixpt_sub.exit.i_crit_edge, %if.else.i.dc_fixpt_sub.exit.i_crit_edge
  %sub.i.i = sub i64 %.unpack, %c.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp15.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp15.i, i64 noundef %sub.i.i, i64 noundef %a.sroa.0.0.copyload.i) #8
  %9 = ptrtoint ptr %tmp15.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %x.sroa.0.0.copyload49.i = load i64, ptr %tmp15.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp15.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp18.i) #8
  %.fca.0.insert36.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload49.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp18.i, [1 x i64] %.fca.0.insert36.i) #8
  %10 = ptrtoint ptr %tmp18.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %x.sroa.0.0.copyload51.i = load i64, ptr %tmp18.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp18.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %x.sroa.0.0.copyload51.i)
  %cmp.i3.i = icmp slt i64 %x.sroa.0.0.copyload51.i, 0
  %sub.i4.i = sub i64 9223372036854775807, %x.sroa.0.0.copyload51.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i4.i, i64 %b.sroa.0.0.copyload.i)
  %cmp4.not.i5.i = icmp slt i64 %sub.i4.i, %b.sroa.0.0.copyload.i
  %or.cond.i6.i = select i1 %cmp.i3.i, i1 true, i1 %cmp4.not.i5.i
  br i1 %or.cond.i6.i, label %lor.rhs.i10.i, label %dc_fixpt_sub.exit.i.dc_fixpt_add.exit.i_crit_edge

dc_fixpt_sub.exit.i.dc_fixpt_add.exit.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i

lor.rhs.i10.i:                                    ; preds = %dc_fixpt_sub.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %x.sroa.0.0.copyload51.i)
  %cmp6.i7.i = icmp sgt i64 %x.sroa.0.0.copyload51.i, -1
  %sub8.i.i = sub i64 -9223372036854775808, %x.sroa.0.0.copyload51.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i, i64 %b.sroa.0.0.copyload.i)
  %cmp10.i8.i = icmp sgt i64 %sub8.i.i, %b.sroa.0.0.copyload.i
  %or.cond67.i9.i = select i1 %cmp6.i7.i, i1 true, i1 %cmp10.i8.i
  br i1 %or.cond67.i9.i, label %land.rhs13.i12.i, label %lor.rhs.i10.i.dc_fixpt_add.exit.i_crit_edge

lor.rhs.i10.i.dc_fixpt_add.exit.i_crit_edge:      ; preds = %lor.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i

land.rhs13.i12.i:                                 ; preds = %lor.rhs.i10.i
  %.b65.i11.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !133
  br i1 %.b65.i11.i, label %land.rhs13.i12.i.if.then50.i14.i_crit_edge, label %if.then.i13.i, !prof !43

land.rhs13.i12.i.if.then50.i14.i_crit_edge:       ; preds = %land.rhs13.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i14.i

if.then.i13.i:                                    ; preds = %land.rhs13.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !133
  br label %if.then50.i14.i

if.then50.i14.i:                                  ; preds = %if.then.i13.i, %land.rhs13.i12.i.if.then50.i14.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !133
  br label %dc_fixpt_add.exit.i

dc_fixpt_add.exit.i:                              ; preds = %if.then50.i14.i, %lor.rhs.i10.i.dc_fixpt_add.exit.i_crit_edge, %dc_fixpt_sub.exit.i.dc_fixpt_add.exit.i_crit_edge
  %add.i15.i = add i64 %x.sroa.0.0.copyload51.i, %b.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23.i, i64 noundef %add.i15.i, i64 noundef 51539607552) #8
  %11 = ptrtoint ptr %tmp23.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %x.sroa.0.0.copyload55.i = load i64, ptr %tmp23.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23.i) #8
  br label %compute_hlg_eotf.exit

compute_hlg_eotf.exit:                            ; preds = %dc_fixpt_add.exit.i, %if.then.i
  %x.sroa.0.0.i = phi i64 [ %x.sroa.0.0.copyload46.i, %if.then.i ], [ %x.sroa.0.0.copyload55.i, %dc_fixpt_add.exit.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp25.i) #8
  %.fca.0.insert45.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.i, 0
  %12 = ptrtoint ptr %scaling_factor.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.fca.0.load.i = load i64, ptr %scaling_factor.i, align 8
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp25.i, [1 x i64] %.fca.0.insert45.i, [1 x i64] %.fca.0.insert.i) #8
  %13 = ptrtoint ptr %tmp25.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tmp25.i, align 8
  %15 = ptrtoint ptr %rgb.02 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %rgb.02, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp25.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaling_factor.i) #8
  %g = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02, i32 0, i32 1
  %16 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %14, ptr %g, align 8
  %b = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02, i32 0, i32 2
  %17 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %14, ptr %b, align 8
  %incdec.ptr = getelementptr %struct.hw_x_point, ptr %coord_x.03, i32 1
  %incdec.ptr3 = getelementptr %struct.pwl_float_data_ex, ptr %rgb.02, i32 1
  %inc = add nuw nsw i32 %i.01, 1
  %cmp.not = icmp eq i32 %inc, 513
  br i1 %cmp.not, label %while.end, label %compute_hlg_eotf.exit.while.body_crit_edge

compute_hlg_eotf.exit.while.body_crit_edge:       ; preds = %compute_hlg_eotf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %compute_hlg_eotf.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @map_regamma_hw_to_x_user(ptr noundef readonly %ramp, ptr nocapture noundef %coeff128, ptr nocapture noundef readonly %rgb_user, ptr nocapture noundef readonly %axis_x, ptr nocapture noundef readonly %rgb_regamma, ptr nocapture noundef %tf_pts, i1 noundef zeroext %mapUserRamp, i1 noundef zeroext %doClamping) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.fixed31_32, align 8
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp3.i = alloca %struct.fixed31_32, align 8
  %tmp5.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %ramp, null
  %0 = and i1 %tobool.not, %mapUserRamp
  br i1 %0, label %entry.while.body.i_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %rgb_regamma.03.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %rgb_regamma, %entry.while.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %coords.01.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ @coordinates_x, %entry.while.body.i_crit_edge ]
  %regamma_y_red.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 2
  %1 = ptrtoint ptr %rgb_regamma.03.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rgb_regamma.03.i, align 8
  %3 = ptrtoint ptr %regamma_y_red.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %regamma_y_red.i, align 8
  %regamma_y_green.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 3
  %g.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 0, i32 1
  %4 = ptrtoint ptr %g.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %g.i, align 8
  %6 = ptrtoint ptr %regamma_y_green.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %regamma_y_green.i, align 8
  %regamma_y_blue.i = getelementptr inbounds %struct.hw_x_point, ptr %coords.01.i, i32 0, i32 4
  %b.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 0, i32 2
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b.i, align 8
  %9 = ptrtoint ptr %regamma_y_blue.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %regamma_y_blue.i, align 8
  %incdec.ptr.i = getelementptr %struct.hw_x_point, ptr %coords.01.i, i32 1
  %incdec.ptr1.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb_regamma.03.i, i32 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 514
  br i1 %exitcond.not.i, label %copy_rgb_regamma_to_coordinates_x.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

copy_rgb_regamma_to_coordinates_x.exit:           ; preds = %while.body.i
  %num_entries.i.i.i = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %cleanup80.sink.split.i.i.for.cond.i_crit_edge, %cleanup.i.i.for.cond.i_crit_edge
  %inc.i1 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i2 = icmp eq i32 %inc.i1, 3
  br i1 %exitcond.not.i2, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %copy_rgb_regamma_to_coordinates_x.exit
  %i.05.i = phi i32 [ 0, %copy_rgb_regamma_to_coordinates_x.exit ], [ %inc.i1, %for.cond.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.05.i)
  %cmp1.i.i = icmp eq i32 %i.05.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.05.i)
  %cmp2.i.i = icmp eq i32 %i.05.i, 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %for.body.i
  %cmp44.i.i = phi i1 [ true, %for.body.i ], [ %cmp.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %i.041.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regamma_y_red.i.i = getelementptr %struct.hw_x_point, ptr @coordinates_x, i32 %i.041.i.i, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else5.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regamma_y_green.i.i = getelementptr %struct.hw_x_point, ptr @coordinates_x, i32 %i.041.i.i, i32 3
  br label %if.end7.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regamma_y_blue.i.i = getelementptr %struct.hw_x_point, ptr @coordinates_x, i32 %i.041.i.i, i32 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else5.i.i, %if.then3.i.i, %if.then.i.i
  %coord_x.sroa.0.0.in.i.i = phi ptr [ %regamma_y_red.i.i, %if.then.i.i ], [ %regamma_y_green.i.i, %if.then3.i.i ], [ %regamma_y_blue.i.i, %if.else5.i.i ]
  %10 = ptrtoint ptr %coord_x.sroa.0.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %coord_x.sroa.0.0.i.i = load i64, ptr %coord_x.sroa.0.0.in.i.i, align 8
  %11 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_entries.i.i.i, align 8
  %add.i.i.i = add i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %cmp168.i.not.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %cmp168.i.not.i.i, label %if.end7.i.i.cleanup80.sink.split.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end7.i.i.cleanup80.sink.split.i.i_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end7.i.i
  %sub14.i.i.i = add i32 %12, 2
  %g23.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %sub14.i.i.i, i32 1
  %arrayidx8.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %sub14.i.i.i
  %b36.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %sub14.i.i.i, i32 2
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end70.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %cmp170.i.i.i = phi i1 [ true, %while.body.lr.ph.i.i.i ], [ %cmp.i.i.i, %if.end70.i.i.i.while.body.i.i.i_crit_edge ]
  %i.0169.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end70.i.i.i.while.body.i.i.i_crit_edge ]
  %13 = zext i32 %i.05.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %i.05.i, label %if.else25.i.i.i [
    i32 0, label %if.then.i.i.i
    i32 1, label %if.then12.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %i.0169.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %left.sroa.0.0.copyload.i.i.i = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i.i.i, i32 %sub14.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %i.0169.i.i.i, %sub14.i.i.i
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.if.end39.i.i.i_crit_edge

if.then.i.i.i.if.end39.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add4.i.i.i = add nuw i32 %i.0169.i.i.i, 1
  %arrayidx5.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %add4.i.i.i
  br label %if.end39.i.i.i

if.then12.i.i.i:                                  ; preds = %while.body.i.i.i
  %g.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %i.0169.i.i.i, i32 1
  %15 = ptrtoint ptr %g.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %left.sroa.0.0.copyload109.i.i.i = load i64, ptr %g.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i.i.i, i32 %sub14.i.i.i)
  %cmp15.i.i.i = icmp ult i32 %i.0169.i.i.i, %sub14.i.i.i
  br i1 %cmp15.i.i.i, label %if.then16.i.i.i, label %if.then12.i.i.i.if.end39.i.i.i_crit_edge

if.then12.i.i.i.if.end39.i.i.i_crit_edge:         ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i.i

if.then16.i.i.i:                                  ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add17.i.i.i = add nuw i32 %i.0169.i.i.i, 1
  %g19.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %add17.i.i.i, i32 1
  br label %if.end39.i.i.i

if.else25.i.i.i:                                  ; preds = %while.body.i.i.i
  %b.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %i.0169.i.i.i, i32 2
  %16 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %left.sroa.0.0.copyload110.i.i.i = load i64, ptr %b.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i.i.i, i32 %sub14.i.i.i)
  %cmp28.i.i.i = icmp ult i32 %i.0169.i.i.i, %sub14.i.i.i
  br i1 %cmp28.i.i.i, label %if.then29.i.i.i, label %if.else25.i.i.i.if.end39.i.i.i_crit_edge

if.else25.i.i.i.if.end39.i.i.i_crit_edge:         ; preds = %if.else25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i.i

if.then29.i.i.i:                                  ; preds = %if.else25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add30.i.i.i = add nuw i32 %i.0169.i.i.i, 1
  %b32.i.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %add30.i.i.i, i32 2
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.else25.i.i.i.if.end39.i.i.i_crit_edge, %if.then16.i.i.i, %if.then12.i.i.i.if.end39.i.i.i_crit_edge, %if.then3.i.i.i, %if.then.i.i.i.if.end39.i.i.i_crit_edge
  %left.sroa.0.0.i.i.i = phi i64 [ %left.sroa.0.0.copyload.i.i.i, %if.then3.i.i.i ], [ %left.sroa.0.0.copyload109.i.i.i, %if.then16.i.i.i ], [ %left.sroa.0.0.copyload110.i.i.i, %if.then29.i.i.i ], [ %left.sroa.0.0.copyload.i.i.i, %if.then.i.i.i.if.end39.i.i.i_crit_edge ], [ %left.sroa.0.0.copyload109.i.i.i, %if.then12.i.i.i.if.end39.i.i.i_crit_edge ], [ %left.sroa.0.0.copyload110.i.i.i, %if.else25.i.i.i.if.end39.i.i.i_crit_edge ]
  %right.sroa.0.0.in.i.i.i = phi ptr [ %arrayidx5.i.i.i, %if.then3.i.i.i ], [ %g19.i.i.i, %if.then16.i.i.i ], [ %b32.i.i.i, %if.then29.i.i.i ], [ %arrayidx8.i.i.i, %if.then.i.i.i.if.end39.i.i.i_crit_edge ], [ %g23.i.i.i, %if.then12.i.i.i.if.end39.i.i.i_crit_edge ], [ %b36.i.i.i, %if.else25.i.i.i.if.end39.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %right.sroa.0.0.in.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %right.sroa.0.0.i.i.i = load i64, ptr %right.sroa.0.0.in.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %left.sroa.0.0.i.i.i, i64 %coord_x.sroa.0.0.i.i)
  %cmp.i.i.i.i = icmp sle i64 %left.sroa.0.0.i.i.i, %coord_x.sroa.0.0.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %coord_x.sroa.0.0.i.i, i64 %right.sroa.0.0.i.i.i)
  %cmp.i154.i.i.i = icmp sle i64 %coord_x.sroa.0.0.i.i, %right.sroa.0.0.i.i.i
  %or.cond.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp.i154.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then45.i.i.i, label %if.else53.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i.i.i, i32 %sub14.i.i.i)
  %cmp47.i.i.i = icmp ult i32 %i.0169.i.i.i, %sub14.i.i.i
  %add49.i.i.i = add nuw i32 %i.0169.i.i.i, 1
  %storemerge.i.i.i = select i1 %cmp47.i.i.i, i32 %add49.i.i.i, i32 %sub14.i.i.i
  br i1 %cmp170.i.i.i, label %if.then45.i.i.i.if.end9.i.i_crit_edge, label %if.then45.i.i.i.cleanup80.sink.split.i.i_crit_edge

if.then45.i.i.i.cleanup80.sink.split.i.i_crit_edge: ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

if.then45.i.i.i.if.end9.i.i_crit_edge:            ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.else53.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0169.i.i.i)
  %cmp54.i.i.i = icmp eq i32 %i.0169.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %coord_x.sroa.0.0.i.i, i64 %left.sroa.0.0.i.i.i)
  %cmp.i156.i.i.i = icmp sle i64 %coord_x.sroa.0.0.i.i, %left.sroa.0.0.i.i.i
  %or.cond159.i.i.i = select i1 %cmp54.i.i.i, i1 %cmp.i156.i.i.i, i1 false
  br i1 %or.cond159.i.i.i, label %if.else53.i.i.i.find_software_points.exit.i.i_crit_edge, label %if.else60.i.i.i

if.else53.i.i.i.find_software_points.exit.i.i_crit_edge: ; preds = %if.else53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_software_points.exit.i.i

if.else60.i.i.i:                                  ; preds = %if.else53.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i.i.i, i32 %sub14.i.i.i)
  %cmp62.i.i.i = icmp eq i32 %i.0169.i.i.i, %sub14.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %right.sroa.0.0.i.i.i, i64 %coord_x.sroa.0.0.i.i)
  %cmp.i158.i.i.i = icmp sle i64 %right.sroa.0.0.i.i.i, %coord_x.sroa.0.0.i.i
  %or.cond160.i.i.i = select i1 %cmp62.i.i.i, i1 %cmp.i158.i.i.i, i1 false
  br i1 %or.cond160.i.i.i, label %if.else60.i.i.i.find_software_points.exit.i.i_crit_edge, label %if.end70.i.i.i

if.else60.i.i.i.find_software_points.exit.i.i_crit_edge: ; preds = %if.else60.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_software_points.exit.i.i

if.end70.i.i.i:                                   ; preds = %if.else60.i.i.i
  %inc.i.i.i = add nuw i32 %i.0169.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %add.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %add.i.i.i
  br i1 %exitcond.not.i.i.i, label %if.end70.i.i.i.find_software_points.exit.i.i_crit_edge, label %if.end70.i.i.i.while.body.i.i.i_crit_edge

if.end70.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

if.end70.i.i.i.find_software_points.exit.i.i_crit_edge: ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_software_points.exit.i.i

find_software_points.exit.i.i:                    ; preds = %if.end70.i.i.i.find_software_points.exit.i.i_crit_edge, %if.else60.i.i.i.find_software_points.exit.i.i_crit_edge, %if.else53.i.i.i.find_software_points.exit.i.i_crit_edge
  %hw_pos.0.i.i = phi i32 [ -1, %if.end70.i.i.i.find_software_points.exit.i.i_crit_edge ], [ 1, %if.else53.i.i.i.find_software_points.exit.i.i_crit_edge ], [ 2, %if.else60.i.i.i.find_software_points.exit.i.i_crit_edge ]
  %index_right.0.i.i = phi i32 [ 0, %if.end70.i.i.i.find_software_points.exit.i.i_crit_edge ], [ 0, %if.else53.i.i.i.find_software_points.exit.i.i_crit_edge ], [ %sub14.i.i.i, %if.else60.i.i.i.find_software_points.exit.i.i_crit_edge ]
  %cmp164.i.i.i = phi i1 [ %cmp.i.i.i, %if.end70.i.i.i.find_software_points.exit.i.i_crit_edge ], [ %cmp170.i.i.i, %if.else53.i.i.i.find_software_points.exit.i.i_crit_edge ], [ %cmp170.i.i.i, %if.else60.i.i.i.find_software_points.exit.i.i_crit_edge ]
  br i1 %cmp164.i.i.i, label %find_software_points.exit.i.i.if.end9.i.i_crit_edge, label %find_software_points.exit.i.i.cleanup80.sink.split.i.i_crit_edge

find_software_points.exit.i.i.cleanup80.sink.split.i.i_crit_edge: ; preds = %find_software_points.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

find_software_points.exit.i.i.if.end9.i.i_crit_edge: ; preds = %find_software_points.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %find_software_points.exit.i.i.if.end9.i.i_crit_edge, %if.then45.i.i.i.if.end9.i.i_crit_edge
  %index_left.131.i.i = phi i32 [ %i.0169.i.i.i, %if.then45.i.i.i.if.end9.i.i_crit_edge ], [ %index_right.0.i.i, %find_software_points.exit.i.i.if.end9.i.i_crit_edge ]
  %index_right.030.i.i = phi i32 [ %storemerge.i.i.i, %if.then45.i.i.i.if.end9.i.i_crit_edge ], [ %index_right.0.i.i, %find_software_points.exit.i.i.if.end9.i.i_crit_edge ]
  %hw_pos.029.i.i = phi i32 [ 0, %if.then45.i.i.i.if.end9.i.i_crit_edge ], [ %hw_pos.0.i.i, %find_software_points.exit.i.i.if.end9.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index_left.131.i.i, i32 %add.i.i.i)
  %cmp10.not.i.i = icmp ult i32 %index_left.131.i.i, %add.i.i.i
  br i1 %cmp10.not.i.i, label %if.end15.i.i, label %if.end9.i.i.cleanup80.sink.split.i.i_crit_edge

if.end9.i.i.cleanup80.sink.split.i.i_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %index_right.030.i.i, i32 %add.i.i.i)
  %cmp18.not.i.i = icmp ult i32 %index_right.030.i.i, %add.i.i.i
  br i1 %cmp18.not.i.i, label %if.end23.i.i, label %if.end15.i.i.cleanup80.sink.split.i.i_crit_edge

if.end15.i.i.cleanup80.sink.split.i.i_crit_edge:  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

if.end23.i.i:                                     ; preds = %if.end15.i.i
  br i1 %cmp1.i.i, label %if.then25.i.i, label %if.else31.i.i

if.then25.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.i.i = getelementptr %struct.pixel_gamma_point, ptr %coeff128, i32 %i.041.i.i
  %arrayidx27.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_left.131.i.i
  %arrayidx29.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_right.030.i.i
  br label %if.end46.i.i

if.else31.i.i:                                    ; preds = %if.end23.i.i
  br i1 %cmp2.i.i, label %if.then33.i.i, label %if.else39.i.i

if.then33.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %g.i.i = getelementptr %struct.pixel_gamma_point, ptr %coeff128, i32 %i.041.i.i, i32 1
  %g36.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_left.131.i.i, i32 1
  %g38.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_right.030.i.i, i32 1
  br label %if.end46.i.i

if.else39.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b.i.i = getelementptr %struct.pixel_gamma_point, ptr %coeff128, i32 %i.041.i.i, i32 2
  %b42.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_left.131.i.i, i32 2
  %b44.i.i = getelementptr %struct.gamma_pixel, ptr %axis_x, i32 %index_right.030.i.i, i32 2
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.else39.i.i, %if.then33.i.i, %if.then25.i.i
  %point.0.i.i = phi ptr [ %arrayidx26.i.i, %if.then25.i.i ], [ %g.i.i, %if.then33.i.i ], [ %b.i.i, %if.else39.i.i ]
  %left_pos.sroa.0.0.in.i.i = phi ptr [ %arrayidx27.i.i, %if.then25.i.i ], [ %g36.i.i, %if.then33.i.i ], [ %b42.i.i, %if.else39.i.i ]
  %right_pos.sroa.0.0.in.i.i = phi ptr [ %arrayidx29.i.i, %if.then25.i.i ], [ %g38.i.i, %if.then33.i.i ], [ %b44.i.i, %if.else39.i.i ]
  %18 = zext i32 %hw_pos.029.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %hw_pos.029.i.i, label %if.end46.i.i.cleanup80.sink.split.i.i_crit_edge [
    i32 0, label %if.then48.i.i
    i32 1, label %if.then59.i.i
    i32 2, label %if.then63.i.i
  ]

if.end46.i.i.cleanup80.sink.split.i.i_crit_edge:  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80.sink.split.i.i

if.then48.i.i:                                    ; preds = %if.end46.i.i
  %19 = ptrtoint ptr %right_pos.sroa.0.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %right_pos.sroa.0.0.i.i = load i64, ptr %right_pos.sroa.0.0.in.i.i, align 8
  %20 = ptrtoint ptr %left_pos.sroa.0.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %left_pos.sroa.0.0.i.i = load i64, ptr %left_pos.sroa.0.0.in.i.i, align 8
  %coeff49.i.i = getelementptr inbounds %struct.gamma_point, ptr %point.0.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %left_pos.sroa.0.0.i.i)
  %cmp.i1.i.i = icmp slt i64 %left_pos.sroa.0.0.i.i, 0
  %add.i2.i.i = xor i64 %left_pos.sroa.0.0.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i2.i.i, i64 %coord_x.sroa.0.0.i.i)
  %cmp4.not.i.i.i = icmp sgt i64 %add.i2.i.i, %coord_x.sroa.0.0.i.i
  %or.cond.i3.i.i = select i1 %cmp.i1.i.i, i1 true, i1 %cmp4.not.i.i.i
  br i1 %or.cond.i3.i.i, label %lor.rhs.i.i.i, label %if.then48.i.i.dc_fixpt_sub.exit.i.i_crit_edge

if.then48.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %left_pos.sroa.0.0.i.i)
  %cmp6.i.i.i = icmp sgt i64 %left_pos.sroa.0.0.i.i, -1
  %add8.i.i.i = add i64 %left_pos.sroa.0.0.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i, i64 %coord_x.sroa.0.0.i.i)
  %cmp10.i.i.i = icmp slt i64 %add8.i.i.i, %coord_x.sroa.0.0.i.i
  %or.cond67.i.i.i = select i1 %cmp6.i.i.i, i1 true, i1 %cmp10.i.i.i
  br i1 %or.cond67.i.i.i, label %land.rhs13.i.i.i, label %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge

lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

land.rhs13.i.i.i:                                 ; preds = %lor.rhs.i.i.i
  %.b65.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !136
  br i1 %.b65.i.i.i, label %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge, label %if.then.i4.i.i, !prof !43

land.rhs13.i.i.i.if.then50.i.i.i_crit_edge:       ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i.i

if.then.i4.i.i:                                   ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !136
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !136
  br label %if.then50.i.i.i

if.then50.i.i.i:                                  ; preds = %if.then.i4.i.i, %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !136
  br label %dc_fixpt_sub.exit.i.i

dc_fixpt_sub.exit.i.i:                            ; preds = %if.then50.i.i.i, %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge, %if.then48.i.i.dc_fixpt_sub.exit.i.i_crit_edge
  %sub.i.i.i = sub i64 %coord_x.sroa.0.0.i.i, %left_pos.sroa.0.0.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i2.i.i, i64 %right_pos.sroa.0.0.i.i)
  %cmp4.not.i7.i.i = icmp sgt i64 %add.i2.i.i, %right_pos.sroa.0.0.i.i
  %or.cond.i8.i.i = select i1 %cmp.i1.i.i, i1 true, i1 %cmp4.not.i7.i.i
  br i1 %or.cond.i8.i.i, label %lor.rhs.i13.i.i, label %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit19.i.i_crit_edge

dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit19.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit19.i.i

lor.rhs.i13.i.i:                                  ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %left_pos.sroa.0.0.i.i)
  %cmp6.i9.i.i = icmp sgt i64 %left_pos.sroa.0.0.i.i, -1
  %add8.i10.i.i = add i64 %left_pos.sroa.0.0.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i10.i.i, i64 %right_pos.sroa.0.0.i.i)
  %cmp10.i11.i.i = icmp slt i64 %add8.i10.i.i, %right_pos.sroa.0.0.i.i
  %or.cond67.i12.i.i = select i1 %cmp6.i9.i.i, i1 true, i1 %cmp10.i11.i.i
  br i1 %or.cond67.i12.i.i, label %land.rhs13.i15.i.i, label %lor.rhs.i13.i.i.dc_fixpt_sub.exit19.i.i_crit_edge

lor.rhs.i13.i.i.dc_fixpt_sub.exit19.i.i_crit_edge: ; preds = %lor.rhs.i13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit19.i.i

land.rhs13.i15.i.i:                               ; preds = %lor.rhs.i13.i.i
  %.b65.i14.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !139
  br i1 %.b65.i14.i.i, label %land.rhs13.i15.i.i.if.then50.i17.i.i_crit_edge, label %if.then.i16.i.i, !prof !43

land.rhs13.i15.i.i.if.then50.i17.i.i_crit_edge:   ; preds = %land.rhs13.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i17.i.i

if.then.i16.i.i:                                  ; preds = %land.rhs13.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !139
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !139
  br label %if.then50.i17.i.i

if.then50.i17.i.i:                                ; preds = %if.then.i16.i.i, %land.rhs13.i15.i.i.if.then50.i17.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !139
  br label %dc_fixpt_sub.exit19.i.i

dc_fixpt_sub.exit19.i.i:                          ; preds = %if.then50.i17.i.i, %lor.rhs.i13.i.i.dc_fixpt_sub.exit19.i.i_crit_edge, %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit19.i.i_crit_edge
  %sub.i18.i.i = sub i64 %right_pos.sroa.0.0.i.i, %left_pos.sroa.0.0.i.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i, i64 noundef %sub.i.i.i, i64 noundef %sub.i18.i.i) #8
  %21 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tmp.i.i, align 8
  %23 = ptrtoint ptr %coeff49.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %coeff49.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #8
  br label %cleanup.i.i

if.then59.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %coeff60.i.i = getelementptr inbounds %struct.gamma_point, ptr %point.0.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %coeff60.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %coeff60.i.i, align 8
  br label %cleanup.i.i

if.then63.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %coeff64.i.i = getelementptr inbounds %struct.gamma_point, ptr %point.0.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %coeff64.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 8589934592, ptr %coeff64.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then63.i.i, %if.then59.i.i, %dc_fixpt_sub.exit19.i.i
  %26 = ptrtoint ptr %point.0.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %index_left.131.i.i, ptr %point.0.i.i, align 8
  %right_index.i.i = getelementptr inbounds %struct.gamma_point, ptr %point.0.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %right_index.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %index_right.030.i.i, ptr %right_index.i.i, align 4
  %pos.i.i = getelementptr inbounds %struct.gamma_point, ptr %point.0.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %hw_pos.029.i.i, ptr %pos.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %i.041.i.i)
  %cmp.i.i = icmp ult i32 %i.041.i.i, 512
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 513
  br i1 %exitcond.not.i.i, label %cleanup.i.i.for.cond.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cleanup.i.i.for.cond.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup80.sink.split.i.i:                         ; preds = %if.end46.i.i.cleanup80.sink.split.i.i_crit_edge, %if.end15.i.i.cleanup80.sink.split.i.i_crit_edge, %if.end9.i.i.cleanup80.sink.split.i.i_crit_edge, %find_software_points.exit.i.i.cleanup80.sink.split.i.i_crit_edge, %if.then45.i.i.i.cleanup80.sink.split.i.i_crit_edge, %if.end7.i.i.cleanup80.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 624, %if.end7.i.i.cleanup80.sink.split.i.i_crit_edge ], [ 624, %if.then45.i.i.i.cleanup80.sink.split.i.i_crit_edge ], [ 624, %find_software_points.exit.i.i.cleanup80.sink.split.i.i_crit_edge ], [ 629, %if.end9.i.i.cleanup80.sink.split.i.i_crit_edge ], [ 634, %if.end15.i.i.cleanup80.sink.split.i.i_crit_edge ], [ 668, %if.end46.i.i.cleanup80.sink.split.i.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.build_custom_gamma_mapping_coefficients_worker, i32 noundef %.sink.i.i) #8
  call void @kgdb_breakpoint() #8
  br i1 %cmp44.i.i, label %cleanup80.sink.split.i.i.if.end_crit_edge, label %cleanup80.sink.split.i.i.for.cond.i_crit_edge

cleanup80.sink.split.i.i.for.cond.i_crit_edge:    ; preds = %cleanup80.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup80.sink.split.i.i.if.end_crit_edge:        ; preds = %cleanup80.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.i:                                        ; preds = %for.cond.i
  %29 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_entries.i.i.i, align 8
  %add.i = add i32 %30, 2
  br label %while.body.i4

while.body.i4:                                    ; preds = %while.body.i4.while.body.i4_crit_edge, %for.end.i
  %i.19.i = phi i32 [ 0, %for.end.i ], [ %inc6.i, %while.body.i4.while.body.i4_crit_edge ]
  %coeff.08.i = phi ptr [ %coeff128, %for.end.i ], [ %incdec.ptr.i3, %while.body.i4.while.body.i4_crit_edge ]
  %arrayidx.i = getelementptr [1025 x %struct.fixed31_32], ptr %tf_pts, i32 0, i32 %i.19.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  call fastcc void @calculate_mapped_value(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, ptr noundef %rgb_user, ptr noundef %coeff.08.i, i32 noundef 0, i32 noundef %add.i) #8
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp.i, align 8
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %arrayidx2.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 1, i32 %i.19.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp3.i) #8
  call fastcc void @calculate_mapped_value(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp3.i, ptr noundef %rgb_user, ptr noundef %coeff.08.i, i32 noundef 1, i32 noundef %add.i) #8
  %34 = ptrtoint ptr %tmp3.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tmp3.i, align 8
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx2.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp3.i) #8
  %arrayidx4.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 2, i32 %i.19.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp5.i) #8
  call fastcc void @calculate_mapped_value(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp5.i, ptr noundef %rgb_user, ptr noundef %coeff.08.i, i32 noundef 2, i32 noundef %add.i) #8
  %37 = ptrtoint ptr %tmp5.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tmp5.i, align 8
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx4.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp5.i) #8
  %incdec.ptr.i3 = getelementptr %struct.pixel_gamma_point, ptr %coeff.08.i, i32 1
  %inc6.i = add nuw nsw i32 %i.19.i, 1
  %exitcond14.not.i = icmp eq i32 %inc6.i, 513
  br i1 %exitcond14.not.i, label %while.body.i4.if.end_crit_edge, label %while.body.i4.while.body.i4_crit_edge

while.body.i4.while.body.i4_crit_edge:            ; preds = %while.body.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i4

while.body.i4.if.end_crit_edge:                   ; preds = %while.body.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %regamma.014 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %rgb_regamma, %entry.while.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr [1025 x %struct.fixed31_32], ptr %tf_pts, i32 0, i32 %i.013
  %40 = ptrtoint ptr %regamma.014 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %regamma.014, align 8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 1, i32 %i.013
  %g = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014, i32 0, i32 1
  %43 = ptrtoint ptr %g to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %g, align 8
  %45 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 2, i32 %i.013
  %b = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014, i32 0, i32 2
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %b, align 8
  %48 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx4, align 8
  %incdec.ptr = getelementptr %struct.pwl_float_data_ex, ptr %regamma.014, i32 1
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 513
  br i1 %exitcond.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.i4.if.end_crit_edge, %cleanup80.sink.split.i.i.if.end_crit_edge
  br i1 %doClamping, label %if.end.while.body.i7_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.while.body.i7_crit_edge:                   ; preds = %if.end
  br label %while.body.i7

while.body.i7:                                    ; preds = %while.body.i7.while.body.i7_crit_edge, %if.end.while.body.i7_crit_edge
  %i.010.i = phi i32 [ %inc.i6, %while.body.i7.while.body.i7_crit_edge ], [ 0, %if.end.while.body.i7_crit_edge ]
  %arrayidx.i5 = getelementptr [1025 x %struct.fixed31_32], ptr %tf_pts, i32 0, i32 %i.010.i
  %49 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %.unpack.i = load i64, ptr %arrayidx.i5, align 8
  %50 = call i64 @llvm.smin.i64(i64 %.unpack.i, i64 4294967296) #8
  %51 = call i64 @llvm.smax.i64(i64 %50, i64 0) #8
  %52 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx.i5, align 8
  %arrayidx3.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 1, i32 %i.010.i
  %53 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %.unpack2.i = load i64, ptr %arrayidx3.i, align 8
  %54 = call i64 @llvm.smin.i64(i64 %.unpack2.i, i64 4294967296) #8
  %55 = call i64 @llvm.smax.i64(i64 %54, i64 0) #8
  %56 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx3.i, align 8
  %arrayidx8.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %tf_pts, i32 0, i32 2, i32 %i.010.i
  %57 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %.unpack4.i = load i64, ptr %arrayidx8.i, align 8
  %58 = call i64 @llvm.smin.i64(i64 %.unpack4.i, i64 4294967296) #8
  %59 = call i64 @llvm.smax.i64(i64 %58, i64 0) #8
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx8.i, align 8
  %inc.i6 = add nuw nsw i32 %i.010.i, 1
  %cmp.not.i = icmp eq i32 %inc.i6, 513
  br i1 %cmp.not.i, label %while.body.i7.if.end7_crit_edge, label %while.body.i7.while.body.i7_crit_edge

while.body.i7.while.body.i7_crit_edge:            ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7

while.body.i7.if.end7_crit_edge:                  ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %while.body.i7.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_color_calculate_regamma_params(ptr noundef %output_tf, ptr noundef %ramp, i1 noundef zeroext %mapUserRamp, i1 noundef zeroext %canRomBeUsed, ptr noundef readonly %fs_params, ptr noundef %cal_buffer) local_unnamed_addr #0 align 64 {
entry:
  %scratch_gamma_args.i.i49.i = alloca %struct.translate_from_linear_space_args, align 8
  %tmp.i50.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i.i.i.i = alloca %struct.fixed31_32, align 8
  %scaling_factor.i.i17.i = alloca %struct.fixed31_32, align 8
  %tmp.i.i18.i = alloca %struct.fixed31_32, align 8
  %tmp2.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp3.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp4.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp5.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp10.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i19.i = alloca %struct.fixed31_32, align 8
  %tmp13.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp15.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp16.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp22.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp24.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i150.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i151.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp8.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp16.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp30.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp35.i.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp37.i.i.i.i = alloca %struct.fixed31_32, align 8
  %gamma.i.i.i = alloca %struct.fixed31_32, align 8
  %scratch_gamma_args.i.i.i = alloca %struct.translate_from_linear_space_args, align 8
  %min_lum_pq.i.i.i = alloca %struct.fixed31_32, align 8
  %max_lum_pq.i.i.i = alloca %struct.fixed31_32, align 8
  %max_content_pq.i.i.i = alloca %struct.fixed31_32, align 8
  %E1.i.i.i = alloca %struct.fixed31_32, align 8
  %a.i.i.i = alloca %struct.fixed31_32, align 8
  %b.i.i.i = alloca %struct.fixed31_32, align 8
  %epsilon.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp9.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp.i.i1.i = alloca %struct.fixed31_32, align 8
  %agg.tmp18.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp39.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp51.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp54.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp57.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp60.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp63.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp72.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp80.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp86.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp102.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp105.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp109.i.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp116.i.i.i = alloca %struct.fixed31_32, align 8
  %scaledX.i.i = alloca %struct.fixed31_32, align 8
  %tmp5.i.i = alloca %struct.fixed31_32, align 8
  %tmp15.i.i = alloca %struct.fixed31_32, align 8
  %tmp38.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i = alloca %struct.fixed31_32, align 8
  %tmp47.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp49.i.i = alloca %struct.fixed31_32, align 8
  %tmp62.i.i = alloca %struct.fixed31_32, align 8
  %tmp76.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp80.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp81.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp93.i.i = alloca %struct.fixed31_32, align 8
  %scaling_factor.i.i.i = alloca %struct.fixed31_32, align 8
  %tmp.i.i.i = alloca %struct.fixed31_32, align 8
  %output.i.i = alloca %struct.fixed31_32, align 8
  %scaling_factor.i.i = alloca %struct.fixed31_32, align 8
  %tmp.i.i = alloca %struct.fixed31_32, align 8
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp53 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %2, label %entry.if.end28_crit_edge [
    i32 2, label %entry.cleanup_crit_edge
    i32 0, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  br i1 %canRomBeUsed, label %land.lhs.true6, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true6:                                   ; preds = %land.lhs.true
  %tf7 = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 2
  %4 = ptrtoint ptr %tf7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tf7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then10, label %land.lhs.true6.if.end28_crit_edge

land.lhs.true6.if.end28_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then10:                                        ; preds = %land.lhs.true6
  %cmp11 = icmp eq ptr %ramp, null
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %is_identity = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 5
  %6 = ptrtoint ptr %is_identity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_identity, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.end14.lor.lhs.false_crit_edge, label %land.lhs.true17

if.end14.lor.lhs.false_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true17:                                  ; preds = %if.end14
  %type18 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %8 = ptrtoint ptr %type18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp19.not = icmp eq i32 %9, 3
  br i1 %cmp19.not, label %land.lhs.true17.lor.lhs.false_crit_edge, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true17.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true17.lor.lhs.false_crit_edge, %if.end14.lor.lhs.false_crit_edge
  br i1 %mapUserRamp, label %lor.lhs.false.if.end28.thread_crit_edge, label %land.lhs.true22

lor.lhs.false.if.end28.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %type23 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %10 = ptrtoint ptr %type23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp24 = icmp eq i32 %11, 1
  br i1 %cmp24, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end28.thread_crit_edge

land.lhs.true22.if.end28.thread_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.thread:                                  ; preds = %land.lhs.true22.if.end28.thread_crit_edge, %lor.lhs.false.if.end28.thread_crit_edge
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 4
  br label %land.lhs.true31

if.end28:                                         ; preds = %land.lhs.true6.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %tobool30.not = icmp eq ptr %ramp, null
  br i1 %tobool30.not, label %if.end28.if.end68_crit_edge, label %if.end28.land.lhs.true31_crit_edge

if.end28.land.lhs.true31_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true31

if.end28.if.end68_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true31:                                  ; preds = %if.end28.land.lhs.true31_crit_edge, %if.end28.thread
  %type32 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %14 = ptrtoint ptr %type32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp33.not = icmp eq i32 %15, 3
  br i1 %cmp33.not, label %land.lhs.true31.if.end68_crit_edge, label %land.lhs.true35

land.lhs.true31.if.end68_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %mapUserRamp.not = xor i1 %mapUserRamp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp40.not = icmp eq i32 %15, 1
  %or.cond = select i1 %mapUserRamp.not, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %land.lhs.true35.if.end68_crit_edge, label %if.then42

land.lhs.true35.if.end68_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then42:                                        ; preds = %land.lhs.true35
  %num_entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 2
  %16 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_entries, align 8
  %add = add i32 %17, 3
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 24) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.then42.cleanup_crit_edge, label %kvcalloc.exit, !prof !102

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.then42
  %20 = extractvalue { i32, i1 } %18, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3520, i32 noundef -1) #12
  %tobool43.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool43.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end45

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %kvcalloc.exit
  %21 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_entries, align 8
  %add47 = add i32 %22, 3
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add47, i32 24) #8
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %if.end45.axis_x_alloc_fail_crit_edge, label %kvcalloc.exit204, !prof !102

if.end45.axis_x_alloc_fail_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %axis_x_alloc_fail

kvcalloc.exit204:                                 ; preds = %if.end45
  %25 = extractvalue { i32, i1 } %23, 0
  %call.i.i.i201 = tail call noalias ptr @kvmalloc_node(i32 noundef %25, i32 noundef 3520, i32 noundef -1) #12
  %tobool49.not = icmp eq ptr %call.i.i.i201, null
  br i1 %tobool49.not, label %kvcalloc.exit204.axis_x_alloc_fail_crit_edge, label %if.end51

kvcalloc.exit204.axis_x_alloc_fail_crit_edge:     ; preds = %kvcalloc.exit204
  call void @__sanitizer_cov_trace_pc() #10
  br label %axis_x_alloc_fail

if.end51:                                         ; preds = %kvcalloc.exit204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef 3, i64 noundef 2) #8
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %26)
  %dividers.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp53) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp53, i64 noundef 5, i64 noundef 2) #8
  %27 = ptrtoint ptr %tmp53 to i32
  call void @__asan_load8_noabort(i32 %27)
  %dividers.sroa.12.16.copyload = load i64, ptr %tmp53, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp53) #8
  %28 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_entries, align 8
  %.fca.0.insert = insertvalue [3 x i64] poison, i64 %dividers.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [3 x i64] %.fca.0.insert, i64 8589934592, 1
  %.fca.2.insert = insertvalue [3 x i64] %.fca.1.insert, i64 %dividers.sroa.12.16.copyload, 2
  call fastcc void @build_evenly_distributed_points(ptr noundef nonnull %call.i.i.i201, i32 noundef %29, [3 x i64] %.fca.2.insert)
  %30 = ptrtoint ptr %type32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp56 = icmp eq i32 %31, 1
  %32 = and i1 %cmp56, %mapUserRamp
  br i1 %32, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @scale_gamma(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %ramp, [3 x i64] %.fca.2.insert)
  br label %if.end68

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp63 = icmp eq i32 %31, 2
  br i1 %cmp63, label %if.then65, label %if.else.if.end68_crit_edge

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @scale_gamma_dx(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %ramp)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.else.if.end68_crit_edge, %if.then61, %land.lhs.true35.if.end68_crit_edge, %land.lhs.true31.if.end68_crit_edge, %if.end28.if.end68_crit_edge
  %tobool30.not280 = phi i1 [ false, %if.then61 ], [ false, %if.then65 ], [ false, %if.else.if.end68_crit_edge ], [ false, %land.lhs.true31.if.end68_crit_edge ], [ true, %if.end28.if.end68_crit_edge ], [ false, %land.lhs.true35.if.end68_crit_edge ]
  %rgb_user.0 = phi ptr [ %call.i.i.i, %if.then61 ], [ %call.i.i.i, %if.then65 ], [ %call.i.i.i, %if.else.if.end68_crit_edge ], [ null, %land.lhs.true31.if.end68_crit_edge ], [ null, %if.end28.if.end68_crit_edge ], [ null, %land.lhs.true35.if.end68_crit_edge ]
  %axis_x.0 = phi ptr [ %call.i.i.i201, %if.then61 ], [ %call.i.i.i201, %if.then65 ], [ %call.i.i.i201, %if.else.if.end68_crit_edge ], [ null, %land.lhs.true31.if.end68_crit_edge ], [ null, %if.end28.if.end68_crit_edge ], [ null, %land.lhs.true35.if.end68_crit_edge ]
  %call.i.i.i205 = call noalias ptr @kvmalloc_node(i32 noundef 24720, i32 noundef 3520, i32 noundef -1) #12
  %tobool70.not = icmp eq ptr %call.i.i.i205, null
  br i1 %tobool70.not, label %if.end68.rgb_regamma_alloc_fail_crit_edge, label %if.end72

if.end68.rgb_regamma_alloc_fail_crit_edge:        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %rgb_regamma_alloc_fail

if.end72:                                         ; preds = %if.end68
  %call.i.i.i208 = call noalias ptr @kvmalloc_node(i32 noundef 37080, i32 noundef 3520, i32 noundef -1) #12
  %tobool74 = icmp ne ptr %call.i.i.i208, null
  br i1 %tobool74, label %if.end76, label %if.end72.coeff_alloc_fail_crit_edge

if.end72.coeff_alloc_fail_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %coeff_alloc_fail

if.end76:                                         ; preds = %if.end72
  %tf77 = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 2
  %33 = ptrtoint ptr %tf77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tf77, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %34, label %if.end76.if.else29.i_crit_edge [
    i32 4, label %if.end76.if.then.i_crit_edge
    i32 3, label %if.end76.if.then.i_crit_edge295
    i32 2, label %if.then11.i
    i32 7, label %land.lhs.true.i
    i32 5, label %if.then24.i
  ]

if.end76.if.then.i_crit_edge295:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end76.if.then.i_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end76.if.else29.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29.i

if.then.i:                                        ; preds = %if.end76.if.then.i_crit_edge, %if.end76.if.then.i_crit_edge295
  %end_exponent.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 3
  %36 = ptrtoint ptr %end_exponent.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %end_exponent.i, align 8
  %x_point_at_y1_red.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 4
  %37 = ptrtoint ptr %x_point_at_y1_red.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %x_point_at_y1_red.i, align 2
  %x_point_at_y1_green.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 5
  %38 = ptrtoint ptr %x_point_at_y1_green.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %x_point_at_y1_green.i, align 4
  %x_point_at_y1_blue.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 6
  %39 = ptrtoint ptr %x_point_at_y1_blue.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %x_point_at_y1_blue.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.067.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i205, i32 %i.067.i
  %x.i = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.067.i, i32 1
  %40 = ptrtoint ptr %x.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %x.i, align 8
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx.i, align 8
  %g.i = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i205, i32 %i.067.i, i32 1
  %43 = ptrtoint ptr %g.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %41, ptr %g.i, align 8
  %b.i = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i205, i32 %i.067.i, i32 2
  %44 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %41, ptr %b.i, align 8
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 513
  br i1 %exitcond.not.i, label %for.body.i.calculate_curve.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.calculate_curve.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_curve.exit

if.then11.i:                                      ; preds = %if.end76
  %sdr_ref_white_level = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 3
  %45 = ptrtoint ptr %sdr_ref_white_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sdr_ref_white_level, align 4
  %end_exponent12.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 3
  %47 = ptrtoint ptr %end_exponent12.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 7, ptr %end_exponent12.i, align 8
  %x_point_at_y1_red13.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 4
  %48 = ptrtoint ptr %x_point_at_y1_red13.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 125, ptr %x_point_at_y1_red13.i, align 2
  %x_point_at_y1_green14.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 5
  %49 = ptrtoint ptr %x_point_at_y1_green14.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 125, ptr %x_point_at_y1_green14.i, align 4
  %x_point_at_y1_blue15.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 6
  %50 = ptrtoint ptr %x_point_at_y1_blue15.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 125, ptr %x_point_at_y1_blue15.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %output.i.i) #8
  %51 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %output.i.i, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaling_factor.i.i) #8
  %52 = ptrtoint ptr %scaling_factor.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %scaling_factor.i.i, align 8, !annotation !44
  %conv.i.i = zext i32 %46 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaling_factor.i.i, i64 noundef %conv.i.i, i64 noundef 10000) #8
  %call.i.i = call ptr @mod_color_get_table(i32 noundef 0) #8
  %call1.i.i = call zeroext i1 @mod_color_is_table_init(i32 noundef 0) #8
  %call1.not.i.i = xor i1 %call1.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %46)
  %cmp.i.i = icmp eq i32 %46, 80
  %or.cond.i.i = and i1 %cmp.i.i, %call1.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.then11.i.if.end.i.i212_crit_edge

if.then11.i.if.end.i.i212_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i212

if.then.i.i:                                      ; preds = %if.then11.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaling_factor.i.i.i) #8
  %53 = ptrtoint ptr %scaling_factor.i.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %scaling_factor.i.i.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaling_factor.i.i.i, i64 noundef 80, i64 noundef 10000) #8
  %call.i.i.i211 = call ptr @mod_color_get_table(i32 noundef 0) #8
  %54 = call ptr @memset(ptr %call.i.i.i211, i32 0, i32 256)
  br label %for.body3.i.i.i

for.body3.i.i.i:                                  ; preds = %for.body3.i.i.i.for.body3.i.i.i_crit_edge, %if.then.i.i
  %coord_x.023.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body3.i.i.i.for.body3.i.i.i_crit_edge ], [ getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 32), %if.then.i.i ]
  %i.122.i.i.i = phi i32 [ %inc9.i.i.i, %for.body3.i.i.i.for.body3.i.i.i_crit_edge ], [ 32, %if.then.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #8
  %x4.i.i.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.023.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %x4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %.unpack.i.i.i = load i64, ptr %x4.i.i.i, align 8
  %56 = insertvalue [1 x i64] undef, i64 %.unpack.i.i.i, 0
  %57 = ptrtoint ptr %scaling_factor.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %.fca.0.load.i.i.i = load i64, ptr %scaling_factor.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i.i, [1 x i64] %56, [1 x i64] %.fca.0.insert.i.i.i) #8
  %58 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %x.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #8
  %arrayidx6.i.i.i = getelementptr %struct.fixed31_32, ptr %call.i.i.i211, i32 %i.122.i.i.i
  %.fca.0.insert15.i.i.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload.i.i.i, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert15.i.i.i, ptr noundef %arrayidx6.i.i.i) #8
  %incdec.ptr.i.i.i = getelementptr %struct.hw_x_point, ptr %coord_x.023.i.i.i, i32 1
  %inc9.i.i.i = add nuw nsw i32 %i.122.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc9.i.i.i, 513
  br i1 %exitcond.not.i.i.i, label %precompute_pq.exit.i.i, label %for.body3.i.i.i.for.body3.i.i.i_crit_edge

for.body3.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i.i.i

precompute_pq.exit.i.i:                           ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaling_factor.i.i.i) #8
  call void @mod_color_set_table_init_state(i32 noundef 0, i1 noundef zeroext true) #8
  br label %if.end.i.i212

if.end.i.i212:                                    ; preds = %precompute_pq.exit.i.i, %if.then11.i.if.end.i.i212_crit_edge
  %add.ptr.i.i = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i205, i32 32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end21.i.i.for.body.i.i_crit_edge, %if.end.i.i212
  %coord_x.06.i.i = phi ptr [ getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 32), %if.end.i.i212 ], [ %incdec.ptr.i.i, %if.end21.i.i.for.body.i.i_crit_edge ]
  %rgb.05.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i212 ], [ %incdec.ptr22.i.i, %if.end21.i.i.for.body.i.i_crit_edge ]
  %i.03.i.i = phi i32 [ 32, %if.end.i.i212 ], [ %inc.i.i, %if.end21.i.i.for.body.i.i_crit_edge ]
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.fixed31_32, ptr %call.i.i, i32 %i.03.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i.i, align 8
  %61 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %output.i.i, align 8
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #8
  %x9.i.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.06.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %x9.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %.unpack.i.i = load i64, ptr %x9.i.i, align 8
  %63 = insertvalue [1 x i64] undef, i64 %.unpack.i.i, 0
  %64 = ptrtoint ptr %scaling_factor.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %.fca.0.load.i.i = load i64, ptr %scaling_factor.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i, [1 x i64] %63, [1 x i64] %.fca.0.insert.i.i) #8
  %65 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %x.sroa.0.0.copyload.i.i = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #8
  %.fca.0.insert31.i.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload.i.i, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert31.i.i, ptr noundef nonnull %output.i.i) #8
  %66 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %.fca.0.load24.pr.i.i = load i64, ptr %output.i.i, align 8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %.fca.0.load24.i.i = phi i64 [ %.fca.0.load24.pr.i.i, %if.else.i.i ], [ %60, %if.then8.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load24.i.i)
  %cmp.i.i.i = icmp slt i64 %.fca.0.load24.i.i, 0
  br i1 %cmp.i.i.i, label %if.then15.i.i, label %if.else16.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %output.i.i, align 8
  br label %if.end21.i.i

if.else16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %.fca.0.load24.i.i)
  %cmp.i2.i.i = icmp ugt i64 %.fca.0.load24.i.i, 4294967296
  br i1 %cmp.i2.i.i, label %if.then19.i.i, label %if.else16.i.i.if.end21.i.i_crit_edge

if.else16.i.i.if.end21.i.i_crit_edge:             ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then19.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 4294967296, ptr %output.i.i, align 8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then19.i.i, %if.else16.i.i.if.end21.i.i_crit_edge, %if.then15.i.i
  %69 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %output.i.i, align 8
  %71 = ptrtoint ptr %rgb.05.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %rgb.05.i.i, align 8
  %g.i.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.05.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %70, ptr %g.i.i, align 8
  %b.i.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.05.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %70, ptr %b.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.hw_x_point, ptr %coord_x.06.i.i, i32 1
  %incdec.ptr22.i.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb.05.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 513
  br i1 %exitcond.not.i.i, label %build_pq.exit.i, label %if.end21.i.i.for.body.i.i_crit_edge

if.end21.i.i.for.body.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

build_pq.exit.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaling_factor.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %output.i.i) #8
  br label %calculate_curve.exit

land.lhs.true.i:                                  ; preds = %if.end76
  %cmp18.not.i = icmp eq ptr %fs_params, null
  br i1 %cmp18.not.i, label %land.lhs.true.i.if.else29.i_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.if.else29.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %skip_tm.i = getelementptr inbounds %struct.hdr_tm_params, ptr %fs_params, i32 0, i32 5
  %74 = ptrtoint ptr %skip_tm.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %skip_tm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp20.i = icmp eq i32 %75, 0
  br i1 %cmp20.i, label %if.then21.i, label %land.lhs.true19.i.if.else29.i_crit_edge

land.lhs.true19.i.if.else29.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp49.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp80.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp81.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp93.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaledX.i.i) #8
  %76 = ptrtoint ptr %scaledX.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %scaledX.i.i, align 8
  %max_content1.i.i = getelementptr inbounds %struct.hdr_tm_params, ptr %fs_params, i32 0, i32 2
  %77 = ptrtoint ptr %max_content1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_content1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i2.i = icmp eq i32 %78, 0
  br i1 %cmp.i2.i, label %if.then21.i.build_freesync_hdr.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then21.i.build_freesync_hdr.exit.i_crit_edge:  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_freesync_hdr.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then21.i
  %max_display2.i.i = getelementptr inbounds %struct.hdr_tm_params, ptr %fs_params, i32 0, i32 4
  %79 = ptrtoint ptr %max_display2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_display2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp3.i.i = icmp eq i32 %80, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.build_freesync_hdr.exit.i_crit_edge, label %if.end.i4.i

lor.lhs.false.i.i.build_freesync_hdr.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_freesync_hdr.exit.i

if.end.i4.i:                                      ; preds = %lor.lhs.false.i.i
  %conv1.i.i.i = zext i32 %80 to i64
  %shl.i.i.i = shl nuw i64 %conv1.i.i.i, 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp5.i.i) #8
  %min_display6.i.i = getelementptr inbounds %struct.hdr_tm_params, ptr %fs_params, i32 0, i32 3
  %81 = ptrtoint ptr %min_display6.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %min_display6.i.i, align 4
  %conv.i3.i = zext i32 %82 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp5.i.i, i64 noundef %conv.i3.i, i64 noundef 10000) #8
  %83 = ptrtoint ptr %tmp5.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %min_display.sroa.0.0.copyload.i.i = load i64, ptr %tmp5.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp5.i.i) #8
  %84 = ptrtoint ptr %max_content1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_content1.i.i, align 4
  %conv1.i9.i.i = zext i32 %85 to i64
  %shl.i10.i.i = shl nuw i64 %conv1.i9.i.i, 32
  %86 = ptrtoint ptr %fs_params to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fs_params, align 4
  %conv1.i11.i.i = zext i32 %87 to i64
  %shl.i12.i.i = shl nuw i64 %conv1.i11.i.i, 32
  %88 = ptrtoint ptr %min_display6.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %min_display6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %89)
  %cmp12.i.i = icmp ugt i32 %89, 1000
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end.i4.i.if.end16.i.i_crit_edge

if.end.i4.i.if.end16.i.i_crit_edge:               ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp15.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp15.i.i, i64 noundef 1, i64 noundef 10) #8
  %90 = ptrtoint ptr %tmp15.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %min_display.sroa.0.0.copyload202.i.i = load i64, ptr %tmp15.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp15.i.i) #8
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %if.end.i4.i.if.end16.i.i_crit_edge
  %min_display.sroa.0.0.i.i = phi i64 [ %min_display.sroa.0.0.copyload202.i.i, %if.then14.i.i ], [ %min_display.sroa.0.0.copyload.i.i, %if.end.i4.i.if.end16.i.i_crit_edge ]
  %91 = ptrtoint ptr %max_display2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_display2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %92)
  %cmp18.i.i = icmp ult i32 %92, 100
  %spec.select.i.i = select i1 %cmp18.i.i, i64 429496729600, i64 %shl.i.i.i
  %93 = ptrtoint ptr %max_content1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_content1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp25.i.i = icmp ugt i32 %94, %92
  %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i = select i1 %cmp25.i.i, i64 %shl.i10.i.i, i64 %spec.select.i.i
  br i1 %cmp25.i.i, label %if.end16.i.i.if.end30.i.i_crit_edge, label %if.then29.i.i

if.end16.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %cal_buffer to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %cal_buffer, align 8
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then29.i.i, %if.end16.i.i.if.end30.i.i_crit_edge
  %add.ptr.i5.i = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i205, i32 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i)
  %cmp.i.i.i.i = icmp eq i64 %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i, 0
  %96 = getelementptr inbounds i8, ptr %scratch_gamma_args.i.i.i, i32 48
  %a0.i.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i.i, i32 0, i32 1
  %gamma3.i.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i.i, i32 0, i32 5
  br label %for.body.i6.i

for.body.i6.i:                                    ; preds = %if.end104.i.i.for.body.i6.i_crit_edge, %if.end30.i.i
  %is_clipped.0.off073.i.i = phi i1 [ false, %if.end30.i.i ], [ %is_clipped.1.off0.i.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  %output.sroa.0.071.i.i = phi i64 [ -1, %if.end30.i.i ], [ %output.sroa.0.2.i.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  %prv_coord_x.070.i.i = phi ptr [ @coordinates_x, %if.end30.i.i ], [ %coord_x.069.i.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  %coord_x.069.i.i = phi ptr [ getelementptr inbounds ([514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 32), %if.end30.i.i ], [ %incdec.ptr.i14.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  %rgb.067.i.i = phi ptr [ %add.ptr.i5.i, %if.end30.i.i ], [ %incdec.ptr105.i.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  %i.066.i.i = phi i32 [ 32, %if.end30.i.i ], [ %inc.i15.i, %if.end104.i.i.for.body.i6.i_crit_edge ]
  br i1 %is_clipped.0.off073.i.i, label %for.body.i6.i.if.end104.i.i_crit_edge, label %if.then35.i.i

for.body.i6.i.if.end104.i.i_crit_edge:            ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i.i

if.then35.i.i:                                    ; preds = %for.body.i6.i
  br i1 %cmp25.i.i, label %if.then37.i.i, label %if.else46.i.i

if.then37.i.i:                                    ; preds = %if.then35.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp38.i.i) #8
  %x.i.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.069.i.i, i32 0, i32 1
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i, i64 noundef %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i, i64 noundef %shl.i12.i.i) #8
  %97 = ptrtoint ptr %x.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %.unpack8.i.i = load i64, ptr %x.i.i, align 8
  %98 = ptrtoint ptr %agg.tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %.fca.0.load136.i.i = load i64, ptr %agg.tmp.i.i, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp38.i.i, i64 noundef %.unpack8.i.i, i64 noundef %.fca.0.load136.i.i) #8
  %99 = ptrtoint ptr %tmp38.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %scaledX1.sroa.0.0.copyload219.i.i = load i64, ptr %tmp38.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp38.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp9.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp18.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp72.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp86.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp109.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp116.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_lum_pq.i.i.i) #8
  %100 = ptrtoint ptr %min_lum_pq.i.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 -1, ptr %min_lum_pq.i.i.i, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_lum_pq.i.i.i) #8
  %101 = ptrtoint ptr %max_lum_pq.i.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 -1, ptr %max_lum_pq.i.i.i, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_content_pq.i.i.i) #8
  %102 = ptrtoint ptr %max_content_pq.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 -1, ptr %max_content_pq.i.i.i, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %E1.i.i.i) #8
  %103 = ptrtoint ptr %E1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 -1, ptr %E1.i.i.i, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a.i.i.i) #8
  %104 = ptrtoint ptr %a.i.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %a.i.i.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %a.i.i.i, i64 noundef 15, i64 noundef 10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i.i) #8
  %105 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 -1, ptr %b.i.i.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %b.i.i.i, i64 noundef 5, i64 noundef 10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %epsilon.i.i.i) #8
  %106 = ptrtoint ptr %epsilon.i.i.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 -1, ptr %epsilon.i.i.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %epsilon.i.i.i, i64 noundef 1, i64 noundef 1000000) #8
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %scaledX.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 0, ptr %scaledX.i.i, align 8
  br label %hermite_spline_eetf.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then37.i.i
  %.fca.0.insert218.i.i = insertvalue [1 x i64] poison, i64 %scaledX1.sroa.0.0.copyload219.i.i, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert218.i.i, ptr noundef nonnull %E1.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i.i, i64 noundef %min_display.sroa.0.0.i.i, i64 noundef %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i) #8
  %108 = ptrtoint ptr %agg.tmp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %.fca.0.load180.i.i.i = load i64, ptr %agg.tmp.i.i.i, align 8
  %.fca.0.insert181.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load180.i.i.i, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert181.i.i.i, ptr noundef nonnull %min_lum_pq.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp9.i.i.i, i64 noundef %spec.select.i.i, i64 noundef %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i) #8
  %109 = ptrtoint ptr %agg.tmp9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %.fca.0.load177.i.i.i = load i64, ptr %agg.tmp9.i.i.i, align 8
  %.fca.0.insert178.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load177.i.i.i, 0
  call fastcc void @compute_pq([1 x i64] %.fca.0.insert178.i.i.i, ptr noundef nonnull %max_lum_pq.i.i.i) #8
  call fastcc void @compute_pq([1 x i64] [i64 4294967296], ptr noundef nonnull %max_content_pq.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i1.i) #8
  %110 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %.fca.0.load186.i.i.i = load i64, ptr %b.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.fca.0.load186.i.i.i)
  %cmp4.not.i.i.i.i = icmp sgt i64 %.fca.0.load186.i.i.i, 9223372032559808511
  br i1 %cmp4.not.i.i.i.i, label %lor.rhs.i.i.i.i, label %if.end.i.i.i.dc_fixpt_add.exit.i.i.i_crit_edge

if.end.i.i.i.dc_fixpt_add.exit.i.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %.b65.i.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !143
  br i1 %.b65.i.i.i.i, label %lor.rhs.i.i.i.i.if.then50.i.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !43

lor.rhs.i.i.i.i.if.then50.i.i.i.i_crit_edge:      ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !143
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !143
  br label %if.then50.i.i.i.i

if.then50.i.i.i.i:                                ; preds = %if.then.i.i.i.i, %lor.rhs.i.i.i.i.if.then50.i.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !143
  br label %dc_fixpt_add.exit.i.i.i

dc_fixpt_add.exit.i.i.i:                          ; preds = %if.then50.i.i.i.i, %if.end.i.i.i.dc_fixpt_add.exit.i.i.i_crit_edge
  %add.i.i.i.i = add i64 %.fca.0.load186.i.i.i, 4294967296
  %111 = ptrtoint ptr %max_content_pq.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %.fca.0.load347.i.i.i = load i64, ptr %max_content_pq.i.i.i, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i1.i, i64 noundef %add.i.i.i.i, i64 noundef %.fca.0.load347.i.i.i) #8
  %112 = ptrtoint ptr %tmp.i.i1.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %tmp.i.i1.i, align 8
  %114 = ptrtoint ptr %a.i.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %a.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i1.i) #8
  %.fca.0.insert193.i.i.i = insertvalue [1 x i64] poison, i64 %113, 0
  %115 = ptrtoint ptr %max_lum_pq.i.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %.fca.0.load350.i.i.i = load i64, ptr %max_lum_pq.i.i.i, align 8
  %.fca.0.insert351.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load350.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp18.i.i.i, [1 x i64] %.fca.0.insert193.i.i.i, [1 x i64] %.fca.0.insert351.i.i.i) #8
  %116 = ptrtoint ptr %agg.tmp18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %.fca.0.load171.i.i.i = load i64, ptr %agg.tmp18.i.i.i, align 8
  %117 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %.fca.0.load189.i.i.i = load i64, ptr %b.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load189.i.i.i)
  %cmp.i397.i.i.i = icmp slt i64 %.fca.0.load189.i.i.i, 0
  %add.i398.i.i.i = xor i64 %.fca.0.load189.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i398.i.i.i, i64 %.fca.0.load171.i.i.i)
  %cmp4.not.i399.i.i.i = icmp sgt i64 %add.i398.i.i.i, %.fca.0.load171.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp.i397.i.i.i, i1 true, i1 %cmp4.not.i399.i.i.i
  br i1 %or.cond.i.i.i.i, label %lor.rhs.i401.i.i.i, label %dc_fixpt_add.exit.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge

dc_fixpt_add.exit.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge: ; preds = %dc_fixpt_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i.i

lor.rhs.i401.i.i.i:                               ; preds = %dc_fixpt_add.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load189.i.i.i)
  %cmp6.i.i.i.i = icmp sgt i64 %.fca.0.load189.i.i.i, -1
  %add8.i.i.i.i = add i64 %.fca.0.load189.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i.i, i64 %.fca.0.load171.i.i.i)
  %cmp10.i400.i.i.i = icmp slt i64 %add8.i.i.i.i, %.fca.0.load171.i.i.i
  %or.cond67.i.i.i.i = select i1 %cmp6.i.i.i.i, i1 true, i1 %cmp10.i400.i.i.i
  br i1 %or.cond67.i.i.i.i, label %land.rhs13.i.i.i.i, label %lor.rhs.i401.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge

lor.rhs.i401.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge: ; preds = %lor.rhs.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i.i

land.rhs13.i.i.i.i:                               ; preds = %lor.rhs.i401.i.i.i
  %.b65.i402.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !146
  br i1 %.b65.i402.i.i.i, label %land.rhs13.i.i.i.i.if.then50.i404.i.i.i_crit_edge, label %if.then.i403.i.i.i, !prof !43

land.rhs13.i.i.i.i.if.then50.i404.i.i.i_crit_edge: ; preds = %land.rhs13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i404.i.i.i

if.then.i403.i.i.i:                               ; preds = %land.rhs13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !146
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !146
  br label %if.then50.i404.i.i.i

if.then50.i404.i.i.i:                             ; preds = %if.then.i403.i.i.i, %land.rhs13.i.i.i.i.if.then50.i404.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !146
  br label %dc_fixpt_sub.exit.i.i.i

dc_fixpt_sub.exit.i.i.i:                          ; preds = %if.then50.i404.i.i.i, %lor.rhs.i401.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge, %dc_fixpt_add.exit.i.i.i.dc_fixpt_sub.exit.i.i.i_crit_edge
  %sub.i.i.i.i = sub i64 %.fca.0.load171.i.i.i, %.fca.0.load189.i.i.i
  %118 = ptrtoint ptr %E1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %.fca.0.load308.i.i.i = load i64, ptr %E1.i.i.i, align 8
  %.fca.0.insert321.i.i.i = insertvalue [1 x i64] poison, i64 %sub.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %.fca.0.load308.i.i.i, i64 %sub.i.i.i.i)
  %cmp.i405.i.i.i = icmp slt i64 %.fca.0.load308.i.i.i, %sub.i.i.i.i
  br i1 %cmp.i405.i.i.i, label %dc_fixpt_sub.exit.i.i.i.if.end99.i.i.i_crit_edge, label %land.lhs.true.i.i.i

dc_fixpt_sub.exit.i.i.i.if.end99.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i.i.i

land.lhs.true.i.i.i:                              ; preds = %dc_fixpt_sub.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %.fca.0.load308.i.i.i)
  %cmp.i407.i.i.i = icmp slt i64 %.fca.0.load308.i.i.i, 4294967297
  br i1 %cmp.i407.i.i.i, label %if.then32.i.i.i, label %land.lhs.true.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge

land.lhs.true.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit581.i.i.i

if.then32.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i.i)
  %cmp.i408.i.i.i = icmp slt i64 %sub.i.i.i.i, 0
  %add.i409.i.i.i = xor i64 %sub.i.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i409.i.i.i)
  %cmp4.not.i410.i.i.i = icmp sgt i64 %add.i409.i.i.i, 4294967296
  %or.cond.i411.i.i.i = or i1 %cmp.i408.i.i.i, %cmp4.not.i410.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %sub.i.i.i.i)
  %119 = icmp ult i64 %sub.i.i.i.i, -9223372032559808511
  %or.cond.i.i.i = and i1 %119, %or.cond.i411.i.i.i
  br i1 %or.cond.i.i.i, label %land.rhs13.i418.i.i.i, label %if.then32.i.i.i.dc_fixpt_sub.exit422.i.i.i_crit_edge

if.then32.i.i.i.dc_fixpt_sub.exit422.i.i.i_crit_edge: ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit422.i.i.i

land.rhs13.i418.i.i.i:                            ; preds = %if.then32.i.i.i
  %.b65.i417.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !149
  br i1 %.b65.i417.i.i.i, label %land.rhs13.i418.i.i.i.if.then50.i420.i.i.i_crit_edge, label %if.then.i419.i.i.i, !prof !43

land.rhs13.i418.i.i.i.if.then50.i420.i.i.i_crit_edge: ; preds = %land.rhs13.i418.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i420.i.i.i

if.then.i419.i.i.i:                               ; preds = %land.rhs13.i418.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !149
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !149
  br label %if.then50.i420.i.i.i

if.then50.i420.i.i.i:                             ; preds = %if.then.i419.i.i.i, %land.rhs13.i418.i.i.i.if.then50.i420.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !149
  br label %dc_fixpt_sub.exit422.i.i.i

dc_fixpt_sub.exit422.i.i.i:                       ; preds = %if.then50.i420.i.i.i, %if.then32.i.i.i.dc_fixpt_sub.exit422.i.i.i_crit_edge
  %sub.i421.i.i.i = sub i64 4294967296, %sub.i.i.i.i
  %120 = ptrtoint ptr %epsilon.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %.fca.0.load183.i.i.i = load i64, ptr %epsilon.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.fca.0.load183.i.i.i, i64 %sub.i421.i.i.i)
  %cmp.i423.i.i.i = icmp slt i64 %.fca.0.load183.i.i.i, %sub.i421.i.i.i
  br i1 %cmp.i423.i.i.i, label %if.then38.i.i.i, label %dc_fixpt_sub.exit422.i.i.i.if.end48.i.i.i_crit_edge

dc_fixpt_sub.exit422.i.i.i.if.end48.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit422.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i.i

if.then38.i.i.i:                                  ; preds = %dc_fixpt_sub.exit422.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp39.i.i.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i409.i.i.i, i64 %.fca.0.load308.i.i.i)
  %cmp4.not.i426.i.i.i = icmp sgt i64 %add.i409.i.i.i, %.fca.0.load308.i.i.i
  %or.cond.i427.i.i.i = select i1 %cmp.i408.i.i.i, i1 true, i1 %cmp4.not.i426.i.i.i
  br i1 %or.cond.i427.i.i.i, label %lor.rhs.i432.i.i.i, label %if.then38.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge

if.then38.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge: ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit438.i.i.i

lor.rhs.i432.i.i.i:                               ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i.i.i.i)
  %cmp6.i428.i.i.i = icmp sgt i64 %sub.i.i.i.i, -1
  %add8.i429.i.i.i = add i64 %sub.i.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i429.i.i.i, i64 %.fca.0.load308.i.i.i)
  %cmp10.i430.i.i.i = icmp slt i64 %add8.i429.i.i.i, %.fca.0.load308.i.i.i
  %or.cond67.i431.i.i.i = select i1 %cmp6.i428.i.i.i, i1 true, i1 %cmp10.i430.i.i.i
  br i1 %or.cond67.i431.i.i.i, label %land.rhs13.i434.i.i.i, label %lor.rhs.i432.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge

lor.rhs.i432.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge: ; preds = %lor.rhs.i432.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit438.i.i.i

land.rhs13.i434.i.i.i:                            ; preds = %lor.rhs.i432.i.i.i
  %.b65.i433.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !152
  br i1 %.b65.i433.i.i.i, label %land.rhs13.i434.i.i.i.if.then50.i436.i.i.i_crit_edge, label %if.then.i435.i.i.i, !prof !43

land.rhs13.i434.i.i.i.if.then50.i436.i.i.i_crit_edge: ; preds = %land.rhs13.i434.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i436.i.i.i

if.then.i435.i.i.i:                               ; preds = %land.rhs13.i434.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !152
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !152
  br label %if.then50.i436.i.i.i

if.then50.i436.i.i.i:                             ; preds = %if.then.i435.i.i.i, %land.rhs13.i434.i.i.i.if.then50.i436.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !152
  br label %dc_fixpt_sub.exit438.i.i.i

dc_fixpt_sub.exit438.i.i.i:                       ; preds = %if.then50.i436.i.i.i, %lor.rhs.i432.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge, %if.then38.i.i.i.dc_fixpt_sub.exit438.i.i.i_crit_edge
  %sub.i437.i.i.i = sub i64 %.fca.0.load308.i.i.i, %sub.i.i.i.i
  br i1 %or.cond.i.i.i, label %land.rhs13.i449.i.i.i, label %dc_fixpt_sub.exit438.i.i.i.dc_fixpt_sub.exit453.i.i.i_crit_edge

dc_fixpt_sub.exit438.i.i.i.dc_fixpt_sub.exit453.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit438.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit453.i.i.i

land.rhs13.i449.i.i.i:                            ; preds = %dc_fixpt_sub.exit438.i.i.i
  %.b65.i448.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !155
  br i1 %.b65.i448.i.i.i, label %land.rhs13.i449.i.i.i.if.then50.i451.i.i.i_crit_edge, label %if.then.i450.i.i.i, !prof !43

land.rhs13.i449.i.i.i.if.then50.i451.i.i.i_crit_edge: ; preds = %land.rhs13.i449.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i451.i.i.i

if.then.i450.i.i.i:                               ; preds = %land.rhs13.i449.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !155
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !155
  br label %if.then50.i451.i.i.i

if.then50.i451.i.i.i:                             ; preds = %if.then.i450.i.i.i, %land.rhs13.i449.i.i.i.if.then50.i451.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !155
  br label %dc_fixpt_sub.exit453.i.i.i

dc_fixpt_sub.exit453.i.i.i:                       ; preds = %if.then50.i451.i.i.i, %dc_fixpt_sub.exit438.i.i.i.dc_fixpt_sub.exit453.i.i.i_crit_edge
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp39.i.i.i, i64 noundef %sub.i437.i.i.i, i64 noundef %sub.i421.i.i.i) #8
  %121 = ptrtoint ptr %tmp39.i.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %t.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp39.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp39.i.i.i) #8
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %dc_fixpt_sub.exit453.i.i.i, %dc_fixpt_sub.exit422.i.i.i.if.end48.i.i.i_crit_edge
  %t.sroa.0.0.i.i.i = phi i64 [ %t.sroa.0.0.copyload.i.i.i, %dc_fixpt_sub.exit453.i.i.i ], [ 0, %dc_fixpt_sub.exit422.i.i.i.if.end48.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp51.i.i.i) #8
  %.fca.0.insert271.i.i.i = insertvalue [1 x i64] poison, i64 %t.sroa.0.0.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp51.i.i.i, [1 x i64] %.fca.0.insert271.i.i.i, [1 x i64] %.fca.0.insert271.i.i.i) #8
  %122 = ptrtoint ptr %tmp51.i.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %t2.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp51.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp51.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp54.i.i.i) #8
  %.fca.0.insert260.i.i.i = insertvalue [1 x i64] poison, i64 %t2.sroa.0.0.copyload.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp54.i.i.i, [1 x i64] %.fca.0.insert260.i.i.i, [1 x i64] %.fca.0.insert271.i.i.i) #8
  %123 = ptrtoint ptr %tmp54.i.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %t3.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp54.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp54.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp57.i.i.i) #8
  %.fca.0.insert253.i.i.i = insertvalue [1 x i64] poison, i64 %t3.sroa.0.0.copyload.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp57.i.i.i, [1 x i64] [i64 8589934592], [1 x i64] %.fca.0.insert253.i.i.i) #8
  %124 = ptrtoint ptr %tmp57.i.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %temp1.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp57.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp57.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp60.i.i.i) #8
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp60.i.i.i, [1 x i64] [i64 12884901888], [1 x i64] %.fca.0.insert260.i.i.i) #8
  %125 = ptrtoint ptr %tmp60.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %temp2.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp60.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp60.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp63.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %temp2.sroa.0.0.copyload.i.i.i)
  %cmp.i454.i.i.i = icmp slt i64 %temp2.sroa.0.0.copyload.i.i.i, 0
  %add.i455.i.i.i = xor i64 %temp2.sroa.0.0.copyload.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i455.i.i.i, i64 %temp1.sroa.0.0.copyload.i.i.i)
  %cmp4.not.i456.i.i.i = icmp sgt i64 %add.i455.i.i.i, %temp1.sroa.0.0.copyload.i.i.i
  %or.cond.i457.i.i.i = select i1 %cmp.i454.i.i.i, i1 true, i1 %cmp4.not.i456.i.i.i
  br i1 %or.cond.i457.i.i.i, label %lor.rhs.i462.i.i.i, label %if.end48.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge

if.end48.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit468.i.i.i

lor.rhs.i462.i.i.i:                               ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %temp2.sroa.0.0.copyload.i.i.i)
  %cmp6.i458.i.i.i = icmp sgt i64 %temp2.sroa.0.0.copyload.i.i.i, -1
  %add8.i459.i.i.i = add i64 %temp2.sroa.0.0.copyload.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i459.i.i.i, i64 %temp1.sroa.0.0.copyload.i.i.i)
  %cmp10.i460.i.i.i = icmp slt i64 %add8.i459.i.i.i, %temp1.sroa.0.0.copyload.i.i.i
  %or.cond67.i461.i.i.i = select i1 %cmp6.i458.i.i.i, i1 true, i1 %cmp10.i460.i.i.i
  br i1 %or.cond67.i461.i.i.i, label %land.rhs13.i464.i.i.i, label %lor.rhs.i462.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge

lor.rhs.i462.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge: ; preds = %lor.rhs.i462.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit468.i.i.i

land.rhs13.i464.i.i.i:                            ; preds = %lor.rhs.i462.i.i.i
  %.b65.i463.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !158
  br i1 %.b65.i463.i.i.i, label %land.rhs13.i464.i.i.i.if.then50.i466.i.i.i_crit_edge, label %if.then.i465.i.i.i, !prof !43

land.rhs13.i464.i.i.i.if.then50.i466.i.i.i_crit_edge: ; preds = %land.rhs13.i464.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i466.i.i.i

if.then.i465.i.i.i:                               ; preds = %land.rhs13.i464.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !158
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !158
  br label %if.then50.i466.i.i.i

if.then50.i466.i.i.i:                             ; preds = %if.then.i465.i.i.i, %land.rhs13.i464.i.i.i.if.then50.i466.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !158
  br label %dc_fixpt_sub.exit468.i.i.i

dc_fixpt_sub.exit468.i.i.i:                       ; preds = %if.then50.i466.i.i.i, %lor.rhs.i462.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge, %if.end48.i.i.i.dc_fixpt_sub.exit468.i.i.i_crit_edge
  %sub.i467.i.i.i = sub i64 %temp1.sroa.0.0.copyload.i.i.i, %temp2.sroa.0.0.copyload.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %sub.i467.i.i.i)
  %cmp4.not.i469.i.i.i = icmp sgt i64 %sub.i467.i.i.i, 9223372032559808511
  br i1 %cmp4.not.i469.i.i.i, label %lor.rhs.i471.i.i.i, label %dc_fixpt_sub.exit468.i.i.i.dc_fixpt_add.exit477.i.i.i_crit_edge

dc_fixpt_sub.exit468.i.i.i.dc_fixpt_add.exit477.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit468.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit477.i.i.i

lor.rhs.i471.i.i.i:                               ; preds = %dc_fixpt_sub.exit468.i.i.i
  %.b65.i472.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !161
  br i1 %.b65.i472.i.i.i, label %lor.rhs.i471.i.i.i.if.then50.i475.i.i.i_crit_edge, label %if.then.i474.i.i.i, !prof !43

lor.rhs.i471.i.i.i.if.then50.i475.i.i.i_crit_edge: ; preds = %lor.rhs.i471.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i475.i.i.i

if.then.i474.i.i.i:                               ; preds = %lor.rhs.i471.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !161
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !161
  br label %if.then50.i475.i.i.i

if.then50.i475.i.i.i:                             ; preds = %if.then.i474.i.i.i, %lor.rhs.i471.i.i.i.if.then50.i475.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !161
  br label %dc_fixpt_add.exit477.i.i.i

dc_fixpt_add.exit477.i.i.i:                       ; preds = %if.then50.i475.i.i.i, %dc_fixpt_sub.exit468.i.i.i.dc_fixpt_add.exit477.i.i.i_crit_edge
  %add.i476.i.i.i = add i64 %sub.i467.i.i.i, 4294967296
  %.fca.0.insert160.i.i.i = insertvalue [1 x i64] poison, i64 %add.i476.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp63.i.i.i, [1 x i64] %.fca.0.insert321.i.i.i, [1 x i64] %.fca.0.insert160.i.i.i) #8
  %126 = ptrtoint ptr %tmp63.i.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %E2.sroa.0.0.copyload300.i.i.i = load i64, ptr %tmp63.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp63.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %temp1.sroa.0.0.copyload.i.i.i)
  %cmp.i478.i.i.i = icmp slt i64 %temp1.sroa.0.0.copyload.i.i.i, 0
  %add.i479.i.i.i = xor i64 %temp1.sroa.0.0.copyload.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i479.i.i.i, i64 %temp2.sroa.0.0.copyload.i.i.i)
  %cmp4.not.i480.i.i.i = icmp sgt i64 %add.i479.i.i.i, %temp2.sroa.0.0.copyload.i.i.i
  %or.cond.i481.i.i.i = select i1 %cmp.i478.i.i.i, i1 true, i1 %cmp4.not.i480.i.i.i
  br i1 %or.cond.i481.i.i.i, label %lor.rhs.i486.i.i.i, label %dc_fixpt_add.exit477.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge

dc_fixpt_add.exit477.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge: ; preds = %dc_fixpt_add.exit477.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit492.i.i.i

lor.rhs.i486.i.i.i:                               ; preds = %dc_fixpt_add.exit477.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %temp1.sroa.0.0.copyload.i.i.i)
  %cmp6.i482.i.i.i = icmp sgt i64 %temp1.sroa.0.0.copyload.i.i.i, -1
  %add8.i483.i.i.i = add i64 %temp1.sroa.0.0.copyload.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i483.i.i.i, i64 %temp2.sroa.0.0.copyload.i.i.i)
  %cmp10.i484.i.i.i = icmp slt i64 %add8.i483.i.i.i, %temp2.sroa.0.0.copyload.i.i.i
  %or.cond67.i485.i.i.i = select i1 %cmp6.i482.i.i.i, i1 true, i1 %cmp10.i484.i.i.i
  br i1 %or.cond67.i485.i.i.i, label %land.rhs13.i488.i.i.i, label %lor.rhs.i486.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge

lor.rhs.i486.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge: ; preds = %lor.rhs.i486.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit492.i.i.i

land.rhs13.i488.i.i.i:                            ; preds = %lor.rhs.i486.i.i.i
  %.b65.i487.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !164
  br i1 %.b65.i487.i.i.i, label %land.rhs13.i488.i.i.i.if.then50.i490.i.i.i_crit_edge, label %if.then.i489.i.i.i, !prof !43

land.rhs13.i488.i.i.i.if.then50.i490.i.i.i_crit_edge: ; preds = %land.rhs13.i488.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i490.i.i.i

if.then.i489.i.i.i:                               ; preds = %land.rhs13.i488.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !164
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !164
  br label %if.then50.i490.i.i.i

if.then50.i490.i.i.i:                             ; preds = %if.then.i489.i.i.i, %land.rhs13.i488.i.i.i.if.then50.i490.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !164
  br label %dc_fixpt_sub.exit492.i.i.i

dc_fixpt_sub.exit492.i.i.i:                       ; preds = %if.then50.i490.i.i.i, %lor.rhs.i486.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge, %dc_fixpt_add.exit477.i.i.i.dc_fixpt_sub.exit492.i.i.i_crit_edge
  %sub.i491.i.i.i = sub i64 %temp2.sroa.0.0.copyload.i.i.i, %temp1.sroa.0.0.copyload.i.i.i
  %.fca.0.insert151.i.i.i = insertvalue [1 x i64] poison, i64 %sub.i491.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp72.i.i.i, [1 x i64] %.fca.0.insert351.i.i.i, [1 x i64] %.fca.0.insert151.i.i.i) #8
  %127 = ptrtoint ptr %agg.tmp72.i.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %.fca.0.load153.i.i.i = load i64, ptr %agg.tmp72.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %E2.sroa.0.0.copyload300.i.i.i)
  %cmp.i493.i.i.i = icmp slt i64 %E2.sroa.0.0.copyload300.i.i.i, 0
  %sub.i494.i.i.i = sub i64 9223372036854775807, %E2.sroa.0.0.copyload300.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i494.i.i.i, i64 %.fca.0.load153.i.i.i)
  %cmp4.not.i495.i.i.i = icmp slt i64 %sub.i494.i.i.i, %.fca.0.load153.i.i.i
  %or.cond.i496.i.i.i = select i1 %cmp.i493.i.i.i, i1 true, i1 %cmp4.not.i495.i.i.i
  br i1 %or.cond.i496.i.i.i, label %lor.rhs.i500.i.i.i, label %dc_fixpt_sub.exit492.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge

dc_fixpt_sub.exit492.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit492.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit506.i.i.i

lor.rhs.i500.i.i.i:                               ; preds = %dc_fixpt_sub.exit492.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %E2.sroa.0.0.copyload300.i.i.i)
  %cmp6.i497.i.i.i = icmp sgt i64 %E2.sroa.0.0.copyload300.i.i.i, -1
  %sub8.i.i.i.i = sub i64 -9223372036854775808, %E2.sroa.0.0.copyload300.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i.i.i, i64 %.fca.0.load153.i.i.i)
  %cmp10.i498.i.i.i = icmp sgt i64 %sub8.i.i.i.i, %.fca.0.load153.i.i.i
  %or.cond67.i499.i.i.i = select i1 %cmp6.i497.i.i.i, i1 true, i1 %cmp10.i498.i.i.i
  br i1 %or.cond67.i499.i.i.i, label %land.rhs13.i502.i.i.i, label %lor.rhs.i500.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge

lor.rhs.i500.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge: ; preds = %lor.rhs.i500.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit506.i.i.i

land.rhs13.i502.i.i.i:                            ; preds = %lor.rhs.i500.i.i.i
  %.b65.i501.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !167
  br i1 %.b65.i501.i.i.i, label %land.rhs13.i502.i.i.i.if.then50.i504.i.i.i_crit_edge, label %if.then.i503.i.i.i, !prof !43

land.rhs13.i502.i.i.i.if.then50.i504.i.i.i_crit_edge: ; preds = %land.rhs13.i502.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i504.i.i.i

if.then.i503.i.i.i:                               ; preds = %land.rhs13.i502.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !167
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !167
  br label %if.then50.i504.i.i.i

if.then50.i504.i.i.i:                             ; preds = %if.then.i503.i.i.i, %land.rhs13.i502.i.i.i.if.then50.i504.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !167
  br label %dc_fixpt_add.exit506.i.i.i

dc_fixpt_add.exit506.i.i.i:                       ; preds = %if.then50.i504.i.i.i, %lor.rhs.i500.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge, %dc_fixpt_sub.exit492.i.i.i.dc_fixpt_add.exit506.i.i.i_crit_edge
  %add.i505.i.i.i = add i64 %.fca.0.load153.i.i.i, %E2.sroa.0.0.copyload300.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp80.i.i.i) #8
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp80.i.i.i, [1 x i64] [i64 8589934592], [1 x i64] %.fca.0.insert260.i.i.i) #8
  %128 = ptrtoint ptr %tmp80.i.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %temp1.sroa.0.0.copyload236.i.i.i = load i64, ptr %tmp80.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp80.i.i.i) #8
  br i1 %or.cond.i.i.i, label %land.rhs13.i517.i.i.i, label %dc_fixpt_add.exit506.i.i.i.dc_fixpt_sub.exit521.i.i.i_crit_edge

dc_fixpt_add.exit506.i.i.i.dc_fixpt_sub.exit521.i.i.i_crit_edge: ; preds = %dc_fixpt_add.exit506.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit521.i.i.i

land.rhs13.i517.i.i.i:                            ; preds = %dc_fixpt_add.exit506.i.i.i
  %.b65.i516.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !170
  br i1 %.b65.i516.i.i.i, label %land.rhs13.i517.i.i.i.if.then50.i519.i.i.i_crit_edge, label %if.then.i518.i.i.i, !prof !43

land.rhs13.i517.i.i.i.if.then50.i519.i.i.i_crit_edge: ; preds = %land.rhs13.i517.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i519.i.i.i

if.then.i518.i.i.i:                               ; preds = %land.rhs13.i517.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !170
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !170
  br label %if.then50.i519.i.i.i

if.then50.i519.i.i.i:                             ; preds = %if.then.i518.i.i.i, %land.rhs13.i517.i.i.i.if.then50.i519.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !170
  br label %dc_fixpt_sub.exit521.i.i.i

dc_fixpt_sub.exit521.i.i.i:                       ; preds = %if.then50.i519.i.i.i, %dc_fixpt_add.exit506.i.i.i.dc_fixpt_sub.exit521.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %temp1.sroa.0.0.copyload236.i.i.i)
  %cmp.i522.i.i.i = icmp slt i64 %temp1.sroa.0.0.copyload236.i.i.i, 0
  %add.i523.i.i.i = xor i64 %temp1.sroa.0.0.copyload236.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i523.i.i.i, i64 %t3.sroa.0.0.copyload.i.i.i)
  %cmp4.not.i524.i.i.i = icmp sgt i64 %add.i523.i.i.i, %t3.sroa.0.0.copyload.i.i.i
  %or.cond.i525.i.i.i = select i1 %cmp.i522.i.i.i, i1 true, i1 %cmp4.not.i524.i.i.i
  br i1 %or.cond.i525.i.i.i, label %lor.rhs.i530.i.i.i, label %dc_fixpt_sub.exit521.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge

dc_fixpt_sub.exit521.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit521.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit536.i.i.i

lor.rhs.i530.i.i.i:                               ; preds = %dc_fixpt_sub.exit521.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %temp1.sroa.0.0.copyload236.i.i.i)
  %cmp6.i526.i.i.i = icmp sgt i64 %temp1.sroa.0.0.copyload236.i.i.i, -1
  %add8.i527.i.i.i = add i64 %temp1.sroa.0.0.copyload236.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i527.i.i.i, i64 %t3.sroa.0.0.copyload.i.i.i)
  %cmp10.i528.i.i.i = icmp slt i64 %add8.i527.i.i.i, %t3.sroa.0.0.copyload.i.i.i
  %or.cond67.i529.i.i.i = select i1 %cmp6.i526.i.i.i, i1 true, i1 %cmp10.i528.i.i.i
  br i1 %or.cond67.i529.i.i.i, label %land.rhs13.i532.i.i.i, label %lor.rhs.i530.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge

lor.rhs.i530.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge: ; preds = %lor.rhs.i530.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit536.i.i.i

land.rhs13.i532.i.i.i:                            ; preds = %lor.rhs.i530.i.i.i
  %.b65.i531.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !173
  br i1 %.b65.i531.i.i.i, label %land.rhs13.i532.i.i.i.if.then50.i534.i.i.i_crit_edge, label %if.then.i533.i.i.i, !prof !43

land.rhs13.i532.i.i.i.if.then50.i534.i.i.i_crit_edge: ; preds = %land.rhs13.i532.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i534.i.i.i

if.then.i533.i.i.i:                               ; preds = %land.rhs13.i532.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !173
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !173
  br label %if.then50.i534.i.i.i

if.then50.i534.i.i.i:                             ; preds = %if.then.i533.i.i.i, %land.rhs13.i532.i.i.i.if.then50.i534.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !173
  br label %dc_fixpt_sub.exit536.i.i.i

dc_fixpt_sub.exit536.i.i.i:                       ; preds = %if.then50.i534.i.i.i, %lor.rhs.i530.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge, %dc_fixpt_sub.exit521.i.i.i.dc_fixpt_sub.exit536.i.i.i_crit_edge
  %sub.i535.i.i.i = sub i64 %t3.sroa.0.0.copyload.i.i.i, %temp1.sroa.0.0.copyload236.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %t.sroa.0.0.i.i.i)
  %cmp.i537.i.i.i = icmp slt i64 %t.sroa.0.0.i.i.i, 0
  %sub.i538.i.i.i = sub i64 9223372036854775807, %t.sroa.0.0.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i538.i.i.i, i64 %sub.i535.i.i.i)
  %cmp4.not.i539.i.i.i = icmp slt i64 %sub.i538.i.i.i, %sub.i535.i.i.i
  %or.cond.i540.i.i.i = select i1 %cmp.i537.i.i.i, i1 true, i1 %cmp4.not.i539.i.i.i
  br i1 %or.cond.i540.i.i.i, label %lor.rhs.i545.i.i.i, label %dc_fixpt_sub.exit536.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge

dc_fixpt_sub.exit536.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit536.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit551.i.i.i

lor.rhs.i545.i.i.i:                               ; preds = %dc_fixpt_sub.exit536.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %t.sroa.0.0.i.i.i)
  %cmp6.i541.i.i.i = icmp sgt i64 %t.sroa.0.0.i.i.i, -1
  %sub8.i542.i.i.i = sub i64 -9223372036854775808, %t.sroa.0.0.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i542.i.i.i, i64 %sub.i535.i.i.i)
  %cmp10.i543.i.i.i = icmp sgt i64 %sub8.i542.i.i.i, %sub.i535.i.i.i
  %or.cond67.i544.i.i.i = select i1 %cmp6.i541.i.i.i, i1 true, i1 %cmp10.i543.i.i.i
  br i1 %or.cond67.i544.i.i.i, label %land.rhs13.i547.i.i.i, label %lor.rhs.i545.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge

lor.rhs.i545.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge: ; preds = %lor.rhs.i545.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit551.i.i.i

land.rhs13.i547.i.i.i:                            ; preds = %lor.rhs.i545.i.i.i
  %.b65.i546.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !176
  br i1 %.b65.i546.i.i.i, label %land.rhs13.i547.i.i.i.if.then50.i549.i.i.i_crit_edge, label %if.then.i548.i.i.i, !prof !43

land.rhs13.i547.i.i.i.if.then50.i549.i.i.i_crit_edge: ; preds = %land.rhs13.i547.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i549.i.i.i

if.then.i548.i.i.i:                               ; preds = %land.rhs13.i547.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !176
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !176
  br label %if.then50.i549.i.i.i

if.then50.i549.i.i.i:                             ; preds = %if.then.i548.i.i.i, %land.rhs13.i547.i.i.i.if.then50.i549.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !176
  br label %dc_fixpt_add.exit551.i.i.i

dc_fixpt_add.exit551.i.i.i:                       ; preds = %if.then50.i549.i.i.i, %lor.rhs.i545.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge, %dc_fixpt_sub.exit536.i.i.i.dc_fixpt_add.exit551.i.i.i_crit_edge
  %add.i550.i.i.i = add i64 %sub.i535.i.i.i, %t.sroa.0.0.i.i.i
  %.fca.0.insert202.i.i.i = insertvalue [1 x i64] poison, i64 %sub.i421.i.i.i, 0
  %.fca.0.insert145.i.i.i = insertvalue [1 x i64] poison, i64 %add.i550.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp86.i.i.i, [1 x i64] %.fca.0.insert202.i.i.i, [1 x i64] %.fca.0.insert145.i.i.i) #8
  %129 = ptrtoint ptr %agg.tmp86.i.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %.fca.0.load147.i.i.i = load i64, ptr %agg.tmp86.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i505.i.i.i)
  %cmp.i552.i.i.i = icmp slt i64 %add.i505.i.i.i, 0
  %sub.i553.i.i.i = sub i64 9223372036854775807, %add.i505.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i553.i.i.i, i64 %.fca.0.load147.i.i.i)
  %cmp4.not.i554.i.i.i = icmp slt i64 %sub.i553.i.i.i, %.fca.0.load147.i.i.i
  %or.cond.i555.i.i.i = select i1 %cmp.i552.i.i.i, i1 true, i1 %cmp4.not.i554.i.i.i
  br i1 %or.cond.i555.i.i.i, label %lor.rhs.i560.i.i.i, label %dc_fixpt_add.exit551.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge

dc_fixpt_add.exit551.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge: ; preds = %dc_fixpt_add.exit551.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit566.i.i.i

lor.rhs.i560.i.i.i:                               ; preds = %dc_fixpt_add.exit551.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add.i505.i.i.i)
  %cmp6.i556.i.i.i = icmp sgt i64 %add.i505.i.i.i, -1
  %sub8.i557.i.i.i = sub i64 -9223372036854775808, %add.i505.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i557.i.i.i, i64 %.fca.0.load147.i.i.i)
  %cmp10.i558.i.i.i = icmp sgt i64 %sub8.i557.i.i.i, %.fca.0.load147.i.i.i
  %or.cond67.i559.i.i.i = select i1 %cmp6.i556.i.i.i, i1 true, i1 %cmp10.i558.i.i.i
  br i1 %or.cond67.i559.i.i.i, label %land.rhs13.i562.i.i.i, label %lor.rhs.i560.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge

lor.rhs.i560.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge: ; preds = %lor.rhs.i560.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit566.i.i.i

land.rhs13.i562.i.i.i:                            ; preds = %lor.rhs.i560.i.i.i
  %.b65.i561.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !179
  br i1 %.b65.i561.i.i.i, label %land.rhs13.i562.i.i.i.if.then50.i564.i.i.i_crit_edge, label %if.then.i563.i.i.i, !prof !43

land.rhs13.i562.i.i.i.if.then50.i564.i.i.i_crit_edge: ; preds = %land.rhs13.i562.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i564.i.i.i

if.then.i563.i.i.i:                               ; preds = %land.rhs13.i562.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !179
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !179
  br label %if.then50.i564.i.i.i

if.then50.i564.i.i.i:                             ; preds = %if.then.i563.i.i.i, %land.rhs13.i562.i.i.i.if.then50.i564.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !179
  br label %dc_fixpt_add.exit566.i.i.i

dc_fixpt_add.exit566.i.i.i:                       ; preds = %if.then50.i564.i.i.i, %lor.rhs.i560.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge, %dc_fixpt_add.exit551.i.i.i.dc_fixpt_add.exit566.i.i.i_crit_edge
  %add.i565.i.i.i = add i64 %.fca.0.load147.i.i.i, %add.i505.i.i.i
  br label %if.end99.i.i.i

if.end99.i.i.i:                                   ; preds = %dc_fixpt_add.exit566.i.i.i, %dc_fixpt_sub.exit.i.i.i.if.end99.i.i.i_crit_edge
  %E2.sroa.0.0.i.i.i = phi i64 [ %add.i565.i.i.i, %dc_fixpt_add.exit566.i.i.i ], [ %.fca.0.load308.i.i.i, %dc_fixpt_sub.exit.i.i.i.if.end99.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %E2.sroa.0.0.i.i.i)
  %cmp.i567.i.i.i = icmp slt i64 %E2.sroa.0.0.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %E2.sroa.0.0.i.i.i)
  %130 = icmp slt i64 %E2.sroa.0.0.i.i.i, -9223372032559808511
  br i1 %130, label %land.rhs13.i577.i.i.i, label %if.end99.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge

if.end99.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge: ; preds = %if.end99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit581.i.i.i

land.rhs13.i577.i.i.i:                            ; preds = %if.end99.i.i.i
  %.b65.i576.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !182
  br i1 %.b65.i576.i.i.i, label %land.rhs13.i577.i.i.i.if.then50.i579.i.i.i_crit_edge, label %if.then.i578.i.i.i, !prof !43

land.rhs13.i577.i.i.i.if.then50.i579.i.i.i_crit_edge: ; preds = %land.rhs13.i577.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i579.i.i.i

if.then.i578.i.i.i:                               ; preds = %land.rhs13.i577.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !182
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !182
  br label %if.then50.i579.i.i.i

if.then50.i579.i.i.i:                             ; preds = %if.then.i578.i.i.i, %land.rhs13.i577.i.i.i.if.then50.i579.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !182
  br label %dc_fixpt_sub.exit581.i.i.i

dc_fixpt_sub.exit581.i.i.i:                       ; preds = %if.then50.i579.i.i.i, %if.end99.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge, %land.lhs.true.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge
  %cmp.i567605.i.i.i = phi i1 [ %cmp.i567.i.i.i, %if.end99.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge ], [ %cmp.i567.i.i.i, %if.then50.i579.i.i.i ], [ false, %land.lhs.true.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge ]
  %E2.sroa.0.0604.i.i.i = phi i64 [ %E2.sroa.0.0.i.i.i, %if.end99.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge ], [ %E2.sroa.0.0.i.i.i, %if.then50.i579.i.i.i ], [ 4294967296, %land.lhs.true.i.i.i.dc_fixpt_sub.exit581.i.i.i_crit_edge ]
  %sub.i580.i.i.i = sub i64 4294967296, %E2.sroa.0.0604.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp102.i.i.i) #8
  %.fca.0.insert231.i.i.i = insertvalue [1 x i64] poison, i64 %sub.i580.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp102.i.i.i, [1 x i64] %.fca.0.insert231.i.i.i, [1 x i64] %.fca.0.insert231.i.i.i) #8
  %131 = ptrtoint ptr %tmp102.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %temp2.sroa.0.0.copyload215.i.i.i = load i64, ptr %tmp102.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp102.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp105.i.i.i) #8
  %.fca.0.insert205.i.i.i = insertvalue [1 x i64] poison, i64 %temp2.sroa.0.0.copyload215.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp105.i.i.i, [1 x i64] %.fca.0.insert205.i.i.i, [1 x i64] %.fca.0.insert205.i.i.i) #8
  %132 = ptrtoint ptr %tmp105.i.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %temp2.sroa.0.0.copyload218.i.i.i = load i64, ptr %tmp105.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp105.i.i.i) #8
  %133 = ptrtoint ptr %min_lum_pq.i.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %.fca.0.load356.i.i.i = load i64, ptr %min_lum_pq.i.i.i, align 8
  %.fca.0.insert357.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load356.i.i.i, 0
  %.fca.0.insert211.i.i.i = insertvalue [1 x i64] poison, i64 %temp2.sroa.0.0.copyload218.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp109.i.i.i, [1 x i64] %.fca.0.insert357.i.i.i, [1 x i64] %.fca.0.insert211.i.i.i) #8
  %134 = ptrtoint ptr %agg.tmp109.i.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %.fca.0.load138.i.i.i = load i64, ptr %agg.tmp109.i.i.i, align 8
  %sub.i583.i.i.i = sub i64 9223372036854775807, %E2.sroa.0.0604.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i583.i.i.i, i64 %.fca.0.load138.i.i.i)
  %cmp4.not.i584.i.i.i = icmp slt i64 %sub.i583.i.i.i, %.fca.0.load138.i.i.i
  %or.cond.i585.i.i.i = select i1 %cmp.i567605.i.i.i, i1 true, i1 %cmp4.not.i584.i.i.i
  br i1 %or.cond.i585.i.i.i, label %lor.rhs.i590.i.i.i, label %dc_fixpt_sub.exit581.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge

dc_fixpt_sub.exit581.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit581.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit596.i.i.i

lor.rhs.i590.i.i.i:                               ; preds = %dc_fixpt_sub.exit581.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %E2.sroa.0.0604.i.i.i)
  %cmp6.i586.i.i.i = icmp sgt i64 %E2.sroa.0.0604.i.i.i, -1
  %sub8.i587.i.i.i = sub i64 -9223372036854775808, %E2.sroa.0.0604.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i587.i.i.i, i64 %.fca.0.load138.i.i.i)
  %cmp10.i588.i.i.i = icmp sgt i64 %sub8.i587.i.i.i, %.fca.0.load138.i.i.i
  %or.cond67.i589.i.i.i = select i1 %cmp6.i586.i.i.i, i1 true, i1 %cmp10.i588.i.i.i
  br i1 %or.cond67.i589.i.i.i, label %land.rhs13.i592.i.i.i, label %lor.rhs.i590.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge

lor.rhs.i590.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge: ; preds = %lor.rhs.i590.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit596.i.i.i

land.rhs13.i592.i.i.i:                            ; preds = %lor.rhs.i590.i.i.i
  %.b65.i591.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !185
  br i1 %.b65.i591.i.i.i, label %land.rhs13.i592.i.i.i.if.then50.i594.i.i.i_crit_edge, label %if.then.i593.i.i.i, !prof !43

land.rhs13.i592.i.i.i.if.then50.i594.i.i.i_crit_edge: ; preds = %land.rhs13.i592.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i594.i.i.i

if.then.i593.i.i.i:                               ; preds = %land.rhs13.i592.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !185
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !185
  br label %if.then50.i594.i.i.i

if.then50.i594.i.i.i:                             ; preds = %if.then.i593.i.i.i, %land.rhs13.i592.i.i.i.if.then50.i594.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !185
  br label %dc_fixpt_add.exit596.i.i.i

dc_fixpt_add.exit596.i.i.i:                       ; preds = %if.then50.i594.i.i.i, %lor.rhs.i590.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge, %dc_fixpt_sub.exit581.i.i.i.dc_fixpt_add.exit596.i.i.i_crit_edge
  %add.i595.i.i.i = add i64 %.fca.0.load138.i.i.i, %E2.sroa.0.0604.i.i.i
  %.fca.0.insert287.i.i.i = insertvalue [1 x i64] poison, i64 %add.i595.i.i.i, 0
  call fastcc void @compute_de_pq([1 x i64] %.fca.0.insert287.i.i.i, ptr noundef nonnull %scaledX.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp116.i.i.i, i64 noundef %spec.select.i.i, i64 noundef %max_content.sroa.0.0.copyload.max_display.sroa.0.0.i.i) #8
  %135 = ptrtoint ptr %scaledX.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %.unpack.i.i7.i = load i64, ptr %scaledX.i.i, align 8
  %136 = ptrtoint ptr %agg.tmp116.i.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %.fca.0.load.i.i8.i = load i64, ptr %agg.tmp116.i.i.i, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaledX.i.i, i64 noundef %.unpack.i.i7.i, i64 noundef %.fca.0.load.i.i8.i) #8
  br label %hermite_spline_eetf.exit.i.i

hermite_spline_eetf.exit.i.i:                     ; preds = %dc_fixpt_add.exit596.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %epsilon.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %E1.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_content_pq.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_lum_pq.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_lum_pq.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp18.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp72.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp86.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp109.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp116.i.i.i) #8
  %137 = ptrtoint ptr %scaledX.i.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %.fca.0.load221.pr.i.i = load i64, ptr %scaledX.i.i, align 8
  br label %if.end54.i.i

if.else46.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp47.i.i) #8
  %x48.i.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.069.i.i, i32 0, i32 1
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp49.i.i, i64 noundef %spec.select.i.i, i64 noundef %shl.i12.i.i) #8
  %138 = ptrtoint ptr %x48.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %.unpack.i9.i = load i64, ptr %x48.i.i, align 8
  %139 = ptrtoint ptr %agg.tmp49.i.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %.fca.0.load133.i.i = load i64, ptr %agg.tmp49.i.i, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp47.i.i, i64 noundef %.unpack.i9.i, i64 noundef %.fca.0.load133.i.i) #8
  %140 = ptrtoint ptr %tmp47.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %tmp47.i.i, align 8
  %142 = ptrtoint ptr %scaledX.i.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %scaledX.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp47.i.i) #8
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else46.i.i, %hermite_spline_eetf.exit.i.i
  %.fca.0.load221.i.i = phi i64 [ %141, %if.else46.i.i ], [ %.fca.0.load221.pr.i.i, %hermite_spline_eetf.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %.fca.0.load221.i.i)
  %cmp.i.i10.i = icmp slt i64 %.fca.0.load221.i.i, 4294967296
  br i1 %cmp.i.i10.i, label %if.then57.i.i, label %if.else68.i.i

if.then57.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load221.i.i)
  %cmp.i13.i.i = icmp slt i64 %.fca.0.load221.i.i, 0
  br i1 %cmp.i13.i.i, label %if.then57.i.i.if.end104.i.i_crit_edge, label %if.else61.i.i

if.then57.i.i.if.end104.i.i_crit_edge:            ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i.i

if.else61.i.i:                                    ; preds = %if.then57.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp62.i.i) #8
  %.fca.0.insert228.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load221.i.i, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !188) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gamma.i.i.i) #8, !noalias !188
  %143 = ptrtoint ptr %gamma.i.i.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 -1, ptr %gamma.i.i.i, align 8, !noalias !188, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %gamma.i.i.i, i64 noundef 22, i64 noundef 10) #8, !noalias !188
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i.i) #8, !noalias !188
  %144 = ptrtoint ptr %96 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 -1, ptr %96, align 8, !noalias !188, !annotation !44
  %145 = ptrtoint ptr %scratch_gamma_args.i.i.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %.fca.0.load221.i.i, ptr %scratch_gamma_args.i.i.i, align 8, !noalias !188
  %146 = call ptr @memset(ptr %a0.i.i.i, i32 0, i32 32)
  store ptr %cal_buffer, ptr %96, align 8, !noalias !188
  %147 = ptrtoint ptr %gamma.i.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %gamma.i.i.i, align 8, !noalias !188
  %149 = ptrtoint ptr %gamma3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %gamma3.i.i.i, align 8, !noalias !188
  br i1 %cmp25.i.i, label %if.end.i.i.i.i, label %if.end.i15.i.i

if.end.i.i.i.i:                                   ; preds = %if.else61.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !191) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp8.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp16.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp30.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp35.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp37.i.i.i.i) #8, !noalias !188
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load221.i.i)
  %cmp.i115.not.i.i.not.i.i = icmp eq i64 %.fca.0.load221.i.i, 0
  %150 = insertvalue [1 x i64] undef, i64 %148, 0
  br i1 %cmp.i115.not.i.i.not.i.i, label %if.then.i120.i.i.i.i, label %dc_fixpt_sub.exit177.i.i.i.i

if.then.i120.i.i.i.i:                             ; preds = %if.end.i.i.i.i
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp16.i.i.i.i, [1 x i64] %150) #8, !noalias !194
  %151 = ptrtoint ptr %agg.tmp16.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %.fca.0.load61.i.i.i.i = load i64, ptr %agg.tmp16.i.i.i.i, align 8, !noalias !194
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load61.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp eq i64 %.fca.0.load61.i.i.i.i, 0
  %..i.i = select i1 %cmp3.i.i.i.i.i, i64 4294967296, i64 0
  %.fca.0.insert68.i.i.i.i = insertvalue [1 x i64] poison, i64 %..i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp8.i.i.i.i, [1 x i64] [i64 4294967296], [1 x i64] %.fca.0.insert68.i.i.i.i) #8, !noalias !194
  %152 = ptrtoint ptr %agg.tmp8.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %.fca.0.load73.i.i.i.i = load i64, ptr %agg.tmp8.i.i.i.i, align 8, !noalias !194
  %add8.i.i.i.i.i = add i64 %.fca.0.load73.i.i.i.i, 9223372036854775807
  %153 = and i64 %add8.i.i.i.i.i, %.fca.0.load73.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %153)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %land.rhs13.i130.i.i.i.i, label %if.then.i120.i.i.i.i.dc_fixpt_sub.exit.i.i.i.i_crit_edge

if.then.i120.i.i.i.i.dc_fixpt_sub.exit.i.i.i.i_crit_edge: ; preds = %if.then.i120.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i.i.i

land.rhs13.i130.i.i.i.i:                          ; preds = %if.then.i120.i.i.i.i
  %.b65.i129.i.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !195
  br i1 %.b65.i129.i.i.i.i, label %land.rhs13.i130.i.i.i.i.if.then50.i132.i.i.i.i_crit_edge, label %if.then.i131.i.i.i.i, !prof !43

land.rhs13.i130.i.i.i.i.if.then50.i132.i.i.i.i_crit_edge: ; preds = %land.rhs13.i130.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i132.i.i.i.i

if.then.i131.i.i.i.i:                             ; preds = %land.rhs13.i130.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !195
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !195
  br label %if.then50.i132.i.i.i.i

if.then50.i132.i.i.i.i:                           ; preds = %if.then.i131.i.i.i.i, %land.rhs13.i130.i.i.i.i.if.then50.i132.i.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !195
  br label %dc_fixpt_sub.exit.i.i.i.i

dc_fixpt_sub.exit.i.i.i.i:                        ; preds = %if.then50.i132.i.i.i.i, %if.then.i120.i.i.i.i.dc_fixpt_sub.exit.i.i.i.i_crit_edge
  %sub.i133.i.i.i.i = sub i64 0, %.fca.0.load73.i.i.i.i
  br label %translate_from_linear_space_long.exit.i.i.i

dc_fixpt_sub.exit177.i.i.i.i:                     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp37.i.i.i.i, [1 x i64] %150) #8, !noalias !194
  %155 = ptrtoint ptr %agg.tmp37.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %.fca.0.load.i.i.i.i = load i64, ptr %agg.tmp37.i.i.i.i, align 8, !noalias !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i150.i.i.i.i) #8, !noalias !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i151.i.i.i.i) #8, !noalias !194
  %.fca.0.insert.i.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i.i.i, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i151.i.i.i.i, [1 x i64] %.fca.0.insert228.i.i) #8, !noalias !198
  %156 = ptrtoint ptr %agg.tmp4.i151.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %.fca.0.load.i157.i.i.i.i = load i64, ptr %agg.tmp4.i151.i.i.i.i, align 8, !noalias !198
  %.fca.0.insert.i158.i.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i157.i.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i150.i.i.i.i, [1 x i64] %.fca.0.insert.i158.i.i.i.i, [1 x i64] %.fca.0.insert.i.i.i.i) #8, !noalias !198
  %157 = ptrtoint ptr %agg.tmp.i150.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %.fca.0.load10.i159.i.i.i.i = load i64, ptr %agg.tmp.i150.i.i.i.i, align 8, !noalias !198
  %.fca.0.insert11.i160.i.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i159.i.i.i.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp35.i.i.i.i, [1 x i64] %.fca.0.insert11.i160.i.i.i.i) #8, !noalias !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i150.i.i.i.i) #8, !noalias !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i151.i.i.i.i) #8, !noalias !194
  %158 = ptrtoint ptr %agg.tmp35.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %.fca.0.load52.i.i.i.i = load i64, ptr %agg.tmp35.i.i.i.i, align 8, !noalias !194
  %.fca.0.insert53.i.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load52.i.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp30.i.i.i.i, [1 x i64] [i64 4294967296], [1 x i64] %.fca.0.insert53.i.i.i.i) #8, !noalias !194
  %159 = ptrtoint ptr %agg.tmp30.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %.fca.0.load58.i.i.i.i = load i64, ptr %agg.tmp30.i.i.i.i, align 8, !noalias !194
  br label %translate_from_linear_space_long.exit.i.i.i

translate_from_linear_space_long.exit.i.i.i:      ; preds = %dc_fixpt_sub.exit177.i.i.i.i, %dc_fixpt_sub.exit.i.i.i.i
  %.sink.i.i.i = phi i64 [ %sub.i133.i.i.i.i, %dc_fixpt_sub.exit.i.i.i.i ], [ %.fca.0.load58.i.i.i.i, %dc_fixpt_sub.exit177.i.i.i.i ]
  %160 = ptrtoint ptr %tmp62.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %.sink.i.i.i, ptr %tmp62.i.i, align 8, !alias.scope !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp8.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp16.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp30.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp35.i.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp37.i.i.i.i) #8, !noalias !188
  br label %if.end65.i.i

if.end.i15.i.i:                                   ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp62.i.i, ptr noundef nonnull %scratch_gamma_args.i.i.i) #8
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.end.i15.i.i, %translate_from_linear_space_long.exit.i.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i.i) #8, !noalias !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gamma.i.i.i) #8, !noalias !188
  %161 = ptrtoint ptr %tmp62.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %output.sroa.0.0.copyload172.i.i = load i64, ptr %tmp62.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp62.i.i) #8
  %162 = call i64 @llvm.smin.i64(i64 %output.sroa.0.0.copyload172.i.i, i64 4294967296) #8
  %163 = call i64 @llvm.smax.i64(i64 %162, i64 0) #8
  br label %if.end104.i.i

if.else68.i.i:                                    ; preds = %if.end54.i.i
  %x70.i.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.069.i.i, i32 0, i32 1
  %x71.i.i = getelementptr inbounds %struct.hw_x_point, ptr %prv_coord_x.070.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %x70.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %.unpack3.i.i = load i64, ptr %x70.i.i, align 8
  %165 = ptrtoint ptr %x71.i.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %.unpack4.i.i = load i64, ptr %x71.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack4.i.i)
  %cmp.i16.i.i = icmp slt i64 %.unpack4.i.i, 0
  %add.i.i.i = xor i64 %.unpack4.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %.unpack3.i.i)
  %cmp4.not.i.i.i = icmp sgt i64 %add.i.i.i, %.unpack3.i.i
  %or.cond.i17.i.i = select i1 %cmp.i16.i.i, i1 true, i1 %cmp4.not.i.i.i
  br i1 %or.cond.i17.i.i, label %lor.rhs.i.i.i, label %if.else68.i.i.dc_fixpt_sub.exit.i.i_crit_edge

if.else68.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %if.else68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.else68.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack4.i.i)
  %cmp6.i.i.i = icmp sgt i64 %.unpack4.i.i, -1
  %add8.i.i.i = add i64 %.unpack4.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i, i64 %.unpack3.i.i)
  %cmp10.i.i.i = icmp slt i64 %add8.i.i.i, %.unpack3.i.i
  %or.cond67.i.i.i = select i1 %cmp6.i.i.i, i1 true, i1 %cmp10.i.i.i
  br i1 %or.cond67.i.i.i, label %land.rhs13.i.i.i, label %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge

lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i

land.rhs13.i.i.i:                                 ; preds = %lor.rhs.i.i.i
  %.b65.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !201
  br i1 %.b65.i.i.i, label %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge, label %if.then.i18.i.i, !prof !43

land.rhs13.i.i.i.if.then50.i.i.i_crit_edge:       ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i.i

if.then.i18.i.i:                                  ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !201
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !201
  br label %if.then50.i.i.i

if.then50.i.i.i:                                  ; preds = %if.then.i18.i.i, %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !201
  br label %dc_fixpt_sub.exit.i.i

dc_fixpt_sub.exit.i.i:                            ; preds = %if.then50.i.i.i, %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge, %if.else68.i.i.dc_fixpt_sub.exit.i.i_crit_edge
  %sub.i.i.i = sub i64 %.unpack3.i.i, %.unpack4.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %output.sroa.0.071.i.i)
  %cmp.i19.i.i = icmp slt i64 %output.sroa.0.071.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %output.sroa.0.071.i.i)
  %166 = icmp slt i64 %output.sroa.0.071.i.i, -9223372032559808511
  br i1 %166, label %land.rhs13.i29.i.i, label %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit33.i.i_crit_edge

dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit33.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit33.i.i

land.rhs13.i29.i.i:                               ; preds = %dc_fixpt_sub.exit.i.i
  %.b65.i28.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !204
  br i1 %.b65.i28.i.i, label %land.rhs13.i29.i.i.if.then50.i31.i.i_crit_edge, label %if.then.i30.i.i, !prof !43

land.rhs13.i29.i.i.if.then50.i31.i.i_crit_edge:   ; preds = %land.rhs13.i29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i31.i.i

if.then.i30.i.i:                                  ; preds = %land.rhs13.i29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !204
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !204
  br label %if.then50.i31.i.i

if.then50.i31.i.i:                                ; preds = %if.then.i30.i.i, %land.rhs13.i29.i.i.if.then50.i31.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !204
  br label %dc_fixpt_sub.exit33.i.i

dc_fixpt_sub.exit33.i.i:                          ; preds = %if.then50.i31.i.i, %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit33.i.i_crit_edge
  %sub.i32.i.i = sub i64 4294967296, %output.sroa.0.071.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp76.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp76.i.i, i64 noundef %spec.select.i.i, i64 noundef %shl.i12.i.i) #8
  %167 = ptrtoint ptr %tmp76.i.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %bright_norm.sroa.0.0.copyload.i.i = load i64, ptr %tmp76.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp76.i.i) #8
  %168 = ptrtoint ptr %x71.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %.unpack6.i.i = load i64, ptr %x71.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack6.i.i)
  %cmp.i34.i.i = icmp slt i64 %.unpack6.i.i, 0
  %add.i35.i.i = xor i64 %.unpack6.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i35.i.i, i64 %bright_norm.sroa.0.0.copyload.i.i)
  %cmp4.not.i36.i.i = icmp sgt i64 %add.i35.i.i, %bright_norm.sroa.0.0.copyload.i.i
  %or.cond.i37.i.i = select i1 %cmp.i34.i.i, i1 true, i1 %cmp4.not.i36.i.i
  br i1 %or.cond.i37.i.i, label %lor.rhs.i42.i.i, label %dc_fixpt_sub.exit33.i.i.dc_fixpt_sub.exit48.i.i_crit_edge

dc_fixpt_sub.exit33.i.i.dc_fixpt_sub.exit48.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit48.i.i

lor.rhs.i42.i.i:                                  ; preds = %dc_fixpt_sub.exit33.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack6.i.i)
  %cmp6.i38.i.i = icmp sgt i64 %.unpack6.i.i, -1
  %add8.i39.i.i = add i64 %.unpack6.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i39.i.i, i64 %bright_norm.sroa.0.0.copyload.i.i)
  %cmp10.i40.i.i = icmp slt i64 %add8.i39.i.i, %bright_norm.sroa.0.0.copyload.i.i
  %or.cond67.i41.i.i = select i1 %cmp6.i38.i.i, i1 true, i1 %cmp10.i40.i.i
  br i1 %or.cond67.i41.i.i, label %land.rhs13.i44.i.i, label %lor.rhs.i42.i.i.dc_fixpt_sub.exit48.i.i_crit_edge

lor.rhs.i42.i.i.dc_fixpt_sub.exit48.i.i_crit_edge: ; preds = %lor.rhs.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit48.i.i

land.rhs13.i44.i.i:                               ; preds = %lor.rhs.i42.i.i
  %.b65.i43.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !207
  br i1 %.b65.i43.i.i, label %land.rhs13.i44.i.i.if.then50.i46.i.i_crit_edge, label %if.then.i45.i.i, !prof !43

land.rhs13.i44.i.i.if.then50.i46.i.i_crit_edge:   ; preds = %land.rhs13.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i46.i.i

if.then.i45.i.i:                                  ; preds = %land.rhs13.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !207
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !207
  br label %if.then50.i46.i.i

if.then50.i46.i.i:                                ; preds = %if.then.i45.i.i, %land.rhs13.i44.i.i.if.then50.i46.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !207
  br label %dc_fixpt_sub.exit48.i.i

dc_fixpt_sub.exit48.i.i:                          ; preds = %if.then50.i46.i.i, %lor.rhs.i42.i.i.dc_fixpt_sub.exit48.i.i_crit_edge, %dc_fixpt_sub.exit33.i.i.dc_fixpt_sub.exit48.i.i_crit_edge
  %sub.i47.i.i = sub i64 %bright_norm.sroa.0.0.copyload.i.i, %.unpack6.i.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp81.i.i, i64 noundef %sub.i32.i.i, i64 noundef %sub.i47.i.i) #8
  %.fca.0.insert146.i.i = insertvalue [1 x i64] poison, i64 %sub.i.i.i, 0
  %169 = ptrtoint ptr %agg.tmp81.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %.fca.0.load127.i.i = load i64, ptr %agg.tmp81.i.i, align 8
  %.fca.0.insert128.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load127.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp80.i.i, [1 x i64] %.fca.0.insert146.i.i, [1 x i64] %.fca.0.insert128.i.i) #8
  %170 = ptrtoint ptr %agg.tmp80.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %.fca.0.load130.i.i = load i64, ptr %agg.tmp80.i.i, align 8
  %sub.i50.i.i = sub i64 9223372036854775807, %output.sroa.0.071.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i50.i.i, i64 %.fca.0.load130.i.i)
  %cmp4.not.i51.i.i = icmp slt i64 %sub.i50.i.i, %.fca.0.load130.i.i
  %or.cond.i52.i.i = select i1 %cmp.i19.i.i, i1 true, i1 %cmp4.not.i51.i.i
  br i1 %or.cond.i52.i.i, label %lor.rhs.i56.i.i, label %dc_fixpt_sub.exit48.i.i.dc_fixpt_add.exit.i.i_crit_edge

dc_fixpt_sub.exit48.i.i.dc_fixpt_add.exit.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i

lor.rhs.i56.i.i:                                  ; preds = %dc_fixpt_sub.exit48.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %output.sroa.0.071.i.i)
  %cmp6.i53.i.i = icmp sgt i64 %output.sroa.0.071.i.i, -1
  %sub8.i.i.i = sub i64 -9223372036854775808, %output.sroa.0.071.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i.i, i64 %.fca.0.load130.i.i)
  %cmp10.i54.i.i = icmp sgt i64 %sub8.i.i.i, %.fca.0.load130.i.i
  %or.cond67.i55.i.i = select i1 %cmp6.i53.i.i, i1 true, i1 %cmp10.i54.i.i
  br i1 %or.cond67.i55.i.i, label %land.rhs13.i58.i.i, label %lor.rhs.i56.i.i.dc_fixpt_add.exit.i.i_crit_edge

lor.rhs.i56.i.i.dc_fixpt_add.exit.i.i_crit_edge:  ; preds = %lor.rhs.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i

land.rhs13.i58.i.i:                               ; preds = %lor.rhs.i56.i.i
  %.b65.i57.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !210
  br i1 %.b65.i57.i.i, label %land.rhs13.i58.i.i.if.then50.i60.i.i_crit_edge, label %if.then.i59.i.i, !prof !43

land.rhs13.i58.i.i.if.then50.i60.i.i_crit_edge:   ; preds = %land.rhs13.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i60.i.i

if.then.i59.i.i:                                  ; preds = %land.rhs13.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !210
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !210
  br label %if.then50.i60.i.i

if.then50.i60.i.i:                                ; preds = %if.then.i59.i.i, %land.rhs13.i58.i.i.if.then50.i60.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !210
  br label %dc_fixpt_add.exit.i.i

dc_fixpt_add.exit.i.i:                            ; preds = %if.then50.i60.i.i, %lor.rhs.i56.i.i.dc_fixpt_add.exit.i.i_crit_edge, %dc_fixpt_sub.exit48.i.i.dc_fixpt_add.exit.i.i_crit_edge
  %add.i61.i.i = add i64 %.fca.0.load130.i.i, %output.sroa.0.071.i.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp93.i.i, i64 noundef 107, i64 noundef 100) #8
  %171 = ptrtoint ptr %agg.tmp93.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %.fca.0.load.i11.i = load i64, ptr %agg.tmp93.i.i, align 8
  %172 = call i64 @llvm.smin.i64(i64 %.fca.0.load.i11.i, i64 %add.i61.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i61.i.i)
  %cmp.i.inv.i62.i.i = icmp sgt i64 %add.i61.i.i, 0
  %arg.coerce.fca.0.extract.sink.i63.i.i = select i1 %cmp.i.inv.i62.i.i, i64 %172, i64 0
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %dc_fixpt_add.exit.i.i, %if.end65.i.i, %if.then57.i.i.if.end104.i.i_crit_edge, %for.body.i6.i.if.end104.i.i_crit_edge
  %.sink75.i.i = phi i64 [ %arg.coerce.fca.0.extract.sink.i63.i.i, %dc_fixpt_add.exit.i.i ], [ %163, %if.end65.i.i ], [ 0, %if.then57.i.i.if.end104.i.i_crit_edge ], [ 4294967296, %for.body.i6.i.if.end104.i.i_crit_edge ]
  %output.sroa.0.2.i.i = phi i64 [ %arg.coerce.fca.0.extract.sink.i63.i.i, %dc_fixpt_add.exit.i.i ], [ %163, %if.end65.i.i ], [ 0, %if.then57.i.i.if.end104.i.i_crit_edge ], [ %output.sroa.0.071.i.i, %for.body.i6.i.if.end104.i.i_crit_edge ]
  %is_clipped.1.off0.i.i = phi i1 [ true, %dc_fixpt_add.exit.i.i ], [ false, %if.end65.i.i ], [ false, %if.then57.i.i.if.end104.i.i_crit_edge ], [ true, %for.body.i6.i.if.end104.i.i_crit_edge ]
  %173 = ptrtoint ptr %rgb.067.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %.sink75.i.i, ptr %rgb.067.i.i, align 8
  %g.i12.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.067.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %g.i12.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %.sink75.i.i, ptr %g.i12.i, align 8
  %b.i13.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.067.i.i, i32 0, i32 2
  %175 = ptrtoint ptr %b.i13.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %.sink75.i.i, ptr %b.i13.i, align 8
  %incdec.ptr.i14.i = getelementptr %struct.hw_x_point, ptr %coord_x.069.i.i, i32 1
  %incdec.ptr105.i.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb.067.i.i, i32 1
  %inc.i15.i = add nuw nsw i32 %i.066.i.i, 1
  %exitcond.not.i16.i = icmp eq i32 %inc.i15.i, 513
  br i1 %exitcond.not.i16.i, label %for.end.i.i, label %if.end104.i.i.for.body.i6.i_crit_edge

if.end104.i.i.for.body.i6.i_crit_edge:            ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i6.i

for.end.i.i:                                      ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %cal_buffer to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %cal_buffer, align 8
  br label %build_freesync_hdr.exit.i

build_freesync_hdr.exit.i:                        ; preds = %for.end.i.i, %lor.lhs.false.i.i.build_freesync_hdr.exit.i_crit_edge, %if.then21.i.build_freesync_hdr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaledX.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp49.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp80.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp81.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp93.i.i) #8
  br label %calculate_curve.exit

if.then24.i:                                      ; preds = %if.end76
  %end_exponent25.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 3
  %177 = ptrtoint ptr %end_exponent25.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 4, ptr %end_exponent25.i, align 8
  %x_point_at_y1_red26.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 4
  %178 = ptrtoint ptr %x_point_at_y1_red26.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 12, ptr %x_point_at_y1_red26.i, align 2
  %x_point_at_y1_green27.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 5
  %179 = ptrtoint ptr %x_point_at_y1_green27.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 12, ptr %x_point_at_y1_green27.i, align 4
  %x_point_at_y1_blue28.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 6
  %180 = ptrtoint ptr %x_point_at_y1_blue28.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 12, ptr %x_point_at_y1_blue28.i, align 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge, %if.then24.i
  %coord_x.04.i.i = phi ptr [ @coordinates_x, %if.then24.i ], [ %incdec.ptr.i47.i, %compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge ]
  %rgb.02.i.i = phi ptr [ %call.i.i.i205, %if.then24.i ], [ %incdec.ptr3.i.i, %compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge ]
  %i.01.i.i = phi i32 [ 0, %if.then24.i ], [ %inc.i48.i, %compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge ]
  %x.i20.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.04.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %x.i20.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %.unpack.i21.i = load i64, ptr %x.i20.i, align 8
  %182 = insertvalue [1 x i64] undef, i64 %.unpack.i21.i, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i19.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp16.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaling_factor.i.i17.i) #8
  %183 = ptrtoint ptr %scaling_factor.i.i17.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 -1, ptr %scaling_factor.i.i17.i, align 8, !annotation !44
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %scaling_factor.i.i17.i, i64 noundef 80, i64 noundef 1000) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i18.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i18.i, i64 noundef 17883277, i64 noundef 100000000) #8
  %184 = ptrtoint ptr %tmp.i.i18.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %a.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp.i.i18.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i18.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp2.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp2.i.i.i, i64 noundef 28466892, i64 noundef 100000000) #8
  %185 = ptrtoint ptr %tmp2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %b.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp2.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp2.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp3.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp3.i.i.i, i64 noundef 55991073, i64 noundef 100000000) #8
  %186 = ptrtoint ptr %tmp3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %c.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp3.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp3.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp4.i.i.i, i64 noundef 1, i64 noundef 12) #8
  %187 = ptrtoint ptr %tmp4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %threshold.sroa.0.0.copyload.i.i.i = load i64, ptr %tmp4.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp5.i.i.i) #8
  %188 = ptrtoint ptr %scaling_factor.i.i17.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %.fca.0.load34.i.i.i = load i64, ptr %scaling_factor.i.i17.i, align 8
  %.fca.0.insert35.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load34.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp5.i.i.i, [1 x i64] %182, [1 x i64] %.fca.0.insert35.i.i.i) #8
  %189 = ptrtoint ptr %tmp5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %x.sroa.0.0.copyload.i.i22.i = load i64, ptr %tmp5.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp5.i.i.i) #8
  %.fca.0.insert38.i.i.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload.i.i22.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %x.sroa.0.0.copyload.i.i22.i, i64 %threshold.sroa.0.0.copyload.i.i.i)
  %cmp.i.i.i23.i = icmp slt i64 %x.sroa.0.0.copyload.i.i22.i, %threshold.sroa.0.0.copyload.i.i.i
  br i1 %cmp.i.i.i23.i, label %if.then.i.i24.i, label %if.else.i.i.i

if.then.i.i24.i:                                  ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp10.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i19.i, i64 noundef 3, i64 noundef 1) #8
  %190 = ptrtoint ptr %agg.tmp.i.i19.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %.fca.0.load31.i.i.i = load i64, ptr %agg.tmp.i.i19.i, align 8
  %.fca.0.insert32.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load31.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp10.i.i.i, [1 x i64] %.fca.0.insert38.i.i.i, [1 x i64] %.fca.0.insert32.i.i.i) #8
  %191 = ptrtoint ptr %tmp10.i.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %x.sroa.0.0.copyload61.i.i.i = load i64, ptr %tmp10.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp10.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13.i.i.i) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !213) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %x.sroa.0.0.copyload61.i.i.i)
  %cmp.i1.i.i.i = icmp eq i64 %x.sroa.0.0.copyload61.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.then.i.i.i25.i, label %if.end.i.i.i28.i

if.then.i.i.i25.i:                                ; preds = %if.then.i.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %tmp13.i.i.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 0, ptr %tmp13.i.i.i, align 8, !alias.scope !213
  br label %dc_fixpt_pow.exit.i.i.i

if.end.i.i.i28.i:                                 ; preds = %if.then.i.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert44.i.i.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload61.i.i.i, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i.i.i.i, [1 x i64] %.fca.0.insert44.i.i.i) #8, !noalias !213
  %193 = ptrtoint ptr %agg.tmp4.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %.fca.0.load.i.i.i26.i = load i64, ptr %agg.tmp4.i.i.i.i, align 8, !noalias !213
  %.fca.0.insert.i.i.i27.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i.i26.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i.i.i, [1 x i64] %.fca.0.insert.i.i.i27.i, [1 x i64] [i64 2147483648]) #8, !noalias !213
  %194 = ptrtoint ptr %agg.tmp.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %.fca.0.load10.i.i.i.i = load i64, ptr %agg.tmp.i.i.i.i, align 8, !noalias !213
  %.fca.0.insert11.i.i.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i.i.i.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp13.i.i.i, [1 x i64] %.fca.0.insert11.i.i.i.i) #8
  br label %dc_fixpt_pow.exit.i.i.i

dc_fixpt_pow.exit.i.i.i:                          ; preds = %if.end.i.i.i28.i, %if.then.i.i.i25.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i.i.i.i) #8
  %195 = ptrtoint ptr %tmp13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %tmp13.i.i.i, align 8
  %197 = ptrtoint ptr %rgb.02.i.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %rgb.02.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13.i.i.i) #8
  br label %compute_hlg_oetf.exit.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp15.i.i.i) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp16.i.i.i, i64 noundef 12, i64 noundef 1) #8
  %198 = ptrtoint ptr %agg.tmp16.i.i.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %.fca.0.load.i.i29.i = load i64, ptr %agg.tmp16.i.i.i, align 8
  %.fca.0.insert.i.i30.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i29.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp15.i.i.i, [1 x i64] %.fca.0.insert38.i.i.i, [1 x i64] %.fca.0.insert.i.i30.i) #8
  %199 = ptrtoint ptr %tmp15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %x.sroa.0.0.copyload64.i.i.i = load i64, ptr %tmp15.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp15.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %b.sroa.0.0.copyload.i.i.i)
  %cmp.i2.i.i.i = icmp slt i64 %b.sroa.0.0.copyload.i.i.i, 0
  %add.i.i.i31.i = xor i64 %b.sroa.0.0.copyload.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i31.i, i64 %x.sroa.0.0.copyload64.i.i.i)
  %cmp4.not.i.i.i32.i = icmp sgt i64 %add.i.i.i31.i, %x.sroa.0.0.copyload64.i.i.i
  %or.cond.i.i.i33.i = select i1 %cmp.i2.i.i.i, i1 true, i1 %cmp4.not.i.i.i32.i
  br i1 %or.cond.i.i.i33.i, label %lor.rhs.i.i.i37.i, label %if.else.i.i.i.dc_fixpt_sub.exit.i.i42.i_crit_edge

if.else.i.i.i.dc_fixpt_sub.exit.i.i42.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i42.i

lor.rhs.i.i.i37.i:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %b.sroa.0.0.copyload.i.i.i)
  %cmp6.i.i.i34.i = icmp sgt i64 %b.sroa.0.0.copyload.i.i.i, -1
  %add8.i.i.i35.i = add i64 %b.sroa.0.0.copyload.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i35.i, i64 %x.sroa.0.0.copyload64.i.i.i)
  %cmp10.i.i.i.i = icmp slt i64 %add8.i.i.i35.i, %x.sroa.0.0.copyload64.i.i.i
  %or.cond67.i.i.i36.i = select i1 %cmp6.i.i.i34.i, i1 true, i1 %cmp10.i.i.i.i
  br i1 %or.cond67.i.i.i36.i, label %land.rhs13.i.i.i39.i, label %lor.rhs.i.i.i37.i.dc_fixpt_sub.exit.i.i42.i_crit_edge

lor.rhs.i.i.i37.i.dc_fixpt_sub.exit.i.i42.i_crit_edge: ; preds = %lor.rhs.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit.i.i42.i

land.rhs13.i.i.i39.i:                             ; preds = %lor.rhs.i.i.i37.i
  %.b65.i.i.i38.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !216
  br i1 %.b65.i.i.i38.i, label %land.rhs13.i.i.i39.i.if.then50.i.i.i40.i_crit_edge, label %if.then.i3.i.i.i, !prof !43

land.rhs13.i.i.i39.i.if.then50.i.i.i40.i_crit_edge: ; preds = %land.rhs13.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i.i.i40.i

if.then.i3.i.i.i:                                 ; preds = %land.rhs13.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !216
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !216
  br label %if.then50.i.i.i40.i

if.then50.i.i.i40.i:                              ; preds = %if.then.i3.i.i.i, %land.rhs13.i.i.i39.i.if.then50.i.i.i40.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !216
  br label %dc_fixpt_sub.exit.i.i42.i

dc_fixpt_sub.exit.i.i42.i:                        ; preds = %if.then50.i.i.i40.i, %lor.rhs.i.i.i37.i.dc_fixpt_sub.exit.i.i42.i_crit_edge, %if.else.i.i.i.dc_fixpt_sub.exit.i.i42.i_crit_edge
  %sub.i.i.i41.i = sub i64 %x.sroa.0.0.copyload64.i.i.i, %b.sroa.0.0.copyload.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp22.i.i.i) #8
  %.fca.0.insert53.i.i.i = insertvalue [1 x i64] poison, i64 %sub.i.i.i41.i, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp22.i.i.i, [1 x i64] %.fca.0.insert53.i.i.i) #8
  %200 = ptrtoint ptr %tmp22.i.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %x.sroa.0.0.copyload68.i.i.i = load i64, ptr %tmp22.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp22.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp24.i.i.i) #8
  %.fca.0.insert83.i.i.i = insertvalue [1 x i64] poison, i64 %a.sroa.0.0.copyload.i.i.i, 0
  %.fca.0.insert56.i.i.i = insertvalue [1 x i64] poison, i64 %x.sroa.0.0.copyload68.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp24.i.i.i, [1 x i64] %.fca.0.insert83.i.i.i, [1 x i64] %.fca.0.insert56.i.i.i) #8
  %201 = ptrtoint ptr %tmp24.i.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %x.sroa.0.0.copyload70.i.i.i = load i64, ptr %tmp24.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp24.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %x.sroa.0.0.copyload70.i.i.i)
  %cmp.i4.i.i.i = icmp slt i64 %x.sroa.0.0.copyload70.i.i.i, 0
  %sub.i5.i.i.i = sub i64 9223372036854775807, %x.sroa.0.0.copyload70.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i5.i.i.i, i64 %c.sroa.0.0.copyload.i.i.i)
  %cmp4.not.i6.i.i.i = icmp slt i64 %sub.i5.i.i.i, %c.sroa.0.0.copyload.i.i.i
  %or.cond.i7.i.i.i = select i1 %cmp.i4.i.i.i, i1 true, i1 %cmp4.not.i6.i.i.i
  br i1 %or.cond.i7.i.i.i, label %lor.rhs.i11.i.i.i, label %dc_fixpt_sub.exit.i.i42.i.dc_fixpt_add.exit.i.i44.i_crit_edge

dc_fixpt_sub.exit.i.i42.i.dc_fixpt_add.exit.i.i44.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i44.i

lor.rhs.i11.i.i.i:                                ; preds = %dc_fixpt_sub.exit.i.i42.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %x.sroa.0.0.copyload70.i.i.i)
  %cmp6.i8.i.i.i = icmp sgt i64 %x.sroa.0.0.copyload70.i.i.i, -1
  %sub8.i.i.i43.i = sub i64 -9223372036854775808, %x.sroa.0.0.copyload70.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i.i43.i, i64 %c.sroa.0.0.copyload.i.i.i)
  %cmp10.i9.i.i.i = icmp sgt i64 %sub8.i.i.i43.i, %c.sroa.0.0.copyload.i.i.i
  %or.cond67.i10.i.i.i = select i1 %cmp6.i8.i.i.i, i1 true, i1 %cmp10.i9.i.i.i
  br i1 %or.cond67.i10.i.i.i, label %land.rhs13.i13.i.i.i, label %lor.rhs.i11.i.i.i.dc_fixpt_add.exit.i.i44.i_crit_edge

lor.rhs.i11.i.i.i.dc_fixpt_add.exit.i.i44.i_crit_edge: ; preds = %lor.rhs.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit.i.i44.i

land.rhs13.i13.i.i.i:                             ; preds = %lor.rhs.i11.i.i.i
  %.b65.i12.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !219
  br i1 %.b65.i12.i.i.i, label %land.rhs13.i13.i.i.i.if.then50.i15.i.i.i_crit_edge, label %if.then.i14.i.i.i, !prof !43

land.rhs13.i13.i.i.i.if.then50.i15.i.i.i_crit_edge: ; preds = %land.rhs13.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i15.i.i.i

if.then.i14.i.i.i:                                ; preds = %land.rhs13.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !219
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !219
  br label %if.then50.i15.i.i.i

if.then50.i15.i.i.i:                              ; preds = %if.then.i14.i.i.i, %land.rhs13.i13.i.i.i.if.then50.i15.i.i.i_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !219
  br label %dc_fixpt_add.exit.i.i44.i

dc_fixpt_add.exit.i.i44.i:                        ; preds = %if.then50.i15.i.i.i, %lor.rhs.i11.i.i.i.dc_fixpt_add.exit.i.i44.i_crit_edge, %dc_fixpt_sub.exit.i.i42.i.dc_fixpt_add.exit.i.i44.i_crit_edge
  %add.i16.i.i.i = add i64 %x.sroa.0.0.copyload70.i.i.i, %c.sroa.0.0.copyload.i.i.i
  %202 = ptrtoint ptr %rgb.02.i.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %add.i16.i.i.i, ptr %rgb.02.i.i, align 8
  br label %compute_hlg_oetf.exit.i.i

compute_hlg_oetf.exit.i.i:                        ; preds = %dc_fixpt_add.exit.i.i44.i, %dc_fixpt_pow.exit.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaling_factor.i.i17.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i19.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp16.i.i.i) #8
  %g.i45.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i.i, i32 0, i32 1
  %203 = ptrtoint ptr %rgb.02.i.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %rgb.02.i.i, align 8
  %205 = ptrtoint ptr %g.i45.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %g.i45.i, align 8
  %b.i46.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i.i, i32 0, i32 2
  %206 = ptrtoint ptr %b.i46.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %204, ptr %b.i46.i, align 8
  %incdec.ptr.i47.i = getelementptr %struct.hw_x_point, ptr %coord_x.04.i.i, i32 1
  %incdec.ptr3.i.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb.02.i.i, i32 1
  %inc.i48.i = add nuw nsw i32 %i.01.i.i, 1
  %cmp.not.i.i = icmp eq i32 %inc.i48.i, 513
  br i1 %cmp.not.i.i, label %compute_hlg_oetf.exit.i.i.calculate_curve.exit_crit_edge, label %compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge

compute_hlg_oetf.exit.i.i.while.body.i.i_crit_edge: ; preds = %compute_hlg_oetf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

compute_hlg_oetf.exit.i.i.calculate_curve.exit_crit_edge: ; preds = %compute_hlg_oetf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_curve.exit

if.else29.i:                                      ; preds = %land.lhs.true19.i.if.else29.i_crit_edge, %land.lhs.true.i.if.else29.i_crit_edge, %if.end76.if.else29.i_crit_edge
  %end_exponent30.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 3
  %207 = ptrtoint ptr %end_exponent30.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %end_exponent30.i, align 8
  %x_point_at_y1_red31.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 4
  %208 = ptrtoint ptr %x_point_at_y1_red31.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 1, ptr %x_point_at_y1_red31.i, align 2
  %x_point_at_y1_green32.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 5
  %209 = ptrtoint ptr %x_point_at_y1_green32.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 1, ptr %x_point_at_y1_green32.i, align 4
  %x_point_at_y1_blue33.i = getelementptr inbounds %struct.dc_transfer_func, ptr %output_tf, i32 0, i32 4, i32 0, i32 6
  %210 = ptrtoint ptr %x_point_at_y1_blue33.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 1, ptr %x_point_at_y1_blue33.i, align 2
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 136, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else29.i.build_regamma.exit.i_crit_edge, label %if.end.i52.i

if.else29.i.build_regamma.exit.i_crit_edge:       ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_regamma.exit.i

if.end.i52.i:                                     ; preds = %if.else29.i
  %call1.i51.i = call fastcc zeroext i1 @build_coefficients(ptr noundef nonnull %call.i.i.i.i, i32 noundef %34) #8
  br i1 %call1.i51.i, label %if.end3.i.i, label %if.end.i52.i.build_regamma.exit.i_crit_edge

if.end.i52.i.build_regamma.exit.i_crit_edge:      ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_regamma.exit.i

if.end3.i.i:                                      ; preds = %if.end.i52.i
  %buffer.i.i = getelementptr inbounds %struct.calculate_buffer, ptr %cal_buffer, i32 0, i32 1
  %211 = call ptr @memset(ptr %buffer.i.i, i32 0, i32 128)
  %212 = ptrtoint ptr %cal_buffer to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %cal_buffer, align 8
  %213 = getelementptr inbounds i8, ptr %scratch_gamma_args.i.i49.i, i32 48
  %a0.i.i53.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i49.i, i32 0, i32 1
  %a1.i.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i49.i, i32 0, i32 2
  %arrayidx4.i.i.i = getelementptr %struct.gamma_coefficients, ptr %call.i.i.i.i, i32 0, i32 1, i32 0
  %a2.i.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i49.i, i32 0, i32 3
  %arrayidx6.i.i54.i = getelementptr %struct.gamma_coefficients, ptr %call.i.i.i.i, i32 0, i32 2, i32 0
  %a3.i.i.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i49.i, i32 0, i32 4
  %arrayidx8.i.i.i = getelementptr %struct.gamma_coefficients, ptr %call.i.i.i.i, i32 0, i32 3, i32 0
  %gamma.i.i55.i = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %scratch_gamma_args.i.i49.i, i32 0, i32 5
  %arrayidx9.i.i.i = getelementptr %struct.gamma_coefficients, ptr %call.i.i.i.i, i32 0, i32 4, i32 0
  br label %while.body.i65.i

while.body.i65.i:                                 ; preds = %while.body.i65.i.while.body.i65.i_crit_edge, %if.end3.i.i
  %coord_x.03.i.i = phi ptr [ @coordinates_x, %if.end3.i.i ], [ %incdec.ptr.i62.i, %while.body.i65.i.while.body.i65.i_crit_edge ]
  %rgb.02.i56.i = phi ptr [ %call.i.i.i205, %if.end3.i.i ], [ %incdec.ptr6.i.i, %while.body.i65.i.while.body.i65.i_crit_edge ]
  %i.01.i57.i = phi i32 [ 0, %if.end3.i.i ], [ %inc.i63.i, %while.body.i65.i.while.body.i65.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i50.i) #8
  %x.i58.i = getelementptr inbounds %struct.hw_x_point, ptr %coord_x.03.i.i, i32 0, i32 1
  %214 = ptrtoint ptr %x.i58.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %.unpack.i59.i = load i64, ptr %x.i58.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i49.i) #8, !noalias !222
  %215 = ptrtoint ptr %213 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 -1, ptr %213, align 8, !noalias !222, !annotation !44
  %216 = ptrtoint ptr %scratch_gamma_args.i.i49.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %.unpack.i59.i, ptr %scratch_gamma_args.i.i49.i, align 8, !noalias !222
  %217 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %call.i.i.i.i, align 8, !noalias !222
  %219 = ptrtoint ptr %a0.i.i53.i to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 %218, ptr %a0.i.i53.i, align 8, !noalias !222
  %220 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx4.i.i.i, align 8, !noalias !222
  %222 = ptrtoint ptr %a1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %221, ptr %a1.i.i.i, align 8, !noalias !222
  %223 = ptrtoint ptr %arrayidx6.i.i54.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %arrayidx6.i.i54.i, align 8, !noalias !222
  %225 = ptrtoint ptr %a2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %224, ptr %a2.i.i.i, align 8, !noalias !222
  %226 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx8.i.i.i, align 8, !noalias !222
  %228 = ptrtoint ptr %a3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %a3.i.i.i, align 8, !noalias !222
  %229 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx9.i.i.i, align 8, !noalias !222
  %231 = ptrtoint ptr %gamma.i.i55.i to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %230, ptr %gamma.i.i55.i, align 8, !noalias !222
  store ptr %cal_buffer, ptr %213, align 8, !noalias !222
  call fastcc void @translate_from_linear_space(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i50.i, ptr noundef nonnull %scratch_gamma_args.i.i49.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %scratch_gamma_args.i.i49.i) #8, !noalias !222
  %232 = ptrtoint ptr %tmp.i50.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %tmp.i50.i, align 8
  %234 = ptrtoint ptr %rgb.02.i56.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %rgb.02.i56.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i50.i) #8
  %g.i60.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i56.i, i32 0, i32 1
  %235 = ptrtoint ptr %g.i60.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %233, ptr %g.i60.i, align 8
  %b.i61.i = getelementptr inbounds %struct.pwl_float_data_ex, ptr %rgb.02.i56.i, i32 0, i32 2
  %236 = ptrtoint ptr %b.i61.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %233, ptr %b.i61.i, align 8
  %incdec.ptr.i62.i = getelementptr %struct.hw_x_point, ptr %coord_x.03.i.i, i32 1
  %incdec.ptr6.i.i = getelementptr %struct.pwl_float_data_ex, ptr %rgb.02.i56.i, i32 1
  %inc.i63.i = add nuw nsw i32 %i.01.i57.i, 1
  %exitcond.not.i64.i = icmp eq i32 %inc.i63.i, 513
  br i1 %exitcond.not.i64.i, label %while.end.i.i, label %while.body.i65.i.while.body.i65.i_crit_edge

while.body.i65.i.while.body.i65.i_crit_edge:      ; preds = %while.body.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i65.i

while.end.i.i:                                    ; preds = %while.body.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %cal_buffer to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 -1, ptr %cal_buffer, align 8
  br label %build_regamma.exit.i

build_regamma.exit.i:                             ; preds = %while.end.i.i, %if.end.i52.i.build_regamma.exit.i_crit_edge, %if.else29.i.build_regamma.exit.i_crit_edge
  call void @kvfree(ptr noundef %call.i.i.i.i) #8
  br label %calculate_curve.exit

calculate_curve.exit:                             ; preds = %build_regamma.exit.i, %compute_hlg_oetf.exit.i.i.calculate_curve.exit_crit_edge, %build_freesync_hdr.exit.i, %build_pq.exit.i, %for.body.i.calculate_curve.exit_crit_edge
  %238 = ptrtoint ptr %tf77 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tf77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %239)
  %cmp83 = icmp ne i32 %239, 7
  %cmp86.not = icmp eq ptr %fs_params, null
  %or.cond198 = or i1 %cmp86.not, %cmp83
  br i1 %or.cond198, label %calculate_curve.exit.land.end_crit_edge, label %land.rhs

calculate_curve.exit.land.end_crit_edge:          ; preds = %calculate_curve.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %calculate_curve.exit
  call void @__sanitizer_cov_trace_pc() #10
  %skip_tm = getelementptr inbounds %struct.hdr_tm_params, ptr %fs_params, i32 0, i32 5
  %240 = ptrtoint ptr %skip_tm to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %skip_tm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp88 = icmp ne i32 %241, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %calculate_curve.exit.land.end_crit_edge
  %242 = phi i1 [ true, %calculate_curve.exit.land.end_crit_edge ], [ %cmp88, %land.rhs ]
  br i1 %mapUserRamp, label %land.rhs99, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.end
  br i1 %tobool30.not280, label %lor.lhs.false93.while.body.i265_crit_edge, label %land.lhs.true95

lor.lhs.false93.while.body.i265_crit_edge:        ; preds = %lor.lhs.false93
  br label %while.body.i265

land.lhs.true95:                                  ; preds = %lor.lhs.false93
  %type96 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %243 = ptrtoint ptr %type96 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %type96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp97.not = icmp eq i32 %244, 1
  br i1 %cmp97.not, label %land.lhs.true95.while.body.i_crit_edge, label %land.lhs.true95.land.rhs101_crit_edge

land.lhs.true95.land.rhs101_crit_edge:            ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs101

land.lhs.true95.while.body.i_crit_edge:           ; preds = %land.lhs.true95
  br label %while.body.i

land.rhs99:                                       ; preds = %land.end
  br i1 %tobool30.not280, label %land.rhs99.while.body.i238_crit_edge, label %land.rhs99.land.rhs101_crit_edge

land.rhs99.land.rhs101_crit_edge:                 ; preds = %land.rhs99
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs101

land.rhs99.while.body.i238_crit_edge:             ; preds = %land.rhs99
  br label %while.body.i238

land.rhs101:                                      ; preds = %land.rhs99.land.rhs101_crit_edge, %land.lhs.true95.land.rhs101_crit_edge
  %type102 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %245 = ptrtoint ptr %type102 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %type102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %246)
  %cmp103 = icmp ne i32 %246, 3
  call fastcc void @map_regamma_hw_to_x_user(ptr noundef %ramp, ptr noundef nonnull %call.i.i.i208, ptr noundef %rgb_user.0, ptr noundef %axis_x.0, ptr noundef nonnull %call.i.i.i205, ptr noundef %0, i1 noundef zeroext %cmp103, i1 noundef zeroext %242)
  br label %land.lhs.true110

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %land.lhs.true95.while.body.i_crit_edge
  %regamma.014.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call.i.i.i205, %land.lhs.true95.while.body.i_crit_edge ]
  %i.013.i = phi i32 [ %inc.i219, %while.body.i.while.body.i_crit_edge ], [ 0, %land.lhs.true95.while.body.i_crit_edge ]
  %arrayidx.i216 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.013.i
  %247 = ptrtoint ptr %regamma.014.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %regamma.014.i, align 8
  %249 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %arrayidx.i216, align 8
  %arrayidx3.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.013.i
  %g.i217 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i, i32 0, i32 1
  %250 = ptrtoint ptr %g.i217 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %g.i217, align 8
  %252 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.013.i
  %b.i218 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i, i32 0, i32 2
  %253 = ptrtoint ptr %b.i218 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %b.i218, align 8
  %255 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %254, ptr %arrayidx4.i, align 8
  %incdec.ptr.i = getelementptr %struct.pwl_float_data_ex, ptr %regamma.014.i, i32 1
  %inc.i219 = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i220 = icmp eq i32 %inc.i219, 513
  br i1 %exitcond.not.i220, label %if.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i
  br i1 %242, label %if.end.i.while.body.i7.i_crit_edge, label %if.end.i.land.lhs.true110_crit_edge

if.end.i.land.lhs.true110_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true110

if.end.i.while.body.i7.i_crit_edge:               ; preds = %if.end.i
  br label %while.body.i7.i

while.body.i7.i:                                  ; preds = %while.body.i7.i.while.body.i7.i_crit_edge, %if.end.i.while.body.i7.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i6.i, %while.body.i7.i.while.body.i7.i_crit_edge ], [ 0, %if.end.i.while.body.i7.i_crit_edge ]
  %arrayidx.i5.i = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.010.i.i
  %256 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %.unpack.i.i221 = load i64, ptr %arrayidx.i5.i, align 8
  %257 = call i64 @llvm.smin.i64(i64 %.unpack.i.i221, i64 4294967296) #8
  %258 = call i64 @llvm.smax.i64(i64 %257, i64 0) #8
  %259 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %arrayidx.i5.i, align 8
  %arrayidx3.i.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.010.i.i
  %260 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %.unpack2.i.i = load i64, ptr %arrayidx3.i.i, align 8
  %261 = call i64 @llvm.smin.i64(i64 %.unpack2.i.i, i64 4294967296) #8
  %262 = call i64 @llvm.smax.i64(i64 %261, i64 0) #8
  %263 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %262, ptr %arrayidx3.i.i, align 8
  %arrayidx8.i.i = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.010.i.i
  %264 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %.unpack4.i.i222 = load i64, ptr %arrayidx8.i.i, align 8
  %265 = call i64 @llvm.smin.i64(i64 %.unpack4.i.i222, i64 4294967296) #8
  %266 = call i64 @llvm.smax.i64(i64 %265, i64 0) #8
  %267 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %266, ptr %arrayidx8.i.i, align 8
  %inc.i6.i = add nuw nsw i32 %i.010.i.i, 1
  %cmp.not.i.i223 = icmp eq i32 %inc.i6.i, 513
  br i1 %cmp.not.i.i223, label %while.body.i7.i.land.lhs.true110_crit_edge, label %while.body.i7.i.while.body.i7.i_crit_edge

while.body.i7.i.while.body.i7.i_crit_edge:        ; preds = %while.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7.i

while.body.i7.i.land.lhs.true110_crit_edge:       ; preds = %while.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true110

land.lhs.true110:                                 ; preds = %while.body.i7.i.land.lhs.true110_crit_edge, %if.end.i.land.lhs.true110_crit_edge, %land.rhs101
  %type111 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 1
  %268 = ptrtoint ptr %type111 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %type111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %269)
  %cmp112 = icmp eq i32 %269, 3
  br i1 %cmp112, label %if.then114, label %land.lhs.true110.if.end116_crit_edge

land.lhs.true110.if.end116_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then114:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @apply_lut_1d(ptr noundef nonnull %ramp, ptr noundef %0)
  br label %if.end116

while.body.i238:                                  ; preds = %while.body.i238.while.body.i238_crit_edge, %land.rhs99.while.body.i238_crit_edge
  %regamma.014.i228 = phi ptr [ %incdec.ptr.i235, %while.body.i238.while.body.i238_crit_edge ], [ %call.i.i.i205, %land.rhs99.while.body.i238_crit_edge ]
  %i.013.i229 = phi i32 [ %inc.i236, %while.body.i238.while.body.i238_crit_edge ], [ 0, %land.rhs99.while.body.i238_crit_edge ]
  %arrayidx.i230 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.013.i229
  %270 = ptrtoint ptr %regamma.014.i228 to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %regamma.014.i228, align 8
  %272 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 %271, ptr %arrayidx.i230, align 8
  %arrayidx3.i231 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.013.i229
  %g.i232 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i228, i32 0, i32 1
  %273 = ptrtoint ptr %g.i232 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %g.i232, align 8
  %275 = ptrtoint ptr %arrayidx3.i231 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %274, ptr %arrayidx3.i231, align 8
  %arrayidx4.i233 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.013.i229
  %b.i234 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i228, i32 0, i32 2
  %276 = ptrtoint ptr %b.i234 to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %b.i234, align 8
  %278 = ptrtoint ptr %arrayidx4.i233 to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %277, ptr %arrayidx4.i233, align 8
  %incdec.ptr.i235 = getelementptr %struct.pwl_float_data_ex, ptr %regamma.014.i228, i32 1
  %inc.i236 = add nuw nsw i32 %i.013.i229, 1
  %exitcond.not.i237 = icmp eq i32 %inc.i236, 513
  br i1 %exitcond.not.i237, label %if.end.i239, label %while.body.i238.while.body.i238_crit_edge

while.body.i238.while.body.i238_crit_edge:        ; preds = %while.body.i238
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i238

if.end.i239:                                      ; preds = %while.body.i238
  br i1 %242, label %if.end.i239.while.body.i7.i249_crit_edge, label %if.end.i239.if.end116_crit_edge

if.end.i239.if.end116_crit_edge:                  ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end.i239.while.body.i7.i249_crit_edge:         ; preds = %if.end.i239
  br label %while.body.i7.i249

while.body.i7.i249:                               ; preds = %while.body.i7.i249.while.body.i7.i249_crit_edge, %if.end.i239.while.body.i7.i249_crit_edge
  %i.010.i.i240 = phi i32 [ %inc.i6.i247, %while.body.i7.i249.while.body.i7.i249_crit_edge ], [ 0, %if.end.i239.while.body.i7.i249_crit_edge ]
  %arrayidx.i5.i241 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.010.i.i240
  %279 = ptrtoint ptr %arrayidx.i5.i241 to i32
  call void @__asan_load8_noabort(i32 %279)
  %.unpack.i.i242 = load i64, ptr %arrayidx.i5.i241, align 8
  %280 = call i64 @llvm.smin.i64(i64 %.unpack.i.i242, i64 4294967296) #8
  %281 = call i64 @llvm.smax.i64(i64 %280, i64 0) #8
  %282 = ptrtoint ptr %arrayidx.i5.i241 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %281, ptr %arrayidx.i5.i241, align 8
  %arrayidx3.i.i243 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.010.i.i240
  %283 = ptrtoint ptr %arrayidx3.i.i243 to i32
  call void @__asan_load8_noabort(i32 %283)
  %.unpack2.i.i244 = load i64, ptr %arrayidx3.i.i243, align 8
  %284 = call i64 @llvm.smin.i64(i64 %.unpack2.i.i244, i64 4294967296) #8
  %285 = call i64 @llvm.smax.i64(i64 %284, i64 0) #8
  %286 = ptrtoint ptr %arrayidx3.i.i243 to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %285, ptr %arrayidx3.i.i243, align 8
  %arrayidx8.i.i245 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.010.i.i240
  %287 = ptrtoint ptr %arrayidx8.i.i245 to i32
  call void @__asan_load8_noabort(i32 %287)
  %.unpack4.i.i246 = load i64, ptr %arrayidx8.i.i245, align 8
  %288 = call i64 @llvm.smin.i64(i64 %.unpack4.i.i246, i64 4294967296) #8
  %289 = call i64 @llvm.smax.i64(i64 %288, i64 0) #8
  %290 = ptrtoint ptr %arrayidx8.i.i245 to i32
  call void @__asan_store8_noabort(i32 %290)
  store i64 %289, ptr %arrayidx8.i.i245, align 8
  %inc.i6.i247 = add nuw nsw i32 %i.010.i.i240, 1
  %cmp.not.i.i248 = icmp eq i32 %inc.i6.i247, 513
  br i1 %cmp.not.i.i248, label %while.body.i7.i249.if.end116_crit_edge, label %while.body.i7.i249.while.body.i7.i249_crit_edge

while.body.i7.i249.while.body.i7.i249_crit_edge:  ; preds = %while.body.i7.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7.i249

while.body.i7.i249.if.end116_crit_edge:           ; preds = %while.body.i7.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

while.body.i265:                                  ; preds = %while.body.i265.while.body.i265_crit_edge, %lor.lhs.false93.while.body.i265_crit_edge
  %regamma.014.i255 = phi ptr [ %incdec.ptr.i262, %while.body.i265.while.body.i265_crit_edge ], [ %call.i.i.i205, %lor.lhs.false93.while.body.i265_crit_edge ]
  %i.013.i256 = phi i32 [ %inc.i263, %while.body.i265.while.body.i265_crit_edge ], [ 0, %lor.lhs.false93.while.body.i265_crit_edge ]
  %arrayidx.i257 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.013.i256
  %291 = ptrtoint ptr %regamma.014.i255 to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %regamma.014.i255, align 8
  %293 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %292, ptr %arrayidx.i257, align 8
  %arrayidx3.i258 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.013.i256
  %g.i259 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i255, i32 0, i32 1
  %294 = ptrtoint ptr %g.i259 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %g.i259, align 8
  %296 = ptrtoint ptr %arrayidx3.i258 to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %295, ptr %arrayidx3.i258, align 8
  %arrayidx4.i260 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.013.i256
  %b.i261 = getelementptr inbounds %struct.pwl_float_data_ex, ptr %regamma.014.i255, i32 0, i32 2
  %297 = ptrtoint ptr %b.i261 to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %b.i261, align 8
  %299 = ptrtoint ptr %arrayidx4.i260 to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %298, ptr %arrayidx4.i260, align 8
  %incdec.ptr.i262 = getelementptr %struct.pwl_float_data_ex, ptr %regamma.014.i255, i32 1
  %inc.i263 = add nuw nsw i32 %i.013.i256, 1
  %exitcond.not.i264 = icmp eq i32 %inc.i263, 513
  br i1 %exitcond.not.i264, label %if.end.i266, label %while.body.i265.while.body.i265_crit_edge

while.body.i265.while.body.i265_crit_edge:        ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i265

if.end.i266:                                      ; preds = %while.body.i265
  br i1 %242, label %if.end.i266.while.body.i7.i276_crit_edge, label %if.end.i266.if.end116_crit_edge

if.end.i266.if.end116_crit_edge:                  ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end.i266.while.body.i7.i276_crit_edge:         ; preds = %if.end.i266
  br label %while.body.i7.i276

while.body.i7.i276:                               ; preds = %while.body.i7.i276.while.body.i7.i276_crit_edge, %if.end.i266.while.body.i7.i276_crit_edge
  %i.010.i.i267 = phi i32 [ %inc.i6.i274, %while.body.i7.i276.while.body.i7.i276_crit_edge ], [ 0, %if.end.i266.while.body.i7.i276_crit_edge ]
  %arrayidx.i5.i268 = getelementptr [1025 x %struct.fixed31_32], ptr %0, i32 0, i32 %i.010.i.i267
  %300 = ptrtoint ptr %arrayidx.i5.i268 to i32
  call void @__asan_load8_noabort(i32 %300)
  %.unpack.i.i269 = load i64, ptr %arrayidx.i5.i268, align 8
  %301 = call i64 @llvm.smin.i64(i64 %.unpack.i.i269, i64 4294967296) #8
  %302 = call i64 @llvm.smax.i64(i64 %301, i64 0) #8
  %303 = ptrtoint ptr %arrayidx.i5.i268 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %302, ptr %arrayidx.i5.i268, align 8
  %arrayidx3.i.i270 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 1, i32 %i.010.i.i267
  %304 = ptrtoint ptr %arrayidx3.i.i270 to i32
  call void @__asan_load8_noabort(i32 %304)
  %.unpack2.i.i271 = load i64, ptr %arrayidx3.i.i270, align 8
  %305 = call i64 @llvm.smin.i64(i64 %.unpack2.i.i271, i64 4294967296) #8
  %306 = call i64 @llvm.smax.i64(i64 %305, i64 0) #8
  %307 = ptrtoint ptr %arrayidx3.i.i270 to i32
  call void @__asan_store8_noabort(i32 %307)
  store i64 %306, ptr %arrayidx3.i.i270, align 8
  %arrayidx8.i.i272 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %0, i32 0, i32 2, i32 %i.010.i.i267
  %308 = ptrtoint ptr %arrayidx8.i.i272 to i32
  call void @__asan_load8_noabort(i32 %308)
  %.unpack4.i.i273 = load i64, ptr %arrayidx8.i.i272, align 8
  %309 = call i64 @llvm.smin.i64(i64 %.unpack4.i.i273, i64 4294967296) #8
  %310 = call i64 @llvm.smax.i64(i64 %309, i64 0) #8
  %311 = ptrtoint ptr %arrayidx8.i.i272 to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 %310, ptr %arrayidx8.i.i272, align 8
  %inc.i6.i274 = add nuw nsw i32 %i.010.i.i267, 1
  %cmp.not.i.i275 = icmp eq i32 %inc.i6.i274, 513
  br i1 %cmp.not.i.i275, label %while.body.i7.i276.if.end116_crit_edge, label %while.body.i7.i276.while.body.i7.i276_crit_edge

while.body.i7.i276.while.body.i7.i276_crit_edge:  ; preds = %while.body.i7.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7.i276

while.body.i7.i276.if.end116_crit_edge:           ; preds = %while.body.i7.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end116:                                        ; preds = %while.body.i7.i276.if.end116_crit_edge, %if.end.i266.if.end116_crit_edge, %while.body.i7.i249.if.end116_crit_edge, %if.end.i239.if.end116_crit_edge, %if.then114, %land.lhs.true110.if.end116_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i208) #8
  br label %coeff_alloc_fail

coeff_alloc_fail:                                 ; preds = %if.end116, %if.end72.coeff_alloc_fail_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i205) #8
  br label %rgb_regamma_alloc_fail

rgb_regamma_alloc_fail:                           ; preds = %coeff_alloc_fail, %if.end68.rgb_regamma_alloc_fail_crit_edge
  %ret.1.off0 = phi i1 [ %tobool74, %coeff_alloc_fail ], [ false, %if.end68.rgb_regamma_alloc_fail_crit_edge ]
  call void @kvfree(ptr noundef %axis_x.0) #8
  br label %axis_x_alloc_fail

axis_x_alloc_fail:                                ; preds = %rgb_regamma_alloc_fail, %kvcalloc.exit204.axis_x_alloc_fail_crit_edge, %if.end45.axis_x_alloc_fail_crit_edge
  %rgb_user.1 = phi ptr [ %rgb_user.0, %rgb_regamma_alloc_fail ], [ %call.i.i.i, %kvcalloc.exit204.axis_x_alloc_fail_crit_edge ], [ %call.i.i.i, %if.end45.axis_x_alloc_fail_crit_edge ]
  %ret.2.off0 = phi i1 [ %ret.1.off0, %rgb_regamma_alloc_fail ], [ false, %kvcalloc.exit204.axis_x_alloc_fail_crit_edge ], [ false, %if.end45.axis_x_alloc_fail_crit_edge ]
  call void @kvfree(ptr noundef %rgb_user.1) #8
  br label %cleanup

cleanup:                                          ; preds = %axis_x_alloc_fail, %kvcalloc.exit.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then10.cleanup_crit_edge ], [ true, %land.lhs.true22.cleanup_crit_edge ], [ true, %land.lhs.true17.cleanup_crit_edge ], [ %ret.2.off0, %axis_x_alloc_fail ], [ false, %kvcalloc.exit.cleanup_crit_edge ], [ false, %if.then42.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scale_gamma_dx(ptr nocapture noundef %pwl_rgb, ptr nocapture noundef readonly %ramp) unnamed_addr #0 align 64 {
entry:
  %tmp71 = alloca %struct.fixed31_32, align 8
  %tmp80 = alloca %struct.fixed31_32, align 8
  %tmp90 = alloca %struct.fixed31_32, align 8
  %agg.tmp105 = alloca %struct.fixed31_32, align 8
  %agg.tmp117 = alloca %struct.fixed31_32, align 8
  %agg.tmp130 = alloca %struct.fixed31_32, align 8
  %agg.tmp144 = alloca %struct.fixed31_32, align 8
  %agg.tmp157 = alloca %struct.fixed31_32, align 8
  %agg.tmp170 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 2
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp174.not = icmp eq i32 %1, 0
  br i1 %cmp174.not, label %entry.if.end62_crit_edge, label %for.body.lr.ph

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

for.body.lr.ph:                                   ; preds = %entry
  %entries = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %max.sroa.0.0177 = phi i64 [ 4294967296, %for.body.lr.ph ], [ %10, %for.body.for.body_crit_edge ]
  %min.sroa.0.0176 = phi i64 [ 0, %for.body.lr.ph ], [ %7, %for.body.for.body_crit_edge ]
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4096 x %struct.fixed31_32], ptr %entries, i32 0, i32 %i.0175
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack15 = load i64, ptr %arrayidx, align 8
  %3 = tail call i64 @llvm.smin.i64(i64 %.unpack15, i64 %min.sroa.0.0176)
  %arrayidx6 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %i.0175
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack16 = load i64, ptr %arrayidx6, align 8
  %5 = tail call i64 @llvm.smin.i64(i64 %.unpack16, i64 %3)
  %arrayidx16 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %i.0175
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack17 = load i64, ptr %arrayidx16, align 8
  %7 = tail call i64 @llvm.smin.i64(i64 %.unpack17, i64 %5)
  %8 = tail call i64 @llvm.smax.i64(i64 %max.sroa.0.0177, i64 %.unpack15)
  %9 = tail call i64 @llvm.smax.i64(i64 %8, i64 %.unpack16)
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 %.unpack17)
  %inc = add nuw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i26 = icmp slt i64 %7, 0
  br i1 %cmp.i26, label %lor.rhs.i, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.end62:                                         ; preds = %for.end.if.end62_crit_edge, %entry.if.end62_crit_edge
  %max.sroa.0.0.lcssa191 = phi i64 [ %10, %for.end.if.end62_crit_edge ], [ 4294967296, %entry.if.end62_crit_edge ]
  %min.sroa.0.0.lcssa188 = phi i64 [ %7, %for.end.if.end62_crit_edge ], [ 0, %entry.if.end62_crit_edge ]
  %sub.i28 = sub nuw nsw i64 9223372036854775807, %min.sroa.0.0.lcssa188
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i28, i64 %max.sroa.0.0.lcssa191)
  %cmp4.not.i = icmp slt i64 %sub.i28, %max.sroa.0.0.lcssa191
  br i1 %cmp4.not.i, label %land.rhs13.i, label %if.end62.dc_fixpt_add.exit_crit_edge

if.end62.dc_fixpt_add.exit_crit_edge:             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 0, %7
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %if.end62
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !225
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !225
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !225
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !225
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %lor.rhs.i, %if.end62.dc_fixpt_add.exit_crit_edge
  %max.sroa.0.0.lcssa189 = phi i64 [ %max.sroa.0.0.lcssa191, %if.end62.dc_fixpt_add.exit_crit_edge ], [ %10, %lor.rhs.i ], [ %max.sroa.0.0.lcssa191, %if.then50.i ]
  %min.sroa.0.0.lcssa186 = phi i64 [ %min.sroa.0.0.lcssa188, %if.end62.dc_fixpt_add.exit_crit_edge ], [ %7, %lor.rhs.i ], [ %min.sroa.0.0.lcssa188, %if.then50.i ]
  %delta.sroa.0.0166 = phi i64 [ 0, %if.end62.dc_fixpt_add.exit_crit_edge ], [ %sub.i, %lor.rhs.i ], [ 0, %if.then50.i ]
  %add.i = add i64 %max.sroa.0.0.lcssa189, %min.sroa.0.0.lcssa186
  %11 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp68179.not = icmp eq i32 %12, 0
  br i1 %cmp68179.not, label %dc_fixpt_add.exit.for.end101_crit_edge, label %for.body69.lr.ph

dc_fixpt_add.exit.for.end101_crit_edge:           ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.body69.lr.ph:                                 ; preds = %dc_fixpt_add.exit
  %entries72 = getelementptr inbounds %struct.dc_gamma, ptr %ramp, i32 0, i32 3
  br label %for.body69

for.body69:                                       ; preds = %dc_fixpt_add.exit73.for.body69_crit_edge, %for.body69.lr.ph
  %i.1180 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc100, %dc_fixpt_add.exit73.for.body69_crit_edge ]
  %arrayidx70 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1180
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp71) #8
  %arrayidx74 = getelementptr [4096 x %struct.fixed31_32], ptr %entries72, i32 0, i32 %i.1180
  %13 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack12 = load i64, ptr %arrayidx74, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack12)
  %cmp.i29 = icmp slt i64 %.unpack12, 0
  %sub.i30 = sub i64 9223372036854775807, %.unpack12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i30, i64 %delta.sroa.0.0166)
  %cmp4.not.i31 = icmp slt i64 %sub.i30, %delta.sroa.0.0166
  %or.cond.i32 = select i1 %cmp.i29, i1 true, i1 %cmp4.not.i31
  br i1 %or.cond.i32, label %lor.rhs.i37, label %for.body69.dc_fixpt_add.exit43_crit_edge

for.body69.dc_fixpt_add.exit43_crit_edge:         ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit43

lor.rhs.i37:                                      ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack12)
  %cmp6.i33 = icmp sgt i64 %.unpack12, -1
  %sub8.i34 = sub i64 -9223372036854775808, %.unpack12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i34, i64 %delta.sroa.0.0166)
  %cmp10.i35 = icmp sgt i64 %sub8.i34, %delta.sroa.0.0166
  %or.cond67.i36 = select i1 %cmp6.i33, i1 true, i1 %cmp10.i35
  br i1 %or.cond67.i36, label %land.rhs13.i39, label %lor.rhs.i37.dc_fixpt_add.exit43_crit_edge

lor.rhs.i37.dc_fixpt_add.exit43_crit_edge:        ; preds = %lor.rhs.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit43

land.rhs13.i39:                                   ; preds = %lor.rhs.i37
  %.b65.i38 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !228
  br i1 %.b65.i38, label %land.rhs13.i39.if.then50.i41_crit_edge, label %if.then.i40, !prof !43

land.rhs13.i39.if.then50.i41_crit_edge:           ; preds = %land.rhs13.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i41

if.then.i40:                                      ; preds = %land.rhs13.i39
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !228
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !228
  br label %if.then50.i41

if.then50.i41:                                    ; preds = %if.then.i40, %land.rhs13.i39.if.then50.i41_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !228
  br label %dc_fixpt_add.exit43

dc_fixpt_add.exit43:                              ; preds = %if.then50.i41, %lor.rhs.i37.dc_fixpt_add.exit43_crit_edge, %for.body69.dc_fixpt_add.exit43_crit_edge
  %add.i42 = add i64 %.unpack12, %delta.sroa.0.0166
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp71, i64 noundef %add.i42, i64 noundef %add.i) #8
  %14 = ptrtoint ptr %tmp71 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp71, align 8
  %16 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx70, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp71) #8
  %g = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1180, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp80) #8
  %arrayidx84 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 1, i32 %i.1180
  %17 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.unpack13 = load i64, ptr %arrayidx84, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack13)
  %cmp.i44 = icmp slt i64 %.unpack13, 0
  %sub.i45 = sub i64 9223372036854775807, %.unpack13
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i45, i64 %delta.sroa.0.0166)
  %cmp4.not.i46 = icmp slt i64 %sub.i45, %delta.sroa.0.0166
  %or.cond.i47 = select i1 %cmp.i44, i1 true, i1 %cmp4.not.i46
  br i1 %or.cond.i47, label %lor.rhs.i52, label %dc_fixpt_add.exit43.dc_fixpt_add.exit58_crit_edge

dc_fixpt_add.exit43.dc_fixpt_add.exit58_crit_edge: ; preds = %dc_fixpt_add.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit58

lor.rhs.i52:                                      ; preds = %dc_fixpt_add.exit43
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack13)
  %cmp6.i48 = icmp sgt i64 %.unpack13, -1
  %sub8.i49 = sub i64 -9223372036854775808, %.unpack13
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i49, i64 %delta.sroa.0.0166)
  %cmp10.i50 = icmp sgt i64 %sub8.i49, %delta.sroa.0.0166
  %or.cond67.i51 = select i1 %cmp6.i48, i1 true, i1 %cmp10.i50
  br i1 %or.cond67.i51, label %land.rhs13.i54, label %lor.rhs.i52.dc_fixpt_add.exit58_crit_edge

lor.rhs.i52.dc_fixpt_add.exit58_crit_edge:        ; preds = %lor.rhs.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit58

land.rhs13.i54:                                   ; preds = %lor.rhs.i52
  %.b65.i53 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !231
  br i1 %.b65.i53, label %land.rhs13.i54.if.then50.i56_crit_edge, label %if.then.i55, !prof !43

land.rhs13.i54.if.then50.i56_crit_edge:           ; preds = %land.rhs13.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i56

if.then.i55:                                      ; preds = %land.rhs13.i54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !231
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !231
  br label %if.then50.i56

if.then50.i56:                                    ; preds = %if.then.i55, %land.rhs13.i54.if.then50.i56_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !231
  br label %dc_fixpt_add.exit58

dc_fixpt_add.exit58:                              ; preds = %if.then50.i56, %lor.rhs.i52.dc_fixpt_add.exit58_crit_edge, %dc_fixpt_add.exit43.dc_fixpt_add.exit58_crit_edge
  %add.i57 = add i64 %.unpack13, %delta.sroa.0.0166
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp80, i64 noundef %add.i57, i64 noundef %add.i) #8
  %18 = ptrtoint ptr %tmp80 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp80, align 8
  %20 = ptrtoint ptr %g to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %g, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp80) #8
  %b = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1180, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp90) #8
  %arrayidx94 = getelementptr %struct.dc_gamma, ptr %ramp, i32 0, i32 3, i32 2, i32 %i.1180
  %21 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.unpack14 = load i64, ptr %arrayidx94, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack14)
  %cmp.i59 = icmp slt i64 %.unpack14, 0
  %sub.i60 = sub i64 9223372036854775807, %.unpack14
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i60, i64 %delta.sroa.0.0166)
  %cmp4.not.i61 = icmp slt i64 %sub.i60, %delta.sroa.0.0166
  %or.cond.i62 = select i1 %cmp.i59, i1 true, i1 %cmp4.not.i61
  br i1 %or.cond.i62, label %lor.rhs.i67, label %dc_fixpt_add.exit58.dc_fixpt_add.exit73_crit_edge

dc_fixpt_add.exit58.dc_fixpt_add.exit73_crit_edge: ; preds = %dc_fixpt_add.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit73

lor.rhs.i67:                                      ; preds = %dc_fixpt_add.exit58
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack14)
  %cmp6.i63 = icmp sgt i64 %.unpack14, -1
  %sub8.i64 = sub i64 -9223372036854775808, %.unpack14
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i64, i64 %delta.sroa.0.0166)
  %cmp10.i65 = icmp sgt i64 %sub8.i64, %delta.sroa.0.0166
  %or.cond67.i66 = select i1 %cmp6.i63, i1 true, i1 %cmp10.i65
  br i1 %or.cond67.i66, label %land.rhs13.i69, label %lor.rhs.i67.dc_fixpt_add.exit73_crit_edge

lor.rhs.i67.dc_fixpt_add.exit73_crit_edge:        ; preds = %lor.rhs.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit73

land.rhs13.i69:                                   ; preds = %lor.rhs.i67
  %.b65.i68 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !234
  br i1 %.b65.i68, label %land.rhs13.i69.if.then50.i71_crit_edge, label %if.then.i70, !prof !43

land.rhs13.i69.if.then50.i71_crit_edge:           ; preds = %land.rhs13.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i71

if.then.i70:                                      ; preds = %land.rhs13.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !234
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !234
  br label %if.then50.i71

if.then50.i71:                                    ; preds = %if.then.i70, %land.rhs13.i69.if.then50.i71_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !234
  br label %dc_fixpt_add.exit73

dc_fixpt_add.exit73:                              ; preds = %if.then50.i71, %lor.rhs.i67.dc_fixpt_add.exit73_crit_edge, %dc_fixpt_add.exit58.dc_fixpt_add.exit73_crit_edge
  %add.i72 = add i64 %.unpack14, %delta.sroa.0.0166
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp90, i64 noundef %add.i72, i64 noundef %add.i) #8
  %22 = ptrtoint ptr %tmp90 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tmp90, align 8
  %24 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %b, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp90) #8
  %inc100 = add nuw i32 %i.1180, 1
  %25 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_entries, align 8
  %cmp68 = icmp ult i32 %inc100, %26
  br i1 %cmp68, label %dc_fixpt_add.exit73.for.body69_crit_edge, label %dc_fixpt_add.exit73.for.end101_crit_edge

dc_fixpt_add.exit73.for.end101_crit_edge:         ; preds = %dc_fixpt_add.exit73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

dc_fixpt_add.exit73.for.body69_crit_edge:         ; preds = %dc_fixpt_add.exit73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body69

for.end101:                                       ; preds = %dc_fixpt_add.exit73.for.end101_crit_edge, %dc_fixpt_add.exit.for.end101_crit_edge
  %i.1.lcssa = phi i32 [ 0, %dc_fixpt_add.exit.for.end101_crit_edge ], [ %inc100, %dc_fixpt_add.exit73.for.end101_crit_edge ]
  %arrayidx102 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1.lcssa
  %sub = add i32 %i.1.lcssa, -1
  %arrayidx106 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub
  %27 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load8_noabort(i32 %27)
  %.unpack = load i64, ptr %arrayidx106, align 8
  %28 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp105, [1 x i64] %28, [1 x i64] [i64 8589934592]) #8
  %sub109 = add i32 %i.1.lcssa, -2
  %arrayidx110 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub109
  %29 = ptrtoint ptr %agg.tmp105 to i32
  call void @__asan_load8_noabort(i32 %29)
  %.fca.0.load193 = load i64, ptr %agg.tmp105, align 8
  %30 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load8_noabort(i32 %30)
  %.unpack1 = load i64, ptr %arrayidx110, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack1)
  %cmp.i74 = icmp slt i64 %.unpack1, 0
  %add.i75 = xor i64 %.unpack1, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i75, i64 %.fca.0.load193)
  %cmp4.not.i76 = icmp sgt i64 %add.i75, %.fca.0.load193
  %or.cond.i77 = select i1 %cmp.i74, i1 true, i1 %cmp4.not.i76
  br i1 %or.cond.i77, label %lor.rhs.i81, label %for.end101.dc_fixpt_sub.exit_crit_edge

for.end101.dc_fixpt_sub.exit_crit_edge:           ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i81:                                      ; preds = %for.end101
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack1)
  %cmp6.i78 = icmp sgt i64 %.unpack1, -1
  %add8.i = add i64 %.unpack1, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %.fca.0.load193)
  %cmp10.i79 = icmp slt i64 %add8.i, %.fca.0.load193
  %or.cond67.i80 = select i1 %cmp6.i78, i1 true, i1 %cmp10.i79
  br i1 %or.cond67.i80, label %land.rhs13.i83, label %lor.rhs.i81.dc_fixpt_sub.exit_crit_edge

lor.rhs.i81.dc_fixpt_sub.exit_crit_edge:          ; preds = %lor.rhs.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i83:                                   ; preds = %lor.rhs.i81
  %.b65.i82 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !237
  br i1 %.b65.i82, label %land.rhs13.i83.if.then50.i85_crit_edge, label %if.then.i84, !prof !43

land.rhs13.i83.if.then50.i85_crit_edge:           ; preds = %land.rhs13.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i85

if.then.i84:                                      ; preds = %land.rhs13.i83
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !237
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !237
  br label %if.then50.i85

if.then50.i85:                                    ; preds = %if.then.i84, %land.rhs13.i83.if.then50.i85_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !237
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i85, %lor.rhs.i81.dc_fixpt_sub.exit_crit_edge, %for.end101.dc_fixpt_sub.exit_crit_edge
  %sub.i86 = sub i64 %.fca.0.load193, %.unpack1
  %31 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub.i86, ptr %arrayidx102, align 8
  %g115 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1.lcssa, i32 1
  %g120 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub, i32 1
  %32 = ptrtoint ptr %g120 to i32
  call void @__asan_load8_noabort(i32 %32)
  %.unpack2 = load i64, ptr %g120, align 8
  %33 = insertvalue [1 x i64] undef, i64 %.unpack2, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp117, [1 x i64] %33, [1 x i64] [i64 8589934592]) #8
  %g124 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub109, i32 1
  %34 = ptrtoint ptr %agg.tmp117 to i32
  call void @__asan_load8_noabort(i32 %34)
  %.fca.0.load190 = load i64, ptr %agg.tmp117, align 8
  %35 = ptrtoint ptr %g124 to i32
  call void @__asan_load8_noabort(i32 %35)
  %.unpack3 = load i64, ptr %g124, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack3)
  %cmp.i87 = icmp slt i64 %.unpack3, 0
  %add.i88 = xor i64 %.unpack3, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i88, i64 %.fca.0.load190)
  %cmp4.not.i89 = icmp sgt i64 %add.i88, %.fca.0.load190
  %or.cond.i90 = select i1 %cmp.i87, i1 true, i1 %cmp4.not.i89
  br i1 %or.cond.i90, label %lor.rhs.i95, label %dc_fixpt_sub.exit.dc_fixpt_sub.exit101_crit_edge

dc_fixpt_sub.exit.dc_fixpt_sub.exit101_crit_edge: ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit101

lor.rhs.i95:                                      ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack3)
  %cmp6.i91 = icmp sgt i64 %.unpack3, -1
  %add8.i92 = add i64 %.unpack3, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i92, i64 %.fca.0.load190)
  %cmp10.i93 = icmp slt i64 %add8.i92, %.fca.0.load190
  %or.cond67.i94 = select i1 %cmp6.i91, i1 true, i1 %cmp10.i93
  br i1 %or.cond67.i94, label %land.rhs13.i97, label %lor.rhs.i95.dc_fixpt_sub.exit101_crit_edge

lor.rhs.i95.dc_fixpt_sub.exit101_crit_edge:       ; preds = %lor.rhs.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit101

land.rhs13.i97:                                   ; preds = %lor.rhs.i95
  %.b65.i96 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !240
  br i1 %.b65.i96, label %land.rhs13.i97.if.then50.i99_crit_edge, label %if.then.i98, !prof !43

land.rhs13.i97.if.then50.i99_crit_edge:           ; preds = %land.rhs13.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i99

if.then.i98:                                      ; preds = %land.rhs13.i97
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !240
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !240
  br label %if.then50.i99

if.then50.i99:                                    ; preds = %if.then.i98, %land.rhs13.i97.if.then50.i99_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !240
  br label %dc_fixpt_sub.exit101

dc_fixpt_sub.exit101:                             ; preds = %if.then50.i99, %lor.rhs.i95.dc_fixpt_sub.exit101_crit_edge, %dc_fixpt_sub.exit.dc_fixpt_sub.exit101_crit_edge
  %sub.i100 = sub i64 %.fca.0.load190, %.unpack3
  %36 = ptrtoint ptr %g115 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub.i100, ptr %g115, align 8
  %b128 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %i.1.lcssa, i32 2
  %b133 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub, i32 2
  %37 = ptrtoint ptr %b133 to i32
  call void @__asan_load8_noabort(i32 %37)
  %.unpack4 = load i64, ptr %b133, align 8
  %38 = insertvalue [1 x i64] undef, i64 %.unpack4, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp130, [1 x i64] %38, [1 x i64] [i64 8589934592]) #8
  %b137 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %sub109, i32 2
  %39 = ptrtoint ptr %agg.tmp130 to i32
  call void @__asan_load8_noabort(i32 %39)
  %.fca.0.load187 = load i64, ptr %agg.tmp130, align 8
  %40 = ptrtoint ptr %b137 to i32
  call void @__asan_load8_noabort(i32 %40)
  %.unpack5 = load i64, ptr %b137, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack5)
  %cmp.i102 = icmp slt i64 %.unpack5, 0
  %add.i103 = xor i64 %.unpack5, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i103, i64 %.fca.0.load187)
  %cmp4.not.i104 = icmp sgt i64 %add.i103, %.fca.0.load187
  %or.cond.i105 = select i1 %cmp.i102, i1 true, i1 %cmp4.not.i104
  br i1 %or.cond.i105, label %lor.rhs.i110, label %dc_fixpt_sub.exit101.dc_fixpt_sub.exit116_crit_edge

dc_fixpt_sub.exit101.dc_fixpt_sub.exit116_crit_edge: ; preds = %dc_fixpt_sub.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit116

lor.rhs.i110:                                     ; preds = %dc_fixpt_sub.exit101
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack5)
  %cmp6.i106 = icmp sgt i64 %.unpack5, -1
  %add8.i107 = add i64 %.unpack5, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i107, i64 %.fca.0.load187)
  %cmp10.i108 = icmp slt i64 %add8.i107, %.fca.0.load187
  %or.cond67.i109 = select i1 %cmp6.i106, i1 true, i1 %cmp10.i108
  br i1 %or.cond67.i109, label %land.rhs13.i112, label %lor.rhs.i110.dc_fixpt_sub.exit116_crit_edge

lor.rhs.i110.dc_fixpt_sub.exit116_crit_edge:      ; preds = %lor.rhs.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit116

land.rhs13.i112:                                  ; preds = %lor.rhs.i110
  %.b65.i111 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !243
  br i1 %.b65.i111, label %land.rhs13.i112.if.then50.i114_crit_edge, label %if.then.i113, !prof !43

land.rhs13.i112.if.then50.i114_crit_edge:         ; preds = %land.rhs13.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i114

if.then.i113:                                     ; preds = %land.rhs13.i112
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !243
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !243
  br label %if.then50.i114

if.then50.i114:                                   ; preds = %if.then.i113, %land.rhs13.i112.if.then50.i114_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !243
  br label %dc_fixpt_sub.exit116

dc_fixpt_sub.exit116:                             ; preds = %if.then50.i114, %lor.rhs.i110.dc_fixpt_sub.exit116_crit_edge, %dc_fixpt_sub.exit101.dc_fixpt_sub.exit116_crit_edge
  %sub.i115 = sub i64 %.fca.0.load187, %.unpack5
  %41 = ptrtoint ptr %b128 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub.i115, ptr %b128, align 8
  %inc140 = add i32 %i.1.lcssa, 1
  %arrayidx141 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %inc140
  %42 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %42)
  %.unpack6 = load i64, ptr %arrayidx102, align 8
  %43 = insertvalue [1 x i64] undef, i64 %.unpack6, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp144, [1 x i64] %43, [1 x i64] [i64 8589934592]) #8
  %44 = ptrtoint ptr %agg.tmp144 to i32
  call void @__asan_load8_noabort(i32 %44)
  %.fca.0.load184 = load i64, ptr %agg.tmp144, align 8
  %45 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load8_noabort(i32 %45)
  %.unpack7 = load i64, ptr %arrayidx106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack7)
  %cmp.i117 = icmp slt i64 %.unpack7, 0
  %add.i118 = xor i64 %.unpack7, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i118, i64 %.fca.0.load184)
  %cmp4.not.i119 = icmp sgt i64 %add.i118, %.fca.0.load184
  %or.cond.i120 = select i1 %cmp.i117, i1 true, i1 %cmp4.not.i119
  br i1 %or.cond.i120, label %lor.rhs.i125, label %dc_fixpt_sub.exit116.dc_fixpt_sub.exit131_crit_edge

dc_fixpt_sub.exit116.dc_fixpt_sub.exit131_crit_edge: ; preds = %dc_fixpt_sub.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit131

lor.rhs.i125:                                     ; preds = %dc_fixpt_sub.exit116
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack7)
  %cmp6.i121 = icmp sgt i64 %.unpack7, -1
  %add8.i122 = add i64 %.unpack7, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i122, i64 %.fca.0.load184)
  %cmp10.i123 = icmp slt i64 %add8.i122, %.fca.0.load184
  %or.cond67.i124 = select i1 %cmp6.i121, i1 true, i1 %cmp10.i123
  br i1 %or.cond67.i124, label %land.rhs13.i127, label %lor.rhs.i125.dc_fixpt_sub.exit131_crit_edge

lor.rhs.i125.dc_fixpt_sub.exit131_crit_edge:      ; preds = %lor.rhs.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit131

land.rhs13.i127:                                  ; preds = %lor.rhs.i125
  %.b65.i126 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !246
  br i1 %.b65.i126, label %land.rhs13.i127.if.then50.i129_crit_edge, label %if.then.i128, !prof !43

land.rhs13.i127.if.then50.i129_crit_edge:         ; preds = %land.rhs13.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i129

if.then.i128:                                     ; preds = %land.rhs13.i127
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !246
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !246
  br label %if.then50.i129

if.then50.i129:                                   ; preds = %if.then.i128, %land.rhs13.i127.if.then50.i129_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !246
  br label %dc_fixpt_sub.exit131

dc_fixpt_sub.exit131:                             ; preds = %if.then50.i129, %lor.rhs.i125.dc_fixpt_sub.exit131_crit_edge, %dc_fixpt_sub.exit116.dc_fixpt_sub.exit131_crit_edge
  %sub.i130 = sub i64 %.fca.0.load184, %.unpack7
  %46 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %sub.i130, ptr %arrayidx141, align 8
  %g155 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %inc140, i32 1
  %47 = ptrtoint ptr %g115 to i32
  call void @__asan_load8_noabort(i32 %47)
  %.unpack8 = load i64, ptr %g115, align 8
  %48 = insertvalue [1 x i64] undef, i64 %.unpack8, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp157, [1 x i64] %48, [1 x i64] [i64 8589934592]) #8
  %49 = ptrtoint ptr %agg.tmp157 to i32
  call void @__asan_load8_noabort(i32 %49)
  %.fca.0.load181 = load i64, ptr %agg.tmp157, align 8
  %50 = ptrtoint ptr %g120 to i32
  call void @__asan_load8_noabort(i32 %50)
  %.unpack9 = load i64, ptr %g120, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack9)
  %cmp.i132 = icmp slt i64 %.unpack9, 0
  %add.i133 = xor i64 %.unpack9, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i133, i64 %.fca.0.load181)
  %cmp4.not.i134 = icmp sgt i64 %add.i133, %.fca.0.load181
  %or.cond.i135 = select i1 %cmp.i132, i1 true, i1 %cmp4.not.i134
  br i1 %or.cond.i135, label %lor.rhs.i140, label %dc_fixpt_sub.exit131.dc_fixpt_sub.exit146_crit_edge

dc_fixpt_sub.exit131.dc_fixpt_sub.exit146_crit_edge: ; preds = %dc_fixpt_sub.exit131
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit146

lor.rhs.i140:                                     ; preds = %dc_fixpt_sub.exit131
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack9)
  %cmp6.i136 = icmp sgt i64 %.unpack9, -1
  %add8.i137 = add i64 %.unpack9, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i137, i64 %.fca.0.load181)
  %cmp10.i138 = icmp slt i64 %add8.i137, %.fca.0.load181
  %or.cond67.i139 = select i1 %cmp6.i136, i1 true, i1 %cmp10.i138
  br i1 %or.cond67.i139, label %land.rhs13.i142, label %lor.rhs.i140.dc_fixpt_sub.exit146_crit_edge

lor.rhs.i140.dc_fixpt_sub.exit146_crit_edge:      ; preds = %lor.rhs.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit146

land.rhs13.i142:                                  ; preds = %lor.rhs.i140
  %.b65.i141 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !249
  br i1 %.b65.i141, label %land.rhs13.i142.if.then50.i144_crit_edge, label %if.then.i143, !prof !43

land.rhs13.i142.if.then50.i144_crit_edge:         ; preds = %land.rhs13.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i144

if.then.i143:                                     ; preds = %land.rhs13.i142
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !249
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !249
  br label %if.then50.i144

if.then50.i144:                                   ; preds = %if.then.i143, %land.rhs13.i142.if.then50.i144_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !249
  br label %dc_fixpt_sub.exit146

dc_fixpt_sub.exit146:                             ; preds = %if.then50.i144, %lor.rhs.i140.dc_fixpt_sub.exit146_crit_edge, %dc_fixpt_sub.exit131.dc_fixpt_sub.exit146_crit_edge
  %sub.i145 = sub i64 %.fca.0.load181, %.unpack9
  %51 = ptrtoint ptr %g155 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sub.i145, ptr %g155, align 8
  %52 = ptrtoint ptr %b128 to i32
  call void @__asan_load8_noabort(i32 %52)
  %.unpack10 = load i64, ptr %b128, align 8
  %53 = insertvalue [1 x i64] undef, i64 %.unpack10, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp170, [1 x i64] %53, [1 x i64] [i64 8589934592]) #8
  %54 = ptrtoint ptr %agg.tmp170 to i32
  call void @__asan_load8_noabort(i32 %54)
  %.fca.0.load = load i64, ptr %agg.tmp170, align 8
  %55 = ptrtoint ptr %b133 to i32
  call void @__asan_load8_noabort(i32 %55)
  %.unpack11 = load i64, ptr %b133, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack11)
  %cmp.i147 = icmp slt i64 %.unpack11, 0
  %add.i148 = xor i64 %.unpack11, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i148, i64 %.fca.0.load)
  %cmp4.not.i149 = icmp sgt i64 %add.i148, %.fca.0.load
  %or.cond.i150 = select i1 %cmp.i147, i1 true, i1 %cmp4.not.i149
  br i1 %or.cond.i150, label %lor.rhs.i155, label %dc_fixpt_sub.exit146.dc_fixpt_sub.exit161_crit_edge

dc_fixpt_sub.exit146.dc_fixpt_sub.exit161_crit_edge: ; preds = %dc_fixpt_sub.exit146
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit161

lor.rhs.i155:                                     ; preds = %dc_fixpt_sub.exit146
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack11)
  %cmp6.i151 = icmp sgt i64 %.unpack11, -1
  %add8.i152 = add i64 %.unpack11, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i152, i64 %.fca.0.load)
  %cmp10.i153 = icmp slt i64 %add8.i152, %.fca.0.load
  %or.cond67.i154 = select i1 %cmp6.i151, i1 true, i1 %cmp10.i153
  br i1 %or.cond67.i154, label %land.rhs13.i157, label %lor.rhs.i155.dc_fixpt_sub.exit161_crit_edge

lor.rhs.i155.dc_fixpt_sub.exit161_crit_edge:      ; preds = %lor.rhs.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit161

land.rhs13.i157:                                  ; preds = %lor.rhs.i155
  %.b65.i156 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !252
  br i1 %.b65.i156, label %land.rhs13.i157.if.then50.i159_crit_edge, label %if.then.i158, !prof !43

land.rhs13.i157.if.then50.i159_crit_edge:         ; preds = %land.rhs13.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i159

if.then.i158:                                     ; preds = %land.rhs13.i157
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !252
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !252
  br label %if.then50.i159

if.then50.i159:                                   ; preds = %if.then.i158, %land.rhs13.i157.if.then50.i159_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !252
  br label %dc_fixpt_sub.exit161

dc_fixpt_sub.exit161:                             ; preds = %if.then50.i159, %lor.rhs.i155.dc_fixpt_sub.exit161_crit_edge, %dc_fixpt_sub.exit146.dc_fixpt_sub.exit161_crit_edge
  %b168 = getelementptr %struct.pwl_float_data, ptr %pwl_rgb, i32 %inc140, i32 2
  %sub.i160 = sub i64 %.fca.0.load, %.unpack11
  %56 = ptrtoint ptr %b168 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %sub.i160, ptr %b168, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_color_calculate_degamma_curve(i32 noundef %trans, ptr nocapture noundef writeonly %points) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %trans to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %trans, label %entry.if.end90_crit_edge [
    i32 4, label %entry.for.body.preheader_crit_edge
    i32 3, label %entry.for.body.preheader_crit_edge177
    i32 2, label %if.then11
    i32 0, label %entry.if.then38_crit_edge
    i32 1, label %entry.if.then38_crit_edge178
    i32 7, label %entry.if.then38_crit_edge179
    i32 8, label %entry.if.then38_crit_edge180
    i32 9, label %entry.if.then38_crit_edge181
    i32 5, label %if.then64
  ]

entry.if.then38_crit_edge181:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

entry.if.then38_crit_edge180:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

entry.if.then38_crit_edge179:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

entry.if.then38_crit_edge178:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

entry.if.then38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

entry.for.body.preheader_crit_edge177:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

entry.if.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge177
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0169 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [1025 x %struct.fixed31_32], ptr %points, i32 0, i32 %i.0169
  %x = getelementptr [514 x %struct.hw_x_point], ptr @coordinates_x, i32 0, i32 %i.0169, i32 1
  %1 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %x, align 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 1, i32 %i.0169
  %4 = load i64, ptr %x, align 8
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx4, align 8
  %arrayidx7 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 2, i32 %i.0169
  %6 = load i64, ptr %x, align 8
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx7, align 8
  %inc = add nuw nsw i32 %i.0169, 1
  %exitcond172.not = icmp eq i32 %inc, 513
  br i1 %exitcond172.not, label %for.body.if.end90_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then11:                                        ; preds = %entry
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 24720, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.then11.rgb_degamma_alloc_fail_crit_edge, label %if.end

if.then11.rgb_degamma_alloc_fail_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rgb_degamma_alloc_fail

if.end:                                           ; preds = %if.then11
  tail call fastcc void @build_de_pq(ptr noundef nonnull %call.i.i.i)
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end
  %i.1168 = phi i32 [ 0, %if.end ], [ %inc26, %for.body15.for.body15_crit_edge ]
  %arrayidx17 = getelementptr [1025 x %struct.fixed31_32], ptr %points, i32 0, i32 %i.1168
  %arrayidx18 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i, i32 %i.1168
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx18, align 8
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx17, align 8
  %arrayidx20 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 1, i32 %i.1168
  %g = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i, i32 %i.1168, i32 1
  %11 = ptrtoint ptr %g to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %g, align 8
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx20, align 8
  %arrayidx23 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 2, i32 %i.1168
  %b = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i, i32 %i.1168, i32 2
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %b, align 8
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx23, align 8
  %inc26 = add nuw nsw i32 %i.1168, 1
  %exitcond171.not = icmp eq i32 %inc26, 513
  br i1 %exitcond171.not, label %for.body15.if.end90.sink.split_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.if.end90.sink.split_crit_edge:         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.sink.split

if.then38:                                        ; preds = %entry.if.then38_crit_edge, %entry.if.then38_crit_edge178, %entry.if.then38_crit_edge179, %entry.if.then38_crit_edge180, %entry.if.then38_crit_edge181
  %call.i.i.i164 = tail call noalias ptr @kvmalloc_node(i32 noundef 24720, i32 noundef 3520, i32 noundef -1) #12
  %tobool40.not = icmp eq ptr %call.i.i.i164, null
  br i1 %tobool40.not, label %if.then38.rgb_degamma_alloc_fail_crit_edge, label %if.end42

if.then38.rgb_degamma_alloc_fail_crit_edge:       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rgb_degamma_alloc_fail

if.end42:                                         ; preds = %if.then38
  tail call fastcc void @build_degamma(ptr noundef nonnull %call.i.i.i164, i32 noundef %trans)
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.end42
  %i.2167 = phi i32 [ 0, %if.end42 ], [ %inc60, %for.body46.for.body46_crit_edge ]
  %arrayidx48 = getelementptr [1025 x %struct.fixed31_32], ptr %points, i32 0, i32 %i.2167
  %arrayidx49 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i164, i32 %i.2167
  %17 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx49, align 8
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx48, align 8
  %arrayidx52 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 1, i32 %i.2167
  %g54 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i164, i32 %i.2167, i32 1
  %20 = ptrtoint ptr %g54 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %g54, align 8
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx52, align 8
  %arrayidx56 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 2, i32 %i.2167
  %b58 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i164, i32 %i.2167, i32 2
  %23 = ptrtoint ptr %b58 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b58, align 8
  %25 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx56, align 8
  %inc60 = add nuw nsw i32 %i.2167, 1
  %exitcond170.not = icmp eq i32 %inc60, 513
  br i1 %exitcond170.not, label %for.body46.if.end90.sink.split_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

for.body46.if.end90.sink.split_crit_edge:         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.sink.split

if.then64:                                        ; preds = %entry
  %call.i.i.i165 = tail call noalias ptr @kvmalloc_node(i32 noundef 24720, i32 noundef 3520, i32 noundef -1) #12
  %tobool66.not = icmp eq ptr %call.i.i.i165, null
  br i1 %tobool66.not, label %if.then64.rgb_degamma_alloc_fail_crit_edge, label %if.end68

if.then64.rgb_degamma_alloc_fail_crit_edge:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %rgb_degamma_alloc_fail

if.end68:                                         ; preds = %if.then64
  tail call fastcc void @build_hlg_degamma(ptr noundef nonnull %call.i.i.i165)
  br label %for.body71

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %if.end68
  %i.3166 = phi i32 [ 0, %if.end68 ], [ %inc85, %for.body71.for.body71_crit_edge ]
  %arrayidx73 = getelementptr [1025 x %struct.fixed31_32], ptr %points, i32 0, i32 %i.3166
  %arrayidx74 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i165, i32 %i.3166
  %26 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx74, align 8
  %28 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx73, align 8
  %arrayidx77 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 1, i32 %i.3166
  %g79 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i165, i32 %i.3166, i32 1
  %29 = ptrtoint ptr %g79 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %g79, align 8
  %31 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx77, align 8
  %arrayidx81 = getelementptr %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 2, i32 %i.3166
  %b83 = getelementptr %struct.pwl_float_data_ex, ptr %call.i.i.i165, i32 %i.3166, i32 2
  %32 = ptrtoint ptr %b83 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %b83, align 8
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx81, align 8
  %inc85 = add nuw nsw i32 %i.3166, 1
  %exitcond.not = icmp eq i32 %inc85, 513
  br i1 %exitcond.not, label %for.body71.if.end90.sink.split_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71

for.body71.if.end90.sink.split_crit_edge:         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %for.body71.if.end90.sink.split_crit_edge, %for.body46.if.end90.sink.split_crit_edge, %for.body15.if.end90.sink.split_crit_edge
  %call.i.i.i.sink = phi ptr [ %call.i.i.i, %for.body15.if.end90.sink.split_crit_edge ], [ %call.i.i.i164, %for.body46.if.end90.sink.split_crit_edge ], [ %call.i.i.i165, %for.body71.if.end90.sink.split_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i.sink) #8
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %for.body.if.end90_crit_edge, %entry.if.end90_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.if.end90_crit_edge ], [ true, %if.end90.sink.split ], [ true, %for.body.if.end90_crit_edge ]
  %end_exponent = getelementptr inbounds %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 3
  %35 = ptrtoint ptr %end_exponent to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %end_exponent, align 8
  %x_point_at_y1_red = getelementptr inbounds %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 4
  %36 = ptrtoint ptr %x_point_at_y1_red to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %x_point_at_y1_red, align 2
  %x_point_at_y1_green = getelementptr inbounds %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 5
  %37 = ptrtoint ptr %x_point_at_y1_green to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %x_point_at_y1_green, align 4
  %x_point_at_y1_blue = getelementptr inbounds %struct.dc_transfer_func_distributed_points, ptr %points, i32 0, i32 6
  %38 = ptrtoint ptr %x_point_at_y1_blue to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %x_point_at_y1_blue, align 2
  br label %rgb_degamma_alloc_fail

rgb_degamma_alloc_fail:                           ; preds = %if.end90, %if.then64.rgb_degamma_alloc_fail_crit_edge, %if.then38.rgb_degamma_alloc_fail_crit_edge, %if.then11.rgb_degamma_alloc_fail_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0.off0, %if.end90 ], [ false, %if.then11.rgb_degamma_alloc_fail_crit_edge ], [ false, %if.then38.rgb_degamma_alloc_fail_crit_edge ], [ false, %if.then64.rgb_degamma_alloc_fail_crit_edge ]
  ret i1 %ret.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_exp(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_log(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @translate_from_linear_space(ptr noalias sret(%struct.fixed31_32) align 8 %agg.result, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i237 = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i238 = alloca %struct.fixed31_32, align 8
  %agg.tmp.i209 = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i210 = alloca %struct.fixed31_32, align 8
  %agg.tmp.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i = alloca %struct.fixed31_32, align 8
  %tmp11 = alloca %struct.fixed31_32, align 8
  %agg.tmp15 = alloca %struct.fixed31_32, align 8
  %tmp19 = alloca %struct.fixed31_32, align 8
  %tmp32 = alloca %struct.fixed31_32, align 8
  %agg.tmp34 = alloca %struct.fixed31_32, align 8
  %tmp51 = alloca %struct.fixed31_32, align 8
  %agg.tmp53 = alloca %struct.fixed31_32, align 8
  %tmp59 = alloca %struct.fixed31_32, align 8
  %tmp74 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_buffer1 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 6
  %0 = ptrtoint ptr %cal_buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_buffer1, align 8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %.unpack)
  %cmp.i = icmp sgt i64 %.unpack, 4294967295
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4294967296, ptr %agg.result, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %a0 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack172 = load i64, ptr %a0, align 8
  %sub.i = sub i64 0, %.unpack172
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack, i64 %sub.i)
  %cmp.i189.not = icmp sgt i64 %.unpack, %sub.i
  br i1 %cmp.i189.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %a3 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 4
  %5 = ptrtoint ptr %a3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.unpack185 = load i64, ptr %a3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.unpack185)
  %cmp4.not.i = icmp sgt i64 %.unpack185, 9223372032559808511
  br i1 %cmp4.not.i, label %land.rhs13.i, label %if.then8.dc_fixpt_add.exit_crit_edge

if.then8.dc_fixpt_add.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %if.then8
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !255
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !255
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !255
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !255
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %if.then8.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.unpack185, 4294967296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp11) #8
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack186 = load i64, ptr %args, align 8
  %gamma = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 5
  %7 = ptrtoint ptr %gamma to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack187 = load i64, ptr %gamma, align 8
  %8 = insertvalue [1 x i64] undef, i64 %.unpack187, 0
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp15, [1 x i64] %8) #8
  %9 = ptrtoint ptr %agg.tmp15 to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load95 = load i64, ptr %agg.tmp15, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack186)
  %cmp.i193 = icmp eq i64 %.unpack186, 0
  br i1 %cmp.i193, label %if.then.i194, label %if.end.i

if.then.i194:                                     ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load95)
  %cmp3.i = icmp eq i64 %.fca.0.load95, 0
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tmp11 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4294967296, ptr %tmp11, align 8, !alias.scope !258
  br label %dc_fixpt_pow.exit

cond.false.i:                                     ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tmp11 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %tmp11, align 8, !alias.scope !258
  br label %dc_fixpt_pow.exit

if.end.i:                                         ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i192 = sub i64 0, %.unpack186
  %.fca.0.insert96 = insertvalue [1 x i64] poison, i64 %.fca.0.load95, 0
  %.fca.0.insert99 = insertvalue [1 x i64] poison, i64 %sub.i192, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i, [1 x i64] %.fca.0.insert99) #8, !noalias !258
  %12 = ptrtoint ptr %agg.tmp4.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.fca.0.load.i = load i64, ptr %agg.tmp4.i, align 8, !noalias !258
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i, [1 x i64] %.fca.0.insert.i, [1 x i64] %.fca.0.insert96) #8, !noalias !258
  %13 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load10.i = load i64, ptr %agg.tmp.i, align 8, !noalias !258
  %.fca.0.insert11.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp11, [1 x i64] %.fca.0.insert11.i) #8
  br label %dc_fixpt_pow.exit

dc_fixpt_pow.exit:                                ; preds = %if.end.i, %cond.false.i, %cond.true.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i)
  %14 = ptrtoint ptr %tmp11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %scratch_2.sroa.0.0.copyload = load i64, ptr %tmp11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19) #8
  %.fca.0.insert126 = insertvalue [1 x i64] poison, i64 %add.i, 0
  %.fca.0.insert116 = insertvalue [1 x i64] poison, i64 %scratch_2.sroa.0.0.copyload, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp19, [1 x i64] %.fca.0.insert126, [1 x i64] %.fca.0.insert116) #8
  %15 = ptrtoint ptr %tmp19 to i32
  call void @__asan_load8_noabort(i32 %15)
  %scratch_1.sroa.0.0.copyload136 = load i64, ptr %tmp19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19) #8
  %a2 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 3
  %16 = ptrtoint ptr %a2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %.unpack188 = load i64, ptr %a2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %scratch_1.sroa.0.0.copyload136)
  %cmp.i195 = icmp slt i64 %scratch_1.sroa.0.0.copyload136, 0
  %add.i196 = xor i64 %scratch_1.sroa.0.0.copyload136, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i196, i64 %.unpack188)
  %cmp4.not.i197 = icmp sgt i64 %add.i196, %.unpack188
  %or.cond.i198 = select i1 %cmp.i195, i1 true, i1 %cmp4.not.i197
  br i1 %or.cond.i198, label %lor.rhs.i202, label %dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge

dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge:    ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i202:                                     ; preds = %dc_fixpt_pow.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %scratch_1.sroa.0.0.copyload136)
  %cmp6.i199 = icmp sgt i64 %scratch_1.sroa.0.0.copyload136, -1
  %add8.i = add i64 %scratch_1.sroa.0.0.copyload136, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %.unpack188)
  %cmp10.i200 = icmp slt i64 %add8.i, %.unpack188
  %or.cond67.i201 = select i1 %cmp6.i199, i1 true, i1 %cmp10.i200
  br i1 %or.cond67.i201, label %land.rhs13.i204, label %lor.rhs.i202.dc_fixpt_sub.exit_crit_edge

lor.rhs.i202.dc_fixpt_sub.exit_crit_edge:         ; preds = %lor.rhs.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i204:                                  ; preds = %lor.rhs.i202
  %.b65.i203 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !261
  br i1 %.b65.i203, label %land.rhs13.i204.if.then50.i206_crit_edge, label %if.then.i205, !prof !43

land.rhs13.i204.if.then50.i206_crit_edge:         ; preds = %land.rhs13.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i206

if.then.i205:                                     ; preds = %land.rhs13.i204
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !261
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !261
  br label %if.then50.i206

if.then50.i206:                                   ; preds = %if.then.i205, %land.rhs13.i204.if.then50.i206_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !261
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i206, %lor.rhs.i202.dc_fixpt_sub.exit_crit_edge, %dc_fixpt_pow.exit.dc_fixpt_sub.exit_crit_edge
  %sub.i207 = sub i64 %.unpack188, %scratch_1.sroa.0.0.copyload136
  %17 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub.i207, ptr %agg.result, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack172, i64 %.unpack)
  %cmp.i208.not = icmp sgt i64 %.unpack172, %.unpack
  br i1 %cmp.i208.not, label %if.else81, label %if.then30

if.then30:                                        ; preds = %if.else
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %dc_fixpt_pow.exit221, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

dc_fixpt_pow.exit221:                             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %gamma_of_2 = getelementptr inbounds %struct.calculate_buffer, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp32) #8
  %gamma35 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 5
  %20 = ptrtoint ptr %gamma35 to i32
  call void @__asan_load8_noabort(i32 %20)
  %.unpack184 = load i64, ptr %gamma35, align 8
  %21 = insertvalue [1 x i64] undef, i64 %.unpack184, 0
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp34, [1 x i64] %21) #8
  %22 = ptrtoint ptr %agg.tmp34 to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.0.load89 = load i64, ptr %agg.tmp34, align 8
  %.fca.0.insert90 = insertvalue [1 x i64] poison, i64 %.fca.0.load89, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i209)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i210)
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i210, [1 x i64] [i64 8589934592]) #8, !noalias !264
  %23 = ptrtoint ptr %agg.tmp4.i210 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.fca.0.load.i216 = load i64, ptr %agg.tmp4.i210, align 8, !noalias !264
  %.fca.0.insert.i217 = insertvalue [1 x i64] poison, i64 %.fca.0.load.i216, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i209, [1 x i64] %.fca.0.insert.i217, [1 x i64] %.fca.0.insert90) #8, !noalias !264
  %24 = ptrtoint ptr %agg.tmp.i209 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.fca.0.load10.i218 = load i64, ptr %agg.tmp.i209, align 8, !noalias !264
  %.fca.0.insert11.i219 = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i218, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp32, [1 x i64] %.fca.0.insert11.i219) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i209)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i210)
  %25 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tmp32, align 8
  %27 = ptrtoint ptr %gamma_of_2 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %gamma_of_2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp32) #8
  br label %if.end39

if.end39:                                         ; preds = %dc_fixpt_pow.exit221, %if.then30.if.end39_crit_edge
  %a341 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 4
  %28 = ptrtoint ptr %a341 to i32
  call void @__asan_load8_noabort(i32 %28)
  %.unpack178 = load i64, ptr %a341, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.unpack178)
  %cmp4.not.i224 = icmp sgt i64 %.unpack178, 9223372032559808511
  br i1 %cmp4.not.i224, label %land.rhs13.i232, label %if.end39.dc_fixpt_add.exit236_crit_edge

if.end39.dc_fixpt_add.exit236_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit236

land.rhs13.i232:                                  ; preds = %if.end39
  %.b65.i231 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !267
  br i1 %.b65.i231, label %land.rhs13.i232.if.then50.i234_crit_edge, label %if.then.i233, !prof !43

land.rhs13.i232.if.then50.i234_crit_edge:         ; preds = %land.rhs13.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i234

if.then.i233:                                     ; preds = %land.rhs13.i232
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !267
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !267
  br label %if.then50.i234

if.then50.i234:                                   ; preds = %if.then.i233, %land.rhs13.i232.if.then50.i234_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !267
  br label %dc_fixpt_add.exit236

dc_fixpt_add.exit236:                             ; preds = %if.then50.i234, %if.end39.dc_fixpt_add.exit236_crit_edge
  %add.i235 = add i64 %.unpack178, 4294967296
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 8
  %31 = and i32 %30, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %31)
  %32 = icmp eq i32 %31, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp49 = icmp slt i32 %30, 16
  %or.cond268 = or i1 %cmp49, %32
  br i1 %or.cond268, label %if.then50, label %if.else58

if.then50:                                        ; preds = %dc_fixpt_add.exit236
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp51) #8
  %gamma54 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 5
  %33 = ptrtoint ptr %gamma54 to i32
  call void @__asan_load8_noabort(i32 %33)
  %.unpack182 = load i64, ptr %gamma54, align 8
  %34 = insertvalue [1 x i64] undef, i64 %.unpack182, 0
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp53, [1 x i64] %34) #8
  %35 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %35)
  %.unpack183 = load i64, ptr %args, align 8
  %36 = ptrtoint ptr %agg.tmp53 to i32
  call void @__asan_load8_noabort(i32 %36)
  %.fca.0.load = load i64, ptr %agg.tmp53, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i237)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i238)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack183)
  %cmp.i239 = icmp eq i64 %.unpack183, 0
  br i1 %cmp.i239, label %if.then.i241, label %if.end.i248

if.then.i241:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load)
  %cmp3.i240 = icmp eq i64 %.fca.0.load, 0
  br i1 %cmp3.i240, label %cond.true.i242, label %cond.false.i243

cond.true.i242:                                   ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %tmp51 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 4294967296, ptr %tmp51, align 8, !alias.scope !270
  br label %dc_fixpt_pow.exit249

cond.false.i243:                                  ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %tmp51 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %tmp51, align 8, !alias.scope !270
  br label %dc_fixpt_pow.exit249

if.end.i248:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  %39 = insertvalue [1 x i64] undef, i64 %.unpack183, 0
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i238, [1 x i64] %39) #8, !noalias !270
  %40 = ptrtoint ptr %agg.tmp4.i238 to i32
  call void @__asan_load8_noabort(i32 %40)
  %.fca.0.load.i244 = load i64, ptr %agg.tmp4.i238, align 8, !noalias !270
  %.fca.0.insert.i245 = insertvalue [1 x i64] poison, i64 %.fca.0.load.i244, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i237, [1 x i64] %.fca.0.insert.i245, [1 x i64] %.fca.0.insert) #8, !noalias !270
  %41 = ptrtoint ptr %agg.tmp.i237 to i32
  call void @__asan_load8_noabort(i32 %41)
  %.fca.0.load10.i246 = load i64, ptr %agg.tmp.i237, align 8, !noalias !270
  %.fca.0.insert11.i247 = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i246, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp51, [1 x i64] %.fca.0.insert11.i247) #8
  br label %dc_fixpt_pow.exit249

dc_fixpt_pow.exit249:                             ; preds = %if.end.i248, %cond.false.i243, %cond.true.i242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i237)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i238)
  %42 = ptrtoint ptr %tmp51 to i32
  call void @__asan_load8_noabort(i32 %42)
  %scratch_2.sroa.0.0.copyload120 = load i64, ptr %tmp51, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp51) #8
  br label %if.end64

if.else58:                                        ; preds = %dc_fixpt_add.exit236
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp59) #8
  %gamma_of_260 = getelementptr inbounds %struct.calculate_buffer, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 8
  %rem = srem i32 %44, 16
  %arrayidx = getelementptr %struct.calculate_buffer, ptr %1, i32 0, i32 1, i32 %rem
  %45 = ptrtoint ptr %gamma_of_260 to i32
  call void @__asan_load8_noabort(i32 %45)
  %.unpack179 = load i64, ptr %gamma_of_260, align 8
  %46 = insertvalue [1 x i64] undef, i64 %.unpack179, 0
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %47)
  %.unpack180 = load i64, ptr %arrayidx, align 8
  %48 = insertvalue [1 x i64] undef, i64 %.unpack180, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp59, [1 x i64] %46, [1 x i64] %48) #8
  %49 = ptrtoint ptr %tmp59 to i32
  call void @__asan_load8_noabort(i32 %49)
  %scratch_2.sroa.0.0.copyload121 = load i64, ptr %tmp59, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp59) #8
  br label %if.end64

if.end64:                                         ; preds = %if.else58, %dc_fixpt_pow.exit249
  %scratch_2.sroa.0.0 = phi i64 [ %scratch_2.sroa.0.0.copyload120, %dc_fixpt_pow.exit249 ], [ %scratch_2.sroa.0.0.copyload121, %if.else58 ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp66.not = icmp eq i32 %51, -1
  br i1 %cmp66.not, label %if.end64.if.end73_crit_edge, label %if.then67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %rem70 = srem i32 %51, 16
  %arrayidx71 = getelementptr %struct.calculate_buffer, ptr %1, i32 0, i32 1, i32 %rem70
  %52 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %scratch_2.sroa.0.0, ptr %arrayidx71, align 8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 8
  %inc = add i32 %54, 1
  store i32 %inc, ptr %1, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end64.if.end73_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp74) #8
  %.fca.0.insert132 = insertvalue [1 x i64] poison, i64 %add.i235, 0
  %.fca.0.insert119 = insertvalue [1 x i64] poison, i64 %scratch_2.sroa.0.0, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp74, [1 x i64] %.fca.0.insert132, [1 x i64] %.fca.0.insert119) #8
  %55 = ptrtoint ptr %tmp74 to i32
  call void @__asan_load8_noabort(i32 %55)
  %scratch_1.sroa.0.0.copyload142 = load i64, ptr %tmp74, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp74) #8
  %a278 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 3
  %56 = ptrtoint ptr %a278 to i32
  call void @__asan_load8_noabort(i32 %56)
  %.unpack181 = load i64, ptr %a278, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack181)
  %cmp.i250 = icmp slt i64 %.unpack181, 0
  %add.i251 = xor i64 %.unpack181, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i251, i64 %scratch_1.sroa.0.0.copyload142)
  %cmp4.not.i252 = icmp sgt i64 %add.i251, %scratch_1.sroa.0.0.copyload142
  %or.cond.i253 = select i1 %cmp.i250, i1 true, i1 %cmp4.not.i252
  br i1 %or.cond.i253, label %lor.rhs.i258, label %if.end73.dc_fixpt_sub.exit264_crit_edge

if.end73.dc_fixpt_sub.exit264_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit264

lor.rhs.i258:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack181)
  %cmp6.i254 = icmp sgt i64 %.unpack181, -1
  %add8.i255 = add i64 %.unpack181, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i255, i64 %scratch_1.sroa.0.0.copyload142)
  %cmp10.i256 = icmp slt i64 %add8.i255, %scratch_1.sroa.0.0.copyload142
  %or.cond67.i257 = select i1 %cmp6.i254, i1 true, i1 %cmp10.i256
  br i1 %or.cond67.i257, label %land.rhs13.i260, label %lor.rhs.i258.dc_fixpt_sub.exit264_crit_edge

lor.rhs.i258.dc_fixpt_sub.exit264_crit_edge:      ; preds = %lor.rhs.i258
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit264

land.rhs13.i260:                                  ; preds = %lor.rhs.i258
  %.b65.i259 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !273
  br i1 %.b65.i259, label %land.rhs13.i260.if.then50.i262_crit_edge, label %if.then.i261, !prof !43

land.rhs13.i260.if.then50.i262_crit_edge:         ; preds = %land.rhs13.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i262

if.then.i261:                                     ; preds = %land.rhs13.i260
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !273
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !273
  br label %if.then50.i262

if.then50.i262:                                   ; preds = %if.then.i261, %land.rhs13.i260.if.then50.i262_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !273
  br label %dc_fixpt_sub.exit264

dc_fixpt_sub.exit264:                             ; preds = %if.then50.i262, %lor.rhs.i258.dc_fixpt_sub.exit264_crit_edge, %if.end73.dc_fixpt_sub.exit264_crit_edge
  %sub.i263 = sub i64 %scratch_1.sroa.0.0.copyload142, %.unpack181
  %57 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub.i263, ptr %agg.result, align 8
  br label %cleanup

if.else81:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %a1 = getelementptr inbounds %struct.translate_from_linear_space_args, ptr %args, i32 0, i32 2
  %58 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %59 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %59)
  %.unpack177 = load i64, ptr %a1, align 8
  %60 = insertvalue [1 x i64] undef, i64 %.unpack177, 0
  tail call void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %58, [1 x i64] %60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else81, %dc_fixpt_sub.exit264, %dc_fixpt_sub.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_recip(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @build_coefficients(ptr nocapture noundef writeonly %coefficients, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %tmp19 = alloca %struct.fixed31_32, align 8
  %tmp23 = alloca %struct.fixed31_32, align 8
  %tmp27 = alloca %struct.fixed31_32, align 8
  %tmp31 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %0 = icmp ult i32 %type, 10
  br i1 %0, label %switch.hole_check, label %entry.release_crit_edge

entry.release_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %type to i16
  %switch.shifted = lshr i16 899, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.release_crit_edge, label %switch.lookup

switch.hole_check.release_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.build_coefficients, i32 0, i32 %type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx17 = getelementptr [5 x i32], ptr @numerator01, i32 0, i32 %switch.load
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx17, align 4
  %conv = sext i32 %4 to i64
  %arrayidx20 = getelementptr [5 x i32], ptr @numerator02, i32 0, i32 %switch.load
  %arrayidx24 = getelementptr [5 x i32], ptr @numerator03, i32 0, i32 %switch.load
  %arrayidx28 = getelementptr [5 x i32], ptr @numerator04, i32 0, i32 %switch.load
  %arrayidx32 = getelementptr [5 x i32], ptr @numerator05, i32 0, i32 %switch.load
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %conv, i64 noundef 10000000) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  %7 = ptrtoint ptr %coefficients to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %coefficients, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx18 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 1, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19) #8
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 4
  %conv21 = sext i32 %9 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp19, i64 noundef %conv21, i64 noundef 1000) #8
  %10 = ptrtoint ptr %tmp19 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tmp19, align 8
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19) #8
  %arrayidx22 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 2, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23) #8
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx24, align 4
  %conv25 = sext i32 %14 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23, i64 noundef %conv25, i64 noundef 1000) #8
  %15 = ptrtoint ptr %tmp23 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tmp23, align 8
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx22, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23) #8
  %arrayidx26 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 3, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp27) #8
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %conv29 = sext i32 %19 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp27, i64 noundef %conv29, i64 noundef 1000) #8
  %20 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tmp27, align 8
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx26, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp27) #8
  %arrayidx30 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 4, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31) #8
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx32, align 4
  %conv33 = sext i32 %24 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp31, i64 noundef %conv33, i64 noundef 1000) #8
  %25 = ptrtoint ptr %tmp31 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tmp31, align 8
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx30, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31) #8
  %arrayidx.1 = getelementptr [3 x %struct.fixed31_32], ptr %coefficients, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %conv, i64 noundef 10000000) #8
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tmp, align 8
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx.1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx18.1 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp19, i64 noundef %conv21, i64 noundef 1000) #8
  %31 = ptrtoint ptr %tmp19 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp19, align 8
  %33 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx18.1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19) #8
  %arrayidx22.1 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23, i64 noundef %conv25, i64 noundef 1000) #8
  %34 = ptrtoint ptr %tmp23 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tmp23, align 8
  %36 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx22.1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23) #8
  %arrayidx26.1 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp27) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp27, i64 noundef %conv29, i64 noundef 1000) #8
  %37 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tmp27, align 8
  %39 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx26.1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp27) #8
  %arrayidx30.1 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp31, i64 noundef %conv33, i64 noundef 1000) #8
  %40 = ptrtoint ptr %tmp31 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tmp31, align 8
  %42 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx30.1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31) #8
  %arrayidx.2 = getelementptr [3 x %struct.fixed31_32], ptr %coefficients, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, i64 noundef %conv, i64 noundef 10000000) #8
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tmp, align 8
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx.2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %arrayidx18.2 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp19, i64 noundef %conv21, i64 noundef 1000) #8
  %46 = ptrtoint ptr %tmp19 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tmp19, align 8
  %48 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx18.2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19) #8
  %arrayidx22.2 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23, i64 noundef %conv25, i64 noundef 1000) #8
  %49 = ptrtoint ptr %tmp23 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tmp23, align 8
  %51 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx22.2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23) #8
  %arrayidx26.2 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp27) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp27, i64 noundef %conv29, i64 noundef 1000) #8
  %52 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tmp27, align 8
  %54 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx26.2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp27) #8
  %arrayidx30.2 = getelementptr %struct.gamma_coefficients, ptr %coefficients, i32 0, i32 4, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31) #8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp31, i64 noundef %conv33, i64 noundef 1000) #8
  %55 = ptrtoint ptr %tmp31 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tmp31, align 8
  %57 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx30.2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31) #8
  br label %release

release:                                          ; preds = %switch.lookup, %switch.hole_check.release_crit_edge, %entry.release_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.release_crit_edge ], [ true, %switch.lookup ], [ false, %switch.hole_check.release_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_color_is_table_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_color_set_table_init_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_mapped_value(ptr noalias nocapture writeonly sret(%struct.fixed31_32) align 8 %agg.result, ptr nocapture noundef readonly %rgb, ptr nocapture noundef readonly %coeff, i32 noundef %channel, i32 noundef %max_index) unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp42 = alloca %struct.fixed31_32, align 8
  %agg.tmp62 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp1 = icmp eq i32 %channel, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %g = getelementptr inbounds %struct.pixel_gamma_point, ptr %coeff, i32 0, i32 1
  br label %if.end4

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %b = getelementptr inbounds %struct.pixel_gamma_point, ptr %coeff, i32 0, i32 2
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2, %entry.if.end4_crit_edge
  %point.0 = phi ptr [ %g, %if.then2 ], [ %b, %if.else3 ], [ %coeff, %entry.if.end4_crit_edge ]
  %0 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %point.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_index)
  %cmp7 = icmp ugt i32 %1, %max_index
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.calculate_mapped_value, i32 noundef 700) #8
  tail call void @kgdb_breakpoint() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %right_index = getelementptr inbounds %struct.gamma_point, ptr %point.0, i32 0, i32 1
  %2 = ptrtoint ptr %right_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %right_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max_index)
  %cmp13 = icmp ugt i32 %3, %max_index
  %or.cond157 = or i1 %cmp10, %cmp13
  br i1 %or.cond157, label %do.body15, label %if.end18

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.calculate_mapped_value, i32 noundef 705) #8
  tail call void @kgdb_breakpoint() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %pos = getelementptr inbounds %struct.gamma_point, ptr %point.0, i32 0, i32 2
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %5, label %if.end18.cleanup_crit_edge [
    i32 0, label %if.then20
    i32 1, label %do.body86
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  br i1 %cmp, label %if.then22, label %if.else38

if.then22:                                        ; preds = %if.then20
  %coeff23 = getelementptr inbounds %struct.gamma_point, ptr %point.0, i32 0, i32 3
  %arrayidx = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %3
  %arrayidx28 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack153 = load i64, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack154 = load i64, ptr %arrayidx28, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack154)
  %cmp.i = icmp slt i64 %.unpack154, 0
  %add.i = xor i64 %.unpack154, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %.unpack153)
  %cmp4.not.i = icmp sgt i64 %add.i, %.unpack153
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %if.then22.dc_fixpt_sub.exit_crit_edge

if.then22.dc_fixpt_sub.exit_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack154)
  %cmp6.i = icmp sgt i64 %.unpack154, -1
  %add8.i = add i64 %.unpack154, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %.unpack153)
  %cmp10.i = icmp slt i64 %add8.i, %.unpack153
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !276
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !43

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !276
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !276
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !276
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %if.then22.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %.unpack153, %.unpack154
  %9 = ptrtoint ptr %coeff23 to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack155 = load i64, ptr %coeff23, align 8
  %10 = insertvalue [1 x i64] undef, i64 %.unpack155, 0
  %.fca.0.insert104 = insertvalue [1 x i64] poison, i64 %sub.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, [1 x i64] %10, [1 x i64] %.fca.0.insert104) #8
  %11 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %point.0, align 8
  %arrayidx34 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %12
  %13 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load106 = load i64, ptr %agg.tmp, align 8
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack156 = load i64, ptr %arrayidx34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load106)
  %cmp.i158 = icmp slt i64 %.fca.0.load106, 0
  %sub.i159 = sub i64 9223372036854775807, %.fca.0.load106
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i159, i64 %.unpack156)
  %cmp4.not.i160 = icmp slt i64 %sub.i159, %.unpack156
  %or.cond.i161 = select i1 %cmp.i158, i1 true, i1 %cmp4.not.i160
  br i1 %or.cond.i161, label %lor.rhs.i165, label %dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge

dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge:    ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i165:                                     ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load106)
  %cmp6.i162 = icmp sgt i64 %.fca.0.load106, -1
  %sub8.i = sub i64 -9223372036854775808, %.fca.0.load106
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %.unpack156)
  %cmp10.i163 = icmp sgt i64 %sub8.i, %.unpack156
  %or.cond67.i164 = select i1 %cmp6.i162, i1 true, i1 %cmp10.i163
  br i1 %or.cond67.i164, label %land.rhs13.i167, label %lor.rhs.i165.dc_fixpt_add.exit_crit_edge

lor.rhs.i165.dc_fixpt_add.exit_crit_edge:         ; preds = %lor.rhs.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i167:                                  ; preds = %lor.rhs.i165
  %.b65.i166 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !279
  br i1 %.b65.i166, label %land.rhs13.i167.if.then50.i169_crit_edge, label %if.then.i168, !prof !43

land.rhs13.i167.if.then50.i169_crit_edge:         ; preds = %land.rhs13.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i169

if.then.i168:                                     ; preds = %land.rhs13.i167
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !279
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !279
  br label %if.then50.i169

if.then50.i169:                                   ; preds = %if.then.i168, %land.rhs13.i167.if.then50.i169_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !279
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i169, %lor.rhs.i165.dc_fixpt_add.exit_crit_edge, %dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge
  %add.i170 = add i64 %.unpack156, %.fca.0.load106
  br label %cleanup

if.else38:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp39 = icmp eq i32 %channel, 1
  %coeff43 = getelementptr inbounds %struct.gamma_point, ptr %point.0, i32 0, i32 3
  br i1 %cmp39, label %if.then40, label %if.else60

if.then40:                                        ; preds = %if.else38
  %g47 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %3, i32 1
  %g50 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %1, i32 1
  %15 = ptrtoint ptr %g47 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.unpack149 = load i64, ptr %g47, align 8
  %16 = ptrtoint ptr %g50 to i32
  call void @__asan_load8_noabort(i32 %16)
  %.unpack150 = load i64, ptr %g50, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack150)
  %cmp.i171 = icmp slt i64 %.unpack150, 0
  %add.i172 = xor i64 %.unpack150, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i172, i64 %.unpack149)
  %cmp4.not.i173 = icmp sgt i64 %add.i172, %.unpack149
  %or.cond.i174 = select i1 %cmp.i171, i1 true, i1 %cmp4.not.i173
  br i1 %or.cond.i174, label %lor.rhs.i179, label %if.then40.dc_fixpt_sub.exit185_crit_edge

if.then40.dc_fixpt_sub.exit185_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit185

lor.rhs.i179:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack150)
  %cmp6.i175 = icmp sgt i64 %.unpack150, -1
  %add8.i176 = add i64 %.unpack150, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i176, i64 %.unpack149)
  %cmp10.i177 = icmp slt i64 %add8.i176, %.unpack149
  %or.cond67.i178 = select i1 %cmp6.i175, i1 true, i1 %cmp10.i177
  br i1 %or.cond67.i178, label %land.rhs13.i181, label %lor.rhs.i179.dc_fixpt_sub.exit185_crit_edge

lor.rhs.i179.dc_fixpt_sub.exit185_crit_edge:      ; preds = %lor.rhs.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit185

land.rhs13.i181:                                  ; preds = %lor.rhs.i179
  %.b65.i180 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !282
  br i1 %.b65.i180, label %land.rhs13.i181.if.then50.i183_crit_edge, label %if.then.i182, !prof !43

land.rhs13.i181.if.then50.i183_crit_edge:         ; preds = %land.rhs13.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i183

if.then.i182:                                     ; preds = %land.rhs13.i181
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !282
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !282
  br label %if.then50.i183

if.then50.i183:                                   ; preds = %if.then.i182, %land.rhs13.i181.if.then50.i183_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !282
  br label %dc_fixpt_sub.exit185

dc_fixpt_sub.exit185:                             ; preds = %if.then50.i183, %lor.rhs.i179.dc_fixpt_sub.exit185_crit_edge, %if.then40.dc_fixpt_sub.exit185_crit_edge
  %sub.i184 = sub i64 %.unpack149, %.unpack150
  %17 = ptrtoint ptr %coeff43 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.unpack151 = load i64, ptr %coeff43, align 8
  %18 = insertvalue [1 x i64] undef, i64 %.unpack151, 0
  %.fca.0.insert98 = insertvalue [1 x i64] poison, i64 %sub.i184, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp42, [1 x i64] %18, [1 x i64] %.fca.0.insert98) #8
  %19 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %point.0, align 8
  %g57 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %20, i32 1
  %21 = ptrtoint ptr %agg.tmp42 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.0.load100 = load i64, ptr %agg.tmp42, align 8
  %22 = ptrtoint ptr %g57 to i32
  call void @__asan_load8_noabort(i32 %22)
  %.unpack152 = load i64, ptr %g57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load100)
  %cmp.i186 = icmp slt i64 %.fca.0.load100, 0
  %sub.i187 = sub i64 9223372036854775807, %.fca.0.load100
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i187, i64 %.unpack152)
  %cmp4.not.i188 = icmp slt i64 %sub.i187, %.unpack152
  %or.cond.i189 = select i1 %cmp.i186, i1 true, i1 %cmp4.not.i188
  br i1 %or.cond.i189, label %lor.rhs.i194, label %dc_fixpt_sub.exit185.dc_fixpt_add.exit200_crit_edge

dc_fixpt_sub.exit185.dc_fixpt_add.exit200_crit_edge: ; preds = %dc_fixpt_sub.exit185
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit200

lor.rhs.i194:                                     ; preds = %dc_fixpt_sub.exit185
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load100)
  %cmp6.i190 = icmp sgt i64 %.fca.0.load100, -1
  %sub8.i191 = sub i64 -9223372036854775808, %.fca.0.load100
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i191, i64 %.unpack152)
  %cmp10.i192 = icmp sgt i64 %sub8.i191, %.unpack152
  %or.cond67.i193 = select i1 %cmp6.i190, i1 true, i1 %cmp10.i192
  br i1 %or.cond67.i193, label %land.rhs13.i196, label %lor.rhs.i194.dc_fixpt_add.exit200_crit_edge

lor.rhs.i194.dc_fixpt_add.exit200_crit_edge:      ; preds = %lor.rhs.i194
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit200

land.rhs13.i196:                                  ; preds = %lor.rhs.i194
  %.b65.i195 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !285
  br i1 %.b65.i195, label %land.rhs13.i196.if.then50.i198_crit_edge, label %if.then.i197, !prof !43

land.rhs13.i196.if.then50.i198_crit_edge:         ; preds = %land.rhs13.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i198

if.then.i197:                                     ; preds = %land.rhs13.i196
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !285
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !285
  br label %if.then50.i198

if.then50.i198:                                   ; preds = %if.then.i197, %land.rhs13.i196.if.then50.i198_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !285
  br label %dc_fixpt_add.exit200

dc_fixpt_add.exit200:                             ; preds = %if.then50.i198, %lor.rhs.i194.dc_fixpt_add.exit200_crit_edge, %dc_fixpt_sub.exit185.dc_fixpt_add.exit200_crit_edge
  %add.i199 = add i64 %.unpack152, %.fca.0.load100
  br label %cleanup

if.else60:                                        ; preds = %if.else38
  %b67 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %3, i32 2
  %b70 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %1, i32 2
  %23 = ptrtoint ptr %b67 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack = load i64, ptr %b67, align 8
  %24 = ptrtoint ptr %b70 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack146 = load i64, ptr %b70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack146)
  %cmp.i201 = icmp slt i64 %.unpack146, 0
  %add.i202 = xor i64 %.unpack146, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i202, i64 %.unpack)
  %cmp4.not.i203 = icmp sgt i64 %add.i202, %.unpack
  %or.cond.i204 = select i1 %cmp.i201, i1 true, i1 %cmp4.not.i203
  br i1 %or.cond.i204, label %lor.rhs.i209, label %if.else60.dc_fixpt_sub.exit215_crit_edge

if.else60.dc_fixpt_sub.exit215_crit_edge:         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit215

lor.rhs.i209:                                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack146)
  %cmp6.i205 = icmp sgt i64 %.unpack146, -1
  %add8.i206 = add i64 %.unpack146, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i206, i64 %.unpack)
  %cmp10.i207 = icmp slt i64 %add8.i206, %.unpack
  %or.cond67.i208 = select i1 %cmp6.i205, i1 true, i1 %cmp10.i207
  br i1 %or.cond67.i208, label %land.rhs13.i211, label %lor.rhs.i209.dc_fixpt_sub.exit215_crit_edge

lor.rhs.i209.dc_fixpt_sub.exit215_crit_edge:      ; preds = %lor.rhs.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit215

land.rhs13.i211:                                  ; preds = %lor.rhs.i209
  %.b65.i210 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !288
  br i1 %.b65.i210, label %land.rhs13.i211.if.then50.i213_crit_edge, label %if.then.i212, !prof !43

land.rhs13.i211.if.then50.i213_crit_edge:         ; preds = %land.rhs13.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i213

if.then.i212:                                     ; preds = %land.rhs13.i211
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !288
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !288
  br label %if.then50.i213

if.then50.i213:                                   ; preds = %if.then.i212, %land.rhs13.i211.if.then50.i213_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !288
  br label %dc_fixpt_sub.exit215

dc_fixpt_sub.exit215:                             ; preds = %if.then50.i213, %lor.rhs.i209.dc_fixpt_sub.exit215_crit_edge, %if.else60.dc_fixpt_sub.exit215_crit_edge
  %sub.i214 = sub i64 %.unpack, %.unpack146
  %25 = ptrtoint ptr %coeff43 to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack147 = load i64, ptr %coeff43, align 8
  %26 = insertvalue [1 x i64] undef, i64 %.unpack147, 0
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %sub.i214, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp62, [1 x i64] %26, [1 x i64] %.fca.0.insert) #8
  %27 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %point.0, align 8
  %b77 = getelementptr %struct.pwl_float_data, ptr %rgb, i32 %28, i32 2
  %29 = ptrtoint ptr %agg.tmp62 to i32
  call void @__asan_load8_noabort(i32 %29)
  %.fca.0.load94 = load i64, ptr %agg.tmp62, align 8
  %30 = ptrtoint ptr %b77 to i32
  call void @__asan_load8_noabort(i32 %30)
  %.unpack148 = load i64, ptr %b77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load94)
  %cmp.i216 = icmp slt i64 %.fca.0.load94, 0
  %sub.i217 = sub i64 9223372036854775807, %.fca.0.load94
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i217, i64 %.unpack148)
  %cmp4.not.i218 = icmp slt i64 %sub.i217, %.unpack148
  %or.cond.i219 = select i1 %cmp.i216, i1 true, i1 %cmp4.not.i218
  br i1 %or.cond.i219, label %lor.rhs.i224, label %dc_fixpt_sub.exit215.dc_fixpt_add.exit230_crit_edge

dc_fixpt_sub.exit215.dc_fixpt_add.exit230_crit_edge: ; preds = %dc_fixpt_sub.exit215
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit230

lor.rhs.i224:                                     ; preds = %dc_fixpt_sub.exit215
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load94)
  %cmp6.i220 = icmp sgt i64 %.fca.0.load94, -1
  %sub8.i221 = sub i64 -9223372036854775808, %.fca.0.load94
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i221, i64 %.unpack148)
  %cmp10.i222 = icmp sgt i64 %sub8.i221, %.unpack148
  %or.cond67.i223 = select i1 %cmp6.i220, i1 true, i1 %cmp10.i222
  br i1 %or.cond67.i223, label %land.rhs13.i226, label %lor.rhs.i224.dc_fixpt_add.exit230_crit_edge

lor.rhs.i224.dc_fixpt_add.exit230_crit_edge:      ; preds = %lor.rhs.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit230

land.rhs13.i226:                                  ; preds = %lor.rhs.i224
  %.b65.i225 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !291
  br i1 %.b65.i225, label %land.rhs13.i226.if.then50.i228_crit_edge, label %if.then.i227, !prof !43

land.rhs13.i226.if.then50.i228_crit_edge:         ; preds = %land.rhs13.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i228

if.then.i227:                                     ; preds = %land.rhs13.i226
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !291
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !291
  br label %if.then50.i228

if.then50.i228:                                   ; preds = %if.then.i227, %land.rhs13.i226.if.then50.i228_crit_edge
  call void @kgdb_breakpoint() #8, !noalias !291
  br label %dc_fixpt_add.exit230

dc_fixpt_add.exit230:                             ; preds = %if.then50.i228, %lor.rhs.i224.dc_fixpt_add.exit230_crit_edge, %dc_fixpt_sub.exit215.dc_fixpt_add.exit230_crit_edge
  %add.i229 = add i64 %.unpack148, %.fca.0.load94
  br label %cleanup

do.body86:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.calculate_mapped_value, i32 noundef 735) #8
  tail call void @kgdb_breakpoint() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body86, %dc_fixpt_add.exit230, %dc_fixpt_add.exit200, %dc_fixpt_add.exit, %if.end18.cleanup_crit_edge, %do.body15, %do.body
  %result.sroa.0.0.sink = phi i64 [ 0, %do.body15 ], [ 0, %do.body ], [ %add.i170, %dc_fixpt_add.exit ], [ %add.i199, %dc_fixpt_add.exit200 ], [ %add.i229, %dc_fixpt_add.exit230 ], [ 0, %do.body86 ], [ 4294967296, %if.end18.cleanup_crit_edge ]
  %31 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %result.sroa.0.0.sink, ptr %agg.result, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @coordinates_x, !1, !"coordinates_x", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 41, i32 26}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 249, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"dc_fixpt_zero", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 67, i32 32}
!7 = distinct !{null, !8, !"dc_fixpt_one", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!11 = !{ptr @numerator01, !12, !"numerator01", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 63, i32 22}
!13 = !{ptr @numerator02, !14, !"numerator02", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 64, i32 22}
!15 = !{ptr @numerator03, !16, !"numerator03", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 65, i32 22}
!17 = !{ptr @numerator04, !18, !"numerator04", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 66, i32 22}
!19 = !{ptr @numerator05, !20, !"numerator05", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 67, i32 22}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 1474, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 624, i32 4}
!26 = !{ptr @__func__.build_custom_gamma_mapping_coefficients_worker, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.calculate_mapped_value, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.c", i32 700, i32 3}
!29 = distinct !{null, !30, !"dc_fixpt_half", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 69, i32 32}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"dc_fixpt_add: %agg.result"}
!42 = distinct !{!42, !"dc_fixpt_add"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"auto-init"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"dc_fixpt_pow: %agg.result"}
!47 = distinct !{!47, !"dc_fixpt_pow"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"dc_fixpt_add: %agg.result"}
!50 = distinct !{!50, !"dc_fixpt_add"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"dc_fixpt_add: %agg.result"}
!53 = distinct !{!53, !"dc_fixpt_add"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"dc_fixpt_pow: %agg.result"}
!56 = distinct !{!56, !"dc_fixpt_pow"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"dc_fixpt_pow: %agg.result"}
!59 = distinct !{!59, !"dc_fixpt_pow"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"dc_fixpt_sub: %agg.result"}
!62 = distinct !{!62, !"dc_fixpt_sub"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"dc_fixpt_sub: %agg.result"}
!65 = distinct !{!65, !"dc_fixpt_sub"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"dc_fixpt_sub: %agg.result"}
!68 = distinct !{!68, !"dc_fixpt_sub"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"dc_fixpt_pow: %agg.result"}
!71 = distinct !{!71, !"dc_fixpt_pow"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"translate_from_linear_space_ex: %agg.result"}
!74 = distinct !{!74, !"translate_from_linear_space_ex"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"translate_from_linear_space_ex: %agg.result"}
!77 = distinct !{!77, !"translate_from_linear_space_ex"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"translate_from_linear_space_ex: %agg.result"}
!80 = distinct !{!80, !"translate_from_linear_space_ex"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"dc_fixpt_sub: %agg.result"}
!83 = distinct !{!83, !"dc_fixpt_sub"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"dc_fixpt_sub: %agg.result"}
!86 = distinct !{!86, !"dc_fixpt_sub"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"dc_fixpt_add: %agg.result"}
!89 = distinct !{!89, !"dc_fixpt_add"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"translate_from_linear_space_ex: %agg.result"}
!92 = distinct !{!92, !"translate_from_linear_space_ex"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"dc_fixpt_sub: %agg.result"}
!95 = distinct !{!95, !"dc_fixpt_sub"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"dc_fixpt_sub: %agg.result"}
!98 = distinct !{!98, !"dc_fixpt_sub"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"dc_fixpt_add: %agg.result"}
!101 = distinct !{!101, !"dc_fixpt_add"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!104}
!104 = distinct !{!104, !105, !"translate_to_linear_space_ex: %agg.result"}
!105 = distinct !{!105, !"translate_to_linear_space_ex"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"translate_to_linear_space: %agg.result"}
!108 = distinct !{!108, !"translate_to_linear_space"}
!109 = !{!107, !104}
!110 = !{!111, !107, !104}
!111 = distinct !{!111, !112, !"dc_fixpt_sub: %agg.result"}
!112 = distinct !{!112, !"dc_fixpt_sub"}
!113 = !{!114, !107, !104}
!114 = distinct !{!114, !115, !"dc_fixpt_add: %agg.result"}
!115 = distinct !{!115, !"dc_fixpt_add"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"dc_fixpt_pow: %agg.result"}
!118 = distinct !{!118, !"dc_fixpt_pow"}
!119 = !{!117, !107, !104}
!120 = !{!121, !107, !104}
!121 = distinct !{!121, !122, !"dc_fixpt_add: %agg.result"}
!122 = distinct !{!122, !"dc_fixpt_add"}
!123 = !{!124, !107, !104}
!124 = distinct !{!124, !125, !"dc_fixpt_add: %agg.result"}
!125 = distinct !{!125, !"dc_fixpt_add"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"dc_fixpt_pow: %agg.result"}
!128 = distinct !{!128, !"dc_fixpt_pow"}
!129 = !{!127, !107, !104}
!130 = !{!131}
!131 = distinct !{!131, !132, !"dc_fixpt_sub: %agg.result"}
!132 = distinct !{!132, !"dc_fixpt_sub"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"dc_fixpt_add: %agg.result"}
!135 = distinct !{!135, !"dc_fixpt_add"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"dc_fixpt_sub: %agg.result"}
!138 = distinct !{!138, !"dc_fixpt_sub"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"dc_fixpt_sub: %agg.result"}
!141 = distinct !{!141, !"dc_fixpt_sub"}
!142 = !{i8 0, i8 2}
!143 = !{!144}
!144 = distinct !{!144, !145, !"dc_fixpt_add: %agg.result"}
!145 = distinct !{!145, !"dc_fixpt_add"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"dc_fixpt_sub: %agg.result"}
!148 = distinct !{!148, !"dc_fixpt_sub"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"dc_fixpt_sub: %agg.result"}
!151 = distinct !{!151, !"dc_fixpt_sub"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"dc_fixpt_sub: %agg.result"}
!154 = distinct !{!154, !"dc_fixpt_sub"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"dc_fixpt_sub: %agg.result"}
!157 = distinct !{!157, !"dc_fixpt_sub"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"dc_fixpt_sub: %agg.result"}
!160 = distinct !{!160, !"dc_fixpt_sub"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"dc_fixpt_add: %agg.result"}
!163 = distinct !{!163, !"dc_fixpt_add"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"dc_fixpt_sub: %agg.result"}
!166 = distinct !{!166, !"dc_fixpt_sub"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"dc_fixpt_add: %agg.result"}
!169 = distinct !{!169, !"dc_fixpt_add"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"dc_fixpt_sub: %agg.result"}
!172 = distinct !{!172, !"dc_fixpt_sub"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"dc_fixpt_sub: %agg.result"}
!175 = distinct !{!175, !"dc_fixpt_sub"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"dc_fixpt_add: %agg.result"}
!178 = distinct !{!178, !"dc_fixpt_add"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"dc_fixpt_add: %agg.result"}
!181 = distinct !{!181, !"dc_fixpt_add"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"dc_fixpt_sub: %agg.result"}
!184 = distinct !{!184, !"dc_fixpt_sub"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"dc_fixpt_add: %agg.result"}
!187 = distinct !{!187, !"dc_fixpt_add"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"calculate_gamma22: %agg.result"}
!190 = distinct !{!190, !"calculate_gamma22"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"translate_from_linear_space_long: %agg.result"}
!193 = distinct !{!193, !"translate_from_linear_space_long"}
!194 = !{!192, !189}
!195 = !{!196, !192, !189}
!196 = distinct !{!196, !197, !"dc_fixpt_sub: %agg.result"}
!197 = distinct !{!197, !"dc_fixpt_sub"}
!198 = !{!199, !192, !189}
!199 = distinct !{!199, !200, !"dc_fixpt_pow: %agg.result"}
!200 = distinct !{!200, !"dc_fixpt_pow"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"dc_fixpt_sub: %agg.result"}
!203 = distinct !{!203, !"dc_fixpt_sub"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"dc_fixpt_sub: %agg.result"}
!206 = distinct !{!206, !"dc_fixpt_sub"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"dc_fixpt_sub: %agg.result"}
!209 = distinct !{!209, !"dc_fixpt_sub"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"dc_fixpt_add: %agg.result"}
!212 = distinct !{!212, !"dc_fixpt_add"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"dc_fixpt_pow: %agg.result"}
!215 = distinct !{!215, !"dc_fixpt_pow"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"dc_fixpt_sub: %agg.result"}
!218 = distinct !{!218, !"dc_fixpt_sub"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"dc_fixpt_add: %agg.result"}
!221 = distinct !{!221, !"dc_fixpt_add"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"translate_from_linear_space_ex: %agg.result"}
!224 = distinct !{!224, !"translate_from_linear_space_ex"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"dc_fixpt_add: %agg.result"}
!227 = distinct !{!227, !"dc_fixpt_add"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"dc_fixpt_add: %agg.result"}
!230 = distinct !{!230, !"dc_fixpt_add"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"dc_fixpt_add: %agg.result"}
!233 = distinct !{!233, !"dc_fixpt_add"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"dc_fixpt_add: %agg.result"}
!236 = distinct !{!236, !"dc_fixpt_add"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"dc_fixpt_sub: %agg.result"}
!239 = distinct !{!239, !"dc_fixpt_sub"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"dc_fixpt_sub: %agg.result"}
!242 = distinct !{!242, !"dc_fixpt_sub"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"dc_fixpt_sub: %agg.result"}
!245 = distinct !{!245, !"dc_fixpt_sub"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"dc_fixpt_sub: %agg.result"}
!248 = distinct !{!248, !"dc_fixpt_sub"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"dc_fixpt_sub: %agg.result"}
!251 = distinct !{!251, !"dc_fixpt_sub"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"dc_fixpt_sub: %agg.result"}
!254 = distinct !{!254, !"dc_fixpt_sub"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"dc_fixpt_add: %agg.result"}
!257 = distinct !{!257, !"dc_fixpt_add"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"dc_fixpt_pow: %agg.result"}
!260 = distinct !{!260, !"dc_fixpt_pow"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"dc_fixpt_sub: %agg.result"}
!263 = distinct !{!263, !"dc_fixpt_sub"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"dc_fixpt_pow: %agg.result"}
!266 = distinct !{!266, !"dc_fixpt_pow"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"dc_fixpt_add: %agg.result"}
!269 = distinct !{!269, !"dc_fixpt_add"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"dc_fixpt_pow: %agg.result"}
!272 = distinct !{!272, !"dc_fixpt_pow"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"dc_fixpt_sub: %agg.result"}
!275 = distinct !{!275, !"dc_fixpt_sub"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"dc_fixpt_sub: %agg.result"}
!278 = distinct !{!278, !"dc_fixpt_sub"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"dc_fixpt_add: %agg.result"}
!281 = distinct !{!281, !"dc_fixpt_add"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"dc_fixpt_sub: %agg.result"}
!284 = distinct !{!284, !"dc_fixpt_sub"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"dc_fixpt_add: %agg.result"}
!287 = distinct !{!287, !"dc_fixpt_add"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"dc_fixpt_sub: %agg.result"}
!290 = distinct !{!290, !"dc_fixpt_sub"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"dc_fixpt_add: %agg.result"}
!293 = distinct !{!293, !"dc_fixpt_add"}
