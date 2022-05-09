; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/lontium-lt9611uxc.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/lontium-lt9611uxc.c"
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
%struct.reg_sequence = type { i32, i32, i32 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lt9611uxc_mode = type { i16, i16, i8 }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
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
%struct.lt9611uxc = type { ptr, %struct.drm_bridge, %struct.drm_connector, ptr, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, i8, i8, i8, i8 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_endpoint = type { i32, i32, ptr }

@__initcall__kmod_lontium_lt9611uxc__313_1020_lt9611uxc_driver_init6 = internal global ptr @lt9611uxc_driver_init, section ".initcall6.init", align 4
@lt9611uxc_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lt9611uxc_probe, ptr @lt9611uxc_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lt9611uxc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lt9611uxc_attr_groups, ptr null, ptr null, ptr null }, ptr @lt9611uxc_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lt9611uxc_driver_exit = internal global ptr @lt9611uxc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [72 x i8] c"lontium_lt9611uxc.author=Dmitry Baryshkov <dmitry.baryshkov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [64 x i8] c"lontium_lt9611uxc.file=drivers/gpu/drm/bridge/lontium-lt9611uxc\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [33 x i8] c"lontium_lt9611uxc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lt9611uxc\00", [22 x i8] zeroinitializer }, align 32
@lt9611uxc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lontium,lt9611uxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lt9611uxc_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lt9611uxc_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lt9611uxc_id = internal global { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lontium,lt9611uxc\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 855, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device doesn't support I2C\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lt9611uxc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/bridge/lontium-lt9611uxc.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr = internal global ptr @lt9611uxc_probe._entry, section ".printk_index", align 4
@lt9611uxc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&lt9611uxc->ocm_lock\00", [43 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lt9611uxc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @lt9611uxc_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"lontium_lt9611uxc:867:(&lt9611uxc_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap i2c init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.10 = internal global ptr @lt9611uxc_probe._entry.8, section ".printk_index", align 4
@lt9611uxc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 875, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to parse device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.13 = internal global ptr @lt9611uxc_probe._entry.11, section ".printk_index", align 4
@lt9611uxc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read chip rev\0A\00", [39 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.16 = internal global ptr @lt9611uxc_probe._entry.14, section ".printk_index", align 4
@lt9611uxc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read FW version\0A\00", [37 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.19 = internal global ptr @lt9611uxc_probe._entry.17, section ".printk_index", align 4
@lt9611uxc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW version 0, enforcing firmware update\0A\00", [55 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.22 = internal global ptr @lt9611uxc_probe._entry.20, section ".printk_index", align 4
@lt9611uxc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 916, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FW version 0, update failed\0A\00", [35 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.25 = internal global ptr @lt9611uxc_probe._entry.23, section ".printk_index", align 4
@lt9611uxc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 921, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW version 0x%x, HPD not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.29 = internal global ptr @lt9611uxc_probe._entry.26, section ".printk_index", align 4
@lt9611uxc_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&lt9611uxc->wq\00", [17 x i8] zeroinitializer }, align 32
@lt9611uxc_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&lt9611uxc->work)\00", [60 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 934, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@lt9611uxc_probe._entry_ptr.36 = internal global ptr @lt9611uxc_probe._entry.34, section ".printk_index", align 4
@lt9611uxc_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @lt9611uxc_bridge_attach, ptr null, ptr @lt9611uxc_bridge_mode_valid, ptr null, ptr null, ptr null, ptr @lt9611uxc_bridge_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lt9611uxc_bridge_detect, ptr null, ptr @lt9611uxc_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@lt9611uxc_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.37, i32 0, i32 53503, i32 255, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_range\00", [17 x i8] zeroinitializer }, align 32
@lt9611uxc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get remote node for primary dsi\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lt9611uxc_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@lt9611uxc_parse_dt._entry_ptr = internal global ptr @lt9611uxc_parse_dt._entry, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lt9611uxc_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to acquire reset gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lt9611uxc_gpio_init\00", [44 x i8] zeroinitializer }, align 32
@lt9611uxc_gpio_init._entry_ptr = internal global ptr @lt9611uxc_gpio_init._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lt9611uxc_gpio_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire enable gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@lt9611uxc_gpio_init._entry_ptr.46 = internal global ptr @lt9611uxc_gpio_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@lt9611uxc_read_device_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read revision: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lt9611uxc_read_device_rev\00", [38 x i8] zeroinitializer }, align 32
@lt9611uxc_read_device_rev._entry_ptr = internal global ptr @lt9611uxc_read_device_rev._entry, section ".printk_index", align 4
@lt9611uxc_read_device_rev._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 566, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LT9611 revision: 0x%02x.%02x.%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@lt9611uxc_read_device_rev._entry_ptr.53 = internal global ptr @lt9611uxc_read_device_rev._entry.51, section ".printk_index", align 4
@lt9611uxc_read_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.54, ptr @.str.3, i32 582, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lt9611uxc_read_version\00", [41 x i8] zeroinitializer }, align 32
@lt9611uxc_read_version._entry_ptr = internal global ptr @lt9611uxc_read_version._entry, section ".printk_index", align 4
@lt9611uxc_read_version._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 584, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LT9611 version: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@lt9611uxc_read_version._entry_ptr.57 = internal global ptr @lt9611uxc_read_version._entry.55, section ".printk_index", align 4
@__const.lt9611uxc_firmware_update.seq_setup = private unnamed_addr constant [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 32862, i32 223, i32 0 }, %struct.reg_sequence { i32 32856, i32 0, i32 0 }, %struct.reg_sequence { i32 32857, i32 80, i32 0 }, %struct.reg_sequence { i32 32858, i32 16, i32 0 }, %struct.reg_sequence { i32 32858, i32 0, i32 0 }], align 4
@__const.lt9611uxc_firmware_update.seq_block_erase = private unnamed_addr constant [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 32858, i32 4, i32 0 }, %struct.reg_sequence { i32 32858, i32 0, i32 0 }, %struct.reg_sequence { i32 32859, i32 0, i32 0 }, %struct.reg_sequence { i32 32860, i32 0, i32 0 }, %struct.reg_sequence { i32 32861, i32 0, i32 0 }, %struct.reg_sequence { i32 32858, i32 1, i32 0 }, %struct.reg_sequence { i32 32858, i32 0, i32 0 }], align 4
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lt9611uxc_fw.bin\00", [47 x i8] zeroinitializer }, align 32
@lt9611uxc_firmware_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 760, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Updating firmware\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lt9611uxc_firmware_update\00", [38 x i8] zeroinitializer }, align 32
@lt9611uxc_firmware_update._entry_ptr = internal global ptr @lt9611uxc_firmware_update._entry, section ".printk_index", align 4
@lt9611uxc_firmware_update._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware update failed\0A\00", [40 x i8] zeroinitializer }, align 32
@lt9611uxc_firmware_update._entry_ptr.63 = internal global ptr @lt9611uxc_firmware_update._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fw: \00", [27 x i8] zeroinitializer }, align 32
@lt9611uxc_firmware_update._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.3, i32 799, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware updates successfully\0A\00", [33 x i8] zeroinitializer }, align 32
@lt9611uxc_firmware_update._entry_ptr.67 = internal global ptr @lt9611uxc_firmware_update._entry.65, section ".printk_index", align 4
@__const.lt9611uxc_firmware_write_page.seq_write_prepare = private unnamed_addr constant [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 32858, i32 4, i32 0 }, %struct.reg_sequence { i32 32858, i32 0, i32 0 }, %struct.reg_sequence { i32 32862, i32 223, i32 0 }, %struct.reg_sequence { i32 32858, i32 32, i32 0 }, %struct.reg_sequence { i32 32858, i32 0, i32 0 }, %struct.reg_sequence { i32 32856, i32 33, i32 0 }], align 4
@__const.lt9611uxc_firmware_read.seq_read_setup = private unnamed_addr constant [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 32858, i32 132, i32 0 }, %struct.reg_sequence { i32 32858, i32 128, i32 0 }], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @lt9611uxc_connector_get_modes, ptr null, ptr @lt9611uxc_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @lt9611uxc_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@lt9611uxc_modes = internal constant { [16 x %struct.lt9611uxc_mode], [32 x i8] } { [16 x %struct.lt9611uxc_mode] [%struct.lt9611uxc_mode { i16 1920, i16 1080, i8 60 }, %struct.lt9611uxc_mode { i16 1920, i16 1080, i8 30 }, %struct.lt9611uxc_mode { i16 1920, i16 1080, i8 25 }, %struct.lt9611uxc_mode { i16 1366, i16 768, i8 60 }, %struct.lt9611uxc_mode { i16 1360, i16 768, i8 60 }, %struct.lt9611uxc_mode { i16 1280, i16 1024, i8 60 }, %struct.lt9611uxc_mode { i16 1280, i16 800, i8 60 }, %struct.lt9611uxc_mode { i16 1280, i16 720, i8 60 }, %struct.lt9611uxc_mode { i16 1280, i16 720, i8 50 }, %struct.lt9611uxc_mode { i16 1280, i16 720, i8 30 }, %struct.lt9611uxc_mode { i16 1152, i16 864, i8 60 }, %struct.lt9611uxc_mode { i16 1024, i16 768, i8 60 }, %struct.lt9611uxc_mode { i16 800, i16 600, i8 60 }, %struct.lt9611uxc_mode { i16 720, i16 576, i8 50 }, %struct.lt9611uxc_mode { i16 720, i16 480, i8 60 }, %struct.lt9611uxc_mode { i16 640, i16 480, i8 60 }], [32 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read hpd status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lt9611uxc_bridge_detect\00", [40 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_detect._entry_ptr = internal global ptr @lt9611uxc_bridge_detect._entry, section ".printk_index", align 4
@lt9611uxc_bridge_get_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait for EDID failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lt9611uxc_bridge_get_edid\00", [38 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_get_edid._entry_ptr = internal global ptr @lt9611uxc_bridge_get_edid._entry, section ".printk_index", align 4
@lt9611uxc_bridge_get_edid._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wait for EDID timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@lt9611uxc_bridge_get_edid._entry_ptr.76 = internal global ptr @lt9611uxc_bridge_get_edid._entry.74, section ".printk_index", align 4
@lt9611uxc_get_edid_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edid read failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lt9611uxc_get_edid_block\00", [39 x i8] zeroinitializer }, align 32
@lt9611uxc_get_edid_block._entry_ptr = internal global ptr @lt9611uxc_get_edid_block._entry, section ".printk_index", align 4
@__const.lt9611uxc_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"lt9611uxc\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@lt9611uxc_attach_dsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lt9611uxc_attach_dsi\00", [43 x i8] zeroinitializer }, align 32
@lt9611uxc_attach_dsi._entry_ptr = internal global ptr @lt9611uxc_attach_dsi._entry, section ".printk_index", align 4
@lt9611uxc_attach_dsi._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@lt9611uxc_attach_dsi._entry_ptr.83 = internal global ptr @lt9611uxc_attach_dsi._entry.81, section ".printk_index", align 4
@lt9611uxc_attach_dsi._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach dsi to host\0A\00", [34 x i8] zeroinitializer }, align 32
@lt9611uxc_attach_dsi._entry_ptr.86 = internal global ptr @lt9611uxc_attach_dsi._entry.84, section ".printk_index", align 4
@lt9611uxc_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @lt9611uxc_hdmi_hw_params, ptr null, ptr @lt9611uxc_audio_shutdown, ptr null, ptr null, ptr @lt9611uxc_hdmi_i2s_get_dai_id, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@lt9611uxc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lt9611uxc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lt9611uxc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_lt9611uxc_firmware, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_lt9611uxc_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lt9611uxc_firmware_show, ptr @lt9611uxc_firmware_store }, [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lt9611uxc_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"lt9611uxc_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1010, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1012, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"lt9611uxc_match_table\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1004, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"lt9611uxc_attr_groups\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 841, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"lt9611uxc_id\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 999, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 855, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 865, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"lt9611uxc_regmap_config\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 77, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 867, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 869, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 875, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 897, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 904, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 909, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 916, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 921, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 927, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 928, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 934, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"lt9611uxc_bridge_funcs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 512, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"lt9611uxc_ranges\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 64, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 66, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 525, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 538, i32 46 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 540, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 544, i32 56 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 546, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 211, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 212, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 564, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 566, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 582, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 584, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 756, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 760, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 795, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 796, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 799, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 339, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [40 x i8] c"lt9611uxc_bridge_connector_helper_funcs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 320, i32 48 }
@___asan_gen_.306 = private unnamed_addr constant [33 x i8] c"lt9611uxc_bridge_connector_funcs\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 325, i32 41 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 351, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [16 x i8] c"lt9611uxc_modes\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 95, i32 30 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 450, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 502, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 505, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 487, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 266, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 272, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 283, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c"lt9611uxc_codec_ops\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 626, i32 36 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 642, i32 38 }
@___asan_gen_.375 = private unnamed_addr constant [21 x i8] c"lt9611uxc_attr_group\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 837, i32 37 }
@___asan_gen_.378 = private unnamed_addr constant [16 x i8] c"lt9611uxc_attrs\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 832, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant [28 x i8] c"dev_attr_lt9611uxc_firmware\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 830, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [46 x i8] c"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 827, i32 25 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_lt9611uxc_driver_exit, ptr @__initcall__kmod_lontium_lt9611uxc__313_1020_lt9611uxc_driver_init6, ptr @lt9611uxc_attach_dsi._entry, ptr @lt9611uxc_attach_dsi._entry.81, ptr @lt9611uxc_attach_dsi._entry.84, ptr @lt9611uxc_attach_dsi._entry_ptr, ptr @lt9611uxc_attach_dsi._entry_ptr.83, ptr @lt9611uxc_attach_dsi._entry_ptr.86, ptr @lt9611uxc_bridge_detect._entry, ptr @lt9611uxc_bridge_detect._entry_ptr, ptr @lt9611uxc_bridge_get_edid._entry, ptr @lt9611uxc_bridge_get_edid._entry.74, ptr @lt9611uxc_bridge_get_edid._entry_ptr, ptr @lt9611uxc_bridge_get_edid._entry_ptr.76, ptr @lt9611uxc_driver_exit, ptr @lt9611uxc_firmware_update._entry, ptr @lt9611uxc_firmware_update._entry.61, ptr @lt9611uxc_firmware_update._entry.65, ptr @lt9611uxc_firmware_update._entry_ptr, ptr @lt9611uxc_firmware_update._entry_ptr.63, ptr @lt9611uxc_firmware_update._entry_ptr.67, ptr @lt9611uxc_get_edid_block._entry, ptr @lt9611uxc_get_edid_block._entry_ptr, ptr @lt9611uxc_gpio_init._entry, ptr @lt9611uxc_gpio_init._entry.44, ptr @lt9611uxc_gpio_init._entry_ptr, ptr @lt9611uxc_gpio_init._entry_ptr.46, ptr @lt9611uxc_parse_dt._entry, ptr @lt9611uxc_parse_dt._entry_ptr, ptr @lt9611uxc_probe._entry, ptr @lt9611uxc_probe._entry.11, ptr @lt9611uxc_probe._entry.14, ptr @lt9611uxc_probe._entry.17, ptr @lt9611uxc_probe._entry.20, ptr @lt9611uxc_probe._entry.23, ptr @lt9611uxc_probe._entry.26, ptr @lt9611uxc_probe._entry.34, ptr @lt9611uxc_probe._entry.8, ptr @lt9611uxc_probe._entry_ptr, ptr @lt9611uxc_probe._entry_ptr.10, ptr @lt9611uxc_probe._entry_ptr.13, ptr @lt9611uxc_probe._entry_ptr.16, ptr @lt9611uxc_probe._entry_ptr.19, ptr @lt9611uxc_probe._entry_ptr.22, ptr @lt9611uxc_probe._entry_ptr.25, ptr @lt9611uxc_probe._entry_ptr.29, ptr @lt9611uxc_probe._entry_ptr.36, ptr @lt9611uxc_read_device_rev._entry, ptr @lt9611uxc_read_device_rev._entry.51, ptr @lt9611uxc_read_device_rev._entry_ptr, ptr @lt9611uxc_read_device_rev._entry_ptr.53, ptr @lt9611uxc_read_version._entry, ptr @lt9611uxc_read_version._entry.55, ptr @lt9611uxc_read_version._entry_ptr, ptr @lt9611uxc_read_version._entry_ptr.57, ptr @lt9611uxc_driver, ptr @.str, ptr @lt9611uxc_match_table, ptr @lt9611uxc_attr_groups, ptr @lt9611uxc_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lt9611uxc_probe.__key, ptr @.str.6, ptr @lt9611uxc_probe._key, ptr @lt9611uxc_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @lt9611uxc_probe.__key.30, ptr @.str.31, ptr @lt9611uxc_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @lt9611uxc_bridge_funcs, ptr @lt9611uxc_ranges, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @lt9611uxc_bridge_connector_helper_funcs, ptr @lt9611uxc_bridge_connector_funcs, ptr @.str.69, ptr @lt9611uxc_modes, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @lt9611uxc_codec_ops, ptr @.str.87, ptr @lt9611uxc_attr_group, ptr @lt9611uxc_attrs, ptr @dev_attr_lt9611uxc_firmware, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_gpio_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_read_device_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_read_device_rev._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_read_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_read_version._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_firmware_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_firmware_update._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_firmware_update._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_modes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_get_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_bridge_get_edid._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_get_edid_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attach_dsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attach_dsi._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attach_dsi._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt9611uxc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lt9611uxc_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lt9611uxc_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lt9611uxc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lt9611uxc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %codec_data.i = alloca %struct.hdmi_codec_pdata, align 4
  %rev.i = alloca i32, align 4
  %rev0.i = alloca i32, align 4
  %rev1.i = alloca i32, align 4
  %rev2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1584, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 8
  %client8 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 15
  %7 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client8, align 4
  %ocm_lock = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %ocm_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lt9611uxc_probe.__key) #8
  %call12 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lt9611uxc_regmap_config, ptr noundef nonnull @lt9611uxc_probe._key, ptr noundef nonnull @.str.7) #8
  %regmap = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9) #11
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end5
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i216 = tail call ptr @of_graph_get_remote_node(ptr noundef %15, i32 noundef 0, i32 noundef -1) #8
  %dsi0_node.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i216, ptr %dsi0_node.i, align 8
  %tobool.not.i = icmp eq ptr %call.i216, null
  br i1 %tobool.not.i, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call4.i = tail call ptr @of_graph_get_remote_node(ptr noundef %20, i32 noundef 1, i32 noundef -1) #8
  %dsi1_node.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4.i, ptr %dsi1_node.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %call.i217 = tail call ptr @devm_gpiod_get(ptr noundef %23, ptr noundef nonnull @.str.40, i32 noundef 7) #8
  %reset_gpio.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 12
  %24 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i217, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end30.lt9611uxc_gpio_init.exit_crit_edge, label %if.end.i219

if.end30.lt9611uxc_gpio_init.exit_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_gpio_init.exit

if.end.i219:                                      ; preds = %if.end30
  %call6.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.43, i32 noundef 3) #8
  %enable_gpio.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 13
  %25 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call6.i, ptr %enable_gpio.i, align 8
  %cmp.i25.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.end.i219.lt9611uxc_gpio_init.exit_crit_edge, label %if.end.i219.if.end33_crit_edge

if.end.i219.if.end33_crit_edge:                   ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end.i219.lt9611uxc_gpio_init.exit_crit_edge:   ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_gpio_init.exit

lt9611uxc_gpio_init.exit:                         ; preds = %if.end.i219.lt9611uxc_gpio_init.exit_crit_edge, %if.end30.lt9611uxc_gpio_init.exit_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %if.end30.lt9611uxc_gpio_init.exit_crit_edge ], [ @.str.45, %if.end.i219.lt9611uxc_gpio_init.exit_crit_edge ]
  %retval.0.i220.in.in = phi ptr [ %reset_gpio.i, %if.end30.lt9611uxc_gpio_init.exit_crit_edge ], [ %enable_gpio.i, %if.end.i219.lt9611uxc_gpio_init.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.41.sink) #11
  %26 = ptrtoint ptr %retval.0.i220.in.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i220.in = load ptr, ptr %retval.0.i220.in.in, align 4
  %retval.0.i220 = ptrtoint ptr %retval.0.i220.in to i32
  %cmp = icmp slt ptr %retval.0.i220.in, null
  br i1 %cmp, label %lt9611uxc_gpio_init.exit.err_of_put_crit_edge, label %lt9611uxc_gpio_init.exit.if.end33_crit_edge

lt9611uxc_gpio_init.exit.if.end33_crit_edge:      ; preds = %lt9611uxc_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

lt9611uxc_gpio_init.exit.err_of_put_crit_edge:    ; preds = %lt9611uxc_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_of_put

if.end33:                                         ; preds = %lt9611uxc_gpio_init.exit.if.end33_crit_edge, %if.end.i219.if.end33_crit_edge
  %supplies.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 14
  %27 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.47, ptr %supplies.i, align 4
  %arrayidx2.i = getelementptr %struct.lt9611uxc, ptr %call.i, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.48, ptr %arrayidx2.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %call.i221 = tail call i32 @devm_regulator_bulk_get(ptr noundef %30, i32 noundef 2, ptr noundef %supplies.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %cmp.i222 = icmp slt i32 %call.i221, 0
  br i1 %cmp.i222, label %if.end33.err_of_put_crit_edge, label %lt9611uxc_regulator_init.exit

if.end33.err_of_put_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_of_put

lt9611uxc_regulator_init.exit:                    ; preds = %if.end33
  %consumer.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %31 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %consumer.i, align 4
  %call7.i = tail call i32 @regulator_set_load(ptr noundef %32, i32 noundef 200000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp35 = icmp slt i32 %call7.i, 0
  br i1 %cmp35, label %lt9611uxc_regulator_init.exit.err_of_put_crit_edge, label %if.end37

lt9611uxc_regulator_init.exit.err_of_put_crit_edge: ; preds = %lt9611uxc_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_of_put

if.end37:                                         ; preds = %lt9611uxc_regulator_init.exit
  %enable_gpio.i225 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 13
  %33 = ptrtoint ptr %enable_gpio.i225 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_gpio.i225, align 8
  %tobool.not.i226 = icmp eq ptr %34, null
  br i1 %tobool.not.i226, label %if.end37.lt9611uxc_assert_5v.exit_crit_edge, label %if.end.i227

if.end37.lt9611uxc_assert_5v.exit_crit_edge:      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_assert_5v.exit

if.end.i227:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %34, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 20) #8
  br label %lt9611uxc_assert_5v.exit

lt9611uxc_assert_5v.exit:                         ; preds = %if.end.i227, %if.end37.lt9611uxc_assert_5v.exit_crit_edge
  %35 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %consumer.i, align 4
  %call.i229 = tail call i32 @regulator_enable(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %cmp.i230 = icmp slt i32 %call.i229, 0
  br i1 %cmp.i230, label %lt9611uxc_assert_5v.exit.err_of_put_crit_edge, label %if.end.i232

lt9611uxc_assert_5v.exit.err_of_put_crit_edge:    ; preds = %lt9611uxc_assert_5v.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_of_put

if.end.i232:                                      ; preds = %lt9611uxc_assert_5v.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #8
  %consumer3.i = getelementptr %struct.lt9611uxc, ptr %call.i, i32 0, i32 14, i32 1, i32 1
  %37 = ptrtoint ptr %consumer3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer3.i, align 4
  %call4.i231 = tail call i32 @regulator_enable(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i231)
  %cmp5.i = icmp slt i32 %call4.i231, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end41

if.then6.i:                                       ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %consumer.i, align 4
  %call10.i = tail call i32 @regulator_disable(ptr noundef %40) #8
  br label %err_of_put

if.end41:                                         ; preds = %if.end.i232
  %41 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %42, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 20) #8
  %43 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %44, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 20) #8
  %45 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %46, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 300) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev0.i) #8
  %47 = ptrtoint ptr %rev0.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %rev0.i, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev1.i) #8
  %48 = ptrtoint ptr %rev1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %rev1.i, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev2.i) #8
  %49 = ptrtoint ptr %rev2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %rev2.i, align 4, !annotation !199
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock, i32 noundef 0) #8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 8
  %call.i.i235 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 33006, i32 noundef 1) #8
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 8
  %call.i236 = call i32 @regmap_read(ptr noundef %53, i32 noundef 33024, ptr noundef nonnull %rev0.i) #8
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 33025, ptr noundef nonnull %rev1.i) #8
  %or.i = or i32 %call2.i, %call.i236
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 8
  %call4.i237 = call i32 @regmap_read(ptr noundef %57, i32 noundef 33026, ptr noundef nonnull %rev2.i) #8
  %or5.i = or i32 %or.i, %call4.i237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i238 = icmp eq i32 %or5.i, 0
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 8
  br i1 %tobool.not.i238, label %do.end8.i, label %do.end.i239

do.end.i239:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.49, i32 noundef %or5.i) #11
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 8
  %call.i21.i.c = call i32 @regmap_write(ptr noundef %61, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev0.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %err_disable_regulators

do.end8.i:                                        ; preds = %if.end41
  %62 = ptrtoint ptr %rev0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rev0.i, align 4
  %64 = ptrtoint ptr %rev1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rev1.i, align 4
  %66 = ptrtoint ptr %rev2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rev2.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.52, i32 noundef %63, i32 noundef %65, i32 noundef %67) #11
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 8
  %call.i21.i.c263 = call i32 @regmap_write(ptr noundef %69, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev0.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev.i) #8
  %70 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %rev.i, align 4, !annotation !199
  call void @mutex_lock_nested(ptr noundef %ocm_lock, i32 noundef 0) #8
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 8
  %call.i.i243 = call i32 @regmap_write(ptr noundef %72, i32 noundef 33006, i32 noundef 1) #8
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 8
  %call.i244 = call i32 @regmap_read(ptr noundef %74, i32 noundef 45089, ptr noundef nonnull %rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool.not.i245 = icmp eq i32 %call.i244, 0
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  br i1 %tobool.not.i245, label %do.end3.i, label %do.end.i246

do.end.i246:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.49, i32 noundef %call.i244) #11
  br label %if.end.i248

do.end3.i:                                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.56, i32 noundef %78) #11
  br label %if.end.i248

if.end.i248:                                      ; preds = %do.end3.i, %do.end.i246
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 8
  %call.i13.i = call i32 @regmap_write(ptr noundef %80, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp.i247 = icmp slt i32 %call.i244, 0
  br i1 %cmp.i247, label %if.end.i248.lt9611uxc_read_version.exit.thread_crit_edge, label %lt9611uxc_read_version.exit

if.end.i248.lt9611uxc_read_version.exit.thread_crit_edge: ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_read_version.exit.thread

lt9611uxc_read_version.exit.thread:               ; preds = %if.end.i248.1.lt9611uxc_read_version.exit.thread_crit_edge, %if.end.i248.lt9611uxc_read_version.exit.thread_crit_edge
  %call.i244.lcssa = phi i32 [ %call.i244, %if.end.i248.lt9611uxc_read_version.exit.thread_crit_edge ], [ %call.i244.1, %if.end.i248.1.lt9611uxc_read_version.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #8
  br label %do.end54

lt9611uxc_read_version.exit:                      ; preds = %if.end.i248
  %81 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rev.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp50 = icmp slt i32 %82, 0
  br i1 %cmp50, label %lt9611uxc_read_version.exit.do.end54_crit_edge, label %if.else

lt9611uxc_read_version.exit.do.end54_crit_edge:   ; preds = %lt9611uxc_read_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.end54:                                         ; preds = %lt9611uxc_read_version.exit.1.do.end54_crit_edge, %lt9611uxc_read_version.exit.do.end54_crit_edge, %lt9611uxc_read_version.exit.thread
  %cond.i262 = phi i32 [ %call.i244.lcssa, %lt9611uxc_read_version.exit.thread ], [ %82, %lt9611uxc_read_version.exit.do.end54_crit_edge ], [ %95, %lt9611uxc_read_version.exit.1.do.end54_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %err_disable_regulators

if.else:                                          ; preds = %lt9611uxc_read_version.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp55 = icmp eq i32 %82, 0
  br i1 %cmp55, label %if.then56, label %if.else.if.else70_crit_edge

if.else.if.else70_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then56:                                        ; preds = %if.else
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  %call62 = call fastcc i32 @lt9611uxc_firmware_update(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then56.err_disable_regulators_crit_edge, label %retry.1

if.then56.err_disable_regulators_crit_edge:       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_regulators

retry.1:                                          ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev.i) #8
  %83 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %rev.i, align 4, !annotation !199
  call void @mutex_lock_nested(ptr noundef %ocm_lock, i32 noundef 0) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 8
  %call.i.i243.1 = call i32 @regmap_write(ptr noundef %85, i32 noundef 33006, i32 noundef 1) #8
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 8
  %call.i244.1 = call i32 @regmap_read(ptr noundef %87, i32 noundef 45089, ptr noundef nonnull %rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.1)
  %tobool.not.i245.1 = icmp eq i32 %call.i244.1, 0
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 8
  br i1 %tobool.not.i245.1, label %do.end3.i.1, label %do.end.i246.1

do.end.i246.1:                                    ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.49, i32 noundef %call.i244.1) #11
  br label %if.end.i248.1

do.end3.i.1:                                      ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.56, i32 noundef %91) #11
  br label %if.end.i248.1

if.end.i248.1:                                    ; preds = %do.end3.i.1, %do.end.i246.1
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 8
  %call.i13.i.1 = call i32 @regmap_write(ptr noundef %93, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.1)
  %cmp.i247.1 = icmp slt i32 %call.i244.1, 0
  br i1 %cmp.i247.1, label %if.end.i248.1.lt9611uxc_read_version.exit.thread_crit_edge, label %lt9611uxc_read_version.exit.1

if.end.i248.1.lt9611uxc_read_version.exit.thread_crit_edge: ; preds = %if.end.i248.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_read_version.exit.thread

lt9611uxc_read_version.exit.1:                    ; preds = %if.end.i248.1
  %94 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rev.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp50.1 = icmp slt i32 %95, 0
  br i1 %cmp50.1, label %lt9611uxc_read_version.exit.1.do.end54_crit_edge, label %if.else.1

lt9611uxc_read_version.exit.1.do.end54_crit_edge: ; preds = %lt9611uxc_read_version.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.else.1:                                        ; preds = %lt9611uxc_read_version.exit.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp55.1 = icmp eq i32 %95, 0
  br i1 %cmp55.1, label %do.end69, label %if.else.1.if.else70_crit_edge

if.else.1.if.else70_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

do.end69:                                         ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %err_disable_regulators

if.else70:                                        ; preds = %if.else.1.if.else70_crit_edge, %if.else.if.else70_crit_edge
  %.lcssa275 = phi i32 [ %82, %if.else.if.else70_crit_edge ], [ %95, %if.else.1.if.else70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %.lcssa275)
  %cmp71 = icmp ult i32 %.lcssa275, 64
  br i1 %cmp71, label %do.end75, label %if.else76

do.end75:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %.lcssa275) #11
  br label %if.end79

if.else76:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %hpd_supported = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 16
  %96 = ptrtoint ptr %hpd_supported to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %hpd_supported, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %do.end75
  %conv = trunc i32 %.lcssa275 to i8
  %fw_version = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 19
  %97 = ptrtoint ptr %fw_version to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv, ptr %fw_version, align 1
  %wq = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.31, ptr noundef nonnull @lt9611uxc_probe.__key.30) #8
  %work = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %98 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @lt9611uxc_probe.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry87 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 6, i32 1
  %99 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %entry87, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 6, i32 2
  %101 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @lt9611uxc_hpd_work, ptr %func, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq, align 4
  %call91 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %103, ptr noundef null, ptr noundef nonnull @lt9611uxc_irq_thread_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end97, label %do.end96

do.end96:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #11
  br label %err_disable_regulators

if.end97:                                         ; preds = %if.end79
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 1, i32 7
  %105 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @lt9611uxc_bridge_funcs, ptr %funcs, align 4
  %106 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %of_node.i, align 8
  %of_node100 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 1, i32 4
  %108 = ptrtoint ptr %of_node100 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %of_node100, align 4
  %ops = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 1, i32 9
  %hpd_supported102 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 16
  %109 = ptrtoint ptr %hpd_supported102 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %hpd_supported102, align 8, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool103.not = icmp eq i8 %110, 0
  %spec.store.select = select i1 %tobool103.not, i32 3, i32 7
  %111 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.store.select, ptr %ops, align 4
  %type = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 1, i32 10
  %112 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 11, ptr %type, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #8
  %113 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dsi0_node.i, align 8
  %call110 = call fastcc ptr @lt9611uxc_attach_dsi(ptr noundef nonnull %call.i, ptr noundef %114)
  %dsi0 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 9
  %115 = ptrtoint ptr %dsi0 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call110, ptr %dsi0, align 8
  %cmp.i249 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.end97.err_remove_bridge_crit_edge, label %if.end116

if.end97.err_remove_bridge_crit_edge:             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_bridge

if.end116:                                        ; preds = %if.end97
  %116 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dsi1_node.i, align 4
  %tobool117.not = icmp eq ptr %117, null
  br i1 %tobool117.not, label %if.end116.if.end127_crit_edge, label %if.then118

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then118:                                       ; preds = %if.end116
  %call120 = call fastcc ptr @lt9611uxc_attach_dsi(ptr noundef nonnull %call.i, ptr noundef nonnull %117)
  %dsi1 = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 10
  %118 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call120, ptr %dsi1, align 4
  %cmp.i250 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i250, label %if.then118.err_remove_bridge_crit_edge, label %if.then118.if.end127_crit_edge

if.then118.if.end127_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then118.err_remove_bridge_crit_edge:           ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_bridge

if.end127:                                        ; preds = %if.then118.if.end127_crit_edge, %if.end116.if.end127_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data.i) #8
  %119 = getelementptr inbounds i8, ptr %codec_data.i, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1073741825, ptr %119, align 4
  %121 = ptrtoint ptr %codec_data.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @lt9611uxc_codec_ops, ptr %codec_data.i, align 4
  %max_i2s_channels.i = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data.i, i32 0, i32 2
  %122 = ptrtoint ptr %max_i2s_channels.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %max_i2s_channels.i, align 4
  %data.i = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data.i, i32 0, i32 3
  %123 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %124 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %125 = call ptr @memset(ptr %124, i32 255, i32 48)
  %126 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %124, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.87, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %130 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %131 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %132 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %133 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %codec_data.i, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %134 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %135 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %136 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %audio_pdev.i = getelementptr inbounds %struct.lt9611uxc, ptr %call.i, i32 0, i32 11
  %137 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %138 = ptrtoint ptr %call.i.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %138, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #8
  br label %cleanup

err_remove_bridge:                                ; preds = %if.then118.err_remove_bridge_crit_edge, %if.end97.err_remove_bridge_crit_edge
  %ret.0.in = phi ptr [ %call110, %if.end97.err_remove_bridge_crit_edge ], [ %call120, %if.then118.err_remove_bridge_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @drm_bridge_remove(ptr noundef %bridge) #8
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %err_remove_bridge, %do.end96, %do.end69, %if.then56.err_disable_regulators_crit_edge, %do.end54, %do.end.i239
  %ret.1 = phi i32 [ %or5.i, %do.end.i239 ], [ %cond.i262, %do.end54 ], [ -95, %do.end69 ], [ %call91, %do.end96 ], [ %ret.0, %err_remove_bridge ], [ %call62, %if.then56.err_disable_regulators_crit_edge ]
  %call130 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #8
  br label %err_of_put

err_of_put:                                       ; preds = %err_disable_regulators, %if.then6.i, %lt9611uxc_assert_5v.exit.err_of_put_crit_edge, %lt9611uxc_regulator_init.exit.err_of_put_crit_edge, %if.end33.err_of_put_crit_edge, %lt9611uxc_gpio_init.exit.err_of_put_crit_edge
  %ret.2 = phi i32 [ %retval.0.i220, %lt9611uxc_gpio_init.exit.err_of_put_crit_edge ], [ %call7.i, %lt9611uxc_regulator_init.exit.err_of_put_crit_edge ], [ %ret.1, %err_disable_regulators ], [ %call.i221, %if.end33.err_of_put_crit_edge ], [ %call.i229, %lt9611uxc_assert_5v.exit.err_of_put_crit_edge ], [ %call4.i231, %if.then6.i ]
  %139 = ptrtoint ptr %dsi1_node.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dsi1_node.i, align 4
  call void @of_node_put(ptr noundef %140) #8
  %141 = ptrtoint ptr %dsi0_node.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dsi0_node.i, align 8
  call void @of_node_put(ptr noundef %142) #8
  br label %cleanup

cleanup:                                          ; preds = %err_of_put, %if.end127, %do.end29, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %13, %do.end18 ], [ -19, %do.end29 ], [ %ret.2, %err_of_put ], [ %spec.select.i.i, %if.end127 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #8
  %audio_pdev.i = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_pdev.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.lt9611uxc_audio_exit.exit_crit_edge, label %if.then.i

entry.lt9611uxc_audio_exit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_audio_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_device_unregister(ptr noundef nonnull %6) #8
  %7 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %audio_pdev.i, align 8
  br label %lt9611uxc_audio_exit.exit

lt9611uxc_audio_exit.exit:                        ; preds = %if.then.i, %entry.lt9611uxc_audio_exit.exit_crit_edge
  %bridge = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #8
  %ocm_lock = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %ocm_lock) #8
  %supplies = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  %dsi1_node = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dsi1_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsi1_node, align 4
  tail call void @of_node_put(ptr noundef %9) #8
  %dsi0_node = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %dsi0_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi0_node, align 8
  tail call void @of_node_put(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lt9611uxc_firmware_update(ptr noundef %lt9611uxc) unnamed_addr #2 align 64 {
entry:
  %seq_read_page.i.i = alloca [8 x %struct.reg_sequence], align 4
  %seq_read_setup.i = alloca [2 x %struct.reg_sequence], align 4
  %fw = alloca ptr, align 4
  %seq_setup = alloca [5 x %struct.reg_sequence], align 4
  %seq_block_erase = alloca [7 x %struct.reg_sequence], align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %seq_setup) #8
  %1 = call ptr @memcpy(ptr %seq_setup, ptr @__const.lt9611uxc_firmware_update.seq_setup, i32 60)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %seq_block_erase) #8
  %2 = call ptr @memcpy(ptr %seq_block_erase, ptr @__const.lt9611uxc_firmware_update.seq_block_erase, i32 84)
  %3 = ptrtoint ptr %lt9611uxc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lt9611uxc, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.58, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %lt9611uxc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lt9611uxc, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.59) #11
  %ocm_lock.i = getelementptr inbounds %struct.lt9611uxc, ptr %lt9611uxc, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %ocm_lock.i, i32 noundef 0) #8
  %regmap.i = getelementptr inbounds %struct.lt9611uxc, ptr %lt9611uxc, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 33006, i32 noundef 1) #8
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call2 = call i32 @regmap_multi_reg_write(ptr noundef %10, ptr noundef nonnull %seq_setup, i32 noundef 5) #8
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 8
  %call5 = call i32 @regmap_multi_reg_write(ptr noundef %12, ptr noundef nonnull %seq_block_erase, i32 noundef 7) #8
  call void @msleep(i32 noundef 3000) #8
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 8
  %call8 = call i32 @regmap_multi_reg_write(ptr noundef %14, ptr noundef nonnull %seq_block_erase, i32 noundef 7) #8
  call void @msleep(i32 noundef 3000) #8
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %18)
  %cmp977 = icmp ugt i32 %18, 31
  br i1 %cmp977, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %remain.079 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %18, %do.end.for.body_crit_edge ]
  %offset.078 = phi i16 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %conv = zext i16 %offset.078 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %conv
  call fastcc void @lt9611uxc_firmware_write_page(ptr noundef %lt9611uxc, i16 noundef zeroext %offset.078, ptr noundef %add.ptr)
  %add = add i16 %offset.078, 32
  %sub = add i32 %remain.079, -32
  %cmp9 = icmp ugt i32 %sub, 31
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %offset.0.lcssa = phi i16 [ 0, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %remain.0.lcssa = phi i32 [ %18, %do.end.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0.lcssa)
  %cmp12.not = icmp eq i32 %remain.0.lcssa, 0
  br i1 %cmp12.not, label %for.end.if.end21_crit_edge, label %if.then14

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %23 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %data17 = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data17, align 4
  %conv18 = zext i16 %offset.0.lcssa to i32
  %add.ptr19 = getelementptr i8, ptr %27, i32 %conv18
  %28 = call ptr @memcpy(ptr %buf, ptr %add.ptr19, i32 %remain.0.lcssa)
  call fastcc void @lt9611uxc_firmware_write_page(ptr noundef %lt9611uxc, i16 noundef zeroext %offset.0.lcssa, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %for.end.if.end21_crit_edge
  call void @msleep(i32 noundef 20) #8
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %seq_read_setup.i) #8
  %33 = call ptr @memcpy(ptr %seq_read_setup.i, ptr @__const.lt9611uxc_firmware_read.seq_read_setup, i32 24)
  %add.i = add i32 %32, 31
  %and.i = and i32 %add.i, -32
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %lt9611uxc_firmware_read.exit.thread, label %if.end.i

lt9611uxc_firmware_read.exit.thread:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %seq_read_setup.i) #8
  br label %out

if.end.i:                                         ; preds = %if.end21
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_multi_reg_write(ptr noundef %35, ptr noundef nonnull %seq_read_setup.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp18.not.i = icmp eq i32 %32, 0
  br i1 %cmp18.not.i, label %if.end.i.lt9611uxc_firmware_read.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.lt9611uxc_firmware_read.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_firmware_read.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %def.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 0, i32 1
  %delay_us.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 0, i32 2
  %arrayinit.element.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 1
  %def2.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 1, i32 1
  %delay_us3.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 1, i32 2
  %arrayinit.element4.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 2
  %def6.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 2, i32 1
  %delay_us7.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 2, i32 2
  %arrayinit.element8.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 3
  %def10.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 3, i32 1
  %delay_us14.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 3, i32 2
  %arrayinit.element15.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 4
  %def17.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 4, i32 1
  %delay_us20.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 4, i32 2
  %arrayinit.element21.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 5
  %def23.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 5, i32 1
  %delay_us24.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 5, i32 2
  %arrayinit.element25.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 6
  %def27.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 6, i32 1
  %delay_us28.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 6, i32 2
  %arrayinit.element29.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 7
  %def31.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 7, i32 1
  %delay_us32.i.i = getelementptr inbounds %struct.reg_sequence, ptr %seq_read_page.i.i, i32 7, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv20.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.body.i.for.body.i_crit_edge ]
  %offset.019.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %add4.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i.i.i, i32 %conv20.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %seq_read_page.i.i) #8
  %36 = ptrtoint ptr %seq_read_page.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32858, ptr %seq_read_page.i.i, align 4
  %37 = ptrtoint ptr %def.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 160, ptr %def.i.i, align 4
  %38 = ptrtoint ptr %delay_us.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %delay_us.i.i, align 4
  %39 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 32858, ptr %arrayinit.element.i.i, align 4
  %40 = ptrtoint ptr %def2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 128, ptr %def2.i.i, align 4
  %41 = ptrtoint ptr %delay_us3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %delay_us3.i.i, align 4
  %42 = ptrtoint ptr %arrayinit.element4.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32859, ptr %arrayinit.element4.i.i, align 4
  %43 = ptrtoint ptr %def6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %def6.i.i, align 4
  %44 = ptrtoint ptr %delay_us7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %delay_us7.i.i, align 4
  %45 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32860, ptr %arrayinit.element8.i.i, align 4
  %46 = lshr i32 %conv20.i, 8
  %47 = ptrtoint ptr %def10.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %def10.i.i, align 4
  %48 = ptrtoint ptr %delay_us14.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %delay_us14.i.i, align 4
  %49 = ptrtoint ptr %arrayinit.element15.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32861, ptr %arrayinit.element15.i.i, align 4
  %and19.i.i = and i32 %conv20.i, 224
  %50 = ptrtoint ptr %def17.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and19.i.i, ptr %def17.i.i, align 4
  %51 = ptrtoint ptr %delay_us20.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %delay_us20.i.i, align 4
  %52 = ptrtoint ptr %arrayinit.element21.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 32858, ptr %arrayinit.element21.i.i, align 4
  %53 = ptrtoint ptr %def23.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 144, ptr %def23.i.i, align 4
  %54 = ptrtoint ptr %delay_us24.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %delay_us24.i.i, align 4
  %55 = ptrtoint ptr %arrayinit.element25.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 32858, ptr %arrayinit.element25.i.i, align 4
  %56 = ptrtoint ptr %def27.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 128, ptr %def27.i.i, align 4
  %57 = ptrtoint ptr %delay_us28.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %delay_us28.i.i, align 4
  %58 = ptrtoint ptr %arrayinit.element29.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32856, ptr %arrayinit.element29.i.i, align 4
  %59 = ptrtoint ptr %def31.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 33, ptr %def31.i.i, align 4
  %60 = ptrtoint ptr %delay_us32.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %delay_us32.i.i, align 4
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 8
  %call.i.i = call i32 @regmap_multi_reg_write(ptr noundef %62, ptr noundef nonnull %seq_read_page.i.i, i32 noundef 8) #8
  %63 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i, align 8
  %call34.i.i = call i32 @regmap_noinc_read(ptr noundef %64, i32 noundef 32863, ptr noundef %arrayidx.i, i32 noundef 32) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %seq_read_page.i.i) #8
  %add4.i = add i16 %offset.019.i, 32
  %conv.i = zext i16 %add4.i to i32
  %cmp.i = icmp ugt i32 %32, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.lt9611uxc_firmware_read.exit_crit_edge

for.body.i.lt9611uxc_firmware_read.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_firmware_read.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

lt9611uxc_firmware_read.exit:                     ; preds = %for.body.i.lt9611uxc_firmware_read.exit_crit_edge, %if.end.i.lt9611uxc_firmware_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %seq_read_setup.i) #8
  %65 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw, align 4
  %data26 = getelementptr inbounds %struct.firmware, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data26, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  %bcmp = call i32 @bcmp(ptr nonnull %call9.i.i.i, ptr %68, i32 %70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  %71 = ptrtoint ptr %lt9611uxc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lt9611uxc, align 8
  br i1 %tobool29.not, label %do.end33, label %do.end38

do.end33:                                         ; preds = %lt9611uxc_firmware_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.62) #11
  %73 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call9.i.i.i, i32 noundef %76, i1 noundef zeroext false) #8
  br label %if.end40

do.end38:                                         ; preds = %lt9611uxc_firmware_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.66) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %do.end33
  %ret.0 = phi i32 [ 0, %do.end38 ], [ -22, %do.end33 ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %out

out:                                              ; preds = %if.end40, %lt9611uxc_firmware_read.exit.thread
  %ret.1 = phi i32 [ %ret.0, %if.end40 ], [ -12, %lt9611uxc_firmware_read.exit.thread ]
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 8
  %call.i73 = call i32 @regmap_write(ptr noundef %78, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock.i) #8
  %reset_gpio.i = getelementptr inbounds %struct.lt9611uxc, ptr %lt9611uxc, i32 0, i32 12
  %79 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %80, i32 noundef 1) #8
  call void @msleep(i32 noundef 20) #8
  %81 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %82, i32 noundef 0) #8
  call void @msleep(i32 noundef 20) #8
  %83 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %84, i32 noundef 1) #8
  call void @msleep(i32 noundef 300) #8
  %85 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %86) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %seq_block_erase) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %seq_setup) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611uxc_hpd_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %work, i32 -1188
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then.if.end10_crit_edge, label %if.then4

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %1) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ocm_lock = getelementptr i8, ptr %work, i32 -144
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock, i32 noundef 0) #8
  %hdmi_connected = getelementptr i8, ptr %work, i32 102
  %4 = ptrtoint ptr %hdmi_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdmi_connected, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  tail call void @mutex_unlock(ptr noundef %ocm_lock) #8
  %bridge = getelementptr i8, ptr %work, i32 -1472
  %cond = select i1 %tobool7.not, i32 2, i32 1
  tail call void @drm_bridge_hpd_notify(ptr noundef %bridge, i32 noundef %cond) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_irq_thread_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %irq_status = alloca i32, align 4
  %hpd_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status) #8
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd_status) #8
  %1 = ptrtoint ptr %hpd_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hpd_status, align 4
  %ocm_lock.i = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock.i, i32 noundef 0) #8
  %regmap.i = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 33006, i32 noundef 1) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 45090, ptr noundef nonnull %irq_status) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 45091, ptr noundef nonnull %hpd_status) #8
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call4 = call i32 @regmap_write(ptr noundef %11, i32 noundef 45090, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_status, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hpd_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hpd_status, align 4
  %edid_read = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 17
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %edid_read to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %edid_read, align 1
  %wq = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 5
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %19 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_status, align 4
  %and11 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %hpd_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpd_status, align 4
  %hdmi_connected = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 18
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %hdmi_connected to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %hdmi_connected, align 2
  %work = getelementptr inbounds %struct.lt9611uxc, ptr %dev_id, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 8
  %call.i28 = call i32 @regmap_write(ptr noundef %29, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lt9611uxc_attach_dsi(ptr nocapture noundef readonly %lt9611uxc, ptr noundef %dsi_node) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #8
  %0 = call ptr @memcpy(ptr %info, ptr @__const.lt9611uxc_attach_dsi.info, i32 28)
  %1 = ptrtoint ptr %lt9611uxc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lt9611uxc, align 8
  %call = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %dsi_node) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.79) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %2, ptr noundef nonnull %call, ptr noundef nonnull %info) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.82) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %call3, i32 0, i32 5
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %call3, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 21, ptr %mode_flags, align 8
  %call10 = call i32 @devm_mipi_dsi_attach(ptr noundef %2, ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.85) #11
  %6 = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi ptr [ %call3, %do.end8 ], [ %6, %do.end14 ], [ inttoptr (i32 -517 to ptr), %do.end ], [ %call3, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #8
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
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lt9611uxc_firmware_write_page(ptr nocapture noundef readonly %lt9611uxc, i16 noundef zeroext %addr, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %seq_write_prepare = alloca [6 x %struct.reg_sequence], align 4
  %seq_write_addr = alloca [5 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %seq_write_prepare) #8
  %0 = call ptr @memcpy(ptr %seq_write_prepare, ptr @__const.lt9611uxc_firmware_write_page.seq_write_prepare, i32 72)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %seq_write_addr) #8
  %1 = ptrtoint ptr %seq_write_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32859, ptr %seq_write_addr, align 4
  %def = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 0, i32 1
  %conv = zext i16 %addr to i32
  %2 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %def, align 4
  %delay_us = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 0, i32 2
  %3 = ptrtoint ptr %delay_us to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %delay_us, align 4
  %arrayinit.element = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32860, ptr %arrayinit.element, align 4
  %def2 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 1, i32 1
  %5 = lshr i32 %conv, 8
  %6 = ptrtoint ptr %def2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %def2, align 4
  %delay_us6 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 1, i32 2
  %7 = ptrtoint ptr %delay_us6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay_us6, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 2
  %8 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32861, ptr %arrayinit.element7, align 4
  %def9 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 2, i32 1
  %and11 = and i32 %conv, 255
  %9 = ptrtoint ptr %def9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and11, ptr %def9, align 4
  %delay_us12 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 2, i32 2
  %10 = ptrtoint ptr %delay_us12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %delay_us12, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 3
  %11 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32858, ptr %arrayinit.element13, align 4
  %def15 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 3, i32 1
  %12 = ptrtoint ptr %def15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %def15, align 4
  %delay_us16 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 3, i32 2
  %13 = ptrtoint ptr %delay_us16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delay_us16, align 4
  %arrayinit.element17 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 4
  %14 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32858, ptr %arrayinit.element17, align 4
  %def19 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 4, i32 1
  %15 = ptrtoint ptr %def19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %def19, align 4
  %delay_us20 = getelementptr inbounds %struct.reg_sequence, ptr %seq_write_addr, i32 4, i32 2
  %16 = ptrtoint ptr %delay_us20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %delay_us20, align 4
  %regmap = getelementptr inbounds %struct.lt9611uxc, ptr %lt9611uxc, i32 0, i32 3
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 33032, i32 noundef 191) #8
  tail call void @msleep(i32 noundef 20) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call22 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 33032, i32 noundef 255) #8
  tail call void @msleep(i32 noundef 20) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 8
  %call24 = call i32 @regmap_multi_reg_write(ptr noundef %22, ptr noundef nonnull %seq_write_prepare, i32 noundef 6) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call26 = call i32 @regmap_noinc_write(ptr noundef %24, i32 noundef 32857, ptr noundef %buf, i32 noundef 32) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 8
  %call29 = call i32 @regmap_multi_reg_write(ptr noundef %26, ptr noundef nonnull %seq_write_addr, i32 noundef 5) #8
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %seq_write_addr) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %seq_write_prepare) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_noinc_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_noinc_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lt9611uxc_connector_init.exit.thread, label %if.end.i

lt9611uxc_connector_init.exit.thread:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %connector.i = getelementptr i8, ptr %bridge, i32 284
  %polled.i = getelementptr i8, ptr %bridge, i32 984
  %2 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %polled.i, align 4
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 992
  %3 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lt9611uxc_bridge_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @drm_connector_init(ptr noundef %5, ptr noundef %connector.i, ptr noundef nonnull @lt9611uxc_bridge_connector_funcs, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.69) #8
  br label %lt9611uxc_connector_init.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder.i, align 4
  %call8.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %7) #8
  br label %lt9611uxc_connector_init.exit

lt9611uxc_connector_init.exit:                    ; preds = %if.end5.i, %if.then4.i
  %retval.0.i = phi i32 [ %call.i, %if.then4.i ], [ %call8.i, %if.end5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %lt9611uxc_connector_init.exit.cleanup_crit_edge, label %lt9611uxc_connector_init.exit.if.end3_crit_edge

lt9611uxc_connector_init.exit.if.end3_crit_edge:  ; preds = %lt9611uxc_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lt9611uxc_connector_init.exit.cleanup_crit_edge:  ; preds = %lt9611uxc_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %lt9611uxc_connector_init.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lt9611uxc_connector_init.exit.cleanup_crit_edge, %lt9611uxc_connector_init.exit.thread
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %retval.0.i, %lt9611uxc_connector_init.exit.cleanup_crit_edge ], [ -19, %lt9611uxc_connector_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay1.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %vdisplay7.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.024.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %2 = ptrtoint ptr %hdisplay1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp3.i = icmp eq i16 %1, %3
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vdisplay.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i, i32 1
  %4 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay.i, align 2
  %6 = ptrtoint ptr %vdisplay7.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay7.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp9.i = icmp eq i16 %5, %7
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %vrefresh.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i, i32 2
  %8 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vrefresh.i, align 2
  %conv13.i = zext i8 %9 to i32
  %call.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %call.i, %conv13.i
  br i1 %cmp14.i, label %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_find_mode.exit

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.lt9611uxc_find_mode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.lt9611uxc_find_mode.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_find_mode.exit

lt9611uxc_find_mode.exit:                         ; preds = %for.inc.i.lt9611uxc_find_mode.exit_crit_edge, %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge ], [ null, %for.inc.i.lt9611uxc_find_mode.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %cond = select i1 %tobool.not, i32 -2, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lt9611uxc_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adj_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ocm_lock.i = getelementptr i8, ptr %bridge, i32 1328
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock.i, i32 noundef 0) #8
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 33006, i32 noundef 1) #8
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %2 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %htotal.i, align 2
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %4 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vtotal.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay.i, align 4
  %conv2.i = zext i16 %7 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %8 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_end.i, align 4
  %conv3.i = zext i16 %9 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %10 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_start.i, align 2
  %conv4.i = zext i16 %11 to i32
  %sub.i = sub nsw i32 %conv3.i, %conv4.i
  %sub9.i = sub nsw i32 %conv4.i, %conv2.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %12 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay.i, align 2
  %conv10.i = zext i16 %13 to i32
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end.i, align 2
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %16 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsync_start.i, align 4
  %conv12.i = zext i16 %17 to i32
  %sub13.i = sub i16 %15, %17
  %sub18.i = sub nsw i32 %conv12.i, %conv10.i
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 8
  %div122.i = lshr i16 %5, 8
  %conv19.i = zext i16 %div122.i to i32
  %call.i4 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 53261, i32 noundef %conv19.i) #8
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %22 = and i16 %5, 255
  %conv23.i = zext i16 %22 to i32
  %call24.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 53262, i32 noundef %conv23.i) #8
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 8
  %div26123.i = lshr i16 %13, 8
  %conv27.i = zext i16 %div26123.i to i32
  %call29.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 53263, i32 noundef %conv27.i) #8
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 8
  %27 = and i16 %13, 255
  %conv33.i = zext i16 %27 to i32
  %call34.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 53264, i32 noundef %conv33.i) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 8
  %div36124.i = lshr i16 %3, 8
  %conv37.i = zext i16 %div36124.i to i32
  %call39.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 53265, i32 noundef %conv37.i) #8
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 8
  %32 = and i16 %3, 255
  %conv43.i = zext i16 %32 to i32
  %call44.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 53266, i32 noundef %conv43.i) #8
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 8
  %div46125.i = lshr i16 %7, 8
  %conv47.i = zext i16 %div46125.i to i32
  %call49.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 53267, i32 noundef %conv47.i) #8
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 8
  %37 = and i16 %7, 255
  %conv53.i = zext i16 %37 to i32
  %call54.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 53268, i32 noundef %conv53.i) #8
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 8
  %40 = and i16 %sub13.i, 255
  %conv58.i = zext i16 %40 to i32
  %call59.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 53269, i32 noundef %conv58.i) #8
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 8
  %div61126.i = lshr i32 %sub.i, 8
  %conv63.i = and i32 %div61126.i, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 53270, i32 noundef 15, i32 noundef %conv63.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 8
  %conv68.i = and i32 %sub.i, 255
  %call69.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 53271, i32 noundef %conv68.i) #8
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 8
  %div71127.i = lshr i32 %sub18.i, 8
  %conv73.i = and i32 %div71127.i, 255
  %call.i129.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 53272, i32 noundef 15, i32 noundef %conv73.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 8
  %conv78.i = and i32 %sub18.i, 255
  %call79.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 53273, i32 noundef %conv78.i) #8
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 8
  %div81128.i = lshr i32 %sub9.i, 8
  %conv83.i = and i32 %div81128.i, 255
  %call.i130.i = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 53274, i32 noundef 15, i32 noundef %conv83.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 8
  %conv88.i = and i32 %sub9.i, 255
  %call89.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 53275, i32 noundef %conv88.i) #8
  %53 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i, align 8
  %call.i6 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 33006, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  tail call void @mutex_unlock(ptr noundef %ocm_lock.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_bridge_detect(ptr noundef %bridge) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #8
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_val, align 4
  %ocm_lock.i = getelementptr i8, ptr %bridge, i32 1328
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock.i, i32 noundef 0) #8
  %regmap.i = getelementptr i8, ptr %bridge, i32 1324
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 33006, i32 noundef 1) #8
  %hpd_supported = getelementptr i8, ptr %bridge, i32 1572
  %3 = ptrtoint ptr %hpd_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hpd_supported, align 8, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 45091, ptr noundef nonnull %reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef %call1) #11
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_val, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end, %entry.if.end5_crit_edge
  %connected.0.off0 = phi i1 [ true, %do.end ], [ %tobool4, %if.else ], [ true, %entry.if.end5_crit_edge ]
  %hdmi_connected = getelementptr i8, ptr %bridge, i32 1574
  %frombool7 = zext i1 %connected.0.off0 to i8
  %11 = ptrtoint ptr %hdmi_connected to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool7, ptr %hdmi_connected, align 2
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %call.i17 = call i32 @regmap_write(ptr noundef %13, i32 noundef 33006, i32 noundef 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @mutex_unlock(ptr noundef %ocm_lock.i) #8
  %spec.select = select i1 %connected.0.off0, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lt9611uxc_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 465) #8
  %edid_read.i = getelementptr i8, ptr %bridge, i32 1573
  %0 = ptrtoint ptr %edid_read.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %edid_read.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then9.i, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then9.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %2 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %wq.i = getelementptr i8, ptr %bridge, i32 1420
  %call1262.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %3 = ptrtoint ptr %edid_read.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %edid_read.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool15.not63.not.i = icmp eq i8 %4, 0
  br i1 %tobool15.not63.not.i, label %if.then9.i.if.end31.i_crit_edge, label %if.then9.i.for.end.i_crit_edge

if.then9.i.for.end.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then9.i.if.end31.i_crit_edge:                  ; preds = %if.then9.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %cleanup.i.if.end31.i_crit_edge, %if.then9.i.if.end31.i_crit_edge
  %__ret10.166.i = phi i32 [ %__ret10.1.i, %cleanup.i.if.end31.i_crit_edge ], [ 50, %if.then9.i.if.end31.i_crit_edge ]
  %call1265.i = phi i32 [ %call12.i, %cleanup.i.if.end31.i_crit_edge ], [ %call1262.i, %if.then9.i.if.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1265.i)
  %tobool32.not.i = icmp eq i32 %call1265.i, 0
  br i1 %tobool32.not.i, label %cleanup.i, label %if.end31.i.lt9611uxc_wait_for_edid.exit_crit_edge

if.end31.i.lt9611uxc_wait_for_edid.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_wait_for_edid.exit

cleanup.i:                                        ; preds = %if.end31.i
  %call35.i = call i32 @schedule_timeout(i32 noundef %__ret10.166.i) #8
  %call12.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %5 = ptrtoint ptr %edid_read.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %edid_read.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool15.not.i = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool19.not.i = icmp eq i32 %call35.i, 0
  %spec.store.select40.i = select i1 %tobool19.not.i, i32 1, i32 %call35.i
  %__ret10.1.i = select i1 %tobool15.not.i, i32 %call35.i, i32 %spec.store.select40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %tobool25.not.i = icmp eq i32 %__ret10.1.i, 0
  %not.tobool15.not.i = xor i1 %tobool15.not.i, true
  %7 = select i1 %not.tobool15.not.i, i1 true, i1 %tobool25.not.i
  br i1 %7, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end31.i_crit_edge

cleanup.i.if.end31.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then9.i.for.end.i_crit_edge
  %__ret10.1.lcssa.i = phi i32 [ 50, %if.then9.i.for.end.i_crit_edge ], [ %__ret10.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #8
  br label %lt9611uxc_wait_for_edid.exit

lt9611uxc_wait_for_edid.exit:                     ; preds = %for.end.i, %if.end31.i.lt9611uxc_wait_for_edid.exit_crit_edge
  %__ret10.254.i = phi i32 [ %__ret10.1.lcssa.i, %for.end.i ], [ %call1265.i, %if.end31.i.lt9611uxc_wait_for_edid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.254.i)
  %cmp = icmp slt i32 %__ret10.254.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %lt9611uxc_wait_for_edid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.72, i32 noundef %__ret10.254.i) #11
  br label %cleanup

if.else:                                          ; preds = %lt9611uxc_wait_for_edid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.254.i)
  %cmp2 = icmp eq i32 %__ret10.254.i, 0
  br i1 %cmp2, label %do.end6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.75) #11
  br label %cleanup

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @lt9611uxc_get_edid_block, ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end6 ], [ %call9, %if.end8 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr i8, ptr %connector, i32 -284
  %funcs = getelementptr i8, ptr %connector, i32 -128
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %get_edid = getelementptr inbounds %struct.drm_bridge_funcs, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %get_edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_edid, align 4
  %call2 = tail call ptr %3(ptr noundef %bridge, ptr noundef %connector) #8
  %call3 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call2) #8
  %call4 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call2) #8
  tail call void @kfree(ptr noundef %call2) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay1.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %vdisplay7.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.024.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %2 = ptrtoint ptr %hdisplay1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp3.i = icmp eq i16 %1, %3
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vdisplay.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i, i32 1
  %4 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay.i, align 2
  %6 = ptrtoint ptr %vdisplay7.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay7.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp9.i = icmp eq i16 %5, %7
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %vrefresh.i = getelementptr [16 x %struct.lt9611uxc_mode], ptr @lt9611uxc_modes, i32 0, i32 %i.024.i, i32 2
  %8 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vrefresh.i, align 2
  %conv13.i = zext i8 %9 to i32
  %call.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %call.i, %conv13.i
  br i1 %cmp14.i, label %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_find_mode.exit

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.lt9611uxc_find_mode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.lt9611uxc_find_mode.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lt9611uxc_find_mode.exit

lt9611uxc_find_mode.exit:                         ; preds = %for.inc.i.lt9611uxc_find_mode.exit_crit_edge, %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %land.lhs.true11.i.lt9611uxc_find_mode.exit_crit_edge ], [ null, %for.inc.i.lt9611uxc_find_mode.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %cond = select i1 %tobool.not, i32 -2, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr i8, ptr %connector, i32 -284
  %funcs = getelementptr i8, ptr %connector, i32 -128
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %detect = getelementptr inbounds %struct.drm_bridge_funcs, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %detect, align 4
  %call2 = tail call i32 %3(ptr noundef %bridge) #8
  ret i32 %call2
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
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_get_edid_block(ptr noundef %data, ptr noundef %buf, i32 noundef %block, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %block)
  %cmp1 = icmp ugt i32 %block, 1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %ocm_lock.i = getelementptr inbounds %struct.lt9611uxc, ptr %data, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ocm_lock.i, i32 noundef 0) #8
  %regmap.i = getelementptr inbounds %struct.lt9611uxc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 33006, i32 noundef 1) #8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 45067, i32 noundef 16) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %mul = shl nuw nsw i32 %block, 7
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 45066, i32 noundef %mul) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call7 = tail call i32 @regmap_noinc_read(ptr noundef %7, i32 noundef 45232, ptr noundef %buf, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end3.if.end9_crit_edge, label %do.end

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.77, i32 noundef %call7) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end3.if.end9_crit_edge
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i20 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 33006, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  tail call void @mutex_unlock(ptr noundef %ocm_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lt9611uxc_hdmi_hw_params(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %fmt, ptr nocapture noundef readnone %hparms) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lt9611uxc_audio_shutdown(ptr nocapture noundef %dev, ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #2 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #8
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !199
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !199
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !199
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %of_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %of_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_firmware_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr inbounds %struct.lt9611uxc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_version, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.89, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt9611uxc_firmware_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @lt9611uxc_firmware_update(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.len = select i1 %cmp, i32 %call1, i32 %len
  ret i32 %call1.len
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_lontium_lt9611uxc__313_1020_lt9611uxc_driver_init6, !1, !"__initcall__kmod_lontium_lt9611uxc__313_1020_lt9611uxc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1020, i32 1}
!2 = !{ptr @__exitcall_lt9611uxc_driver_exit, !1, !"__exitcall_lt9611uxc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author314, !4, !"__UNIQUE_ID_author314", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1022, i32 1}
!5 = !{ptr @__UNIQUE_ID_file315, !6, !"__UNIQUE_ID_file315", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1023, i32 1}
!7 = !{ptr @__UNIQUE_ID_license316, !6, !"__UNIQUE_ID_license316", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1012, i32 11}
!10 = !{ptr @lt9611uxc_driver, !11, !"lt9611uxc_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1010, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 855, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lt9611uxc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @lt9611uxc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @lt9611uxc_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 865, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lt9611uxc_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 867, i32 22}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 869, i32 3}
!28 = !{ptr @lt9611uxc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lt9611uxc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 875, i32 3}
!32 = !{ptr @lt9611uxc_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lt9611uxc_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 897, i32 3}
!36 = !{ptr @lt9611uxc_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lt9611uxc_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 904, i32 3}
!40 = !{ptr @lt9611uxc_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lt9611uxc_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 909, i32 4}
!44 = !{ptr @lt9611uxc_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lt9611uxc_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 916, i32 4}
!48 = !{ptr @lt9611uxc_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lt9611uxc_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 921, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lt9611uxc_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lt9611uxc_probe._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lt9611uxc_probe.__key.30, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 927, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lt9611uxc_probe.__key.32, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 928, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 934, i32 3}
!63 = !{ptr @lt9611uxc_probe._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lt9611uxc_probe._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @lt9611uxc_regmap_config, !66, !"lt9611uxc_regmap_config", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 77, i32 35}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 66, i32 11}
!69 = !{ptr @lt9611uxc_ranges, !70, !"lt9611uxc_ranges", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 64, i32 38}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 525, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @lt9611uxc_parse_dt._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @lt9611uxc_parse_dt._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 538, i32 46}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 540, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lt9611uxc_gpio_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @lt9611uxc_gpio_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 544, i32 56}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 546, i32 3}
!87 = !{ptr @lt9611uxc_gpio_init._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lt9611uxc_gpio_init._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 211, i32 34}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 212, i32 34}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 564, i32 3}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lt9611uxc_read_device_rev._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @lt9611uxc_read_device_rev._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 566, i32 3}
!100 = !{ptr @lt9611uxc_read_device_rev._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @lt9611uxc_read_device_rev._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 582, i32 3}
!104 = !{ptr @lt9611uxc_read_version._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @lt9611uxc_read_version._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 584, i32 3}
!108 = !{ptr @lt9611uxc_read_version._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @lt9611uxc_read_version._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 756, i32 30}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 760, i32 2}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @lt9611uxc_firmware_update._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @lt9611uxc_firmware_update._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 795, i32 3}
!119 = !{ptr @lt9611uxc_firmware_update._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @lt9611uxc_firmware_update._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 796, i32 28}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 799, i32 3}
!125 = !{ptr @lt9611uxc_firmware_update._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @lt9611uxc_firmware_update._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @lt9611uxc_bridge_funcs, !128, !"lt9611uxc_bridge_funcs", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 512, i32 38}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 339, i32 3}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 351, i32 3}
!133 = !{ptr @lt9611uxc_bridge_connector_helper_funcs, !134, !"lt9611uxc_bridge_connector_helper_funcs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 320, i32 48}
!135 = !{ptr @lt9611uxc_modes, !136, !"lt9611uxc_modes", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 95, i32 30}
!137 = !{ptr @lt9611uxc_bridge_connector_funcs, !138, !"lt9611uxc_bridge_connector_funcs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 325, i32 41}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 450, i32 4}
!141 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @lt9611uxc_bridge_detect._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @lt9611uxc_bridge_detect._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 502, i32 3}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @lt9611uxc_bridge_get_edid._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @lt9611uxc_bridge_get_edid._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 505, i32 3}
!151 = !{ptr @lt9611uxc_bridge_get_edid._entry.74, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @lt9611uxc_bridge_get_edid._entry_ptr.76, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 487, i32 3}
!155 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @lt9611uxc_get_edid_block._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @lt9611uxc_get_edid_block._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 266, i32 3}
!160 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @lt9611uxc_attach_dsi._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @lt9611uxc_attach_dsi._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 272, i32 3}
!165 = !{ptr @lt9611uxc_attach_dsi._entry.81, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @lt9611uxc_attach_dsi._entry_ptr.83, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 283, i32 3}
!169 = !{ptr @lt9611uxc_attach_dsi._entry.84, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @lt9611uxc_attach_dsi._entry_ptr.86, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 642, i32 38}
!173 = !{ptr @lt9611uxc_codec_ops, !174, !"lt9611uxc_codec_ops", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 626, i32 36}
!175 = !{ptr @lt9611uxc_match_table, !176, !"lt9611uxc_match_table", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 1004, i32 34}
!177 = !{ptr @lt9611uxc_attr_groups, !178, !"lt9611uxc_attr_groups", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 841, i32 38}
!179 = !{ptr @lt9611uxc_attr_group, !180, !"lt9611uxc_attr_group", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 837, i32 37}
!181 = !{ptr @lt9611uxc_attrs, !182, !"lt9611uxc_attrs", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 832, i32 26}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 830, i32 8}
!185 = !{ptr @dev_attr_lt9611uxc_firmware, !184, !"dev_attr_lt9611uxc_firmware", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 827, i32 25}
!188 = !{ptr @lt9611uxc_id, !189, !"lt9611uxc_id", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/bridge/lontium-lt9611uxc.c", i32 999, i32 29}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"auto-init"}
!200 = !{i8 0, i8 2}
