; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.91, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.91 = type { ptr }

@rcar_du_output_name.names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DPAD0\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DPAD1\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSI0\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSI1\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDMI0\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDMI1\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVDS0\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVDS1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCON\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_rcar_du_drm__318_708_rcar_du_init6 = internal global ptr @rcar_du_init, section ".initcall6.init", align 4
@rcar_du_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_du_probe, ptr @rcar_du_remove, ptr @rcar_du_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_du_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_du_exit = internal global ptr @rcar_du_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [72 x i8] c"rcar_du_drm.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [62 x i8] c"rcar_du_drm.description=Renesas R-Car Display Unit DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [53 x i8] c"rcar_du_drm.file=drivers/gpu/drm/rcar-du/rcar-du-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [24 x i8] c"rcar_du_drm.license=GPL\00", section ".modinfo", align 1
@rcar_du_of_table = internal constant { [25 x %struct.of_device_id], [1244 x i8] } { [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7790_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7743_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7743_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7745_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a77470_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774a1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774b1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774c0_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774e1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7779_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7790_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7791_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7792_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7791_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7794_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7795_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7796_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7796_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77965_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7799x_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7799x_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a779a0_info }, %struct.of_device_id zeroinitializer], [1244 x i8] zeroinitializer }, align 32
@rcar_du_r8a7790_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 1, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 7, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 6, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rzg1_du_r8a7743_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rzg1_du_r8a7745_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rzg1_du_r8a77470_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 3, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a774a1_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a774b1_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a774c0_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 7, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 2, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 3 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a774e1_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7779_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 1, i32 24, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 3, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7791_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7792_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7794_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7795_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 15, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 8, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing { i32 4, i32 2 }, %struct.rcar_du_output_routing { i32 1, i32 3 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 6, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7796_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a77965_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a77970_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 1, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a7799x_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 7, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 2, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 3 }, [56 x i8] zeroinitializer }, align 32
@rcar_du_r8a779a0_info = internal constant { %struct.rcar_du_device_info, [56 x i8] } { %struct.rcar_du_device_info { i32 3, i32 5, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 3, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rcar-du\00", [24 x i8] zeroinitializer }, align 32
@rcar_du_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_du_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @rcar_du_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @rcar_du_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.10, ptr @.str.19, ptr @.str.20, i32 19, ptr null, i32 0, ptr @rcar_du_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rcar_du_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 668, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize DRM/KMS (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcar_du_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_drv.c\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_du_probe._entry_ptr = internal global ptr @rcar_du_probe._entry, section ".printk_index", align 4
@rcar_du_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016[drm] Device %s probed\0A\00", [38 x i8] zeroinitializer }, align 32
@rcar_du_probe._entry_ptr.18 = internal global ptr @rcar_du_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Renesas R-Car Display Unit\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20130110\00", [23 x i8] zeroinitializer }, align 32
@rcar_du_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 544, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 545, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 546, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 547, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 548, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 549, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 550, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 551, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 552, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 553, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 557, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"rcar_du_platform_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 691, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"rcar_du_of_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 512, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7790_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 248, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"rzg1_du_r8a7743_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 38, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"rzg1_du_r8a7745_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 61, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"rzg1_du_r8a77470_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 83, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a774a1_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 110, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a774b1_info\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 140, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a774c0_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 170, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a774e1_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 197, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7779_info\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 227, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7791_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 279, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7792_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 303, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7794_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 323, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7795_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 346, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"rcar_du_r8a7796_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 380, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a77965_info\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 410, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a77970_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 440, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a7799x_info\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 465, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"rcar_du_r8a779a0_info\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 493, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 696, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"rcar_du_pm_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 603, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"rcar_du_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 568, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 667, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 680, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 577, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 578, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"rcar_du_fops\00", align 1
@___asan_gen_.154 = private constant [41 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_drv.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 566, i32 1 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_rcar_du_exit, ptr @__initcall__kmod_rcar_du_drm__318_708_rcar_du_init6, ptr @rcar_du_exit, ptr @rcar_du_probe._entry, ptr @rcar_du_probe._entry.16, ptr @rcar_du_probe._entry_ptr, ptr @rcar_du_probe._entry_ptr.18, ptr @rcar_du_output_name.names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rcar_du_platform_driver, ptr @rcar_du_of_table, ptr @rcar_du_r8a7790_info, ptr @rzg1_du_r8a7743_info, ptr @rzg1_du_r8a7745_info, ptr @rzg1_du_r8a77470_info, ptr @rcar_du_r8a774a1_info, ptr @rcar_du_r8a774b1_info, ptr @rcar_du_r8a774c0_info, ptr @rcar_du_r8a774e1_info, ptr @rcar_du_r8a7779_info, ptr @rcar_du_r8a7791_info, ptr @rcar_du_r8a7792_info, ptr @rcar_du_r8a7794_info, ptr @rcar_du_r8a7795_info, ptr @rcar_du_r8a7796_info, ptr @rcar_du_r8a77965_info, ptr @rcar_du_r8a77970_info, ptr @rcar_du_r8a7799x_info, ptr @rcar_du_r8a779a0_info, ptr @.str.10, ptr @rcar_du_pm_ops, ptr @rcar_du_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @rcar_du_fops], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_output_name.names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_of_table to i32), i32 4900, i32 6144, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7790_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg1_du_r8a7743_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg1_du_r8a7745_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg1_du_r8a77470_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a774a1_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a774b1_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a774c0_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a774e1_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7779_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7791_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7792_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7794_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7795_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7796_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a77965_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a77970_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7799x_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a779a0_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rcar_du_output_name(i32 noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %output)
  %cmp = icmp ugt i32 %output, 8
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [9 x ptr], ptr @rcar_du_output_name.names, i32 0, i32 %output
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str.9, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcar_du_of_init(ptr noundef nonnull @rcar_du_of_table) #8
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_du_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_du_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @rcar_du_of_init(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev, ptr noundef nonnull @rcar_du_driver, i32 noundef 22264, i32 noundef 12) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call, align 8
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.rcar_du_device, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %mmio, align 8
  %cmp.i68 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %sub = select i1 %tobool.i.not, i64 4294967295, i64 1099511627775
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %sub) #5
  %call20 = tail call i32 @rcar_du_modeset_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call20)
  %cmp23.not = icmp eq i32 %call20, -517
  br i1 %cmp23.not, label %if.then22.error_crit_edge, label %do.end

if.then22.error_crit_edge:                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call20) #8
  br label %error

if.end27:                                         ; preds = %if.end19
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %call, i32 0, i32 3
  %call28 = tail call i32 @drm_dev_register(ptr noundef %ddev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end34, label %if.end27.error_crit_edge

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

do.end34:                                         ; preds = %if.end27
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end34.dev_name.exit_crit_edge

do.end34.dev_name.exit_crit_edge:                 ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end34.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %do.end34.dev_name.exit_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i) #8
  tail call void @drm_fbdev_generic_setup(ptr noundef %ddev, i32 noundef 32) #5
  br label %cleanup

error:                                            ; preds = %if.end27.error_crit_edge, %do.end, %if.then22.error_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end ], [ -517, %if.then22.error_crit_edge ], [ %call28, %if.end27.error_crit_edge ]
  %ddev39 = getelementptr inbounds %struct.rcar_du_device, ptr %call, i32 0, i32 3
  tail call void @drm_kms_helper_poll_fini(ptr noundef %ddev39) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %dev_name.exit, %if.end13.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %5, %if.then10 ], [ %ret.0, %error ], [ 0, %dev_name.exit ], [ %call.i.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev1 = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  tail call void @drm_dev_unregister(ptr noundef %ddev1) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %ddev1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %ddev1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_shutdown(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  tail call void @drm_atomic_helper_shutdown(ptr noundef %ddev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_modeset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_pm_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %ddev) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_pm_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %ddev) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 545, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 546, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 547, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 548, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 549, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 550, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 551, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 552, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 553, i32 27}
!18 = !{ptr @rcar_du_output_name.names, !19, !"names", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 544, i32 28}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 557, i32 10}
!22 = !{ptr @__initcall__kmod_rcar_du_drm__318_708_rcar_du_init6, !23, !"__initcall__kmod_rcar_du_drm__318_708_rcar_du_init6", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 708, i32 1}
!24 = !{ptr @__exitcall_rcar_du_exit, !25, !"__exitcall_rcar_du_exit", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 714, i32 1}
!26 = !{ptr @__UNIQUE_ID_author319, !27, !"__UNIQUE_ID_author319", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 716, i32 1}
!28 = !{ptr @__UNIQUE_ID_description320, !29, !"__UNIQUE_ID_description320", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 717, i32 1}
!30 = !{ptr @__UNIQUE_ID_file321, !31, !"__UNIQUE_ID_file321", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 718, i32 1}
!32 = !{ptr @__UNIQUE_ID_license322, !31, !"__UNIQUE_ID_license322", i1 false, i1 false}
!33 = !{ptr @rcar_du_of_table, !34, !"rcar_du_of_table", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 512, i32 34}
!35 = !{ptr @rcar_du_r8a7790_info, !36, !"rcar_du_r8a7790_info", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 248, i32 41}
!37 = !{ptr @rzg1_du_r8a7743_info, !38, !"rzg1_du_r8a7743_info", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 38, i32 41}
!39 = !{ptr @rzg1_du_r8a7745_info, !40, !"rzg1_du_r8a7745_info", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 61, i32 41}
!41 = !{ptr @rzg1_du_r8a77470_info, !42, !"rzg1_du_r8a77470_info", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 83, i32 41}
!43 = !{ptr @rcar_du_r8a774a1_info, !44, !"rcar_du_r8a774a1_info", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 110, i32 41}
!45 = !{ptr @rcar_du_r8a774b1_info, !46, !"rcar_du_r8a774b1_info", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 140, i32 41}
!47 = !{ptr @rcar_du_r8a774c0_info, !48, !"rcar_du_r8a774c0_info", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 170, i32 41}
!49 = !{ptr @rcar_du_r8a774e1_info, !50, !"rcar_du_r8a774e1_info", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 197, i32 41}
!51 = !{ptr @rcar_du_r8a7779_info, !52, !"rcar_du_r8a7779_info", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 227, i32 41}
!53 = !{ptr @rcar_du_r8a7791_info, !54, !"rcar_du_r8a7791_info", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 279, i32 41}
!55 = !{ptr @rcar_du_r8a7792_info, !56, !"rcar_du_r8a7792_info", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 303, i32 41}
!57 = !{ptr @rcar_du_r8a7794_info, !58, !"rcar_du_r8a7794_info", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 323, i32 41}
!59 = !{ptr @rcar_du_r8a7795_info, !60, !"rcar_du_r8a7795_info", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 346, i32 41}
!61 = !{ptr @rcar_du_r8a7796_info, !62, !"rcar_du_r8a7796_info", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 380, i32 41}
!63 = !{ptr @rcar_du_r8a77965_info, !64, !"rcar_du_r8a77965_info", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 410, i32 41}
!65 = !{ptr @rcar_du_r8a77970_info, !66, !"rcar_du_r8a77970_info", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 440, i32 41}
!67 = !{ptr @rcar_du_r8a7799x_info, !68, !"rcar_du_r8a7799x_info", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 465, i32 41}
!69 = !{ptr @rcar_du_r8a779a0_info, !70, !"rcar_du_r8a779a0_info", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 493, i32 41}
!71 = !{ptr @.str.10, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 696, i32 11}
!73 = !{ptr @rcar_du_platform_driver, !74, !"rcar_du_platform_driver", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 691, i32 31}
!75 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 667, i32 4}
!77 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.13, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rcar_du_probe._entry, !76, !"_entry", i1 false, i1 false}
!82 = !{ptr @rcar_du_probe._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 680, i32 2}
!85 = !{ptr @rcar_du_probe._entry.16, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rcar_du_probe._entry_ptr.18, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 577, i32 12}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 578, i32 12}
!91 = !{ptr @rcar_du_driver, !92, !"rcar_du_driver", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 568, i32 32}
!93 = !{ptr @rcar_du_fops, !94, !"rcar_du_fops", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 566, i32 1}
!95 = !{ptr @rcar_du_pm_ops, !96, !"rcar_du_pm_ops", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_drv.c", i32 603, i32 32}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
