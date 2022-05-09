; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atmel_hlcdc_crtc = type { %struct.drm_crtc, ptr, ptr, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.90 }
%struct.anon.90 = type { i32, ptr }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.89, i32, i32, i32 }
%struct.anon.89 = type { i32, i32 }
%struct.atmel_hlcdc_crtc_state = type { %struct.drm_crtc_state, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.84 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.84 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }

@atmel_hlcdc_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @atmel_hlcdc_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @atmel_hlcdc_crtc_duplicate_state, ptr @atmel_hlcdc_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_enable_vblank, ptr @atmel_hlcdc_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@lcdc_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_mode_valid, ptr null, ptr null, ptr @atmel_hlcdc_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_atomic_check, ptr @atmel_hlcdc_crtc_atomic_begin, ptr @atmel_hlcdc_crtc_atomic_flush, ptr @atmel_hlcdc_crtc_atomic_enable, ptr @atmel_hlcdc_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4105, i64 4106, i64 4118, i64 4119]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 4105, i64 4106, i64 4118, i64 4119]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_crtc_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 470, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"lcdc_crtc_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 368, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [50 x i8] c"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 427, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @atmel_hlcdc_crtc_funcs, ptr @lcdc_crtc_helper_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdc_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atmel_hlcdc_crtc_irq(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %c) #5
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #5
  %event.i = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 2
  %2 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.atmel_hlcdc_crtc_finish_page_flip.exit_crit_edge, label %if.then.i

entry.atmel_hlcdc_crtc_finish_page_flip.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_crtc_finish_page_flip.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_send_vblank_event(ptr noundef %c, ptr noundef nonnull %3) #5
  tail call void @drm_crtc_vblank_put(ptr noundef %c) #5
  %4 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %event.i, align 4
  br label %atmel_hlcdc_crtc_finish_page_flip.exit

atmel_hlcdc_crtc_finish_page_flip.exit:           ; preds = %if.then.i, %entry.atmel_hlcdc_crtc_finish_page_flip.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call3.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_crtc_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1008) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dc1 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dc1, align 8
  %arrayidx = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %type = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end4.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb10
  ]

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 -528
  br label %for.inc

sw.bb10:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86 = getelementptr i8, ptr %5, i32 -528
  br label %for.inc

for.inc:                                          ; preds = %sw.bb10, %sw.bb, %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %primary.1 = phi ptr [ null, %if.end4.for.inc_crit_edge ], [ null, %sw.bb10 ], [ %add.ptr.i, %sw.bb ], [ null, %if.end.for.inc_crit_edge ]
  %cursor.1 = phi ptr [ null, %if.end4.for.inc_crit_edge ], [ %add.ptr.i86, %sw.bb10 ], [ null, %sw.bb ], [ null, %if.end.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %12, null
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %type.1 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.1, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %16, label %if.end4.1.for.inc.1_crit_edge [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb10.1
  ]

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

sw.bb10.1:                                        ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86.1 = getelementptr i8, ptr %12, i32 -528
  br label %for.inc.1

sw.bb.1:                                          ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 -528
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb10.1, %if.end4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %primary.1.1 = phi ptr [ %primary.1, %if.end4.1.for.inc.1_crit_edge ], [ %primary.1, %sw.bb10.1 ], [ %add.ptr.i.1, %sw.bb.1 ], [ %primary.1, %for.inc.for.inc.1_crit_edge ]
  %cursor.1.1 = phi ptr [ %cursor.1, %if.end4.1.for.inc.1_crit_edge ], [ %add.ptr.i86.1, %sw.bb10.1 ], [ %cursor.1, %sw.bb.1 ], [ %cursor.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %19, null
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end4.2:                                        ; preds = %for.inc.1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %type.2 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %type.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.2, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %23, label %if.end4.2.for.inc.2_crit_edge [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb10.2
  ]

if.end4.2.for.inc.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

sw.bb10.2:                                        ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86.2 = getelementptr i8, ptr %19, i32 -528
  br label %for.inc.2

sw.bb.2:                                          ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.2 = getelementptr i8, ptr %19, i32 -528
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb10.2, %if.end4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %primary.1.2 = phi ptr [ %primary.1.1, %if.end4.2.for.inc.2_crit_edge ], [ %primary.1.1, %sw.bb10.2 ], [ %add.ptr.i.2, %sw.bb.2 ], [ %primary.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %cursor.1.2 = phi ptr [ %cursor.1.1, %if.end4.2.for.inc.2_crit_edge ], [ %add.ptr.i86.2, %sw.bb10.2 ], [ %cursor.1.1, %sw.bb.2 ], [ %cursor.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %26, null
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end4.3:                                        ; preds = %for.inc.2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %type.3 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %type.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.3, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %30, label %if.end4.3.for.inc.3_crit_edge [
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb10.3
  ]

if.end4.3.for.inc.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

sw.bb10.3:                                        ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86.3 = getelementptr i8, ptr %26, i32 -528
  br label %for.inc.3

sw.bb.3:                                          ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.3 = getelementptr i8, ptr %26, i32 -528
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %sw.bb10.3, %if.end4.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %primary.1.3 = phi ptr [ %primary.1.2, %if.end4.3.for.inc.3_crit_edge ], [ %primary.1.2, %sw.bb10.3 ], [ %add.ptr.i.3, %sw.bb.3 ], [ %primary.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %cursor.1.3 = phi ptr [ %cursor.1.2, %if.end4.3.for.inc.3_crit_edge ], [ %add.ptr.i86.3, %sw.bb10.3 ], [ %cursor.1.2, %sw.bb.3 ], [ %cursor.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %33, null
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end4.4:                                        ; preds = %for.inc.3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %type.4 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %type.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.4, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %37, label %if.end4.4.for.inc.4_crit_edge [
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb10.4
  ]

if.end4.4.for.inc.4_crit_edge:                    ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

sw.bb10.4:                                        ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86.4 = getelementptr i8, ptr %33, i32 -528
  br label %for.inc.4

sw.bb.4:                                          ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.4 = getelementptr i8, ptr %33, i32 -528
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb10.4, %if.end4.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %primary.1.4 = phi ptr [ %primary.1.3, %if.end4.4.for.inc.4_crit_edge ], [ %primary.1.3, %sw.bb10.4 ], [ %add.ptr.i.4, %sw.bb.4 ], [ %primary.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %cursor.1.4 = phi ptr [ %cursor.1.3, %if.end4.4.for.inc.4_crit_edge ], [ %add.ptr.i86.4, %sw.bb10.4 ], [ %cursor.1.3, %sw.bb.4 ], [ %cursor.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.5, align 4
  %tobool2.not.5 = icmp eq ptr %40, null
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end4.5:                                        ; preds = %for.inc.4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %type.5 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %type.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.5, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %44, label %if.end4.5.for.inc.5_crit_edge [
    i32 1, label %sw.bb.5
    i32 3, label %sw.bb10.5
  ]

if.end4.5.for.inc.5_crit_edge:                    ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

sw.bb10.5:                                        ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i86.5 = getelementptr i8, ptr %40, i32 -528
  br label %for.inc.5

sw.bb.5:                                          ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.5 = getelementptr i8, ptr %40, i32 -528
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %sw.bb10.5, %if.end4.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %primary.1.5 = phi ptr [ %primary.1.4, %if.end4.5.for.inc.5_crit_edge ], [ %primary.1.4, %sw.bb10.5 ], [ %add.ptr.i.5, %sw.bb.5 ], [ %primary.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %cursor.1.5 = phi ptr [ %cursor.1.4, %if.end4.5.for.inc.5_crit_edge ], [ %add.ptr.i86.5, %sw.bb10.5 ], [ %cursor.1.4, %sw.bb.5 ], [ %cursor.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %call16 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %primary.1.5, ptr noundef %cursor.1.5, ptr noundef nonnull @atmel_hlcdc_crtc_funcs, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %fail, label %if.end19

if.end19:                                         ; preds = %for.inc.5
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %id = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %call7.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %id, align 8
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %50, null
  br i1 %tobool27.not, label %if.end19.if.end39_crit_edge, label %land.lhs.true

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end19
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %type31 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %type31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp32 = icmp eq i32 %54, 2
  br i1 %cmp32, label %if.then33, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %56
  %possible_crtcs = getelementptr i8, ptr %50, i32 -384
  %57 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl, ptr %possible_crtcs, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %land.lhs.true.if.end39_crit_edge, %if.end19.if.end39_crit_edge
  %58 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.1, align 4
  %tobool27.not.1 = icmp eq ptr %59, null
  br i1 %tobool27.not.1, label %if.end39.if.end39.1_crit_edge, label %land.lhs.true.1

if.end39.if.end39.1_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

land.lhs.true.1:                                  ; preds = %if.end39
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %type31.1 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %type31.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type31.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp32.1 = icmp eq i32 %63, 2
  br i1 %cmp32.1, label %if.then33.1, label %land.lhs.true.1.if.end39.1_crit_edge

land.lhs.true.1.if.end39.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

if.then33.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id, align 8
  %shl.1 = shl nuw i32 1, %65
  %possible_crtcs.1 = getelementptr i8, ptr %59, i32 -384
  %66 = ptrtoint ptr %possible_crtcs.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl.1, ptr %possible_crtcs.1, align 8
  br label %if.end39.1

if.end39.1:                                       ; preds = %if.then33.1, %land.lhs.true.1.if.end39.1_crit_edge, %if.end39.if.end39.1_crit_edge
  %67 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.2, align 4
  %tobool27.not.2 = icmp eq ptr %68, null
  br i1 %tobool27.not.2, label %if.end39.1.if.end39.2_crit_edge, label %land.lhs.true.2

if.end39.1.if.end39.2_crit_edge:                  ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.2

land.lhs.true.2:                                  ; preds = %if.end39.1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %type31.2 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %type31.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type31.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp32.2 = icmp eq i32 %72, 2
  br i1 %cmp32.2, label %if.then33.2, label %land.lhs.true.2.if.end39.2_crit_edge

land.lhs.true.2.if.end39.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.2

if.then33.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id, align 8
  %shl.2 = shl nuw i32 1, %74
  %possible_crtcs.2 = getelementptr i8, ptr %68, i32 -384
  %75 = ptrtoint ptr %possible_crtcs.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl.2, ptr %possible_crtcs.2, align 8
  br label %if.end39.2

if.end39.2:                                       ; preds = %if.then33.2, %land.lhs.true.2.if.end39.2_crit_edge, %if.end39.1.if.end39.2_crit_edge
  %76 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.3, align 4
  %tobool27.not.3 = icmp eq ptr %77, null
  br i1 %tobool27.not.3, label %if.end39.2.if.end39.3_crit_edge, label %land.lhs.true.3

if.end39.2.if.end39.3_crit_edge:                  ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.3

land.lhs.true.3:                                  ; preds = %if.end39.2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %type31.3 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %type31.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type31.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp32.3 = icmp eq i32 %81, 2
  br i1 %cmp32.3, label %if.then33.3, label %land.lhs.true.3.if.end39.3_crit_edge

land.lhs.true.3.if.end39.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.3

if.then33.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id, align 8
  %shl.3 = shl nuw i32 1, %83
  %possible_crtcs.3 = getelementptr i8, ptr %77, i32 -384
  %84 = ptrtoint ptr %possible_crtcs.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %shl.3, ptr %possible_crtcs.3, align 8
  br label %if.end39.3

if.end39.3:                                       ; preds = %if.then33.3, %land.lhs.true.3.if.end39.3_crit_edge, %if.end39.2.if.end39.3_crit_edge
  %85 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.4, align 4
  %tobool27.not.4 = icmp eq ptr %86, null
  br i1 %tobool27.not.4, label %if.end39.3.if.end39.4_crit_edge, label %land.lhs.true.4

if.end39.3.if.end39.4_crit_edge:                  ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.4

land.lhs.true.4:                                  ; preds = %if.end39.3
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %type31.4 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %type31.4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type31.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp32.4 = icmp eq i32 %90, 2
  br i1 %cmp32.4, label %if.then33.4, label %land.lhs.true.4.if.end39.4_crit_edge

land.lhs.true.4.if.end39.4_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.4

if.then33.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id, align 8
  %shl.4 = shl nuw i32 1, %92
  %possible_crtcs.4 = getelementptr i8, ptr %86, i32 -384
  %93 = ptrtoint ptr %possible_crtcs.4 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl.4, ptr %possible_crtcs.4, align 8
  br label %if.end39.4

if.end39.4:                                       ; preds = %if.then33.4, %land.lhs.true.4.if.end39.4_crit_edge, %if.end39.3.if.end39.4_crit_edge
  %94 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.5, align 4
  %tobool27.not.5 = icmp eq ptr %95, null
  br i1 %tobool27.not.5, label %if.end39.4.if.end39.5_crit_edge, label %land.lhs.true.5

if.end39.4.if.end39.5_crit_edge:                  ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.5

land.lhs.true.5:                                  ; preds = %if.end39.4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %type31.5 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %type31.5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type31.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp32.5 = icmp eq i32 %99, 2
  br i1 %cmp32.5, label %if.then33.5, label %land.lhs.true.5.if.end39.5_crit_edge

land.lhs.true.5.if.end39.5_crit_edge:             ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.5

if.then33.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id, align 8
  %shl.5 = shl nuw i32 1, %101
  %possible_crtcs.5 = getelementptr i8, ptr %95, i32 -384
  %102 = ptrtoint ptr %possible_crtcs.5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %shl.5, ptr %possible_crtcs.5, align 8
  br label %if.end39.5

if.end39.5:                                       ; preds = %if.then33.5, %land.lhs.true.5.if.end39.5_crit_edge, %if.end39.4.if.end39.5_crit_edge
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %103 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @lcdc_crtc_helper_funcs, ptr %helper_private.i, align 8
  %call45 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i, i32 noundef 256) #5
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call7.i.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #5
  %crtc48 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 3
  %104 = ptrtoint ptr %crtc48 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i, ptr %crtc48, align 4
  br label %cleanup

fail:                                             ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end39.5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %fail ], [ 0, %if.end39.5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_destroy(ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %c) #5
  tail call void @kfree(ptr noundef %c) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
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
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 288) #8
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atmel_hlcdc_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 288) #8
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #5
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 4
  %output_mode = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_mode, align 4
  %output_mode30 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %output_mode30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %output_mode30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end27 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %s) #5
  tail call void @kfree(ptr noundef %s) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_enable_vblank(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlcdc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 44, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_disable_vblank(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlcdc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 48, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_mode_valid(ptr nocapture noundef readonly %c, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %call1 = tail call i32 @atmel_hlcdc_dc_mode_valid(ptr noundef %1, ptr noundef %mode) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_mode_set_nofb(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlcdc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %c, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %sys_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %crtc_vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 23
  %10 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_vsync_start, align 4
  %conv = zext i16 %11 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 20
  %12 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_vdisplay, align 2
  %conv6 = zext i16 %13 to i32
  %crtc_vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 25
  %14 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vtotal, align 4
  %conv7 = zext i16 %15 to i32
  %crtc_vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 24
  %16 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_vsync_end, align 2
  %conv8 = zext i16 %17 to i32
  %sub9 = sub nsw i32 %conv7, %conv8
  %crtc_hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 16
  %18 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_hsync_start, align 2
  %conv15 = zext i16 %19 to i32
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 13
  %20 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_hdisplay, align 4
  %conv16 = zext i16 %21 to i32
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 18
  %22 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_htotal, align 2
  %conv18 = zext i16 %23 to i32
  %crtc_hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 17
  %24 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_hsync_end, align 4
  %conv19 = zext i16 %25 to i32
  %26 = xor i32 %conv15, -1
  %sub27 = add nsw i32 %conv19, %26
  %27 = xor i32 %conv, -1
  %sub29 = add nsw i32 %conv8, %27
  %shl = shl i32 %sub29, 16
  %or = or i32 %sub27, %shl
  %call30 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef %or) #5
  %28 = xor i32 %conv6, -1
  %sub32 = add nsw i32 %28, %conv
  %shl34 = shl i32 %sub9, 16
  %or35 = or i32 %shl34, %sub32
  %call36 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8, i32 noundef %or35) #5
  %29 = xor i32 %conv16, -1
  %sub38 = add nsw i32 %29, %conv15
  %30 = xor i32 %conv19, -1
  %sub40 = add nsw i32 %30, %conv18
  %shl41 = shl i32 %sub40, 16
  %or42 = or i32 %shl41, %sub38
  %call43 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 12, i32 noundef %or42) #5
  %31 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %crtc_hdisplay, align 4
  %conv45 = zext i16 %32 to i32
  %sub46 = add nsw i32 %conv45, -1
  %33 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_vdisplay, align 2
  %conv48 = zext i16 %34 to i32
  %sub49 = shl nuw i32 %conv48, 16
  %shl50 = add i32 %sub49, -65536
  %or51 = or i32 %shl50, %sub46
  %call52 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 16, i32 noundef %or51) #5
  %35 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dc, align 8
  %hlcdc54 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %hlcdc54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hlcdc54, align 4
  %sys_clk55 = getelementptr inbounds %struct.atmel_hlcdc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %sys_clk55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sys_clk55, align 4
  %call56 = tail call i32 @clk_get_rate(ptr noundef %40) #5
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 12
  %41 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %42, 1000
  %43 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dc, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %fixed_clksrc = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %fixed_clksrc to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fixed_clksrc, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool58.not = icmp eq i8 %48, 0
  %49 = xor i8 %48, 1
  %50 = zext i8 %49 to i32
  %prate.0 = shl i32 %call56, %50
  %mask.0 = select i1 %tobool58.not, i32 16711685, i32 16711681
  %cfg.0 = select i1 %tobool58.not, i32 4, i32 0
  %add = add i32 %mul, -1
  %sub64 = add i32 %add, %prate.0
  %div65 = udiv i32 %sub64, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div65)
  %cmp = icmp slt i32 %div65, 2
  br i1 %cmp, label %if.end.if.end97_crit_edge, label %if.else

if.end.if.end97_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.else:                                          ; preds = %if.end
  %sub68 = shl i32 %div65, 16
  %shl69 = add i32 %sub68, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %shl69)
  %tobool70.not = icmp ult i32 %shl69, 16777216
  br i1 %tobool70.not, label %if.else83, label %if.then71

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %div73183 = lshr i32 %prate.0, 1
  %sub75 = add i32 %add, %div73183
  %div76 = udiv i32 %sub75, %mul
  %sub77 = shl i32 %div76, 16
  %shl78 = add i32 %sub77, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %shl78)
  %tobool80.not = icmp ult i32 %shl78, 16777216
  %spec.store.select = select i1 %tobool80.not, i32 %div76, i32 16711680
  br label %if.end97

if.else83:                                        ; preds = %if.else
  %div84 = udiv i32 %prate.0, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div84)
  %cmp85 = icmp sgt i32 %div84, 1
  br i1 %cmp85, label %land.lhs.true, label %if.else83.if.end97_crit_edge

if.else83.if.end97_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

land.lhs.true:                                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #7
  %div87 = udiv i32 %prate.0, %div84
  %sub88 = sub i32 %div87, %mul
  %mul89 = mul i32 %sub88, 10
  %div90 = udiv i32 %prate.0, %div65
  %sub91 = sub i32 %mul, %div90
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89, i32 %sub91)
  %cmp92 = icmp ult i32 %mul89, %sub91
  %spec.select = select i1 %cmp92, i32 %div84, i32 %div65
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true, %if.else83.if.end97_crit_edge, %if.then71, %if.end.if.end97_crit_edge
  %cfg.1 = phi i32 [ 0, %if.then71 ], [ %cfg.0, %if.end.if.end97_crit_edge ], [ %cfg.0, %land.lhs.true ], [ %cfg.0, %if.else83.if.end97_crit_edge ]
  %div.1 = phi i32 [ %spec.store.select, %if.then71 ], [ 2, %if.end.if.end97_crit_edge ], [ %spec.select, %land.lhs.true ], [ %div65, %if.else83.if.end97_crit_edge ]
  %sub98 = shl i32 %div.1, 16
  %shl99 = add i32 %sub98, -131072
  %or100 = or i32 %shl99, %cfg.1
  %call.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef %mask.0, i32 noundef %or100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state, align 4
  %output_mode = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %output_mode, align 4
  %shl104 = shl i32 %54, 8
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 11
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %and105 = lshr i32 %56, 2
  %57 = and i32 %and105, 2
  %58 = or i32 %57, %shl104
  %and111 = lshr i32 %56, 1
  %59 = and i32 %and111, 1
  %60 = or i32 %58, %59
  %call.i186 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 2044831, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dc, align 8
  %hlcdc118 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %hlcdc118 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hlcdc118, align 4
  %sys_clk119 = getelementptr inbounds %struct.atmel_hlcdc, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %sys_clk119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sys_clk119, align 4
  tail call void @clk_disable(ptr noundef %66) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end97, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %66, %if.end97 ], [ %9, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_atomic_check(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %c, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %state2.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2.i, align 4
  %num_connector46.i = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %num_connector46.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_connector46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp47.i = icmp sgt i32 %9, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dc.i = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %11, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %12 = phi ptr [ %7, %for.body.lr.ph.i ], [ %42, %for.inc.i.for.body.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %output_fmts.048.i = phi i32 [ 15, %for.body.lr.ph.i ], [ %output_fmts.3.i, %for.inc.i.for.body.i_crit_edge ]
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connectors.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_connnectors_state, ptr %14, i32 %i.049.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i13 = getelementptr %struct.__drm_connnectors_state, ptr %14, i32 %i.049.i, i32 3
  %17 = ptrtoint ptr %new_state.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %new_state.i13, align 4
  %crtc11.i = getelementptr inbounds %struct.drm_connector_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %crtc11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc11.i, align 4
  %tobool12.not.i = icmp eq ptr %20, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %best_encoder.i.i = getelementptr inbounds %struct.drm_connector_state, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %best_encoder.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %best_encoder.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %encoder2.i.i = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 41
  %25 = ptrtoint ptr %encoder2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %encoder2.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %encoder.0.i.i = phi ptr [ %24, %if.end.i.if.end.i.i_crit_edge ], [ %26, %if.then.i.i ]
  %call.i.i = tail call i32 @atmel_hlcdc_encoder_get_bus_fmt(ptr noundef %encoder.0.i.i) #5
  %27 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call.i.i, label %sw.default.i.i [
    i32 0, label %for.cond.preheader.i.i
    i32 4118, label %if.end.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge
    i32 4119, label %sw.bb3.i.i
    i32 4105, label %sw.bb4.i.i
    i32 4106, label %sw.bb5.i.i
  ]

if.end.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %num_bus_formats.i.i = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 20, i32 7
  %28 = ptrtoint ptr %num_bus_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_bus_formats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp29.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp29.not.i.i, label %for.cond.preheader.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %bus_formats.i.i = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 20, i32 6
  %30 = ptrtoint ptr %bus_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus_formats.i.i, align 8
  br label %for.body.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %j.031.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %supported_fmts.030.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %supported_fmts.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %31, i32 %j.031.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %33, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 4118, label %sw.bb6.i.i
    i32 4119, label %sw.bb7.i.i
    i32 4105, label %sw.bb9.i.i
    i32 4106, label %sw.bb11.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

sw.bb6.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i = or i32 %supported_fmts.030.i.i, 1
  br label %for.inc.i.i

sw.bb7.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or8.i.i = or i32 %supported_fmts.030.i.i, 2
  br label %for.inc.i.i

sw.bb9.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or10.i.i = or i32 %supported_fmts.030.i.i, 4
  br label %for.inc.i.i

sw.bb11.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or12.i.i = or i32 %supported_fmts.030.i.i, 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %supported_fmts.1.i.i = phi i32 [ %supported_fmts.030.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %or12.i.i, %sw.bb11.i.i ], [ %or10.i.i, %sw.bb9.i.i ], [ %or8.i.i, %sw.bb7.i.i ], [ %or.i.i, %sw.bb6.i.i ]
  %inc.i.i = add nuw i32 %j.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %29
  br i1 %exitcond.not.i.i, label %for.inc.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_connector_output_mode.exit.i

atmel_hlcdc_connector_output_mode.exit.i:         ; preds = %for.inc.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge, %sw.default.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %for.cond.preheader.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge, %if.end.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %sw.default.i.i ], [ 8, %sw.bb5.i.i ], [ 4, %sw.bb4.i.i ], [ 2, %sw.bb3.i.i ], [ 1, %if.end.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge ], [ %supported_fmts.1.i.i, %for.inc.i.i.atmel_hlcdc_connector_output_mode.exit.i_crit_edge ]
  %35 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dc.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %conflicting_output_formats.i = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %conflicting_output_formats.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %conflicting_output_formats.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool15.not.i = icmp eq i8 %40, 0
  %and.i = and i32 %retval.0.i.i, %output_fmts.048.i
  %or.i = or i32 %retval.0.i.i, %output_fmts.048.i
  %output_fmts.1.i = select i1 %tobool15.not.i, i32 %or.i, i32 %and.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %atmel_hlcdc_connector_output_mode.exit.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %output_fmts.3.i = phi i32 [ %output_fmts.048.i, %for.body.i.for.inc.i_crit_edge ], [ %output_fmts.1.i, %atmel_hlcdc_connector_output_mode.exit.i ], [ %output_fmts.048.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %41 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state2.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_connector.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %44
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_fmts.3.i)
  %tobool20.not.i = icmp eq i32 %output_fmts.3.i, 0
  br i1 %tobool20.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %output_fmts.0.lcssa53.i = phi i32 [ %output_fmts.3.i, %for.end.i.if.end_crit_edge ], [ 15, %entry.if.end_crit_edge ]
  %45 = tail call i32 @llvm.ctlz.i32(i32 %output_fmts.0.lcssa53.i, i1 true) #5, !range !17
  %sub.i = xor i32 %45, 31
  %output_mode.i = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %5, i32 0, i32 1
  %46 = ptrtoint ptr %output_mode.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %output_mode.i, align 4
  %call2 = tail call i32 @atmel_hlcdc_plane_prepare_disc_area(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_begin(ptr noundef %c, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %c) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_flush(ptr noundef %c, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %c, i32 0, i32 22
  %2 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state6, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then:                                          ; preds = %entry
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %c, i32 0, i32 8
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %pipe = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pipe, align 4
  %call10 = tail call i32 @drm_crtc_vblank_get(ptr noundef %c) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.then.if.end_crit_edge, label %do.end24, !prof !18

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end24:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end24, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state6, align 4
  %event38 = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %event38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event38, align 4
  %event39 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 2
  %13 = ptrtoint ptr %event39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %event39, align 4
  store ptr null, ptr %event38, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry.if.end42_crit_edge
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %event_lock44 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock44, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_enable(ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 8
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlcdc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status, align 4, !annotation !19
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #5
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  tail call void @pm_runtime_forbid(ptr noundef %12) #5
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %call7 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %14) #5
  %15 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dc, align 8
  %hlcdc9 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %hlcdc9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hlcdc9, align 4
  %sys_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sys_clk, align 4
  %call.i72 = tail call i32 @clk_prepare(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 1) #5
  %call1274 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1274)
  %tobool.not75 = icmp eq i32 %call1274, 0
  br i1 %tobool.not75, label %clk_prepare_enable.exit.land.rhs_crit_edge, label %clk_prepare_enable.exit.while.end_crit_edge

clk_prepare_enable.exit.while.end_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

clk_prepare_enable.exit.land.rhs_crit_edge:       ; preds = %clk_prepare_enable.exit
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %clk_prepare_enable.exit.land.rhs_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.end, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !21
  %call12 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %do.end.land.rhs_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %clk_prepare_enable.exit.while.end_crit_edge
  %call20 = call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 2) #5
  %call2276 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2276)
  %tobool23.not77 = icmp eq i32 %call2276, 0
  br i1 %tobool23.not77, label %while.end.land.rhs24_crit_edge, label %while.end.while.end39_crit_edge

while.end.while.end39_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39

while.end.land.rhs24_crit_edge:                   ; preds = %while.end
  br label %land.rhs24

land.rhs24:                                       ; preds = %do.end34.land.rhs24_crit_edge, %while.end.land.rhs24_crit_edge
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end34, label %land.rhs24.while.end39_crit_edge

land.rhs24.while.end39_crit_edge:                 ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39

do.end34:                                         ; preds = %land.rhs24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !23
  %call22 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end34.land.rhs24_crit_edge, label %do.end34.while.end39_crit_edge

do.end34.while.end39_crit_edge:                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39

do.end34.land.rhs24_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs24

while.end39:                                      ; preds = %do.end34.while.end39_crit_edge, %land.rhs24.while.end39_crit_edge, %while.end.while.end39_crit_edge
  %call40 = call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 4) #5
  %call4278 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4278)
  %tobool43.not79 = icmp eq i32 %call4278, 0
  br i1 %tobool43.not79, label %while.end39.land.rhs44_crit_edge, label %while.end39.while.end59_crit_edge

while.end39.while.end59_crit_edge:                ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end59

while.end39.land.rhs44_crit_edge:                 ; preds = %while.end39
  br label %land.rhs44

land.rhs44:                                       ; preds = %do.end54.land.rhs44_crit_edge, %while.end39.land.rhs44_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %and45 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.end54, label %land.rhs44.while.end59_crit_edge

land.rhs44.while.end59_crit_edge:                 ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end59

do.end54:                                         ; preds = %land.rhs44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !25
  %call42 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end54.land.rhs44_crit_edge, label %do.end54.while.end59_crit_edge

do.end54.while.end59_crit_edge:                   ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end59

do.end54.land.rhs44_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs44

while.end59:                                      ; preds = %do.end54.while.end59_crit_edge, %land.rhs44.while.end59_crit_edge, %while.end39.while.end59_crit_edge
  %27 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev3, align 4
  %call.i73 = call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_disable(ptr noundef %c, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %dc = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 8
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlcdc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status, align 4, !annotation !19
  tail call void @drm_crtc_vblank_off(ptr noundef %c) #5
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #5
  %call5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef 4) #5
  %call671 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call671)
  %tobool.not72 = icmp eq i32 %call671, 0
  br i1 %tobool.not72, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.rhs.while.end_crit_edge, label %do.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !27
  %call6 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.end.land.rhs_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %call14 = call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef 2) #5
  %call1673 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1673)
  %tobool17.not74 = icmp eq i32 %call1673, 0
  br i1 %tobool17.not74, label %while.end.land.rhs18_crit_edge, label %while.end.while.end32_crit_edge

while.end.while.end32_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end32

while.end.land.rhs18_crit_edge:                   ; preds = %while.end
  br label %land.rhs18

land.rhs18:                                       ; preds = %do.end27.land.rhs18_crit_edge, %while.end.land.rhs18_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and19 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.rhs18.while.end32_crit_edge, label %do.end27

land.rhs18.while.end32_crit_edge:                 ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end32

do.end27:                                         ; preds = %land.rhs18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !29
  %call16 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end27.land.rhs18_crit_edge, label %do.end27.while.end32_crit_edge

do.end27.while.end32_crit_edge:                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end32

do.end27.land.rhs18_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs18

while.end32:                                      ; preds = %do.end27.while.end32_crit_edge, %land.rhs18.while.end32_crit_edge, %while.end.while.end32_crit_edge
  %call33 = call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef 1) #5
  %call3575 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3575)
  %tobool36.not76 = icmp eq i32 %call3575, 0
  br i1 %tobool36.not76, label %while.end32.land.rhs37_crit_edge, label %while.end32.while.end51_crit_edge

while.end32.while.end51_crit_edge:                ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end51

while.end32.land.rhs37_crit_edge:                 ; preds = %while.end32
  br label %land.rhs37

land.rhs37:                                       ; preds = %do.end46.land.rhs37_crit_edge, %while.end32.land.rhs37_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and38 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.rhs37.while.end51_crit_edge, label %do.end46

land.rhs37.while.end51_crit_edge:                 ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end51

do.end46:                                         ; preds = %land.rhs37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !31
  %call35 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end46.land.rhs37_crit_edge, label %do.end46.while.end51_crit_edge

do.end46.while.end51_crit_edge:                   ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end51

do.end46.land.rhs37_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs37

while.end51:                                      ; preds = %do.end46.while.end51_crit_edge, %land.rhs37.while.end51_crit_edge, %while.end32.while.end51_crit_edge
  %17 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dc, align 8
  %hlcdc53 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %hlcdc53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hlcdc53, align 4
  %sys_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sys_clk, align 4
  call void @clk_disable(ptr noundef %22) #5
  call void @clk_unprepare(ptr noundef %22) #5
  %23 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3, align 4
  %call55 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %24) #5
  %25 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev3, align 4
  call void @pm_runtime_allow(ptr noundef %26) #5
  %27 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev3, align 4
  %call.i70 = call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_dc_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_plane_prepare_disc_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_encoder_get_bus_fmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @atmel_hlcdc_crtc_funcs, !1, !"atmel_hlcdc_crtc_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c", i32 470, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c", i32 427, i32 6}
!4 = !{ptr @lcdc_crtc_helper_funcs, !5, !"lcdc_crtc_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c", i32 368, i32 43}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{i32 0, i32 33}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"auto-init"}
!20 = !{i64 2156755056}
!21 = !{i64 2156754898}
!22 = !{i64 2156755505}
!23 = !{i64 2156755347}
!24 = !{i64 2156755954}
!25 = !{i64 2156755796}
!26 = !{i64 2156753709}
!27 = !{i64 2156753551}
!28 = !{i64 2156754158}
!29 = !{i64 2156754000}
!30 = !{i64 2156754607}
!31 = !{i64 2156754449}
