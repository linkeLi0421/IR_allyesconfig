; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@exynos_plane_funcs = internal global { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @exynos_drm_plane_reset, ptr null, ptr @exynos_drm_plane_duplicate_state, ptr @exynos_drm_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to initialize plane\0A\00", [60 x i8] zeroinitializer }, align 32
@plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @exynos_plane_atomic_check, ptr @exynos_plane_atomic_update, ptr @exynos_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"plane : offset_x/y(%d,%d), width/height(%d,%d)\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* unsupported pixel format modifier\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scaling mode is not supported\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 288230376151711745]
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"exynos_plane_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 166, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 315, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"plane_helper_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 283, i32 44 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 117, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 192, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [45 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_plane.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 226, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @exynos_plane_funcs, ptr @.str, ptr @.str.1, ptr @plane_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_plane_init(ptr noundef %dev, ptr noundef %exynos_plane, i32 noundef %index, ptr noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  %shl = shl nuw i32 1, %1
  %pixel_formats = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pixel_formats, align 4
  %num_pixel_formats = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %num_pixel_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pixel_formats, align 4
  %type = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef %exynos_plane, i32 noundef %shl, ptr noundef nonnull @exynos_plane_funcs, ptr noundef %3, i32 noundef %5, ptr noundef null, i32 noundef %7, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %exynos_plane, i32 0, i32 18
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @plane_helper_funcs, ptr %helper_private.i, align 8
  %index4 = getelementptr inbounds %struct.exynos_drm_plane, ptr %exynos_plane, i32 0, i32 2
  %11 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %index, ptr %index4, align 4
  %config5 = getelementptr inbounds %struct.exynos_drm_plane, ptr %exynos_plane, i32 0, i32 1
  %12 = ptrtoint ptr %config5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %config, ptr %config5, align 8
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config, align 4
  %capabilities = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %config, i32 0, i32 4
  %15 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %exynos_plane, i32 noundef %14) #4
  br label %exynos_plane_attach_zpos_property.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @drm_plane_create_zpos_property(ptr noundef %exynos_plane, i32 noundef %14, i32 noundef 0, i32 noundef 4) #4
  br label %exynos_plane_attach_zpos_property.exit

exynos_plane_attach_zpos_property.exit:           ; preds = %if.else.i, %if.then.i
  %17 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %capabilities, align 4
  %and9 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %exynos_plane_attach_zpos_property.exit.if.end13_crit_edge, label %if.then11

exynos_plane_attach_zpos_property.exit.if.end13_crit_edge: ; preds = %exynos_plane_attach_zpos_property.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %exynos_plane_attach_zpos_property.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef %exynos_plane, i32 noundef 7) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %exynos_plane_attach_zpos_property.exit.if.end13_crit_edge
  %19 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capabilities, align 4
  %and15 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %exynos_plane) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.then
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 164) #7
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #4
  %config = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %zpos8 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %zpos8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %zpos8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exynos_drm_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %old_state) #4
  tail call void @kfree(ptr noundef %old_state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %10 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2.i, align 4
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i.i, align 4
  %state1.i.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state1.i.i, align 4
  %crtc_x3.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %crtc_x3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_x3.i, align 4
  %crtc_y4.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %crtc_y4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_y4.i, align 4
  %crtc_w5.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %crtc_w5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_w5.i, align 4
  %crtc_h6.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %crtc_h6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_h6.i, align 4
  %src_x7.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %src_x7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_x7.i, align 4
  %shr.i = lshr i32 %27, 16
  %src_y8.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %src_y8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_y8.i, align 4
  %shr9.i = lshr i32 %29, 16
  %src_w10.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %30 = ptrtoint ptr %src_w10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_w10.i, align 4
  %shr11.i = and i32 %31, -65536
  %src_h12.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %32 = ptrtoint ptr %src_h12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_h12.i, align 4
  %shr13.i = and i32 %33, -65536
  %div.i = udiv i32 %shr11.i, %23
  %h_ratio.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %h_ratio.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div.i, ptr %h_ratio.i, align 4
  %div15.i = udiv i32 %shr13.i, %25
  %v_ratio.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %v_ratio.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div15.i, ptr %v_ratio.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp slt i32 %19, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i = add i32 %23, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp1.i.i = icmp sgt i32 %add.i.i, 0
  %38 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 %conv.i) #4
  %spec.select.i.i = select i1 %cmp1.i.i, i32 %38, i32 0
  br label %exynos_plane_get_size.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp4.not.i.i = icmp ugt i32 %19, %conv.i
  br i1 %cmp4.not.i.i, label %if.else.i.i.exynos_plane_get_size.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i.exynos_plane_get_size.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_plane_get_size.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = sub nsw i32 %conv.i, %19
  %39 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %23) #4
  br label %exynos_plane_get_size.exit.i

exynos_plane_get_size.exit.i:                     ; preds = %if.then5.i.i, %if.else.i.i.exynos_plane_get_size.exit.i_crit_edge, %if.then.i.i
  %size.0.i.i = phi i32 [ %39, %if.then5.i.i ], [ 0, %if.else.i.i.exynos_plane_get_size.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 6
  %40 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vdisplay.i, align 2
  %conv17.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i107.i = icmp slt i32 %21, 1
  br i1 %cmp.i107.i, label %if.then.i111.i, label %if.else.i113.i

if.then.i111.i:                                   ; preds = %exynos_plane_get_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i108.i = add i32 %25, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i108.i)
  %cmp1.i109.i = icmp sgt i32 %add.i108.i, 0
  %42 = tail call i32 @llvm.umin.i32(i32 %add.i108.i, i32 %conv17.i) #4
  %spec.select.i110.i = select i1 %cmp1.i109.i, i32 %42, i32 0
  br label %exynos_plane_get_size.exit117.i

if.else.i113.i:                                   ; preds = %exynos_plane_get_size.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv17.i)
  %cmp4.not.i112.i = icmp ugt i32 %21, %conv17.i
  br i1 %cmp4.not.i112.i, label %if.else.i113.i.exynos_plane_get_size.exit117.i_crit_edge, label %if.then5.i115.i

if.else.i113.i.exynos_plane_get_size.exit117.i_crit_edge: ; preds = %if.else.i113.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_plane_get_size.exit117.i

if.then5.i115.i:                                  ; preds = %if.else.i113.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i114.i = sub nsw i32 %conv17.i, %21
  %43 = tail call i32 @llvm.umin.i32(i32 %sub.i114.i, i32 %25) #4
  br label %exynos_plane_get_size.exit117.i

exynos_plane_get_size.exit117.i:                  ; preds = %if.then5.i115.i, %if.else.i113.i.exynos_plane_get_size.exit117.i_crit_edge, %if.then.i111.i
  %size.0.i116.i = phi i32 [ %43, %if.then5.i115.i ], [ 0, %if.else.i113.i.exynos_plane_get_size.exit117.i_crit_edge ], [ %spec.select.i110.i, %if.then.i111.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp slt i32 %19, 0
  br i1 %cmp.i, label %if.then.i, label %exynos_plane_get_size.exit117.i.if.end23.i_crit_edge

exynos_plane_get_size.exit117.i.if.end23.i_crit_edge: ; preds = %exynos_plane_get_size.exit117.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then.i:                                        ; preds = %exynos_plane_get_size.exit117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i.i)
  %tobool.not.i = icmp eq i32 %size.0.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end23.i_crit_edge, label %if.then20.i

if.then.i.if.end23.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %44 = mul i32 %19, %div.i
  %mul.i = sub i32 0, %44
  %shr22.i = lshr i32 %mul.i, 16
  %add.i = add nuw nsw i32 %shr22.i, %shr.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then.i.if.end23.i_crit_edge, %exynos_plane_get_size.exit117.i.if.end23.i_crit_edge
  %src_x.1.i = phi i32 [ %shr.i, %exynos_plane_get_size.exit117.i.if.end23.i_crit_edge ], [ %add.i, %if.then20.i ], [ %shr.i, %if.then.i.if.end23.i_crit_edge ]
  %crtc_x.0.i = phi i32 [ %19, %exynos_plane_get_size.exit117.i.if.end23.i_crit_edge ], [ 0, %if.then20.i ], [ 0, %if.then.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24.i = icmp slt i32 %21, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.end23.i.exynos_plane_mode_set.exit_crit_edge

if.end23.i.exynos_plane_mode_set.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_plane_mode_set.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i116.i)
  %tobool27.not.i = icmp eq i32 %size.0.i116.i, 0
  br i1 %tobool27.not.i, label %if.then26.i.exynos_plane_mode_set.exit_crit_edge, label %if.then28.i

if.then26.i.exynos_plane_mode_set.exit_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_plane_mode_set.exit

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = mul i32 %21, %div15.i
  %mul31.i = sub i32 0, %45
  %shr32.i = lshr i32 %mul31.i, 16
  %add33.i = add nuw nsw i32 %shr32.i, %shr9.i
  br label %exynos_plane_mode_set.exit

exynos_plane_mode_set.exit:                       ; preds = %if.then28.i, %if.then26.i.exynos_plane_mode_set.exit_crit_edge, %if.end23.i.exynos_plane_mode_set.exit_crit_edge
  %crtc_y.0.i = phi i32 [ %21, %if.end23.i.exynos_plane_mode_set.exit_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.then26.i.exynos_plane_mode_set.exit_crit_edge ]
  %src_y.1.i = phi i32 [ %shr9.i, %if.end23.i.exynos_plane_mode_set.exit_crit_edge ], [ %add33.i, %if.then28.i ], [ %shr9.i, %if.then26.i.exynos_plane_mode_set.exit_crit_edge ]
  %src.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %src_x.1.i, ptr %src.i, align 4
  %y.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %src_y.1.i, ptr %y.i, align 4
  %mul38.i = mul i32 %size.0.i.i, %div.i
  %shr39.i = lshr i32 %mul38.i, 16
  %w.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr39.i, ptr %w.i, align 4
  %mul42.i = mul i32 %size.0.i116.i, %div15.i
  %shr43.i = lshr i32 %mul42.i, 16
  %h.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr43.i, ptr %h.i, align 4
  %crtc45.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %crtc45.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %crtc_x.0.i, ptr %crtc45.i, align 4
  %y48.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %y48.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %crtc_y.0.i, ptr %y48.i, align 4
  %w50.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %w50.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %size.0.i.i, ptr %w50.i, align 4
  %h52.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %5, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %h52.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %size.0.i116.i, ptr %h52.i, align 4
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %7, align 8
  %dev53.i = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev53.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %57, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %crtc_x.0.i, i32 noundef %crtc_y.0.i, i32 noundef %size.0.i.i, i32 noundef %size.0.i116.i) #4
  %config = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 1
  %58 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fb, align 4
  %modifier.i = getelementptr inbounds %struct.drm_framebuffer, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %modifier.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i64 %61, label %sw.default.i [
    i64 288230376151711745, label %sw.bb.i
    i64 0, label %exynos_plane_mode_set.exit.if.end6_crit_edge
  ]

exynos_plane_mode_set.exit.if.end6_crit_edge:     ; preds = %exynos_plane_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

sw.bb.i:                                          ; preds = %exynos_plane_mode_set.exit
  %62 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config, align 8
  %capabilities.i = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i20 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i20, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.end6_crit_edge

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.i:                                     ; preds = %exynos_plane_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %59, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %69, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end6:                                          ; preds = %sw.bb.i.if.end6_crit_edge, %exynos_plane_mode_set.exit.if.end6_crit_edge
  %70 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config, align 8
  %72 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crtc, align 4
  %capabilities.i22 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %71, i32 0, i32 4
  %74 = ptrtoint ptr %capabilities.i22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %capabilities.i22, align 4
  %and.i23 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %76 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %w.i, align 4
  %78 = ptrtoint ptr %w50.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %w50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.i26 = icmp eq i32 %77, %79
  %80 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %h.i, align 4
  %82 = ptrtoint ptr %h52.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %h52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp9.i = icmp eq i32 %81, %83
  %and13.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end24.i_crit_edge, label %land.lhs.true21.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

land.lhs.true21.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %h_ratio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %h_ratio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %85)
  %cmp15.i = icmp eq i32 %85, 32768
  %spec.select.i = select i1 %cmp15.i, i1 true, i1 %cmp.i26
  %86 = ptrtoint ptr %v_ratio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %v_ratio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %87)
  %cmp22.i = icmp eq i32 %87, 32768
  %spec.select43.i = select i1 %cmp22.i, i1 true, i1 %cmp9.i
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true21.i, %if.end.i.if.end24.i_crit_edge
  %width_ok.1.off045.i = phi i1 [ %spec.select.i, %land.lhs.true21.i ], [ %cmp.i26, %if.end.i.if.end24.i_crit_edge ]
  %height_ok.1.off0.i = phi i1 [ %spec.select43.i, %land.lhs.true21.i ], [ %cmp9.i, %if.end.i.if.end24.i_crit_edge ]
  %88 = select i1 %width_ok.1.off045.i, i1 %height_ok.1.off0.i, i1 false
  br i1 %88, label %if.end24.i.cleanup_crit_edge, label %if.end29.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %73, align 8
  %dev30.i = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev30.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %92, i32 noundef 4, ptr noundef nonnull @.str.4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i, %if.end24.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.default.i, %sw.bb.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -524, %if.end29.i ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end24.i.cleanup_crit_edge ], [ -524, %sw.default.i ], [ -524, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %update_plane = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %update_plane to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_plane, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %11(ptr noundef nonnull %7, ptr noundef %plane) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_plane_atomic_disable(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %disable_plane = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %disable_plane to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_plane, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %11(ptr noundef nonnull %7, ptr noundef %plane) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 315, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @exynos_plane_funcs, !4, !"exynos_plane_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 166, i32 31}
!5 = !{ptr @plane_helper_funcs, !6, !"plane_helper_funcs", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 283, i32 44}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 117, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 192, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/exynos/exynos_drm_plane.c", i32 226, i32 2}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
