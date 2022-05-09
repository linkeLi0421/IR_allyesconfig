; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_drm_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.mtk_plane_state = type { %struct.drm_plane_state, %struct.mtk_plane_pending_state }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mtk_plane_pending_state = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.mtk_drm_gem_obj = type { %struct.drm_gem_object, ptr, ptr, i32, i32, ptr, ptr }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@mtk_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @mtk_plane_reset, ptr null, ptr @mtk_plane_duplicate_state, ptr @mtk_drm_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@formats = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 875713112, i32 875713089, i32 875714626, i32 875708738, i32 875708993, i32 875709016, i32 875710290, i32 875710274, i32 909199186, i32 1498831189, i32 1448695129], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to initialize plane\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] Create rotation property failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_plane_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/mediatek/mtk_drm_plane.c\00", [55 x i8] zeroinitializer }, align 32
@mtk_plane_init._entry_ptr = internal global ptr @mtk_plane_init._entry, section ".printk_index", align 4
@mtk_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @mtk_plane_atomic_check, ptr @mtk_plane_atomic_update, ptr @mtk_plane_atomic_disable, ptr @mtk_plane_atomic_async_check, ptr @mtk_plane_atomic_async_update }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"mtk_plane_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 166, i32 37 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 20, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 256, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 265, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"mtk_plane_helper_funcs\00", align 1
@___asan_gen_.26 = private constant [44 x i8] c"../drivers/gpu/drm/mediatek/mtk_drm_plane.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 238, i32 44 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mtk_plane_init._entry, ptr @mtk_plane_init._entry_ptr, ptr @mtk_plane_funcs, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtk_plane_helper_funcs], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_plane_init(ptr noundef %dev, ptr noundef %plane, i32 noundef %possible_crtcs, i32 noundef %type, i32 noundef %supported_rotations) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef %plane, i32 noundef %possible_crtcs, ptr noundef nonnull @mtk_plane_funcs, ptr noundef nonnull @formats, i32 noundef 11, ptr noundef null, i32 noundef %type, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %supported_rotations)
  %tobool1.not = icmp ult i32 %supported_rotations, 2
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @drm_plane_create_rotation_property(ptr noundef %plane, i32 noundef 1, i32 noundef %supported_rotations) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 18
  %0 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mtk_plane_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 164)
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 164) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then
  %state.0 = phi ptr [ %3, %if.then ], [ %call7.i.i, %if.else.if.end7_crit_edge ]
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef %state.0) #4
  %6 = ptrtoint ptr %state.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %plane, ptr %state.0, align 4
  %format = getelementptr inbounds %struct.mtk_plane_state, ptr %state.0, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 909199186, ptr %format, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  %cmp.not = icmp eq ptr %4, %plane
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %do.end, !prof !23

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 66, i32 noundef 9, ptr noundef null) #4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %pending = getelementptr inbounds %struct.mtk_plane_state, ptr %call7.i.i, i32 0, i32 1
  %pending26 = getelementptr inbounds %struct.mtk_plane_state, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %pending, ptr %pending26, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #4
  tail call void @kfree(ptr noundef %state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_plane_atomic_check(ptr noundef %plane, ptr noundef %state) #0 align 64 {
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
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %do.end, label %if.end27, !prof !24

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 187, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call30 = tail call i32 @mtk_drm_crtc_plane_check(ptr noundef nonnull %9, ptr noundef %plane, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %call35 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef %11) #4
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call35, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %if.end27.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %12, %if.then37 ], [ %call40, %if.end39 ], [ 0, %entry.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  br i1 %tobool2.not, label %do.end, label %if.end25, !prof !24

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 225, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %visible, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool26.not = icmp eq i8 %11, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %enable.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enable.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %dirty.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dirty.i, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %obj.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 15
  %14 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %obj.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pitches.i, align 8
  %format3.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %format3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format3.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %24 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.i, align 4
  %shr.i = ashr i32 %25, 16
  %26 = getelementptr inbounds %struct.drm_format_info, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 2
  %conv.i = zext i8 %28 to i32
  %mul.i = mul nsw i32 %shr.i, %conv.i
  %add.i = add i32 %mul.i, %17
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y1.i, align 4
  %shr8.i = ashr i32 %30, 16
  %mul9.i = mul i32 %shr8.i, %19
  %add10.i = add i32 %add.i, %mul9.i
  %enable.i41 = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %enable.i41 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %enable.i41, align 1
  %pitch12.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %pitch12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %19, ptr %pitch12.i, align 4
  %format14.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %format14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %23, ptr %format14.i, align 4
  %addr16.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add10.i, ptr %addr16.i, align 4
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %35 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dst.i, align 4
  %x.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %x.i, align 4
  %y120.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %38 = ptrtoint ptr %y120.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y120.i, align 4
  %y.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %y.i, align 4
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %41 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %x2.i.i, align 4
  %sub.i.i = sub i32 %42, %36
  %width.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i.i, ptr %width.i, align 4
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %44 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y2.i.i, align 4
  %sub.i50.i = sub i32 %45, %39
  %height.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i50.i, ptr %height.i, align 4
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %47 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rotation.i, align 4
  %rotation28.i = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 9
  %49 = ptrtoint ptr %rotation28.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rotation28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %dirty = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 10
  %50 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %enable = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enable, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %dirty = getelementptr inbounds %struct.mtk_plane_state, ptr %5, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %dirty, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_plane_atomic_async_check(ptr noundef %plane, ptr noundef readonly %state) #0 align 64 {
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
  %cursor = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cursor, align 8
  %cmp.not = icmp eq ptr %9, %plane
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call10 = tail call i32 @mtk_drm_crtc_plane_check(ptr noundef %7, ptr noundef %plane, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %tobool14.not = icmp eq ptr %state, null
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i37 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i37, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 1
  br label %if.end20

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %state19 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 22
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %crtc_state.0.in = phi ptr [ %state1.i, %if.then15 ], [ %state19, %if.else ]
  %20 = ptrtoint ptr %crtc_state.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %crtc_state.0 = load ptr, ptr %crtc_state.0.in, align 4
  %21 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state1, align 4
  %call22 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %22, ptr noundef %crtc_state.0, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_plane_atomic_async_update(ptr noundef %plane, ptr noundef %state) #0 align 64 {
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
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_x, align 4
  %crtc_x4 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %crtc_x4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %crtc_x4, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crtc_y, align 4
  %13 = load ptr, ptr %state1, align 4
  %crtc_y6 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %crtc_y6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %crtc_y6, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crtc_h, align 4
  %17 = load ptr, ptr %state1, align 4
  %crtc_h8 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %crtc_h8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %crtc_h8, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_w, align 4
  %21 = load ptr, ptr %state1, align 4
  %crtc_w10 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %crtc_w10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %crtc_w10, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_x, align 4
  %25 = load ptr, ptr %state1, align 4
  %src_x12 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %src_x12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %src_x12, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %27 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_y, align 4
  %29 = load ptr, ptr %state1, align 4
  %src_y14 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %src_y14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %src_y14, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_h, align 4
  %33 = load ptr, ptr %state1, align 4
  %src_h16 = getelementptr inbounds %struct.drm_plane_state, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %src_h16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %src_h16, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_w, align 4
  %37 = load ptr, ptr %state1, align 4
  %src_w18 = getelementptr inbounds %struct.drm_plane_state, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %src_w18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %src_w18, align 4
  %39 = load ptr, ptr %state1, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb, align 4
  %fb20 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %42 = ptrtoint ptr %fb20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb20, align 4
  store ptr %43, ptr %fb, align 4
  store ptr %41, ptr %fb20, align 4
  %obj.i = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 15
  %44 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %obj.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 6
  %48 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pitches.i, align 8
  %format3.i = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 4
  %50 = ptrtoint ptr %format3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %format3.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %54 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %src.i, align 4
  %shr.i = ashr i32 %55, 16
  %56 = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 2
  %conv.i = zext i8 %58 to i32
  %mul.i = mul nsw i32 %shr.i, %conv.i
  %add.i = add i32 %mul.i, %47
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %59 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y1.i, align 4
  %shr8.i = ashr i32 %60, 16
  %mul9.i = mul i32 %shr8.i, %49
  %add10.i = add i32 %add.i, %mul9.i
  %enable.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %enable.i, align 1
  %pitch12.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %pitch12.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %49, ptr %pitch12.i, align 4
  %format14.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %format14.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %53, ptr %format14.i, align 4
  %addr16.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add10.i, ptr %addr16.i, align 4
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %65 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dst.i, align 4
  %x.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 5
  %67 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %x.i, align 4
  %y120.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %68 = ptrtoint ptr %y120.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %y120.i, align 4
  %y.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 6
  %70 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %y.i, align 4
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %71 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %x2.i.i, align 4
  %73 = load i32, ptr %dst.i, align 4
  %sub.i.i = sub i32 %72, %73
  %width.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 7
  %74 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub.i.i, ptr %width.i, align 4
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %75 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %y2.i.i, align 4
  %77 = load i32, ptr %y120.i, align 4
  %sub.i50.i = sub i32 %76, %77
  %height.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 8
  %78 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i50.i, ptr %height.i, align 4
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %79 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rotation.i, align 4
  %rotation28.i = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 9
  %81 = ptrtoint ptr %rotation28.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %rotation28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %async_dirty = getelementptr inbounds %struct.mtk_plane_state, ptr %7, i32 0, i32 1, i32 11
  %82 = ptrtoint ptr %async_dirty to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %async_dirty, align 1
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %83 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %crtc, align 4
  tail call void @mtk_drm_crtc_async_update(ptr noundef %84, ptr noundef %plane, ptr noundef %state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_drm_crtc_plane_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_drm_crtc_async_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_plane.c", i32 256, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_plane.c", i32 265, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_plane_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_plane_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mtk_plane_funcs, !9, !"mtk_plane_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_plane.c", i32 166, i32 37}
!10 = !{ptr @formats, !11, !"formats", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_plane.c", i32 20, i32 18}
!12 = !{ptr @mtk_plane_helper_funcs, !13, !"mtk_plane_helper_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_plane.c", i32 238, i32 44}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i8 0, i8 2}
!26 = !{i64 2156696310}
!27 = !{i64 2156696976}
!28 = !{i64 2156695620}
