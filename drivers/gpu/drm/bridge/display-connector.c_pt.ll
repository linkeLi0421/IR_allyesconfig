; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/display-connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/display-connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.display_connector = type { %struct.drm_bridge, ptr, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_display_connector__309_419_display_connector_driver_init6 = internal global ptr @display_connector_driver_init, section ".initcall6.init", align 4
@display_connector_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @display_connector_probe, ptr @display_connector_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @display_connector_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_display_connector_driver_exit = internal global ptr @display_connector_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [78 x i8] c"display_connector.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [55 x i8] c"display_connector.description=Display connector driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [64 x i8] c"display_connector.file=drivers/gpu/drm/bridge/display-connector\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [30 x i8] c"display_connector.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"display-connector\00", [46 x i8] zeroinitializer }, align 32
@display_connector_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"composite-video-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dvi-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hdmi-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"svideo-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vga-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dp-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@display_connector_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DVI connector with no type\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"display_connector_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/bridge/display-connector.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr = internal global ptr @display_connector_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@display_connector_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI connector with no type\0A\00", [35 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.11 = internal global ptr @display_connector_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@display_connector_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 245, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported HDMI connector type '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.19 = internal global ptr @display_connector_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@display_connector_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 275, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to retrieve HPD GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.24 = internal global ptr @display_connector_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPD\00", [28 x i8] zeroinitializer }, align 32
@display_connector_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 293, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to request HPD edge interrupt, falling back to polling\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.29 = internal global ptr @display_connector_probe._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@display_connector_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.4, ptr @.str.5, ptr @.str.32, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"display_connector\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No I2C bus specified, disabling EDID readout\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dp-pwr\00", [25 x i8] zeroinitializer }, align 32
@display_connector_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 334, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get DP PWR regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.36 = internal global ptr @display_connector_probe._entry.34, section ".printk_index", align 4
@display_connector_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 342, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable DP PWR regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@display_connector_probe._entry_ptr.39 = internal global ptr @display_connector_probe._entry.37, section ".printk_index", align 4
@display_connector_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @display_connector_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr @display_connector_get_output_bus_fmts, ptr @display_connector_get_input_bus_fmts, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr @display_connector_detect, ptr null, ptr @display_connector_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@display_connector_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.4, ptr @.str.5, ptr @.str.40, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Found %s display connector '%s' %s DDC bus and %s HPD GPIO (ops 0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"<unlabelled>\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.display_connector_hpd_irq = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@switch.table.display_connector_detect = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 10, i64 11]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"display_connector_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 411, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 415, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"display_connector_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 387, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 212, i32 53 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 213, i32 54 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 221, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 52 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 233, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 237, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 237, i32 53 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 238, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 238, i32 53 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 240, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 243, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 261, i32 45 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 270, i32 56 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 274, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 290, i32 7 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 292, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 304, i32 49 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 311, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 320, i32 58 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 334, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 342, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"display_connector_bridge_funcs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 171, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [46 x i8] c"../drivers/gpu/drm/bridge/display-connector.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 359, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [39 x i8] c"switch.table.display_connector_hpd_irq\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [38 x i8] c"switch.table.display_connector_detect\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_display_connector_driver_exit, ptr @__initcall__kmod_display_connector__309_419_display_connector_driver_init6, ptr @display_connector_driver_exit, ptr @display_connector_probe._entry, ptr @display_connector_probe._entry.17, ptr @display_connector_probe._entry.22, ptr @display_connector_probe._entry.26, ptr @display_connector_probe._entry.34, ptr @display_connector_probe._entry.37, ptr @display_connector_probe._entry.9, ptr @display_connector_probe._entry_ptr, ptr @display_connector_probe._entry_ptr.11, ptr @display_connector_probe._entry_ptr.19, ptr @display_connector_probe._entry_ptr.24, ptr @display_connector_probe._entry_ptr.29, ptr @display_connector_probe._entry_ptr.36, ptr @display_connector_probe._entry_ptr.39, ptr @display_connector_driver, ptr @.str, ptr @display_connector_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @display_connector_bridge_funcs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.display_connector_hpd_irq, ptr @switch.table.display_connector_detect], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_connector_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.display_connector_hpd_irq to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.display_connector_detect to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @display_connector_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @display_connector_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @display_connector_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @display_connector_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_connector_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %label = alloca ptr, align 4
  %hdmi_type = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label) #8
  %0 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %label, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup246_crit_edge, label %if.end

entry.cleanup246_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %2 = ptrtoint ptr %call2 to i32
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 11, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i353 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i353, null
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i354 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %tobool.i355 = icmp ne ptr %call.i354, null
  %call4.not = xor i1 %tobool.i, true
  %brmerge = select i1 %call4.not, i1 true, i1 %tobool.i355
  br i1 %brmerge, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %type12 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %type12, align 4
  br label %sw.epilog.thread

if.else:                                          ; preds = %sw.bb
  %call7.not = xor i1 %tobool.i355, true
  %brmerge340 = select i1 %tobool.i, i1 true, i1 %call7.not
  br i1 %brmerge340, label %if.else19, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %type18 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type18, align 4
  br label %sw.epilog.thread

if.else19:                                        ; preds = %if.else
  %brmerge343 = select i1 %call4.not, i1 true, i1 %call7.not
  br i1 %brmerge343, label %do.end, label %if.then23

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  %type25 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type25, align 4
  br label %sw.epilog.thread

do.end:                                           ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup246

sw.bb32:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdmi_type) #8
  %11 = ptrtoint ptr %hdmi_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %hdmi_type, align 4, !annotation !96
  %of_node34 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node34, align 8
  %call35 = call i32 @of_property_read_string(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull %hdmi_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %do.end39, label %if.end41

do.end39:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdmi_type) #8
  br label %cleanup246

if.end41:                                         ; preds = %sw.bb32
  %14 = ptrtoint ptr %hdmi_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi_type, align 4
  %call42 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.cleanup68_crit_edge, label %lor.lhs.false

if.end41.cleanup68_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

lor.lhs.false:                                    ; preds = %if.end41
  %call44 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false.cleanup68_crit_edge, label %lor.lhs.false46

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %call47 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false46.cleanup68_crit_edge, label %lor.lhs.false49

lor.lhs.false46.cleanup68_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %call50 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false49.cleanup68_crit_edge, label %if.else55

lor.lhs.false49.cleanup68_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.else55:                                        ; preds = %lor.lhs.false49
  %call56 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else55.cleanup68_crit_edge, label %do.end64

if.else55.cleanup68_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

do.end64:                                         ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdmi_type) #8
  br label %cleanup246

cleanup68:                                        ; preds = %if.else55.cleanup68_crit_edge, %lor.lhs.false49.cleanup68_crit_edge, %lor.lhs.false46.cleanup68_crit_edge, %lor.lhs.false.cleanup68_crit_edge, %if.end41.cleanup68_crit_edge
  %.sink = phi i32 [ 11, %lor.lhs.false49.cleanup68_crit_edge ], [ 11, %lor.lhs.false46.cleanup68_crit_edge ], [ 11, %lor.lhs.false.cleanup68_crit_edge ], [ 11, %if.end41.cleanup68_crit_edge ], [ 12, %if.else55.cleanup68_crit_edge ]
  %type54 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %type54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdmi_type) #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %cleanup68, %if.then23, %if.then16, %if.then11
  %interlace_allowed359 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %interlace_allowed359 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %interlace_allowed359, align 4
  %of_node74360 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node74360 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node74360, align 8
  %call75361 = call i32 @of_property_read_string(ptr noundef %19, ptr noundef nonnull @.str.20, ptr noundef nonnull %label) #8
  br label %if.then81

sw.epilog:                                        ; preds = %if.end
  %type71 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %2, ptr %type71, align 4
  %interlace_allowed = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %interlace_allowed, align 4
  %of_node74 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node74, align 8
  %call75 = call i32 @of_property_read_string(ptr noundef %23, ptr noundef nonnull @.str.20, ptr noundef nonnull %label) #8
  %cond = icmp eq ptr %call2, inttoptr (i32 10 to ptr)
  br i1 %cond, label %sw.epilog.if.then81_crit_edge, label %sw.epilog.if.end103_crit_edge

sw.epilog.if.end103_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

sw.epilog.if.then81_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

if.then81:                                        ; preds = %sw.epilog.if.then81_crit_edge, %sw.epilog.thread
  %of_node74363 = phi ptr [ %of_node74360, %sw.epilog.thread ], [ %of_node74, %sw.epilog.if.then81_crit_edge ]
  %call83 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 1) #8
  %hpd_gpio = getelementptr inbounds %struct.display_connector, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call83, ptr %hpd_gpio, align 4
  %cmp.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then86, label %if.end98

if.then86:                                        ; preds = %if.then81
  %cmp89.not = icmp eq ptr %call83, inttoptr (i32 -517 to ptr)
  br i1 %cmp89.not, label %if.then86.if.end95_crit_edge, label %do.end93

if.then86.if.end95_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

do.end93:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %if.end95

if.end95:                                         ; preds = %do.end93, %if.then86.if.end95_crit_edge
  %25 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hpd_gpio, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup246

if.end98:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = call i32 @gpiod_to_irq(ptr noundef %call83) #8
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %sw.epilog.if.end103_crit_edge
  %.sink373 = phi i32 [ %call100, %if.end98 ], [ -22, %sw.epilog.if.end103_crit_edge ]
  %of_node74362 = phi ptr [ %of_node74363, %if.end98 ], [ %of_node74, %sw.epilog.if.end103_crit_edge ]
  %hpd_irq102 = getelementptr inbounds %struct.display_connector, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %hpd_irq102 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink373, ptr %hpd_irq102, align 4
  %hpd_irq104 = getelementptr inbounds %struct.display_connector, ptr %call.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.sink373)
  %cmp105 = icmp sgt i32 %.sink373, -1
  br i1 %cmp105, label %if.then106, label %if.end103.if.end118_crit_edge

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then106:                                       ; preds = %if.end103
  %call109 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %.sink373, ptr noundef null, ptr noundef nonnull @display_connector_hpd_irq, i32 noundef 8195, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then106.if.end118_crit_edge, label %do.end114

if.then106.if.end118_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

do.end114:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  %29 = ptrtoint ptr %hpd_irq104 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -22, ptr %hpd_irq104, align 4
  br label %if.end118

if.end118:                                        ; preds = %do.end114, %if.then106.if.end118_crit_edge, %if.end103.if.end118_crit_edge
  %30 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %2, label %if.end118.if.end189_crit_edge [
    i32 11, label %if.end118.if.then124_crit_edge
    i32 2, label %if.end118.if.then124_crit_edge374
    i32 1, label %if.end118.if.then124_crit_edge375
    i32 10, label %if.end118.if.then154_crit_edge
  ]

if.end118.if.then154_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154

if.end118.if.then124_crit_edge375:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124

if.end118.if.then124_crit_edge374:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124

if.end118.if.then124_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124

if.end118.if.end189_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then124:                                       ; preds = %if.end118.if.then124_crit_edge, %if.end118.if.then124_crit_edge374, %if.end118.if.then124_crit_edge375
  %31 = ptrtoint ptr %of_node74362 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node74362, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %33 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i356 = call i32 @__of_parse_phandle_with_args(ptr noundef %32, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool.not.i = icmp eq i32 %call.i356, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.body138

of_parse_phandle.exit:                            ; preds = %if.then124
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool128.not = icmp eq ptr %35, null
  br i1 %tobool128.not, label %of_parse_phandle.exit.do.body138_crit_edge, label %if.then129

of_parse_phandle.exit.do.body138_crit_edge:       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

if.then129:                                       ; preds = %of_parse_phandle.exit
  %call130 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %35) #8
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 12
  %36 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call130, ptr %ddc, align 4
  call void @of_node_put(ptr noundef nonnull %35) #8
  %37 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddc, align 4
  %tobool134.not = icmp eq ptr %38, null
  br i1 %tobool134.not, label %if.then129.cleanup246_crit_edge, label %if.then129.if.end152_crit_edge

if.then129.if.end152_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then129.cleanup246_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

do.body138:                                       ; preds = %of_parse_phandle.exit.do.body138_crit_edge, %of_parse_phandle.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_connector_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@display_connector_probe, %if.then144)) #8
          to label %if.end152 [label %if.then144], !srcloc !97

if.then144:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_connector_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.32) #8
  br label %if.end152

if.end152:                                        ; preds = %if.then144, %do.body138, %if.then129.if.end152_crit_edge
  %cmp153 = icmp eq ptr %call2, inttoptr (i32 10 to ptr)
  br i1 %cmp153, label %if.end152.if.then154_crit_edge, label %if.end152.if.end189_crit_edge

if.end152.if.end189_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.end152.if.then154_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154

if.then154:                                       ; preds = %if.end152.if.then154_crit_edge, %if.end118.if.then154_crit_edge
  %call157 = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.33) #8
  %dp_pwr = getelementptr inbounds %struct.display_connector, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %dp_pwr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call157, ptr %dp_pwr, align 4
  %cmp.i358 = icmp ugt ptr %call157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358, label %if.then160, label %if.end172

if.then160:                                       ; preds = %if.then154
  %40 = ptrtoint ptr %call157 to i32
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %40, label %do.end169 [
    i32 -19, label %if.end172.thread
    i32 -517, label %if.then160.cleanup246_crit_edge
  ]

if.then160.cleanup246_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end172.thread:                                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dp_pwr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %dp_pwr, align 4
  br label %if.end189

do.end169:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %40) #11
  br label %cleanup246

if.end172:                                        ; preds = %if.then154
  %tobool174.not = icmp eq ptr %call157, null
  br i1 %tobool174.not, label %if.end172.if.end189_crit_edge, label %if.then175

if.end172.if.end189_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then175:                                       ; preds = %if.end172
  %call177 = call i32 @regulator_enable(ptr noundef nonnull %call157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then175.if.end189_crit_edge, label %do.end182

if.then175.if.end189_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.end182:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call177) #11
  br label %cleanup246

if.end189:                                        ; preds = %if.then175.if.end189_crit_edge, %if.end172.if.end189_crit_edge, %if.end172.thread, %if.end152.if.end189_crit_edge, %if.end118.if.end189_crit_edge
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @display_connector_bridge_funcs, ptr %funcs, align 4
  %44 = ptrtoint ptr %of_node74362 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node74362, align 8
  %of_node194 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %of_node194 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %of_node194, align 4
  %ddc196 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 12
  %47 = ptrtoint ptr %ddc196 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ddc196, align 4
  %tobool197.not = icmp eq ptr %48, null
  br i1 %tobool197.not, label %if.end189.if.end200_crit_edge, label %if.then198

if.end189.if.end200_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.then198:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ops, align 4
  %or = or i32 %50, 3
  store i32 %or, ptr %ops, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end189.if.end200_crit_edge
  %hpd_gpio201 = getelementptr inbounds %struct.display_connector, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %hpd_gpio201 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hpd_gpio201, align 4
  %tobool202.not = icmp eq ptr %52, null
  br i1 %tobool202.not, label %if.end200.if.end207_crit_edge, label %if.then203

if.end200.if.end207_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  %ops205 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %53 = ptrtoint ptr %ops205 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ops205, align 4
  %or206 = or i32 %54, 1
  store i32 %or206, ptr %ops205, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end200.if.end207_crit_edge
  %55 = ptrtoint ptr %hpd_irq104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hpd_irq104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp209 = icmp sgt i32 %56, -1
  br i1 %cmp209, label %if.then210, label %if.end207.do.body215_crit_edge

if.end207.do.body215_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body215

if.then210:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  %ops212 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %57 = ptrtoint ptr %ops212 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ops212, align 4
  %or213 = or i32 %58, 4
  store i32 %or213, ptr %ops212, align 4
  br label %do.body215

do.body215:                                       ; preds = %if.then210, %if.end207.do.body215_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_connector_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@display_connector_probe, %if.then227)) #8
          to label %do.end244 [label %if.then227], !srcloc !97

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #10
  %type230 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %type230 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type230, align 4
  %call231 = call ptr @drm_get_connector_type_name(i32 noundef %60) #8
  %61 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %label, align 4
  %tobool232.not = icmp eq ptr %62, null
  %spec.select = select i1 %tobool232.not, ptr @.str.41, ptr %62
  %63 = ptrtoint ptr %ddc196 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ddc196, align 4
  %tobool235.not = icmp eq ptr %64, null
  %cond236 = select i1 %tobool235.not, ptr @.str.43, ptr @.str.42
  %65 = ptrtoint ptr %hpd_gpio201 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hpd_gpio201, align 4
  %tobool238.not = icmp eq ptr %66, null
  %cond239 = select i1 %tobool238.not, ptr @.str.43, ptr @.str.42
  %ops241 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %ops241 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ops241, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_connector_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef %call231, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond236, ptr noundef nonnull %cond239, i32 noundef %68) #8
  br label %do.end244

do.end244:                                        ; preds = %if.then227, %do.body215
  call void @drm_bridge_add(ptr noundef nonnull %call.i) #8
  br label %cleanup246

cleanup246:                                       ; preds = %do.end244, %do.end182, %do.end169, %if.then160.cleanup246_crit_edge, %if.then129.cleanup246_crit_edge, %if.end95, %do.end64, %do.end39, %do.end, %entry.cleanup246_crit_edge
  %retval.6 = phi i32 [ %27, %if.end95 ], [ 0, %do.end244 ], [ -12, %entry.cleanup246_crit_edge ], [ -22, %do.end ], [ -22, %do.end64 ], [ -22, %do.end39 ], [ -517, %if.then129.cleanup246_crit_edge ], [ %call177, %do.end182 ], [ %40, %do.end169 ], [ %40, %if.then160.cleanup246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label) #8
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_connector_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dp_pwr = getelementptr inbounds %struct.display_connector, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dp_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp_pwr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_bridge_remove(ptr noundef %1) #8
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_put_adapter(ptr noundef %5) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_connector_hpd_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio.i = getelementptr inbounds %struct.display_connector, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %..i = select i1 %tobool3.not.i, i32 2, i32 1
  br label %display_connector_detect.exit

if.end.i:                                         ; preds = %entry
  %ddc.i = getelementptr inbounds %struct.drm_bridge, ptr %arg, i32 0, i32 12
  %2 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc.i, align 4
  %tobool6.not.i = icmp eq ptr %3, null
  br i1 %tobool6.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call9.i = tail call zeroext i1 @drm_probe_ddc(ptr noundef nonnull %3) #8
  br i1 %call9.i, label %land.lhs.true.i.display_connector_detect.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i.display_connector_detect.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %display_connector_detect.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %type.i = getelementptr inbounds %struct.drm_bridge, ptr %arg, i32 0, i32 10
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 11
  br i1 %6, label %switch.lookup, label %if.end11.i.display_connector_detect.exit_crit_edge

if.end11.i.display_connector_detect.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %display_connector_detect.exit

switch.lookup:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.display_connector_hpd_irq, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %display_connector_detect.exit

display_connector_detect.exit:                    ; preds = %switch.lookup, %if.end11.i.display_connector_detect.exit_crit_edge, %land.lhs.true.i.display_connector_detect.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %..i, %if.then.i ], [ 1, %land.lhs.true.i.display_connector_detect.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 3, %if.end11.i.display_connector_detect.exit_crit_edge ]
  tail call void @drm_bridge_hpd_notify(ptr noundef %arg, i32 noundef %retval.0.i) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_type_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_connector_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.display_connector, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool3.not, i32 2, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 12
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call9 = tail call zeroext i1 @drm_probe_ddc(ptr noundef nonnull %3) #8
  br i1 %call9, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %type = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 10
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 11
  br i1 %6, label %switch.lookup, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.display_connector_detect, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ 3, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_probe_ddc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @display_connector_attach(ptr nocapture noundef readnone %bridge, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @display_connector_get_output_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr noundef %crtc_state, ptr noundef %conn_state, ptr noundef %num_output_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %bridge_chain.i
  br i1 %cmp.i.not.i, label %entry.if.then_crit_edge, label %drm_bridge_get_prev_bridge.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

drm_bridge_get_prev_bridge.exit:                  ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -132
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %drm_bridge_get_prev_bridge.exit.if.then_crit_edge, label %lor.lhs.false

drm_bridge_get_prev_bridge.exit.if.then_crit_edge: ; preds = %drm_bridge_get_prev_bridge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %drm_bridge_get_prev_bridge.exit
  %funcs = getelementptr i8, ptr %3, i32 24
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %atomic_get_output_bus_fmts = getelementptr inbounds %struct.drm_bridge_funcs, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %atomic_get_output_bus_fmts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atomic_get_output_bus_fmts, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end15

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %drm_bridge_get_prev_bridge.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn_state, align 4
  %10 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_output_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #13
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then.cleanup20_crit_edge, label %if.end

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end:                                           ; preds = %if.then
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 6
  %14 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_formats, align 8
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %land.lhs.true.if.end13_crit_edge, label %if.then8

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %storemerge = phi i32 [ %17, %if.then8 ], [ 1, %land.lhs.true.if.end13_crit_edge ], [ 1, %if.end.if.end13_crit_edge ]
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %call7.i, align 8
  br label %cleanup20

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call16 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %20, ptr noundef nonnull %add.ptr.i) #8
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs, align 4
  %atomic_get_output_bus_fmts18 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %atomic_get_output_bus_fmts18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atomic_get_output_bus_fmts18, align 4
  %call19 = tail call ptr %24(ptr noundef nonnull %add.ptr.i, ptr noundef %call16, ptr noundef %crtc_state, ptr noundef %conn_state, ptr noundef %num_output_fmts) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end15, %if.end13, %if.then.cleanup20_crit_edge
  %retval.1 = phi ptr [ %call19, %if.end15 ], [ %call7.i, %if.end13 ], [ null, %if.then.cleanup20_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @display_connector_get_input_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr noundef %crtc_state, ptr noundef %conn_state, i32 noundef %output_fmt, ptr noundef %num_input_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %bridge_chain.i
  br i1 %cmp.i.not.i, label %entry.if.then_crit_edge, label %drm_bridge_get_prev_bridge.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

drm_bridge_get_prev_bridge.exit:                  ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -132
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %drm_bridge_get_prev_bridge.exit.if.then_crit_edge, label %lor.lhs.false

drm_bridge_get_prev_bridge.exit.if.then_crit_edge: ; preds = %drm_bridge_get_prev_bridge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %drm_bridge_get_prev_bridge.exit
  %funcs = getelementptr i8, ptr %3, i32 24
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %atomic_get_input_bus_fmts = getelementptr inbounds %struct.drm_bridge_funcs, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %atomic_get_input_bus_fmts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atomic_get_input_bus_fmts, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %drm_bridge_get_prev_bridge.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #13
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then.cleanup10_crit_edge, label %if.end

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup10

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call7.i, align 8
  br label %cleanup10

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %call6 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %12, ptr noundef nonnull %add.ptr.i) #8
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %atomic_get_input_bus_fmts8 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %atomic_get_input_bus_fmts8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %atomic_get_input_bus_fmts8, align 4
  %call9 = tail call ptr %16(ptr noundef nonnull %add.ptr.i, ptr noundef %call6, ptr noundef %crtc_state, ptr noundef %conn_state, i32 noundef %output_fmt, ptr noundef %num_input_fmts) #8
  br label %cleanup10

cleanup10:                                        ; preds = %if.end5, %if.end, %if.then.cleanup10_crit_edge
  %retval.1 = phi ptr [ %call9, %if.end5 ], [ %call7.i, %if.end ], [ null, %if.then.cleanup10_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @display_connector_get_edid(ptr nocapture noundef readonly %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 12
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call2 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %1) #8
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_display_connector__309_419_display_connector_driver_init6, !1, !"__initcall__kmod_display_connector__309_419_display_connector_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 419, i32 1}
!2 = !{ptr @__exitcall_display_connector_driver_exit, !1, !"__exitcall_display_connector_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 421, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 422, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 415, i32 12}
!12 = !{ptr @display_connector_driver, !13, !"display_connector_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 411, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 212, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 213, i32 54}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 221, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @display_connector_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @display_connector_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 230, i32 52}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 233, i32 4}
!30 = !{ptr @display_connector_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @display_connector_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 237, i32 26}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 237, i32 53}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 238, i32 26}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 238, i32 53}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 240, i32 33}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 243, i32 4}
!44 = !{ptr @display_connector_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @display_connector_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 261, i32 45}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 270, i32 56}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 274, i32 5}
!52 = !{ptr @display_connector_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @display_connector_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 290, i32 7}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 292, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @display_connector_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @display_connector_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 304, i32 49}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 311, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @display_connector_probe.__UNIQUE_ID_ddebug307, !64, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 320, i32 58}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 334, i32 5}
!71 = !{ptr @display_connector_probe._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @display_connector_probe._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 342, i32 5}
!75 = !{ptr @display_connector_probe._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @display_connector_probe._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 359, i32 2}
!79 = !{ptr @display_connector_probe.__UNIQUE_ID_ddebug308, !78, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!80 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @display_connector_bridge_funcs, !84, !"display_connector_bridge_funcs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 171, i32 38}
!85 = !{ptr @display_connector_match, !86, !"display_connector_match", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/display-connector.c", i32 387, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i64 2148177593, i64 2148177598, i64 2148177611, i64 2148177655, i64 2148177689, i64 2148177710}
