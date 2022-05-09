; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/virtual/virtual_link_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/virtual/virtual_link_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.graphics_object_id = type { i32 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon, i32, i32, i8, i8, i8 }
%union.anon = type { i32 }

@virtual_lnk_enc_funcs = internal constant { %struct.link_encoder_funcs, [52 x i8] } { %struct.link_encoder_funcs { ptr null, ptr @virtual_link_encoder_validate_output_with_stream, ptr @virtual_link_encoder_hw_init, ptr @virtual_link_encoder_setup, ptr @virtual_link_encoder_enable_tmds_output, ptr @virtual_link_encoder_enable_dp_output, ptr @virtual_link_encoder_enable_dp_mst_output, ptr null, ptr @virtual_link_encoder_disable_output, ptr @virtual_link_encoder_dp_set_lane_settings, ptr @virtual_link_encoder_dp_set_phy_pattern, ptr @virtual_link_encoder_update_mst_stream_allocation_table, ptr null, ptr null, ptr @virtual_link_encoder_connect_dig_be_to_fe, ptr null, ptr null, ptr null, ptr null, ptr @virtual_link_encoder_destroy, ptr null, ptr null, ptr null, ptr null, ptr @virtual_link_encoder_get_max_link_cap, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__const.virtual_link_encoder_get_max_link_cap.max_link_cap = private unnamed_addr constant { i32, i32, i32, i8, i8, i8, [1 x i8] } { i32 4, i32 10, i32 16, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer }, align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"virtual_lnk_enc_funcs\00", align 1
@___asan_gen_.2 = private constant [75 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/virtual/virtual_link_encoder.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 96, i32 40 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @virtual_lnk_enc_funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtual_lnk_enc_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @virtual_link_encoder_construct(ptr nocapture noundef writeonly %enc, ptr nocapture noundef readonly %init_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @virtual_lnk_enc_funcs, ptr %enc, align 4
  %ctx = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %ctx1 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %3 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %ctx1, align 4
  %id = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 3
  %encoder = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 3
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encoder, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id, align 4
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 2
  %7 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hpd_source, align 4
  %hpd_source2 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %9 = ptrtoint ptr %hpd_source2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hpd_source2, align 4
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %connector3 = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 1
  %10 = ptrtoint ptr %connector3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connector3, align 4
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %connector, align 4
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 5
  %13 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transmitter, align 4
  %transmitter4 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %15 = ptrtoint ptr %transmitter4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %transmitter4, align 4
  %output_signals = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 5
  %16 = ptrtoint ptr %output_signals to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %output_signals, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 6
  %17 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %preferred_engine, align 4
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @virtual_link_encoder_validate_output_with_stream(ptr nocapture noundef readnone %enc, ptr nocapture noundef readnone %stream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_hw_init(ptr nocapture noundef %enc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_setup(ptr nocapture noundef %enc, i32 noundef %signal) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_enable_tmds_output(ptr nocapture noundef %enc, i32 noundef %clock_source, i32 noundef %color_depth, i32 noundef %signal, i32 noundef %pixel_clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_enable_dp_output(ptr nocapture noundef %enc, ptr nocapture noundef %link_settings, i32 noundef %clock_source) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_enable_dp_mst_output(ptr nocapture noundef %enc, ptr nocapture noundef %link_settings, i32 noundef %clock_source) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_disable_output(ptr nocapture noundef %link_enc, i32 noundef %signal) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_dp_set_lane_settings(ptr nocapture noundef %enc, ptr nocapture noundef %link_settings) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_dp_set_phy_pattern(ptr nocapture noundef %enc, ptr nocapture noundef %param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_update_mst_stream_allocation_table(ptr nocapture noundef %enc, ptr nocapture noundef %table) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_connect_dig_be_to_fe(ptr nocapture noundef %enc, i32 noundef %engine, i1 noundef zeroext %connect) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtual_link_encoder_destroy(ptr nocapture noundef %enc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %enc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtual_link_encoder_get_max_link_cap(ptr nocapture noundef readnone %enc, ptr nocapture noundef writeonly %link_settings) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %link_settings, ptr @__const.virtual_link_encoder_get_max_link_cap.max_link_cap, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @virtual_lnk_enc_funcs, !1, !"virtual_lnk_enc_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/virtual/virtual_link_encoder.c", i32 96, i32 40}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
