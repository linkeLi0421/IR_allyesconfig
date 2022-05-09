; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/lontium-lt9611.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/lontium-lt9611.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.lt9611_mode = type { i16, i16, i8, i8, i8 }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lt9611 = type { ptr, %struct.drm_bridge, %struct.drm_connector, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i8, i8, [2 x %struct.regulator_bulk_data], ptr, i32, [256 x i8], i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }

@__initcall__kmod_lontium_lt9611__313_1219_lt9611_driver_init6 = internal global ptr @lt9611_driver_init, section ".initcall6.init", align 4
@lt9611_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lt9611_probe, ptr @lt9611_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lt9611_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lt9611_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lt9611_driver_exit = internal global ptr @lt9611_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file314 = internal constant [58 x i8] c"lontium_lt9611.file=drivers/gpu/drm/bridge/lontium-lt9611\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [30 x i8] c"lontium_lt9611.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lt9611\00", [25 x i8] zeroinitializer }, align 32
@lt9611_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lontium,lt9611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lt9611_id = internal global { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lontium,lt9611\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lt9611_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device doesn't support I2C\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lt9611_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/bridge/lontium-lt9611.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lt9611_probe._entry_ptr = internal global ptr @lt9611_probe._entry, section ".printk_index", align 4
@lt9611_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lt9611_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @lt9611_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lontium_lt9611:1097:(&lt9611_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@lt9611_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap i2c init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@lt9611_probe._entry_ptr.9 = internal global ptr @lt9611_probe._entry.7, section ".printk_index", align 4
@lt9611_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to parse device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@lt9611_probe._entry_ptr.12 = internal global ptr @lt9611_probe._entry.10, section ".printk_index", align 4
@lt9611_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read chip rev\0A\00", [39 x i8] zeroinitializer }, align 32
@lt9611_probe._entry_ptr.15 = internal global ptr @lt9611_probe._entry.13, section ".printk_index", align 4
@lt9611_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@lt9611_probe._entry_ptr.18 = internal global ptr @lt9611_probe._entry.16, section ".printk_index", align 4
@lt9611_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @lt9611_bridge_attach, ptr null, ptr @lt9611_bridge_mode_valid, ptr null, ptr @lt9611_bridge_disable, ptr @lt9611_bridge_post_disable, ptr @lt9611_bridge_mode_set, ptr null, ptr @lt9611_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lt9611_bridge_detect, ptr null, ptr @lt9611_bridge_get_edid, ptr null, ptr @lt9611_bridge_hpd_enable, ptr null }, [60 x i8] zeroinitializer }, align 32
@lt9611_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.19, i32 0, i32 34303, i32 255, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_range\00", [17 x i8] zeroinitializer }, align 32
@lt9611_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 936, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get remote node for primary dsi\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lt9611_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@lt9611_parse_dt._entry_ptr = internal global ptr @lt9611_parse_dt._entry, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lt,ac-mode\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lt9611_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 953, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to acquire reset gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lt9611_gpio_init\00", [47 x i8] zeroinitializer }, align 32
@lt9611_gpio_init._entry_ptr = internal global ptr @lt9611_gpio_init._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lt9611_gpio_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire enable gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@lt9611_gpio_init._entry_ptr.29 = internal global ptr @lt9611_gpio_init._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@lt9611_read_device_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read revision: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lt9611_read_device_rev\00", [41 x i8] zeroinitializer }, align 32
@lt9611_read_device_rev._entry_ptr = internal global ptr @lt9611_read_device_rev._entry, section ".printk_index", align 4
@lt9611_read_device_rev._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 977, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LT9611 revision: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lt9611_read_device_rev._entry_ptr.37 = internal global ptr @lt9611_read_device_rev._entry.34, section ".printk_index", align 4
@lt9611_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 401, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi cable disconnected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lt9611_irq_thread_handler\00", [38 x i8] zeroinitializer }, align 32
@lt9611_irq_thread_handler._entry_ptr = internal global ptr @lt9611_irq_thread_handler._entry, section ".printk_index", align 4
@lt9611_irq_thread_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 409, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdmi cable connected\0A\00", [42 x i8] zeroinitializer }, align 32
@lt9611_irq_thread_handler._entry_ptr.42 = internal global ptr @lt9611_irq_thread_handler._entry.40, section ".printk_index", align 4
@lt9611_irq_thread_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 420, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"video input changed\0A\00", [43 x i8] zeroinitializer }, align 32
@lt9611_irq_thread_handler._entry_ptr.45 = internal global ptr @lt9611_irq_thread_handler._entry.43, section ".printk_index", align 4
@lt9611_bridge_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @lt9611_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@lt9611_bridge_connector_helper_funcs = internal global { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @lt9611_connector_get_modes, ptr null, ptr @lt9611_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@__const.lt9611_power_on.seq = private unnamed_addr constant [15 x %struct.reg_sequence] [%struct.reg_sequence { i32 33025, i32 24, i32 0 }, %struct.reg_sequence { i32 33307, i32 105, i32 0 }, %struct.reg_sequence { i32 33308, i32 120, i32 0 }, %struct.reg_sequence { i32 33483, i32 105, i32 0 }, %struct.reg_sequence { i32 33484, i32 120, i32 0 }, %struct.reg_sequence { i32 33361, i32 1, i32 0 }, %struct.reg_sequence { i32 33368, i32 10, i32 0 }, %struct.reg_sequence { i32 33369, i32 128, i32 0 }, %struct.reg_sequence { i32 33438, i32 247, i32 0 }, %struct.reg_sequence { i32 32772, i32 240, i32 0 }, %struct.reg_sequence { i32 32774, i32 240, i32 0 }, %struct.reg_sequence { i32 32778, i32 128, i32 0 }, %struct.reg_sequence { i32 32779, i32 64, i32 0 }, %struct.reg_sequence { i32 32781, i32 239, i32 0 }, %struct.reg_sequence { i32 32785, i32 250, i32 0 }], align 4
@lt9611_get_edid_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edid read failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lt9611_get_edid_block\00", [42 x i8] zeroinitializer }, align 32
@lt9611_get_edid_block._entry_ptr = internal global ptr @lt9611_get_edid_block._entry, section ".printk_index", align 4
@lt9611_read_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read edid failed: no ack\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lt9611_read_edid\00", [47 x i8] zeroinitializer }, align 32
@lt9611_read_edid._entry_ptr = internal global ptr @lt9611_read_edid._entry, section ".printk_index", align 4
@lt9611_read_edid._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read edid failed: access not done\0A\00", [61 x i8] zeroinitializer }, align 32
@lt9611_read_edid._entry_ptr.54 = internal global ptr @lt9611_read_edid._entry.52, section ".printk_index", align 4
@lt9611_modes = internal global { [7 x %struct.lt9611_mode], [40 x i8] } { [7 x %struct.lt9611_mode] [%struct.lt9611_mode { i16 3840, i16 2160, i8 30, i8 4, i8 2 }, %struct.lt9611_mode { i16 1920, i16 1080, i8 60, i8 4, i8 1 }, %struct.lt9611_mode { i16 1920, i16 1080, i8 30, i8 3, i8 1 }, %struct.lt9611_mode { i16 1920, i16 1080, i8 24, i8 3, i8 1 }, %struct.lt9611_mode { i16 720, i16 480, i8 60, i8 4, i8 1 }, %struct.lt9611_mode { i16 720, i16 576, i8 50, i8 2, i8 1 }, %struct.lt9611_mode { i16 640, i16 480, i8 60, i8 2, i8 1 }], [40 x i8] zeroinitializer }, align 32
@lt9611_bridge_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"video on failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lt9611_bridge_disable\00", [42 x i8] zeroinitializer }, align 32
@lt9611_bridge_disable._entry_ptr = internal global ptr @lt9611_bridge_disable._entry, section ".printk_index", align 4
@lt9611_bridge_disable._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power on failed\0A\00", [47 x i8] zeroinitializer }, align 32
@lt9611_bridge_disable._entry_ptr.59 = internal global ptr @lt9611_bridge_disable._entry.57, section ".printk_index", align 4
@__const.lt9611_sleep_setup.sleep_setup = private unnamed_addr constant [10 x %struct.reg_sequence] [%struct.reg_sequence { i32 32804, i32 118, i32 0 }, %struct.reg_sequence { i32 32803, i32 1, i32 0 }, %struct.reg_sequence { i32 33111, i32 3, i32 0 }, %struct.reg_sequence { i32 33097, i32 11, i32 0 }, %struct.reg_sequence { i32 33105, i32 48, i32 0 }, %struct.reg_sequence { i32 33026, i32 72, i32 0 }, %struct.reg_sequence { i32 33059, i32 128, i32 0 }, %struct.reg_sequence { i32 33072, i32 0, i32 0 }, %struct.reg_sequence { i32 33024, i32 1, i32 0 }, %struct.reg_sequence { i32 33025, i32 0, i32 0 }], align 4
@__const.lt9611_mipi_input_digital.reg_cfg = private unnamed_addr constant [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 33536, i32 0, i32 0 }, %struct.reg_sequence { i32 33546, i32 0, i32 0 }, %struct.reg_sequence { i32 33359, i32 128, i32 0 }, %struct.reg_sequence { i32 33360, i32 16, i32 0 }, %struct.reg_sequence { i32 33538, i32 10, i32 0 }, %struct.reg_sequence { i32 33542, i32 10, i32 0 }], align 4
@__const.lt9611_pll_setup.reg_cfg = private unnamed_addr constant [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 33059, i32 64, i32 0 }, %struct.reg_sequence { i32 33060, i32 100, i32 0 }, %struct.reg_sequence { i32 33061, i32 128, i32 0 }, %struct.reg_sequence { i32 33062, i32 85, i32 0 }, %struct.reg_sequence { i32 33068, i32 55, i32 0 }, %struct.reg_sequence { i32 33071, i32 1, i32 0 }, %struct.reg_sequence { i32 33062, i32 85, i32 0 }, %struct.reg_sequence { i32 33063, i32 102, i32 0 }, %struct.reg_sequence { i32 33064, i32 136, i32 0 }], align 4
@__const.lt9611_pcr_setup.reg_cfg = private unnamed_addr constant [12 x %struct.reg_sequence] [%struct.reg_sequence { i32 33547, i32 1, i32 0 }, %struct.reg_sequence { i32 33548, i32 16, i32 0 }, %struct.reg_sequence { i32 33608, i32 0, i32 0 }, %struct.reg_sequence { i32 33609, i32 129, i32 0 }, %struct.reg_sequence { i32 33569, i32 74, i32 0 }, %struct.reg_sequence { i32 33572, i32 113, i32 0 }, %struct.reg_sequence { i32 33573, i32 48, i32 0 }, %struct.reg_sequence { i32 33578, i32 1, i32 0 }, %struct.reg_sequence { i32 33610, i32 64, i32 0 }, %struct.reg_sequence { i32 33565, i32 16, i32 0 }, %struct.reg_sequence { i32 33581, i32 56, i32 0 }, %struct.reg_sequence { i32 33585, i32 8, i32 0 }], align 4
@__const.lt9611_pcr_setup.reg_cfg2 = private unnamed_addr constant [10 x %struct.reg_sequence] [%struct.reg_sequence { i32 33547, i32 3, i32 0 }, %struct.reg_sequence { i32 33548, i32 208, i32 0 }, %struct.reg_sequence { i32 33608, i32 3, i32 0 }, %struct.reg_sequence { i32 33609, i32 224, i32 0 }, %struct.reg_sequence { i32 33572, i32 114, i32 0 }, %struct.reg_sequence { i32 33573, i32 0, i32 0 }, %struct.reg_sequence { i32 33578, i32 1, i32 0 }, %struct.reg_sequence { i32 33610, i32 16, i32 0 }, %struct.reg_sequence { i32 33565, i32 16, i32 0 }, %struct.reg_sequence { i32 33574, i32 55, i32 0 }], align 4
@lt9611_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.60, ptr @.str.3, i32 708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lt9611_bridge_enable\00", [43 x i8] zeroinitializer }, align 32
@lt9611_bridge_enable._entry_ptr = internal global ptr @lt9611_bridge_enable._entry, section ".printk_index", align 4
@__const.lt9611_mipi_input_analog.reg_cfg = private unnamed_addr constant [8 x %struct.reg_sequence] [%struct.reg_sequence { i32 33030, i32 64, i32 0 }, %struct.reg_sequence { i32 33034, i32 254, i32 0 }, %struct.reg_sequence { i32 33035, i32 191, i32 0 }, %struct.reg_sequence { i32 33041, i32 64, i32 0 }, %struct.reg_sequence { i32 33045, i32 254, i32 0 }, %struct.reg_sequence { i32 33046, i32 191, i32 0 }, %struct.reg_sequence { i32 33052, i32 3, i32 0 }, %struct.reg_sequence { i32 33056, i32 3, i32 0 }], align 4
@__const.lt9611_hdmi_tx_phy.reg_cfg = private unnamed_addr constant [14 x %struct.reg_sequence] [%struct.reg_sequence { i32 33072, i32 106, i32 0 }, %struct.reg_sequence { i32 33073, i32 68, i32 0 }, %struct.reg_sequence { i32 33074, i32 74, i32 0 }, %struct.reg_sequence { i32 33075, i32 11, i32 0 }, %struct.reg_sequence { i32 33076, i32 0, i32 0 }, %struct.reg_sequence { i32 33077, i32 0, i32 0 }, %struct.reg_sequence { i32 33078, i32 0, i32 0 }, %struct.reg_sequence { i32 33079, i32 68, i32 0 }, %struct.reg_sequence { i32 33087, i32 15, i32 0 }, %struct.reg_sequence { i32 33088, i32 160, i32 0 }, %struct.reg_sequence { i32 33089, i32 160, i32 0 }, %struct.reg_sequence { i32 33090, i32 160, i32 0 }, %struct.reg_sequence { i32 33091, i32 160, i32 0 }, %struct.reg_sequence { i32 33092, i32 10, i32 0 }], align 4
@lt9611_video_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 345, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"video check: hactive_a=%d, hactive_b=%d, vactive=%d, v_total=%d, h_total_sysclk=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lt9611_video_check\00", [45 x i8] zeroinitializer }, align 32
@lt9611_video_check._entry_ptr = internal global ptr @lt9611_video_check._entry, section ".printk_index", align 4
@lt9611_video_check._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read video check error\0A\00", [40 x i8] zeroinitializer }, align 32
@lt9611_video_check._entry_ptr.65 = internal global ptr @lt9611_video_check._entry.63, section ".printk_index", align 4
@__const.lt9611_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"lt9611\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@lt9611_attach_dsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lt9611_attach_dsi\00", [46 x i8] zeroinitializer }, align 32
@lt9611_attach_dsi._entry_ptr = internal global ptr @lt9611_attach_dsi._entry, section ".printk_index", align 4
@lt9611_attach_dsi._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@lt9611_attach_dsi._entry_ptr.70 = internal global ptr @lt9611_attach_dsi._entry.68, section ".printk_index", align 4
@lt9611_attach_dsi._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach dsi to host\0A\00", [34 x i8] zeroinitializer }, align 32
@lt9611_attach_dsi._entry_ptr.73 = internal global ptr @lt9611_attach_dsi._entry.71, section ".printk_index", align 4
@codec_data = internal global { %struct.hdmi_codec_pdata, [16 x i8] } { %struct.hdmi_codec_pdata { ptr @lt9611_codec_ops, i8 -128, i32 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@lt9611_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @lt9611_audio_startup, ptr @lt9611_hdmi_hw_params, ptr null, ptr @lt9611_audio_shutdown, ptr null, ptr null, ptr @lt9611_hdmi_i2s_get_dai_id, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 640, i64 1920, i64 3840]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 48000, i64 96000]
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"lt9611_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1210, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1212, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"lt9611_match_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1204, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"lt9611_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1198, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1085, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"lt9611_regmap_config\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 77, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1097, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1099, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1105, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1127, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1135, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"lt9611_bridge_funcs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 919, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"lt9611_ranges\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 64, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 66, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 936, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 942, i32 56 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 951, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 953, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 957, i32 53 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 960, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 536, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 537, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 975, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 977, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 401, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 409, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 420, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [30 x i8] c"lt9611_bridge_connector_funcs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 748, i32 41 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 800, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [37 x i8] c"lt9611_bridge_connector_helper_funcs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 743, i32 28 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 809, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 667, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 634, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 639, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"lt9611_modes\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 93, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 732, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 737, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 708, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 343, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 350, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 768, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 774, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 785, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [11 x i8] c"codec_data\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1052, i32 32 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1062, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"lt9611_codec_ops\00", align 1
@___asan_gen_.329 = private constant [43 x i8] c"../drivers/gpu/drm/bridge/lontium-lt9611.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1045, i32 36 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_lt9611_driver_exit, ptr @__initcall__kmod_lontium_lt9611__313_1219_lt9611_driver_init6, ptr @lt9611_attach_dsi._entry, ptr @lt9611_attach_dsi._entry.68, ptr @lt9611_attach_dsi._entry.71, ptr @lt9611_attach_dsi._entry_ptr, ptr @lt9611_attach_dsi._entry_ptr.70, ptr @lt9611_attach_dsi._entry_ptr.73, ptr @lt9611_bridge_disable._entry, ptr @lt9611_bridge_disable._entry.57, ptr @lt9611_bridge_disable._entry_ptr, ptr @lt9611_bridge_disable._entry_ptr.59, ptr @lt9611_bridge_enable._entry, ptr @lt9611_bridge_enable._entry_ptr, ptr @lt9611_driver_exit, ptr @lt9611_get_edid_block._entry, ptr @lt9611_get_edid_block._entry_ptr, ptr @lt9611_gpio_init._entry, ptr @lt9611_gpio_init._entry.27, ptr @lt9611_gpio_init._entry_ptr, ptr @lt9611_gpio_init._entry_ptr.29, ptr @lt9611_irq_thread_handler._entry, ptr @lt9611_irq_thread_handler._entry.40, ptr @lt9611_irq_thread_handler._entry.43, ptr @lt9611_irq_thread_handler._entry_ptr, ptr @lt9611_irq_thread_handler._entry_ptr.42, ptr @lt9611_irq_thread_handler._entry_ptr.45, ptr @lt9611_parse_dt._entry, ptr @lt9611_parse_dt._entry_ptr, ptr @lt9611_probe._entry, ptr @lt9611_probe._entry.10, ptr @lt9611_probe._entry.13, ptr @lt9611_probe._entry.16, ptr @lt9611_probe._entry.7, ptr @lt9611_probe._entry_ptr, ptr @lt9611_probe._entry_ptr.12, ptr @lt9611_probe._entry_ptr.15, ptr @lt9611_probe._entry_ptr.18, ptr @lt9611_probe._entry_ptr.9, ptr @lt9611_read_device_rev._entry, ptr @lt9611_read_device_rev._entry.34, ptr @lt9611_read_device_rev._entry_ptr, ptr @lt9611_read_device_rev._entry_ptr.37, ptr @lt9611_read_edid._entry, ptr @lt9611_read_edid._entry.52, ptr @lt9611_read_edid._entry_ptr, ptr @lt9611_read_edid._entry_ptr.54, ptr @lt9611_video_check._entry, ptr @lt9611_video_check._entry.63, ptr @lt9611_video_check._entry_ptr, ptr @lt9611_video_check._entry_ptr.65, ptr @lt9611_driver, ptr @.str, ptr @lt9611_match_table, ptr @lt9611_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lt9611_probe._key, ptr @lt9611_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @lt9611_bridge_funcs, ptr @lt9611_ranges, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @lt9611_bridge_connector_funcs, ptr @.str.46, ptr @lt9611_bridge_connector_helper_funcs, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @lt9611_modes, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @codec_data, ptr @.str.74, ptr @lt9611_codec_ops], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_gpio_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_read_device_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_read_device_rev._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_irq_thread_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_irq_thread_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_get_edid_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_read_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_read_edid._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_disable._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_video_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_video_check._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_attach_dsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_attach_dsi._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_attach_dsi._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lt9611_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lt9611_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %val.i = alloca i32, align 4
  %rev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1664, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 8
  %client8 = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 15
  %7 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client8, align 8
  %sleep = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %sleep to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %sleep, align 1
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lt9611_regmap_config, ptr noundef nonnull @lt9611_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i143 = tail call ptr @of_graph_get_remote_node(ptr noundef %16, i32 noundef 0, i32 noundef -1) #5
  %dsi0_node.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i143, ptr %dsi0_node.i, align 4
  %tobool.not.i = icmp eq ptr %call.i143, null
  br i1 %tobool.not.i, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call4.i = tail call ptr @of_graph_get_remote_node(ptr noundef %21, i32 noundef 1, i32 noundef -1) #5
  %dsi1_node.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4.i, ptr %dsi1_node.i, align 8
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call.i.i144 = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.22, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i.i144, null
  %ac_mode.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 9
  %frombool.i = zext i1 %tobool.i.i to i8
  %25 = ptrtoint ptr %ac_mode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.i, ptr %ac_mode.i, align 8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %call.i145 = tail call ptr @devm_gpiod_get(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef 7) #5
  %reset_gpio.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i145, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end27.lt9611_gpio_init.exit_crit_edge, label %if.end.i147

if.end27.lt9611_gpio_init.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_gpio_init.exit

if.end.i147:                                      ; preds = %if.end27
  %call6.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 3) #5
  %enable_gpio.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call6.i, ptr %enable_gpio.i, align 8
  %cmp.i25.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.end.i147.lt9611_gpio_init.exit_crit_edge, label %if.end.i147.if.end30_crit_edge

if.end.i147.if.end30_crit_edge:                   ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end.i147.lt9611_gpio_init.exit_crit_edge:      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_gpio_init.exit

lt9611_gpio_init.exit:                            ; preds = %if.end.i147.lt9611_gpio_init.exit_crit_edge, %if.end27.lt9611_gpio_init.exit_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %if.end27.lt9611_gpio_init.exit_crit_edge ], [ @.str.28, %if.end.i147.lt9611_gpio_init.exit_crit_edge ]
  %retval.0.i148.in.in = phi ptr [ %reset_gpio.i, %if.end27.lt9611_gpio_init.exit_crit_edge ], [ %enable_gpio.i, %if.end.i147.lt9611_gpio_init.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.24.sink) #8
  %30 = ptrtoint ptr %retval.0.i148.in.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.0.i148.in = load ptr, ptr %retval.0.i148.in.in, align 4
  %retval.0.i148 = ptrtoint ptr %retval.0.i148.in to i32
  %cmp = icmp slt ptr %retval.0.i148.in, null
  br i1 %cmp, label %lt9611_gpio_init.exit.err_of_put_crit_edge, label %lt9611_gpio_init.exit.if.end30_crit_edge

lt9611_gpio_init.exit.if.end30_crit_edge:         ; preds = %lt9611_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

lt9611_gpio_init.exit.err_of_put_crit_edge:       ; preds = %lt9611_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_of_put

if.end30:                                         ; preds = %lt9611_gpio_init.exit.if.end30_crit_edge, %if.end.i147.if.end30_crit_edge
  %supplies.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.30, ptr %supplies.i, align 8
  %arrayidx2.i = getelementptr %struct.lt9611, ptr %call.i, i32 0, i32 14, i32 1
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.31, ptr %arrayidx2.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %call.i149 = tail call i32 @devm_regulator_bulk_get(ptr noundef %34, i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp.i150 = icmp slt i32 %call.i149, 0
  br i1 %cmp.i150, label %if.end30.err_of_put_crit_edge, label %lt9611_regulator_init.exit

if.end30.err_of_put_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_of_put

lt9611_regulator_init.exit:                       ; preds = %if.end30
  %consumer.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %35 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %consumer.i, align 4
  %call7.i = tail call i32 @regulator_set_load(ptr noundef %36, i32 noundef 300000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp32 = icmp slt i32 %call7.i, 0
  br i1 %cmp32, label %lt9611_regulator_init.exit.err_of_put_crit_edge, label %if.end34

lt9611_regulator_init.exit.err_of_put_crit_edge:  ; preds = %lt9611_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_of_put

if.end34:                                         ; preds = %lt9611_regulator_init.exit
  %enable_gpio.i153 = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %enable_gpio.i153 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enable_gpio.i153, align 8
  %tobool.not.i154 = icmp eq ptr %38, null
  br i1 %tobool.not.i154, label %if.end34.lt9611_assert_5v.exit_crit_edge, label %if.end.i155

if.end34.lt9611_assert_5v.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_assert_5v.exit

if.end.i155:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %38, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  br label %lt9611_assert_5v.exit

lt9611_assert_5v.exit:                            ; preds = %if.end.i155, %if.end34.lt9611_assert_5v.exit_crit_edge
  %39 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %consumer.i, align 4
  %call.i157 = tail call i32 @regulator_enable(ptr noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i158 = icmp slt i32 %call.i157, 0
  br i1 %cmp.i158, label %lt9611_assert_5v.exit.err_of_put_crit_edge, label %if.end.i160

lt9611_assert_5v.exit.err_of_put_crit_edge:       ; preds = %lt9611_assert_5v.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_of_put

if.end.i160:                                      ; preds = %lt9611_assert_5v.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %consumer3.i = getelementptr %struct.lt9611, ptr %call.i, i32 0, i32 14, i32 1, i32 1
  %41 = ptrtoint ptr %consumer3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %consumer3.i, align 4
  %call4.i159 = tail call i32 @regulator_enable(ptr noundef %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i159)
  %cmp5.i = icmp slt i32 %call4.i159, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end38

if.then6.i:                                       ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %consumer.i, align 4
  %call10.i = tail call i32 @regulator_disable(ptr noundef %44) #5
  br label %err_of_put

if.end38:                                         ; preds = %if.end.i160
  %45 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %46, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %47 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %48, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  %49 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %50, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev.i) #5
  %51 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %rev.i, align 4, !annotation !170
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 8
  %call.i163 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 33006, i32 noundef 1) #5
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 32770, ptr noundef nonnull %rev.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i164 = icmp eq i32 %call2.i, 0
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  br i1 %tobool.not.i164, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.32, i32 noundef %call2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %err_disable_regulators

if.end45:                                         ; preds = %if.end38
  %58 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.35, i32 noundef %59) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call46 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %61, ptr noundef null, ptr noundef nonnull @lt9611_irq_thread_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %err_disable_regulators

if.end52:                                         ; preds = %if.end45
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 1, i32 7
  %63 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @lt9611_bridge_funcs, ptr %funcs, align 4
  %64 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node.i, align 8
  %of_node55 = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %of_node55 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %of_node55, align 4
  %ops = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 1, i32 9
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 15, ptr %ops, align 4
  %type = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 1, i32 10
  %68 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 11, ptr %type, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #5
  %69 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dsi0_node.i, align 4
  %call59 = call fastcc ptr @lt9611_attach_dsi(ptr noundef nonnull %call.i, ptr noundef %70)
  %dsi0 = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 6
  %71 = ptrtoint ptr %dsi0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call59, ptr %dsi0, align 4
  %cmp.i167 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.end52.err_remove_bridge_crit_edge, label %if.end65

if.end52.err_remove_bridge_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_bridge

if.end65:                                         ; preds = %if.end52
  %72 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dsi1_node.i, align 8
  %tobool66.not = icmp eq ptr %73, null
  br i1 %tobool66.not, label %if.end65.if.end76_crit_edge, label %if.then67

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then67:                                        ; preds = %if.end65
  %call69 = call fastcc ptr @lt9611_attach_dsi(ptr noundef nonnull %call.i, ptr noundef nonnull %73)
  %dsi1 = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 7
  %74 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call69, ptr %dsi1, align 8
  %cmp.i168 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then67.err_remove_bridge_crit_edge, label %if.then67.if.end76_crit_edge

if.then67.if.end76_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then67.err_remove_bridge_crit_edge:            ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_bridge

if.end76:                                         ; preds = %if.then67.if.end76_crit_edge, %if.end65.if.end76_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %75 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %val.i, align 4, !annotation !170
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 8
  %call.i170 = call i32 @regmap_read(ptr noundef %77, i32 noundef 33283, ptr noundef nonnull %val.i) #5
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  %and.i171 = and i32 %79, -193
  store i32 %and.i171, ptr %val.i, align 4
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 8
  %call2.i172 = call i32 @regmap_write(ptr noundef %81, i32 noundef 33283, i32 noundef %and.i171) #5
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 8
  %call4.i173 = call i32 @regmap_write(ptr noundef %83, i32 noundef 33287, i32 noundef 255) #5
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 8
  %call6.i174 = call i32 @regmap_write(ptr noundef %85, i32 noundef 33287, i32 noundef 63) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  store ptr %call.i, ptr getelementptr inbounds (%struct.hdmi_codec_pdata, ptr @codec_data, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %86 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %87 = call ptr @memset(ptr %86, i32 255, i32 48)
  %88 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %86, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.74, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %93 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %95 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @codec_data, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %96 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %97 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %98 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %audio_pdev.i = getelementptr inbounds %struct.lt9611, ptr %call.i, i32 0, i32 8
  %99 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %100 = ptrtoint ptr %call.i.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %100, i32 0
  br label %cleanup

err_remove_bridge:                                ; preds = %if.then67.err_remove_bridge_crit_edge, %if.end52.err_remove_bridge_crit_edge
  %ret.0.in = phi ptr [ %call59, %if.end52.err_remove_bridge_crit_edge ], [ %call69, %if.then67.err_remove_bridge_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @drm_bridge_remove(ptr noundef %bridge) #5
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %err_remove_bridge, %do.end51, %do.end44
  %ret.1 = phi i32 [ %call2.i, %do.end44 ], [ %call46, %do.end51 ], [ %ret.0, %err_remove_bridge ]
  %call79 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  br label %err_of_put

err_of_put:                                       ; preds = %err_disable_regulators, %if.then6.i, %lt9611_assert_5v.exit.err_of_put_crit_edge, %lt9611_regulator_init.exit.err_of_put_crit_edge, %if.end30.err_of_put_crit_edge, %lt9611_gpio_init.exit.err_of_put_crit_edge
  %ret.2 = phi i32 [ %retval.0.i148, %lt9611_gpio_init.exit.err_of_put_crit_edge ], [ %call7.i, %lt9611_regulator_init.exit.err_of_put_crit_edge ], [ %ret.1, %err_disable_regulators ], [ %call.i149, %if.end30.err_of_put_crit_edge ], [ %call.i157, %lt9611_assert_5v.exit.err_of_put_crit_edge ], [ %call4.i159, %if.then6.i ]
  %101 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dsi1_node.i, align 8
  call void @of_node_put(ptr noundef %102) #5
  %103 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dsi0_node.i, align 4
  call void @of_node_put(ptr noundef %104) #5
  br label %cleanup

cleanup:                                          ; preds = %err_of_put, %if.end76, %do.end26, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end15 ], [ -19, %do.end26 ], [ %ret.2, %err_of_put ], [ %spec.select.i.i, %if.end76 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %audio_pdev.i = getelementptr inbounds %struct.lt9611, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio_pdev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.lt9611_audio_exit.exit_crit_edge, label %if.then.i

entry.lt9611_audio_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_audio_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #5
  %6 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %audio_pdev.i, align 4
  br label %lt9611_audio_exit.exit

lt9611_audio_exit.exit:                           ; preds = %if.then.i, %entry.lt9611_audio_exit.exit_crit_edge
  %bridge = getelementptr inbounds %struct.lt9611, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  %supplies = getelementptr inbounds %struct.lt9611, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  %dsi1_node = getelementptr inbounds %struct.lt9611, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dsi1_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsi1_node, align 8
  tail call void @of_node_put(ptr noundef %8) #5
  %dsi0_node = getelementptr inbounds %struct.lt9611, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %dsi0_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsi0_node, align 4
  tail call void @of_node_put(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_irq_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irq_flag0 = alloca i32, align 4
  %irq_flag3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_flag0) #5
  %0 = ptrtoint ptr %irq_flag0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_flag0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_flag3) #5
  %1 = ptrtoint ptr %irq_flag3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %irq_flag3, align 4
  %regmap = getelementptr inbounds %struct.lt9611, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 33295, ptr noundef nonnull %irq_flag3) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 33292, ptr noundef nonnull %irq_flag0) #5
  %6 = ptrtoint ptr %irq_flag3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_flag3, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.38) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call4 = call i32 @regmap_write(ptr noundef %11, i32 noundef 33287, i32 noundef 191) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call6 = call i32 @regmap_write(ptr noundef %13, i32 noundef 33287, i32 noundef 63) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %irq_flag3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_flag3, align 4
  %and7 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %do.end12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.41) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call15 = call i32 @regmap_write(ptr noundef %19, i32 noundef 33287, i32 noundef 127) #5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %call17 = call i32 @regmap_write(ptr noundef %21, i32 noundef 33287, i32 noundef 63) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %if.end.if.end18_crit_edge
  %22 = ptrtoint ptr %irq_flag3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_flag3, align 4
  %and19 = and i32 %23, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end18
  %dev21 = getelementptr inbounds %struct.lt9611, ptr %dev_id, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev21, align 4
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %land.lhs.true.if.end26_crit_edge, label %if.then23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %25) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %26 = ptrtoint ptr %irq_flag0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_flag0, align 4
  %and27 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end42_crit_edge, label %do.end32

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.44) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 8
  %call35 = call i32 @regmap_write(ptr noundef %31, i32 noundef 33438, i32 noundef 255) #5
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 8
  %call37 = call i32 @regmap_write(ptr noundef %33, i32 noundef 33438, i32 noundef 247) #5
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %call39 = call i32 @regmap_write(ptr noundef %35, i32 noundef 33284, i32 noundef 255) #5
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 8
  %call41 = call i32 @regmap_write(ptr noundef %37, i32 noundef 33284, i32 noundef 254) #5
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %if.end26.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_flag3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_flag0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lt9611_attach_dsi(ptr nocapture noundef readonly %lt9611, ptr noundef %dsi_node) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #5
  %0 = call ptr @memcpy(ptr %info, ptr @__const.lt9611_attach_dsi.info, i32 28)
  %1 = ptrtoint ptr %lt9611 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lt9611, align 8
  %call = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %dsi_node) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %lt9611 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lt9611, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.66) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %2, ptr noundef nonnull %call, ptr noundef nonnull %info) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %lt9611 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lt9611, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.69) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %call4, i32 0, i32 4
  %7 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %call4, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %call4, i32 0, i32 6
  %9 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 21, ptr %mode_flags, align 8
  %call12 = call i32 @devm_mipi_dsi_attach(ptr noundef %2, ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.72) #8
  %10 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi ptr [ %call4, %do.end9 ], [ %10, %do.end16 ], [ inttoptr (i32 -517 to ptr), %do.end ], [ %call4, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %connector.i = getelementptr i8, ptr %bridge, i32 284
  %call.i = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef %connector.i, ptr noundef nonnull @lt9611_bridge_connector_funcs, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lt9611_connector_init.exit

if.end.i:                                         ; preds = %if.then
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 992
  %2 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @lt9611_bridge_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %3 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder.i, align 4
  %call3.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %4) #5
  %5 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder.i, align 4
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %lt9611_connector_init.exit.thread9, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

lt9611_connector_init.exit.thread9:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47) #5
  br label %cleanup

lt9611_connector_init.exit:                       ; preds = %if.then
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %lt9611_connector_init.exit.cleanup_crit_edge, label %lt9611_connector_init.exit.if.end3_crit_edge

lt9611_connector_init.exit.if.end3_crit_edge:     ; preds = %lt9611_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

lt9611_connector_init.exit.cleanup_crit_edge:     ; preds = %lt9611_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %lt9611_connector_init.exit.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lt9611_connector_init.exit.cleanup_crit_edge, %lt9611_connector_init.exit.thread9
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call.i, %lt9611_connector_init.exit.cleanup_crit_edge ], [ -19, %lt9611_connector_init.exit.thread9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lt9611_find_mode(ptr noundef %mode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %intfs = getelementptr inbounds %struct.lt9611_mode, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %intfs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %intfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.else.if.else5_crit_edge

if.else.if.else5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else5

land.lhs.true:                                    ; preds = %if.else
  %dsi1 = getelementptr i8, ptr %bridge, i32 1340
  %2 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi1, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else5_crit_edge

land.lhs.true.if.else5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else5:                                         ; preds = %land.lhs.true.if.else5_crit_edge, %if.else.if.else5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else5 ], [ -2, %entry.cleanup_crit_edge ], [ 29, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_bridge_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %regmap = getelementptr i8, ptr %bridge, i32 1324
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 33072, i32 noundef 106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 33072, i32 noundef 106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lt9611_power_off.exit.thread, label %do.end7

lt9611_power_off.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %power_on.i = getelementptr i8, ptr %bridge, i32 1360
  %6 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %power_on.i, align 4
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.58) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %lt9611_power_off.exit.thread, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_bridge_post_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %sleep_setup.i = alloca [10 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %sleep_setup.i) #5
  %0 = call ptr @memcpy(ptr %sleep_setup.i, ptr @__const.lt9611_sleep_setup.sleep_setup, i32 120)
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %2, ptr noundef nonnull %sleep_setup.i, i32 noundef 10) #5
  %sleep.i = getelementptr i8, ptr %bridge, i32 1361
  %3 = ptrtoint ptr %sleep.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %sleep.i, align 1
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %sleep_setup.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_bridge_mode_set(ptr noundef %bridge, ptr noundef %mode, ptr nocapture noundef readnone %adj_mode) #2 align 64 {
entry:
  %reg_cfg.i24 = alloca [12 x %struct.reg_sequence], align 4
  %reg_cfg2.i = alloca [10 x %struct.reg_sequence], align 4
  %reg_cfg.i16 = alloca [9 x %struct.reg_sequence], align 4
  %reg_cfg.i = alloca [6 x %struct.reg_sequence], align 4
  %avi_frame = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %avi_frame) #5
  %0 = call ptr @memset(ptr %avi_frame, i32 255, i32 68)
  %sleep.i = getelementptr i8, ptr %bridge, i32 1361
  %1 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sleep.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.lt9611_bridge_pre_enable.exit_crit_edge, label %if.end.i

entry.lt9611_bridge_pre_enable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_bridge_pre_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset_gpio.i.i = getelementptr i8, ptr %bridge, i32 1352
  %3 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %5 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  %7 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 100) #5
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 33006, i32 noundef 1) #5
  %11 = ptrtoint ptr %sleep.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sleep.i, align 1
  br label %lt9611_bridge_pre_enable.exit

lt9611_bridge_pre_enable.exit:                    ; preds = %if.end.i, %entry.lt9611_bridge_pre_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %reg_cfg.i) #5
  %12 = call ptr @memcpy(ptr %reg_cfg.i, ptr @__const.lt9611_mipi_input_digital.reg_cfg, i32 72)
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %13 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %14)
  %cmp.i = icmp eq i16 %14, 3840
  br i1 %cmp.i, label %if.then.i, label %lt9611_bridge_pre_enable.exit.lt9611_mipi_input_digital.exit_crit_edge

lt9611_bridge_pre_enable.exit.lt9611_mipi_input_digital.exit_crit_edge: ; preds = %lt9611_bridge_pre_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_mipi_input_digital.exit

if.then.i:                                        ; preds = %lt9611_bridge_pre_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %def.i = getelementptr inbounds [6 x %struct.reg_sequence], ptr %reg_cfg.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %def.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %def.i, align 4
  br label %lt9611_mipi_input_digital.exit

lt9611_mipi_input_digital.exit:                   ; preds = %if.then.i, %lt9611_bridge_pre_enable.exit.lt9611_mipi_input_digital.exit_crit_edge
  %regmap.i14 = getelementptr i8, ptr %bridge, i32 1324
  %16 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i14, align 8
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %17, ptr noundef nonnull %reg_cfg.i, i32 noundef 6) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %reg_cfg.i) #5
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %reg_cfg.i16) #5
  %20 = call ptr @memcpy(ptr %reg_cfg.i16, ptr @__const.lt9611_pll_setup.reg_cfg, i32 108)
  %21 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i14, align 8
  %call.i18 = call i32 @regmap_multi_reg_write(ptr noundef %22, ptr noundef nonnull %reg_cfg.i16, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %19)
  %cmp.i19 = icmp ugt i32 %19, 150000
  br i1 %cmp.i19, label %if.then.i20, label %if.else.i

if.then.i20:                                      ; preds = %lt9611_mipi_input_digital.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i14, align 8
  %call2.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 33069, i32 noundef 136) #5
  br label %lt9611_pll_setup.exit

if.else.i:                                        ; preds = %lt9611_mipi_input_digital.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %19)
  %cmp3.i = icmp ugt i32 %19, 70000
  %25 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i14, align 8
  br i1 %cmp3.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 33069, i32 noundef 153) #5
  br label %lt9611_pll_setup.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 33069, i32 noundef 170) #5
  br label %lt9611_pll_setup.exit

lt9611_pll_setup.exit:                            ; preds = %if.else7.i, %if.then4.i, %if.then.i20
  %27 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i14, align 8
  %shr.i = lshr i32 %19, 17
  %call12.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 33507, i32 noundef %shr.i) #5
  %29 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i14, align 8
  %shr14.i = lshr i32 %19, 9
  %call15.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 33508, i32 noundef %shr14.i) #5
  %31 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i14, align 8
  %shr17.i = lshr i32 %19, 1
  %call18.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 33509, i32 noundef %shr17.i) #5
  %33 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i14, align 8
  %call20.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 33502, i32 noundef 32) #5
  %35 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i14, align 8
  %call22.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 33502, i32 noundef 224) #5
  %37 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i14, align 8
  %call24.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 32790, i32 noundef 241) #5
  %39 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i14, align 8
  %call26.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 32790, i32 noundef 243) #5
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %reg_cfg.i16) #5
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %41 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %42 to i32
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %43 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vtotal.i, align 4
  %conv1.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hdisplay.i, align 4
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %47 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_end.i, align 4
  %conv3.i = zext i16 %48 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %49 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_start.i, align 2
  %conv4.i = zext i16 %50 to i32
  %sub.i = sub nsw i32 %conv3.i, %conv4.i
  %sub9.i = sub i16 %50, %46
  %add.i = sub nsw i32 %conv.i, %conv3.i
  %sub14.i = add nsw i32 %sub.i, %add.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %51 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vdisplay.i, align 2
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %53 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vsync_end.i, align 2
  %conv16.i = zext i16 %54 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %55 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsync_start.i, align 4
  %conv17.i = zext i16 %56 to i32
  %sub18.i = sub nsw i32 %conv16.i, %conv17.i
  %sub23.i = sub i16 %56, %52
  %add26.i = sub nsw i32 %conv1.i, %conv16.i
  %sub29.i = add nsw i32 %add26.i, %sub18.i
  %57 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i14, align 8
  %div137.i = lshr i16 %44, 8
  %conv30.i = zext i16 %div137.i to i32
  %call.i23 = call i32 @regmap_write(ptr noundef %58, i32 noundef 33549, i32 noundef %conv30.i) #5
  %59 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i14, align 8
  %61 = and i16 %44, 255
  %conv34.i = zext i16 %61 to i32
  %call35.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 33550, i32 noundef %conv34.i) #5
  %62 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i14, align 8
  %div37138.i = lshr i16 %52, 8
  %conv38.i = zext i16 %div37138.i to i32
  %call40.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 33551, i32 noundef %conv38.i) #5
  %64 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i14, align 8
  %66 = and i16 %52, 255
  %conv44.i = zext i16 %66 to i32
  %call45.i = call i32 @regmap_write(ptr noundef %65, i32 noundef 33552, i32 noundef %conv44.i) #5
  %67 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i14, align 8
  %div47139.i = lshr i16 %42, 8
  %conv48.i = zext i16 %div47139.i to i32
  %call50.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 33553, i32 noundef %conv48.i) #5
  %69 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i14, align 8
  %71 = and i16 %42, 255
  %conv54.i = zext i16 %71 to i32
  %call55.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 33554, i32 noundef %conv54.i) #5
  %72 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i14, align 8
  %div57140.i = lshr i16 %46, 8
  %conv58.i = zext i16 %div57140.i to i32
  %call60.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 33555, i32 noundef %conv58.i) #5
  %74 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i14, align 8
  %76 = and i16 %46, 255
  %conv64.i = zext i16 %76 to i32
  %call65.i = call i32 @regmap_write(ptr noundef %75, i32 noundef 33556, i32 noundef %conv64.i) #5
  %77 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i14, align 8
  %conv69.i = and i32 %sub18.i, 255
  %call70.i = call i32 @regmap_write(ptr noundef %78, i32 noundef 33557, i32 noundef %conv69.i) #5
  %79 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i14, align 8
  %conv74.i = and i32 %sub.i, 255
  %call75.i = call i32 @regmap_write(ptr noundef %80, i32 noundef 33558, i32 noundef %conv74.i) #5
  %81 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i14, align 8
  %83 = and i16 %sub23.i, 255
  %conv79.i = zext i16 %83 to i32
  %call80.i = call i32 @regmap_write(ptr noundef %82, i32 noundef 33559, i32 noundef %conv79.i) #5
  %84 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i14, align 8
  %conv84.i = and i32 %sub29.i, 255
  %call85.i = call i32 @regmap_write(ptr noundef %85, i32 noundef 33560, i32 noundef %conv84.i) #5
  %86 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i14, align 8
  %88 = and i16 %sub9.i, 255
  %conv89.i = zext i16 %88 to i32
  %call90.i = call i32 @regmap_write(ptr noundef %87, i32 noundef 33561, i32 noundef %conv89.i) #5
  %89 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i14, align 8
  %div92141.i = lshr i32 %sub14.i, 8
  %conv94.i = and i32 %div92141.i, 255
  %call95.i = call i32 @regmap_write(ptr noundef %90, i32 noundef 33562, i32 noundef %conv94.i) #5
  %91 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i14, align 8
  %conv99.i = and i32 %sub14.i, 255
  %call100.i = call i32 @regmap_write(ptr noundef %92, i32 noundef 33563, i32 noundef %conv99.i) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %reg_cfg.i24) #5
  %93 = call ptr @memcpy(ptr %reg_cfg.i24, ptr @__const.lt9611_pcr_setup.reg_cfg, i32 144)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %reg_cfg2.i) #5
  %94 = call ptr @memcpy(ptr %reg_cfg2.i, ptr @__const.lt9611_pcr_setup.reg_cfg2, i32 120)
  %95 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i14, align 8
  %call.i26 = call i32 @regmap_multi_reg_write(ptr noundef %96, ptr noundef nonnull %reg_cfg.i24, i32 noundef 12) #5
  %97 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %hdisplay.i, align 4
  %99 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i16 %98, label %lt9611_pll_setup.exit.lt9611_pcr_setup.exit_crit_edge [
    i16 640, label %sw.bb.i
    i16 1920, label %sw.bb3.i
    i16 3840, label %sw.bb6.i
  ]

lt9611_pll_setup.exit.lt9611_pcr_setup.exit_crit_edge: ; preds = %lt9611_pll_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_pcr_setup.exit

sw.bb.i:                                          ; preds = %lt9611_pll_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap.i14, align 8
  %call2.i28 = call i32 @regmap_write(ptr noundef %101, i32 noundef 33574, i32 noundef 20) #5
  br label %lt9611_pcr_setup.exit

sw.bb3.i:                                         ; preds = %lt9611_pll_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap.i14, align 8
  %call5.i = call i32 @regmap_write(ptr noundef %103, i32 noundef 33574, i32 noundef 55) #5
  br label %lt9611_pcr_setup.exit

sw.bb6.i:                                         ; preds = %lt9611_pll_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i14, align 8
  %call9.i29 = call i32 @regmap_multi_reg_write(ptr noundef %105, ptr noundef nonnull %reg_cfg2.i, i32 noundef 10) #5
  br label %lt9611_pcr_setup.exit

lt9611_pcr_setup.exit:                            ; preds = %sw.bb6.i, %sw.bb3.i, %sw.bb.i, %lt9611_pll_setup.exit.lt9611_pcr_setup.exit_crit_edge
  %106 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i14, align 8
  %call11.i = call i32 @regmap_write(ptr noundef %107, i32 noundef 32785, i32 noundef 90) #5
  %108 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap.i14, align 8
  %call13.i = call i32 @regmap_write(ptr noundef %109, i32 noundef 32785, i32 noundef 250) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %reg_cfg2.i) #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %reg_cfg.i24) #5
  %connector = getelementptr i8, ptr %bridge, i32 284
  %call3 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %avi_frame, ptr noundef %connector, ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %lt9611_pcr_setup.exit.if.end_crit_edge

lt9611_pcr_setup.exit.if.end_crit_edge:           ; preds = %lt9611_pcr_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lt9611_pcr_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %video_code = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %avi_frame, i32 0, i32 12
  %110 = ptrtoint ptr %video_code to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %video_code, align 4
  %conv = zext i8 %111 to i32
  %vic = getelementptr i8, ptr %bridge, i32 1652
  %112 = ptrtoint ptr %vic to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv, ptr %vic, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lt9611_pcr_setup.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %avi_frame) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_bridge_enable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %temp.i40.i = alloca i32, align 4
  %temp2.i41.i = alloca i32, align 4
  %temp.i27.i = alloca i32, align 4
  %temp2.i28.i = alloca i32, align 4
  %temp.i14.i = alloca i32, align 4
  %temp2.i15.i = alloca i32, align 4
  %temp.i1.i = alloca i32, align 4
  %temp2.i2.i = alloca i32, align 4
  %temp.i.i = alloca i32, align 4
  %temp2.i.i = alloca i32, align 4
  %reg_cfg.i15 = alloca [14 x %struct.reg_sequence], align 4
  %reg_cfg.i = alloca [8 x %struct.reg_sequence], align 4
  %seq.i = alloca [15 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %seq.i) #5
  %0 = call ptr @memcpy(ptr %seq.i, ptr @__const.lt9611_power_on.seq, i32 180)
  %power_on.i = getelementptr i8, ptr %bridge, i32 1360
  %1 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_on.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %4, ptr noundef nonnull %seq.i, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %do.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %power_on.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %seq.i) #5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58) #8
  br label %cleanup

if.end:                                           ; preds = %if.then2.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %seq.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reg_cfg.i) #5
  %8 = call ptr @memcpy(ptr %reg_cfg.i, ptr @__const.lt9611_mipi_input_analog.reg_cfg, i32 96)
  %regmap.i11 = getelementptr i8, ptr %bridge, i32 1324
  %9 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i11, align 8
  %call.i12 = call i32 @regmap_multi_reg_write(ptr noundef %10, ptr noundef nonnull %reg_cfg.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reg_cfg.i) #5
  %11 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i11, align 8
  %vic.i = getelementptr i8, ptr %bridge, i32 1652
  %13 = ptrtoint ptr %vic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vic.i, align 8
  %sub.i = sub i32 70, %14
  %call.i14 = call i32 @regmap_write(ptr noundef %12, i32 noundef 33859, i32 noundef %sub.i) #5
  %15 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i11, align 8
  %17 = ptrtoint ptr %vic.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vic.i, align 8
  %call3.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 33863, i32 noundef %18) #5
  %19 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i11, align 8
  %call5.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 33853, i32 noundef 10) #5
  %21 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i11, align 8
  %call7.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 33494, i32 noundef 140) #5
  %23 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i11, align 8
  %call9.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 33495, i32 noundef 4) #5
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %reg_cfg.i15) #5
  %25 = call ptr @memcpy(ptr %reg_cfg.i15, ptr @__const.lt9611_hdmi_tx_phy.reg_cfg, i32 168)
  %ac_mode.i = getelementptr i8, ptr %bridge, i32 1348
  %26 = ptrtoint ptr %ac_mode.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ac_mode.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i16 = icmp eq i8 %27, 0
  br i1 %tobool.not.i16, label %if.end.lt9611_hdmi_tx_phy.exit_crit_edge, label %if.then.i

if.end.lt9611_hdmi_tx_phy.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_hdmi_tx_phy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %def.i = getelementptr inbounds [14 x %struct.reg_sequence], ptr %reg_cfg.i15, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %def.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 115, ptr %def.i, align 4
  br label %lt9611_hdmi_tx_phy.exit

lt9611_hdmi_tx_phy.exit:                          ; preds = %if.then.i, %if.end.lt9611_hdmi_tx_phy.exit_crit_edge
  %29 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i11, align 8
  %call.i18 = call i32 @regmap_multi_reg_write(ptr noundef %30, ptr noundef nonnull %reg_cfg.i15, i32 noundef 14) #5
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %reg_cfg.i15) #5
  call void @msleep(i32 noundef 500) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #5
  %31 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %temp.i.i, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2.i.i) #5
  %32 = ptrtoint ptr %temp2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %temp2.i.i, align 4, !annotation !170
  %33 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i11, align 8
  %call.i.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 33410, ptr noundef nonnull %temp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lt9611_hdmi_tx_phy.exit.lt9611_read_video_check.exit.i_crit_edge

lt9611_hdmi_tx_phy.exit.lt9611_read_video_check.exit.i_crit_edge: ; preds = %lt9611_hdmi_tx_phy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit.i

if.end.i.i:                                       ; preds = %lt9611_hdmi_tx_phy.exit
  %35 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp.i.i, align 4
  %shl.i.i = shl i32 %36, 8
  store i32 %shl.i.i, ptr %temp.i.i, align 4
  %37 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i11, align 8
  %call2.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 33411, ptr noundef nonnull %temp2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.lt9611_read_video_check.exit.i_crit_edge

if.end.i.i.lt9611_read_video_check.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %temp.i.i, align 4
  %41 = ptrtoint ptr %temp2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %temp2.i.i, align 4
  %add6.i.i = add i32 %42, %40
  br label %lt9611_read_video_check.exit.i

lt9611_read_video_check.exit.i:                   ; preds = %if.end5.i.i, %if.end.i.i.lt9611_read_video_check.exit.i_crit_edge, %lt9611_hdmi_tx_phy.exit.lt9611_read_video_check.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add6.i.i, %if.end5.i.i ], [ %call.i.i, %lt9611_hdmi_tx_phy.exit.lt9611_read_video_check.exit.i_crit_edge ], [ %call2.i.i, %if.end.i.i.lt9611_read_video_check.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %lt9611_read_video_check.exit.i.do.end20.i_crit_edge, label %if.end.i20

lt9611_read_video_check.exit.i.do.end20.i_crit_edge: ; preds = %lt9611_read_video_check.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end.i20:                                       ; preds = %lt9611_read_video_check.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i1.i) #5
  %43 = ptrtoint ptr %temp.i1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %temp.i1.i, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2.i2.i) #5
  %44 = ptrtoint ptr %temp2.i2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %temp2.i2.i, align 4, !annotation !170
  %45 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i11, align 8
  %call.i4.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 33388, ptr noundef nonnull %temp.i1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i9.i, label %if.end.i20.lt9611_read_video_check.exit13.i_crit_edge

if.end.i20.lt9611_read_video_check.exit13.i_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit13.i

if.end.i9.i:                                      ; preds = %if.end.i20
  %47 = ptrtoint ptr %temp.i1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %temp.i1.i, align 4
  %shl.i6.i = shl i32 %48, 8
  store i32 %shl.i6.i, ptr %temp.i1.i, align 4
  %49 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i11, align 8
  %call2.i7.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 33389, ptr noundef nonnull %temp2.i2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i)
  %tobool3.not.i8.i = icmp eq i32 %call2.i7.i, 0
  br i1 %tobool3.not.i8.i, label %if.end5.i11.i, label %if.end.i9.i.lt9611_read_video_check.exit13.i_crit_edge

if.end.i9.i.lt9611_read_video_check.exit13.i_crit_edge: ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit13.i

if.end5.i11.i:                                    ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %temp.i1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %temp.i1.i, align 4
  %53 = ptrtoint ptr %temp2.i2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %temp2.i2.i, align 4
  %add6.i10.i = add i32 %54, %52
  br label %lt9611_read_video_check.exit13.i

lt9611_read_video_check.exit13.i:                 ; preds = %if.end5.i11.i, %if.end.i9.i.lt9611_read_video_check.exit13.i_crit_edge, %if.end.i20.lt9611_read_video_check.exit13.i_crit_edge
  %retval.0.i12.i = phi i32 [ %add6.i10.i, %if.end5.i11.i ], [ %call.i4.i, %if.end.i20.lt9611_read_video_check.exit13.i_crit_edge ], [ %call2.i7.i, %if.end.i9.i.lt9611_read_video_check.exit13.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2.i2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i12.i)
  %cmp2.i = icmp slt i32 %retval.0.i12.i, 0
  br i1 %cmp2.i, label %lt9611_read_video_check.exit13.i.do.end20.i_crit_edge, label %if.end4.i

lt9611_read_video_check.exit13.i.do.end20.i_crit_edge: ; preds = %lt9611_read_video_check.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end4.i:                                        ; preds = %lt9611_read_video_check.exit13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i14.i) #5
  %55 = ptrtoint ptr %temp.i14.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %temp.i14.i, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2.i15.i) #5
  %56 = ptrtoint ptr %temp2.i15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %temp2.i15.i, align 4, !annotation !170
  %57 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i11, align 8
  %call.i17.i = call i32 @regmap_read(ptr noundef %58, i32 noundef 33414, ptr noundef nonnull %temp.i14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end.i22.i, label %if.end4.i.lt9611_read_video_check.exit26.i_crit_edge

if.end4.i.lt9611_read_video_check.exit26.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit26.i

if.end.i22.i:                                     ; preds = %if.end4.i
  %59 = ptrtoint ptr %temp.i14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %temp.i14.i, align 4
  %shl.i19.i = shl i32 %60, 8
  store i32 %shl.i19.i, ptr %temp.i14.i, align 4
  %61 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i11, align 8
  %call2.i20.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 33415, ptr noundef nonnull %temp2.i15.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i20.i)
  %tobool3.not.i21.i = icmp eq i32 %call2.i20.i, 0
  br i1 %tobool3.not.i21.i, label %if.end5.i24.i, label %if.end.i22.i.lt9611_read_video_check.exit26.i_crit_edge

if.end.i22.i.lt9611_read_video_check.exit26.i_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit26.i

if.end5.i24.i:                                    ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %temp.i14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %temp.i14.i, align 4
  %65 = ptrtoint ptr %temp2.i15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %temp2.i15.i, align 4
  %add6.i23.i = add i32 %66, %64
  br label %lt9611_read_video_check.exit26.i

lt9611_read_video_check.exit26.i:                 ; preds = %if.end5.i24.i, %if.end.i22.i.lt9611_read_video_check.exit26.i_crit_edge, %if.end4.i.lt9611_read_video_check.exit26.i_crit_edge
  %retval.0.i25.i = phi i32 [ %add6.i23.i, %if.end5.i24.i ], [ %call.i17.i, %if.end4.i.lt9611_read_video_check.exit26.i_crit_edge ], [ %call2.i20.i, %if.end.i22.i.lt9611_read_video_check.exit26.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2.i15.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i25.i)
  %cmp6.i = icmp slt i32 %retval.0.i25.i, 0
  br i1 %cmp6.i, label %lt9611_read_video_check.exit26.i.do.end20.i_crit_edge, label %if.end8.i

lt9611_read_video_check.exit26.i.do.end20.i_crit_edge: ; preds = %lt9611_read_video_check.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end8.i:                                        ; preds = %lt9611_read_video_check.exit26.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i27.i) #5
  %67 = ptrtoint ptr %temp.i27.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %temp.i27.i, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2.i28.i) #5
  %68 = ptrtoint ptr %temp2.i28.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %temp2.i28.i, align 4, !annotation !170
  %69 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i11, align 8
  %call.i30.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 33666, ptr noundef nonnull %temp.i27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %if.end.i35.i, label %if.end8.i.lt9611_read_video_check.exit39.i_crit_edge

if.end8.i.lt9611_read_video_check.exit39.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit39.i

if.end.i35.i:                                     ; preds = %if.end8.i
  %71 = ptrtoint ptr %temp.i27.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %temp.i27.i, align 4
  %shl.i32.i = shl i32 %72, 8
  store i32 %shl.i32.i, ptr %temp.i27.i, align 4
  %73 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i11, align 8
  %call2.i33.i = call i32 @regmap_read(ptr noundef %74, i32 noundef 33667, ptr noundef nonnull %temp2.i28.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i33.i)
  %tobool3.not.i34.i = icmp eq i32 %call2.i33.i, 0
  br i1 %tobool3.not.i34.i, label %if.end5.i37.i, label %if.end.i35.i.lt9611_read_video_check.exit39.i_crit_edge

if.end.i35.i.lt9611_read_video_check.exit39.i_crit_edge: ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit39.i

if.end5.i37.i:                                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %temp.i27.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %temp.i27.i, align 4
  %77 = ptrtoint ptr %temp2.i28.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %temp2.i28.i, align 4
  %add6.i36.i = add i32 %78, %76
  br label %lt9611_read_video_check.exit39.i

lt9611_read_video_check.exit39.i:                 ; preds = %if.end5.i37.i, %if.end.i35.i.lt9611_read_video_check.exit39.i_crit_edge, %if.end8.i.lt9611_read_video_check.exit39.i_crit_edge
  %retval.0.i38.i = phi i32 [ %add6.i36.i, %if.end5.i37.i ], [ %call.i30.i, %if.end8.i.lt9611_read_video_check.exit39.i_crit_edge ], [ %call2.i33.i, %if.end.i35.i.lt9611_read_video_check.exit39.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2.i28.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38.i)
  %cmp10.i = icmp slt i32 %retval.0.i38.i, 0
  br i1 %cmp10.i, label %lt9611_read_video_check.exit39.i.do.end20.i_crit_edge, label %if.end12.i

lt9611_read_video_check.exit39.i.do.end20.i_crit_edge: ; preds = %lt9611_read_video_check.exit39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end12.i:                                       ; preds = %lt9611_read_video_check.exit39.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i40.i) #5
  %79 = ptrtoint ptr %temp.i40.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %temp.i40.i, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2.i41.i) #5
  %80 = ptrtoint ptr %temp2.i41.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %temp2.i41.i, align 4, !annotation !170
  %81 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i11, align 8
  %call.i43.i = call i32 @regmap_read(ptr noundef %82, i32 noundef 33670, ptr noundef nonnull %temp.i40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i48.i, label %if.end12.i.lt9611_read_video_check.exit52.i_crit_edge

if.end12.i.lt9611_read_video_check.exit52.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit52.i

if.end.i48.i:                                     ; preds = %if.end12.i
  %83 = ptrtoint ptr %temp.i40.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %temp.i40.i, align 4
  %shl.i45.i = shl i32 %84, 8
  store i32 %shl.i45.i, ptr %temp.i40.i, align 4
  %85 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i11, align 8
  %call2.i46.i = call i32 @regmap_read(ptr noundef %86, i32 noundef 33671, ptr noundef nonnull %temp2.i41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i46.i)
  %tobool3.not.i47.i = icmp eq i32 %call2.i46.i, 0
  br i1 %tobool3.not.i47.i, label %if.end5.i50.i, label %if.end.i48.i.lt9611_read_video_check.exit52.i_crit_edge

if.end.i48.i.lt9611_read_video_check.exit52.i_crit_edge: ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_read_video_check.exit52.i

if.end5.i50.i:                                    ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %temp.i40.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %temp.i40.i, align 4
  %89 = ptrtoint ptr %temp2.i41.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %temp2.i41.i, align 4
  %add6.i49.i = add i32 %90, %88
  br label %lt9611_read_video_check.exit52.i

lt9611_read_video_check.exit52.i:                 ; preds = %if.end5.i50.i, %if.end.i48.i.lt9611_read_video_check.exit52.i_crit_edge, %if.end12.i.lt9611_read_video_check.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ %add6.i49.i, %if.end5.i50.i ], [ %call.i43.i, %if.end12.i.lt9611_read_video_check.exit52.i_crit_edge ], [ %call2.i46.i, %if.end.i48.i.lt9611_read_video_check.exit52.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2.i41.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i51.i)
  %cmp14.i = icmp slt i32 %retval.0.i51.i, 0
  br i1 %cmp14.i, label %lt9611_read_video_check.exit52.i.do.end20.i_crit_edge, label %if.end16.i

lt9611_read_video_check.exit52.i.do.end20.i_crit_edge: ; preds = %lt9611_read_video_check.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end16.i:                                       ; preds = %lt9611_read_video_check.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  %div53.i = udiv i32 %retval.0.i38.i, 3
  %div1754.i = udiv i32 %retval.0.i51.i, 3
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.61, i32 noundef %div53.i, i32 noundef %div1754.i, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i12.i, i32 noundef %retval.0.i25.i) #8
  br label %lt9611_video_check.exit

do.end20.i:                                       ; preds = %lt9611_read_video_check.exit52.i.do.end20.i_crit_edge, %lt9611_read_video_check.exit39.i.do.end20.i_crit_edge, %lt9611_read_video_check.exit26.i.do.end20.i_crit_edge, %lt9611_read_video_check.exit13.i.do.end20.i_crit_edge, %lt9611_read_video_check.exit.i.do.end20.i_crit_edge
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.64) #8
  br label %lt9611_video_check.exit

lt9611_video_check.exit:                          ; preds = %do.end20.i, %if.end16.i
  %95 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i11, align 8
  %call4 = call i32 @regmap_write(ptr noundef %96, i32 noundef 33072, i32 noundef 234) #5
  br label %cleanup

cleanup:                                          ; preds = %lt9611_video_check.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_bridge_detect(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_val, align 4
  %regmap = getelementptr i8, ptr %bridge, i32 1324
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 33374, ptr noundef nonnull %reg_val) #5
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %status = getelementptr i8, ptr %bridge, i32 1392
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lt9611_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  %seq.i = alloca [15 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %seq.i) #5
  %0 = call ptr @memcpy(ptr %seq.i, ptr @__const.lt9611_power_on.seq, i32 180)
  %power_on.i = getelementptr i8, ptr %bridge, i32 1360
  %1 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_on.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lt9611_power_on.exit_crit_edge

entry.lt9611_power_on.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_power_on.exit

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %4, ptr noundef nonnull %seq.i, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.lt9611_power_on.exit_crit_edge

if.end.i.lt9611_power_on.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_power_on.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %power_on.i, align 4
  br label %lt9611_power_on.exit

lt9611_power_on.exit:                             ; preds = %if.then2.i, %if.end.i.lt9611_power_on.exit_crit_edge, %entry.lt9611_power_on.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %seq.i) #5
  %call2 = call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @lt9611_get_edid_block, ptr noundef %add.ptr.i) #5
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_bridge_hpd_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !170
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 33283, ptr noundef nonnull %val.i) #5
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, -193
  store i32 %and.i, ptr %val.i, align 4
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call2.i = call i32 @regmap_write(ptr noundef %6, i32 noundef 33283, i32 noundef %and.i) #5
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call4.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 33287, i32 noundef 255) #5
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call6.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 33287, i32 noundef 63) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_connector_detect(ptr nocapture noundef %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_val, align 4
  %regmap = getelementptr i8, ptr %connector, i32 1040
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 33374, ptr noundef nonnull %reg_val) #5
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %status = getelementptr i8, ptr %connector, i32 1108
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %seq.i = alloca [15 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %seq.i) #5
  %0 = call ptr @memcpy(ptr %seq.i, ptr @__const.lt9611_power_on.seq, i32 180)
  %power_on.i = getelementptr i8, ptr %connector, i32 1076
  %1 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_on.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lt9611_power_on.exit_crit_edge

entry.lt9611_power_on.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_power_on.exit

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr i8, ptr %connector, i32 1040
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %4, ptr noundef nonnull %seq.i, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.lt9611_power_on.exit_crit_edge

if.end.i.lt9611_power_on.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lt9611_power_on.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %power_on.i, align 4
  br label %lt9611_power_on.exit

lt9611_power_on.exit:                             ; preds = %if.then2.i, %if.end.i.lt9611_power_on.exit_crit_edge, %entry.lt9611_power_on.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -288
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %seq.i) #5
  %call2 = call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @lt9611_get_edid_block, ptr noundef %add.ptr.i) #5
  %call3 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call2) #5
  %call4 = call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call2) #5
  call void @kfree(ptr noundef %call2) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lt9611_find_mode(ptr noundef %mode)
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -2, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_get_edid_block(ptr nocapture noundef %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #2 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %block)
  %cmp1 = icmp ugt i32 %block, 1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block)
  %cmp4 = icmp eq i32 %block, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp.i, align 4, !annotation !170
  %edid_buf.i = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 17
  %1 = call ptr @memset(ptr %edid_buf.i, i32 0, i32 256)
  %regmap.i = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 34051, i32 noundef 201) #5
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 34052, i32 noundef 160) #5
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call4.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 34053, i32 noundef 0) #5
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 8
  %call6.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 34054, i32 noundef 32) #5
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call8.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 34068, i32 noundef 127) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc34.i.for.body.i_crit_edge, %if.then5
  %i.060.i = phi i32 [ 0, %if.then5 ], [ %inc35.i, %for.inc34.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %mul.i = shl i32 %i.060.i, 5
  %call10.i = call i32 @regmap_write(ptr noundef %13, i32 noundef 34053, i32 noundef %mul.i) #5
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call12.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 34055, i32 noundef 54) #5
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 8
  %call14.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 34055, i32 noundef 49) #5
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 8
  %call16.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 34055, i32 noundef 55) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %call18.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 34112, ptr noundef nonnull %temp.i) #5
  %22 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp.i, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end, label %for.body.i.for.body21.i_crit_edge

for.body.i.for.body21.i_crit_edge:                ; preds = %for.body.i
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.body.i.for.body21.i_crit_edge
  %j.059.i = phi i32 [ %inc.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.body.i.for.body21.i_crit_edge ]
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 8
  %call23.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 34179, ptr noundef nonnull %temp.i) #5
  %26 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp.i, align 4
  %conv.i = trunc i32 %27 to i8
  %add.i = add nuw nsw i32 %j.059.i, %mul.i
  %arrayidx.i = getelementptr %struct.lt9611, ptr %data, i32 0, i32 17, i32 %add.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %j.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc34.i, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21.i

for.inc34.i:                                      ; preds = %for.body21.i
  %inc35.i = add nuw nsw i32 %i.060.i, 1
  %exitcond62.not.i = icmp eq i32 %inc35.i, 8
  br i1 %exitcond62.not.i, label %lt9611_read_edid.exit.thread, label %for.inc34.i.for.body.i_crit_edge

for.inc34.i.for.body.i_crit_edge:                 ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

lt9611_read_edid.exit.thread:                     ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 8
  %call38.i18 = call i32 @regmap_write(ptr noundef %30, i32 noundef 34055, i32 noundef 31) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  br label %if.end8

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and26.i = and i32 %23, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %.str.53..str.50.i = select i1 %tobool27.not.i, ptr @.str.53, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %.str.53..str.50.i) #8
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 8
  %call38.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 34055, i32 noundef 31) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.48) #8
  br label %cleanup

if.end8:                                          ; preds = %lt9611_read_edid.exit.thread, %if.end3.if.end8_crit_edge
  %edid_buf = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 17
  %rem = shl i32 %block, 7
  %mul = and i32 %rem, 128
  %add.ptr = getelementptr i8, ptr %edid_buf, i32 %mul
  %37 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lt9611_find_mode(ptr noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay1 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %vdisplay7 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %0 = load i16, ptr @lt9611_modes, align 2
  %1 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %0, i16 %2)
  %cmp3 = icmp eq i16 %0, %2
  br i1 %cmp3, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %3 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 0, i32 1), align 2
  %4 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp9 = icmp eq i16 %3, %5
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true
  %6 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 0, i32 2), align 2
  %conv13 = zext i8 %6 to i32
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv13)
  %cmp14 = icmp eq i32 %call, %conv13
  br i1 %cmp14, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %7 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 1), align 2
  %8 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp3.1 = icmp eq i16 %7, %9
  br i1 %cmp3.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %10 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 1, i32 1), align 2
  %11 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp9.1 = icmp eq i16 %10, %12
  br i1 %cmp9.1, label %land.lhs.true11.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true11.1:                                ; preds = %land.lhs.true.1
  %13 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 1, i32 2), align 2
  %conv13.1 = zext i8 %13 to i32
  %call.1 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.1, i32 %conv13.1)
  %cmp14.1 = icmp eq i32 %call.1, %conv13.1
  br i1 %cmp14.1, label %land.lhs.true11.1.cleanup_crit_edge, label %land.lhs.true11.1.for.inc.1_crit_edge

land.lhs.true11.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true11.1.cleanup_crit_edge:              ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true11.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %14 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 2), align 2
  %15 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp3.2 = icmp eq i16 %14, %16
  br i1 %cmp3.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %17 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 2, i32 1), align 2
  %18 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp9.2 = icmp eq i16 %17, %19
  br i1 %cmp9.2, label %land.lhs.true11.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true11.2:                                ; preds = %land.lhs.true.2
  %20 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 2, i32 2), align 2
  %conv13.2 = zext i8 %20 to i32
  %call.2 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.2, i32 %conv13.2)
  %cmp14.2 = icmp eq i32 %call.2, %conv13.2
  br i1 %cmp14.2, label %land.lhs.true11.2.cleanup_crit_edge, label %land.lhs.true11.2.for.inc.2_crit_edge

land.lhs.true11.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true11.2.cleanup_crit_edge:              ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true11.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %21 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 3), align 2
  %22 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp3.3 = icmp eq i16 %21, %23
  br i1 %cmp3.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %24 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 3, i32 1), align 2
  %25 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp9.3 = icmp eq i16 %24, %26
  br i1 %cmp9.3, label %land.lhs.true11.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true11.3:                                ; preds = %land.lhs.true.3
  %27 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 3, i32 2), align 2
  %conv13.3 = zext i8 %27 to i32
  %call.3 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.3, i32 %conv13.3)
  %cmp14.3 = icmp eq i32 %call.3, %conv13.3
  br i1 %cmp14.3, label %land.lhs.true11.3.cleanup_crit_edge, label %land.lhs.true11.3.for.inc.3_crit_edge

land.lhs.true11.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true11.3.cleanup_crit_edge:              ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true11.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %28 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 4), align 2
  %29 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp3.4 = icmp eq i16 %28, %30
  br i1 %cmp3.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %31 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 4, i32 1), align 2
  %32 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp9.4 = icmp eq i16 %31, %33
  br i1 %cmp9.4, label %land.lhs.true11.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true11.4:                                ; preds = %land.lhs.true.4
  %34 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 4, i32 2), align 2
  %conv13.4 = zext i8 %34 to i32
  %call.4 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.4, i32 %conv13.4)
  %cmp14.4 = icmp eq i32 %call.4, %conv13.4
  br i1 %cmp14.4, label %land.lhs.true11.4.cleanup_crit_edge, label %land.lhs.true11.4.for.inc.4_crit_edge

land.lhs.true11.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true11.4.cleanup_crit_edge:              ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true11.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %35 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 5), align 2
  %36 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp3.5 = icmp eq i16 %35, %37
  br i1 %cmp3.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %38 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 5, i32 1), align 2
  %39 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp9.5 = icmp eq i16 %38, %40
  br i1 %cmp9.5, label %land.lhs.true11.5, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true11.5:                                ; preds = %land.lhs.true.5
  %41 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 5, i32 2), align 2
  %conv13.5 = zext i8 %41 to i32
  %call.5 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.5, i32 %conv13.5)
  %cmp14.5 = icmp eq i32 %call.5, %conv13.5
  br i1 %cmp14.5, label %land.lhs.true11.5.cleanup_crit_edge, label %land.lhs.true11.5.for.inc.5_crit_edge

land.lhs.true11.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true11.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true11.5.cleanup_crit_edge:              ; preds = %land.lhs.true11.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true11.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %42 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 6), align 2
  %43 = ptrtoint ptr %hdisplay1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hdisplay1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp3.6 = icmp eq i16 %42, %44
  br i1 %cmp3.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %45 = load i16, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 6, i32 1), align 2
  %46 = ptrtoint ptr %vdisplay7 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vdisplay7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp9.6 = icmp eq i16 %45, %47
  br i1 %cmp9.6, label %land.lhs.true11.6, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true11.6:                                ; preds = %land.lhs.true.6
  %48 = load i8, ptr getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 6, i32 2), align 2
  %conv13.6 = zext i8 %48 to i32
  %call.6 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.6, i32 %conv13.6)
  %cmp14.6 = icmp eq i32 %call.6, %conv13.6
  br i1 %cmp14.6, label %land.lhs.true11.6.cleanup_crit_edge, label %land.lhs.true11.6.for.inc.6_crit_edge

land.lhs.true11.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true11.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true11.6.cleanup_crit_edge:              ; preds = %land.lhs.true11.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true11.6.for.inc.6_crit_edge, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %land.lhs.true11.6.cleanup_crit_edge, %land.lhs.true11.5.cleanup_crit_edge, %land.lhs.true11.4.cleanup_crit_edge, %land.lhs.true11.3.cleanup_crit_edge, %land.lhs.true11.2.cleanup_crit_edge, %land.lhs.true11.1.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi ptr [ @lt9611_modes, %land.lhs.true11.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 1), %land.lhs.true11.1.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 2), %land.lhs.true11.2.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 3), %land.lhs.true11.3.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 4), %land.lhs.true11.4.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 5), %land.lhs.true11.5.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.lt9611_mode], ptr @lt9611_modes, i32 0, i32 6), %land.lhs.true11.6.cleanup_crit_edge ], [ null, %for.inc.6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_audio_startup(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 33494, i32 noundef 140) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 33495, i32 noundef 4) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 33798, i32 noundef 8) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 33799, i32 noundef 16) #5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call8 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 33844, i32 noundef 213) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_hdmi_hw_params(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %fmt, ptr nocapture noundef readonly %hparms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 2
  %0 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sample_rate, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 48000, label %entry.if.end7_crit_edge
    i32 96000, label %if.then3
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %entry.if.end7_crit_edge
  %.sink19 = phi i32 [ 171, %if.then3 ], [ 43, %entry.if.end7_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap4, align 8
  %call5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 33807, i32 noundef %.sink19) #5
  %regmap8 = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap8, align 8
  %call9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 33845, i32 noundef 0) #5
  %7 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap8, align 8
  %call11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 33846, i32 noundef 24) #5
  %9 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap8, align 8
  %call13 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 33847, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611_audio_shutdown(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.lt9611, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 33798, i32 noundef 0) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 33799, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #2 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #5
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !170
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !170
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !170
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %of_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %of_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_lontium_lt9611__313_1219_lt9611_driver_init6, !1, !"__initcall__kmod_lontium_lt9611__313_1219_lt9611_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1219, i32 1}
!2 = !{ptr @__exitcall_lt9611_driver_exit, !1, !"__exitcall_lt9611_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file314, !4, !"__UNIQUE_ID_file314", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1221, i32 1}
!5 = !{ptr @__UNIQUE_ID_license315, !4, !"__UNIQUE_ID_license315", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1212, i32 11}
!8 = !{ptr @lt9611_driver, !9, !"lt9611_driver", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1210, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1085, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @lt9611_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @lt9611_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @lt9611_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1097, i32 19}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1099, i32 3}
!23 = !{ptr @lt9611_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lt9611_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1105, i32 3}
!27 = !{ptr @lt9611_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lt9611_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1127, i32 3}
!31 = !{ptr @lt9611_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lt9611_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1135, i32 3}
!35 = !{ptr @lt9611_probe._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lt9611_probe._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @lt9611_regmap_config, !38, !"lt9611_regmap_config", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 77, i32 35}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 66, i32 11}
!41 = !{ptr @lt9611_ranges, !42, !"lt9611_ranges", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 64, i32 38}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 936, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @lt9611_parse_dt._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @lt9611_parse_dt._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 942, i32 56}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 951, i32 43}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 953, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lt9611_gpio_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @lt9611_gpio_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 957, i32 53}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 960, i32 3}
!61 = !{ptr @lt9611_gpio_init._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lt9611_gpio_init._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 536, i32 31}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 537, i32 31}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 975, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @lt9611_read_device_rev._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @lt9611_read_device_rev._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 977, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @lt9611_read_device_rev._entry.34, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @lt9611_read_device_rev._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 401, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @lt9611_irq_thread_handler._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @lt9611_irq_thread_handler._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 409, i32 3}
!84 = !{ptr @lt9611_irq_thread_handler._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lt9611_irq_thread_handler._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 420, i32 3}
!88 = !{ptr @lt9611_irq_thread_handler._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lt9611_irq_thread_handler._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @lt9611_bridge_funcs, !91, !"lt9611_bridge_funcs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 919, i32 38}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 800, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 809, i32 3}
!96 = !{ptr @lt9611_bridge_connector_funcs, !97, !"lt9611_bridge_connector_funcs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 748, i32 41}
!98 = !{ptr @lt9611_bridge_connector_helper_funcs, !99, !"lt9611_bridge_connector_helper_funcs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 743, i32 28}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 667, i32 4}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @lt9611_get_edid_block._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @lt9611_get_edid_block._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 634, i32 4}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @lt9611_read_edid._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @lt9611_read_edid._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 639, i32 4}
!112 = !{ptr @lt9611_read_edid._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @lt9611_read_edid._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @lt9611_modes, !115, !"lt9611_modes", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 93, i32 27}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 732, i32 3}
!118 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lt9611_bridge_disable._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @lt9611_bridge_disable._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 737, i32 3}
!123 = !{ptr @lt9611_bridge_disable._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @lt9611_bridge_disable._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 708, i32 3}
!127 = !{ptr @lt9611_bridge_enable._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lt9611_bridge_enable._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 343, i32 2}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @lt9611_video_check._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @lt9611_video_check._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 350, i32 2}
!136 = !{ptr @lt9611_video_check._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lt9611_video_check._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 768, i32 3}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lt9611_attach_dsi._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @lt9611_attach_dsi._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 774, i32 3}
!145 = !{ptr @lt9611_attach_dsi._entry.68, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @lt9611_attach_dsi._entry_ptr.70, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 785, i32 3}
!149 = !{ptr @lt9611_attach_dsi._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @lt9611_attach_dsi._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1062, i32 38}
!153 = !{ptr @codec_data, !154, !"codec_data", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1052, i32 32}
!155 = !{ptr @lt9611_codec_ops, !156, !"lt9611_codec_ops", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1045, i32 36}
!157 = !{ptr @lt9611_match_table, !158, !"lt9611_match_table", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1204, i32 34}
!159 = !{ptr @lt9611_id, !160, !"lt9611_id", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611.c", i32 1198, i32 29}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
!171 = !{i8 0, i8 2}
