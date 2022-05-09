; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }
%struct.komeda_kms_dev = type { %struct.drm_device, i32, [2 x %struct.komeda_crtc] }
%struct.komeda_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.komeda_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.malidp_range = type { i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.komeda_data_flow_cfg = type { %struct.komeda_component_output, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8 }
%struct.komeda_component_output = type { ptr, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.komeda_fb = type { %struct.drm_framebuffer, ptr, i8, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.komeda_crtc_state = type { %struct.drm_crtc_state, i32, i32, i64, i32 }
%struct.komeda_format_caps = type { i32, i32, i32, i32, i32, i64 }

@komeda_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @komeda_plane_destroy, ptr @komeda_plane_reset, ptr null, ptr @komeda_plane_atomic_duplicate_state, ptr @komeda_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @komeda_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@komeda_supported_modifiers = external dso_local global [0 x i64], align 8
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@komeda_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @komeda_plane_atomic_check, ptr @komeda_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_plane.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot update plane on a disabled CRTC.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s zorder:%d < max_slave_zorder: %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"rotation(0x%x) isn't supported by %p4cc with modifier: 0x%llx.\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"komeda_plane_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 196, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 274, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"komeda_plane_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 123, i32 44 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 164, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 90, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 31, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [53 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 52, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @komeda_plane_funcs, ptr @.str, ptr @komeda_plane_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_kms_add_planes(ptr noundef %kms, ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  %n_formats.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %kms, i32 0, i32 5
  %n_crtcs.i.i = getelementptr inbounds %struct.komeda_kms_dev, ptr %kms, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc5.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %i.024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %n_layers = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp221 = icmp sgt i32 %5, 0
  br i1 %cmp221, label %for.body.for.body3_crit_edge, label %for.body.for.inc5_crit_edge

for.body.for.inc5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc5

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %j.022 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 7, i32 %j.022
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_formats.i) #5
  %10 = ptrtoint ptr %n_formats.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %n_formats.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 536) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body3.komeda_plane_add.exit_crit_edge, label %if.end.i

for.body3.komeda_plane_add.exit_crit_edge:        ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %komeda_plane_add.exit

if.end.i:                                         ; preds = %for.body3
  %layer3.i = getelementptr inbounds %struct.komeda_plane, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %layer3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %layer3.i, align 8
  %fmt_tbl.i = getelementptr inbounds %struct.komeda_dev, ptr %9, i32 0, i32 3
  %layer_type.i = getelementptr inbounds %struct.komeda_layer, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %layer_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %layer_type.i, align 4
  %call4.i = call ptr @komeda_get_layer_fourcc_list(ptr noundef %fmt_tbl.i, i32 noundef %14, ptr noundef nonnull %n_formats.i) #5
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipeline.i, align 4
  %17 = ptrtoint ptr %n_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_crtcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp10.i.i = icmp sgt i32 %18, 0
  br i1 %cmp10.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.get_possible_crtcs.exit.i_crit_edge

if.end.i.get_possible_crtcs.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_possible_crtcs.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %possible_crtcs.011.i.i = phi i32 [ %possible_crtcs.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %master.i.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.013.i.i, i32 1
  %19 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master.i.i, align 8
  %cmp1.i.i = icmp eq ptr %20, %16
  br i1 %cmp1.i.i, label %for.body.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %slave.i.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.013.i.i, i32 2
  %21 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave.i.i, align 4
  %cmp2.i.i = icmp eq ptr %22, %16
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %shl.i.i = shl nuw i32 1, %i.013.i.i
  %or.i.i = or i32 %shl.i.i, %possible_crtcs.011.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge
  %possible_crtcs.1.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %possible_crtcs.011.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %18
  br i1 %exitcond.not.i.i, label %for.inc.i.i.get_possible_crtcs.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.get_possible_crtcs.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_possible_crtcs.exit.i

get_possible_crtcs.exit.i:                        ; preds = %for.inc.i.i.get_possible_crtcs.exit.i_crit_edge, %if.end.i.get_possible_crtcs.exit.i_crit_edge
  %possible_crtcs.0.lcssa.i.i = phi i32 [ 0, %if.end.i.get_possible_crtcs.exit.i_crit_edge ], [ %possible_crtcs.1.i.i, %for.inc.i.i.get_possible_crtcs.exit.i_crit_edge ]
  %23 = ptrtoint ptr %n_formats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_formats.i, align 4
  %id.i.i = getelementptr inbounds %struct.komeda_component, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  %cond.i.i = zext i1 %cmp.i.i to i32
  %name.i = getelementptr inbounds %struct.komeda_component, ptr %7, i32 0, i32 2
  %call8.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %kms, ptr noundef nonnull %call7.i.i.i, i32 noundef %possible_crtcs.0.lcssa.i.i, ptr noundef nonnull @komeda_plane_funcs, ptr noundef %call4.i, i32 noundef %24, ptr noundef nonnull @komeda_supported_modifiers, i32 noundef %cond.i.i, ptr noundef nonnull @.str, ptr noundef %name.i) #5
  call void @komeda_put_fourcc_list(ptr noundef %call4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %get_possible_crtcs.exit.i.cleanup.i_crit_edge

get_possible_crtcs.exit.i.cleanup.i_crit_edge:    ; preds = %get_possible_crtcs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end11.i:                                       ; preds = %get_possible_crtcs.exit.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @komeda_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %supported_rots.i = getelementptr inbounds %struct.komeda_layer, ptr %7, i32 0, i32 6
  %28 = ptrtoint ptr %supported_rots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %supported_rots.i, align 4
  %call12.i = call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cleanup.i_crit_edge

if.end11.i.cleanup.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.cleanup.i_crit_edge

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end23.i:                                       ; preds = %if.end19.i
  %call24.i = call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i.i, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.cleanup.i_crit_edge

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end27.i:                                       ; preds = %if.end23.i
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i.i, align 4
  %call29.i = call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i.i, i32 noundef %31, i32 noundef 0, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end27.i.cleanup.i_crit_edge

if.end27.i.cleanup.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end32.i:                                       ; preds = %if.end27.i
  %32 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipeline.i, align 4
  %34 = ptrtoint ptr %n_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_crtcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.i.i = icmp sgt i32 %35, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end32.i.for.inc_crit_edge

if.end32.i.for.inc_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %if.end32.i
  %index.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i, i32 0, i32 17
  br label %for.body.i72.i

for.body.i72.i:                                   ; preds = %for.inc.i78.i.for.body.i72.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i76.i, %for.inc.i78.i.for.body.i72.i_crit_edge ]
  %slave.i70.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.07.i.i, i32 2
  %36 = ptrtoint ptr %slave.i70.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slave.i70.i, align 4
  %cmp1.i71.i = icmp eq ptr %37, %33
  br i1 %cmp1.i71.i, label %if.then.i75.i, label %for.body.i72.i.for.inc.i78.i_crit_edge

for.body.i72.i.for.inc.i78.i_crit_edge:           ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i78.i

if.then.i75.i:                                    ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i.i.i, align 4
  %shl.i73.i = shl nuw i32 1, %39
  %slave_planes.i.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.07.i.i, i32 3
  %40 = ptrtoint ptr %slave_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slave_planes.i.i, align 8
  %or.i74.i = or i32 %41, %shl.i73.i
  store i32 %or.i74.i, ptr %slave_planes.i.i, align 8
  br label %for.inc.i78.i

for.inc.i78.i:                                    ; preds = %if.then.i75.i, %for.body.i72.i.for.inc.i78.i_crit_edge
  %inc.i76.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i77.i = icmp eq i32 %inc.i76.i, %35
  br i1 %exitcond.not.i77.i, label %for.inc.i78.i.for.inc_crit_edge, label %for.inc.i78.i.for.body.i72.i_crit_edge

for.inc.i78.i.for.body.i72.i_crit_edge:           ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i72.i

for.inc.i78.i.for.inc_crit_edge:                  ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup.i:                                        ; preds = %if.end27.i.cleanup.i_crit_edge, %if.end23.i.cleanup.i_crit_edge, %if.end19.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge, %if.end11.i.cleanup.i_crit_edge, %get_possible_crtcs.exit.i.cleanup.i_crit_edge
  %err.0.i = phi i32 [ %call8.i, %get_possible_crtcs.exit.i.cleanup.i_crit_edge ], [ %call12.i, %if.end11.i.cleanup.i_crit_edge ], [ %call16.i, %if.end15.i.cleanup.i_crit_edge ], [ %call20.i, %if.end19.i.cleanup.i_crit_edge ], [ %call24.i, %if.end23.i.cleanup.i_crit_edge ], [ %call29.i, %if.end27.i.cleanup.i_crit_edge ]
  call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i.i) #5
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %komeda_plane_add.exit

komeda_plane_add.exit:                            ; preds = %cleanup.i, %for.body3.komeda_plane_add.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %cleanup.i ], [ -12, %for.body3.komeda_plane_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_formats.i) #5
  br label %cleanup

for.inc:                                          ; preds = %for.inc.i78.i.for.inc_crit_edge, %if.end32.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_formats.i) #5
  %inc = add nuw nsw i32 %j.022, 1
  %42 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_layers, align 4
  %cmp2 = icmp slt i32 %inc, %43
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.inc5_crit_edge

for.inc.for.inc5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc5

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.inc5:                                         ; preds = %for.inc.for.inc5_crit_edge, %for.body.for.inc5_crit_edge
  %inc6 = add nuw nsw i32 %i.024, 1
  %44 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc6, %45
  br i1 %cmp, label %for.inc5.for.body_crit_edge, label %for.inc5.cleanup_crit_edge

for.inc5.cleanup_crit_edge:                       ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc5.for.body_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc5.cleanup_crit_edge, %komeda_plane_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %komeda_plane_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_get_layer_fourcc_list(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_put_fourcc_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #5
  tail call void @kfree(ptr noundef %plane) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 136) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rotation, align 4
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %pixel_blend_mode, align 2
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %alpha to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %alpha, align 8
  %layer = getelementptr inbounds %struct.komeda_plane, ptr %plane, i32 0, i32 1
  %9 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layer, align 8
  %id = getelementptr inbounds %struct.komeda_component, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %zpos, align 8
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %color_encoding, align 8
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %color_range to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %color_range, align 4
  %16 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %state1, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %plane, ptr %call7.i.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_plane_atomic_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 136) #8
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end26 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_plane_atomic_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #5
  tail call void @kfree(ptr noundef %state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @komeda_plane_format_mod_supported(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %layer = getelementptr inbounds %struct.komeda_plane, ptr %plane, i32 0, i32 1
  %4 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layer, align 8
  %layer_type1 = getelementptr inbounds %struct.komeda_layer, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %layer_type1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layer_type1, align 4
  %fmt_tbl = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 3
  %call = tail call zeroext i1 @komeda_format_mod_supported(ptr noundef %fmt_tbl, i32 noundef %7, i32 noundef %format, i64 noundef %modifier, i32 noundef 0) #5
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @komeda_format_mod_supported(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  %dflow = alloca %struct.komeda_data_flow_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %layer4 = getelementptr inbounds %struct.komeda_plane, ptr %plane, i32 0, i32 1
  %6 = ptrtoint ptr %layer4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layer4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dflow) #5
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %9) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then11_crit_edge, label %lor.lhs.false9

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

lor.lhs.false9:                                   ; preds = %if.end
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 1
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %lor.lhs.false9.if.then11_crit_edge, label %if.end12

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %if.end.if.then11_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %format_caps.i = getelementptr inbounds %struct.komeda_fb, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %format_caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format_caps.i, align 8
  %layer.i = getelementptr inbounds %struct.komeda_plane, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %layer.i, align 8
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipeline.i, align 4
  %26 = call ptr @memset(ptr %dflow, i32 0, i32 56)
  %normalized_zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %27 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %normalized_zpos.i, align 4
  %blending_zorder.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 16
  %29 = ptrtoint ptr %blending_zorder.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %blending_zorder.i, align 4
  %30 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtc, align 4
  %master.i = getelementptr inbounds %struct.komeda_crtc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i, align 8
  %cmp.i50 = icmp eq ptr %25, %33
  br i1 %cmp.i50, label %if.then.i, label %if.end15.if.end.i_crit_edge

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %max_slave_zorder.i = getelementptr inbounds %struct.komeda_crtc_state, ptr %call7, i32 0, i32 4
  %34 = ptrtoint ptr %max_slave_zorder.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_slave_zorder.i, align 8
  %sub.i = sub i32 %28, %35
  %36 = ptrtoint ptr %blending_zorder.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i, ptr %blending_zorder.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %37 = phi i32 [ %sub.i, %if.then.i ], [ %28, %if.end15.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10.i = icmp slt i32 %37, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %name.i = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i, align 4
  %42 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %normalized_zpos.i, align 4
  %max_slave_zorder14.i = getelementptr inbounds %struct.komeda_crtc_state, ptr %call7, i32 0, i32 4
  %44 = ptrtoint ptr %max_slave_zorder14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_slave_zorder14.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %41, i32 noundef %43, i32 noundef %45) #5
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 13
  %46 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pixel_blend_mode.i, align 2
  %conv.i = trunc i16 %47 to i8
  %pixel_blend_mode16.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 17
  %48 = ptrtoint ptr %pixel_blend_mode16.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i, ptr %pixel_blend_mode16.i, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %49 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %alpha.i, align 4
  %51 = lshr i16 %50, 8
  %conv18.i = trunc i16 %51 to i8
  %layer_alpha.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 18
  %52 = ptrtoint ptr %layer_alpha.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv18.i, ptr %layer_alpha.i, align 1
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %53 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_x.i, align 4
  %out_x.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %55 = ptrtoint ptr %out_x.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %out_x.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %56 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_y.i, align 4
  %out_y.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %58 = ptrtoint ptr %out_y.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %out_y.i, align 4
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc_w.i, align 4
  %out_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %61 = ptrtoint ptr %out_w.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %out_w.i, align 4
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %62 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crtc_h.i, align 4
  %out_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %64 = ptrtoint ptr %out_h.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %out_h.i, align 4
  %src_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %65 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_x.i, align 4
  %shr19.i = lshr i32 %66, 16
  %conv20.i = trunc i32 %shr19.i to i16
  %in_x.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 1
  %67 = ptrtoint ptr %in_x.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv20.i, ptr %in_x.i, align 4
  %src_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %68 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_y.i, align 4
  %shr21.i = lshr i32 %69, 16
  %conv22.i = trunc i32 %shr21.i to i16
  %in_y.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 2
  %70 = ptrtoint ptr %in_y.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv22.i, ptr %in_y.i, align 2
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %71 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_w.i, align 4
  %shr23.i = lshr i32 %72, 16
  %conv24.i = trunc i32 %shr23.i to i16
  %in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %73 = ptrtoint ptr %in_w.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv24.i, ptr %in_w.i, align 4
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %74 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_h.i, align 4
  %shr25.i = lshr i32 %75, 16
  %conv26.i = trunc i32 %shr25.i to i16
  %in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %76 = ptrtoint ptr %in_h.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv26.i, ptr %in_h.i, align 2
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %77 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rotation.i, align 4
  %supported_rots.i = getelementptr inbounds %struct.komeda_format_caps, ptr %21, i32 0, i32 3
  %79 = ptrtoint ptr %supported_rots.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %supported_rots.i, align 4
  %call.i = tail call i32 @drm_rotation_simplify(i32 noundef %78, i32 noundef %80) #5
  %rot.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %81 = ptrtoint ptr %rot.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i, ptr %rot.i, align 4
  %82 = ptrtoint ptr %supported_rots.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %supported_rots.i, align 4
  %and.i = and i32 %83, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %call.i)
  %cmp30.i = icmp eq i32 %and.i, %call.i
  br i1 %cmp30.i, label %if.end22, label %if.then32.i

if.then32.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %fourcc.i = getelementptr inbounds %struct.komeda_format_caps, ptr %21, i32 0, i32 1
  %modifier.i = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 8
  %84 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %modifier.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %call.i, ptr noundef %fourcc.i, i64 noundef %85) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end15.i
  %86 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %layer.i, align 8
  call void @komeda_complete_data_flow_cfg(ptr noundef %87, ptr noundef nonnull %dflow, ptr noundef %19) #5
  %en_split = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %88 = ptrtoint ptr %en_split to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load = load i8, ptr %en_split, align 2
  %89 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool23.not = icmp eq i8 %89, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call i32 @komeda_build_layer_split_data_flow(ptr noundef %7, ptr noundef %5, ptr noundef %call7, ptr noundef nonnull %dflow) #5
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = call i32 @komeda_build_layer_data_flow(ptr noundef %7, ptr noundef %5, ptr noundef %call7, ptr noundef nonnull %dflow) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.then32.i, %if.then11.i, %if.end12.cleanup_crit_edge, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call25, %if.then24 ], [ %call26, %if.else ], [ -22, %if.then11.i ], [ -22, %if.then32.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dflow) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @komeda_plane_atomic_update(ptr nocapture noundef %plane, ptr nocapture noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_build_layer_split_data_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_build_layer_data_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_complete_data_flow_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 274, i32 4}
!2 = !{ptr @komeda_plane_funcs, !3, !"komeda_plane_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 196, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 164, i32 6}
!6 = !{ptr @komeda_plane_helper_funcs, !7, !"komeda_plane_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 123, i32 44}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 90, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 31, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_plane.c", i32 52, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i8 0, i8 2}
