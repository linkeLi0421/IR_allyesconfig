; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_hvs.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hvs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.90, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.91, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.90 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.91 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.92, i32, i8 }
%struct.anon.92 = type { i32, i32, i32, i32 }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.85 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.85 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@vc4_hvs_dump_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016[drm] HVS ctx:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vc4_hvs_dump_state\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_hvs.c\00", [34 x i8] zeroinitializer }, align 32
@vc4_hvs_dump_state._entry_ptr = internal global ptr @vc4_hvs_dump_state._entry, section ".printk_index", align 4
@vc4_hvs_dump_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] 0x%08x (%s): 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@vc4_hvs_dump_state._entry_ptr.5 = internal global ptr @vc4_hvs_dump_state._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@vc4_hvs_stop_channel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_stop_channel.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_stop_channel.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_atomic_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016[drm] CRTC %d HVS before:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vc4_hvs_atomic_flush\00", [43 x i8] zeroinitializer }, align 32
@vc4_hvs_atomic_flush._entry_ptr = internal global ptr @vc4_hvs_atomic_flush._entry, section ".printk_index", align 4
@vc4_hvs_atomic_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_atomic_flush._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016[drm] CRTC %d HVS after:\0A\00", [36 x i8] zeroinitializer }, align 32
@vc4_hvs_atomic_flush._entry_ptr.14 = internal global ptr @vc4_hvs_atomic_flush._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4_hvs\00", [24 x i8] zeroinitializer }, align 32
@vc4_hvs_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-hvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@vc4_hvs_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_hvs_dev_probe, ptr @vc4_hvs_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_hvs_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_hvs_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_hvs_bind, ptr @vc4_hvs_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm2711-hvs\00", [47 x i8] zeroinitializer }, align 32
@hvs_regs = internal constant { [31 x %struct.debugfs_reg32], [40 x i8] } { [31 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.28, i32 0 }, %struct.debugfs_reg32 { ptr @.str.29, i32 4 }, %struct.debugfs_reg32 { ptr @.str.30, i32 8 }, %struct.debugfs_reg32 { ptr @.str.31, i32 12 }, %struct.debugfs_reg32 { ptr @.str.32, i32 16 }, %struct.debugfs_reg32 { ptr @.str.33, i32 20 }, %struct.debugfs_reg32 { ptr @.str.34, i32 24 }, %struct.debugfs_reg32 { ptr @.str.35, i32 32 }, %struct.debugfs_reg32 { ptr @.str.36, i32 36 }, %struct.debugfs_reg32 { ptr @.str.37, i32 40 }, %struct.debugfs_reg32 { ptr @.str.38, i32 44 }, %struct.debugfs_reg32 { ptr @.str.39, i32 48 }, %struct.debugfs_reg32 { ptr @.str.40, i32 52 }, %struct.debugfs_reg32 { ptr @.str.41, i32 56 }, %struct.debugfs_reg32 { ptr @.str.42, i32 64 }, %struct.debugfs_reg32 { ptr @.str.43, i32 68 }, %struct.debugfs_reg32 { ptr @.str.44, i32 72 }, %struct.debugfs_reg32 { ptr @.str.45, i32 76 }, %struct.debugfs_reg32 { ptr @.str.46, i32 80 }, %struct.debugfs_reg32 { ptr @.str.47, i32 84 }, %struct.debugfs_reg32 { ptr @.str.48, i32 88 }, %struct.debugfs_reg32 { ptr @.str.49, i32 92 }, %struct.debugfs_reg32 { ptr @.str.50, i32 96 }, %struct.debugfs_reg32 { ptr @.str.51, i32 100 }, %struct.debugfs_reg32 { ptr @.str.52, i32 104 }, %struct.debugfs_reg32 { ptr @.str.53, i32 108 }, %struct.debugfs_reg32 { ptr @.str.54, i32 112 }, %struct.debugfs_reg32 { ptr @.str.55, i32 128 }, %struct.debugfs_reg32 { ptr @.str.56, i32 132 }, %struct.debugfs_reg32 { ptr @.str.57, i32 136 }, %struct.debugfs_reg32 { ptr @.str.58, i32 140 }], [40 x i8] zeroinitializer }, align 32
@vc4_hvs_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 606, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't get core clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_hvs_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_hvs_bind._entry_ptr = internal global ptr @vc4_hvs_bind._entry, section ".printk_index", align 4
@vc4_hvs_bind._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 612, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't enable the core clock\0A\00", [32 x i8] zeroinitializer }, align 32
@vc4_hvs_bind._entry_ptr.23 = internal global ptr @vc4_hvs_bind._entry.21, section ".printk_index", align 4
@vc4_hvs_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hvs->mm_lock\00", [18 x i8] zeroinitializer }, align 32
@mitchell_netravali_1_3_1_3_kernel = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 132905984, i32 132378104, i32 4720125, i32 31237170, i32 55932571, i32 116451], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4 hvs\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hvs_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hvs_underrun\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCALER_DISPCTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCALER_DISPSTAT\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCALER_DISPID\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPECTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCALER_DISPPROF\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCALER_DISPDITHER\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCALER_DISPEOLN\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLIST0\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLIST1\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLIST2\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLSTAT\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLACT0\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLACT1\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPLACT2\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPCTRL0\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCALER_DISPBKGND0\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPSTAT0\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPBASE0\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPCTRL1\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCALER_DISPBKGND1\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPSTAT1\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPBASE1\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPCTRL2\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCALER_DISPBKGND2\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPSTAT2\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_DISPBASE2\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCALER_DISPALPHA2\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCALER_OLEDOFFS\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_OLEDCOEF0\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_OLEDCOEF1\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCALER_OLEDCOEF2\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to allocate space for filter kernel: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"*ERROR* HVS underrun\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 75, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 77, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 448, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 511, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 740, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"vc4_hvs_dt_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 730, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"vc4_hvs_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 736, i32 24 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"vc4_hvs_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 714, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 592, i32 49 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"hvs_regs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 33, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 606, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 612, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 622, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [34 x i8] c"mitchell_netravali_1_3_1_3_kernel\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 128, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 685, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 689, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 690, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 34, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 35, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 36, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 37, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 38, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 39, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 40, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 41, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 42, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 43, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 44, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 45, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 46, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 47, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 48, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 49, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 50, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 51, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 52, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 53, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 54, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 55, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 56, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 57, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 58, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 59, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 60, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 61, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 62, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 63, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 64, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 141, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 543, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_hvs.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 93, i32 17 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @vc4_hvs_atomic_flush._entry, ptr @vc4_hvs_atomic_flush._entry.12, ptr @vc4_hvs_atomic_flush._entry_ptr, ptr @vc4_hvs_atomic_flush._entry_ptr.14, ptr @vc4_hvs_bind._entry, ptr @vc4_hvs_bind._entry.21, ptr @vc4_hvs_bind._entry_ptr, ptr @vc4_hvs_bind._entry_ptr.23, ptr @vc4_hvs_dump_state._entry, ptr @vc4_hvs_dump_state._entry.3, ptr @vc4_hvs_dump_state._entry_ptr, ptr @vc4_hvs_dump_state._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @vc4_hvs_dt_match, ptr @vc4_hvs_driver, ptr @vc4_hvs_ops, ptr @.str.16, ptr @hvs_regs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @vc4_hvs_bind.__key, ptr @.str.24, ptr @mitchell_netravali_1_3_1_3_kernel, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_dump_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_dump_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_atomic_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_atomic_flush._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvs_regs to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_bind._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mitchell_netravali_1_3_1_3_kernel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_dump_state(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #6
  %0 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hvs, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_info, ptr %p, align 4, !alias.scope !140
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %0, align 4, !alias.scope !140
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %1, align 4, !alias.scope !140
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %2, align 4, !alias.scope !140
  %regset = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 8
  call void @drm_print_regset32(ptr noundef nonnull %p, ptr noundef %regset) #6
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end6.do.end6_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %add, %do.end6.do.end6_crit_edge ]
  %mul = shl nuw nsw i32 %i.054, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.054)
  %cmp8 = icmp ult i32 %i.054, 32
  %cond = select i1 %cmp8, ptr @.str.6, ptr @.str.7
  %11 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hvs, align 8
  %dlist = getelementptr inbounds %struct.vc4_hvs, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dlist, align 8
  %add.ptr = getelementptr i32, ptr %14, i32 %i.054
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %17 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hvs, align 8
  %dlist17 = getelementptr inbounds %struct.vc4_hvs, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dlist17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dlist17, align 8
  %add.ptr18 = getelementptr i32, ptr %20, i32 1
  %add.ptr19 = getelementptr i32, ptr %add.ptr18, i32 %i.054
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !143
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %23 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hvs, align 8
  %dlist26 = getelementptr inbounds %struct.vc4_hvs, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dlist26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dlist26, align 8
  %add.ptr27 = getelementptr i32, ptr %26, i32 2
  %add.ptr28 = getelementptr i32, ptr %add.ptr27, i32 %i.054
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !143
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %29 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hvs, align 8
  %dlist35 = getelementptr inbounds %struct.vc4_hvs, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dlist35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dlist35, align 8
  %add.ptr36 = getelementptr i32, ptr %32, i32 3
  %add.ptr37 = getelementptr i32, ptr %add.ptr36, i32 %i.054
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !143
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul, ptr noundef nonnull %cond, i32 noundef %16, i32 noundef %22, i32 noundef %28, i32 noundef %34) #9
  %add = add nuw nsw i32 %i.054, 4
  %cmp = icmp ult i32 %i.054, 60
  br i1 %cmp, label %do.end6.do.end6_crit_edge, label %for.end

do.end6.do.end6_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

for.end:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_regset32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_hvs_get_fifo_from_output(ptr nocapture noundef readonly %dev, i32 noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hvs, align 8
  %hvs5 = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %hvs5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hvs5, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %output to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %output, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb21
    i32 4, label %sw.bb51
    i32 5, label %sw.bb81
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 2
  %10 = xor i32 %9, 2
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs25 = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regs25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs25, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %14 = lshr i32 %13, 10
  %shr47 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr47)
  %cmp48 = icmp eq i32 %shr47, 3
  %.shr47 = select i1 %cmp48, i32 -32, i32 %shr47
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs55 = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regs55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs55, align 4
  %add.ptr56 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %18 = lshr i32 %17, 6
  %shr77 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr77)
  %cmp78 = icmp eq i32 %shr77, 3
  %.shr77 = select i1 %cmp78, i32 -32, i32 %shr77
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs85 = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regs85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs85, align 4
  %add.ptr86 = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %22 = lshr i32 %21, 6
  %shr107 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr107)
  %cmp108 = icmp eq i32 %shr107, 3
  %.shr107 = select i1 %cmp108, i32 -32, i32 %shr107
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb81, %sw.bb51, %sw.bb21, %sw.bb2, %sw.bb1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %sw.default ], [ 1, %sw.bb1 ], [ %output, %entry.cleanup_crit_edge ], [ %output, %if.end.cleanup_crit_edge ], [ %10, %sw.bb2 ], [ %.shr47, %sw.bb21 ], [ %.shr77, %sw.bb51 ], [ %.shr107, %sw.bb81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_stop_channel(ptr nocapture noundef readonly %dev, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %mul = shl i32 %chan, 4
  %add = add i32 %mul, 64
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hvs, align 8
  %regs6 = getelementptr inbounds %struct.vc4_hvs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs6, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %10 = or i32 %9, 64
  %11 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hvs, align 8
  %regs14 = getelementptr inbounds %struct.vc4_hvs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs14, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #6, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hvs, align 8
  %regs24 = getelementptr inbounds %struct.vc4_hvs, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs24, align 4
  %add.ptr27 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %20 = and i32 %19, -129
  %21 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hvs, align 8
  %regs33 = getelementptr inbounds %struct.vc4_hvs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs33, align 4
  %add.ptr36 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %20) #6, !srcloc !156
  %25 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hvs, align 8
  %regs40 = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %regs40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs40, align 4
  %add.ptr43 = getelementptr i8, ptr %28, i32 %add
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool48.not = icmp eq i32 %30, 0
  br i1 %tobool48.not, label %do.body.if.end82_crit_edge, label %land.rhs

do.body.if.end82_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.rhs:                                         ; preds = %do.body
  %.b259 = load i1, ptr @vc4_hvs_stop_channel.__already_done, align 1
  br i1 %.b259, label %land.rhs.if.end82_crit_edge, label %if.then56, !prof !160

land.rhs.if.end82_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then56:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 318, i32 noundef 9, ptr noundef null) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then56, %land.rhs.if.end82_crit_edge, %do.body.if.end82_crit_edge
  %31 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hvs, align 8
  %regs110 = getelementptr inbounds %struct.vc4_hvs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regs110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs110, align 4
  %add112 = add i32 %mul, 72
  %add.ptr113 = getelementptr i8, ptr %34, i32 %add112
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %36 = and i32 %35, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not = icmp eq i32 %36, 0
  br i1 %cmp.not, label %if.end82.if.end162_crit_edge, label %land.rhs124

if.end82.if.end162_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

land.rhs124:                                      ; preds = %if.end82
  %.b255258 = load i1, ptr @vc4_hvs_stop_channel.__already_done.8, align 1
  br i1 %.b255258, label %land.rhs124.if.end162_crit_edge, label %if.then135, !prof !160

land.rhs124.if.end162_crit_edge:                  ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then135:                                       ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 322, i32 noundef 9, ptr noundef null) #6
  br label %if.end162

if.end162:                                        ; preds = %if.then135, %land.rhs124.if.end162_crit_edge, %if.end82.if.end162_crit_edge
  %37 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hvs, align 8
  %regs174 = getelementptr inbounds %struct.vc4_hvs, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %regs174 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs174, align 4
  %add.ptr177 = getelementptr i8, ptr %40, i32 %add112
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %42 = and i32 %41, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp182.not = icmp eq i32 %42, 16
  br i1 %cmp182.not, label %if.end162.cleanup_crit_edge, label %land.rhs189

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs189:                                      ; preds = %if.end162
  %.b256257 = load i1, ptr @vc4_hvs_stop_channel.__already_done.9, align 1
  br i1 %.b256257, label %land.rhs189.cleanup_crit_edge, label %if.then200, !prof !160

land.rhs189.cleanup_crit_edge:                    ; preds = %land.rhs189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then200:                                       ; preds = %land.rhs189
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then200, %land.rhs189.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_hvs_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %connector_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %connector_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_mask, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state318 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %state318 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state318, align 4
  %dev319 = getelementptr inbounds %struct.drm_atomic_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev319 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev319, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 18
  %14 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn422 = load ptr, ptr %plane_list, align 4
  %cmp324.not425 = icmp eq ptr %.pn422, %plane_list
  br i1 %cmp324.not425, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %15 = phi ptr [ %11, %for.body.lr.ph ], [ %27, %for.inc.for.body_crit_edge ]
  %.pn427 = phi ptr [ %.pn422, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %dlist_count.0426 = phi i32 [ 0, %for.body.lr.ph ], [ %dlist_count.1, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %plane_mask, align 4
  %index.i.i420 = getelementptr i8, ptr %.pn427, i32 480
  %18 = ptrtoint ptr %index.i.i420 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i420, align 4
  %shl.i = shl nuw i32 1, %19
  %and329 = and i32 %shl.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %planes.i, align 4
  %state1.i = getelementptr %struct.__drm_planes_state, ptr %21, i32 %19, i32 1
  %22 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state1.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  %state6.i = getelementptr i8, ptr %.pn427, i32 488
  %spec.select.i = select i1 %tobool.not.i, ptr %state6.i, ptr %state1.i
  %24 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %retval.0.i = load ptr, ptr %spec.select.i, align 4
  %tobool334.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool334.not, label %if.else.for.inc_crit_edge, label %if.else336

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else336:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call337 = tail call i32 @vc4_plane_dlist_size(ptr noundef nonnull %retval.0.i) #6
  %add338 = add i32 %call337, %dlist_count.0426
  br label %for.inc

for.inc:                                          ; preds = %if.else336, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dlist_count.1 = phi i32 [ %add338, %if.else336 ], [ %dlist_count.0426, %if.else.for.inc_crit_edge ], [ %dlist_count.0426, %for.body.for.inc_crit_edge ]
  %25 = ptrtoint ptr %.pn427 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn427, align 4
  %26 = ptrtoint ptr %state318 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state318, align 4
  %dev321 = getelementptr inbounds %struct.drm_atomic_state, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dev321 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev321, align 4
  %plane_list323 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 18
  %cmp324.not = icmp eq ptr %.pn, %plane_list323
  br i1 %cmp324.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %dlist_count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %dlist_count.1, %for.inc.for.end_crit_edge ]
  %inc = add i32 %dlist_count.0.lcssa, 1
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hvs, align 8
  %mm_lock = getelementptr inbounds %struct.vc4_hvs, ptr %31, i32 0, i32 6
  %call351 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mm_lock) #6
  %32 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hvs, align 8
  %dlist_mm = getelementptr inbounds %struct.vc4_hvs, ptr %33, i32 0, i32 4
  %mm = getelementptr inbounds %struct.vc4_crtc_state, ptr %5, i32 0, i32 1
  %conv355 = zext i32 %inc to i64
  %call.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %dlist_mm, ptr noundef %mm, i64 noundef %conv355, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #6
  %34 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hvs, align 8
  %mm_lock358 = getelementptr inbounds %struct.vc4_hvs, ptr %35, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mm_lock358, i32 noundef %call351) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_plane_dlist_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %irq_lock = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assigned_channel, align 4
  %current_hvs_channel = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 13
  %4 = ptrtoint ptr %current_hvs_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %current_hvs_channel, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 4
  %feeds_txp = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 10
  %4 = ptrtoint ptr %feeds_txp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %feeds_txp, align 4, !range !148
  tail call fastcc void @vc4_hvs_update_dlist(ptr noundef %crtc)
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %assigned_channel.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %assigned_channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assigned_channel.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hvs.i, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %9, 4
  %add.i = add i32 %mul.i, 64
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hvs.i, align 8
  %regs6.i = getelementptr inbounds %struct.vc4_hvs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs6.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 64) #6, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hvs.i, align 8
  %regs14.i = getelementptr inbounds %struct.vc4_hvs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regs14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs14.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %23, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #6, !srcloc !156
  %24 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hvs.i, align 8
  %hvs519.i = getelementptr inbounds %struct.vc4_hvs, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %hvs519.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hvs519.i, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not.i = icmp eq i8 %27, 0
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hdisplay.i, align 4
  br i1 %tobool20.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %29)
  %tobool37.not.i = icmp ult i16 %29, 4096
  br i1 %tobool37.not.i, label %if.then.i.do.end90.i_crit_edge, label %do.end55.i, !prof !160

if.then.i.do.end90.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90.i

do.end55.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 275, i32 noundef 9, ptr noundef null) #6
  br label %do.end90.i

do.end90.i:                                       ; preds = %do.end55.i, %if.then.i.do.end90.i_crit_edge
  %30 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hdisplay.i, align 4
  %conv93.i = zext i16 %31 to i32
  %shl94.i = shl nuw nsw i32 %conv93.i, 12
  %and95.i = and i32 %shl94.i, 16773120
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %33)
  %tobool116.not.i = icmp ult i16 %33, 4096
  br i1 %tobool116.not.i, label %do.end90.i.vc4_hvs_init_channel.exit_crit_edge, label %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge, !prof !160

do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge: ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_init_channel.exit.sink.split

do.end90.i.vc4_hvs_init_channel.exit_crit_edge:   ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_init_channel.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %29)
  %tobool206.not.i = icmp ult i16 %29, 8192
  br i1 %tobool206.not.i, label %if.else.i.do.end265.i_crit_edge, label %do.end227.i, !prof !160

if.else.i.do.end265.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end265.i

do.end227.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 281, i32 noundef 9, ptr noundef null) #6
  br label %do.end265.i

do.end265.i:                                      ; preds = %do.end227.i, %if.else.i.do.end265.i_crit_edge
  %34 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay.i, align 4
  %conv268.i = zext i16 %35 to i32
  %shl269.i = shl nuw i32 %conv268.i, 16
  %and270.i = and i32 %shl269.i, 536805376
  %vdisplay288.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %vdisplay288.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay288.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %37)
  %tobool292.not.i = icmp ult i16 %37, 8192
  br i1 %tobool292.not.i, label %do.end265.i.vc4_hvs_init_channel.exit_crit_edge, label %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge, !prof !160

do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge: ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_init_channel.exit.sink.split

do.end265.i.vc4_hvs_init_channel.exit_crit_edge:  ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_init_channel.exit

vc4_hvs_init_channel.exit.sink.split:             ; preds = %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge
  %.sink = phi i32 [ 277, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ], [ 283, %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ]
  %vdisplay.i.sink.ph = phi ptr [ %vdisplay.i, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ], [ %vdisplay288.i, %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ]
  %.sink10.ph = phi i16 [ 4095, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ], [ 8191, %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ]
  %.sink.i.ph = phi i32 [ 536870912, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ], [ 32768, %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ]
  %and95.sink.i.ph = phi i32 [ %and95.i, %do.end90.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ], [ %and270.i, %do.end265.i.vc4_hvs_init_channel.exit.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %vc4_hvs_init_channel.exit

vc4_hvs_init_channel.exit:                        ; preds = %vc4_hvs_init_channel.exit.sink.split, %do.end265.i.vc4_hvs_init_channel.exit_crit_edge, %do.end90.i.vc4_hvs_init_channel.exit_crit_edge
  %vdisplay.i.sink = phi ptr [ %vdisplay.i, %do.end90.i.vc4_hvs_init_channel.exit_crit_edge ], [ %vdisplay288.i, %do.end265.i.vc4_hvs_init_channel.exit_crit_edge ], [ %vdisplay.i.sink.ph, %vc4_hvs_init_channel.exit.sink.split ]
  %.sink10 = phi i16 [ 4095, %do.end90.i.vc4_hvs_init_channel.exit_crit_edge ], [ 8191, %do.end265.i.vc4_hvs_init_channel.exit_crit_edge ], [ %.sink10.ph, %vc4_hvs_init_channel.exit.sink.split ]
  %.sink.i = phi i32 [ 536870912, %do.end90.i.vc4_hvs_init_channel.exit_crit_edge ], [ 32768, %do.end265.i.vc4_hvs_init_channel.exit_crit_edge ], [ %.sink.i.ph, %vc4_hvs_init_channel.exit.sink.split ]
  %and95.sink.i = phi i32 [ %and95.i, %do.end90.i.vc4_hvs_init_channel.exit_crit_edge ], [ %and270.i, %do.end265.i.vc4_hvs_init_channel.exit_crit_edge ], [ %and95.sink.i.ph, %vc4_hvs_init_channel.exit.sink.split ]
  %38 = ptrtoint ptr %vdisplay.i.sink to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay.i.sink, align 2
  %40 = and i16 %39, %.sink10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %and180.i = zext i16 %40 to i32
  %cond.i = select i1 %tobool.not, i32 0, i32 %.sink.i
  %or.i = or i32 %cond.i, %and180.i
  %or183.i = or i32 %or.i, %and95.sink.i
  %dispctrl.0.i = or i32 %or183.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %dispctrl.0.i) #6
  %42 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hvs.i, align 8
  %regs368.i = getelementptr inbounds %struct.vc4_hvs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %regs368.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs368.i, align 4
  %add.ptr371.i = getelementptr i8, ptr %45, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr371.i, i32 %41) #6, !srcloc !156
  %46 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hvs.i, align 8
  %regs373.i = getelementptr inbounds %struct.vc4_hvs, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regs373.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs373.i, align 4
  %add375.i = add i32 %mul.i, 68
  %add.ptr376.i = getelementptr i8, ptr %49, i32 %add375.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr376.i) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  %51 = and i32 %50, -225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %52 = or i32 %51, 128
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %54 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hvs.i, align 8
  %hvs5387.i = getelementptr inbounds %struct.vc4_hvs, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %hvs5387.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hvs5387.i, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool388.not.i = icmp eq i8 %57, 0
  %cond391.i = select i1 %tobool388.not.i, i32 536870912, i32 0
  %and.i = shl i32 %11, 26
  %58 = and i32 %and.i, 1073741824
  %or392.i = or i32 %53, %58
  %or396.i = or i32 %or392.i, %cond391.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %or396.i) #6
  %regs398.i = getelementptr inbounds %struct.vc4_hvs, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %regs398.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs398.i, align 4
  %add.ptr401.i = getelementptr i8, ptr %61, i32 %add375.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401.i, i32 %59) #6, !srcloc !156
  tail call fastcc void @vc4_hvs_lut_load(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hvs_update_dlist(ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body54, label %if.then

if.then:                                          ; preds = %entry
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %pipe = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pipe, align 4
  %call8 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !160

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 373, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  %feeds_txp = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 10
  %9 = ptrtoint ptr %feeds_txp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %feeds_txp, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool39.not = icmp eq i8 %10, 0
  br i1 %tobool39.not, label %if.end.if.then42_crit_edge, label %lor.lhs.false

if.end.if.then42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end
  %txp_armed = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %txp_armed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %txp_armed, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool40.not = icmp eq i8 %12, 0
  br i1 %tobool40.not, label %lor.lhs.false.do.body49_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.end.if.then42_crit_edge
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %event44 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %event44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event44, align 4
  %event45 = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 8
  %17 = ptrtoint ptr %event45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %event45, align 8
  store ptr null, ptr %event44, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.then42, %lor.lhs.false.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %start = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %conv52 = trunc i64 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv52)
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %assigned_channel, align 4
  %mul = shl i32 %26, 2
  %add = add i32 %mul, 32
  %add.ptr = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #6, !srcloc !156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call34) #6
  br label %do.body68

do.body54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %start58 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %start58 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start58, align 8
  %conv59 = trunc i64 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv59)
  %hvs60 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %hvs60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hvs60, align 8
  %regs61 = getelementptr inbounds %struct.vc4_hvs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regs61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs61, align 4
  %assigned_channel62 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %assigned_channel62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %assigned_channel62, align 4
  %mul63 = shl i32 %35, 2
  %add64 = add i32 %mul63, 32
  %add.ptr65 = getelementptr i8, ptr %33, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %29) #6, !srcloc !156
  br label %do.body68

do.body68:                                        ; preds = %do.body54, %do.body49
  %irq_lock = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 11
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %start81 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %start81 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start81, align 8
  %conv82 = trunc i64 %37 to i32
  %current_dlist = getelementptr inbounds %struct.vc4_crtc, ptr %crtc, i32 0, i32 12
  %38 = ptrtoint ptr %current_dlist to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv82, ptr %current_dlist, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call75) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_disable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 8
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assigned_channel, align 4
  tail call void @vc4_hvs_stop_channel(ptr noundef %1, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state3, align 4
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hvs, align 8
  %dlist = getelementptr inbounds %struct.vc4_hvs, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dlist, align 8
  %start = getelementptr inbounds %struct.vc4_crtc_state, ptr %9, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start, align 8
  %idx.ext = trunc i64 %15 to i32
  %add.ptr = getelementptr i32, ptr %13, i32 %idx.ext
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %16 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn190 = load ptr, ptr %plane_list, align 4
  %cmp.not193 = icmp eq ptr %.pn190, %plane_list
  br i1 %cmp.not193, label %entry.do.body31_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn196 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn190, %entry.for.body_crit_edge ]
  %enable_bg_fill.0.off0195 = phi i1 [ %enable_bg_fill.2.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %dlist_next.0194 = phi ptr [ %dlist_next.1, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %plane.0197 = getelementptr i8, ptr %.pn196, i32 -4
  %17 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state3, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_mask, align 4
  %index.i.i189 = getelementptr i8, ptr %.pn196, i32 480
  %21 = ptrtoint ptr %index.i.i189 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i189, align 4
  %shl.i = shl nuw i32 1, %22
  %and = and i32 %shl.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp17 = icmp eq ptr %dlist_next.0194, %add.ptr
  br i1 %cmp17, label %if.then18, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %state19 = getelementptr i8, ptr %.pn196, i32 488
  %23 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state19, align 4
  %needs_bg_fill = getelementptr inbounds %struct.vc4_plane_state, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %needs_bg_fill to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %needs_bg_fill, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21 = icmp ne i8 %26, 0
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else.if.end22_crit_edge
  %enable_bg_fill.1.off0 = phi i1 [ %tobool21, %if.then18 ], [ %enable_bg_fill.0.off0195, %if.else.if.end22_crit_edge ]
  %call23 = tail call i32 @vc4_plane_write_dlist(ptr noundef %plane.0197, ptr noundef %dlist_next.0194) #6
  %add.ptr24 = getelementptr i32, ptr %dlist_next.0194, i32 %call23
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body.for.inc_crit_edge
  %dlist_next.1 = phi ptr [ %add.ptr24, %if.end22 ], [ %dlist_next.0194, %for.body.for.inc_crit_edge ]
  %enable_bg_fill.2.off0 = phi i1 [ %enable_bg_fill.1.off0, %if.end22 ], [ %enable_bg_fill.0.off0195, %for.body.for.inc_crit_edge ]
  %27 = ptrtoint ptr %.pn196 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn196, align 4
  %28 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc, align 8
  %plane_list12 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list12
  br i1 %cmp.not, label %for.inc.do.body31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.body31:                                        ; preds = %for.inc.do.body31_crit_edge, %entry.do.body31_crit_edge
  %dlist_next.0.lcssa = phi ptr [ %add.ptr, %entry.do.body31_crit_edge ], [ %dlist_next.1, %for.inc.do.body31_crit_edge ]
  %enable_bg_fill.0.off0.lcssa = phi i1 [ false, %entry.do.body31_crit_edge ], [ %enable_bg_fill.2.off0, %for.inc.do.body31_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dlist_next.0.lcssa, i32 128) #6, !srcloc !156
  %incdec.ptr = getelementptr i32, ptr %dlist_next.0.lcssa, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %conv = sext i32 %sub.ptr.div to i64
  %size = getelementptr inbounds %struct.vc4_crtc_state, ptr %9, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv)
  %cmp35.not = icmp eq i64 %31, %conv
  br i1 %cmp35.not, label %do.body31.if.end73_crit_edge, label %land.rhs

do.body31.if.end73_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.rhs:                                         ; preds = %do.body31
  %.b188 = load i1, ptr @vc4_hvs_atomic_flush.__already_done, align 1
  br i1 %.b188, label %land.rhs.if.end73_crit_edge, label %if.then47, !prof !160

land.rhs.if.end73_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then47:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vc4_hvs_atomic_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 474, i32 noundef 9, ptr noundef null) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then47, %land.rhs.if.end73_crit_edge, %do.body31.if.end73_crit_edge
  br i1 %enable_bg_fill.0.off0.lcssa, label %do.body83, label %if.end73.if.end97_crit_edge

if.end73.if.end97_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.body83:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %9, i32 0, i32 3
  %36 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %assigned_channel, align 4
  %mul = shl i32 %37, 4
  %add = add i32 %mul, 68
  %add.ptr87 = getelementptr i8, ptr %35, i32 %add
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %39 = or i32 %38, 1
  %40 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hvs, align 8
  %regs92 = getelementptr inbounds %struct.vc4_hvs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regs92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs92, align 4
  %44 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assigned_channel, align 4
  %mul94 = shl i32 %45, 4
  %add95 = add i32 %mul94, 68
  %add.ptr96 = getelementptr i8, ptr %43, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %39) #6, !srcloc !156
  br label %if.end97

if.end97:                                         ; preds = %do.body83, %if.end73.if.end97_crit_edge
  %46 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state3, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %active, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool99.not = icmp eq i8 %49, 0
  br i1 %tobool99.not, label %if.end97.if.end105_crit_edge, label %land.lhs.true

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

land.lhs.true:                                    ; preds = %if.end97
  %active101 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %50 = ptrtoint ptr %active101 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %active101, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool102.not = icmp eq i8 %51, 0
  br i1 %tobool102.not, label %land.lhs.true.if.end105_crit_edge, label %if.then104

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vc4_hvs_update_dlist(ptr noundef %crtc)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %land.lhs.true.if.end105_crit_edge, %if.end97.if.end105_crit_edge
  %52 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state3, align 4
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %55 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %bf.cast.not = icmp eq i8 %55, 0
  br i1 %bf.cast.not, label %if.end105.if.end144_crit_edge, label %if.then107

if.end105.if.end144_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then107:                                       ; preds = %if.end105
  %56 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hvs, align 8
  %regs111 = getelementptr inbounds %struct.vc4_hvs, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %regs111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs111, align 4
  %assigned_channel112 = getelementptr inbounds %struct.vc4_crtc_state, ptr %9, i32 0, i32 3
  %60 = ptrtoint ptr %assigned_channel112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assigned_channel112, align 4
  %mul113 = shl i32 %61, 4
  %add114 = add i32 %mul113, 68
  %add.ptr115 = getelementptr i8, ptr %59, i32 %add114
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #6, !srcloc !143
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %64 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state3, align 4
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gamma_lut, align 4
  %tobool120.not = icmp eq ptr %67, null
  br i1 %tobool120.not, label %if.else123, label %if.then121

if.then121:                                       ; preds = %if.then107
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %67, i32 0, i32 4
  %70 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %71)
  %cmp35.not.i = icmp ult i32 %71, 8
  br i1 %cmp35.not.i, label %if.then121.vc4_hvs_update_gamma_lut.exit_crit_edge, label %for.body.preheader.i

if.then121.vc4_hvs_update_gamma_lut.exit_crit_edge: ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_update_gamma_lut.exit

for.body.preheader.i:                             ; preds = %if.then121
  %div1.i.i = lshr i32 %71, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %69, i32 %i.036.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %73 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 128
  %shr4.i.i = lshr i32 %add.i.i, 8
  %74 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 255) #6
  %conv5.i = trunc i32 %74 to i8
  %arrayidx6.i = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 5, i32 %i.036.i
  %75 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %green.i = getelementptr %struct.drm_color_lut, ptr %69, i32 %i.036.i, i32 1
  %76 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %green.i, align 2
  %conv8.i = zext i16 %77 to i32
  %add.i31.i = add nuw nsw i32 %conv8.i, 128
  %shr4.i32.i = lshr i32 %add.i31.i, 8
  %78 = tail call i32 @llvm.umin.i32(i32 %shr4.i32.i, i32 255) #6
  %conv10.i = trunc i32 %78 to i8
  %arrayidx11.i = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 6, i32 %i.036.i
  %79 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %blue.i = getelementptr %struct.drm_color_lut, ptr %69, i32 %i.036.i, i32 2
  %80 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %blue.i, align 2
  %conv13.i = zext i16 %81 to i32
  %add.i33.i = add nuw nsw i32 %conv13.i, 128
  %shr4.i34.i = lshr i32 %add.i33.i, 8
  %82 = tail call i32 @llvm.umin.i32(i32 %shr4.i34.i, i32 255) #6
  %conv15.i = trunc i32 %82 to i8
  %arrayidx16.i = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 7, i32 %i.036.i
  %83 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div1.i.i
  br i1 %exitcond.not.i, label %for.body.i.vc4_hvs_update_gamma_lut.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.vc4_hvs_update_gamma_lut.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_hvs_update_gamma_lut.exit

vc4_hvs_update_gamma_lut.exit:                    ; preds = %for.body.i.vc4_hvs_update_gamma_lut.exit_crit_edge, %if.then121.vc4_hvs_update_gamma_lut.exit_crit_edge
  tail call fastcc void @vc4_hvs_lut_load(ptr noundef %crtc) #6
  %or122 = or i32 %63, 536870912
  br label %do.body126

if.else123:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %and124 = and i32 %63, -536870913
  br label %do.body126

do.body126:                                       ; preds = %if.else123, %vc4_hvs_update_gamma_lut.exit
  %dispbkgndx.0 = phi i32 [ %or122, %vc4_hvs_update_gamma_lut.exit ], [ %and124, %if.else123 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %84 = tail call i32 @llvm.bswap.i32(i32 %dispbkgndx.0)
  %85 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hvs, align 8
  %regs130 = getelementptr inbounds %struct.vc4_hvs, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %regs130 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs130, align 4
  %89 = ptrtoint ptr %assigned_channel112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %assigned_channel112, align 4
  %mul132 = shl i32 %90, 4
  %add133 = add i32 %mul132, 68
  %add.ptr134 = getelementptr i8, ptr %88, i32 %add133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %84) #6, !srcloc !156
  br label %if.end144

if.end144:                                        ; preds = %do.body126, %if.end105.if.end144_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_plane_write_dlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_mask_underrun(ptr nocapture noundef readonly %dev, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !143
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %add = add i32 %channel, 13
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hvs, align 8
  %regs4 = getelementptr inbounds %struct.vc4_hvs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #6, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hvs_unmask_underrun(ptr nocapture noundef readonly %dev, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !143
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %add = add i32 %channel, 13
  %shl = shl nuw i32 1, %add
  %or = or i32 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %mul = shl i32 %channel, 3
  %add3 = add i32 %mul, 9
  %shl4 = shl nuw i32 1, %add3
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl4)
  %7 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hvs, align 8
  %regs6 = getelementptr inbounds %struct.vc4_hvs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs6, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #6, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hvs, align 8
  %regs12 = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #6, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hvs_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_hvs_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hvs_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_hvs_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hvs_lut_load(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assigned_channel, align 4
  %mul = mul i32 %5, 3
  %gamma_size = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %6 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gamma_size, align 8
  %mul4 = mul i32 %mul, %7
  %or = or i32 %mul4, -2147483648
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !156
  %13 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gamma_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp63.not = icmp eq i32 %14, 0
  br i1 %cmp63.not, label %entry.for.end43_crit_edge, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  br label %do.body6

entry.for.end43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.cond12.preheader:                             ; preds = %do.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1465.not = icmp eq i32 %23, 0
  br i1 %cmp1465.not, label %for.cond12.preheader.for.end43_crit_edge, label %for.cond12.preheader.do.body17_crit_edge

for.cond12.preheader.do.body17_crit_edge:         ; preds = %for.cond12.preheader
  br label %do.body17

for.cond12.preheader.for.end43_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %entry.do.body6_crit_edge
  %i.064 = phi i32 [ %inc, %do.body6.do.body6_crit_edge ], [ 0, %entry.do.body6_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 5, i32 %i.064
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %17 = shl nuw i32 %conv, 24
  %18 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hvs, align 8
  %regs10 = getelementptr inbounds %struct.vc4_hvs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs10, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %17) #6, !srcloc !156
  %inc = add nuw i32 %i.064, 1
  %22 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gamma_size, align 8
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %do.body6.do.body6_crit_edge, label %for.cond12.preheader

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

for.cond28.preheader.loopexit:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp = icmp eq i32 %32, 0
  br i1 %phi.cmp, label %for.cond28.preheader.loopexit.for.end43_crit_edge, label %for.cond28.preheader.loopexit.do.body33_crit_edge

for.cond28.preheader.loopexit.do.body33_crit_edge: ; preds = %for.cond28.preheader.loopexit
  br label %do.body33

for.cond28.preheader.loopexit.for.end43_crit_edge: ; preds = %for.cond28.preheader.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

do.body17:                                        ; preds = %do.body17.do.body17_crit_edge, %for.cond12.preheader.do.body17_crit_edge
  %i.166 = phi i32 [ %inc26, %do.body17.do.body17_crit_edge ], [ 0, %for.cond12.preheader.do.body17_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %arrayidx20 = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 6, i32 %i.166
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %26 = shl nuw i32 %conv21, 24
  %27 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hvs, align 8
  %regs23 = getelementptr inbounds %struct.vc4_hvs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regs23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs23, align 4
  %add.ptr24 = getelementptr i8, ptr %30, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %26) #6, !srcloc !156
  %inc26 = add nuw i32 %i.166, 1
  %31 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gamma_size, align 8
  %cmp14 = icmp ult i32 %inc26, %32
  br i1 %cmp14, label %do.body17.do.body17_crit_edge, label %for.cond28.preheader.loopexit

do.body17.do.body17_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

do.body33:                                        ; preds = %do.body33.do.body33_crit_edge, %for.cond28.preheader.loopexit.do.body33_crit_edge
  %i.268 = phi i32 [ %inc42, %do.body33.do.body33_crit_edge ], [ 0, %for.cond28.preheader.loopexit.do.body33_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %arrayidx36 = getelementptr %struct.vc4_crtc, ptr %crtc, i32 0, i32 7, i32 %i.268
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %35 = shl nuw i32 %conv37, 24
  %36 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hvs, align 8
  %regs39 = getelementptr inbounds %struct.vc4_hvs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs39, align 4
  %add.ptr40 = getelementptr i8, ptr %39, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %35) #6, !srcloc !156
  %inc42 = add nuw i32 %i.268, 1
  %40 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gamma_size, align 8
  %cmp30 = icmp ult i32 %inc42, %41
  br i1 %cmp30, label %do.body33.do.body33_crit_edge, label %do.body33.for.end43_crit_edge

do.body33.for.end43_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

do.body33.do.body33_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

for.end43:                                        ; preds = %do.body33.for.end43_crit_edge, %for.cond28.preheader.loopexit.for.end43_crit_edge, %for.cond12.preheader.for.end43_crit_edge, %entry.for.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hvs_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hvs5 = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %hvs5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %hvs5, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %regset = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 8
  %base = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %base, align 8
  %9 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hvs_regs, ptr %regset, align 8
  %nregs = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 31, ptr %nregs, align 4
  %hvs521 = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %hvs521 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hvs521, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %if.end16.do.body52_crit_edge, label %if.then23

if.end16.do.body52_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

if.then23:                                        ; preds = %if.end16
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %core_clk = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %core_clk, align 4
  %cmp.i205 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end, label %if.end32

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %14 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.then23
  %call.i206 = tail call i32 @clk_prepare(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end42, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call25) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i206, %if.end32.do.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hvs521 to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %hvs521, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool44.not = icmp eq i8 %.pr, 0
  %spec.select = select i1 %tobool44.not, i32 8192, i32 16384
  br label %do.body52

do.body52:                                        ; preds = %if.end42, %if.end16.do.body52_crit_edge
  %.sink217 = phi i32 [ 8192, %if.end16.do.body52_crit_edge ], [ %spec.select, %if.end42 ]
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %19, i32 %.sink217
  %dlist = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %dlist to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr47, ptr %dlist, align 8
  %mm_lock = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @vc4_hvs_bind.__key, i16 noundef signext 3) #6
  %dlist_mm = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %dlist_mm, i64 noundef 32, i64 noundef 4064) #6
  %21 = ptrtoint ptr %hvs521 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hvs521, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool57.not = icmp eq i8 %22, 0
  %. = select i1 %tobool57.not, i64 49152, i64 61440
  %lbm_mm60 = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 5
  tail call void @drm_mm_init(ptr noundef %lbm_mm60, i64 noundef 0, i64 noundef %.) #6
  %mitchell_netravali_filter = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %dlist_mm, ptr noundef %mitchell_netravali_filter, i64 noundef 11, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i207 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i207, label %if.end.i208, label %vc4_hvs_upload_linear_kernel.exit

if.end.i208:                                      ; preds = %do.body52
  %dlist.i = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dlist.i, align 8
  %start.i = getelementptr inbounds %struct.vc4_hvs, ptr %call.i, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start.i, align 8
  %idx.ext.i = trunc i64 %26 to i32
  %add.ptr.i = getelementptr i32, ptr %24, i32 %idx.ext.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i208
  %i.01.i = phi i32 [ 0, %if.end.i208 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.01.i)
  %cmp1.i = icmp ult i32 %i.01.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp1.i, label %do.body.i, label %do.body4.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr @mitchell_netravali_1_3_1_3_kernel, i32 %i.01.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %arrayidx3.i = getelementptr i32, ptr %add.ptr.i, i32 %i.01.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %29) #6, !srcloc !156
  br label %for.inc.i

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub7.i = sub nuw nsw i32 10, %i.01.i
  %arrayidx8.i = getelementptr i32, ptr @mitchell_netravali_1_3_1_3_kernel, i32 %sub7.i
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %arrayidx9.i = getelementptr i32, ptr %add.ptr.i, i32 %i.01.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9.i, i32 %32) #6, !srcloc !156
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body4.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end65, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vc4_hvs_upload_linear_kernel.exit:                ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %call.i.i.i) #6
  br label %cleanup

if.end65:                                         ; preds = %for.inc.i
  %hvs66 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %hvs66 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %hvs66, align 8
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %37 = and i32 %36, 62335
  %38 = or i32 %37, 234883200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %hvs66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hvs66, align 8
  %regs140 = getelementptr inbounds %struct.vc4_hvs, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regs140 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs140, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #6, !srcloc !156
  %call142 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  %call.i210 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call142, ptr noundef nonnull @vc4_hvs_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool144.not = icmp eq i32 %call.i210, 0
  br i1 %tobool144.not, label %if.end146, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end146:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef %regset) #6
  tail call void @vc4_debugfs_add_file(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @vc4_hvs_debugfs_underrun, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %if.end65.cleanup_crit_edge, %vc4_hvs_upload_linear_kernel.exit, %do.end39, %do.end, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ %16, %do.end ], [ %retval.0.i.ph, %do.end39 ], [ 0, %if.end146 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i.i, %vc4_hvs_upload_linear_kernel.exit ], [ %call.i210, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hvs_unbind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hvs2 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hvs2, align 8
  %flags.i = getelementptr inbounds %struct.vc4_hvs, ptr %3, i32 0, i32 7, i32 12
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mitchell_netravali_filter = getelementptr inbounds %struct.vc4_hvs, ptr %3, i32 0, i32 7
  tail call void @drm_mm_remove_node(ptr noundef %mitchell_netravali_filter) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvs2, align 8
  %dlist_mm = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %dlist_mm) #6
  %8 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hvs2, align 8
  %lbm_mm = getelementptr inbounds %struct.vc4_hvs, ptr %9, i32 0, i32 5
  tail call void @drm_mm_takedown(ptr noundef %lbm_mm) #6
  %core_clk = getelementptr inbounds %struct.vc4_hvs, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = ptrtoint ptr %hvs2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hvs2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hvs_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hvs, align 8
  %regs = getelementptr inbounds %struct.vc4_hvs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  %6 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvs, align 8
  %regs6 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !143
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  %underrun.i = getelementptr inbounds %struct.vc4_dev, ptr %data, i32 0, i32 28
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and13 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hvs, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %17 = and i32 %16, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hvs, align 8
  %regs4.i = getelementptr inbounds %struct.vc4_hvs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs4.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #6, !srcloc !156
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %underrun.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %underrun.i, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %underrun.i, ptr %underrun.i, i32 1, ptr elementtype(i32) %underrun.i) #6, !srcloc !189
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.60) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %irqret.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %and.1 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %and13.1 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  %or.cond29 = select i1 %tobool.not.1, i1 true, i1 %tobool14.not.1
  br i1 %or.cond29, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hvs, align 8
  %regs.i.1 = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %regs.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.1, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %30 = and i32 %29, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hvs, align 8
  %regs4.i.1 = getelementptr inbounds %struct.vc4_hvs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regs4.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs4.i.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #6, !srcloc !156
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %underrun.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %underrun.i, i32 1, i32 3, i32 1) #6
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %underrun.i, ptr %underrun.i, i32 1, ptr elementtype(i32) %underrun.i) #6, !srcloc !189
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.60) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %irqret.1.1 = phi i32 [ 1, %if.then.1 ], [ %irqret.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %and13.2 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  %or.cond30 = select i1 %tobool.not.2, i1 true, i1 %tobool14.not.2
  br i1 %or.cond30, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hvs, align 8
  %regs.i.2 = getelementptr inbounds %struct.vc4_hvs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.2, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %43 = and i32 %42, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hvs, align 8
  %regs4.i.2 = getelementptr inbounds %struct.vc4_hvs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %regs4.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs4.i.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %43) #6, !srcloc !156
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %underrun.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %underrun.i, i32 1, i32 3, i32 1) #6
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %underrun.i, ptr %underrun.i, i32 1, ptr elementtype(i32) %underrun.i) #6, !srcloc !189
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.60) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %irqret.1.2 = phi i32 [ 1, %if.then.2 ], [ %irqret.1.1, %for.inc.1.for.inc.2_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hvs, align 8
  %regs16 = getelementptr inbounds %struct.vc4_hvs, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs16, align 4
  %add.ptr17 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 4144959) #6, !srcloc !156
  ret i32 %irqret.1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hvs_debugfs_underrun(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #6
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !191
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !191
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !191
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !191
  %underrun = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %underrun, i32 noundef 4) #6
  %13 = ptrtoint ptr %underrun to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %underrun, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.61, i32 noundef %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 75, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vc4_hvs_dump_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vc4_hvs_dump_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 77, i32 3}
!8 = !{ptr @vc4_hvs_dump_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vc4_hvs_dump_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 318, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 320, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 324, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 448, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vc4_hvs_atomic_flush._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @vc4_hvs_atomic_flush._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 474, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 511, i32 3}
!27 = !{ptr @vc4_hvs_atomic_flush._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vc4_hvs_atomic_flush._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 740, i32 11}
!31 = !{ptr @vc4_hvs_driver, !32, !"vc4_hvs_driver", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 736, i32 24}
!33 = !{ptr @vc4_hvs_ops, !34, !"vc4_hvs_ops", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 714, i32 35}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 592, i32 49}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 606, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vc4_hvs_bind._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @vc4_hvs_bind._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 612, i32 4}
!46 = !{ptr @vc4_hvs_bind._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vc4_hvs_bind._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @vc4_hvs_bind.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 622, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 685, i32 35}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 689, i32 32}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 690, i32 28}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 34, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 35, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 36, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 37, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 38, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 39, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 40, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 41, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 42, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 43, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 44, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 45, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 46, i32 2}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 47, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 48, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 49, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 50, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 51, i32 2}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 52, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 53, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 54, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 55, i32 2}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 56, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 57, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 58, i32 2}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 59, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 60, i32 2}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 61, i32 2}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 62, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 63, i32 2}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 64, i32 2}
!119 = !{ptr @hvs_regs, !120, !"hvs_regs", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 33, i32 35}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 141, i32 3}
!123 = !{ptr @mitchell_netravali_1_3_1_3_kernel, !124, !"mitchell_netravali_1_3_1_3_kernel", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 128, i32 18}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 543, i32 2}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 93, i32 17}
!129 = !{ptr @vc4_hvs_dt_match, !130, !"vc4_hvs_dt_match", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/vc4/vc4_hvs.c", i32 730, i32 34}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"drm_info_printer: %agg.result"}
!142 = distinct !{!142, !"drm_info_printer"}
!143 = !{i64 6974843}
!144 = !{i64 2156962111}
!145 = !{i64 2156962681}
!146 = !{i64 2156963251}
!147 = !{i64 2156963821}
!148 = !{i8 0, i8 2}
!149 = !{i64 2156969003}
!150 = !{i64 2157010534}
!151 = !{i64 2157052068}
!152 = !{i64 2157097663}
!153 = !{i64 2157519376}
!154 = !{i64 2157521754}
!155 = !{i64 2157522991}
!156 = !{i64 6974425}
!157 = !{i64 2157525332}
!158 = !{i64 2157526573}
!159 = !{i64 2157528675}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2157597155}
!162 = !{i64 2157600777}
!163 = !{i64 2157139148}
!164 = !{i64 2157140045}
!165 = !{i64 2157140885}
!166 = !{i64 2157515169}
!167 = !{i64 2157516428}
!168 = !{i64 2157517679}
!169 = !{i64 2157610931}
!170 = !{i64 2157611844}
!171 = !{i64 2157619198}
!172 = !{i64 2157623064}
!173 = !{i64 2157624393}
!174 = !{i64 2157625573}
!175 = !{i64 2157626351}
!176 = !{i64 2157628954}
!177 = !{i64 2157629363}
!178 = !{i64 2157630142}
!179 = !{i64 2157630751}
!180 = !{i64 2157631365}
!181 = !{i64 2156966346}
!182 = !{i64 2156967100}
!183 = !{i64 2156967647}
!184 = !{i64 2156968194}
!185 = !{i64 2157648191}
!186 = !{i64 2157745327}
!187 = !{i64 2157632251}
!188 = !{i64 2157632830}
!189 = !{i64 2148318224, i64 2148318250, i64 2148318279, i64 2148318313, i64 2148318344, i64 2148318367}
!190 = !{i64 2157638654}
!191 = !{!192}
!192 = distinct !{!192, !193, !"drm_seq_file_printer: %agg.result"}
!193 = distinct !{!193, !"drm_seq_file_printer"}
