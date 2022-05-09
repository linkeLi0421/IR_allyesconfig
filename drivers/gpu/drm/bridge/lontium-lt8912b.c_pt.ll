; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/lontium-lt8912b.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/lontium-lt8912b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.lt8912 = type { ptr, %struct.drm_bridge, %struct.drm_connector, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, %struct.videomode, i8, i8, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_lontium_lt8912b__307_752_lt8912_i2c_driver_init6 = internal global ptr @lt8912_i2c_driver_init, section ".initcall6.init", align 4
@lt8912_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lt8912_probe, ptr @lt8912_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lt8912_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lt8912_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lt8912_i2c_driver_exit = internal global ptr @lt8912_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [67 x i8] c"lontium_lt8912b.author=Adrien Grassein <adrien.grassein@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [46 x i8] c"lontium_lt8912b.description=lt8912 drm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [60 x i8] c"lontium_lt8912b.file=drivers/gpu/drm/bridge/lontium-lt8912b\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [31 x i8] c"lontium_lt8912b.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lt8912\00", [25 x i8] zeroinitializer }, align 32
@lt8912_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lontium,lt8912b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lt8912_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lt8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lt8912_probe.lt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lt8912_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @lt8912_bridge_attach, ptr @lt8912_bridge_detach, ptr null, ptr null, ptr null, ptr null, ptr @lt8912_bridge_mode_set, ptr null, ptr @lt8912_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lt8912_bridge_detect, ptr null, ptr @lt8912_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lt8912_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/bridge/lontium-lt8912b.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr = internal global ptr @lt8912_parse_dt._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Bad data-lanes property\0A\00", [35 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr.10 = internal global ptr @lt8912_parse_dt._entry.8, section ".printk_index", align 4
@lt8912_parse_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to get remote port\0A\00", [33 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr.13 = internal global ptr @lt8912_parse_dt._entry.11, section ".printk_index", align 4
@lt8912_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to get connector port\0A\00", [62 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr.16 = internal global ptr @lt8912_parse_dt._entry.14, section ".printk_index", align 4
@lt8912_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 648, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to get hdmi port\0A\00", [35 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr.19 = internal global ptr @lt8912_parse_dt._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi-connector\00", [17 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lt8912_parse_dt._entry_ptr.22 = internal global ptr @lt8912_parse_dt._entry.21, section ".printk_index", align 4
@lt8912_init_i2c._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lt8912_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lontium_lt8912b:232:(&lt8912_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@lt8912_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init bridge ! (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lt8912_bridge_attach\00", [43 x i8] zeroinitializer }, align 32
@lt8912_bridge_attach._entry_ptr = internal global ptr @lt8912_bridge_attach._entry, section ".printk_index", align 4
@lt8912_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @lt8912_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lt8912_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @lt8912_connector_get_modes, ptr null, ptr @lt8912_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__const.lt8912_write_init_config.seq = private unnamed_addr constant [23 x %struct.reg_sequence] [%struct.reg_sequence { i32 8, i32 255, i32 0 }, %struct.reg_sequence { i32 9, i32 255, i32 0 }, %struct.reg_sequence { i32 10, i32 255, i32 0 }, %struct.reg_sequence { i32 11, i32 124, i32 0 }, %struct.reg_sequence { i32 12, i32 255, i32 0 }, %struct.reg_sequence { i32 66, i32 4, i32 0 }, %struct.reg_sequence { i32 49, i32 177, i32 0 }, %struct.reg_sequence { i32 50, i32 177, i32 0 }, %struct.reg_sequence { i32 51, i32 14, i32 0 }, %struct.reg_sequence { i32 55, i32 0, i32 0 }, %struct.reg_sequence { i32 56, i32 34, i32 0 }, %struct.reg_sequence { i32 96, i32 130, i32 0 }, %struct.reg_sequence { i32 57, i32 69, i32 0 }, %struct.reg_sequence { i32 58, i32 0, i32 0 }, %struct.reg_sequence { i32 59, i32 0, i32 0 }, %struct.reg_sequence { i32 68, i32 49, i32 0 }, %struct.reg_sequence { i32 85, i32 68, i32 0 }, %struct.reg_sequence { i32 87, i32 1, i32 0 }, %struct.reg_sequence { i32 90, i32 2, i32 0 }, %struct.reg_sequence { i32 62, i32 214, i32 0 }, %struct.reg_sequence { i32 63, i32 212, i32 0 }, %struct.reg_sequence { i32 65, i32 60, i32 0 }, %struct.reg_sequence { i32 178, i32 0, i32 0 }], align 4
@__const.lt8912_write_mipi_basic_config.seq = private unnamed_addr constant [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 18, i32 4, i32 0 }, %struct.reg_sequence { i32 20, i32 0, i32 0 }, %struct.reg_sequence { i32 21, i32 0, i32 0 }, %struct.reg_sequence { i32 26, i32 3, i32 0 }, %struct.reg_sequence { i32 27, i32 3, i32 0 }], align 4
@__const.lt8912_write_dds_config.seq = private unnamed_addr constant [45 x %struct.reg_sequence] [%struct.reg_sequence { i32 78, i32 255, i32 0 }, %struct.reg_sequence { i32 79, i32 86, i32 0 }, %struct.reg_sequence { i32 80, i32 105, i32 0 }, %struct.reg_sequence { i32 81, i32 128, i32 0 }, %struct.reg_sequence { i32 31, i32 94, i32 0 }, %struct.reg_sequence { i32 32, i32 1, i32 0 }, %struct.reg_sequence { i32 33, i32 44, i32 0 }, %struct.reg_sequence { i32 34, i32 1, i32 0 }, %struct.reg_sequence { i32 35, i32 250, i32 0 }, %struct.reg_sequence { i32 36, i32 0, i32 0 }, %struct.reg_sequence { i32 37, i32 200, i32 0 }, %struct.reg_sequence { i32 38, i32 0, i32 0 }, %struct.reg_sequence { i32 39, i32 94, i32 0 }, %struct.reg_sequence { i32 40, i32 1, i32 0 }, %struct.reg_sequence { i32 41, i32 44, i32 0 }, %struct.reg_sequence { i32 42, i32 1, i32 0 }, %struct.reg_sequence { i32 43, i32 250, i32 0 }, %struct.reg_sequence { i32 44, i32 0, i32 0 }, %struct.reg_sequence { i32 45, i32 200, i32 0 }, %struct.reg_sequence { i32 46, i32 0, i32 0 }, %struct.reg_sequence { i32 66, i32 100, i32 0 }, %struct.reg_sequence { i32 67, i32 0, i32 0 }, %struct.reg_sequence { i32 68, i32 4, i32 0 }, %struct.reg_sequence { i32 69, i32 0, i32 0 }, %struct.reg_sequence { i32 70, i32 89, i32 0 }, %struct.reg_sequence { i32 71, i32 0, i32 0 }, %struct.reg_sequence { i32 72, i32 242, i32 0 }, %struct.reg_sequence { i32 73, i32 6, i32 0 }, %struct.reg_sequence { i32 74, i32 0, i32 0 }, %struct.reg_sequence { i32 75, i32 114, i32 0 }, %struct.reg_sequence { i32 76, i32 69, i32 0 }, %struct.reg_sequence { i32 77, i32 0, i32 0 }, %struct.reg_sequence { i32 82, i32 8, i32 0 }, %struct.reg_sequence { i32 83, i32 0, i32 0 }, %struct.reg_sequence { i32 84, i32 178, i32 0 }, %struct.reg_sequence { i32 85, i32 0, i32 0 }, %struct.reg_sequence { i32 86, i32 228, i32 0 }, %struct.reg_sequence { i32 87, i32 13, i32 0 }, %struct.reg_sequence { i32 88, i32 0, i32 0 }, %struct.reg_sequence { i32 89, i32 228, i32 0 }, %struct.reg_sequence { i32 90, i32 138, i32 0 }, %struct.reg_sequence { i32 91, i32 0, i32 0 }, %struct.reg_sequence { i32 92, i32 52, i32 0 }, %struct.reg_sequence { i32 30, i32 79, i32 0 }, %struct.reg_sequence { i32 81, i32 0, i32 0 }], align 4
@__const.lt8912_write_lvds_config.seq = private unnamed_addr constant [18 x %struct.reg_sequence] [%struct.reg_sequence { i32 68, i32 48, i32 0 }, %struct.reg_sequence { i32 81, i32 5, i32 0 }, %struct.reg_sequence { i32 80, i32 36, i32 0 }, %struct.reg_sequence { i32 81, i32 45, i32 0 }, %struct.reg_sequence { i32 82, i32 4, i32 0 }, %struct.reg_sequence { i32 105, i32 14, i32 0 }, %struct.reg_sequence { i32 105, i32 142, i32 0 }, %struct.reg_sequence { i32 106, i32 0, i32 0 }, %struct.reg_sequence { i32 108, i32 184, i32 0 }, %struct.reg_sequence { i32 107, i32 81, i32 0 }, %struct.reg_sequence { i32 4, i32 251, i32 0 }, %struct.reg_sequence { i32 4, i32 255, i32 0 }, %struct.reg_sequence { i32 127, i32 0, i32 0 }, %struct.reg_sequence { i32 168, i32 19, i32 0 }, %struct.reg_sequence { i32 2, i32 247, i32 0 }, %struct.reg_sequence { i32 2, i32 255, i32 0 }, %struct.reg_sequence { i32 3, i32 207, i32 0 }, %struct.reg_sequence { i32 3, i32 255, i32 0 }], align 4
@lt8912_bridge_get_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 590, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"The connected bridge does not supports DRM_BRIDGE_OP_EDID\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lt8912_bridge_get_edid\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lt8912_bridge_get_edid._entry_ptr = internal global ptr @lt8912_bridge_get_edid._entry, section ".printk_index", align 4
@__const.lt8912_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"lt8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@lt8912_attach_dsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lt8912_attach_dsi\00", [46 x i8] zeroinitializer }, align 32
@lt8912_attach_dsi._entry_ptr = internal global ptr @lt8912_attach_dsi._entry, section ".printk_index", align 4
@lt8912_attach_dsi._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create dsi device (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@lt8912_attach_dsi._entry_ptr.33 = internal global ptr @lt8912_attach_dsi._entry.31, section ".printk_index", align 4
@lt8912_attach_dsi._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach dsi to host\0A\00", [34 x i8] zeroinitializer }, align 32
@lt8912_attach_dsi._entry_ptr.36 = internal global ptr @lt8912_attach_dsi._entry.34, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"lt8912_i2c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 743, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 745, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"lt8912_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 731, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"lt8912_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 737, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 677, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"lt8912_bridge_funcs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 594, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 612, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 616, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 625, i32 53 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 628, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 635, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 641, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 648, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 653, i32 42 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 654, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"lt8912_regmap_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 202, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 231, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 534, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"lt8912_connector_funcs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 387, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [30 x i8] c"lt8912_connector_helper_funcs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 437, i32 48 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 590, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 471, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 478, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [44 x i8] c"../drivers/gpu/drm/bridge/lontium-lt8912b.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 494, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_lt8912_i2c_driver_exit, ptr @__initcall__kmod_lontium_lt8912b__307_752_lt8912_i2c_driver_init6, ptr @lt8912_attach_dsi._entry, ptr @lt8912_attach_dsi._entry.31, ptr @lt8912_attach_dsi._entry.34, ptr @lt8912_attach_dsi._entry_ptr, ptr @lt8912_attach_dsi._entry_ptr.33, ptr @lt8912_attach_dsi._entry_ptr.36, ptr @lt8912_bridge_attach._entry, ptr @lt8912_bridge_attach._entry_ptr, ptr @lt8912_bridge_get_edid._entry, ptr @lt8912_bridge_get_edid._entry_ptr, ptr @lt8912_i2c_driver_exit, ptr @lt8912_parse_dt._entry, ptr @lt8912_parse_dt._entry.11, ptr @lt8912_parse_dt._entry.14, ptr @lt8912_parse_dt._entry.17, ptr @lt8912_parse_dt._entry.21, ptr @lt8912_parse_dt._entry.8, ptr @lt8912_parse_dt._entry_ptr, ptr @lt8912_parse_dt._entry_ptr.10, ptr @lt8912_parse_dt._entry_ptr.13, ptr @lt8912_parse_dt._entry_ptr.16, ptr @lt8912_parse_dt._entry_ptr.19, ptr @lt8912_parse_dt._entry_ptr.22, ptr @lt8912_i2c_driver, ptr @.str, ptr @lt8912_dt_match, ptr @lt8912_id, ptr @lt8912_probe.lt, ptr @lt8912_bridge_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @lt8912_init_i2c._key, ptr @lt8912_regmap_config, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @lt8912_connector_funcs, ptr @lt8912_connector_helper_funcs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_probe.lt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_init_i2c._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_bridge_get_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_attach_dsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_attach_dsi._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt8912_attach_dsi._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lt8912_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lt8912_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lt8912_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %info.i = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1408, i32 noundef 3520) #6
  store ptr %call.i, ptr @lt8912_probe.lt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %i2c_client = getelementptr inbounds %struct.lt8912, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %i2c_client, align 8
  %call.i31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %cmp.i.i = icmp ugt ptr %call.i31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call.i31, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %lt8912_parse_dt.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end
  %gp_reset6.i = getelementptr inbounds %struct.lt8912, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %gp_reset6.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i31, ptr %gp_reset6.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call7.i = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %4, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.7, i32 noundef 4) #6
  tail call void @of_node_put(ptr noundef nonnull %call7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end9.i
  %conv.i = trunc i32 %call.i.i to i8
  %data_lanes18.i = getelementptr inbounds %struct.lt8912, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %data_lanes18.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %data_lanes18.i, align 8
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call20.i = tail call ptr @of_graph_get_remote_node(ptr noundef %9, i32 noundef 0, i32 noundef -1) #6
  %host_node.i = getelementptr inbounds %struct.lt8912, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %host_node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20.i, ptr %host_node.i, align 8
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end28.i

do.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end28.i:                                       ; preds = %if.end17.i
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call30.i = tail call ptr @of_graph_get_remote_node(ptr noundef %14, i32 noundef 1, i32 noundef -1) #6
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end28.i.err_free_host_node.i_crit_edge, label %if.end37.i

if.end28.i.err_free_host_node.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_host_node.i

if.end37.i:                                       ; preds = %if.end28.i
  %call38.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call30.i) #6
  %hdmi_port.i = getelementptr inbounds %struct.lt8912, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %hdmi_port.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38.i, ptr %hdmi_port.i, align 4
  %tobool40.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool40.not.i, label %if.end37.i.err_free_host_node.i_crit_edge, label %if.end46.i

if.end37.i.err_free_host_node.i_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_host_node.i

if.end46.i:                                       ; preds = %if.end37.i
  %call47.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call30.i, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.err_free_host_node.i_crit_edge, label %lt8912_parse_dt.exit.thread45

if.end46.i.err_free_host_node.i_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_host_node.i

lt8912_parse_dt.exit.thread45:                    ; preds = %if.end46.i
  tail call void @of_node_put(ptr noundef nonnull %call30.i) #6
  %16 = load ptr, ptr @lt8912_probe.lt, align 4
  %tobool.not.i32 = icmp eq ptr %16, null
  br i1 %tobool.not.i32, label %lt8912_parse_dt.exit.thread45.err_i2c_crit_edge, label %if.end12.i

lt8912_parse_dt.exit.thread45.err_i2c_crit_edge:  ; preds = %lt8912_parse_dt.exit.thread45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c

err_free_host_node.i:                             ; preds = %if.end46.i.err_free_host_node.i_crit_edge, %if.end37.i.err_free_host_node.i_crit_edge, %if.end28.i.err_free_host_node.i_crit_edge
  %.str.18.sink.i = phi ptr [ @.str.15, %if.end28.i.err_free_host_node.i_crit_edge ], [ @.str.18, %if.end37.i.err_free_host_node.i_crit_edge ], [ @.str.18, %if.end46.i.err_free_host_node.i_crit_edge ]
  %ret.0.i = phi i32 [ -19, %if.end28.i.err_free_host_node.i_crit_edge ], [ -19, %if.end37.i.err_free_host_node.i_crit_edge ], [ -22, %if.end46.i.err_free_host_node.i_crit_edge ]
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.18.sink.i, ptr noundef nonnull @.str.3) #9
  tail call void @of_node_put(ptr noundef %call30.i) #6
  %19 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_node.i, align 8
  tail call void @of_node_put(ptr noundef %20) #6
  br label %cleanup

lt8912_parse_dt.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call.i31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %21) #9
  br label %cleanup

if.then2.1.i:                                     ; preds = %if.end12.i
  %arrayidx3.i = getelementptr %struct.lt8912, ptr %16, i32 0, i32 3, i32 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.1.i = tail call ptr @i2c_new_dummy_device(ptr noundef %23, i16 noundef zeroext 73) #6
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.1.i, ptr %arrayidx3.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.then2.1.i.lt8912_init_i2c.exit_crit_edge, label %if.end12.1.i

if.then2.1.i.lt8912_init_i2c.exit_crit_edge:      ; preds = %if.then2.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_init_i2c.exit

if.end12.1.i:                                     ; preds = %if.then2.1.i
  %call15.1.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call.1.i, ptr noundef nonnull @lt8912_regmap_config, ptr noundef nonnull @lt8912_init_i2c._key, ptr noundef nonnull @.str.23) #6
  %arrayidx16.1.i = getelementptr %struct.lt8912, ptr %16, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15.1.i, ptr %arrayidx16.1.i, align 4
  %cmp.i43.1.i = icmp ugt ptr %call15.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.1.i, label %if.end12.1.i.lt8912_init_i2c.exit_crit_edge, label %if.end12.1.i.if.end10_crit_edge

if.end12.1.i.if.end10_crit_edge:                  ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end12.1.i.lt8912_init_i2c.exit_crit_edge:      ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_init_i2c.exit

if.end12.i:                                       ; preds = %lt8912_parse_dt.exit.thread45
  %arrayidx14.i = getelementptr %struct.lt8912, ptr %16, i32 0, i32 3, i32 0
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14.i, align 4
  %call15.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %27, ptr noundef nonnull @lt8912_regmap_config, ptr noundef nonnull @lt8912_init_i2c._key, ptr noundef nonnull @.str.23) #6
  %arrayidx16.i = getelementptr %struct.lt8912, ptr %16, i32 0, i32 4, i32 0
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call15.i, ptr %arrayidx16.i, align 4
  %cmp.i43.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i, label %if.end12.i.lt8912_init_i2c.exit_crit_edge, label %if.then2.1.i

if.end12.i.lt8912_init_i2c.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_init_i2c.exit

lt8912_init_i2c.exit:                             ; preds = %if.end12.i.lt8912_init_i2c.exit_crit_edge, %if.end12.1.i.lt8912_init_i2c.exit_crit_edge, %if.then2.1.i.lt8912_init_i2c.exit_crit_edge
  %retval.0.i33.in = phi ptr [ %call.1.i, %if.then2.1.i.lt8912_init_i2c.exit_crit_edge ], [ %call15.i, %if.end12.i.lt8912_init_i2c.exit_crit_edge ], [ %call15.1.i, %if.end12.1.i.lt8912_init_i2c.exit_crit_edge ]
  %retval.0.i33 = ptrtoint ptr %retval.0.i33.in to i32
  %tobool8.not = icmp eq ptr %retval.0.i33.in, null
  br i1 %tobool8.not, label %lt8912_init_i2c.exit.if.end10_crit_edge, label %lt8912_init_i2c.exit.err_i2c_crit_edge

lt8912_init_i2c.exit.err_i2c_crit_edge:           ; preds = %lt8912_init_i2c.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c

lt8912_init_i2c.exit.if.end10_crit_edge:          ; preds = %lt8912_init_i2c.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %lt8912_init_i2c.exit.if.end10_crit_edge, %if.end12.1.i.if.end10_crit_edge
  %29 = load ptr, ptr @lt8912_probe.lt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %driver_data.i.i, align 4
  %funcs = getelementptr inbounds %struct.lt8912, ptr %29, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @lt8912_bridge_funcs, ptr %funcs, align 4
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %of_node12 = getelementptr inbounds %struct.lt8912, ptr %29, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node12, align 4
  %ops = getelementptr inbounds %struct.lt8912, ptr %29, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %ops, align 4
  %bridge14 = getelementptr inbounds %struct.lt8912, ptr %29, i32 0, i32 1
  tail call void @drm_bridge_add(ptr noundef %bridge14) #6
  %36 = load ptr, ptr @lt8912_probe.lt, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #6
  %39 = call ptr @memcpy(ptr %info.i, ptr @__const.lt8912_attach_dsi.info, i32 28)
  %host_node.i34 = getelementptr inbounds %struct.lt8912, ptr %36, i32 0, i32 5
  %40 = ptrtoint ptr %host_node.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host_node.i34, align 8
  %call.i35 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %41) #6
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %do.end.i37, label %if.end.i

do.end.i37:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.29) #9
  br label %lt8912_attach_dsi.exit.thread

if.end.i:                                         ; preds = %if.end10
  %call2.i = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %38, ptr noundef nonnull %call.i35, ptr noundef nonnull %info.i) #6
  %cmp.i.i38 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i38, label %lt8912_attach_dsi.exit, label %if.end9.i40

if.end9.i40:                                      ; preds = %if.end.i
  %dsi10.i = getelementptr inbounds %struct.lt8912, ptr %36, i32 0, i32 7
  %42 = ptrtoint ptr %dsi10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2.i, ptr %dsi10.i, align 8
  %data_lanes.i = getelementptr inbounds %struct.lt8912, ptr %36, i32 0, i32 10
  %43 = ptrtoint ptr %data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data_lanes.i, align 8
  %conv.i39 = zext i8 %44 to i32
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 4
  %45 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv.i39, ptr %lanes.i, align 8
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 5
  %46 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %format.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 6
  %47 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2563, ptr %mode_flags.i, align 8
  %call11.i = call i32 @devm_mipi_dsi_attach(ptr noundef %38, ptr noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %do.end16.i, label %lt8912_attach_dsi.exit.thread56

lt8912_attach_dsi.exit.thread56:                  ; preds = %if.end9.i40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %cleanup

do.end16.i:                                       ; preds = %if.end9.i40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.35) #9
  br label %lt8912_attach_dsi.exit.thread

lt8912_attach_dsi.exit.thread:                    ; preds = %do.end16.i, %do.end.i37
  %retval.0.i41.ph = phi i32 [ -517, %do.end.i37 ], [ %call11.i, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %err_attach

lt8912_attach_dsi.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call2.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32, i32 noundef %48) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %err_attach

err_attach:                                       ; preds = %lt8912_attach_dsi.exit, %lt8912_attach_dsi.exit.thread
  %retval.0.i4155 = phi i32 [ %retval.0.i41.ph, %lt8912_attach_dsi.exit.thread ], [ %48, %lt8912_attach_dsi.exit ]
  %49 = load ptr, ptr @lt8912_probe.lt, align 4
  %bridge19 = getelementptr inbounds %struct.lt8912, ptr %49, i32 0, i32 1
  call void @drm_bridge_remove(ptr noundef %bridge19) #6
  %50 = load ptr, ptr @lt8912_probe.lt, align 4
  %arrayidx.i = getelementptr %struct.lt8912, ptr %50, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  call void @i2c_unregister_device(ptr noundef %52) #6
  br label %err_i2c

err_i2c:                                          ; preds = %err_attach, %lt8912_init_i2c.exit.err_i2c_crit_edge, %lt8912_parse_dt.exit.thread45.err_i2c_crit_edge
  %ret.0 = phi i32 [ %retval.0.i33, %lt8912_init_i2c.exit.err_i2c_crit_edge ], [ %retval.0.i4155, %err_attach ], [ -19, %lt8912_parse_dt.exit.thread45.err_i2c_crit_edge ]
  %53 = load ptr, ptr @lt8912_probe.lt, align 4
  %host_node.i42 = getelementptr inbounds %struct.lt8912, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %host_node.i42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host_node.i42, align 8
  call void @of_node_put(ptr noundef %55) #6
  br label %cleanup

cleanup:                                          ; preds = %err_i2c, %lt8912_attach_dsi.exit.thread56, %lt8912_parse_dt.exit, %err_free_host_node.i, %do.end26.i, %do.end15.i, %if.end5.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %21, %lt8912_parse_dt.exit ], [ %ret.0, %err_i2c ], [ 0, %lt8912_attach_dsi.exit.thread56 ], [ -19, %if.end5.i.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ], [ -19, %do.end26.i ], [ %ret.0.i, %err_free_host_node.i ], [ %call.i.i, %do.end15.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_attached.i = getelementptr %struct.lt8912, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_attached.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_attached.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.lt8912_bridge_detach.exit_crit_edge, label %if.then.i

entry.lt8912_bridge_detach.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_bridge_detach.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gp_reset.i.i = getelementptr %struct.lt8912, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gp_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gp_reset.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %is_power_on.i.i = getelementptr %struct.lt8912, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %is_power_on.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_power_on.i.i, align 1
  %connector.i = getelementptr %struct.lt8912, ptr %1, i32 0, i32 2
  tail call void @drm_connector_unregister(ptr noundef %connector.i) #6
  tail call void @drm_connector_cleanup(ptr noundef %connector.i) #6
  br label %lt8912_bridge_detach.exit

lt8912_bridge_detach.exit:                        ; preds = %if.then.i, %entry.lt8912_bridge_detach.exit_crit_edge
  %bridge = getelementptr inbounds %struct.lt8912, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  %arrayidx.i = getelementptr %struct.lt8912, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %8) #6
  %host_node.i = getelementptr inbounds %struct.lt8912, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_node.i, align 8
  tail call void @of_node_put(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  %seq.i1.i = alloca [5 x %struct.reg_sequence], align 4
  %seq.i.i = alloca [23 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %connector1.i = getelementptr i8, ptr %bridge, i32 284
  %polled.i = getelementptr i8, ptr %bridge, i32 984
  %0 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %polled.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %hdmi_port.i = getelementptr i8, ptr %bridge, i32 1344
  %3 = ptrtoint ptr %hdmi_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmi_port.i, align 4
  %type.i = getelementptr inbounds %struct.drm_bridge, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %call2.i = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef %connector1.i, ptr noundef nonnull @lt8912_connector_funcs, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lt8912_bridge_connector_init.exit.thread, label %do.end

lt8912_bridge_connector_init.exit.thread:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 992
  %7 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lt8912_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %dpms.i = getelementptr i8, ptr %bridge, i32 988
  %8 = ptrtoint ptr %dpms.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %dpms.i, align 8
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %9 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder.i, align 4
  %call3.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %10) #6
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %call2.i) #9
  br label %cleanup

if.end4:                                          ; preds = %lt8912_bridge_connector_init.exit.thread, %entry.if.end4_crit_edge
  %gp_reset.i = getelementptr i8, ptr %bridge, i32 1352
  %13 = ptrtoint ptr %gp_reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gp_reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %is_power_on.i = getelementptr i8, ptr %bridge, i32 1397
  %15 = ptrtoint ptr %is_power_on.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_power_on.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i25 = icmp eq i8 %16, 0
  br i1 %tobool.not.i25, label %if.then.i, label %if.end4.lt8912_soft_power_on.exit_crit_edge

if.end4.lt8912_soft_power_on.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_soft_power_on.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %data_lanes.i = getelementptr i8, ptr %bridge, i32 1396
  %17 = ptrtoint ptr %data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data_lanes.i, align 8
  call void @llvm.lifetime.start.p0(i64 276, ptr nonnull %seq.i.i) #6
  %19 = call ptr @memcpy(ptr %seq.i.i, ptr @__const.lt8912_write_init_config.seq, i32 276)
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 1332
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i = call i32 @regmap_multi_reg_write(ptr noundef %21, ptr noundef nonnull %seq.i.i, i32 noundef 23) #6
  call void @llvm.lifetime.end.p0(i64 276, ptr nonnull %seq.i.i) #6
  %arrayidx.i = getelementptr i8, ptr %bridge, i32 1336
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %24 = and i8 %18, 3
  %and.i = zext i8 %24 to i32
  %call1.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 19, i32 noundef %and.i) #6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %seq.i1.i) #6
  %25 = call ptr @memcpy(ptr %seq.i1.i, ptr @__const.lt8912_write_mipi_basic_config.seq, i32 60)
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i2.i = call i32 @regmap_multi_reg_write(ptr noundef %27, ptr noundef nonnull %seq.i1.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %seq.i1.i) #6
  %28 = ptrtoint ptr %is_power_on.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %is_power_on.i, align 1
  br label %lt8912_soft_power_on.exit

lt8912_soft_power_on.exit:                        ; preds = %if.then.i, %if.end4.lt8912_soft_power_on.exit_crit_edge
  %is_attached = getelementptr i8, ptr %bridge, i32 1398
  %29 = ptrtoint ptr %is_attached to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %is_attached, align 2
  br label %cleanup

cleanup:                                          ; preds = %lt8912_soft_power_on.exit, %do.end
  %retval.0 = phi i32 [ 0, %lt8912_soft_power_on.exit ], [ %call2.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt8912_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_attached = getelementptr i8, ptr %bridge, i32 1398
  %0 = ptrtoint ptr %is_attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_attached, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gp_reset.i = getelementptr i8, ptr %bridge, i32 1352
  %2 = ptrtoint ptr %gp_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gp_reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %is_power_on.i = getelementptr i8, ptr %bridge, i32 1397
  %4 = ptrtoint ptr %is_power_on.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_power_on.i, align 1
  %connector = getelementptr i8, ptr %bridge, i32 284
  tail call void @drm_connector_unregister(ptr noundef %connector) #6
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt8912_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr i8, ptr %bridge, i32 1356
  tail call void @drm_display_mode_to_videomode(ptr noundef %adj, ptr noundef %mode1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt8912_bridge_enable(ptr noundef readonly %bridge) #2 align 64 {
entry:
  %seq.i5.i = alloca [18 x %struct.reg_sequence], align 4
  %seq.i.i = alloca [45 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %entry.lt8912_video_on.exit_crit_edge, label %lt8912_video_setup.exit.i

entry.lt8912_video_on.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_video_on.exit

lt8912_video_setup.exit.i:                        ; preds = %entry
  %hactive1.i.i = getelementptr i8, ptr %bridge, i32 1360
  %0 = ptrtoint ptr %hactive1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hactive1.i.i, align 4
  %hfront_porch.i.i = getelementptr i8, ptr %bridge, i32 1364
  %2 = ptrtoint ptr %hfront_porch.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfront_porch.i.i, align 8
  %hsync_len.i.i = getelementptr i8, ptr %bridge, i32 1372
  %4 = ptrtoint ptr %hsync_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hsync_len.i.i, align 8
  %hback_porch.i.i = getelementptr i8, ptr %bridge, i32 1368
  %6 = ptrtoint ptr %hback_porch.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hback_porch.i.i, align 4
  %add.i.i = add i32 %3, %1
  %add5.i.i = add i32 %add.i.i, %5
  %add6.i.i = add i32 %add5.i.i, %7
  %vactive8.i.i = getelementptr i8, ptr %bridge, i32 1376
  %8 = ptrtoint ptr %vactive8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vactive8.i.i, align 4
  %vfront_porch.i.i = getelementptr i8, ptr %bridge, i32 1380
  %10 = ptrtoint ptr %vfront_porch.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vfront_porch.i.i, align 8
  %vsync_len.i.i = getelementptr i8, ptr %bridge, i32 1388
  %12 = ptrtoint ptr %vsync_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsync_len.i.i, align 8
  %vback_porch.i.i = getelementptr i8, ptr %bridge, i32 1384
  %14 = ptrtoint ptr %vback_porch.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vback_porch.i.i, align 4
  %add12.i.i = add i32 %11, %9
  %add13.i.i = add i32 %add12.i.i, %13
  %add14.i.i = add i32 %add13.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 601, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 601
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %9)
  %cmp16.i.i = icmp eq i32 %9, 1080
  %spec.select.i.i = select i1 %cmp16.i.i, i32 10, i32 8
  %settle.0.i.i = select i1 %cmp.i.i, i32 4, i32 %spec.select.i.i
  %arrayidx.i.i = getelementptr i8, ptr %bridge, i32 1336
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 16, i32 noundef 1) #6
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %call22.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 17, i32 noundef %settle.0.i.i) #6
  %or.i.i = or i32 %call22.i.i, %call.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %call25.i.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 24, i32 noundef %5) #6
  %or26.i.i = or i32 %or.i.i, %call25.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %call29.i.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 25, i32 noundef %13) #6
  %or30.i.i = or i32 %or26.i.i, %call29.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, 255
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 28, i32 noundef %and.i.i) #6
  %or34.i.i = or i32 %or30.i.i, %call33.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %1, 8
  %call37.i.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 29, i32 noundef %shr.i.i) #6
  %or38.i.i = or i32 %or34.i.i, %call37.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %call41.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 47, i32 noundef 12) #6
  %or42.i.i = or i32 %or38.i.i, %call41.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %and45.i.i = and i32 %add6.i.i, 255
  %call46.i.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 52, i32 noundef %and45.i.i) #6
  %or47.i.i = or i32 %or42.i.i, %call46.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %shr50.i.i = lshr i32 %add6.i.i, 8
  %call51.i.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 53, i32 noundef %shr50.i.i) #6
  %or52.i.i = or i32 %or47.i.i, %call51.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %and55.i.i = and i32 %add14.i.i, 255
  %call56.i.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 54, i32 noundef %and55.i.i) #6
  %or57.i.i = or i32 %or52.i.i, %call56.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %shr60.i.i = lshr i32 %add14.i.i, 8
  %call61.i.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 55, i32 noundef %shr60.i.i) #6
  %or62.i.i = or i32 %or57.i.i, %call61.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %and65.i.i = and i32 %15, 255
  %call66.i.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 56, i32 noundef %and65.i.i) #6
  %or67.i.i = or i32 %or62.i.i, %call66.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %shr70.i.i = lshr i32 %15, 8
  %call71.i.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 57, i32 noundef %shr70.i.i) #6
  %or72.i.i = or i32 %or67.i.i, %call71.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %and75.i.i = and i32 %11, 255
  %call76.i.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 58, i32 noundef %and75.i.i) #6
  %or77.i.i = or i32 %or72.i.i, %call76.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %shr80.i.i = lshr i32 %11, 8
  %call81.i.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 59, i32 noundef %shr80.i.i) #6
  %or82.i.i = or i32 %or77.i.i, %call81.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %and85.i.i = and i32 %7, 255
  %call86.i.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 60, i32 noundef %and85.i.i) #6
  %or87.i.i = or i32 %or82.i.i, %call86.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %shr90.i.i = lshr i32 %7, 8
  %call91.i.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 61, i32 noundef %shr90.i.i) #6
  %or92.i.i = or i32 %or87.i.i, %call91.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %and95.i.i = and i32 %3, 255
  %call96.i.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 62, i32 noundef %and95.i.i) #6
  %or97.i.i = or i32 %or92.i.i, %call96.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  %shr100.i.i = lshr i32 %3, 8
  %call101.i.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 63, i32 noundef %shr100.i.i) #6
  %or102.i.i = or i32 %or97.i.i, %call101.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or102.i.i)
  %cmp.i = icmp slt i32 %or102.i.i, 0
  br i1 %cmp.i, label %lt8912_video_setup.exit.i.lt8912_video_on.exit_crit_edge, label %if.end.i

lt8912_video_setup.exit.i.lt8912_video_on.exit_crit_edge: ; preds = %lt8912_video_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_video_on.exit

if.end.i:                                         ; preds = %lt8912_video_setup.exit.i
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %seq.i.i) #6
  %54 = call ptr @memcpy(ptr %seq.i.i, ptr @__const.lt8912_write_dds_config.seq, i32 540)
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i2.i = call i32 @regmap_multi_reg_write(ptr noundef %56, ptr noundef nonnull %seq.i.i, i32 noundef 45) #6
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %seq.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp2.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp2.i, label %if.end.i.lt8912_video_on.exit_crit_edge, label %if.end4.i

if.end.i.lt8912_video_on.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_video_on.exit

if.end4.i:                                        ; preds = %if.end.i
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 1332
  %57 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i.i, align 8
  %call.i3.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 3, i32 noundef 127) #6
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %59 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i, align 8
  %call3.i.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 3, i32 noundef 255) #6
  %or.i4.i = or i32 %call3.i.i, %call.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i4.i)
  %cmp6.i = icmp slt i32 %or.i4.i, 0
  br i1 %cmp6.i, label %if.end4.i.lt8912_video_on.exit_crit_edge, label %if.end8.i

if.end4.i.lt8912_video_on.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_video_on.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %seq.i5.i) #6
  %61 = call ptr @memcpy(ptr %seq.i5.i, ptr @__const.lt8912_write_lvds_config.seq, i32 216)
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i7.i = call i32 @regmap_multi_reg_write(ptr noundef %63, ptr noundef nonnull %seq.i5.i, i32 noundef 18) #6
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %seq.i5.i) #6
  br label %lt8912_video_on.exit

lt8912_video_on.exit:                             ; preds = %if.end8.i, %if.end4.i.lt8912_video_on.exit_crit_edge, %if.end.i.lt8912_video_on.exit_crit_edge, %lt8912_video_setup.exit.i.lt8912_video_on.exit_crit_edge, %entry.lt8912_video_on.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_bridge_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi_port = getelementptr i8, ptr %bridge, i32 1344
  %0 = ptrtoint ptr %hdmi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi_port, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @drm_bridge_detect(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #6
  %4 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !98
  %regmap.i = getelementptr i8, ptr %bridge, i32 1332
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 193, ptr noundef nonnull %reg_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.lt8912_check_cable_status.exit_crit_edge

if.end.lt8912_check_cable_status.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_check_cable_status.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val.i, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool1.not.i, i32 2, i32 1
  br label %lt8912_check_cable_status.exit

lt8912_check_cable_status.exit:                   ; preds = %if.end.i, %if.end.lt8912_check_cable_status.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %if.end.lt8912_check_cable_status.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lt8912_check_cable_status.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %retval.0.i, %lt8912_check_cable_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lt8912_bridge_get_edid(ptr nocapture noundef readonly %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi_port = getelementptr i8, ptr %bridge, i32 1344
  %0 = ptrtoint ptr %hdmi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi_port, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @drm_bridge_get_edid(ptr noundef %1, ptr noundef %connector) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi_port = getelementptr i8, ptr %connector, i32 1060
  %0 = ptrtoint ptr %hdmi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi_port, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @drm_bridge_detect(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #6
  %4 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !98
  %regmap.i = getelementptr i8, ptr %connector, i32 1048
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 193, ptr noundef nonnull %reg_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.lt8912_check_cable_status.exit_crit_edge

if.end.lt8912_check_cable_status.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lt8912_check_cable_status.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val.i, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool1.not.i, i32 2, i32 1
  br label %lt8912_check_cable_status.exit

lt8912_check_cable_status.exit:                   ; preds = %if.end.i, %if.end.lt8912_check_cable_status.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %if.end.lt8912_check_cable_status.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lt8912_check_cable_status.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %retval.0.i, %lt8912_check_cable_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt8912_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %bus_format = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_format) #6
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4106, ptr %bus_format, align 4
  %hdmi_port = getelementptr i8, ptr %connector, i32 1060
  %1 = ptrtoint ptr %hdmi_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmi_port, align 4
  %call1 = tail call ptr @drm_bridge_get_edid(ptr noundef %2, ptr noundef %connector) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call1) #6
  %call3 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call1) #6
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %call4 = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull %bus_format, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, i32 %call3, i32 %call4
  call void @kfree(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lt8912_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %1)
  %cmp = icmp sgt i32 %1, 150000
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %3)
  %cmp1 = icmp ugt i16 %3, 1920
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %5)
  %cmp6 = icmp ugt i16 %5, 1080
  %. = select i1 %cmp6, i32 19, i32 0
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 15, %entry.return_crit_edge ], [ 18, %if.end.return_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_lontium_lt8912b__307_752_lt8912_i2c_driver_init6, !1, !"__initcall__kmod_lontium_lt8912b__307_752_lt8912_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 752, i32 1}
!2 = !{ptr @__exitcall_lt8912_i2c_driver_exit, !1, !"__exitcall_lt8912_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 754, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 755, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 756, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 745, i32 11}
!12 = !{ptr @lt8912_i2c_driver, !13, !"lt8912_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 743, i32 26}
!14 = !{ptr @lt8912_probe.lt, !15, !"lt", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 677, i32 24}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 612, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 616, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lt8912_parse_dt._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lt8912_parse_dt._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 625, i32 53}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 628, i32 3}
!30 = !{ptr @lt8912_parse_dt._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lt8912_parse_dt._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 635, i32 3}
!34 = !{ptr @lt8912_parse_dt._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lt8912_parse_dt._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 641, i32 3}
!38 = !{ptr @lt8912_parse_dt._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lt8912_parse_dt._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 648, i32 3}
!42 = !{ptr @lt8912_parse_dt._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lt8912_parse_dt._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 653, i32 42}
!46 = !{ptr @lt8912_parse_dt._entry.21, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 654, i32 3}
!48 = !{ptr @lt8912_parse_dt._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @lt8912_init_i2c._key, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 231, i32 19}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lt8912_regmap_config, !53, !"lt8912_regmap_config", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 202, i32 35}
!54 = !{ptr @lt8912_bridge_funcs, !55, !"lt8912_bridge_funcs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 594, i32 38}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 534, i32 4}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lt8912_bridge_attach._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @lt8912_bridge_attach._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @lt8912_connector_funcs, !62, !"lt8912_connector_funcs", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 387, i32 41}
!63 = !{ptr @lt8912_connector_helper_funcs, !64, !"lt8912_connector_helper_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 437, i32 48}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 590, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lt8912_bridge_get_edid._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @lt8912_bridge_get_edid._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 471, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @lt8912_attach_dsi._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @lt8912_attach_dsi._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 478, i32 3}
!78 = !{ptr @lt8912_attach_dsi._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lt8912_attach_dsi._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 494, i32 3}
!82 = !{ptr @lt8912_attach_dsi._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lt8912_attach_dsi._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @lt8912_dt_match, !85, !"lt8912_dt_match", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 731, i32 34}
!86 = !{ptr @lt8912_id, !87, !"lt8912_id", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/lontium-lt8912b.c", i32 737, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
!98 = !{!"auto-init"}
