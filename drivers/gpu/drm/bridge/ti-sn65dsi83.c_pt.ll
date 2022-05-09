; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/ti-sn65dsi83.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/ti-sn65dsi83.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sn65dsi83 = type { %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_ti_sn65dsi83__311_730_sn65dsi83_driver_init6 = internal global ptr @sn65dsi83_driver_init, section ".initcall6.init", align 4
@sn65dsi83_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sn65dsi83_probe, ptr @sn65dsi83_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sn65dsi83_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sn65dsi83_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sn65dsi83_driver_exit = internal global ptr @sn65dsi83_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [48 x i8] c"ti_sn65dsi83.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [64 x i8] c"ti_sn65dsi83.description=TI SN65DSI83 DSI to LVDS bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [54 x i8] c"ti_sn65dsi83.file=drivers/gpu/drm/bridge/ti-sn65dsi83\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [28 x i8] c"ti_sn65dsi83.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sn65dsi83\00", [22 x i8] zeroinitializer }, align 32
@sn65dsi83_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sn65dsi83\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sn65dsi84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sn65dsi83_id = internal global { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ti,sn65dsi83\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ti,sn65dsi84\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sn65dsi83_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sn65dsi83_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 229, ptr @sn65dsi83_writeable_table, ptr @sn65dsi83_readable_table, ptr @sn65dsi83_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ti_sn65dsi83:675:(&sn65dsi83_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@sn65dsi83_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @sn65dsi83_attach, ptr @sn65dsi83_detach, ptr @sn65dsi83_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sn65dsi83_atomic_enable, ptr @sn65dsi83_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @sn65dsi83_atomic_get_input_bus_fmts, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@sn65dsi83_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sn65dsi83_writeable_ranges, i32 16, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sn65dsi83_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sn65dsi83_readable_ranges, i32 17, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sn65dsi83_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sn65dsi83_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sn65dsi83_writeable_ranges = internal constant { [16 x %struct.regmap_range], [32 x i8] } { [16 x %struct.regmap_range] [%struct.regmap_range { i32 9, i32 11 }, %struct.regmap_range { i32 13, i32 13 }, %struct.regmap_range { i32 16, i32 18 }, %struct.regmap_range { i32 24, i32 27 }, %struct.regmap_range { i32 32, i32 33 }, %struct.regmap_range { i32 36, i32 37 }, %struct.regmap_range { i32 40, i32 41 }, %struct.regmap_range { i32 44, i32 45 }, %struct.regmap_range { i32 48, i32 49 }, %struct.regmap_range { i32 52, i32 52 }, %struct.regmap_range { i32 54, i32 54 }, %struct.regmap_range { i32 56, i32 56 }, %struct.regmap_range { i32 58, i32 58 }, %struct.regmap_range { i32 60, i32 60 }, %struct.regmap_range { i32 224, i32 225 }, %struct.regmap_range { i32 229, i32 229 }], [32 x i8] zeroinitializer }, align 32
@sn65dsi83_readable_ranges = internal constant { [17 x %struct.regmap_range], [56 x i8] } { [17 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 8 }, %struct.regmap_range { i32 10, i32 11 }, %struct.regmap_range { i32 13, i32 13 }, %struct.regmap_range { i32 16, i32 18 }, %struct.regmap_range { i32 24, i32 27 }, %struct.regmap_range { i32 32, i32 33 }, %struct.regmap_range { i32 36, i32 37 }, %struct.regmap_range { i32 40, i32 41 }, %struct.regmap_range { i32 44, i32 45 }, %struct.regmap_range { i32 48, i32 49 }, %struct.regmap_range { i32 52, i32 52 }, %struct.regmap_range { i32 54, i32 54 }, %struct.regmap_range { i32 56, i32 56 }, %struct.regmap_range { i32 58, i32 58 }, %struct.regmap_range { i32 60, i32 60 }, %struct.regmap_range { i32 224, i32 225 }, %struct.regmap_range { i32 229, i32 229 }], [56 x i8] zeroinitializer }, align 32
@sn65dsi83_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 9, i32 9 }, %struct.regmap_range { i32 10, i32 10 }, %struct.regmap_range { i32 229, i32 229 }], [40 x i8] zeroinitializer }, align 32
@sn65dsi83_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Unsupported LVDS bus format 0x%04x, please check output bridge driver. Falling back to SPWG24.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sn65dsi83_atomic_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/bridge/ti-sn65dsi83.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sn65dsi83_atomic_enable._entry_ptr = internal global ptr @sn65dsi83_atomic_enable._entry, section ".printk_index", align 4
@sn65dsi83_atomic_enable._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 471, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to lock PLL, ret=%i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sn65dsi83_atomic_enable._entry_ptr.12 = internal global ptr @sn65dsi83_atomic_enable._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.sn65dsi83_host_attach.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"sn65dsi83\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@sn65dsi83_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 619, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sn65dsi83_host_attach\00", [42 x i8] zeroinitializer }, align 32
@sn65dsi83_host_attach._entry_ptr = internal global ptr @sn65dsi83_host_attach._entry, section ".printk_index", align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@sn65dsi83_host_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.6, i32 636, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to attach dsi to host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sn65dsi83_host_attach._entry_ptr.18 = internal global ptr @sn65dsi83_host_attach._entry.16, section ".printk_index", align 4
@switch.table.sn65dsi83_atomic_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.sn65dsi83_atomic_enable.19 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"sn65dsi83_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 721, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 726, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"sn65dsi83_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 714, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"sn65dsi83_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 707, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 665, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"sn65dsi83_regmap_config\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 229, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 675, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"sn65dsi83_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 537, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 559, i32 57 }
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"sn65dsi83_writeable_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 213, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"sn65dsi83_readable_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 180, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"sn65dsi83_volatile_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 224, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"sn65dsi83_writeable_ranges\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 185, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"sn65dsi83_readable_ranges\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 151, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"sn65dsi83_volatile_ranges\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 218, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 368, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 471, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 619, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 626, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [41 x i8] c"../drivers/gpu/drm/bridge/ti-sn65dsi83.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 636, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [37 x i8] c"switch.table.sn65dsi83_atomic_enable\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [40 x i8] c"switch.table.sn65dsi83_atomic_enable.19\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_sn65dsi83_driver_exit, ptr @__initcall__kmod_ti_sn65dsi83__311_730_sn65dsi83_driver_init6, ptr @sn65dsi83_atomic_enable._entry, ptr @sn65dsi83_atomic_enable._entry.9, ptr @sn65dsi83_atomic_enable._entry_ptr, ptr @sn65dsi83_atomic_enable._entry_ptr.12, ptr @sn65dsi83_driver_exit, ptr @sn65dsi83_host_attach._entry, ptr @sn65dsi83_host_attach._entry.16, ptr @sn65dsi83_host_attach._entry_ptr, ptr @sn65dsi83_host_attach._entry_ptr.18, ptr @sn65dsi83_driver, ptr @.str, ptr @sn65dsi83_match_table, ptr @sn65dsi83_id, ptr @.str.1, ptr @sn65dsi83_probe._key, ptr @sn65dsi83_regmap_config, ptr @.str.2, ptr @sn65dsi83_funcs, ptr @.str.3, ptr @sn65dsi83_writeable_table, ptr @sn65dsi83_readable_table, ptr @sn65dsi83_volatile_table, ptr @sn65dsi83_writeable_ranges, ptr @sn65dsi83_readable_ranges, ptr @sn65dsi83_volatile_ranges, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @switch.table.sn65dsi83_atomic_enable, ptr @switch.table.sn65dsi83_atomic_enable.19], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_writeable_ranges to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_readable_ranges to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_atomic_enable._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn65dsi83_host_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sn65dsi83_atomic_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sn65dsi83_atomic_enable.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sn65dsi83_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sn65dsi83_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sn65dsi83_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @sn65dsi83_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sn65dsi83_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %info.i = alloca %struct.mipi_dsi_device_info, align 4
  %panel_bridge.i = alloca ptr, align 4
  %panel.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 312, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %3 = ptrtoint ptr %call5 to i32
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %model.0 = phi i32 [ %3, %if.then4 ], [ %5, %if.else ]
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call8 = tail call ptr @devm_gpiod_get(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel_bridge.i) #9
  %10 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel_bridge.i, align 4, !annotation !74
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #9
  %13 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !74
  %of_node.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i64 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %15, i32 noundef 0, i32 noundef 0) #9
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %call.i64, ptr noundef nonnull @.str.3, i32 noundef 4) #9
  %dsi_lanes.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i.i, ptr %dsi_lanes.i, align 4
  %call3.i = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %call.i64) #9
  %host_node.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %host_node.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %host_node.i, align 4
  tail call void @of_node_put(ptr noundef %call.i64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %18 = icmp ugt i32 %call.i.i, 4
  br i1 %18, label %if.end14.sn65dsi83_parse_dt.exit.thread_crit_edge, label %if.end.i

if.end14.sn65dsi83_parse_dt.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_node.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i.sn65dsi83_parse_dt.exit.thread_crit_edge, label %if.end9.i

if.end.i.sn65dsi83_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_parse_dt.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %lvds_dual_link.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %lvds_dual_link.i, align 4
  %lvds_dual_link_even_odd_swap.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %lvds_dual_link_even_odd_swap.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %lvds_dual_link_even_odd_swap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %model.0)
  %cmp10.not.i = icmp eq i32 %model.0, 0
  br i1 %cmp10.not.i, label %if.end9.i.if.end27.i_crit_edge, label %if.then11.i

if.end9.i.if.end27.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then11.i:                                      ; preds = %if.end9.i
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call13.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %24, i32 noundef 2) #9
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call15.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %26, i32 noundef 3) #9
  %call16.i = tail call i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef %call13.i, ptr noundef %call15.i) #9
  tail call void @of_node_put(ptr noundef %call13.i) #9
  tail call void @of_node_put(ptr noundef %call15.i) #9
  %27 = zext i32 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16.i, label %if.then11.i.if.end27.i_crit_edge [
    i32 1, label %if.then11.i.if.end27.sink.split.i_crit_edge
    i32 0, label %if.then22.i
  ]

if.then11.i.if.end27.sink.split.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split.i

if.then11.i.if.end27.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.then22.i, %if.then11.i.if.end27.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then22.i ], [ 0, %if.then11.i.if.end27.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %lvds_dual_link.i, align 4
  %29 = ptrtoint ptr %lvds_dual_link_even_odd_swap.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %lvds_dual_link_even_odd_swap.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.sink.split.i, %if.then11.i.if.end27.i_crit_edge, %if.end9.i.if.end27.i_crit_edge
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call29.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %31, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef nonnull %panel_bridge.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end27.i.sn65dsi83_parse_dt.exit.thread_crit_edge, label %if.end32.i

if.end27.i.sn65dsi83_parse_dt.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_parse_dt.exit.thread

if.end32.i:                                       ; preds = %if.end27.i
  %32 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %panel.i, align 4
  %tobool33.not.i = icmp eq ptr %33, null
  br i1 %tobool33.not.i, label %if.end32.i.sn65dsi83_parse_dt.exit.thread77_crit_edge, label %if.then34.i

if.end32.i.sn65dsi83_parse_dt.exit.thread77_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_parse_dt.exit.thread77

if.then34.i:                                      ; preds = %if.end32.i
  %call35.i = call ptr @devm_drm_panel_bridge_add(ptr noundef %12, ptr noundef nonnull %33) #9
  %34 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call35.i, ptr %panel_bridge.i, align 4
  %cmp.i.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sn65dsi83_parse_dt.exit, label %if.then34.i.sn65dsi83_parse_dt.exit.thread77_crit_edge

if.then34.i.sn65dsi83_parse_dt.exit.thread77_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_parse_dt.exit.thread77

sn65dsi83_parse_dt.exit.thread77:                 ; preds = %if.then34.i.sn65dsi83_parse_dt.exit.thread77_crit_edge, %if.end32.i.sn65dsi83_parse_dt.exit.thread77_crit_edge
  %35 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %panel_bridge.i, align 4
  %panel_bridge41.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %panel_bridge41.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %panel_bridge41.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel_bridge.i) #9
  %call19 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sn65dsi83_regmap_config, ptr noundef nonnull @sn65dsi83_probe._key, ptr noundef nonnull @.str.2) #9
  %regmap = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call19, ptr %regmap, align 4
  %cmp.i65 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then22, label %if.end25

sn65dsi83_parse_dt.exit.thread:                   ; preds = %if.end27.i.sn65dsi83_parse_dt.exit.thread_crit_edge, %if.end.i.sn65dsi83_parse_dt.exit.thread_crit_edge, %if.end14.sn65dsi83_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call29.i, %if.end27.i.sn65dsi83_parse_dt.exit.thread_crit_edge ], [ -19, %if.end.i.sn65dsi83_parse_dt.exit.thread_crit_edge ], [ -22, %if.end14.sn65dsi83_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel_bridge.i) #9
  br label %cleanup

sn65dsi83_parse_dt.exit:                          ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call35.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel_bridge.i) #9
  br label %cleanup

if.then22:                                        ; preds = %sn65dsi83_parse_dt.exit.thread77
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %sn65dsi83_parse_dt.exit.thread77
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @sn65dsi83_funcs, ptr %funcs, align 4
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %of_node28 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %of_node28, align 4
  call void @drm_bridge_add(ptr noundef nonnull %call.i) #9
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #9
  %48 = call ptr @memcpy(ptr %info.i, ptr @__const.sn65dsi83_host_attach.info, i32 28)
  %49 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_node.i, align 4
  %call.i68 = call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %50) #9
  %tobool.not.i69 = icmp eq ptr %call.i68, null
  br i1 %tobool.not.i69, label %do.end.i, label %if.end.i71

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.13) #12
  br label %sn65dsi83_host_attach.exit.thread

if.end.i71:                                       ; preds = %if.end25
  %call2.i = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %47, ptr noundef nonnull %call.i68, ptr noundef nonnull %info.i) #9
  %cmp.i.i70 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %sn65dsi83_host_attach.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i71
  %dsi8.i = getelementptr inbounds %struct.sn65dsi83, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %dsi8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call2.i, ptr %dsi8.i, align 4
  %52 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsi_lanes.i, align 4
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 4
  %54 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %lanes.i, align 8
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 5
  %55 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %format.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 6
  %56 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %mode_flags.i, align 8
  %call9.i = call i32 @devm_mipi_dsi_attach(ptr noundef %47, ptr noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i73 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i73, label %do.end13.i, label %sn65dsi83_host_attach.exit.thread83

sn65dsi83_host_attach.exit.thread83:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #9
  br label %cleanup

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.17, i32 noundef %call9.i) #12
  br label %sn65dsi83_host_attach.exit.thread

sn65dsi83_host_attach.exit.thread:                ; preds = %do.end13.i, %do.end.i
  %retval.0.i74.ph = phi i32 [ -517, %do.end.i ], [ %call9.i, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #9
  br label %err_remove_bridge

sn65dsi83_host_attach.exit:                       ; preds = %if.end.i71
  %57 = ptrtoint ptr %call2.i to i32
  %call6.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %47, i32 noundef %57, ptr noundef nonnull @.str.15) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool31.not = icmp eq i32 %call6.i, 0
  br i1 %tobool31.not, label %sn65dsi83_host_attach.exit.cleanup_crit_edge, label %sn65dsi83_host_attach.exit.err_remove_bridge_crit_edge

sn65dsi83_host_attach.exit.err_remove_bridge_crit_edge: ; preds = %sn65dsi83_host_attach.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_bridge

sn65dsi83_host_attach.exit.cleanup_crit_edge:     ; preds = %sn65dsi83_host_attach.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_remove_bridge:                                ; preds = %sn65dsi83_host_attach.exit.err_remove_bridge_crit_edge, %sn65dsi83_host_attach.exit.thread
  %retval.0.i7482 = phi i32 [ %retval.0.i74.ph, %sn65dsi83_host_attach.exit.thread ], [ %call6.i, %sn65dsi83_host_attach.exit.err_remove_bridge_crit_edge ]
  call void @drm_bridge_remove(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_remove_bridge, %sn65dsi83_host_attach.exit.cleanup_crit_edge, %sn65dsi83_host_attach.exit.thread83, %if.then22, %sn65dsi83_parse_dt.exit, %sn65dsi83_parse_dt.exit.thread, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11 ], [ %40, %if.then22 ], [ %retval.0.i7482, %err_remove_bridge ], [ -12, %entry.cleanup_crit_edge ], [ %39, %sn65dsi83_parse_dt.exit ], [ 0, %sn65dsi83_host_attach.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %sn65dsi83_parse_dt.exit.thread ], [ 0, %sn65dsi83_host_attach.exit.thread83 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sn65dsi83_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #9
  %host_node = getelementptr inbounds %struct.sn65dsi83, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_node, align 4
  tail call void @of_node_put(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sn65dsi83_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 5
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %call2 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #9
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sn65dsi83_detach(ptr nocapture noundef %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 4
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dsi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sn65dsi83_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %1)
  %cmp = icmp slt i32 %1, 25000
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000, i32 %1)
  %cmp2 = icmp sgt i32 %1, 154000
  %. = select i1 %cmp2, i32 15, i32 0
  %retval.0 = select i1 %cmp, i32 16, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sn65dsi83_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %old_bridge_state) #2 align 64 {
entry:
  %pval = alloca i32, align 4
  %le16val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old_bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_bridge_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval) #9
  %2 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pval, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le16val) #9
  %enable_gpio = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 6
  %3 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call2 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %1, ptr noundef %bridge) #9
  %output_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %call2, i32 0, i32 3
  %5 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_bus_cfg, align 4
  %switch.tableidx = add i32 %6, -4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %6) #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.cast = trunc i32 %switch.tableidx to i3
  %switch.downshift = lshr i3 -2, %switch.cast
  %10 = and i3 %switch.downshift, 1
  %11 = sext i3 %10 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.masked = icmp ne i3 %10, 0
  %12 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %switch.idx.cast.not = icmp eq i32 %12, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %lvds_format_24bpp.0.off0 = phi i1 [ true, %sw.default ], [ %switch.masked, %switch.lookup ]
  %lvds_format_jeida.0.off0 = phi i1 [ false, %sw.default ], [ %switch.idx.cast.not, %switch.lookup ]
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %13 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder, align 4
  %call7 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %14) #9
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7, i32 0, i32 9
  %15 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp slt i32 %16, %18
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.drm_atomic_get_new_connector_state.exit_crit_edge

sw.epilog.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %20, i32 %16, i32 3
  %21 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %sw.epilog.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ null, %sw.epilog.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %crtc9 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %crtc9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc9, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtcs.i, align 4
  %index.i.i278 = getelementptr inbounds %struct.drm_crtc, ptr %24, i32 0, i32 8
  %27 = ptrtoint ptr %index.i.i278 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i.i278, align 4
  %new_state.i279 = getelementptr %struct.__drm_crtcs_state, ptr %26, i32 %28, i32 3
  %29 = ptrtoint ptr %new_state.i279 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %new_state.i279, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7
  %regmap = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 2
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 9, i32 noundef 0) #9
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 13, i32 noundef 0) #9
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %adjusted_mode, align 4
  %lvds_dual_link.i = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 8
  %39 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lvds_dual_link.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  %div.i = sdiv i32 %38, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %38, i32 %div.i
  %sub.i = add i32 %spec.select.i, -12500
  %div1.i = sdiv i32 %sub.i, 25000
  %41 = shl nsw i32 %div1.i, 1
  %42 = and i32 %41, 14
  %43 = or i32 %42, 1
  %call16 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 10, i32 noundef %43) #9
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adjusted_mode, align 4
  %dsi.i = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 4
  %48 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsi.i, align 4
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %switch.lookup311, label %drm_atomic_get_new_connector_state.exit.sn65dsi83_get_dsi_range.exit_crit_edge

drm_atomic_get_new_connector_state.exit.sn65dsi83_get_dsi_range.exit_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_get_dsi_range.exit

switch.lookup311:                                 ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sn65dsi83_atomic_enable, i32 0, i32 %51
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sn65dsi83_get_dsi_range.exit

sn65dsi83_get_dsi_range.exit:                     ; preds = %switch.lookup311, %drm_atomic_get_new_connector_state.exit.sn65dsi83_get_dsi_range.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup311 ], [ -22, %drm_atomic_get_new_connector_state.exit.sn65dsi83_get_dsi_range.exit_crit_edge ]
  %mul.i = mul i32 %retval.0.i.i, %47
  %dsi_lanes.i = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 7
  %54 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dsi_lanes.i, align 4
  %div.i280 = udiv i32 %mul.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 80001, i32 %div.i280)
  %cmp.i = icmp ugt i32 %div.i280, 80001
  %div114.i = lshr i32 %div.i280, 1
  %56 = tail call i32 @llvm.umin.i32(i32 %div114.i, i32 500000) #9
  %.op.i = add nuw nsw i32 %56, 4999
  %.op.op.i = udiv i32 %.op.i, 5000
  %conv19 = select i1 %cmp.i, i32 %.op.op.i, i32 8
  %call21 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 18, i32 noundef %conv19) #9
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %59 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dsi.i, align 4
  %format.i283 = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %format.i283 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %format.i283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %switch.lookup312, label %sn65dsi83_get_dsi_range.exit.sn65dsi83_get_dsi_div.exit_crit_edge

sn65dsi83_get_dsi_range.exit.sn65dsi83_get_dsi_div.exit_crit_edge: ; preds = %sn65dsi83_get_dsi_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sn65dsi83_get_dsi_div.exit

switch.lookup312:                                 ; preds = %sn65dsi83_get_dsi_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep313 = getelementptr inbounds [4 x i32], ptr @switch.table.sn65dsi83_atomic_enable.19, i32 0, i32 %62
  %64 = ptrtoint ptr %switch.gep313 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load314 = load i32, ptr %switch.gep313, align 4
  br label %sn65dsi83_get_dsi_div.exit

sn65dsi83_get_dsi_div.exit:                       ; preds = %switch.lookup312, %sn65dsi83_get_dsi_range.exit.sn65dsi83_get_dsi_div.exit_crit_edge
  %retval.0.i.i287 = phi i32 [ %switch.load314, %switch.lookup312 ], [ -22, %sn65dsi83_get_dsi_range.exit.sn65dsi83_get_dsi_div.exit_crit_edge ]
  %65 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dsi_lanes.i, align 4
  %div.i289 = udiv i32 %retval.0.i.i287, %66
  %67 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lvds_dual_link.i, align 4, !range !75
  %69 = xor i8 %68, 1
  %70 = zext i8 %69 to i32
  %spec.select.i291 = lshr i32 %div.i289, %70
  %conv.i292 = shl i32 %spec.select.i291, 3
  %71 = add i32 %conv.i292, 248
  %shl26 = and i32 %71, 248
  %call27 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 11, i32 noundef %shl26) #9
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %74 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dsi_lanes.i, align 4
  %.neg = mul i32 %75, 24
  %shl30 = and i32 %.neg, 24
  %or32 = or i32 %shl30, 38
  %call33 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 16, i32 noundef %or32) #9
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 17, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 11
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and36 = shl i32 %79, 5
  %80 = and i32 %and36, 64
  %and38 = shl i32 %79, 2
  %81 = and i32 %and38, 32
  %or41 = or i32 %80, %81
  %conv42 = trunc i32 %or41 to i16
  br i1 %lvds_format_24bpp.0.off0, label %if.then, label %sn65dsi83_get_dsi_div.exit.if.end52_crit_edge

sn65dsi83_get_dsi_div.exit.if.end52_crit_edge:    ; preds = %sn65dsi83_get_dsi_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then:                                          ; preds = %sn65dsi83_get_dsi_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lvds_dual_link.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool47.not = icmp eq i8 %83, 0
  %spec.select.v = select i1 %tobool47.not, i16 8, i16 12
  %spec.select = or i16 %spec.select.v, %conv42
  br label %if.end52

if.end52:                                         ; preds = %if.then, %sn65dsi83_get_dsi_div.exit.if.end52_crit_edge
  %val.0 = phi i16 [ %conv42, %sn65dsi83_get_dsi_div.exit.if.end52_crit_edge ], [ %spec.select, %if.then ]
  br i1 %lvds_format_jeida.0.off0, label %if.then54, label %if.end52.if.end65_crit_edge

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %lvds_dual_link.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool59.not = icmp eq i8 %85, 0
  %spec.select275.v = select i1 %tobool59.not, i16 2, i16 3
  %spec.select275 = or i16 %spec.select275.v, %val.0
  br label %if.end65

if.end65:                                         ; preds = %if.then54, %if.end52.if.end65_crit_edge
  %val.1 = phi i16 [ %val.0, %if.end52.if.end65_crit_edge ], [ %spec.select275, %if.then54 ]
  %86 = ptrtoint ptr %lvds_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %lvds_dual_link.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool67.not = icmp eq i8 %87, 0
  %88 = or i16 %val.1, 16
  %spec.select276 = select i1 %tobool67.not, i16 %88, i16 %val.1
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %conv74 = zext i16 %spec.select276 to i32
  %call75 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 24, i32 noundef %conv74) #9
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call77 = tail call i32 @regmap_write(ptr noundef %92, i32 noundef 25, i32 noundef 5) #9
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %lvds_dual_link_even_odd_swap = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 9
  %95 = ptrtoint ptr %lvds_dual_link_even_odd_swap to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %lvds_dual_link_even_odd_swap, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool79.not = icmp eq i8 %96, 0
  %or83 = select i1 %tobool79.not, i32 3, i32 67
  %call84 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 26, i32 noundef %or83) #9
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call86 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 27, i32 noundef 0) #9
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 1
  %99 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hdisplay, align 4
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %102 = ptrtoint ptr %le16val to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %le16val, align 2
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_bulk_write(ptr noundef %104, i32 noundef 32, ptr noundef nonnull %le16val, i32 noundef 2) #9
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 6
  %105 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vdisplay, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %106)
  %108 = ptrtoint ptr %le16val to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %le16val, align 2
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %call90 = call i32 @regmap_bulk_write(ptr noundef %110, i32 noundef 36, ptr noundef nonnull %le16val, i32 noundef 2) #9
  %111 = ptrtoint ptr %le16val to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 8448, ptr %le16val, align 2
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call92 = call i32 @regmap_bulk_write(ptr noundef %113, i32 noundef 40, ptr noundef nonnull %le16val, i32 noundef 2) #9
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 3
  %114 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hsync_end, align 4
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 2
  %116 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hsync_start, align 2
  %sub95 = sub i16 %115, %117
  %118 = call i16 @llvm.bswap.i16(i16 %sub95)
  %119 = ptrtoint ptr %le16val to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %le16val, align 2
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call98 = call i32 @regmap_bulk_write(ptr noundef %121, i32 noundef 44, ptr noundef nonnull %le16val, i32 noundef 2) #9
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 8
  %122 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vsync_end, align 2
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 7
  %124 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %vsync_start, align 4
  %sub101 = sub i16 %123, %125
  %126 = call i16 @llvm.bswap.i16(i16 %sub101)
  %127 = ptrtoint ptr %le16val to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %le16val, align 2
  %128 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap, align 4
  %call104 = call i32 @regmap_bulk_write(ptr noundef %129, i32 noundef 48, ptr noundef nonnull %le16val, i32 noundef 2) #9
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 4
  %132 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %htotal, align 2
  %conv106 = zext i16 %133 to i32
  %134 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %hsync_end, align 4
  %conv108 = zext i16 %135 to i32
  %sub109 = sub nsw i32 %conv106, %conv108
  %call110 = call i32 @regmap_write(ptr noundef %131, i32 noundef 52, i32 noundef %sub109) #9
  %136 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap, align 4
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7, i32 9
  %138 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %vtotal, align 4
  %conv112 = zext i16 %139 to i32
  %140 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vsync_end, align 2
  %conv114 = zext i16 %141 to i32
  %sub115 = sub nsw i32 %conv112, %conv114
  %call116 = call i32 @regmap_write(ptr noundef %137, i32 noundef 54, i32 noundef %sub115) #9
  %142 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap, align 4
  %144 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %hsync_start, align 2
  %conv119 = zext i16 %145 to i32
  %146 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %hdisplay, align 4
  %conv121 = zext i16 %147 to i32
  %sub122 = sub nsw i32 %conv119, %conv121
  %call123 = call i32 @regmap_write(ptr noundef %143, i32 noundef 56, i32 noundef %sub122) #9
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 4
  %150 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vsync_start, align 4
  %conv126 = zext i16 %151 to i32
  %152 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %vdisplay, align 2
  %conv128 = zext i16 %153 to i32
  %sub129 = sub nsw i32 %conv126, %conv128
  %call130 = call i32 @regmap_write(ptr noundef %149, i32 noundef 58, i32 noundef %sub129) #9
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %call132 = call i32 @regmap_write(ptr noundef %155, i32 noundef 60, i32 noundef 0) #9
  %156 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap, align 4
  %call134 = call i32 @regmap_write(ptr noundef %157, i32 noundef 13, i32 noundef 1) #9
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #9
  %call135 = call i64 @ktime_get() #9
  %add.i = add i64 %call135, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 469) #9
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 4
  %call150306 = call i32 @regmap_read(ptr noundef %159, i32 noundef 10, ptr noundef nonnull %pval) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150306)
  %tobool151.not307 = icmp eq i32 %call150306, 0
  br i1 %tobool151.not307, label %if.end65.lor.lhs.false_crit_edge, label %if.end65.do.end179_crit_edge

if.end65.do.end179_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

if.end65.lor.lhs.false_crit_edge:                 ; preds = %if.end65
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then166.lor.lhs.false_crit_edge, %if.end65.lor.lhs.false_crit_edge
  %160 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pval, align 4
  %and152 = and i32 %161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call157 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call157, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call157, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then166

if.then166:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %162 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap, align 4
  %call150 = call i32 @regmap_read(ptr noundef %163, i32 noundef 10, ptr noundef nonnull %pval) #9
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then166.lor.lhs.false_crit_edge, label %if.then166.do.end179_crit_edge

if.then166.do.end179_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

if.then166.lor.lhs.false_crit_edge:               ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %164 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap, align 4
  %call163 = call i32 @regmap_read(ptr noundef %165, i32 noundef 10, ptr noundef nonnull %pval) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool168.not = icmp eq i32 %call163, 0
  br i1 %tobool168.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end179_crit_edge

for.end.do.end179_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %166 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pval, align 4
  %and169 = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %lor.rhs.do.end179_crit_edge, label %if.end183

lor.rhs.do.end179_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

do.end179:                                        ; preds = %lor.rhs.do.end179_crit_edge, %for.end.do.end179_crit_edge, %if.then166.do.end179_crit_edge, %if.end65.do.end179_crit_edge
  %tobool168.not299.ph = phi i32 [ %call150306, %if.end65.do.end179_crit_edge ], [ %call163, %for.end.do.end179_crit_edge ], [ -110, %lor.rhs.do.end179_crit_edge ], [ %call150, %if.then166.do.end179_crit_edge ]
  %dev180 = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 1
  %168 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev180, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.10, i32 noundef %tobool168.not299.ph) #12
  %170 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap, align 4
  %call182 = call i32 @regmap_write(ptr noundef %171, i32 noundef 13, i32 noundef 0) #9
  br label %cleanup

if.end183:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regmap, align 4
  %call185 = call i32 @regmap_write(ptr noundef %173, i32 noundef 9, i32 noundef 1) #9
  %174 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap, align 4
  %call187 = call i32 @regmap_read(ptr noundef %175, i32 noundef 229, ptr noundef nonnull %pval) #9
  %176 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regmap, align 4
  %178 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pval, align 4
  %call189 = call i32 @regmap_write(ptr noundef %177, i32 noundef 229, i32 noundef %179) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %do.end179
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le16val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sn65dsi83_atomic_disable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %regmap = getelementptr inbounds %struct.sn65dsi83, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @sn65dsi83_atomic_get_input_bus_fmts(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4106, ptr %call7.i.i.i, align 8
  %3 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_input_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_ti_sn65dsi83__311_730_sn65dsi83_driver_init6, !1, !"__initcall__kmod_ti_sn65dsi83__311_730_sn65dsi83_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 730, i32 1}
!2 = !{ptr @__exitcall_sn65dsi83_driver_exit, !1, !"__exitcall_sn65dsi83_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 732, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 733, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 734, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 726, i32 11}
!12 = !{ptr @sn65dsi83_driver, !13, !"sn65dsi83_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 721, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 665, i32 46}
!16 = !{ptr @sn65dsi83_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 675, i32 16}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 559, i32 57}
!21 = !{ptr @sn65dsi83_regmap_config, !22, !"sn65dsi83_regmap_config", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 229, i32 35}
!23 = !{ptr @sn65dsi83_writeable_table, !24, !"sn65dsi83_writeable_table", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 213, i32 41}
!25 = !{ptr @sn65dsi83_writeable_ranges, !26, !"sn65dsi83_writeable_ranges", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 185, i32 34}
!27 = !{ptr @sn65dsi83_readable_table, !28, !"sn65dsi83_readable_table", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 180, i32 41}
!29 = !{ptr @sn65dsi83_readable_ranges, !30, !"sn65dsi83_readable_ranges", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 151, i32 34}
!31 = !{ptr @sn65dsi83_volatile_table, !32, !"sn65dsi83_volatile_table", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 224, i32 41}
!33 = !{ptr @sn65dsi83_volatile_ranges, !34, !"sn65dsi83_volatile_ranges", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 218, i32 34}
!35 = !{ptr @sn65dsi83_funcs, !36, !"sn65dsi83_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 537, i32 38}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 368, i32 3}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sn65dsi83_atomic_enable._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @sn65dsi83_atomic_enable._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 471, i32 3}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sn65dsi83_atomic_enable._entry.9, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sn65dsi83_atomic_enable._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 619, i32 3}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sn65dsi83_host_attach._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sn65dsi83_host_attach._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 626, i32 10}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 636, i32 3}
!59 = !{ptr @sn65dsi83_host_attach._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sn65dsi83_host_attach._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @sn65dsi83_match_table, !62, !"sn65dsi83_match_table", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 714, i32 34}
!63 = !{ptr @sn65dsi83_id, !64, !"sn65dsi83_id", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi83.c", i32 707, i32 29}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
