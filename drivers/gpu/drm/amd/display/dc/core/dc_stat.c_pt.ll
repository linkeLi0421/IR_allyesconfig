; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_stat.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.64, %struct.anon.65, i8, i8, i64 }
%struct.anon.64 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.70 }
%struct.anon.70 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dmub_notification = type { i32, i8, i8, i8, %union.anon.71 }
%union.anon.71 = type { i32, [16 x i8] }

@dc_stat_get_dmub_notification.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stat.c\00", [40 x i8] zeroinitializer }, align 32
@dc_stat_get_dmub_dataout.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stat.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 63, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stat_get_dmub_notification(ptr noundef %dc, ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @dmub_srv_stat_get_notification(ptr noundef %5, ptr noundef %notify) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.do.end42_crit_edge, label %land.rhs

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @dc_stat_get_dmub_notification.__already_done, align 1
  br i1 %.b61, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !14

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @dc_stat_get_dmub_notification.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef null) #2
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #2
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  %6 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %notify, align 4
  %.off = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then49, label %do.end42.if.end52_crit_edge

do.end42.if.end52_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.then49:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #4
  %link_index = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 1
  %8 = ptrtoint ptr %link_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_index, align 4
  %call50 = tail call zeroext i8 @get_link_index_from_dpia_port_index(ptr noundef %dc, i8 noundef zeroext %9) #2
  %10 = ptrtoint ptr %link_index to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call50, ptr %link_index, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.end42.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_stat_get_notification(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_link_index_from_dpia_port_index(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stat_get_dmub_dataout(ptr nocapture noundef readonly %dc, ptr noundef %dataout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @dmub_srv_get_gpint_dataout(ptr noundef %5, ptr noundef %dataout) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.do.end42_crit_edge, label %land.rhs

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @dc_stat_get_dmub_dataout.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !14

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @dc_stat_get_dmub_dataout.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #2
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #2
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_get_gpint_dataout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stat.c", i32 63, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stat.c", i32 95, i32 2}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
