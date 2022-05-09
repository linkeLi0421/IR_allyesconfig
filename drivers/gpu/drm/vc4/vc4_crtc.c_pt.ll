; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vc4_pv_data = type { %struct.vc4_crtc_data, i32, i8, [4 x i32], ptr }
%struct.vc4_crtc_data = type { i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.114, i32, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.anon.114 = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.115, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.116, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.115 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.116 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.vc4_async_flip_state = type { ptr, ptr, ptr, ptr, %struct.vc4_seqno_cb }
%struct.vc4_seqno_cb = type { %struct.work_struct, i64, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/vc4/vc4_crtc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,bcm2711-pixelvalve2\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,bcm2711-pixelvalve4\00", [39 x i8] zeroinitializer }, align 32
@vc4_crtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to construct primary plane\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vc4_crtc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_crtc_init._entry_ptr = internal global ptr @vc4_crtc_init._entry, section ".printk_index", align 4
@vc4_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vc4_crtc->irq_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vc4_crtc\00", [23 x i8] zeroinitializer }, align 32
@vc4_crtc_dt_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv4_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@vc4_crtc_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_crtc_dev_probe, ptr @vc4_crtc_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_crtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_crtc_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for !PV_VCONTROL_VIDEN\0A\00", [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vc4_crtc_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_crtc_bind, ptr @vc4_crtc_unbind }, [24 x i8] zeroinitializer }, align 32
@crtc_regs = internal constant { [13 x %struct.debugfs_reg32], [56 x i8] } { [13 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.11, i32 0 }, %struct.debugfs_reg32 { ptr @.str.12, i32 4 }, %struct.debugfs_reg32 { ptr @.str.13, i32 8 }, %struct.debugfs_reg32 { ptr @.str.14, i32 12 }, %struct.debugfs_reg32 { ptr @.str.15, i32 16 }, %struct.debugfs_reg32 { ptr @.str.16, i32 20 }, %struct.debugfs_reg32 { ptr @.str.17, i32 24 }, %struct.debugfs_reg32 { ptr @.str.18, i32 28 }, %struct.debugfs_reg32 { ptr @.str.19, i32 32 }, %struct.debugfs_reg32 { ptr @.str.20, i32 36 }, %struct.debugfs_reg32 { ptr @.str.21, i32 40 }, %struct.debugfs_reg32 { ptr @.str.22, i32 44 }, %struct.debugfs_reg32 { ptr @.str.23, i32 48 }], [56 x i8] zeroinitializer }, align 32
@vc4_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @vc4_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @vc4_page_flip, ptr null, ptr null, ptr @vc4_crtc_duplicate_state, ptr @vc4_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_enable_vblank, ptr @vc4_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@vc4_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @vc4_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_atomic_check, ptr @vc4_hvs_atomic_begin, ptr @vc4_hvs_atomic_flush, ptr @vc4_crtc_atomic_enable, ptr @vc4_crtc_atomic_disable, ptr @vc4_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vc4 crtc\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PV_CONTROL\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV_V_CONTROL\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PV_VSYNCD_EVEN\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PV_HORZA\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PV_HORZB\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PV_VERTA\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PV_VERTB\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV_VERTA_EVEN\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV_VERTB_EVEN\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PV_INTEN\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PV_INTSTAT\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PV_STAT\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV_HACT_ACT\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[CRTC:%d] Doublescan mode rejected.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Enabling CRTC %s (%u) connected to Encoder %s (%u)\00", [45 x i8] zeroinitializer }, align 32
@require_hvs_enabled.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_crtc_config_pv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 327, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CRTC %d regs before:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vc4_crtc_config_pv\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vc4_crtc_config_pv._entry_ptr = internal global ptr @vc4_crtc_config_pv._entry, section ".printk_index", align 4
@vc4_crtc_config_pv._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str, i32 408, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CRTC %d regs after:\0A\00", [43 x i8] zeroinitializer }, align 32
@vc4_crtc_config_pv._entry_ptr.31 = internal global ptr @vc4_crtc_config_pv._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Disabling CRTC %s (%u) connected to Encoder %s (%u)\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_pv0_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 1, i32 0 }, i32 64, i8 1, [4 x i32] [i32 4, i32 7, i32 0, i32 0], ptr @.str.33 }, [60 x i8] zeroinitializer }, align 32
@bcm2835_pv1_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 4, i32 2 }, i32 64, i8 1, [4 x i32] [i32 5, i32 6, i32 0, i32 0], ptr @.str.34 }, [60 x i8] zeroinitializer }, align 32
@bcm2835_pv2_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 2, i32 1 }, i32 64, i8 1, [4 x i32] [i32 0, i32 1, i32 3, i32 0], ptr @.str.35 }, [60 x i8] zeroinitializer }, align 32
@bcm2711_pv0_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 1, i32 0 }, i32 64, i8 1, [4 x i32] [i32 4, i32 7, i32 0, i32 0], ptr @.str.33 }, [60 x i8] zeroinitializer }, align 32
@bcm2711_pv1_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 3 }, i32 64, i8 1, [4 x i32] [i32 5, i32 6, i32 0, i32 0], ptr @.str.34 }, [60 x i8] zeroinitializer }, align 32
@bcm2711_pv2_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 4 }, i32 256, i8 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.35 }, [60 x i8] zeroinitializer }, align 32
@bcm2711_pv3_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 2, i32 1 }, i32 64, i8 1, [4 x i32] [i32 0, i32 0, i32 3, i32 0], ptr @.str.36 }, [60 x i8] zeroinitializer }, align 32
@bcm2711_pv4_data = internal constant { %struct.vc4_pv_data, [60 x i8] } { %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 5 }, i32 64, i8 2, [4 x i32] [i32 2, i32 0, i32 0, i32 0], ptr @.str.37 }, [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crtc0_regs\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crtc1_regs\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crtc2_regs\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crtc3_regs\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crtc4_regs\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 289, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 494, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 496, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1137, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1141, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1260, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"vc4_crtc_dt_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1082, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"vc4_crtc_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1256, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 434, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"vc4_crtc_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1240, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"crtc_regs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 54, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"vc4_crtc_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 948, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"vc4_crtc_helper_funcs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 963, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1206, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 55, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 56, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 57, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 58, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 59, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 60, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 61, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 62, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 63, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 64, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 65, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 66, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 67, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 617, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 580, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 326, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 407, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 546, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"bcm2835_pv0_data\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 973, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"bcm2835_pv1_data\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 987, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"bcm2835_pv2_data\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1001, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"bcm2711_pv0_data\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1015, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"bcm2711_pv1_data\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1029, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"bcm2711_pv2_data\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1043, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"bcm2711_pv3_data\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1056, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"bcm2711_pv4_data\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1069, i32 33 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 978, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 992, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1006, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1061, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [34 x i8] c"../drivers/gpu/drm/vc4/vc4_crtc.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1074, i32 18 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @vc4_crtc_config_pv._entry, ptr @vc4_crtc_config_pv._entry.29, ptr @vc4_crtc_config_pv._entry_ptr, ptr @vc4_crtc_config_pv._entry_ptr.31, ptr @vc4_crtc_init._entry, ptr @vc4_crtc_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vc4_crtc_init.__key, ptr @.str.7, ptr @.str.8, ptr @vc4_crtc_dt_match, ptr @vc4_crtc_driver, ptr @.str.9, ptr @vc4_crtc_ops, ptr @crtc_regs, ptr @vc4_crtc_funcs, ptr @vc4_crtc_helper_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @bcm2835_pv0_data, ptr @bcm2835_pv1_data, ptr @bcm2835_pv2_data, ptr @bcm2711_pv0_data, ptr @bcm2711_pv1_data, ptr @bcm2711_pv2_data, ptr @bcm2711_pv3_data, ptr @bcm2711_pv4_data, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_dt_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_config_pv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_crtc_config_pv._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pv0_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pv1_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pv2_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pv0_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pv1_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pv2_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pv3_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pv4_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_get_crtc_encoder(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_mask, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %encoder_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp340.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp340.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn, i32 36
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %8
  %and346 = and i32 %shl.i, %6
  %tobool347.not = icmp eq i32 %and346, 0
  br i1 %tobool347.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit397

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.split.loop.exit397:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit397, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %encoder.0.le, %cleanup.split.loop.exit397 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_crtc_disable_at_boot(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %pdev = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %of_node5 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node5, align 8
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.end12.cleanup_crit_edge, label %if.end23

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %data = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %hvs_output = getelementptr inbounds %struct.vc4_crtc_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %hvs_output to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hvs_output, align 4
  %call24 = tail call i32 @vc4_hvs_get_fifo_from_output(ptr noundef %1, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %do.end38

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %25 = and i32 %24, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp48.not = icmp eq i32 %25, 0
  br i1 %cmp48.not, label %if.end76, label %do.end60, !prof !119

do.end60:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end76:                                         ; preds = %do.end38
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %encoder_types = getelementptr inbounds %struct.vc4_pv_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %encoder_types to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %encoder_types, align 4
  %30 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end76
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end76 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end98_crit_edge, label %for.body.i

for.cond.i.do.end98_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

for.body.i:                                       ; preds = %for.cond.i
  %type4.i = getelementptr i8, ptr %.pn.i, i32 68
  %33 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type4.i, align 4
  %cmp5.i = icmp eq i32 %34, %29
  br i1 %cmp5.i, label %vc4_crtc_get_encoder_by_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

vc4_crtc_get_encoder_by_type.exit:                ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool80.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool80.not, label %vc4_crtc_get_encoder_by_type.exit.do.end98_crit_edge, label %if.end114, !prof !114

vc4_crtc_get_encoder_by_type.exit.do.end98_crit_edge: ; preds = %vc4_crtc_get_encoder_by_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

do.end98:                                         ; preds = %vc4_crtc_get_encoder_by_type.exit.do.end98_crit_edge, %for.cond.i.do.end98_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end114:                                        ; preds = %vc4_crtc_get_encoder_by_type.exit
  %pdev116 = getelementptr i8, ptr %.pn.i, i32 -12
  %35 = ptrtoint ptr %pdev116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev116, align 8
  %dev117 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev117, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end121

if.then.i:                                        ; preds = %if.end114
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !121
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !122
  br label %cleanup

if.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vc4_crtc_disable(ptr noundef %crtc, ptr noundef nonnull %encoder.0.le.i, ptr noundef null, i32 noundef %call24)
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %do.end98, %do.end60, %if.end23.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ 0, %do.end98 ], [ 0, %if.end121 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_get_fifo_from_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_crtc_disable(ptr nocapture noundef readonly %crtc, ptr noundef %encoder, ptr noundef %state, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #7, !srcloc !125
  %call7 = tail call i64 @ktime_get_raw() #7
  %add = add i64 %call7, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 433) #7
  %call1410 = tail call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call1410, i64 %add)
  %cmp3.i.i11 = icmp sgt i64 %call1410, %add
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !126
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr1912 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1912) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not13 = icmp eq i32 %11, 0
  %brmerge14 = select i1 %tobool.not13, i1 true, i1 %cmp3.i.i11
  br i1 %brmerge14, label %entry.for.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %wait__.015 = phi i32 [ %spec.select, %cleanup.cleanup_crit_edge ], [ 10, %entry.cleanup_crit_edge ]
  %mul = shl i32 %wait__.015, 1
  tail call void @usleep_range_state(i32 noundef %wait__.015, i32 noundef %mul, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.015)
  %cmp = icmp slt i32 %wait__.015, 1000
  %spec.select = select i1 %cmp, i32 %mul, i32 %wait__.015
  %call14 = tail call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call14, %add
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !126
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not13, %entry.for.end_crit_edge ], [ %tobool.not, %cleanup.for.end_crit_edge ]
  br i1 %tobool.not.lcssa, label %for.end.if.end65_crit_edge, label %land.rhs

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.rhs:                                         ; preds = %for.end
  %.b1 = load i1, ptr @vc4_crtc_disable.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end65_crit_edge, label %if.then39, !prof !119

land.rhs.if.end65_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vc4_crtc_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef nonnull @.str.9) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then39, %land.rhs.if.end65_crit_edge, %for.end.if.end65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  %tobool74.not = icmp eq ptr %encoder, null
  br i1 %tobool74.not, label %if.end84.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end65
  %post_crtc_disable = getelementptr inbounds %struct.vc4_encoder, ptr %encoder, i32 0, i32 6
  %36 = ptrtoint ptr %post_crtc_disable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %post_crtc_disable, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %land.lhs.true80.critedge2, label %if.then76

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %37(ptr noundef nonnull %encoder, ptr noundef %state) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %41 = and i32 %40, -16777217
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %47 = or i32 %46, 33554432
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #7, !srcloc !125
  br label %land.lhs.true80

land.lhs.true80.critedge2:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %53 = and i32 %52, -16777217
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %59 = or i32 %58, 33554432
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !125
  br label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true80.critedge2, %if.then76
  tail call void @vc4_hvs_stop_channel(ptr noundef %1, i32 noundef %channel) #7
  %post_crtc_powerdown = getelementptr inbounds %struct.vc4_encoder, ptr %encoder, i32 0, i32 7
  %62 = ptrtoint ptr %post_crtc_powerdown to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %post_crtc_powerdown, align 4
  %tobool81.not = icmp eq ptr %63, null
  br i1 %tobool81.not, label %land.lhs.true80.if.end84_crit_edge, label %if.then82

land.lhs.true80.if.end84_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %63(ptr noundef nonnull %encoder, ptr noundef %state) #7
  br label %if.end84

if.end84.critedge:                                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %67 = and i32 %66, -16777217
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %73 = or i32 %72, 33554432
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #7, !srcloc !125
  tail call void @vc4_hvs_stop_channel(ptr noundef %1, i32 noundef %channel) #7
  br label %if.end84

if.end84:                                         ; preds = %if.end84.critedge, %if.then82, %land.lhs.true80.if.end84_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_crtc_get_margins(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %left, ptr nocapture noundef writeonly %right, ptr nocapture noundef writeonly %top, ptr nocapture noundef writeonly %bottom) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %margins = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %margins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %margins, align 8
  %2 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %left, align 4
  %right3 = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %right3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %right3, align 4
  %5 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %right, align 4
  %top5 = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %top5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top5, align 8
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %top, align 4
  %bottom7 = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %bottom7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bottom7, align 4
  %11 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bottom, align 4
  %state8 = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 20
  %12 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state8, align 4
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp53 = icmp sgt i32 %15, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %17, i32 %i.054
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %17, i32 %i.054, i32 3
  %20 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state, align 4
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 4
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %cmp18.not = icmp eq ptr %23, %25
  br i1 %cmp18.not, label %if.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %margins20 = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 6, i32 1
  %left21 = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 6, i32 1, i32 1
  %26 = ptrtoint ptr %left21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %left21, align 4
  %28 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %left, align 4
  %right24 = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 6, i32 1, i32 2
  %29 = ptrtoint ptr %right24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %right24, align 4
  %31 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %right, align 4
  %top27 = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 6, i32 1, i32 3
  %32 = ptrtoint ptr %top27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top27, align 4
  %34 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %top, align 4
  %35 = ptrtoint ptr %margins20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %margins20, align 4
  %37 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bottom, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_crtc_handle_vblank(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %t_vblank = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %t_vblank to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %t_vblank, align 8
  %call1 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #7
  %1 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %crtc, align 8
  %current_hvs_channel.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 13
  %3 = ptrtoint ptr %current_hvs_channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_hvs_channel.i, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 28
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #7
  %irq_lock.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %irq_lock.i) #7
  %event.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 8
  %5 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.vc4_crtc_handle_page_flip.exit_crit_edge, label %land.lhs.true.i

entry.vc4_crtc_handle_page_flip.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_handle_page_flip.exit

land.lhs.true.i:                                  ; preds = %entry
  %current_dlist.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 12
  %7 = ptrtoint ptr %current_dlist.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_dlist.i, align 4
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hvs.i, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %4, 2
  %add.i = add i32 %mul.i, 48
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp10.i = icmp eq i32 %8, %14
  br i1 %cmp10.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %feeds_txp.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 10
  %15 = ptrtoint ptr %feeds_txp.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %feeds_txp.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.vc4_crtc_handle_page_flip.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.vc4_crtc_handle_page_flip.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_handle_page_flip.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %17 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %event.i, align 8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %18) #7
  %19 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %event.i, align 8
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #7
  tail call void @vc4_hvs_unmask_underrun(ptr noundef %2, i32 noundef %4) #7
  br label %vc4_crtc_handle_page_flip.exit

vc4_crtc_handle_page_flip.exit:                   ; preds = %if.then.i, %lor.lhs.false.i.vc4_crtc_handle_page_flip.exit_crit_edge, %entry.vc4_crtc_handle_page_flip.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call4.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_page_flip(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %flags, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %2 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #7
  %call3.i = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 80) #10
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vc4_bo_dec_usecnt(ptr noundef %call.i) #7
  br label %return

if.end7.i:                                        ; preds = %if.end.i
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i.i) #7
  %fb8.i = getelementptr inbounds %struct.vc4_async_flip_state, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %fb8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fb, ptr %fb8.i, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %crtc, ptr %call7.i.i.i, align 8
  %event10.i = getelementptr inbounds %struct.vc4_async_flip_state, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %event10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %event, ptr %event10.i, align 4
  %state.i = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %fb11.i = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fb11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb11.i, align 4
  %old_fb.i = getelementptr inbounds %struct.vc4_async_flip_state, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %old_fb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %old_fb.i, align 8
  %tobool13.not.i = icmp eq ptr %11, null
  br i1 %tobool13.not.i, label %if.end7.i.if.end16.i_crit_edge, label %if.then14.i

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i1.i) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end7.i.if.end16.i_crit_edge
  %call17.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp.not.i, label %if.end16.i.if.end32.i_crit_edge, label %do.end.i, !prof !119

if.end16.i.if.end32.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 870, i32 noundef 9, ptr noundef null) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end.i, %if.end16.i.if.end32.i_crit_edge
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state.i, align 4
  tail call void @drm_atomic_set_fb_for_plane(ptr noundef %14, ptr noundef %fb) #7
  %cb.i = getelementptr inbounds %struct.vc4_async_flip_state, ptr %call7.i.i.i, i32 0, i32 4
  %seqno.i = getelementptr inbounds %struct.vc4_bo, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seqno.i, align 8
  %call40.i = tail call i32 @vc4_queue_seqno_cb(ptr noundef %1, ptr noundef %cb.i, i64 noundef %16, ptr noundef nonnull @vc4_async_page_flip_complete) #7
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @drm_atomic_helper_page_flip(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %flags, ptr noundef %ctx) #7
  br label %return

return:                                           ; preds = %if.else, %if.end32.i, %if.then6.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ 0, %if.end32.i ], [ -12, %if.then6.i ], [ %call3.i, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 432) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %margins = getelementptr inbounds %struct.vc4_crtc_state, ptr %call7.i.i, i32 0, i32 4
  %margins2 = getelementptr inbounds %struct.vc4_crtc_state, ptr %2, i32 0, i32 4
  %3 = call ptr @memcpy(ptr %margins, ptr %margins2, i32 16)
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assigned_channel, align 4
  %assigned_channel3 = getelementptr inbounds %struct.vc4_crtc_state, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %assigned_channel3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %assigned_channel3, align 4
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_crtc_destroy_state(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %flags.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mm = getelementptr inbounds %struct.vc4_crtc_state, ptr %state, i32 0, i32 1
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hvs, align 8
  %mm_lock = getelementptr inbounds %struct.vc4_hvs, ptr %5, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mm_lock) #7
  tail call void @drm_mm_remove_node(ptr noundef %mm) #7
  %6 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvs, align 8
  %mm_lock10 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mm_lock10, i32 noundef %call5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %crtc, ptr noundef %state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %flags.i.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %1, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.vc4_crtc_destroy_state.exit_crit_edge, label %if.then.i

if.then.vc4_crtc_destroy_state.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_destroy_state.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mm.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %1, i32 0, i32 1
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvs.i, align 8
  %mm_lock.i = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 6
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mm_lock.i) #7
  tail call void @drm_mm_remove_node(ptr noundef %mm.i) #7
  %8 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hvs.i, align 8
  %mm_lock10.i = getelementptr inbounds %struct.vc4_hvs, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mm_lock10.i, i32 noundef %call5.i) #7
  br label %vc4_crtc_destroy_state.exit

vc4_crtc_destroy_state.exit:                      ; preds = %if.then.i, %if.then.vc4_crtc_destroy_state.exit_crit_edge
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %crtc, ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %vc4_crtc_destroy_state.exit, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 432) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %state, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %assigned_channel, align 4
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_crtc_init(ptr noundef %drm, ptr noundef %vc4_crtc, ptr noundef %crtc_funcs, ptr noundef %crtc_helper_funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @vc4_plane_init(ptr noundef %drm, i32 noundef 1) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

do.body4:                                         ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.vc4_crtc, ptr %vc4_crtc, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @vc4_crtc_init.__key, i16 noundef signext 3) #7
  %call8 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm, ptr noundef %vc4_crtc, ptr noundef %call1, ptr noundef null, ptr noundef %crtc_funcs, ptr noundef null) #7
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %vc4_crtc, i32 0, i32 19
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %crtc_helper_funcs, ptr %helper_private.i, align 8
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %drm, i32 0, i32 2
  %4 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hvs, align 8
  %hvs5 = getelementptr inbounds %struct.vc4_hvs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %hvs5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hvs5, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then9, label %do.body4.if.end12_crit_edge

do.body4.if.end12_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %vc4_crtc, i32 noundef 256) #7
  %gamma_size = getelementptr inbounds %struct.drm_crtc, ptr %vc4_crtc, i32 0, i32 17
  %8 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gamma_size, align 8
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %vc4_crtc, i32 noundef 0, i1 noundef zeroext false, i32 noundef %9) #7
  %10 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_size, align 8
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %vc4_crtc, i32 noundef 0, i1 noundef zeroext true, i32 noundef %11) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body4.if.end12_crit_edge
  %gamma_size13 = getelementptr inbounds %struct.drm_crtc, ptr %vc4_crtc, i32 0, i32 17
  %12 = ptrtoint ptr %gamma_size13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gamma_size13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44.not = icmp eq i32 %13, 0
  br i1 %cmp44.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %conv = trunc i32 %i.045 to i8
  %arrayidx = getelementptr %struct.vc4_crtc, ptr %vc4_crtc, i32 0, i32 5, i32 %i.045
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx15 = getelementptr %struct.vc4_crtc, ptr %vc4_crtc, i32 0, i32 6, i32 %i.045
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.vc4_crtc, ptr %vc4_crtc, i32 0, i32 7, i32 %i.045
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx17, align 1
  %inc = add nuw i32 %i.045, 1
  %17 = ptrtoint ptr %gamma_size13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gamma_size13, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_plane_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_crtc_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_crtc_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_stop_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_unmask_underrun(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_set_fb_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_queue_seqno_cb(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_async_page_flip_complete(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %fb = getelementptr i8, ptr %cb, i32 -12
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  tail call void @vc4_plane_async_set_fb(ptr noundef %5, ptr noundef %7) #7
  %event = getelementptr i8, ptr %cb, i32 -4
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #7
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %1, ptr noundef %11) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_crtc_vblank_put(ptr noundef %1) #7
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #7
  %old_fb = getelementptr i8, ptr %cb, i32 -8
  %14 = ptrtoint ptr %old_fb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %old_fb, align 8
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %15, i32 noundef 0) #7
  tail call void @vc4_bo_dec_usecnt(ptr noundef %call14) #7
  %16 = ptrtoint ptr %old_fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %old_fb, align 8
  %base.i30 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i30) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_plane_async_set_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1864, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data7 = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %data7, align 4
  %pdev8 = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %pdev8, align 8
  %call9 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %regset = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 9
  %base17 = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %base17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %base17, align 4
  %7 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @crtc_regs, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 13, ptr %nregs, align 4
  %call21 = tail call i32 @vc4_crtc_init(ptr noundef %1, ptr noundef nonnull %call.i, ptr noundef nonnull @vc4_crtc_funcs, ptr noundef nonnull @vc4_crtc_helper_funcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data7, align 4
  %encoder_types2.i = getelementptr inbounds %struct.vc4_pv_data, ptr %10, i32 0, i32 3
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %11 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn34.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not35.i = icmp eq ptr %.pn34.i, %encoder_list.i
  br i1 %cmp.not35.i, label %if.end24.vc4_set_crtc_possible_masks.exit_crit_edge, label %for.body.lr.ph.i

if.end24.vc4_set_crtc_possible_masks.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_set_crtc_possible_masks.exit

for.body.lr.ph.i:                                 ; preds = %if.end24
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  %arrayidx.1.i = getelementptr %struct.vc4_pv_data, ptr %10, i32 0, i32 3, i32 1
  %arrayidx.2.i = getelementptr %struct.vc4_pv_data, ptr %10, i32 0, i32 3, i32 2
  %arrayidx.3.i = getelementptr %struct.vc4_pv_data, ptr %10, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn36.i = phi ptr [ %.pn34.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %encoder_type.i = getelementptr i8, ptr %.pn36.i, i32 32
  %12 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp5.i = icmp eq i32 %13, 5
  br i1 %cmp5.i, label %for.body.i.cleanup.i_crit_edge, label %for.cond7.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %type.i = getelementptr i8, ptr %.pn36.i, i32 68
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %16 = ptrtoint ptr %encoder_types2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %encoder_types2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp10.i = icmp eq i32 %15, %17
  br i1 %cmp10.i, label %for.cond7.preheader.i.if.then11.i_crit_edge, label %for.inc.i

for.cond7.preheader.i.if.then11.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

if.then11.i:                                      ; preds = %for.inc.2.i.if.then11.i_crit_edge, %for.inc.1.i.if.then11.i_crit_edge, %for.inc.i.if.then11.i_crit_edge, %for.cond7.preheader.i.if.then11.i_crit_edge
  %i.033.lcssa.i = phi i32 [ 0, %for.cond7.preheader.i.if.then11.i_crit_edge ], [ 1, %for.inc.i.if.then11.i_crit_edge ], [ 2, %for.inc.1.i.if.then11.i_crit_edge ], [ 3, %for.inc.2.i.if.then11.i_crit_edge ]
  %clock_select.i = getelementptr i8, ptr %.pn36.i, i32 72
  %18 = ptrtoint ptr %clock_select.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.033.lcssa.i, ptr %clock_select.i, align 4
  %19 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %20
  %possible_crtcs.i = getelementptr i8, ptr %.pn36.i, i32 40
  %21 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %possible_crtcs.i, align 4
  %or.i = or i32 %22, %shl.i.i
  store i32 %or.i, ptr %possible_crtcs.i, align 4
  br label %cleanup.i

for.inc.i:                                        ; preds = %for.cond7.preheader.i
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %24)
  %cmp10.1.i = icmp eq i32 %15, %24
  br i1 %cmp10.1.i, label %for.inc.i.if.then11.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %26)
  %cmp10.2.i = icmp eq i32 %15, %26
  br i1 %cmp10.2.i, label %for.inc.1.i.if.then11.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then11.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %28)
  %cmp10.3.i = icmp eq i32 %15, %28
  br i1 %cmp10.3.i, label %for.inc.2.i.if.then11.i_crit_edge, label %for.inc.2.i.cleanup.i_crit_edge

for.inc.2.i.cleanup.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.inc.2.i.if.then11.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

cleanup.i:                                        ; preds = %for.inc.2.i.cleanup.i_crit_edge, %if.then11.i, %for.body.i.cleanup.i_crit_edge
  %29 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn36.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %cleanup.i.vc4_set_crtc_possible_masks.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.vc4_set_crtc_possible_masks.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_set_crtc_possible_masks.exit

vc4_set_crtc_possible_masks.exit:                 ; preds = %cleanup.i.vc4_set_crtc_possible_masks.exit_crit_edge, %if.end24.vc4_set_crtc_possible_masks.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr26 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr31 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 -2147483648) #7, !srcloc !125
  %call32 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %call.i102 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call32, ptr noundef nonnull @vc4_crtc_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool34.not = icmp eq i32 %call.i102, 0
  br i1 %tobool34.not, label %if.end36, label %err_destroy_planes

if.end36:                                         ; preds = %vc4_set_crtc_possible_masks.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %debugfs_name = getelementptr inbounds %struct.vc4_pv_data, ptr %call2, i32 0, i32 4
  %35 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_name, align 4
  tail call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef %36, ptr noundef %regset) #7
  br label %cleanup

err_destroy_planes:                               ; preds = %vc4_set_crtc_possible_masks.exit
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %37 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plane_list, align 4
  %cmp.not105 = icmp eq ptr %38, %plane_list
  br i1 %cmp.not105, label %err_destroy_planes.cleanup_crit_edge, label %for.body.lr.ph

err_destroy_planes.cleanup_crit_edge:             ; preds = %err_destroy_planes
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %err_destroy_planes
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in106 = phi ptr [ %38, %for.body.lr.ph ], [ %.pn108, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn108 = load ptr, ptr %.pn.in106, align 4
  %possible_crtcs = getelementptr i8, ptr %.pn.in106, i32 140
  %40 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %possible_crtcs, align 8
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shl.i)
  %cmp49 = icmp eq i32 %41, %shl.i
  br i1 %cmp49, label %if.then50, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %destroy_plane.0107 = getelementptr i8, ptr %.pn.in106, i32 -4
  %funcs = getelementptr i8, ptr %.pn.in106, i32 176
  %44 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_plane_funcs, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %destroy, align 4
  tail call void %47(ptr noundef %destroy_plane.0107) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn108, %plane_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %err_destroy_planes.cleanup_crit_edge, %if.end36, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then12 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call21, %if.end15.cleanup_crit_edge ], [ %call.i102, %err_destroy_planes.cleanup_crit_edge ], [ %call.i102, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_crtc_unbind(ptr nocapture noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_crtc_cleanup(ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr1 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #7, !srcloc !125
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -2147483648) #7, !srcloc !125
  tail call void @vc4_crtc_handle_vblank(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %do.body ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #7, !srcloc !125
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !125
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %3) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 8, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_crtc_atomic_check(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call2 = tail call i32 @vc4_hvs_atomic_check(ptr noundef %crtc, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encoder_mask.i, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge, !prof !114

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp340.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp340.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.i
  %11 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %and346.i = and i32 %shl.i.i, %12
  %tobool347.not.i = icmp eq i32 %and346.i, 0
  br i1 %tobool347.not.i, label %for.body.i.for.cond.i_crit_edge, label %vc4_get_crtc_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

vc4_get_crtc_encoder.exit:                        ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool4.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool4.not, label %vc4_get_crtc_encoder.exit.if.end19_crit_edge, label %if.then5

vc4_get_crtc_encoder.exit.if.end19_crit_edge:     ; preds = %vc4_get_crtc_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then5:                                         ; preds = %vc4_get_crtc_encoder.exit
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %type = getelementptr i8, ptr %.pn.i, i32 68
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %17 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %adjusted_mode, align 4
  br i1 %cmp, label %if.then7, label %if.then5.if.end19.sink.split_crit_edge

if.then5.if.end19.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %20 to i32
  %mul = mul i32 %18, %conv
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %htotal, align 2
  %conv8 = zext i16 %22 to i32
  %div = sdiv i32 %mul, %conv8
  %add = add i32 %div, 1000
  %mul10 = mul i32 %18, 9
  %div11 = sdiv i32 %mul10, 10
  %23 = tail call i32 @llvm.smax.i32(i32 %add, i32 %div11)
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then7, %if.then5.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ %23, %if.then7 ], [ %18, %if.then5.if.end19.sink.split_crit_edge ]
  %mul14 = mul i32 %.sink, 1000
  %hvs_load = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %hvs_load to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul14, ptr %hvs_load, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %vc4_get_crtc_encoder.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %25 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2091 = icmp sgt i32 %26, 0
  br i1 %cmp2091, label %for.body.lr.ph, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end19
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %27 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %28, i32 %i.092
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %28, i32 %i.092, i32 3
  %31 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %new_state, align 4
  %crtc30 = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %crtc30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc30, align 4
  %cmp31.not = icmp eq ptr %34, %crtc
  br i1 %cmp31.not, label %if.end34, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %margins = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 6, i32 1
  %left = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 6, i32 1, i32 1
  %35 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %left, align 4
  %margins35 = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %margins35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %margins35, align 8
  %right = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 6, i32 1, i32 2
  %38 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %right, align 4
  %right40 = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %right40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %right40, align 4
  %top = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 6, i32 1, i32 3
  %41 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top, align 4
  %top44 = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %top44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %top44, align 8
  %44 = ptrtoint ptr %margins to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %margins, align 4
  %bottom48 = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %bottom48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bottom48, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end34, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end34 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_begin(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_flush(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_crtc_atomic_enable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %encoder_mask.i, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !114

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp340.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp340.not.i, label %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge, label %for.body.i

for.cond.i.vc4_get_crtc_encoder.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_get_crtc_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %13 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %15 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %16
  %and346.i = and i32 %shl.i.i, %14
  %tobool347.not.i = icmp eq i32 %and346.i, 0
  br i1 %tobool347.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit397.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit397.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %vc4_get_crtc_encoder.exit

vc4_get_crtc_encoder.exit:                        ; preds = %cleanup.split.loop.exit397.i, %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit397.i ], [ null, %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge ]
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %vc4_get_crtc_encoder.exit.cond.end_crit_edge, label %cond.true

vc4_get_crtc_encoder.exit.cond.end_crit_edge:     ; preds = %vc4_get_crtc_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %vc4_get_crtc_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %vc4_get_crtc_encoder.exit.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ null, %vc4_get_crtc_encoder.exit.cond.end_crit_edge ]
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 8
  %name6 = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name6, align 4
  %base7 = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base7, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26) #7
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hvs.i, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %32 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.not.i = icmp eq i32 %32, 0
  br i1 %cmp.not.not.i, label %land.rhs.i, label %cond.end.require_hvs_enabled.exit_crit_edge

cond.end.require_hvs_enabled.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %require_hvs_enabled.exit

land.rhs.i:                                       ; preds = %cond.end
  %.b40.i = load i1, ptr @require_hvs_enabled.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.require_hvs_enabled.exit_crit_edge, label %if.then.i, !prof !119

land.rhs.i.require_hvs_enabled.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %require_hvs_enabled.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @require_hvs_enabled.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #7
  br label %require_hvs_enabled.exit

require_hvs_enabled.exit:                         ; preds = %if.then.i, %land.rhs.i.require_hvs_enabled.exit_crit_edge, %cond.end.require_hvs_enabled.exit_crit_edge
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #7
  tail call void @vc4_hvs_atomic_enable(ptr noundef %crtc, ptr noundef %state) #7
  %pre_crtc_configure = getelementptr inbounds %struct.vc4_encoder, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %pre_crtc_configure to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pre_crtc_configure, align 4
  %tobool9.not = icmp eq ptr %34, null
  br i1 %tobool9.not, label %require_hvs_enabled.exit.if.end_crit_edge, label %if.then

require_hvs_enabled.exit.if.end_crit_edge:        ; preds = %require_hvs_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %require_hvs_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %34(ptr noundef %retval.0.i, ptr noundef %state) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %require_hvs_enabled.exit.if.end_crit_edge
  %35 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %crtc, align 8
  %data.i.i.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 2
  %37 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i, align 4
  %state5.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %39 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state5.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 11
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and.i68 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i = icmp eq i32 %and.i68, 0
  %and7.i = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond.i69 = select i1 %tobool8.not.i, i32 1, i32 2
  %type.i = getelementptr inbounds %struct.vc4_encoder, ptr %retval.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  %45 = and i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %46 = icmp eq i32 %45, 4
  %pixels_per_clock.i = getelementptr inbounds %struct.vc4_pv_data, ptr %38, i32 0, i32 2
  %47 = ptrtoint ptr %pixels_per_clock.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pixels_per_clock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %regs.i.i = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 3
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %58 = or i32 %57, 33554432
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 4
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 3
  %conv38.i = zext i8 %48 to i32
  %61 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %htotal.i, align 2
  %conv81.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hsync_end.i, align 4
  %conv83.i = zext i16 %64 to i32
  %sub84.i = sub nsw i32 %conv81.i, %conv83.i
  %mul85.i = mul nsw i32 %sub84.i, %cond.i69
  %div87.i = udiv i32 %mul85.i, %conv38.i
  %shl117.i = shl i32 %div87.i, 16
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hsync_start.i, align 2
  %conv138.i = zext i16 %66 to i32
  %sub139.i = sub nsw i32 %conv83.i, %conv138.i
  %mul140.i = mul nsw i32 %sub139.i, %cond.i69
  %div142.i = udiv i32 %mul140.i, %conv38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div142.i)
  %tobool145.not.i = icmp ult i32 %div142.i, 65536
  br i1 %tobool145.not.i, label %if.end.do.end217.i_crit_edge, label %do.end166.i, !prof !119

if.end.do.end217.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end217.i

do.end166.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 337, i32 noundef 9, ptr noundef null) #7
  br label %do.end217.i

do.end217.i:                                      ; preds = %do.end166.i, %if.end.do.end217.i_crit_edge
  %67 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hsync_end.i, align 4
  %conv189.i = zext i16 %68 to i32
  %69 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %hsync_start.i, align 2
  %conv191.i = zext i16 %70 to i32
  %sub192.i = sub nsw i32 %conv189.i, %conv191.i
  %mul193.i = mul nsw i32 %sub192.i, %cond.i69
  %div195.i = udiv i32 %mul193.i, %conv38.i
  %and228.i = and i32 %div195.i, 65535
  %or.i = or i32 %and228.i, %shl117.i
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %71) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 1
  %74 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hsync_start.i, align 2
  %conv302.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hdisplay.i, align 4
  %conv304.i = zext i16 %77 to i32
  %sub305.i = sub nsw i32 %conv302.i, %conv304.i
  %mul306.i = mul nsw i32 %sub305.i, %cond.i69
  %div308.i = udiv i32 %mul306.i, %conv38.i
  %shl340.i = shl i32 %div308.i, 16
  %mul361.i = mul nuw nsw i32 %cond.i69, %conv304.i
  %div363.i = udiv i32 %mul361.i, %conv38.i
  %and365.i = and i32 %div363.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365.i)
  %tobool366.not.i = icmp eq i32 %and365.i, 0
  br i1 %tobool366.not.i, label %do.end217.i.do.end432.i_crit_edge, label %do.end387.i, !prof !119

do.end217.i.do.end432.i_crit_edge:                ; preds = %do.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end432.i

do.end387.i:                                      ; preds = %do.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #7
  br label %do.end432.i

do.end432.i:                                      ; preds = %do.end387.i, %do.end217.i.do.end432.i_crit_edge
  %78 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %hdisplay.i, align 4
  %conv410.i = zext i16 %79 to i32
  %mul411.i = mul nuw nsw i32 %cond.i69, %conv410.i
  %div413.i = udiv i32 %mul411.i, %conv38.i
  %and440.i = and i32 %div413.i, 65535
  %or441.i = or i32 %and440.i, %shl340.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %or441.i) #7
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 8
  %add.ptr443.i = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr443.i, i32 %80) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 25
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 24
  %83 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %crtc_vtotal.i, align 4
  %conv513.i = zext i16 %84 to i32
  %85 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv515.i = zext i16 %86 to i32
  %sub516.i = sub nsw i32 %conv513.i, %conv515.i
  %shl542.i = shl i32 %sub516.i, 16
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 23
  %87 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv563.i = zext i16 %88 to i32
  %sub564.i = sub nsw i32 %conv515.i, %conv563.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub564.i)
  %tobool567.not.i = icmp ult i32 %sub564.i, 65536
  br i1 %tobool567.not.i, label %do.end432.i.do.end633.i_crit_edge, label %do.end588.i, !prof !119

do.end432.i.do.end633.i_crit_edge:                ; preds = %do.end432.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end633.i

do.end588.i:                                      ; preds = %do.end432.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #7
  br label %do.end633.i

do.end633.i:                                      ; preds = %do.end588.i, %do.end432.i.do.end633.i_crit_edge
  %89 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv611.i = zext i16 %90 to i32
  %91 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv613.i = zext i16 %92 to i32
  %sub614.i = sub nsw i32 %conv611.i, %conv613.i
  %and641.i = and i32 %sub614.i, 65535
  %or642.i = or i32 %and641.i, %shl542.i
  %93 = tail call i32 @llvm.bswap.i32(i32 %or642.i) #7
  %94 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i, align 8
  %add.ptr644.i = getelementptr i8, ptr %95, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr644.i, i32 %93) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 20
  %96 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv715.i = zext i16 %97 to i32
  %98 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv717.i = zext i16 %99 to i32
  %sub718.i = sub nsw i32 %conv715.i, %conv717.i
  %shl744.i = shl i32 %sub718.i, 16
  %or832.i = or i32 %shl744.i, %conv717.i
  %100 = tail call i32 @llvm.bswap.i32(i32 %or832.i) #7
  %101 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i.i, align 8
  %add.ptr834.i = getelementptr i8, ptr %102, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr834.i, i32 %100) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %do.body1347.i, label %do.end933.i

do.end933.i:                                      ; preds = %do.end633.i
  %103 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv911.i = zext i16 %104 to i32
  %105 = xor i32 %conv911.i, -1
  %106 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %crtc_vtotal.i, align 4
  %conv909.i = zext i16 %107 to i32
  %sub913.i = add nsw i32 %105, %conv909.i
  %shl941.i = shl i32 %sub913.i, 16
  %108 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv963.i = zext i16 %109 to i32
  %sub964.i = sub nsw i32 %conv911.i, %conv963.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub964.i)
  %tobool967.not.i = icmp ult i32 %sub964.i, 65536
  br i1 %tobool967.not.i, label %do.end933.i.do.end1033.i_crit_edge, label %do.end988.i, !prof !119

do.end933.i.do.end1033.i_crit_edge:               ; preds = %do.end933.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1033.i

do.end988.i:                                      ; preds = %do.end933.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  br label %do.end1033.i

do.end1033.i:                                     ; preds = %do.end988.i, %do.end933.i.do.end1033.i_crit_edge
  %110 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv1011.i = zext i16 %111 to i32
  %112 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv1013.i = zext i16 %113 to i32
  %sub1014.i = sub nsw i32 %conv1011.i, %conv1013.i
  %and1041.i = and i32 %sub1014.i, 65535
  %or1042.i = or i32 %and1041.i, %shl941.i
  %114 = tail call i32 @llvm.bswap.i32(i32 %or1042.i) #7
  %115 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1044.i = getelementptr i8, ptr %116, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1044.i, i32 %114) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %117 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv1116.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv1118.i = zext i16 %120 to i32
  %sub1119.i = sub nsw i32 %conv1116.i, %conv1118.i
  %shl1145.i = shl i32 %sub1119.i, 16
  %or1233.i = or i32 %shl1145.i, %conv1118.i
  %121 = tail call i32 @llvm.bswap.i32(i32 %or1233.i) #7
  %122 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1235.i = getelementptr i8, ptr %123, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1235.i, i32 %121) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %or1243.i = select i1 %46, i32 26, i32 18
  %124 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %htotal.i, align 2
  %conv1311.i = zext i16 %125 to i32
  %mul1312.i = shl nuw nsw i32 %cond.i69, 5
  %126 = mul nuw nsw i32 %mul1312.i, %conv1311.i
  %shl1337.i = and i32 %126, 8388544
  %or1339.i = or i32 %shl1337.i, %or1243.i
  %127 = tail call i32 @llvm.bswap.i32(i32 %or1339.i) #7
  %128 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1341.i = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1341.i, i32 %127) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1346.i = getelementptr i8, ptr %131, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1346.i, i32 0) #7, !srcloc !125
  br label %if.end1356.i

do.body1347.i:                                    ; preds = %do.end633.i
  call void @__sanitizer_cov_trace_pc() #9
  %or1353.i = select i1 %46, i32 167772160, i32 33554432
  %132 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1355.i = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1355.i, i32 %or1353.i) #7, !srcloc !125
  br label %if.end1356.i

if.end1356.i:                                     ; preds = %do.body1347.i, %do.end1033.i
  br i1 %46, label %do.body1359.i, label %if.end1356.i.if.end1367.i_crit_edge

if.end1356.i.if.end1367.i_crit_edge:              ; preds = %if.end1356.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1367.i

do.body1359.i:                                    ; preds = %if.end1356.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %134 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %hdisplay.i, align 4
  %conv1363.i = zext i16 %135 to i32
  %mul1364.i = mul nuw nsw i32 %cond.i69, %conv1363.i
  %136 = tail call i32 @llvm.bswap.i32(i32 %mul1364.i) #7
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1366.i = getelementptr i8, ptr %138, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1366.i, i32 %136) #7, !srcloc !125
  br label %if.end1367.i

if.end1367.i:                                     ; preds = %do.body1359.i, %if.end1356.i.if.end1367.i_crit_edge
  %hvs.i70 = getelementptr inbounds %struct.vc4_dev, ptr %36, i32 0, i32 2
  %139 = ptrtoint ptr %hvs.i70 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hvs.i70, align 8
  %hvs5.i = getelementptr inbounds %struct.vc4_hvs, ptr %140, i32 0, i32 9
  %141 = ptrtoint ptr %hvs5.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hvs5.i, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool1368.not.i = icmp eq i8 %142, 0
  br i1 %tobool1368.not.i, label %if.end1367.i.do.body1442.i_crit_edge, label %do.body1370.i

if.end1367.i.do.body1442.i_crit_edge:             ; preds = %if.end1367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1442.i

do.body1370.i:                                    ; preds = %if.end1367.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %143 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i, align 8
  %add.ptr1440.i = getelementptr i8, ptr %144, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1440.i, i32 536870912) #7, !srcloc !125
  br label %do.body1442.i

do.body1442.i:                                    ; preds = %do.body1370.i, %if.end1367.i.do.body1442.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %145 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i.i, align 4
  %hvs_output.i.i.i = getelementptr inbounds %struct.vc4_crtc_data, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %hvs_output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %hvs_output.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %148)
  %cmp.i.i.i = icmp eq i32 %148, 5
  br i1 %cmp.i.i.i, label %do.body1442.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge, label %if.end.i.i.i

do.body1442.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge: ; preds = %do.body1442.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_get_fifo_full_level_bits.exit.i

if.end.i.i.i:                                     ; preds = %do.body1442.i
  %fifo_depth.i.i.i = getelementptr inbounds %struct.vc4_pv_data, ptr %146, i32 0, i32 1
  %149 = ptrtoint ptr %fifo_depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fifo_depth.i.i.i, align 4
  %151 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %crtc, align 8
  %hvs.i.i.i = getelementptr inbounds %struct.vc4_dev, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %hvs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hvs.i.i.i, align 8
  %hvs5.i.i.i = getelementptr inbounds %struct.vc4_hvs, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %hvs5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %hvs5.i.i.i, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i.i.i = icmp eq i8 %156, 0
  %..i.i = select i1 %tobool.not.i.i.i, i32 -19, i32 -18
  %sub.i.i.i = add i32 %..i.i, %150
  %157 = shl i32 %sub.i.i.i, 19
  %shl.i.i71 = and i32 %157, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %shl.i.i71)
  %tobool.not.i.i = icmp ult i32 %shl.i.i71, 134217728
  br i1 %tobool.not.i.i, label %if.end.i.i.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge, label %do.end29.i.i, !prof !119

if.end.i.i.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_get_fifo_full_level_bits.exit.i

do.end29.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %vc4_crtc_get_fifo_full_level_bits.exit.i

vc4_crtc_get_fifo_full_level_bits.exit.i:         ; preds = %do.end29.i.i, %if.end.i.i.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge, %do.body1442.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge
  %shl168.i.i = phi i32 [ %shl.i.i71, %do.end29.i.i ], [ %shl.i.i71, %if.end.i.i.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge ], [ 0, %do.body1442.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge ]
  %retval.0.i166.i.i = phi i32 [ %sub.i.i.i, %do.end29.i.i ], [ %sub.i.i.i, %if.end.i.i.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge ], [ 32, %do.body1442.i.vc4_crtc_get_fifo_full_level_bits.exit.i_crit_edge ]
  %clock_select.i = getelementptr inbounds %struct.vc4_encoder, ptr %retval.0.i, i32 0, i32 2
  %158 = ptrtoint ptr %clock_select.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %clock_select.i, align 4
  %160 = and i32 %159, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool1633.not.i = icmp eq i32 %160, 0
  br i1 %tobool1633.not.i, label %vc4_crtc_get_fifo_full_level_bits.exit.i.vc4_crtc_config_pv.exit_crit_edge, label %do.end1654.i, !prof !119

vc4_crtc_get_fifo_full_level_bits.exit.i.vc4_crtc_config_pv.exit_crit_edge: ; preds = %vc4_crtc_get_fifo_full_level_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_crtc_config_pv.exit

do.end1654.i:                                     ; preds = %vc4_crtc_get_fifo_full_level_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #7
  br label %vc4_crtc_config_pv.exit

vc4_crtc_config_pv.exit:                          ; preds = %do.end1654.i, %vc4_crtc_get_fifo_full_level_bits.exit.i.vc4_crtc_config_pv.exit_crit_edge
  %161 = ptrtoint ptr %clock_select.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %clock_select.i, align 4
  %and85.i.i = shl i32 %retval.0.i166.i.i, 15
  %shl86.i.i = and i32 %and85.i.i, 2064384
  %and67.i.i = and i32 %shl168.i.i, 100663296
  %sub1544.i = shl nuw nsw i32 %cond.i69, 4
  %shl1545.i = add nuw nsw i32 %sub1544.i, 48
  %and1609.i = and i32 %shl1545.i, 48
  %shl1694.i = shl i32 %162, 2
  %and1695.i = and i32 %shl1694.i, 12
  %or151.i.i = select i1 %46, i32 8417282, i32 28674
  %or1446.i = or i32 %and1609.i, %or151.i.i
  %or1526.i = or i32 %or1446.i, %and67.i.i
  %or1613.i = or i32 %or1526.i, %shl86.i.i
  %or1696.i = or i32 %or1613.i, %and1695.i
  %163 = tail call i32 @llvm.bswap.i32(i32 %or1696.i) #7
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %166 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i.i, align 8
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %169 = or i32 %168, 16777216
  %170 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #7, !srcloc !125
  %pre_crtc_enable = getelementptr inbounds %struct.vc4_encoder, ptr %retval.0.i, i32 0, i32 4
  %172 = ptrtoint ptr %pre_crtc_enable to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pre_crtc_enable, align 4
  %tobool15.not = icmp eq ptr %173, null
  br i1 %tobool15.not, label %vc4_crtc_config_pv.exit.do.body19_crit_edge, label %if.then16

vc4_crtc_config_pv.exit.do.body19_crit_edge:      ; preds = %vc4_crtc_config_pv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then16:                                        ; preds = %vc4_crtc_config_pv.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %173(ptr noundef %retval.0.i, ptr noundef %state) #7
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %vc4_crtc_config_pv.exit.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %174 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i.i, align 8
  %add.ptr25 = getelementptr i8, ptr %175, i32 4
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %177 = or i32 %176, 16777216
  %178 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i, align 8
  %add.ptr31 = getelementptr i8, ptr %179, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %177) #7, !srcloc !125
  %post_crtc_enable = getelementptr inbounds %struct.vc4_encoder, ptr %retval.0.i, i32 0, i32 5
  %180 = ptrtoint ptr %post_crtc_enable to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %post_crtc_enable, align 4
  %tobool32.not = icmp eq ptr %181, null
  br i1 %tobool32.not, label %do.body19.if.end35_crit_edge, label %if.then33

do.body19.if.end35_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %181(ptr noundef %retval.0.i, ptr noundef %state) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body19.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_crtc_atomic_disable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encoder_mask.i, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !114

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp340.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp340.not.i, label %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge, label %for.body.i

for.cond.i.vc4_get_crtc_encoder.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_get_crtc_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %11 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %and346.i = and i32 %shl.i.i, %12
  %tobool347.not.i = icmp eq i32 %and346.i, 0
  br i1 %tobool347.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit397.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit397.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %vc4_get_crtc_encoder.exit

vc4_get_crtc_encoder.exit:                        ; preds = %cleanup.split.loop.exit397.i, %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit397.i ], [ null, %for.cond.i.vc4_get_crtc_encoder.exit_crit_edge ]
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %vc4_get_crtc_encoder.exit.cond.end_crit_edge, label %cond.true

vc4_get_crtc_encoder.exit.cond.end_crit_edge:     ; preds = %vc4_get_crtc_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %vc4_get_crtc_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %vc4_get_crtc_encoder.exit.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.true ], [ null, %vc4_get_crtc_encoder.exit.cond.end_crit_edge ]
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 8
  %name5 = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name5, align 4
  %base6 = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base6, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef %18, i32 noundef %20, ptr noundef %22, i32 noundef %24) #7
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hvs.i, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %30 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.not.i, label %land.rhs.i, label %cond.end.require_hvs_enabled.exit_crit_edge

cond.end.require_hvs_enabled.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %require_hvs_enabled.exit

land.rhs.i:                                       ; preds = %cond.end
  %.b40.i = load i1, ptr @require_hvs_enabled.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.require_hvs_enabled.exit_crit_edge, label %if.then.i, !prof !119

land.rhs.i.require_hvs_enabled.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %require_hvs_enabled.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @require_hvs_enabled.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #7
  br label %require_hvs_enabled.exit

require_hvs_enabled.exit:                         ; preds = %if.then.i, %land.rhs.i.require_hvs_enabled.exit_crit_edge, %cond.end.require_hvs_enabled.exit_crit_edge
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #7
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %assigned_channel, align 4
  tail call fastcc void @vc4_crtc_disable(ptr noundef %crtc, ptr noundef %retval.0.i, ptr noundef %state, i32 noundef %32)
  %state9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %33 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state9, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %event, align 4
  %tobool10.not = icmp eq ptr %36, null
  br i1 %tobool10.not, label %require_hvs_enabled.exit.if.end_crit_edge, label %if.then

require_hvs_enabled.exit.if.end_crit_edge:        ; preds = %require_hvs_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %require_hvs_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #7
  %37 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state9, align 4
  %event17 = getelementptr inbounds %struct.drm_crtc_state, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %event17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %event17, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %40) #7
  %41 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state9, align 4
  %event19 = getelementptr inbounds %struct.drm_crtc_state, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %event19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %event19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %require_hvs_enabled.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vc4_crtc_get_scanout_position(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef %vpos, ptr nocapture noundef %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %stime, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i64 @ktime_get() #7
  %4 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call4, ptr %stime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assigned_channel, align 4
  %mul = shl i32 %10, 4
  %add = add i32 %mul, 72
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !115
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %tobool7.not = icmp eq ptr %etime, null
  br i1 %tobool7.not, label %if.end.do.end22_crit_edge, label %if.then8

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i64 @ktime_get() #7
  %13 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call9, ptr %etime, align 8
  br label %do.end22

do.end22:                                         ; preds = %if.then8, %if.end.do.end22_crit_edge
  %and = and i32 %12, 4095
  %14 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %vpos, align 4
  %15 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hpos, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and24 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end22.if.end50_crit_edge, label %if.then26

do.end22.if.end50_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then26:                                        ; preds = %do.end22
  %18 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vpos, align 4
  %div = sdiv i32 %19, 2
  store i32 %div, ptr %vpos, align 4
  %20 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not = icmp eq i32 %20, 0
  br i1 %tobool45.not, label %if.then26.if.end50_crit_edge, label %if.then46

if.then26.if.end50_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then46:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %21 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_htotal, align 2
  %23 = lshr i16 %22, 1
  %div47 = zext i16 %23 to i32
  %24 = ptrtoint ptr %hpos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpos, align 4
  %add48 = add i32 %25, %div47
  store i32 %add48, ptr %hpos, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.then26.if.end50_crit_edge, %do.end22.if.end50_crit_edge
  %26 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assigned_channel, align 4
  %28 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hvs, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %27, 4
  %add.i = add i32 %mul.i, 76
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %shr.i = lshr i32 %33, 16
  %and15.i = and i32 %shr.i, 65532
  %and34.i = and i32 %33, 65532
  %sub.i = sub nsw i32 4, %and34.i
  %add35.i = add nsw i32 %sub.i, %and15.i
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %34 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %crtc_hdisplay, align 4
  %conv53 = zext i16 %35 to i32
  %div54 = udiv i32 %add35.i, %conv53
  %36 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vpos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %div54)
  %cmp58 = icmp sgt i32 %37, %div54
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %add61.neg = xor i32 %div54, -1
  %sub = add i32 %37, %add61.neg
  %38 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %vpos, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  br i1 %in_vblank_irq, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end63
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %39 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vtotal, align 4
  %conv64 = zext i16 %40 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %41 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vdisplay, align 2
  %conv65 = zext i16 %42 to i32
  %sub66.neg = sub nsw i32 %conv65, %conv64
  %43 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub66.neg, ptr %vpos, align 4
  br i1 %tobool.not, label %if.then68.if.end72_crit_edge, label %if.then71

if.then68.if.end72_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %t_vblank = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 4
  %44 = ptrtoint ptr %t_vblank to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %t_vblank, align 8
  %46 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %stime, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then68.if.end72_crit_edge
  br i1 %tobool7.not, label %if.end72.cleanup_crit_edge, label %if.then74

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %t_vblank75 = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 4
  %47 = ptrtoint ptr %t_vblank75 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %t_vblank75, align 8
  %49 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %etime, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %vpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then74, %if.end72.cleanup_crit_edge, %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div54)
  %cmp = icmp sgt i32 %div54, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 289, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 494, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 496, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1137, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vc4_crtc_init._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @vc4_crtc_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @vc4_crtc_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1141, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1260, i32 11}
!18 = !{ptr @vc4_crtc_driver, !19, !"vc4_crtc_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1256, i32 24}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 434, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vc4_crtc_ops, !24, !"vc4_crtc_ops", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1240, i32 35}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1206, i32 11}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 55, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 56, i32 2}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 57, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 58, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 59, i32 2}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 60, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 61, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 62, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 63, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 64, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 65, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 66, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 67, i32 2}
!53 = !{ptr @crtc_regs, !54, !"crtc_regs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 54, i32 35}
!55 = !{ptr @vc4_crtc_funcs, !56, !"vc4_crtc_funcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 948, i32 36}
!57 = !{ptr @vc4_crtc_helper_funcs, !58, !"vc4_crtc_helper_funcs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 963, i32 43}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 617, i32 3}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 580, i32 2}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 417, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 326, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vc4_crtc_config_pv._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @vc4_crtc_config_pv._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 407, i32 3}
!73 = !{ptr @vc4_crtc_config_pv._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vc4_crtc_config_pv._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 546, i32 2}
!77 = !{ptr @vc4_crtc_dt_match, !78, !"vc4_crtc_dt_match", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1082, i32 34}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 978, i32 18}
!81 = !{ptr @bcm2835_pv0_data, !82, !"bcm2835_pv0_data", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 973, i32 33}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 992, i32 18}
!85 = !{ptr @bcm2835_pv1_data, !86, !"bcm2835_pv1_data", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 987, i32 33}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1006, i32 18}
!89 = !{ptr @bcm2835_pv2_data, !90, !"bcm2835_pv2_data", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1001, i32 33}
!91 = !{ptr @bcm2711_pv0_data, !92, !"bcm2711_pv0_data", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1015, i32 33}
!93 = !{ptr @bcm2711_pv1_data, !94, !"bcm2711_pv1_data", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1029, i32 33}
!95 = !{ptr @bcm2711_pv2_data, !96, !"bcm2711_pv2_data", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1043, i32 33}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1061, i32 18}
!99 = !{ptr @bcm2711_pv3_data, !100, !"bcm2711_pv3_data", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1056, i32 33}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1074, i32 18}
!103 = !{ptr @bcm2711_pv4_data, !104, !"bcm2711_pv4_data", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/vc4/vc4_crtc.c", i32 1069, i32 33}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 7069694}
!116 = !{i64 2161320416}
!117 = !{i64 2161321059}
!118 = !{i64 2161323962}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148274835}
!121 = !{i64 759658, i64 759683, i64 759705, i64 759721, i64 759733, i64 759753, i64 759777, i64 759793, i64 759805}
!122 = !{i64 2148275023}
!123 = !{i64 2161309964}
!124 = !{i64 2161310955}
!125 = !{i64 7069276}
!126 = !{i64 2161313578}
!127 = !{i64 2161313253}
!128 = !{i64 2158355255}
!129 = !{i64 2158356246}
!130 = !{i64 2158357772}
!131 = !{i64 2158358759}
!132 = !{i64 2161378952}
!133 = !{i8 0, i8 2}
!134 = !{i64 2161393118}
!135 = !{i64 2161393700}
!136 = !{i64 2161400923}
!137 = !{i64 2161379525}
!138 = !{i64 2161380012}
!139 = !{i64 2161376931}
!140 = !{i64 2161377457}
!141 = !{i64 2161303685}
!142 = !{i64 2158610065}
!143 = !{i64 2158958819}
!144 = !{i64 2159307313}
!145 = !{i64 2159651214}
!146 = !{i64 2160344053}
!147 = !{i64 2160565606}
!148 = !{i64 2160613607}
!149 = !{i64 2160615102}
!150 = !{i64 2160739856}
!151 = !{i64 2161158804}
!152 = !{i64 2161369222}
!153 = !{i64 2161370209}
!154 = !{i64 2161371733}
!155 = !{i64 2161372720}
!156 = !{i64 2158073398}
!157 = !{i64 2157986250}
