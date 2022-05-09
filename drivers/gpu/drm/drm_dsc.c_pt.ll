; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dsc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_dsc_dp_pps_header_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dsc_dp_pps_header_init\09\09\09\09"
module asm "\09.long\09__crc_drm_dsc_dp_pps_header_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_dp_pps_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_dp_pps_header_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_dp_pps_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dsc_dp_rc_buffer_size\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dsc_dp_rc_buffer_size\09\09\09\09"
module asm "\09.long\09__crc_drm_dsc_dp_rc_buffer_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_dp_rc_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_dp_rc_buffer_size\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_dp_rc_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dsc_pps_payload_pack\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dsc_pps_payload_pack\09\09\09\09"
module asm "\09.long\09__crc_drm_dsc_pps_payload_pack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_pps_payload_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_pps_payload_pack\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_pps_payload_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dsc_compute_rc_parameters\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dsc_compute_rc_parameters\09\09\09\09"
module asm "\09.long\09__crc_drm_dsc_compute_rc_parameters\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_compute_rc_parameters:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_compute_rc_parameters\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_compute_rc_parameters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_dsc_config = type { i8, i8, i8, i8, i16, i16, i8, i16, i16, i8, i8, i16, i8, i8, i8, i16, i16, i8, i8, i16, [14 x i16], [15 x %struct.drm_dsc_rc_range_parameters], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i16, i16 }
%struct.drm_dsc_rc_range_parameters = type { i8, i8, i8 }
%struct.drm_dsc_picture_parameter_set = type <{ i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, [14 x i8], [15 x i16], i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i16 }>

@__kstrtab_drm_dsc_dp_pps_header_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_dp_pps_header_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_dp_pps_header_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_dp_pps_header_init to i32), ptr @__kstrtab_drm_dsc_dp_pps_header_init, ptr @__kstrtabns_drm_dsc_dp_pps_header_init }, section "___ksymtab+drm_dsc_dp_pps_header_init", align 4
@__kstrtab_drm_dsc_dp_rc_buffer_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_dp_rc_buffer_size = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_dp_rc_buffer_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_dp_rc_buffer_size to i32), ptr @__kstrtab_drm_dsc_dp_rc_buffer_size, ptr @__kstrtabns_drm_dsc_dp_rc_buffer_size }, section "___ksymtab+drm_dsc_dp_rc_buffer_size", align 4
@__kstrtab_drm_dsc_pps_payload_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_pps_payload_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_pps_payload_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_pps_payload_pack to i32), ptr @__kstrtab_drm_dsc_pps_payload_pack, ptr @__kstrtabns_drm_dsc_pps_payload_pack }, section "___ksymtab+drm_dsc_pps_payload_pack", align 4
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"FinalOfs < RcModelSze for this InitialXmitDelay\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_drm_dsc_compute_rc_parameters = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_compute_rc_parameters = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_compute_rc_parameters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_compute_rc_parameters to i32), ptr @__kstrtab_drm_dsc_compute_rc_parameters, ptr @__kstrtabns_drm_dsc_compute_rc_parameters }, section "___ksymtab+drm_dsc_compute_rc_parameters", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/gpu/drm/drm_dsc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 346, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_dsc_compute_rc_parameters, ptr @__ksymtab_drm_dsc_dp_pps_header_init, ptr @__ksymtab_drm_dsc_dp_rc_buffer_size, ptr @__ksymtab_drm_dsc_pps_payload_pack, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @drm_dsc_dp_pps_header_init(ptr nocapture noundef writeonly %pps_header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pps_header to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1081088, ptr %pps_header, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dsc_dp_rc_buffer_size(i8 noundef zeroext %rc_buffer_block_size, i8 noundef zeroext %rc_buffer_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rc_buffer_size to i32
  %add = shl nuw nsw i32 %conv, 10
  %mul = add nuw nsw i32 %add, 1024
  %0 = zext i8 %rc_buffer_block_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rc_buffer_block_size, label %sw.default [
    i8 0, label %entry.cleanup_crit_edge
    i8 1, label %sw.bb3
    i8 2, label %sw.bb5
    i8 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul4 = shl nuw nsw i32 %mul, 2
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul6 = shl nuw nsw i32 %mul, 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul8 = shl nuw nsw i32 %mul, 6
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ %mul8, %sw.bb7 ], [ %mul6, %sw.bb5 ], [ %mul4, %sw.bb3 ], [ %mul, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dsc_pps_payload_pack(ptr noundef writeonly %pps_payload, ptr noundef readonly %dsc_cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pps_payload, i32 0, i32 128)
  %dsc_version_minor = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 35
  %1 = ptrtoint ptr %dsc_version_minor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dsc_version_minor, align 2
  %dsc_version_major = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 36
  %3 = ptrtoint ptr %dsc_version_major to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dsc_version_major, align 1
  %shl = shl i8 %4, 4
  %or = or i8 %shl, %2
  %5 = ptrtoint ptr %pps_payload to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %pps_payload, align 1
  %6 = ptrtoint ptr %dsc_cfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dsc_cfg, align 2
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %bits_per_component to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_component, align 1
  %shl5 = shl i8 %9, 4
  %or6 = or i8 %shl5, %7
  %pps_3 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 3
  %10 = ptrtoint ptr %pps_3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or6, ptr %pps_3, align 1
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 11
  %11 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bits_per_pixel, align 2
  %13 = lshr i16 %12, 8
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 3
  %vbr_enable = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 31
  %16 = ptrtoint ptr %vbr_enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vbr_enable, align 2, !range !19
  %18 = shl nuw nsw i8 %17, 2
  %or11 = or i8 %15, %18
  %simple_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 6
  %19 = ptrtoint ptr %simple_422 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %simple_422, align 2, !range !19
  %21 = shl nuw nsw i8 %20, 3
  %or15 = or i8 %or11, %21
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 2
  %22 = ptrtoint ptr %convert_rgb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %convert_rgb, align 2, !range !19
  %24 = shl nuw nsw i8 %23, 4
  %or19 = or i8 %or15, %24
  %block_pred_enable = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 17
  %25 = ptrtoint ptr %block_pred_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %block_pred_enable, align 2, !range !19
  %27 = shl nuw nsw i8 %26, 5
  %or23 = or i8 %or19, %27
  %pps_4 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 4
  %28 = ptrtoint ptr %pps_4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or23, ptr %pps_4, align 1
  %29 = load i16, ptr %bits_per_pixel, align 2
  %conv28 = trunc i16 %29 to i8
  %bits_per_pixel_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 5
  %30 = ptrtoint ptr %bits_per_pixel_low to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv28, ptr %bits_per_pixel_low, align 1
  %pic_height = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 8
  %31 = ptrtoint ptr %pic_height to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pic_height, align 2
  %pic_height29 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 6
  %33 = ptrtoint ptr %pic_height29 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %pic_height29, align 1
  %pic_width = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 7
  %34 = ptrtoint ptr %pic_width to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pic_width, align 2
  %pic_width30 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 7
  %36 = ptrtoint ptr %pic_width30 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %pic_width30, align 1
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 5
  %37 = ptrtoint ptr %slice_height to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %slice_height, align 2
  %slice_height31 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 8
  %39 = ptrtoint ptr %slice_height31 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %slice_height31, align 1
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 4
  %40 = ptrtoint ptr %slice_width to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %slice_width, align 2
  %slice_width32 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 9
  %42 = ptrtoint ptr %slice_width32 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %slice_width32, align 1
  %slice_chunk_size = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 33
  %43 = ptrtoint ptr %slice_chunk_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %slice_chunk_size, align 2
  %chunk_size = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 10
  %45 = ptrtoint ptr %chunk_size to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %chunk_size, align 1
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 15
  %46 = ptrtoint ptr %initial_xmit_delay to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %initial_xmit_delay, align 2
  %48 = lshr i16 %47, 8
  %49 = trunc i16 %48 to i8
  %conv36 = and i8 %49, 3
  %initial_xmit_delay_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 11
  %50 = ptrtoint ptr %initial_xmit_delay_high to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv36, ptr %initial_xmit_delay_high, align 1
  %51 = load i16, ptr %initial_xmit_delay, align 2
  %conv40 = trunc i16 %51 to i8
  %initial_xmit_delay_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 12
  %52 = ptrtoint ptr %initial_xmit_delay_low to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv40, ptr %initial_xmit_delay_low, align 1
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 16
  %53 = ptrtoint ptr %initial_dec_delay to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %initial_dec_delay, align 2
  %initial_dec_delay41 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 13
  %55 = ptrtoint ptr %initial_dec_delay41 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %initial_dec_delay41, align 1
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 25
  %56 = ptrtoint ptr %initial_scale_value to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %initial_scale_value, align 2
  %initial_scale_value42 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 15
  %58 = ptrtoint ptr %initial_scale_value42 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %initial_scale_value42, align 1
  %scale_increment_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 27
  %59 = ptrtoint ptr %scale_increment_interval to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %scale_increment_interval, align 2
  %scale_increment_interval43 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 16
  %61 = ptrtoint ptr %scale_increment_interval43 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %scale_increment_interval43, align 1
  %scale_decrement_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 26
  %62 = ptrtoint ptr %scale_decrement_interval to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %scale_decrement_interval, align 2
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  %conv47 = and i8 %65, 15
  %scale_decrement_interval_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 17
  %66 = ptrtoint ptr %scale_decrement_interval_high to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv47, ptr %scale_decrement_interval_high, align 1
  %67 = load i16, ptr %scale_decrement_interval, align 2
  %conv51 = trunc i16 %67 to i8
  %scale_decrement_interval_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 18
  %68 = ptrtoint ptr %scale_decrement_interval_low to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv51, ptr %scale_decrement_interval_low, align 1
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 18
  %69 = ptrtoint ptr %first_line_bpg_offset to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %first_line_bpg_offset, align 1
  %first_line_bpg_offset52 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 20
  %71 = ptrtoint ptr %first_line_bpg_offset52 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %first_line_bpg_offset52, align 1
  %nfl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 28
  %72 = ptrtoint ptr %nfl_bpg_offset to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nfl_bpg_offset, align 2
  %nfl_bpg_offset53 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 21
  %74 = ptrtoint ptr %nfl_bpg_offset53 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %nfl_bpg_offset53, align 1
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 29
  %75 = ptrtoint ptr %slice_bpg_offset to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %slice_bpg_offset, align 2
  %slice_bpg_offset54 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 22
  %77 = ptrtoint ptr %slice_bpg_offset54 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %slice_bpg_offset54, align 1
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 19
  %78 = ptrtoint ptr %initial_offset to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %initial_offset, align 2
  %initial_offset55 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 23
  %80 = ptrtoint ptr %initial_offset55 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %initial_offset55, align 1
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 30
  %81 = ptrtoint ptr %final_offset to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %final_offset, align 2
  %final_offset56 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 24
  %83 = ptrtoint ptr %final_offset56 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %final_offset56, align 1
  %flatness_min_qp = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 23
  %84 = ptrtoint ptr %flatness_min_qp to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flatness_min_qp, align 2
  %flatness_min_qp57 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 25
  %86 = ptrtoint ptr %flatness_min_qp57 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %flatness_min_qp57, align 1
  %flatness_max_qp = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 24
  %87 = ptrtoint ptr %flatness_max_qp to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flatness_max_qp, align 1
  %flatness_max_qp58 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 26
  %89 = ptrtoint ptr %flatness_max_qp58 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %flatness_max_qp58, align 1
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 22
  %90 = ptrtoint ptr %rc_model_size to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %rc_model_size, align 2
  %rc_model_size59 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 27
  %92 = ptrtoint ptr %rc_model_size59 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %rc_model_size59, align 1
  %rc_edge_factor = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 28
  %93 = ptrtoint ptr %rc_edge_factor to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 6, ptr %rc_edge_factor, align 1
  %rc_quant_incr_limit0 = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 14
  %94 = ptrtoint ptr %rc_quant_incr_limit0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rc_quant_incr_limit0, align 2
  %rc_quant_incr_limit060 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 29
  %96 = ptrtoint ptr %rc_quant_incr_limit060 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %rc_quant_incr_limit060, align 1
  %rc_quant_incr_limit1 = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 13
  %97 = ptrtoint ptr %rc_quant_incr_limit1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rc_quant_incr_limit1, align 1
  %rc_quant_incr_limit161 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 30
  %99 = ptrtoint ptr %rc_quant_incr_limit161 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %rc_quant_incr_limit161, align 1
  %rc_tgt_offset = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 31
  %100 = ptrtoint ptr %rc_tgt_offset to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 51, ptr %rc_tgt_offset, align 1
  %arrayidx = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 0
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx, align 2
  %conv63 = trunc i16 %102 to i8
  %arrayidx65 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 0
  %103 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv63, ptr %arrayidx65, align 1
  %arrayidx.1 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 1
  %104 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.1, align 2
  %conv63.1 = trunc i16 %105 to i8
  %arrayidx65.1 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 1
  %106 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv63.1, ptr %arrayidx65.1, align 1
  %arrayidx.2 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 2
  %107 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx.2, align 2
  %conv63.2 = trunc i16 %108 to i8
  %arrayidx65.2 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 2
  %109 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv63.2, ptr %arrayidx65.2, align 1
  %arrayidx.3 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 3
  %110 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.3, align 2
  %conv63.3 = trunc i16 %111 to i8
  %arrayidx65.3 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 3
  %112 = ptrtoint ptr %arrayidx65.3 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv63.3, ptr %arrayidx65.3, align 1
  %arrayidx.4 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 4
  %113 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx.4, align 2
  %conv63.4 = trunc i16 %114 to i8
  %arrayidx65.4 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 4
  %115 = ptrtoint ptr %arrayidx65.4 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv63.4, ptr %arrayidx65.4, align 1
  %arrayidx.5 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 5
  %116 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx.5, align 2
  %conv63.5 = trunc i16 %117 to i8
  %arrayidx65.5 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 5
  %118 = ptrtoint ptr %arrayidx65.5 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv63.5, ptr %arrayidx65.5, align 1
  %arrayidx.6 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 6
  %119 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.6, align 2
  %conv63.6 = trunc i16 %120 to i8
  %arrayidx65.6 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 6
  %121 = ptrtoint ptr %arrayidx65.6 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv63.6, ptr %arrayidx65.6, align 1
  %arrayidx.7 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 7
  %122 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx.7, align 2
  %conv63.7 = trunc i16 %123 to i8
  %arrayidx65.7 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 7
  %124 = ptrtoint ptr %arrayidx65.7 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv63.7, ptr %arrayidx65.7, align 1
  %arrayidx.8 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 8
  %125 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx.8, align 2
  %conv63.8 = trunc i16 %126 to i8
  %arrayidx65.8 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 8
  %127 = ptrtoint ptr %arrayidx65.8 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv63.8, ptr %arrayidx65.8, align 1
  %arrayidx.9 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 9
  %128 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.9, align 2
  %conv63.9 = trunc i16 %129 to i8
  %arrayidx65.9 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 9
  %130 = ptrtoint ptr %arrayidx65.9 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv63.9, ptr %arrayidx65.9, align 1
  %arrayidx.10 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 10
  %131 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx.10, align 2
  %conv63.10 = trunc i16 %132 to i8
  %arrayidx65.10 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 10
  %133 = ptrtoint ptr %arrayidx65.10 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv63.10, ptr %arrayidx65.10, align 1
  %arrayidx.11 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 11
  %134 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.11, align 2
  %conv63.11 = trunc i16 %135 to i8
  %arrayidx65.11 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 11
  %136 = ptrtoint ptr %arrayidx65.11 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv63.11, ptr %arrayidx65.11, align 1
  %arrayidx.12 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 12
  %137 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.12, align 2
  %conv63.12 = trunc i16 %138 to i8
  %arrayidx65.12 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 12
  %139 = ptrtoint ptr %arrayidx65.12 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv63.12, ptr %arrayidx65.12, align 1
  %arrayidx.13 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 20, i32 13
  %140 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx.13, align 2
  %conv63.13 = trunc i16 %141 to i8
  %arrayidx65.13 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 32, i32 13
  %142 = ptrtoint ptr %arrayidx65.13 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv63.13, ptr %arrayidx65.13, align 1
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %entry
  %i.1182 = phi i32 [ %inc85, %for.body69.for.body69_crit_edge ], [ 0, %entry ]
  %arrayidx70 = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 21, i32 %i.1182
  %143 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %144 to i16
  %shl72 = shl i16 %conv71, 11
  %range_max_qp = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 21, i32 %i.1182, i32 1
  %145 = ptrtoint ptr %range_max_qp to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %range_max_qp, align 1
  %conv75 = zext i8 %146 to i16
  %shl76 = shl nuw nsw i16 %conv75, 6
  %or77 = or i16 %shl76, %shl72
  %range_bpg_offset = getelementptr %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 21, i32 %i.1182, i32 2
  %147 = ptrtoint ptr %range_bpg_offset to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %range_bpg_offset, align 1
  %conv80 = zext i8 %148 to i16
  %or81 = or i16 %or77, %conv80
  %arrayidx83 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 33, i32 %i.1182
  %149 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 2)
  store i16 %or81, ptr %arrayidx83, align 1
  %inc85 = add nuw nsw i32 %i.1182, 1
  %exitcond.not = icmp eq i32 %inc85, 15
  br i1 %exitcond.not, label %for.end86, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body69

for.end86:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #7
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 37
  %150 = ptrtoint ptr %native_422 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %native_422, align 2, !range !19
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 38
  %152 = ptrtoint ptr %native_420 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %native_420, align 1, !range !19
  %154 = shl nuw nsw i8 %153, 1
  %or92180 = or i8 %154, %151
  %native_422_420 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 34
  %155 = ptrtoint ptr %native_422_420 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %or92180, ptr %native_422_420, align 1
  %second_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 39
  %156 = ptrtoint ptr %second_line_bpg_offset to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %second_line_bpg_offset, align 2
  %second_line_bpg_offset94 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 35
  %158 = ptrtoint ptr %second_line_bpg_offset94 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %second_line_bpg_offset94, align 1
  %nsl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 40
  %159 = ptrtoint ptr %nsl_bpg_offset to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %nsl_bpg_offset, align 2
  %nsl_bpg_offset95 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 36
  %161 = ptrtoint ptr %nsl_bpg_offset95 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 %160, ptr %nsl_bpg_offset95, align 1
  %second_line_offset_adj = getelementptr inbounds %struct.drm_dsc_config, ptr %dsc_cfg, i32 0, i32 41
  %162 = ptrtoint ptr %second_line_offset_adj to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %second_line_offset_adj, align 2
  %second_line_offset_adj96 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %pps_payload, i32 0, i32 37
  %164 = ptrtoint ptr %second_line_offset_adj96 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %second_line_offset_adj96, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dsc_compute_rc_parameters(ptr noundef %vdsc_cfg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 38
  %0 = ptrtoint ptr %native_420 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %native_420, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 37
  %2 = ptrtoint ptr %native_422 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %native_422, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 4
  %4 = ptrtoint ptr %slice_width to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slice_width, align 2
  %6 = lshr i16 %5, 1
  %div = zext i16 %6 to i32
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 11
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bits_per_pixel, align 2
  %conv6 = zext i16 %8 to i32
  %mul = mul nuw nsw i32 %div, %conv6
  %sub8 = add nuw nsw i32 %mul, 127
  %div9295296 = lshr i32 %sub8, 7
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %slice_width11 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %slice_width11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %slice_width11, align 2
  %conv12 = zext i16 %10 to i32
  %bits_per_pixel18 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 11
  %11 = ptrtoint ptr %bits_per_pixel18 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bits_per_pixel18, align 2
  %conv19 = zext i16 %12 to i32
  %mul20 = mul nuw i32 %conv19, %conv12
  %sub22 = add nuw i32 %mul20, 127
  %div23 = sdiv i32 %sub22, 128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %div23.sink = phi i32 [ %div23, %if.else ], [ %div9295296, %if.then ]
  %groups_per_line.0.in.in = phi i32 [ %conv12, %if.else ], [ %div, %if.then ]
  %conv24 = trunc i32 %div23.sink to i16
  %slice_chunk_size25 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 33
  %13 = ptrtoint ptr %slice_chunk_size25 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv24, ptr %slice_chunk_size25, align 2
  %groups_per_line.0.in = add nuw nsw i32 %groups_per_line.0.in.in, 2
  %groups_per_line.0 = udiv i32 %groups_per_line.0.in, 3
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 2
  %14 = ptrtoint ptr %convert_rgb to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %convert_rgb, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %if.else35, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mux_word_size = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 32
  %16 = ptrtoint ptr %mux_word_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mux_word_size, align 1
  %conv28 = zext i8 %17 to i32
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %bits_per_component to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits_per_component, align 1
  %conv29 = zext i8 %19 to i32
  %mul30 = shl nuw nsw i32 %conv29, 2
  %add31 = add nuw nsw i32 %conv28, 4
  %add32 = add nuw nsw i32 %add31, %mul30
  %20 = mul nuw nsw i32 %add32, 3
  %mul34 = add nsw i32 %20, -6
  br label %land.rhs.lr.ph

if.else35:                                        ; preds = %if.end
  %native_42236 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 37
  %21 = ptrtoint ptr %native_42236 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %native_42236, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool37.not = icmp eq i8 %22, 0
  %mux_word_size54 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 32
  %23 = ptrtoint ptr %mux_word_size54 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mux_word_size54, align 1
  %conv55 = zext i8 %24 to i32
  br i1 %tobool37.not, label %if.else53, label %if.then38

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %mul41 = shl nuw nsw i32 %conv55, 2
  %bits_per_component42 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 1
  %25 = ptrtoint ptr %bits_per_component42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bits_per_component42, align 1
  %conv43 = zext i8 %26 to i32
  %reass.mul = shl nuw nsw i32 %conv43, 4
  %add51 = or i32 %mul41, 2
  %sub52 = add nuw nsw i32 %add51, %reass.mul
  br label %land.rhs.lr.ph

if.else53:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %mul56 = mul nuw nsw i32 %conv55, 3
  %bits_per_component57 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 1
  %27 = ptrtoint ptr %bits_per_component57 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_component57, align 1
  %conv58 = zext i8 %28 to i32
  %reass.mul297 = mul nuw nsw i32 %conv58, 12
  %add66 = add nuw nsw i32 %mul56, 2
  %sub67 = add nuw nsw i32 %add66, %reass.mul297
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.else53, %if.then38, %if.then27
  %num_extra_mux_bits.0 = phi i32 [ %mul34, %if.then27 ], [ %sub52, %if.then38 ], [ %sub67, %if.else53 ]
  %slice_chunk_size70 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 33
  %29 = ptrtoint ptr %slice_chunk_size70 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %slice_chunk_size70, align 2
  %conv71 = zext i16 %30 to i32
  %mul72 = shl nuw nsw i32 %conv71, 3
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 5
  %31 = ptrtoint ptr %slice_height to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %slice_height, align 2
  %conv73 = zext i16 %32 to i32
  %mul74 = mul i32 %mul72, %conv73
  %mux_word_size77 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 32
  %33 = ptrtoint ptr %mux_word_size77 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mux_word_size77, align 1
  %conv78 = zext i8 %34 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %num_extra_mux_bits.1299 = phi i32 [ %num_extra_mux_bits.0, %land.rhs.lr.ph ], [ %dec, %while.body.land.rhs_crit_edge ]
  %sub76 = sub i32 %mul74, %num_extra_mux_bits.1299
  %rem = urem i32 %sub76, %conv78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool79.not = icmp eq i32 %rem, 0
  br i1 %tobool79.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %num_extra_mux_bits.1299, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %num_extra_mux_bits.1.lcssa = phi i32 [ %num_extra_mux_bits.1299, %land.rhs.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 25
  %35 = ptrtoint ptr %initial_scale_value to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %initial_scale_value, align 2
  %conv80 = zext i8 %36 to i32
  %sub81 = add nsw i32 %conv80, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %groups_per_line.0, i32 %sub81)
  %cmp82 = icmp ult i32 %groups_per_line.0, %sub81
  br i1 %cmp82, label %if.then84, label %while.end.if.end88_crit_edge

while.end.if.end88_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then84:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %37 = trunc i32 %groups_per_line.0 to i8
  %conv86 = add i8 %37, 8
  %38 = ptrtoint ptr %initial_scale_value to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv86, ptr %initial_scale_value, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %while.end.if.end88_crit_edge
  %39 = phi i8 [ %conv86, %if.then84 ], [ %36, %while.end.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %39)
  %cmp91 = icmp ugt i8 %39, 8
  br i1 %cmp91, label %if.then93, label %if.end88.if.end101_crit_edge

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %conv90 = zext i8 %39 to i32
  %sub96 = add nsw i32 %conv90, -8
  %div97 = udiv i32 %groups_per_line.0, %sub96
  %conv98 = trunc i32 %div97 to i16
  br label %if.end101

if.end101:                                        ; preds = %if.then93, %if.end88.if.end101_crit_edge
  %.sink = phi i16 [ %conv98, %if.then93 ], [ 4095, %if.end88.if.end101_crit_edge ]
  %40 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 26
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink, ptr %40, align 2
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 22
  %42 = ptrtoint ptr %rc_model_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rc_model_size, align 2
  %conv102 = zext i16 %43 to i32
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 15
  %44 = ptrtoint ptr %initial_xmit_delay to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %initial_xmit_delay, align 2
  %conv103 = zext i16 %45 to i32
  %bits_per_pixel104 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 11
  %46 = ptrtoint ptr %bits_per_pixel104 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bits_per_pixel104, align 2
  %conv105 = zext i16 %47 to i32
  %mul106 = mul nuw i32 %conv105, %conv103
  %add107 = add nuw i32 %mul106, 8
  %div108.neg = sdiv i32 %add107, -16
  %sub109 = add i32 %num_extra_mux_bits.1.lcssa, %conv102
  %add110 = add i32 %sub109, %div108.neg
  %conv111 = trunc i32 %add110 to i16
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 30
  %48 = ptrtoint ptr %final_offset to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv111, ptr %final_offset, align 2
  %conv113 = and i32 %add110, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv113, i32 %conv102)
  %cmp116.not = icmp ult i32 %conv113, %conv102
  br i1 %cmp116.not, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #5
  br label %cleanup

if.end119:                                        ; preds = %if.end101
  %mul122 = shl nuw nsw i32 %conv102, 3
  %sub127 = sub nsw i32 %conv102, %conv113
  %div128 = sdiv i32 %mul122, %sub127
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp131 = icmp ugt i16 %32, 1
  br i1 %cmp131, label %if.then133, label %if.end119.if.end147_crit_edge

if.end119.if.end147_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

if.then133:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 18
  %49 = ptrtoint ptr %first_line_bpg_offset to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %first_line_bpg_offset, align 1
  %conv134 = zext i8 %50 to i32
  %shl = shl nuw nsw i32 %conv134, 11
  %sub137 = add nsw i32 %conv73, -1
  %add138 = add nsw i32 %conv73, -2
  %sub139 = add nsw i32 %add138, %shl
  %div143 = sdiv i32 %sub139, %sub137
  %conv144 = trunc i32 %div143 to i16
  br label %if.end147

if.end147:                                        ; preds = %if.then133, %if.end119.if.end147_crit_edge
  %.sink301 = phi i16 [ %conv144, %if.then133 ], [ 0, %if.end119.if.end147_crit_edge ]
  %51 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 28
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink301, ptr %51, align 2
  %mul150 = mul nuw i32 %groups_per_line.0, %conv73
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 19
  %53 = ptrtoint ptr %initial_offset to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %initial_offset, align 2
  %conv153 = zext i16 %54 to i32
  %sub154 = sub nsw i32 %conv102, %conv153
  %add155 = add i32 %sub154, %num_extra_mux_bits.1.lcssa
  %shl156 = shl i32 %add155, 11
  %add157 = add i32 %mul150, -1
  %sub158 = add i32 %add157, %shl156
  %div159 = udiv i32 %sub158, %mul150
  %conv160 = trunc i32 %div159 to i16
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 29
  %55 = ptrtoint ptr %slice_bpg_offset to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv160, ptr %slice_bpg_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div128)
  %cmp161 = icmp ugt i32 %div128, 9
  br i1 %cmp161, label %if.then163, label %if.end147.if.end178_crit_edge

if.end147.if.end178_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end178

if.then163:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  %conv165 = shl i32 %add110, 11
  %mul166 = and i32 %conv165, 134215680
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %51, align 2
  %conv168 = zext i16 %57 to i32
  %conv170 = and i32 %div159, 65535
  %add171 = add nuw nsw i32 %conv170, %conv168
  %sub172 = add nsw i32 %div128, -9
  %mul173 = mul i32 %add171, %sub172
  %div174 = udiv i32 %mul166, %mul173
  %conv175 = trunc i32 %div174 to i16
  br label %if.end178

if.end178:                                        ; preds = %if.then163, %if.end147.if.end178_crit_edge
  %.sink302 = phi i16 [ %conv175, %if.then163 ], [ 0, %if.end147.if.end178_crit_edge ]
  %58 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 27
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.sink302, ptr %58, align 2
  %sub190 = add nuw i32 %mul106, 15
  %div191 = sdiv i32 %sub190, 16
  %add192 = add nsw i32 %sub154, %div191
  %first_line_bpg_offset193 = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 18
  %60 = ptrtoint ptr %first_line_bpg_offset193 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %first_line_bpg_offset193, align 1
  %conv194 = zext i8 %61 to i32
  %mul195 = mul nuw nsw i32 %groups_per_line.0, %conv194
  %add196 = add nsw i32 %add192, %mul195
  %mul197 = shl i32 %add196, 4
  %add200 = add nsw i32 %conv105, -1
  %sub201 = add i32 %add200, %mul197
  %div204 = udiv i32 %sub201, %conv105
  %mul207 = mul i32 %div204, %conv105
  %div208294 = lshr i32 %mul207, 4
  %conv209 = trunc i32 %div208294 to i16
  %rc_bits = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 34
  %62 = ptrtoint ptr %rc_bits to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv209, ptr %rc_bits, align 2
  %63 = trunc i32 %div204 to i16
  %conv213 = sub i16 %63, %45
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %vdsc_cfg, i32 0, i32 16
  %64 = ptrtoint ptr %initial_dec_delay to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv213, ptr %initial_dec_delay, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %if.then118
  %retval.0 = phi i32 [ -34, %if.then118 ], [ 0, %if.end178 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_drm_dsc_dp_pps_header_init, !1, !"__ksymtab_drm_dsc_dp_pps_header_init", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_dsc.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_drm_dsc_dp_rc_buffer_size, !3, !"__ksymtab_drm_dsc_dp_rc_buffer_size", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_dsc.c", i32 77, i32 1}
!4 = !{ptr @__ksymtab_drm_dsc_pps_payload_pack, !5, !"__ksymtab_drm_dsc_pps_payload_pack", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_dsc.c", i32 270, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_dsc.c", i32 346, i32 3}
!8 = !{ptr @__ksymtab_drm_dsc_compute_rc_parameters, !9, !"__ksymtab_drm_dsc_compute_rc_parameters", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_dsc.c", i32 408, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
