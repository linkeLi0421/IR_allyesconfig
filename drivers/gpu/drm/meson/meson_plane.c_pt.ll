; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, %struct.anon.90, %struct.anon.91 }
%struct.anon.88 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.89 = type { i32, i8, i8, i8 }
%struct.anon.90 = type { i32, ptr, i32 }
%struct.anon.91 = type { ptr, i64, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.anon.87 = type { i32, ptr }
%struct.meson_plane = type { %struct.drm_plane, ptr, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.meson_afbcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@format_modifiers_default = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@format_modifiers_afbc_gxm = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 576460752303423569, i64 576460752303423601, i64 0, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@format_modifiers_afbc_g12a = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 576460752303423585, i64 576460752303423601, i64 576460752303423554, i64 576460752303423570, i64 576460752303423586, i64 576460752303423602, i64 0, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@meson_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@supported_drm_formats = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 875713089, i32 875708993, i32 875713112, i32 875709016, i32 875710290, i32 909199186], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_primary_plane\00", [44 x i8] zeroinitializer }, align 32
@meson_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @meson_plane_atomic_check, ptr @meson_plane_atomic_update, ptr @meson_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported modifier\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AFBC Unsupported\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 72057594037927935]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 875708993, i64 875709016, i64 875713089, i64 875713112]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"format_modifiers_default\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 526, i32 23 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"format_modifiers_afbc_gxm\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 482, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"format_modifiers_afbc_g12a\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 495, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"meson_plane_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 463, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"supported_drm_formats\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 473, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 555, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"meson_plane_helper_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 421, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 452, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [39 x i8] c"../drivers/gpu/drm/meson/meson_plane.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 459, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @format_modifiers_default, ptr @format_modifiers_afbc_gxm, ptr @format_modifiers_afbc_g12a, ptr @meson_plane_funcs, ptr @supported_drm_formats, ptr @.str, ptr @meson_plane_helper_funcs, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_modifiers_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_modifiers_afbc_gxm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_modifiers_afbc_g12a to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_drm_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_plane_create(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 536, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %priv1 = getelementptr inbounds %struct.meson_plane, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1, align 8
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i26.not = icmp eq i32 %6, 3
  %spec.select = select i1 %cmp.i26.not, ptr @format_modifiers_afbc_g12a, ptr @format_modifiers_default
  %format_modifiers.0 = select i1 %cmp.i.not, ptr @format_modifiers_afbc_gxm, ptr %spec.select
  %7 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm, align 4
  %call11 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %8, ptr noundef nonnull %call.i, i32 noundef 255, ptr noundef nonnull @meson_plane_funcs, ptr noundef nonnull @supported_drm_formats, i32 noundef 6, ptr noundef nonnull %format_modifiers.0, i32 noundef 1, ptr noundef nonnull @.str) #3
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %9 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @meson_plane_helper_funcs, ptr %helper_private.i, align 8
  %call12 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i, i32 noundef 1) #3
  %primary_plane = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %primary_plane to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %primary_plane, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @meson_plane_format_mod_supported(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_switch(i64 %modifier, ptr @__sancov_gen_cov_switch_values)
  switch i64 %modifier, label %if.end4 [
    i64 72057594037927935, label %entry.cleanup_crit_edge
    i64 0, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 2
  br i1 %cmp.i.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i49 = icmp eq i32 %3, 3
  %and = and i64 %modifier, -576460752303423604
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  %or.cond = and i1 %tobool9.not, %cmp.i49
  br i1 %or.cond, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader

if.end8:                                          ; preds = %if.end4
  %and.old = and i64 %modifier, -576460752303423604
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.old)
  %tobool9.not.old = icmp eq i64 %and.old, 0
  br i1 %tobool9.not.old, label %if.end8.for.cond.preheader_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8.for.cond.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge
  %modifier_count = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 10
  %4 = ptrtoint ptr %modifier_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modifier_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1251.not = icmp eq i32 %5, 0
  br i1 %cmp1251.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %modifiers = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 9
  %6 = ptrtoint ptr %modifiers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modifiers, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %7, i32 %i.052
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %modifier)
  %cmp13 = icmp eq i64 %9, %modifier
  br i1 %cmp13, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.if.then18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.if.then18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.052, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp17 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp17, label %for.end.if.then18_crit_edge, label %if.end19

for.end.if.then18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18

if.then18:                                        ; preds = %for.end.if.then18_crit_edge, %for.inc.if.then18_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afbcd, align 8
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end19.if.end30_crit_edge, label %land.lhs.true21

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true21:                                  ; preds = %if.end19
  %supported_fmt = getelementptr inbounds %struct.meson_afbcd_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %supported_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %supported_fmt, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %land.lhs.true21.if.end30_crit_edge, label %if.then25

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call zeroext i1 %13(i64 noundef %modifier, i32 noundef %format) #3
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true21.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then25, %if.then18, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then3 ], [ false, %if.then18 ], [ %call29, %if.then25 ], [ false, %if.end30 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call2, i32 noundef 13107, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_plane_atomic_update(ptr nocapture noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_x.i, align 4, !noalias !27
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_y.i, align 4, !noalias !27
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_w.i, align 4, !noalias !27
  %add.i = add i32 %11, %7
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_h.i, align 4, !noalias !27
  %add3.i = add i32 %13, %9
  %priv1 = getelementptr inbounds %struct.meson_plane, ptr %plane, i32 0, i32 1
  %14 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1, align 8
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb2, align 4
  %drm = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 28
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #3
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %compat.i, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 8
  %23 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %modifier, align 8
  %and = and i64 %24, 576460752303423603
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %osd1_afbcd14 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %osd1_afbcd14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %osd1_afbcd14, align 1
  %osd1_ctrl_stat = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 4
  %26 = ptrtoint ptr %osd1_ctrl_stat to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3141633, ptr %osd1_ctrl_stat, align 4
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 8
  %add.ptr16 = getelementptr i8, ptr %28, i32 26804
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #3, !srcloc !30
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %osd1_ctrl_stat2 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 5
  %31 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %osd1_ctrl_stat2, align 8
  %canvas_id_osd121 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 6
  %32 = ptrtoint ptr %canvas_id_osd121 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %canvas_id_osd121, align 8
  %conv22 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv22, 16
  %osd1_blk0_cfg = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 6
  %34 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl, ptr %osd1_blk0_cfg, align 4
  %osd1_afbcd25 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 3
  %35 = ptrtoint ptr %osd1_afbcd25 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %osd1_afbcd25, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool26.not = icmp eq i8 %36, 0
  br i1 %tobool26.not, label %if.else53, label %if.then27

if.then27:                                        ; preds = %if.end
  %37 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %compat.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %38, label %if.then27.if.end65_crit_edge [
    i32 3, label %if.then30
    i32 2, label %if.then44
  ]

if.then27.if.end65_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %osd1_blk1_cfg4 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 7
  %40 = ptrtoint ptr %osd1_blk1_cfg4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16777216, ptr %osd1_blk1_cfg4, align 8
  %or37 = or i32 %30, 2
  %41 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or37, ptr %osd1_ctrl_stat2, align 8
  %42 = ptrtoint ptr %osd1_ctrl_stat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %osd1_ctrl_stat, align 4
  %or40 = or i32 %43, -2147483648
  store i32 %or40, ptr %osd1_ctrl_stat, align 4
  br label %if.end65thread-pre-split

if.then44:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %osd1_blk0_cfg, align 4
  %or48 = or i32 %45, 32768
  store i32 %or48, ptr %osd1_blk0_cfg, align 4
  %46 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %osd1_ctrl_stat2, align 8
  %or51 = or i32 %47, 32768
  store i32 %or51, ptr %osd1_ctrl_stat2, align 8
  br label %if.end65thread-pre-split

if.else53:                                        ; preds = %if.end
  %or57 = or i32 %shl, 32768
  %48 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or57, ptr %osd1_blk0_cfg, align 4
  %49 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i945.not = icmp eq i32 %50, 2
  br i1 %cmp.i945.not, label %if.end65.thread, label %if.else53.if.end65_crit_edge

if.else53.if.end65_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65

if.end65.thread:                                  ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #5
  %and63 = and i32 %30, -32769
  %51 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and63, ptr %osd1_ctrl_stat2, align 8
  br label %if.else90

if.end65thread-pre-split:                         ; preds = %if.then44, %if.then30
  %52 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %compat.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65thread-pre-split, %if.else53.if.end65_crit_edge, %if.then27.if.end65_crit_edge
  %53 = phi i32 [ %.pr, %if.end65thread-pre-split ], [ %38, %if.then27.if.end65_crit_edge ], [ %50, %if.else53.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i948.not = icmp eq i32 %53, 0
  br i1 %cmp.i948.not, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %osd1_blk0_cfg, align 4
  %or72 = or i32 %55, 128
  store i32 %or72, ptr %osd1_blk0_cfg, align 4
  br label %if.else90

if.end73:                                         ; preds = %if.end65
  %56 = ptrtoint ptr %osd1_afbcd25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %osd1_afbcd25, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool76.not = icmp ne i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i951.not = icmp eq i32 %53, 3
  %or.cond986 = select i1 %tobool76.not, i1 %cmp.i951.not, i1 false
  br i1 %or.cond986, label %if.then81, label %if.end73.if.else90_crit_edge

if.end73.if.else90_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else90

if.then81:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 18
  %58 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %afbcd, align 8
  %fmt_to_blk_mode = getelementptr inbounds %struct.meson_afbcd_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %fmt_to_blk_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fmt_to_blk_mode, align 4
  %modifier82 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 8
  %62 = ptrtoint ptr %modifier82 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %modifier82, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %64 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %format, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %call84 = tail call i32 %61(i64 noundef %63, i32 noundef %67) #3
  %68 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %osd1_blk0_cfg, align 4
  %or85 = or i32 %call84, %69
  %or89 = or i32 %or85, 1073741824
  br label %if.end112.sink.split

if.else90:                                        ; preds = %if.end73.if.else90_crit_edge, %if.then68, %if.end65.thread
  %format91 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %70 = ptrtoint ptr %format91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %format91, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %73, label %if.else90.if.end112_crit_edge [
    i32 875713112, label %if.else90.sw.bb_crit_edge
    i32 875713089, label %if.else90.sw.bb_crit_edge995
    i32 875709016, label %if.else90.sw.bb97_crit_edge
    i32 875708993, label %if.else90.sw.bb97_crit_edge996
    i32 875710290, label %sw.bb102
    i32 909199186, label %sw.bb107
  ]

if.else90.sw.bb97_crit_edge996:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb97

if.else90.sw.bb97_crit_edge:                      ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb97

if.else90.sw.bb_crit_edge995:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.else90.sw.bb_crit_edge:                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.else90.if.end112_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

sw.bb:                                            ; preds = %if.else90.sw.bb_crit_edge, %if.else90.sw.bb_crit_edge995
  %75 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %osd1_blk0_cfg, align 4
  %or96 = or i32 %76, 1284
  br label %if.end112.sink.split

sw.bb97:                                          ; preds = %if.else90.sw.bb97_crit_edge, %if.else90.sw.bb97_crit_edge996
  %77 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %osd1_blk0_cfg, align 4
  %or101 = or i32 %78, 1288
  br label %if.end112.sink.split

sw.bb102:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %osd1_blk0_cfg, align 4
  %or106 = or i32 %80, 1792
  br label %if.end112.sink.split

sw.bb107:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #5
  %81 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %osd1_blk0_cfg, align 4
  %or111 = or i32 %82, 1040
  br label %if.end112.sink.split

if.end112.sink.split:                             ; preds = %sw.bb107, %sw.bb102, %sw.bb97, %sw.bb, %if.then81
  %or96.sink = phi i32 [ %or96, %sw.bb ], [ %or101, %sw.bb97 ], [ %or106, %sw.bb102 ], [ %or111, %sw.bb107 ], [ %or89, %if.then81 ]
  %83 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or96.sink, ptr %osd1_blk0_cfg, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.else90.if.end112_crit_edge
  %format113 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %84 = ptrtoint ptr %format113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %format113, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %87, label %if.end112.sw.epilog123_crit_edge [
    i32 875713112, label %if.end112.sw.bb115_crit_edge
    i32 875709016, label %if.end112.sw.bb115_crit_edge997
    i32 875713089, label %if.end112.sw.bb119_crit_edge
    i32 875708993, label %if.end112.sw.bb119_crit_edge998
  ]

if.end112.sw.bb119_crit_edge998:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb119

if.end112.sw.bb119_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb119

if.end112.sw.bb115_crit_edge997:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb115

if.end112.sw.bb115_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb115

if.end112.sw.epilog123_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog123

sw.bb115:                                         ; preds = %if.end112.sw.bb115_crit_edge, %if.end112.sw.bb115_crit_edge997
  %89 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %osd1_ctrl_stat2, align 8
  %or118 = or i32 %90, 16384
  br label %sw.epilog123.sink.split

sw.bb119:                                         ; preds = %if.end112.sw.bb119_crit_edge, %if.end112.sw.bb119_crit_edge998
  %91 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %osd1_ctrl_stat2, align 8
  %and122 = and i32 %92, -16385
  br label %sw.epilog123.sink.split

sw.epilog123.sink.split:                          ; preds = %sw.bb119, %sw.bb115
  %and122.sink = phi i32 [ %and122, %sw.bb119 ], [ %or118, %sw.bb115 ]
  %93 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and122.sink, ptr %osd1_ctrl_stat2, align 8
  br label %sw.epilog123

sw.epilog123:                                     ; preds = %sw.epilog123.sink.split, %if.end112.sw.epilog123_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %94 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %crtc, align 4
  %flags124 = getelementptr inbounds %struct.drm_crtc, ptr %95, i32 0, i32 12, i32 11
  %96 = ptrtoint ptr %flags124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags124, align 4
  %and125 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %spec.select917 = select i1 %tobool126.not, i32 0, i32 12288
  %src_w131 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %98 = ptrtoint ptr %src_w131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src_w131, align 4
  %100 = lshr i32 %99, 16
  %src_h135 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %101 = ptrtoint ptr %src_h135 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %src_h135, align 4
  %103 = lshr i32 %102, 16
  %104 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %crtc_w.i, align 4
  %106 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %crtc_h.i, align 4
  %div145 = sdiv i32 %9, 2
  %div146 = sdiv i32 %add3.i, 2
  %div147 = sdiv i32 %107, 2
  %dest.sroa.22.0 = select i1 %tobool126.not, i32 %add3.i, i32 %div146
  %dest.sroa.8.0 = select i1 %tobool126.not, i32 %9, i32 %div145
  %dst_h.0 = select i1 %tobool126.not, i32 %107, i32 %div147
  %shl149 = shl i32 %100, 18
  %div150 = sdiv i32 %shl149, %105
  %shl151 = shl i32 %div150, 6
  %shl152 = shl i32 %103, 20
  %div153 = sdiv i32 %shl152, %dst_h.0
  %div160 = sdiv i32 %div153, 2
  %shl163 = shl i32 %div153, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_h.0, i32 %103)
  %cmp164.not = icmp eq i32 %dst_h.0, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %100)
  %cmp167.not = icmp eq i32 %105, %100
  %or.cond = select i1 %cmp164.not, i1 %cmp167.not, i1 false
  br i1 %or.cond, label %if.else341, label %do.end217

do.end217:                                        ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #5
  %sub202 = add nuw nsw i32 %103, 8191
  %108 = add i32 %99, 536805376
  %and194 = and i32 %108, 536805376
  %and221 = and i32 %sub202, 8191
  %or222 = or i32 %and194, %and221
  %osd_sc_i_wh_m1 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 14
  %109 = ptrtoint ptr %osd_sc_i_wh_m1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or222, ptr %osd_sc_i_wh_m1, align 4
  %shl248 = shl i32 %7, 16
  %and249 = and i32 %shl248, 268369920
  %sub276 = add i32 %add.i, 4095
  %and278 = and i32 %sub276, 4095
  %or279 = or i32 %and278, %and249
  %osd_sc_o_h_start_end = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 15
  %110 = ptrtoint ptr %osd_sc_o_h_start_end to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or279, ptr %osd_sc_o_h_start_end, align 8
  %shl306 = shl i32 %dest.sroa.8.0, 16
  %and307 = and i32 %shl306, 268369920
  %sub335 = add i32 %dest.sroa.22.0, 4095
  %and337 = and i32 %sub335, 4095
  %or338 = or i32 %and307, %and337
  %osd_sc_o_v_start_end = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 16
  %111 = ptrtoint ptr %osd_sc_o_v_start_end to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or338, ptr %osd_sc_o_v_start_end, align 4
  %osd_sc_ctrl0 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 13
  %112 = ptrtoint ptr %osd_sc_ctrl0 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 12, ptr %osd_sc_ctrl0, align 8
  br label %if.end350

if.else341:                                       ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #5
  %osd_sc_ctrl0349 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 13
  %113 = call ptr @memset(ptr %osd_sc_ctrl0349, i32 0, i32 16)
  br label %if.end350

if.end350:                                        ; preds = %if.else341, %do.end217
  %osd_sc_v_ctrl0542 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 22
  br i1 %cmp164.not, label %if.else540, label %do.end423

do.end423:                                        ; preds = %if.end350
  %114 = ptrtoint ptr %osd_sc_v_ctrl0542 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 16777508, ptr %osd_sc_v_ctrl0542, align 4
  %115 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %crtc, align 4
  %flags432 = getelementptr inbounds %struct.drm_crtc, ptr %116, i32 0, i32 12, i32 11
  %117 = ptrtoint ptr %flags432 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags432, align 4
  %and433 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  br i1 %tobool434.not, label %do.end423.do.end510_crit_edge, label %do.body442

do.end423.do.end510_crit_edge:                    ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end510

do.body442:                                       ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #5
  %shl482 = shl nuw nsw i32 %and125, 13
  %or484 = or i32 %spec.select917, %shl482
  %or488 = or i32 %or484, 25166116
  %119 = ptrtoint ptr %osd_sc_v_ctrl0542 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or488, ptr %osd_sc_v_ctrl0542, align 4
  br label %do.end510

do.end510:                                        ; preds = %do.body442, %do.end423.do.end510_crit_edge
  %and513 = and i32 %shl163, 268435440
  %osd_sc_v_phase_step = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 18
  %120 = ptrtoint ptr %osd_sc_v_phase_step to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and513, ptr %osd_sc_v_phase_step, align 4
  %121 = shl i32 %div160, 12
  %.op = and i32 %121, -65536
  %shl537 = select i1 %tobool126.not, i32 0, i32 %.op
  br label %if.end547

if.else540:                                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #5
  %122 = ptrtoint ptr %osd_sc_v_ctrl0542 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %osd_sc_v_ctrl0542, align 4
  %osd_sc_v_phase_step544 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 18
  %123 = ptrtoint ptr %osd_sc_v_phase_step544 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %osd_sc_v_phase_step544, align 4
  br label %if.end547

if.end547:                                        ; preds = %if.else540, %do.end510
  %.sink993 = phi i32 [ 0, %if.else540 ], [ %shl537, %do.end510 ]
  %osd_sc_v_ini_phase546 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 17
  %124 = ptrtoint ptr %osd_sc_v_ini_phase546 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink993, ptr %osd_sc_v_ini_phase546, align 8
  %osd_sc_h_ctrl0655 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 21
  br i1 %cmp167.not, label %if.else653, label %do.end620

do.end620:                                        ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %osd_sc_h_ctrl0655 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4194596, ptr %osd_sc_h_ctrl0655, align 8
  %and650 = and i32 %shl151, 268435392
  br label %if.end660

if.else653:                                       ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %osd_sc_h_ctrl0655 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %osd_sc_h_ctrl0655, align 8
  br label %if.end660

if.end660:                                        ; preds = %if.else653, %do.end620
  %.sink994 = phi i32 [ 0, %if.else653 ], [ %and650, %do.end620 ]
  %osd_sc_h_phase_step657 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 20
  %127 = ptrtoint ptr %osd_sc_h_phase_step657 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.sink994, ptr %osd_sc_h_phase_step657, align 4
  %osd_sc_h_ini_phase659 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 19
  %128 = ptrtoint ptr %osd_sc_h_ini_phase659 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %osd_sc_h_ini_phase659, align 8
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %x2661 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %129 = ptrtoint ptr %x2661 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %x2661, align 4
  %131 = add i32 %130, -65536
  %shl665 = and i32 %131, -65536
  %132 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %src, align 4
  %134 = ashr i32 %133, 16
  %or670 = or i32 %shl665, %134
  %arrayidx674 = getelementptr %struct.meson_drm, ptr %15, i32 0, i32 15, i32 6, i32 1
  %135 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or670, ptr %arrayidx674, align 4
  %y2676 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %136 = ptrtoint ptr %y2676 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %y2676, align 4
  %138 = add i32 %137, -65536
  %shl680 = and i32 %138, -65536
  %y1682 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %139 = ptrtoint ptr %y1682 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %y1682, align 4
  %141 = ashr i32 %140, 16
  %or685 = or i32 %shl680, %141
  %arrayidx689 = getelementptr %struct.meson_drm, ptr %15, i32 0, i32 15, i32 6, i32 2
  %142 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or685, ptr %arrayidx689, align 4
  %sub691 = shl i32 %add.i, 16
  %shl692 = add i32 %sub691, -65536
  %or694 = or i32 %shl692, %7
  %arrayidx697 = getelementptr %struct.meson_drm, ptr %15, i32 0, i32 15, i32 6, i32 3
  %143 = ptrtoint ptr %arrayidx697 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or694, ptr %arrayidx697, align 4
  %sub699 = shl i32 %dest.sroa.22.0, 16
  %shl700 = add i32 %sub699, -65536
  %or702 = or i32 %shl700, %dest.sroa.8.0
  %arrayidx705 = getelementptr %struct.meson_drm, ptr %15, i32 0, i32 15, i32 6, i32 4
  %144 = ptrtoint ptr %arrayidx705 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or702, ptr %arrayidx705, align 4
  %145 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %146)
  %cmp.i959.not = icmp eq i32 %146, 3
  br i1 %cmp.i959.not, label %if.then708, label %if.end660.if.end727_crit_edge

if.end660.if.end727_crit_edge:                    ; preds = %if.end660
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end727

if.then708:                                       ; preds = %if.end660
  call void @__sanitizer_cov_trace_pc() #5
  %osd_blend_din0_scope_h = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 23
  %147 = ptrtoint ptr %osd_blend_din0_scope_h to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or694, ptr %osd_blend_din0_scope_h, align 8
  %osd_blend_din0_scope_v = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 24
  %148 = ptrtoint ptr %osd_blend_din0_scope_v to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or702, ptr %osd_blend_din0_scope_v, align 4
  %shl721 = shl i32 %dst_h.0, 16
  %or722 = or i32 %shl721, %105
  %osb_blend0_size = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 25
  %149 = ptrtoint ptr %osb_blend0_size to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or722, ptr %osb_blend0_size, align 8
  %osb_blend1_size = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 26
  %150 = ptrtoint ptr %osb_blend1_size to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or722, ptr %osb_blend1_size, align 4
  br label %if.end727

if.end727:                                        ; preds = %if.then708, %if.end660.if.end727_crit_edge
  %call728 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %17, i32 noundef 0) #3
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call728, i32 0, i32 1
  %151 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %paddr, align 8
  %osd1_addr = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 9
  %153 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %osd1_addr, align 8
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 6
  %154 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pitches, align 8
  %osd1_stride = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 10
  %156 = ptrtoint ptr %osd1_stride to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %osd1_stride, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 10
  %157 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %height, align 4
  %osd1_height = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 11
  %159 = ptrtoint ptr %osd1_height to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %osd1_height, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 9
  %160 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %width, align 8
  %osd1_width = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 12
  %162 = ptrtoint ptr %osd1_width to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %osd1_width, align 4
  %163 = ptrtoint ptr %osd1_afbcd25 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %osd1_afbcd25, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool736.not = icmp eq i8 %164, 0
  br i1 %tobool736.not, label %if.end727.if.end751_crit_edge, label %if.then737

if.end727.if.end751_crit_edge:                    ; preds = %if.end727
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end751

if.then737:                                       ; preds = %if.end727
  %modifier738 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 8
  %165 = ptrtoint ptr %modifier738 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %modifier738, align 8
  %modifier740 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 18, i32 1
  %167 = ptrtoint ptr %modifier740 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %modifier740, align 8
  %168 = ptrtoint ptr %format113 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %format113, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %format744 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 18, i32 2
  %172 = ptrtoint ptr %format744 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %format744, align 8
  %173 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %174)
  %cmp.i962.not = icmp eq i32 %174, 3
  br i1 %cmp.i962.not, label %if.then747, label %if.then737.if.end751_crit_edge

if.then737.if.end751_crit_edge:                   ; preds = %if.then737
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end751

if.then747:                                       ; preds = %if.then737
  %175 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %171, label %if.then747.meson_g12a_afbcd_line_stride.exit_crit_edge [
    i32 909199186, label %if.then747.sw.epilog.sink.split.i_crit_edge
    i32 875710290, label %if.then747.sw.bb1.i_crit_edge
    i32 875713112, label %if.then747.sw.bb1.i_crit_edge999
    i32 875713089, label %if.then747.sw.bb1.i_crit_edge1000
    i32 875709016, label %if.then747.sw.bb1.i_crit_edge1001
    i32 875708993, label %if.then747.sw.bb1.i_crit_edge1002
  ]

if.then747.sw.bb1.i_crit_edge1002:                ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i

if.then747.sw.bb1.i_crit_edge1001:                ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i

if.then747.sw.bb1.i_crit_edge1000:                ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i

if.then747.sw.bb1.i_crit_edge999:                 ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i

if.then747.sw.bb1.i_crit_edge:                    ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i

if.then747.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

if.then747.meson_g12a_afbcd_line_stride.exit_crit_edge: ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #5
  br label %meson_g12a_afbcd_line_stride.exit

sw.bb1.i:                                         ; preds = %if.then747.sw.bb1.i_crit_edge, %if.then747.sw.bb1.i_crit_edge999, %if.then747.sw.bb1.i_crit_edge1000, %if.then747.sw.bb1.i_crit_edge1001, %if.then747.sw.bb1.i_crit_edge1002
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.then747.sw.epilog.sink.split.i_crit_edge
  %.sink12.i = phi i32 [ 5, %sw.bb1.i ], [ 4, %if.then747.sw.epilog.sink.split.i_crit_edge ]
  %shl4.i = shl i32 %161, %.sink12.i
  %add5.i = add i32 %shl4.i, 127
  %shr6.i = lshr i32 %add5.i, 7
  %phi.bo.i = add nuw nsw i32 %shr6.i, 1
  %phi.bo13.i = and i32 %phi.bo.i, 67108862
  br label %meson_g12a_afbcd_line_stride.exit

meson_g12a_afbcd_line_stride.exit:                ; preds = %sw.epilog.sink.split.i, %if.then747.meson_g12a_afbcd_line_stride.exit_crit_edge
  %line_stride.0.i = phi i32 [ 0, %if.then747.meson_g12a_afbcd_line_stride.exit_crit_edge ], [ %phi.bo13.i, %sw.epilog.sink.split.i ]
  %osd1_blk2_cfg4 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15, i32 8
  %176 = ptrtoint ptr %osd1_blk2_cfg4 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %line_stride.0.i, ptr %osd1_blk2_cfg4, align 4
  br label %if.end751

if.end751:                                        ; preds = %meson_g12a_afbcd_line_stride.exit, %if.then737.if.end751_crit_edge, %if.end727.if.end751_crit_edge
  %enabled = getelementptr inbounds %struct.meson_plane, ptr %plane, i32 0, i32 2
  %177 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %enabled, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool752.not = icmp eq i8 %178, 0
  br i1 %tobool752.not, label %if.then753, label %if.end751.if.end762_crit_edge

if.end751.if.end762_crit_edge:                    ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end762

if.then753:                                       ; preds = %if.end751
  %179 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %compat.i, align 4
  %.off987 = add i32 %180, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off987)
  %switch988 = icmp ult i32 %.off987, 2
  br i1 %switch988, label %if.then759, label %if.then753.if.end760_crit_edge

if.then753.if.end760_crit_edge:                   ; preds = %if.then753
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end760

if.then759:                                       ; preds = %if.then753
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @meson_viu_osd1_reset(ptr noundef %15) #3
  br label %if.end760

if.end760:                                        ; preds = %if.then759, %if.then753.if.end760_crit_edge
  %181 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %enabled, align 4
  br label %if.end762

if.end762:                                        ; preds = %if.end760, %if.end751.if.end762_crit_edge
  %viu15 = getelementptr inbounds %struct.meson_drm, ptr %15, i32 0, i32 15
  %182 = ptrtoint ptr %viu15 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %viu15, align 8
  %183 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %drm, align 4
  %event_lock765 = getelementptr inbounds %struct.drm_device, ptr %184, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock765, i32 noundef %call6) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_plane_atomic_disable(ptr nocapture noundef %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afbcd, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %reset = getelementptr inbounds %struct.meson_afbcd_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call = tail call i32 %5(ptr noundef %1) #3
  %6 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afbcd, align 8
  %disable = getelementptr inbounds %struct.meson_afbcd_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable, align 4
  %call6 = tail call i32 %9(ptr noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 3
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  br i1 %cmp.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr10 = getelementptr i8, ptr %13, i32 30708
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #3, !srcloc !30
  %15 = and i32 %14, -196609
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr14 = getelementptr i8, ptr %17, i32 30708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #3, !srcloc !33
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr17 = getelementptr i8, ptr %13, i32 29848
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !30
  %19 = and i32 %18, -1048577
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr23 = getelementptr i8, ptr %21, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %19) #3, !srcloc !33
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then9
  %enabled = getelementptr inbounds %struct.meson_plane, ptr %plane, i32 0, i32 2
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enabled, align 4
  %viu = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %viu to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %viu, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_osd1_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 555, i32 30}
!2 = !{ptr @format_modifiers_default, !3, !"format_modifiers_default", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 526, i32 23}
!4 = !{ptr @format_modifiers_afbc_gxm, !5, !"format_modifiers_afbc_gxm", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 482, i32 23}
!6 = !{ptr @format_modifiers_afbc_g12a, !7, !"format_modifiers_afbc_g12a", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 495, i32 23}
!8 = !{ptr @meson_plane_funcs, !9, !"meson_plane_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 463, i32 37}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 452, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 459, i32 2}
!14 = !{ptr @supported_drm_formats, !15, !"supported_drm_formats", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 473, i32 23}
!16 = !{ptr @meson_plane_helper_funcs, !17, !"meson_plane_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_plane.c", i32 421, i32 44}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"drm_plane_state_dest: %agg.result"}
!29 = distinct !{!29, !"drm_plane_state_dest"}
!30 = !{i64 6953185}
!31 = !{i64 2156975643}
!32 = !{i8 0, i8 2}
!33 = !{i64 6952767}
