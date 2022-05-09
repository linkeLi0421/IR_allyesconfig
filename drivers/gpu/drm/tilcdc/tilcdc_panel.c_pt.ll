; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tilcdc/tilcdc_panel.c_pt.bc'
source_filename = "../drivers/gpu/drm/tilcdc/tilcdc_panel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tilcdc_module_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.panel_module = type { %struct.tilcdc_module, ptr, ptr, ptr, ptr }
%struct.tilcdc_module = type { ptr, %struct.list_head, ptr }
%struct.tilcdc_panel_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.panel_encoder = type { %struct.drm_encoder, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.panel_connector = type { %struct.drm_connector, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.tilcdc_drm_private = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.notifier_block, ptr, ptr, i32, [8 x ptr], i32, [8 x ptr], ptr, ptr, i8, i8, i8 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_timings = type { i32, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@panel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @panel_probe, ptr @panel_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @panel_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tilcdc-panel\00", [19 x i8] zeroinitializer }, align 32
@panel_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tilcdc,panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@panel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device-tree data is missing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"panel_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/tilcdc/tilcdc_panel.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr = internal global ptr @panel_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@panel_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request enable GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr.9 = internal global ptr @panel_probe._entry.7, section ".printk_index", align 4
@panel_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found enable GPIO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr.13 = internal global ptr @panel_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panel\00", [26 x i8] zeroinitializer }, align 32
@panel_module_ops = internal constant { %struct.tilcdc_module_ops, [24 x i8] } { %struct.tilcdc_module_ops { ptr @panel_modeset_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@panel_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pins are not configured\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr.18 = internal global ptr @panel_probe._entry.15, section ".printk_index", align 4
@panel_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not get panel timings\0A\00", [35 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr.21 = internal global ptr @panel_probe._entry.19, section ".printk_index", align 4
@panel_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get panel info\0A\00", [38 x i8] zeroinitializer }, align 32
@panel_probe._entry_ptr.24 = internal global ptr @panel_probe._entry.22, section ".printk_index", align 4
@panel_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @panel_encoder_dpms, ptr null, ptr null, ptr @panel_encoder_prepare, ptr @panel_encoder_commit, ptr @panel_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@panel_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @panel_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@panel_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @panel_connector_get_modes, ptr null, ptr null, ptr null, ptr @panel_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: no devicenode given\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_get_panel_info\00", [46 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry_ptr = internal global ptr @of_get_panel_info._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"panel-info\00", [21 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not find panel-info node\0A\00", [58 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry_ptr.31 = internal global ptr @of_get_panel_info._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ac-bias\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ac-bias-intrpt\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-burst-sz\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpp\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fdd\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync-edge\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync-ctrl\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"raster-order\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fifo-th\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tft-alt-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invert-pxl-clk\00", [17 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: error reading panel-info properties\0A\00", [53 x i8] zeroinitializer }, align 32
@of_get_panel_info._entry_ptr.45 = internal global ptr @of_get_panel_info._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"panel_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 398, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 402, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"panel_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 393, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 315, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 328, i32 63 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 332, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 337, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 342, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"panel_module_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 249, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 346, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 350, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 357, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"panel_encoder_helper_funcs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 78, i32 46 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"panel_connector_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 173, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant [29 x i8] c"panel_connector_helper_funcs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 181, i32 48 }
@___asan_gen_.128 = private unnamed_addr constant [36 x i8] c"../include/linux/pinctrl/consumer.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 209, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 265, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 269, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 271, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 279, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 280, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 281, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 282, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 283, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 284, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 285, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 286, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 287, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 290, i32 59 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 291, i32 59 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [41 x i8] c"../drivers/gpu/drm/tilcdc/tilcdc_panel.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 294, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @of_get_panel_info._entry, ptr @of_get_panel_info._entry.29, ptr @of_get_panel_info._entry.43, ptr @of_get_panel_info._entry_ptr, ptr @of_get_panel_info._entry_ptr.31, ptr @of_get_panel_info._entry_ptr.45, ptr @panel_probe._entry, ptr @panel_probe._entry.10, ptr @panel_probe._entry.15, ptr @panel_probe._entry.19, ptr @panel_probe._entry.22, ptr @panel_probe._entry.7, ptr @panel_probe._entry_ptr, ptr @panel_probe._entry_ptr.13, ptr @panel_probe._entry_ptr.18, ptr @panel_probe._entry_ptr.21, ptr @panel_probe._entry_ptr.24, ptr @panel_probe._entry_ptr.9, ptr @tilcdc_panel_fini, ptr @panel_driver, ptr @.str, ptr @panel_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @panel_module_ops, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @panel_encoder_helper_funcs, ptr @panel_connector_funcs, ptr @panel_connector_helper_funcs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_module_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_panel_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_panel_info._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_panel_info._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_panel_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tilcdc_panel_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_of_find_backlight(ptr noundef %dev) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %backlight12 = getelementptr inbounds %struct.panel_module, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %backlight12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %backlight12, align 4
  %call14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.panel_module, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %enable_gpio, align 4
  %cmp.i104 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %fail_backlight

if.end24:                                         ; preds = %if.end11
  %tobool26.not = icmp eq ptr %call14, null
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %do.end30

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end24.if.end32_crit_edge
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %platform_data, align 8
  tail call void @tilcdc_module_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @panel_module_ops) #9
  %call.i.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end32.devm_pinctrl_get_select_default.exit_crit_edge, label %if.end.i.i

if.end32.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit

if.end.i.i:                                       ; preds = %if.end32
  %call2.i.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i.i, ptr noundef nonnull @.str.25) #9
  %cmp.i1.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i) #9
  br label %devm_pinctrl_get_select_default.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i.i, ptr noundef %call2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge

if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i) #9
  %7 = inttoptr i32 %call7.i.i to ptr
  br label %devm_pinctrl_get_select_default.exit

devm_pinctrl_get_select_default.exit:             ; preds = %if.then8.i.i, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge, %if.then4.i.i, %if.end32.devm_pinctrl_get_select_default.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.then4.i.i ], [ %7, %if.then8.i.i ], [ %call.i.i, %if.end32.devm_pinctrl_get_select_default.exit_crit_edge ], [ %call.i.i, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge ]
  %cmp.i105 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end40, label %devm_pinctrl_get_select_default.exit.if.end42_crit_edge

devm_pinctrl_get_select_default.exit.if.end42_crit_edge: ; preds = %devm_pinctrl_get_select_default.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end40:                                         ; preds = %devm_pinctrl_get_select_default.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %devm_pinctrl_get_select_default.exit.if.end42_crit_edge
  %call43 = tail call ptr @of_get_display_timings(ptr noundef nonnull %1) #9
  %timings = getelementptr inbounds %struct.panel_module, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call43, ptr %timings, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %do.end49, label %if.end.i

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %fail_free

if.end.i:                                         ; preds = %if.end42
  %call1.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.28) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %of_get_panel_info.exit.thread, label %if.end9.i

of_get_panel_info.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27) #12
  br label %do.end58

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #13
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.of_get_panel_info.exit.thread111_crit_edge, label %if.end13.i

if.end9.i.of_get_panel_info.exit.thread111_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_get_panel_info.exit.thread111

if.end13.i:                                       ; preds = %if.end9.i
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 0) #9
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #9
  %ac_bias_intrpt.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i79.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.33, ptr noundef %ac_bias_intrpt.i, i32 noundef 1, i32 noundef 0) #9
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i79.i, i32 0) #9
  %or16.i = or i32 %11, %10
  %dma_burst_sz.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i80.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.34, ptr noundef %dma_burst_sz.i, i32 noundef 1, i32 noundef 0) #9
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i80.i, i32 0) #9
  %or18.i = or i32 %or16.i, %12
  %bpp.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i81.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.35, ptr noundef %bpp.i, i32 noundef 1, i32 noundef 0) #9
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i81.i, i32 0) #9
  %or20.i = or i32 %or18.i, %13
  %fdd.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i82.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.36, ptr noundef %fdd.i, i32 noundef 1, i32 noundef 0) #9
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i82.i, i32 0) #9
  %or22.i = or i32 %or20.i, %14
  %sync_edge.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i83.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.37, ptr noundef %sync_edge.i, i32 noundef 1, i32 noundef 0) #9
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i83.i, i32 0) #9
  %or24.i = or i32 %or22.i, %15
  %sync_ctrl.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i84.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.38, ptr noundef %sync_ctrl.i, i32 noundef 1, i32 noundef 0) #9
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i84.i, i32 0) #9
  %or26.i = or i32 %or24.i, %16
  %raster_order.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i85.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.39, ptr noundef %raster_order.i, i32 noundef 1, i32 noundef 0) #9
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i85.i, i32 0) #9
  %or28.i = or i32 %or26.i, %17
  %fifo_th.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 10
  %call.i.i86.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.40, ptr noundef %fifo_th.i, i32 noundef 1, i32 noundef 0) #9
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i86.i, i32 0) #9
  %or30.i = or i32 %or28.i, %18
  %call.i.i107 = tail call ptr @of_find_property(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.41, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i.i107, null
  %tft_alt_mode.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool.i.i to i8
  %19 = ptrtoint ptr %tft_alt_mode.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %tft_alt_mode.i, align 4
  %call.i87.i = tail call ptr @of_find_property(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.42, ptr noundef null) #9
  %tobool.i88.i = icmp ne ptr %call.i87.i, null
  %invert_pxl_clk.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %call7.i.i.i, i32 0, i32 6
  %frombool33.i = zext i1 %tobool.i88.i to i8
  %20 = ptrtoint ptr %invert_pxl_clk.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool33.i, ptr %invert_pxl_clk.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i)
  %tobool34.not.i = icmp eq i32 %or30.i, 0
  br i1 %tobool34.not.i, label %of_get_panel_info.exit, label %do.end38.i

do.end38.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.27) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %of_get_panel_info.exit.thread111

of_get_panel_info.exit.thread111:                 ; preds = %do.end38.i, %if.end9.i.of_get_panel_info.exit.thread111_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #9
  br label %do.end58

of_get_panel_info.exit:                           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #9
  %info = getelementptr inbounds %struct.panel_module, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %info, align 4
  br label %cleanup

do.end58:                                         ; preds = %of_get_panel_info.exit.thread111, %of_get_panel_info.exit.thread
  %info113 = getelementptr inbounds %struct.panel_module, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %info113 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %info113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  %23 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timings, align 4
  tail call void @display_timings_release(ptr noundef %24) #9
  br label %fail_free

fail_free:                                        ; preds = %do.end58, %do.end49
  tail call void @tilcdc_module_cleanup(ptr noundef nonnull %call.i) #9
  br label %fail_backlight

fail_backlight:                                   ; preds = %fail_free, %if.then17
  %ret.1 = phi i32 [ %5, %if.then17 ], [ -22, %fail_free ]
  %25 = ptrtoint ptr %backlight12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %backlight12, align 4
  %tobool63.not = icmp eq ptr %26, null
  br i1 %tobool63.not, label %fail_backlight.cleanup_crit_edge, label %if.then64

fail_backlight.cleanup_crit_edge:                 ; preds = %fail_backlight
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %fail_backlight
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.backlight_device, ptr %26, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev66) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %fail_backlight.cleanup_crit_edge, %of_get_panel_info.exit, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %if.then9 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %of_get_panel_info.exit ], [ %ret.1, %if.then64 ], [ %ret.1, %fail_backlight.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %backlight1 = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %backlight1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timings = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  tail call void @display_timings_release(ptr noundef %5) #9
  tail call void @tilcdc_module_cleanup(ptr noundef %1) #9
  %info = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  tail call void @kfree(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_module_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_display_timings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @display_timings_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_module_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_modeset_init(ptr noundef %mod, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 76, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mod2.i = getelementptr inbounds %struct.panel_encoder, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mod2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mod, ptr %mod2.i, align 4
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %possible_crtcs.i, align 4
  %call3.i = tail call i32 @drm_simple_encoder_init(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %fail.i, label %if.end

fail.i:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @panel_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %call.i.i26 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 1048, i32 noundef 3520) #9
  %tobool.not.i27 = icmp eq ptr %call.i.i26, null
  br i1 %tobool.not.i27, label %if.end.cleanup_crit_edge, label %if.end.i29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i29:                                       ; preds = %if.end
  %encoder2.i = getelementptr inbounds %struct.panel_connector, ptr %call.i.i26, i32 0, i32 1
  %9 = ptrtoint ptr %encoder2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %encoder2.i, align 8
  %mod3.i = getelementptr inbounds %struct.panel_connector, ptr %call.i.i26, i32 0, i32 2
  %10 = ptrtoint ptr %mod3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mod, ptr %mod3.i, align 4
  %call4.i = tail call i32 @drm_connector_init(ptr noundef %dev, ptr noundef nonnull %call.i.i26, ptr noundef nonnull @panel_connector_funcs, i32 noundef 7) #9
  %helper_private.i.i28 = getelementptr inbounds %struct.drm_connector, ptr %call.i.i26, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i.i28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @panel_connector_helper_funcs, ptr %helper_private.i.i28, align 4
  %interlace_allowed.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i26, i32 0, i32 12
  %12 = ptrtoint ptr %interlace_allowed.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %interlace_allowed.i, align 8
  %doublescan_allowed.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i26, i32 0, i32 13
  %13 = ptrtoint ptr %doublescan_allowed.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %doublescan_allowed.i, align 1
  %call5.i = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i.i26, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4, label %fail.i30

fail.i30:                                         ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_connector_unregister(ptr noundef nonnull %call.i.i26) #9
  tail call void @drm_connector_cleanup(ptr noundef nonnull %call.i.i26) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  %num_encoders = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %num_encoders to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_encoders, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %num_encoders, align 4
  %arrayidx = getelementptr %struct.tilcdc_drm_private, ptr %1, i32 0, i32 13, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %num_connectors = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_connectors, align 4
  %inc5 = add i32 %18, 1
  store i32 %inc5, ptr %num_connectors, align 4
  %arrayidx6 = getelementptr %struct.tilcdc_drm_private, ptr %1, i32 0, i32 15, i32 %18
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i26, ptr %arrayidx6, align 4
  %crtc = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc, align 4
  %22 = ptrtoint ptr %mod2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mod2.i, align 4
  %info = getelementptr inbounds %struct.panel_module, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  tail call void @tilcdc_crtc_set_panel_info(ptr noundef %21, ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %fail.i30, %if.end.cleanup_crit_edge, %fail.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %fail.i ], [ -12, %entry.cleanup_crit_edge ], [ -12, %fail.i30 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_crtc_set_panel_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_encoder_dpms(ptr nocapture noundef readonly %encoder, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mod = getelementptr inbounds %struct.panel_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod, align 4
  %backlight1 = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %backlight1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight1, align 4
  %enable_gpio = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %cond = select i1 %cmp, i32 0, i32 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %power, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #9
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then.backlight_update_status.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %10(ptr noundef nonnull %3) #9
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #9
  br label %if.end

if.end:                                           ; preds = %backlight_update_status.exit, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp5 = icmp eq i32 %mode, 0
  %cond6 = zext i1 %cmp5 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef %cond6) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_encoder_prepare(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mod.i = getelementptr inbounds %struct.panel_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod.i, align 4
  %backlight1.i = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %backlight1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight1.i, align 4
  %enable_gpio.i = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %power.i, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #9
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %10(ptr noundef nonnull %3) #9
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.then.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %backlight_update_status.exit.i, %entry.if.end.i_crit_edge
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.panel_encoder_dpms.exit_crit_edge, label %if.then4.i

if.end.i.panel_encoder_dpms.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panel_encoder_dpms.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %panel_encoder_dpms.exit

panel_encoder_dpms.exit:                          ; preds = %if.then4.i, %if.end.i.panel_encoder_dpms.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_encoder_commit(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mod.i = getelementptr inbounds %struct.panel_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod.i, align 4
  %backlight1.i = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %backlight1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight1.i, align 4
  %enable_gpio.i = getelementptr inbounds %struct.panel_module, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %power.i, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #9
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %10(ptr noundef nonnull %3) #9
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.then.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %backlight_update_status.exit.i, %entry.if.end.i_crit_edge
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.panel_encoder_dpms.exit_crit_edge, label %if.then4.i

if.end.i.panel_encoder_dpms.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panel_encoder_dpms.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #9
  br label %panel_encoder_dpms.exit

panel_encoder_dpms.exit:                          ; preds = %if.then4.i, %if.end.i.panel_encoder_dpms.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @panel_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_connector_destroy(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #9
  tail call void @drm_connector_cleanup(ptr noundef %connector) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mod = getelementptr inbounds %struct.panel_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod, align 4
  %timings2 = getelementptr inbounds %struct.panel_module, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %timings2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp34.not = icmp eq i32 %7, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %native_mode = getelementptr inbounds %struct.display_timings, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #9
  %8 = call ptr @memset(ptr %vm, i32 255, i32 40)
  %call = call i32 @videomode_from_timings(ptr noundef %5, ptr noundef nonnull %vm, i32 noundef %i.035) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %call3 = call ptr @drm_mode_create(ptr noundef %1) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup.thread_crit_edge, label %for.inc

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #9
  br label %for.end

for.inc:                                          ; preds = %if.end
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm, ptr noundef nonnull %call3) #9
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %type, align 2
  %10 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %native_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.035)
  %cmp7 = icmp eq i32 %11, %i.035
  %spec.store.select = select i1 %cmp7, i8 72, i8 64
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.store.select, ptr %type, align 2
  call void @drm_mode_set_name(ptr noundef nonnull %call3) #9
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #9
  %inc = add nuw i32 %i.035, 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %entry.for.end_crit_edge
  %i.033 = phi i32 [ %i.035, %cleanup.thread ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  ret i32 %i.033
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @panel_connector_best_encoder(ptr nocapture noundef readonly %connector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.panel_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videomode_from_timings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 402, i32 11}
!2 = !{ptr @panel_driver, !3, !"panel_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 398, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 315, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @panel_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @panel_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 328, i32 63}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 332, i32 3}
!16 = !{ptr @panel_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @panel_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 337, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @panel_probe._entry.10, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @panel_probe._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 342, i32 26}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 346, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @panel_probe._entry.15, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @panel_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 350, i32 3}
!32 = !{ptr @panel_probe._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @panel_probe._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 357, i32 3}
!36 = !{ptr @panel_probe._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @panel_probe._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @panel_module_ops, !39, !"panel_module_ops", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 249, i32 39}
!40 = !{ptr @panel_encoder_helper_funcs, !41, !"panel_encoder_helper_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 78, i32 46}
!42 = !{ptr @panel_connector_funcs, !43, !"panel_connector_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 173, i32 41}
!44 = !{ptr @panel_connector_helper_funcs, !45, !"panel_connector_helper_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 181, i32 48}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/pinctrl/consumer.h", i32 209, i32 38}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 265, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @of_get_panel_info._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @of_get_panel_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 269, i32 37}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 271, i32 3}
!57 = !{ptr @of_get_panel_info._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @of_get_panel_info._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 279, i32 39}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 280, i32 39}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 281, i32 39}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 282, i32 39}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 283, i32 39}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 284, i32 39}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 285, i32 39}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 286, i32 39}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 287, i32 39}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 290, i32 59}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 291, i32 59}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 294, i32 3}
!83 = !{ptr @of_get_panel_info._entry.43, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @of_get_panel_info._entry_ptr.45, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @panel_of_match, !86, !"panel_of_match", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_panel.c", i32 393, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
