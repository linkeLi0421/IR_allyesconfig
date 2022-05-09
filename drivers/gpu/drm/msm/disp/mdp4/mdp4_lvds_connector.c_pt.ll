; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_lvds_connector = type { %struct.drm_connector, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@mdp4_lvds_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @mdp4_lvds_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @mdp4_lvds_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdp4_lvds_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @mdp4_lvds_connector_get_modes, ptr null, ptr @mdp4_lvds_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"requested=%ld, actual=%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"mdp4_lvds_connector_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 78, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [33 x i8] c"mdp4_lvds_connector_helper_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 87, i32 48 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [55 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 70, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mdp4_lvds_connector_funcs, ptr @mdp4_lvds_connector_helper_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_lvds_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_lvds_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_lvds_connector_init(ptr noundef %dev, ptr noundef %panel_node, ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1056) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %encoder2 = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %encoder2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %encoder, ptr %encoder2, align 8
  %panel_node3 = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %panel_node3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %panel_node, ptr %panel_node3, align 4
  %call4 = tail call i32 @drm_connector_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mdp4_lvds_connector_funcs, i32 noundef 7) #3
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mdp4_lvds_connector_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %4 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %polled, align 4
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %doublescan_allowed, align 1
  %call5 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call7.i.i, ptr noundef %encoder) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_lvds_connector_detect(ptr nocapture noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %panel_node = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %panel_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_node, align 4
  %call = tail call ptr @of_drm_find_panel(ptr noundef %3) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select, ptr %panel, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 8
  %tobool8.not = icmp eq ptr %6, null
  %cond = select i1 %tobool8.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_lvds_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #3
  tail call void @kfree(ptr noundef %connector) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_lvds_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %panel1 = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %panel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %1, ptr noundef %connector) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_lvds_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder1 = getelementptr inbounds %struct.mdp4_lvds_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %encoder1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder1, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul = mul i32 %3, 1000
  %call = tail call i32 @mdp4_lcdc_round_pixclk(ptr noundef %1, i32 noundef %mul) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %mul, i32 noundef %call) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %mul)
  %cmp.not = icmp eq i32 %call, %mul
  %. = select i1 %cmp.not, i32 0, i32 17
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_lcdc_round_pixclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mdp4_lvds_connector_funcs, !1, !"mdp4_lvds_connector_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c", i32 78, i32 41}
!2 = !{ptr @mdp4_lvds_connector_helper_funcs, !3, !"mdp4_lvds_connector_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c", i32 87, i32 48}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c", i32 70, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
