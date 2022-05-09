; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/exynos/exynos_drm_crtc.c\00", [55 x i8] zeroinitializer }, align 32
@exynos_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_crtc_enable_vblank, ptr @exynos_drm_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@exynos_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @exynos_crtc_mode_valid, ptr @exynos_crtc_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_crtc_atomic_check, ptr @exynos_crtc_atomic_begin, ptr @exynos_crtc_atomic_flush, ptr @exynos_drm_crtc_atomic_enable, ptr @exynos_drm_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 130, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"exynos_crtc_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 163, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"exynos_crtc_helper_funcs\00", align 1
@___asan_gen_.8 = private constant [44 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_crtc.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 110, i32 43 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @exynos_crtc_funcs, ptr @exynos_crtc_helper_funcs], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_crtc_handle_event(ptr noundef %exynos_crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %exynos_crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %event1 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %event1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %event1, align 4
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %exynos_crtc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %5 = ptrtoint ptr %exynos_crtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %exynos_crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 28
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %exynos_crtc, ptr noundef nonnull %3) #5
  %7 = ptrtoint ptr %exynos_crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exynos_crtc, align 8
  %event_lock36 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock36, i32 noundef %call30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_crtc_create(ptr noundef %drm_dev, ptr noundef %plane, i32 noundef %type, ptr noundef %ops, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1016) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %type2, align 8
  %ops3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops3, align 4
  %ctx4 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %ctx4, align 8
  %call5 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm_dev, ptr noundef nonnull %call7.i.i, ptr noundef %plane, ptr noundef null, ptr noundef nonnull @exynos_crtc_funcs, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %err_crtc, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @exynos_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

err_crtc:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %funcs = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 14
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_plane_funcs, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %destroy, align 4
  tail call void %8(ptr noundef %plane) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %9 = inttoptr i32 %call5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_crtc, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %err_crtc ], [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_crtc_get_by_type(ptr noundef readonly %drm_dev, i32 noundef %out_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 30, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %crtc_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %type = getelementptr i8, ptr %.pn, i32 984
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  %cmp6 = icmp eq i32 %2, %out_type
  br i1 %cmp6, label %cleanup.split.loop.exit19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

cleanup.split.loop.exit19:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %crtc.0.le = getelementptr i8, ptr %.pn, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit19, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %crtc.0.le, %cleanup.split.loop.exit19 ], [ inttoptr (i32 -19 to ptr), %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_set_possible_crtcs(ptr nocapture noundef %encoder, i32 noundef %out_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %crtc_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr i8, ptr %.pn.i, i32 984
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 8
  %cmp6.i = icmp eq i32 %4, %out_type
  br i1 %cmp6.i, label %exynos_drm_crtc_get_by_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

exynos_drm_crtc_get_by_type.exit:                 ; preds = %for.body.i
  %crtc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp.i = icmp ugt ptr %crtc.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %exynos_drm_crtc_get_by_type.exit.if.then_crit_edge, label %if.end

exynos_drm_crtc_get_by_type.exit.if.then_crit_edge: ; preds = %exynos_drm_crtc_get_by_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %exynos_drm_crtc_get_by_type.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %retval.0.i9 = phi ptr [ %crtc.0.le.i, %exynos_drm_crtc_get_by_type.exit.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.cond.i.if.then_crit_edge ]
  %5 = ptrtoint ptr %retval.0.i9 to i32
  br label %cleanup

if.end:                                           ; preds = %exynos_drm_crtc_get_by_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr i8, ptr %.pn.i, i32 148
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %7
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 6
  %8 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_crtc_te_handler(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %te_handler = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %te_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %te_handler, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #5
  tail call void @kfree(ptr noundef %crtc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %enable_vblank = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %enable_vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_vblank, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %crtc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %disable_vblank = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %disable_vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_vblank, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_crtc_mode_valid(ptr noundef %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %mode_valid = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_valid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %crtc, ptr noundef %mode) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @exynos_crtc_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %mode_fixup = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode_fixup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_fixup, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 %3(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %atomic_check = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %atomic_check to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_check, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %11(ptr noundef %crtc, ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %atomic_begin = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %atomic_begin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atomic_begin, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %atomic_flush = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %atomic_flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atomic_flush, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  %ops = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %atomic_disable = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atomic_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atomic_disable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state3, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %12 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state3, align 4
  %event9 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event9, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %15) #5
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %event_lock11 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock11) #5
  %18 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state3, align 4
  %event13 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %event13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %event13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_crtc.c", i32 130, i32 2}
!2 = !{ptr @exynos_crtc_funcs, !3, !"exynos_crtc_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_crtc.c", i32 163, i32 36}
!4 = !{ptr @exynos_crtc_helper_funcs, !5, !"exynos_crtc_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_crtc.c", i32 110, i32 43}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
