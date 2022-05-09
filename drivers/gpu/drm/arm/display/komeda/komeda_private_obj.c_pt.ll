; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_private_state_funcs = type { ptr, ptr }
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
%struct.komeda_pipeline_state = type { %struct.drm_private_state, ptr, ptr, i32 }
%struct.drm_private_state = type { ptr }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.komeda_component_state = type { %struct.drm_private_state, ptr, %union.anon.86, i16, i16, i16, [5 x %struct.komeda_component_output] }
%union.anon.86 = type { ptr }
%struct.komeda_component_output = type { ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }

@komeda_pipeline_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_pipeline_atomic_duplicate_state, ptr @komeda_pipeline_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@komeda_layer_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_layer_atomic_duplicate_state, ptr @komeda_layer_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_scaler_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_scaler_atomic_duplicate_state, ptr @komeda_scaler_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_compiz_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_compiz_atomic_duplicate_state, ptr @komeda_compiz_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_splitter_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_splitter_atomic_duplicate_state, ptr @komeda_splitter_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_merger_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_merger_atomic_duplicate_state, ptr @komeda_merger_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_improc_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_improc_atomic_duplicate_state, ptr @komeda_improc_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@komeda_timing_ctrlr_obj_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @komeda_timing_ctrlr_atomic_duplicate_state, ptr @komeda_timing_ctrlr_atomic_destroy_state }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"komeda_pipeline_obj_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 345, i32 45 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"komeda_layer_obj_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 43, i32 45 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"komeda_scaler_obj_funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 85, i32 45 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"komeda_compiz_obj_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 128, i32 45 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"komeda_splitter_obj_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 171, i32 45 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"komeda_merger_obj_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 214, i32 45 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"komeda_improc_obj_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 258, i32 45 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"komeda_timing_ctrlr_obj_funcs\00", align 1
@___asan_gen_.23 = private constant [59 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 301, i32 45 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @komeda_pipeline_obj_funcs, ptr @komeda_layer_obj_funcs, ptr @komeda_scaler_obj_funcs, ptr @komeda_compiz_obj_funcs, ptr @komeda_splitter_obj_funcs, ptr @komeda_merger_obj_funcs, ptr @komeda_improc_obj_funcs, ptr @komeda_timing_ctrlr_obj_funcs], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_pipeline_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_layer_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_scaler_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_compiz_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_splitter_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_merger_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_improc_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_timing_ctrlr_obj_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_kms_add_private_objs(ptr noundef %kms, ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp174 = icmp sgt i32 %1, 0
  br i1 %cmp174, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0175 = phi i32 [ %inc57, %for.inc56.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %i.0175
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %komeda_pipeline_obj_add.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

komeda_pipeline_obj_add.exit:                     ; preds = %for.body
  %pipe1.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %pipe1.i, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @komeda_pipeline_obj_funcs) #3
  %n_layers = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2170 = icmp sgt i32 %7, 0
  br i1 %cmp2170, label %komeda_pipeline_obj_add.exit.for.body3_crit_edge, label %komeda_pipeline_obj_add.exit.for.end_crit_edge

komeda_pipeline_obj_add.exit.for.end_crit_edge:   ; preds = %komeda_pipeline_obj_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

komeda_pipeline_obj_add.exit.for.body3_crit_edge: ; preds = %komeda_pipeline_obj_add.exit
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %komeda_pipeline_obj_add.exit.for.body3_crit_edge
  %j.0171 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %komeda_pipeline_obj_add.exit.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 7, i32 %j.0171
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 88) #6
  %tobool.not.i111 = icmp eq ptr %call7.i.i.i110, null
  br i1 %tobool.not.i111, label %for.body3.cleanup_crit_edge, label %for.inc

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %for.body3
  %component.i = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i110, i32 0, i32 1
  %11 = ptrtoint ptr %component.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %component.i, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %9, ptr noundef nonnull %call7.i.i.i110, ptr noundef nonnull @komeda_layer_obj_funcs) #3
  %inc = add nuw nsw i32 %j.0171, 1
  %12 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_layers, align 4
  %cmp2 = icmp slt i32 %inc, %13
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %komeda_pipeline_obj_add.exit.for.end_crit_edge
  %wb_layer = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %wb_layer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wb_layer, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %for.end.if.end16_crit_edge, label %if.then10

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then10:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 88) #6
  %tobool.not.i115 = icmp eq ptr %call7.i.i.i114, null
  br i1 %tobool.not.i115, label %if.then10.cleanup_crit_edge, label %komeda_layer_obj_add.exit119.thread

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

komeda_layer_obj_add.exit119.thread:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  %component.i116 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i114, i32 0, i32 1
  %17 = ptrtoint ptr %component.i116 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %component.i116, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef nonnull %15, ptr noundef nonnull %call7.i.i.i114, ptr noundef nonnull @komeda_layer_obj_funcs) #3
  br label %if.end16

if.end16:                                         ; preds = %komeda_layer_obj_add.exit119.thread, %for.end.if.end16_crit_edge
  %n_scalers = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %n_scalers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_scalers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18172 = icmp sgt i32 %19, 0
  br i1 %cmp18172, label %if.end16.for.body19_crit_edge, label %if.end16.for.end27_crit_edge

if.end16.for.end27_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end27

if.end16.for.body19_crit_edge:                    ; preds = %if.end16
  br label %for.body19

for.body19:                                       ; preds = %for.inc25.for.body19_crit_edge, %if.end16.for.body19_crit_edge
  %j.1173 = phi i32 [ %inc26, %for.inc25.for.body19_crit_edge ], [ 0, %if.end16.for.body19_crit_edge ]
  %arrayidx20 = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 9, i32 %j.1173
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i120 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 80) #6
  %tobool.not.i121 = icmp eq ptr %call7.i.i.i120, null
  br i1 %tobool.not.i121, label %for.body19.cleanup_crit_edge, label %for.inc25

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc25:                                        ; preds = %for.body19
  %component.i122 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i120, i32 0, i32 1
  %23 = ptrtoint ptr %component.i122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %component.i122, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %21, ptr noundef nonnull %call7.i.i.i120, ptr noundef nonnull @komeda_scaler_obj_funcs) #3
  %inc26 = add nuw nsw i32 %j.1173, 1
  %24 = ptrtoint ptr %n_scalers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_scalers, align 4
  %cmp18 = icmp slt i32 %inc26, %25
  br i1 %cmp18, label %for.inc25.for.body19_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end27

for.inc25.for.body19_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %if.end16.for.end27_crit_edge
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %compiz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %compiz, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 116) #6
  %tobool.not.i126 = icmp eq ptr %call7.i.i.i125, null
  br i1 %tobool.not.i126, label %for.end27.cleanup_crit_edge, label %if.end31

for.end27.cleanup_crit_edge:                      ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end31:                                         ; preds = %for.end27
  %component.i127 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i125, i32 0, i32 1
  %29 = ptrtoint ptr %component.i127 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %component.i127, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %27, ptr noundef nonnull %call7.i.i.i125, ptr noundef nonnull @komeda_compiz_obj_funcs) #3
  %splitter = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %splitter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %splitter, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %if.end31.if.end39_crit_edge, label %if.then33

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then33:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 68) #6
  %tobool.not.i131 = icmp eq ptr %call7.i.i.i130, null
  br i1 %tobool.not.i131, label %if.then33.cleanup_crit_edge, label %komeda_splitter_obj_add.exit.thread

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

komeda_splitter_obj_add.exit.thread:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  %component.i132 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i130, i32 0, i32 1
  %33 = ptrtoint ptr %component.i132 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %component.i132, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef nonnull %31, ptr noundef nonnull %call7.i.i.i130, ptr noundef nonnull @komeda_splitter_obj_funcs) #3
  br label %if.end39

if.end39:                                         ; preds = %komeda_splitter_obj_add.exit.thread, %if.end31.if.end39_crit_edge
  %merger = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %merger to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %merger, align 4
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %if.end39.if.end47_crit_edge, label %if.then41

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then41:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 64) #6
  %tobool.not.i136 = icmp eq ptr %call7.i.i.i135, null
  br i1 %tobool.not.i136, label %if.then41.cleanup_crit_edge, label %komeda_merger_obj_add.exit.thread

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

komeda_merger_obj_add.exit.thread:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  %component.i137 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i135, i32 0, i32 1
  %37 = ptrtoint ptr %component.i137 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %component.i137, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef nonnull %35, ptr noundef nonnull %call7.i.i.i135, ptr noundef nonnull @komeda_merger_obj_funcs) #3
  br label %if.end47

if.end47:                                         ; preds = %komeda_merger_obj_add.exit.thread, %if.end39.if.end47_crit_edge
  %improc = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 14
  %38 = ptrtoint ptr %improc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %improc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i140 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 364) #6
  %tobool.not.i141 = icmp eq ptr %call7.i.i.i140, null
  br i1 %tobool.not.i141, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %component.i142 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i140, i32 0, i32 1
  %41 = ptrtoint ptr %component.i142 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %component.i142, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %39, ptr noundef nonnull %call7.i.i.i140, ptr noundef nonnull @komeda_improc_obj_funcs) #3
  %ctrlr = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 15
  %42 = ptrtoint ptr %ctrlr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrlr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 116) #6
  %tobool.not.i146 = icmp eq ptr %call7.i.i.i145, null
  br i1 %tobool.not.i146, label %if.end51.cleanup_crit_edge, label %for.inc56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc56:                                        ; preds = %if.end51
  %component.i147 = getelementptr inbounds %struct.komeda_component_state, ptr %call7.i.i.i145, i32 0, i32 1
  %45 = ptrtoint ptr %component.i147 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %component.i147, align 4
  tail call void @drm_atomic_private_obj_init(ptr noundef %kms, ptr noundef %43, ptr noundef nonnull %call7.i.i.i145, ptr noundef nonnull @komeda_timing_ctrlr_obj_funcs) #3
  %inc57 = add nuw nsw i32 %i.0175, 1
  %46 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc57, %47
  br i1 %cmp, label %for.inc56.for.body_crit_edge, label %for.inc56.cleanup_crit_edge

for.inc56.cleanup_crit_edge:                      ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.inc56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %for.end27.cleanup_crit_edge, %for.body19.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %for.body3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body19.cleanup_crit_edge ], [ -12, %for.body3.cleanup_crit_edge ], [ 0, %for.inc56.cleanup_crit_edge ], [ -12, %if.then10.cleanup_crit_edge ], [ -12, %for.end27.cleanup_crit_edge ], [ -12, %if.then33.cleanup_crit_edge ], [ -12, %if.then41.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_kms_cleanup_private_objs(ptr noundef readonly %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %privobj_list = getelementptr inbounds %struct.drm_device, ptr %kms, i32 0, i32 30, i32 22
  %0 = ptrtoint ptr %privobj_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privobj_list, align 4
  %cmp.not17 = icmp eq ptr %1, %privobj_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %obj.018 = phi ptr [ %next.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %obj.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %obj.018, align 4
  tail call void @drm_atomic_private_obj_fini(ptr noundef %obj.018) #3
  %cmp.not = icmp eq ptr %next.0, %privobj_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_pipeline_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 16, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %active_comps = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %active_comps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %active_comps, align 4
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_pipeline_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_layer_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 88, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_layer_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_scaler_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 80, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_scaler_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_compiz_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 116, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_compiz_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_splitter_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 68, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_splitter_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_merger_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 64, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_merger_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_improc_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 364, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_improc_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_timing_ctrlr_atomic_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 60, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_inputs.i, align 4
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %affected_inputs.i, align 4
  store i16 0, ptr %active_inputs.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %changed_active_inputs.i, align 2
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_timing_ctrlr_atomic_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @komeda_pipeline_obj_funcs, !1, !"komeda_pipeline_obj_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 345, i32 45}
!2 = !{ptr @komeda_layer_obj_funcs, !3, !"komeda_layer_obj_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 43, i32 45}
!4 = !{ptr @komeda_scaler_obj_funcs, !5, !"komeda_scaler_obj_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 85, i32 45}
!6 = !{ptr @komeda_compiz_obj_funcs, !7, !"komeda_compiz_obj_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 128, i32 45}
!8 = !{ptr @komeda_splitter_obj_funcs, !9, !"komeda_splitter_obj_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 171, i32 45}
!10 = !{ptr @komeda_merger_obj_funcs, !11, !"komeda_merger_obj_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 214, i32 45}
!12 = !{ptr @komeda_improc_obj_funcs, !13, !"komeda_improc_obj_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 258, i32 45}
!14 = !{ptr @komeda_timing_ctrlr_obj_funcs, !15, !"komeda_timing_ctrlr_obj_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_private_obj.c", i32 301, i32 45}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
