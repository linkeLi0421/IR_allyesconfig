; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tilcdc/tilcdc_external.c_pt.bc'
source_filename = "../drivers/gpu/drm/tilcdc/tilcdc_external.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tilcdc_panel_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.tilcdc_drm_private = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.notifier_block, ptr, ptr, i32, [8 x ptr], i32, [8 x ptr], ptr, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@tilcdc_add_component_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: No suitable encoder found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tilcdc_add_component_encoder\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/tilcdc/tilcdc_external.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tilcdc_add_component_encoder._entry_ptr = internal global ptr @tilcdc_add_component_encoder._entry, section ".printk_index", align 4
@panel_info_tda998x = internal constant { %struct.tilcdc_panel_info, [56 x i8] } { %struct.tilcdc_panel_info { i32 255, i32 0, i32 16, i32 16, i32 128, i8 0, i8 1, i32 1, i32 1, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tilcdc_attach_external_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drm_encoder_init() failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tilcdc_attach_external_device\00", [34 x i8] zeroinitializer }, align 32
@tilcdc_attach_external_device._entry_ptr = internal global ptr @tilcdc_attach_external_device._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,tda998x\00", [20 x i8] zeroinitializer }, align 32
@tilcdc_encoder_find_connector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No connector found for %s encoder (id %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tilcdc_encoder_find_connector\00", [34 x i8] zeroinitializer }, align 32
@tilcdc_encoder_find_connector._entry_ptr = internal global ptr @tilcdc_encoder_find_connector._entry, section ".printk_index", align 4
@panel_info_default = internal constant { %struct.tilcdc_panel_info, [56 x i8] } { %struct.tilcdc_panel_info { i32 255, i32 0, i32 16, i32 16, i32 128, i8 0, i8 0, i32 0, i32 1, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 70, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"panel_info_tda998x\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 18, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 132, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 168, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 54, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"panel_info_default\00", align 1
@___asan_gen_.53 = private constant [44 x i8] c"../drivers/gpu/drm/tilcdc/tilcdc_external.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 31, i32 39 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @tilcdc_add_component_encoder._entry, ptr @tilcdc_add_component_encoder._entry_ptr, ptr @tilcdc_attach_external_device._entry, ptr @tilcdc_attach_external_device._entry_ptr, ptr @tilcdc_encoder_find_connector._entry, ptr @tilcdc_encoder_find_connector._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @panel_info_tda998x, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @panel_info_default], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_add_component_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_info_tda998x to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_attach_external_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_encoder_find_connector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_info_default to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_add_component_encoder(ptr noundef readonly %ddev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 30, i32 16
  %crtc = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %possible_crtcs = getelementptr i8, ptr %.pn, i32 40
  %3 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_crtcs, align 4
  %5 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %encoder_list, %for.cond.for.end_crit_edge ]
  %encoder.0.le = getelementptr i8, ptr %.pn.lcssa, i32 -4
  %tobool8.not = icmp eq ptr %encoder.0.le, null
  br i1 %tobool8.not, label %do.end, label %if.end10

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 30, i32 12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10
  %.pn.in.i = phi ptr [ %connector_list.i, %if.end10 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %tilcdc_encoder_find_connector.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %connector.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %call.i = tail call zeroext i1 @drm_connector_has_possible_encoder(ptr noundef %connector.0.i, ptr noundef nonnull %encoder.0.le) #5
  br i1 %call.i, label %tilcdc_encoder_find_connector.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

tilcdc_encoder_find_connector.exit.thread:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr i8, ptr %.pn.lcssa, i32 28
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %base.i = getelementptr i8, ptr %.pn.lcssa, i32 8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef %15, i32 noundef %17) #8
  %external_connector31 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %external_connector31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %external_connector31, align 4
  br label %cleanup

tilcdc_encoder_find_connector.exit:               ; preds = %for.body.i
  %external_connector = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %external_connector to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %connector.0.i, ptr %external_connector, align 4
  %tobool12.not = icmp eq ptr %connector.0.i, null
  br i1 %tobool12.not, label %tilcdc_encoder_find_connector.exit.cleanup_crit_edge, label %if.end14

tilcdc_encoder_find_connector.exit.cleanup_crit_edge: ; preds = %tilcdc_encoder_find_connector.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %tilcdc_encoder_find_connector.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc, align 4
  tail call void @tilcdc_crtc_set_simulate_vesa_sync(ptr noundef %21, i1 noundef zeroext true) #5
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 4
  tail call void @tilcdc_crtc_set_panel_info(ptr noundef %23, ptr noundef nonnull @panel_info_tda998x) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %tilcdc_encoder_find_connector.exit.cleanup_crit_edge, %tilcdc_encoder_find_connector.exit.thread, %do.end
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -19, %do.end ], [ -19, %tilcdc_encoder_find_connector.exit.cleanup_crit_edge ], [ -19, %tilcdc_encoder_find_connector.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_crtc_set_simulate_vesa_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_crtc_set_panel_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_attach_external_device(ptr noundef %ddev) local_unnamed_addr #0 align 64 {
entry:
  %bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #5
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #5
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !33
  %dev = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = call i32 @drm_of_find_panel_or_bridge(ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #5
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then1 [
    i32 -19, label %entry.cleanup_crit_edge
    i32 0, label %if.end2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 72, i32 noundef 3520) #5
  %external_encoder = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %external_encoder to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %external_encoder, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end2.cleanup_crit_edge, label %if.end8

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %call10 = call i32 @drm_simple_encoder_init(ptr noundef %ddev, ptr noundef nonnull %call.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %call10) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end14.if.end23_crit_edge, label %if.then16

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call18 = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %17, ptr noundef nonnull %15, i32 noundef 17) #5
  %18 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call18 to i32
  br label %err_encoder_cleanup

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %20 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge, align 4
  %22 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private, align 4
  %external_encoder.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %external_encoder.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %external_encoder.i, align 4
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %possible_crtcs.i, align 4
  %27 = load ptr, ptr %external_encoder.i, align 4
  %call.i48 = call i32 @drm_bridge_attach(ptr noundef %27, ptr noundef %21, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.err_encoder_cleanup_crit_edge

if.end23.err_encoder_cleanup_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_encoder_cleanup

if.end.i:                                         ; preds = %if.end23
  %crtc.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %23, i32 0, i32 11
  %28 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc.i, align 4
  call void @tilcdc_crtc_set_panel_info(ptr noundef %29, ptr noundef nonnull @panel_info_default) #5
  %30 = ptrtoint ptr %external_encoder.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %external_encoder.i, align 4
  %connector_list.i.i = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 30, i32 12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %connector_list.i.i, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %connector_list.i.i
  br i1 %cmp.not.i.i, label %tilcdc_encoder_find_connector.exit.i.thread, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %connector.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %call.i.i = call zeroext i1 @drm_connector_has_possible_encoder(ptr noundef %connector.0.i.i, ptr noundef %31) #5
  br i1 %call.i.i, label %tilcdc_encoder_find_connector.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

tilcdc_encoder_find_connector.exit.i.thread:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %name.i.i = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 3
  %35 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 2
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef %36, i32 noundef %38) #8
  %external_connector.i52 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %23, i32 0, i32 17
  %39 = ptrtoint ptr %external_connector.i52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %external_connector.i52, align 4
  br label %err_encoder_cleanup

tilcdc_encoder_find_connector.exit.i:             ; preds = %for.body.i.i
  %external_connector.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %23, i32 0, i32 17
  %40 = ptrtoint ptr %external_connector.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %connector.0.i.i, ptr %external_connector.i, align 4
  %tobool5.not.i = icmp eq ptr %connector.0.i.i, null
  br i1 %tobool5.not.i, label %tilcdc_encoder_find_connector.exit.i.err_encoder_cleanup_crit_edge, label %tilcdc_encoder_find_connector.exit.i.cleanup_crit_edge

tilcdc_encoder_find_connector.exit.i.cleanup_crit_edge: ; preds = %tilcdc_encoder_find_connector.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tilcdc_encoder_find_connector.exit.i.err_encoder_cleanup_crit_edge: ; preds = %tilcdc_encoder_find_connector.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_encoder_cleanup

err_encoder_cleanup:                              ; preds = %tilcdc_encoder_find_connector.exit.i.err_encoder_cleanup_crit_edge, %tilcdc_encoder_find_connector.exit.i.thread, %if.end23.err_encoder_cleanup_crit_edge, %if.then20
  %ret.0 = phi i32 [ %19, %if.then20 ], [ %call.i48, %if.end23.err_encoder_cleanup_crit_edge ], [ -19, %tilcdc_encoder_find_connector.exit.i.thread ], [ -19, %tilcdc_encoder_find_connector.exit.i.err_encoder_cleanup_crit_edge ]
  %41 = ptrtoint ptr %external_encoder to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %external_encoder, align 4
  call void @drm_encoder_cleanup(ptr noundef %42) #5
  br label %cleanup

cleanup:                                          ; preds = %err_encoder_cleanup, %tilcdc_encoder_find_connector.exit.i.cleanup_crit_edge, %do.end, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then1 ], [ %call10, %do.end ], [ %ret.0, %err_encoder_cleanup ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ 0, %tilcdc_encoder_find_connector.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add_typed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_get_external_components(ptr noundef %dev, ptr noundef %match) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_remote_node(ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %call, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %match, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_of_component_match_add(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef nonnull @dev_match_of, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then3 ], [ 1, %if.end.cleanup_crit_edge ]
  tail call void @of_node_put(ptr noundef %call) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dev_match_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_has_possible_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 70, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tilcdc_add_component_encoder._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tilcdc_add_component_encoder._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 132, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tilcdc_attach_external_device._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tilcdc_attach_external_device._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 168, i32 37}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 54, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tilcdc_encoder_find_connector._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tilcdc_encoder_find_connector._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @panel_info_tda998x, !21, !"panel_info_tda998x", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 18, i32 39}
!22 = !{ptr @panel_info_default, !23, !"panel_info_default", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_external.c", i32 31, i32 39}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
