; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/tc358768.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358768.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tc358768_priv = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, i32, i32, %struct.mipi_dsi_host, %struct.drm_bridge, %struct.tc358768_dsi_output, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.tc358768_dsi_output = type { ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_tc358768__329_1093_tc358768_driver_init6 = internal global ptr @tc358768_driver_init, section ".initcall6.init", align 4
@tc358768_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tc358768_i2c_probe, ptr @tc358768_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358768_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358768_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc358768_driver_exit = internal global ptr @tc358768_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [55 x i8] c"tc358768.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [57 x i8] c"tc358768.description=TC358768AXBG/TC358778XBG DSI bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [46 x i8] c"tc358768.file=drivers/gpu/drm/bridge/tc358768\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [24 x i8] c"tc358768.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358768\00", [23 x i8] zeroinitializer }, align 32
@tc358768_of_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tc358768_i2c_ids = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc358768\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tc358778\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tc358768_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tc358768_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 0, i32 0, i32 16, ptr @tc358768_writeable_reg, ptr @tc358768_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1580, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tc358768:1057:(&tc358768_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@tc358768_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1059, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc358768_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/tc358768.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc358768_i2c_probe._entry_ptr = internal global ptr @tc358768_i2c_probe._entry, section ".printk_index", align 4
@tc358768_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @tc358768_dsi_host_attach, ptr @tc358768_dsi_host_detach, ptr @tc358768_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@tc358768_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tc358768_bridge_attach, ptr null, ptr @tc358768_bridge_mode_valid, ptr null, ptr @tc358768_bridge_disable, ptr @tc358768_bridge_post_disable, ptr null, ptr @tc358768_bridge_pre_enable, ptr @tc358768_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@default_tc358768_timings = internal constant { %struct.drm_bridge_timings, [16 x i8] } { %struct.drm_bridge_timings { i32 74, i32 0, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@tc358768_get_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 1016, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tc358768_get_regulators\00", [40 x i8] zeroinitializer }, align 32
@tc358768_get_regulators._entry_ptr = internal global ptr @tc358768_get_regulators._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddc\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddmipi\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported number of data lanes(%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tc358768_dsi_host_attach\00", [39 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_attach._entry_ptr = internal global ptr @tc358768_dsi_host_attach._entry, section ".printk_index", align 4
@tc358768_dsi_host_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 396, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Only MIPI_DSI_MODE_VIDEO is supported\0A\00", [57 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_attach._entry_ptr.18 = internal global ptr @tc358768_dsi_host_attach._entry.16, section ".printk_index", align 4
@tc358768_dsi_host_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.6, i32 405, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only MIPI_DSI_FMT_RGB888 tested!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_attach._entry_ptr.22 = internal global ptr @tc358768_dsi_host_attach._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lines\00", [21 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 464, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bridge is not enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tc358768_dsi_host_transfer\00", [37 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_transfer._entry_ptr = internal global ptr @tc358768_dsi_host_transfer._entry, section ".printk_index", align 4
@tc358768_dsi_host_transfer._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 469, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MIPI rx is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_transfer._entry_ptr.28 = internal global ptr @tc358768_dsi_host_transfer._entry.26, section ".printk_index", align 4
@tc358768_dsi_host_transfer._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 474, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Maximum 8 byte MIPI tx is supported\0A\00", [59 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_transfer._entry_ptr.31 = internal global ptr @tc358768_dsi_host_transfer._entry.29, section ".printk_index", align 4
@tc358768_dsi_host_transfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.6, i32 509, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Software disable failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tc358768_dsi_host_transfer._entry_ptr.34 = internal global ptr @tc358768_dsi_host_transfer._entry.32, section ".printk_index", align 4
@tc358768_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 528, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"needs atomic updates support\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc358768_bridge_attach\00", [41 x i8] zeroinitializer }, align 32
@tc358768_bridge_attach._entry_ptr = internal global ptr @tc358768_bridge_attach._entry, section ".printk_index", align 4
@tc358768_calc_pll.frs_limits = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1000000000, i32 500000000, i32 250000000, i32 125000000, i32 62500000], [44 x i8] zeroinitializer }, align 32
@tc358768_calc_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not find suitable PLL setup\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc358768_calc_pll\00", [46 x i8] zeroinitializer }, align 32
@tc358768_calc_pll._entry_ptr = internal global ptr @tc358768_calc_pll._entry, section ".printk_index", align 4
@tc358768_bridge_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.39, ptr @.str.6, i32 568, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tc358768_bridge_disable\00", [40 x i8] zeroinitializer }, align 32
@tc358768_bridge_disable._entry_ptr = internal global ptr @tc358768_bridge_disable._entry, section ".printk_index", align 4
@tc358768_hw_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 279, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error disabling regulators (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc358768_hw_disable\00", [44 x i8] zeroinitializer }, align 32
@tc358768_hw_disable._entry_ptr = internal global ptr @tc358768_hw_disable._entry, section ".printk_index", align 4
@tc358768_bridge_pre_enable.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tc358768_bridge_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 643, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Non-continuous mode unimplemented, falling back to continuous\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tc358768_bridge_pre_enable\00", [37 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry_ptr = internal global ptr @tc358768_bridge_pre_enable._entry, section ".printk_index", align 4
@tc358768_bridge_pre_enable._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 651, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Software reset failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry_ptr.46 = internal global ptr @tc358768_bridge_pre_enable._entry.44, section ".printk_index", align 4
@tc358768_bridge_pre_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.6, i32 659, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PLL setup failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry_ptr.49 = internal global ptr @tc358768_bridge_pre_enable._entry.47, section ".printk_index", align 4
@tc358768_bridge_pre_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.6, i32 698, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid data format (%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry_ptr.52 = internal global ptr @tc358768_bridge_pre_enable._entry.50, section ".printk_index", align 4
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.53, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsiclk_nsk: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.54, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ui_nsk: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.55, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsibclk_nsk: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.56, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_delay_nsk: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.57, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINEINITCNT: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.58, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LPTXTIMECNT: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.59, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCLK_HEADERCNT: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.60, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCLK_TRAILCNT: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.61, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"THS_HEADERCNT: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.62, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TWAKEUP: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.63, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCLK_POSTCNT: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.64, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"THS_TRAILCNT: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.65, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BTACNTRL1: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.43, ptr @.str.6, i32 887, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bridge pre_enable failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tc358768_bridge_pre_enable._entry_ptr.68 = internal global ptr @tc358768_bridge_pre_enable._entry.66, section ".printk_index", align 4
@tc358768_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 242, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error enabling refclk (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc358768_hw_enable\00", [45 x i8] zeroinitializer }, align 32
@tc358768_hw_enable._entry_ptr = internal global ptr @tc358768_hw_enable._entry, section ".printk_index", align 4
@tc358768_hw_enable._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.6, i32 246, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error enabling regulators (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358768_hw_enable._entry_ptr.73 = internal global ptr @tc358768_hw_enable._entry.71, section ".printk_index", align 4
@tc358768_setup_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.6, i32 586, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLL calculation failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc358768_setup_pll\00", [45 x i8] zeroinitializer }, align 32
@tc358768_setup_pll._entry_ptr = internal global ptr @tc358768_setup_pll._entry, section ".printk_index", align 4
@tc358768_setup_pll.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.6, ptr @.str.76, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PLL: refclk %lu, fbd %u, prd %u, frs %u\0A\00", [55 x i8] zeroinitializer }, align 32
@tc358768_setup_pll.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.6, ptr @.str.77, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PLL: pll_clk: %u, DSIClk %u, DSIByteClk %u\0A\00", [52 x i8] zeroinitializer }, align 32
@tc358768_setup_pll.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.6, ptr @.str.78, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PLL: pclk %u (panel: %u)\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358768_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.79, ptr @.str.6, i32 899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc358768_bridge_enable\00", [41 x i8] zeroinitializer }, align 32
@tc358768_bridge_enable._entry_ptr = internal global ptr @tc358768_bridge_enable._entry, section ".printk_index", align 4
@tc358768_bridge_enable._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.6, i32 911, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bridge enable failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358768_bridge_enable._entry_ptr.82 = internal global ptr @tc358768_bridge_enable._entry.80, section ".printk_index", align 4
@switch.table.tc358768_dsi_host_attach = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [61 x i64] [i64 59, i64 32, i64 0, i64 248, i64 520, i64 521, i64 522, i64 1036, i64 1037, i64 1038, i64 1039, i64 1040, i64 1041, i64 1042, i64 1043, i64 1044, i64 1045, i64 1046, i64 1047, i64 1048, i64 1049, i64 1050, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1077, i64 1078, i64 1079, i64 1080, i64 1081, i64 1082, i64 1083, i64 1084, i64 1085, i64 1086, i64 1087, i64 1088, i64 1089, i64 1090, i64 1091, i64 1092, i64 1093, i64 1094, i64 1095, i64 1096, i64 1097, i64 1098, i64 1099, i64 1100, i64 1101, i64 1102, i64 1103, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1109, i64 1110]
@__sancov_gen_cov_switch_values.83 = internal global [13 x i64] [i64 11, i64 32, i64 232, i64 516, i64 1280, i64 1281, i64 1282, i64 1292, i64 1293, i64 1294, i64 1304, i64 1305, i64 1306]
@__sancov_gen_cov_switch_values.84 = internal global [77 x i64] [i64 75, i64 32, i64 276, i64 277, i64 278, i64 279, i64 280, i64 281, i64 282, i64 283, i64 284, i64 285, i64 286, i64 287, i64 288, i64 289, i64 290, i64 291, i64 292, i64 293, i64 294, i64 295, i64 296, i64 297, i64 298, i64 299, i64 300, i64 301, i64 302, i64 303, i64 304, i64 305, i64 306, i64 307, i64 308, i64 309, i64 310, i64 311, i64 312, i64 313, i64 314, i64 315, i64 316, i64 317, i64 318, i64 319, i64 512, i64 524, i64 1024, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031, i64 1032, i64 1052, i64 1053, i64 1054, i64 1055, i64 1056, i64 1057, i64 1058, i64 1059, i64 1060, i64 1061, i64 1062, i64 1063, i64 1064, i64 1065, i64 1066, i64 1067, i64 1068, i64 1069, i64 1070, i64 1071]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"tc358768_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1084, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1086, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"tc358768_of_ids\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 999, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"tc358768_i2c_ids\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 992, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1043, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1052, i32 51 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"tc358768_regmap_config\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 980, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1057, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1059, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"tc358768_dsi_host_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 516, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"tc358768_bridge_funcs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 917, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"default_tc358768_timings\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 926, i32 40 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1016, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 126, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 126, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 126, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 386, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 396, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 405, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 431, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 464, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 469, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 474, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 509, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 528, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [11 x i8] c"frs_limits\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 300, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 360, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 568, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 279, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 643, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 651, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 659, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 697, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 722, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 723, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 724, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 725, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 729, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 735, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 744, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 750, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 759, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 765, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 771, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 777, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 794, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 887, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 242, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 246, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 586, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 594, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 596, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 598, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 899, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/tc358768.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 911, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [38 x i8] c"switch.table.tc358768_dsi_host_attach\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_tc358768_driver_exit, ptr @__initcall__kmod_tc358768__329_1093_tc358768_driver_init6, ptr @tc358768_bridge_attach._entry, ptr @tc358768_bridge_attach._entry_ptr, ptr @tc358768_bridge_disable._entry, ptr @tc358768_bridge_disable._entry_ptr, ptr @tc358768_bridge_enable._entry, ptr @tc358768_bridge_enable._entry.80, ptr @tc358768_bridge_enable._entry_ptr, ptr @tc358768_bridge_enable._entry_ptr.82, ptr @tc358768_bridge_pre_enable._entry, ptr @tc358768_bridge_pre_enable._entry.44, ptr @tc358768_bridge_pre_enable._entry.47, ptr @tc358768_bridge_pre_enable._entry.50, ptr @tc358768_bridge_pre_enable._entry.66, ptr @tc358768_bridge_pre_enable._entry_ptr, ptr @tc358768_bridge_pre_enable._entry_ptr.46, ptr @tc358768_bridge_pre_enable._entry_ptr.49, ptr @tc358768_bridge_pre_enable._entry_ptr.52, ptr @tc358768_bridge_pre_enable._entry_ptr.68, ptr @tc358768_calc_pll._entry, ptr @tc358768_calc_pll._entry_ptr, ptr @tc358768_driver_exit, ptr @tc358768_dsi_host_attach._entry, ptr @tc358768_dsi_host_attach._entry.16, ptr @tc358768_dsi_host_attach._entry.19, ptr @tc358768_dsi_host_attach._entry_ptr, ptr @tc358768_dsi_host_attach._entry_ptr.18, ptr @tc358768_dsi_host_attach._entry_ptr.22, ptr @tc358768_dsi_host_transfer._entry, ptr @tc358768_dsi_host_transfer._entry.26, ptr @tc358768_dsi_host_transfer._entry.29, ptr @tc358768_dsi_host_transfer._entry.32, ptr @tc358768_dsi_host_transfer._entry_ptr, ptr @tc358768_dsi_host_transfer._entry_ptr.28, ptr @tc358768_dsi_host_transfer._entry_ptr.31, ptr @tc358768_dsi_host_transfer._entry_ptr.34, ptr @tc358768_get_regulators._entry, ptr @tc358768_get_regulators._entry_ptr, ptr @tc358768_hw_disable._entry, ptr @tc358768_hw_disable._entry_ptr, ptr @tc358768_hw_enable._entry, ptr @tc358768_hw_enable._entry.71, ptr @tc358768_hw_enable._entry_ptr, ptr @tc358768_hw_enable._entry_ptr.73, ptr @tc358768_i2c_probe._entry, ptr @tc358768_i2c_probe._entry_ptr, ptr @tc358768_setup_pll._entry, ptr @tc358768_setup_pll._entry_ptr, ptr @tc358768_driver, ptr @.str, ptr @tc358768_of_ids, ptr @tc358768_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @tc358768_i2c_probe._key, ptr @tc358768_regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tc358768_dsi_host_ops, ptr @tc358768_bridge_funcs, ptr @default_tc358768_timings, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @tc358768_calc_pll.frs_limits, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @switch.table.tc358768_dsi_host_attach], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_of_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_i2c_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_tc358768_timings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_get_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_transfer._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_transfer._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_dsi_host_transfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_calc_pll.frs_limits to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_calc_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_hw_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_pre_enable._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_pre_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_pre_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_pre_enable._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_hw_enable._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_setup_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358768_bridge_enable._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc358768_dsi_host_attach to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc358768_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358768_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tc358768_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 392, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %arrayidx1.i = getelementptr %struct.tc358768_priv, ptr %call.i, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.11, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.tc358768_priv, ptr %call.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.12, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.tc358768_priv, ptr %call.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.13, ptr %arrayidx1.2.i, align 4
  %call.i71 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp3.i = icmp slt i32 %call.i71, 0
  br i1 %cmp3.i, label %tc358768_get_regulators.exit.thread, label %tc358768_get_regulators.exit

tc358768_get_regulators.exit.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call.i71) #10
  br label %cleanup

tc358768_get_regulators.exit:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool7.not = icmp eq i32 %call.i71, 0
  br i1 %tobool7.not, label %if.end9, label %tc358768_get_regulators.exit.cleanup_crit_edge

tc358768_get_regulators.exit.cleanup_crit_edge:   ; preds = %tc358768_get_regulators.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %tc358768_get_regulators.exit
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %refclk = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %refclk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %reset_gpio, align 4
  %cmp.i72 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tc358768_regmap_config, ptr noundef nonnull @tc358768_i2c_probe._key, ptr noundef nonnull @.str.3) #7
  %regmap = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %regmap, align 4
  %cmp.i73 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %dsi_host = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %dsi_host to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev1, ptr %dsi_host, align 4
  %ops = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tc358768_dsi_host_ops, ptr %ops, align 4
  %funcs = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tc358768_bridge_funcs, ptr %funcs, align 4
  %timings = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @default_tc358768_timings, ptr %timings, align 4
  %of_node35 = getelementptr inbounds %struct.tc358768_priv, ptr %call.i, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %of_node35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %of_node35, align 4
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call37 = tail call i32 @mipi_dsi_host_register(ptr noundef %dsi_host) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then20, %if.then13, %tc358768_get_regulators.exit.cleanup_crit_edge, %tc358768_get_regulators.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then13 ], [ %12, %if.then20 ], [ %16, %do.end ], [ %call37, %if.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i71, %tc358768_get_regulators.exit.cleanup_crit_edge ], [ %call.i71, %tc358768_get_regulators.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi_host = getelementptr inbounds %struct.tc358768_priv, ptr %1, i32 0, i32 7
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc358768_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %reg)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %if.end.return_crit_edge
    i32 248, label %if.end.return_crit_edge5
    i32 1072, label %if.end.return_crit_edge6
    i32 1073, label %if.end.return_crit_edge7
    i32 1074, label %if.end.return_crit_edge8
    i32 1075, label %if.end.return_crit_edge9
    i32 1076, label %if.end.return_crit_edge10
    i32 1077, label %if.end.return_crit_edge11
    i32 1078, label %if.end.return_crit_edge12
    i32 1079, label %if.end.return_crit_edge13
    i32 1080, label %if.end.return_crit_edge14
    i32 1081, label %if.end.return_crit_edge15
    i32 1082, label %if.end.return_crit_edge16
    i32 1083, label %if.end.return_crit_edge17
    i32 1084, label %if.end.return_crit_edge18
    i32 1085, label %if.end.return_crit_edge19
    i32 1086, label %if.end.return_crit_edge20
    i32 1087, label %if.end.return_crit_edge21
    i32 1088, label %if.end.return_crit_edge22
    i32 1089, label %if.end.return_crit_edge23
    i32 1090, label %if.end.return_crit_edge24
    i32 1091, label %if.end.return_crit_edge25
    i32 1092, label %if.end.return_crit_edge26
    i32 1093, label %if.end.return_crit_edge27
    i32 1094, label %if.end.return_crit_edge28
    i32 1095, label %if.end.return_crit_edge29
    i32 1096, label %if.end.return_crit_edge30
    i32 1097, label %if.end.return_crit_edge31
    i32 1098, label %if.end.return_crit_edge32
    i32 1099, label %if.end.return_crit_edge33
    i32 1100, label %if.end.return_crit_edge34
    i32 1101, label %if.end.return_crit_edge35
    i32 1102, label %if.end.return_crit_edge36
    i32 1103, label %if.end.return_crit_edge37
    i32 1104, label %if.end.return_crit_edge38
    i32 1105, label %if.end.return_crit_edge39
    i32 1106, label %if.end.return_crit_edge40
    i32 1107, label %if.end.return_crit_edge41
    i32 1108, label %if.end.return_crit_edge42
    i32 1109, label %if.end.return_crit_edge43
    i32 1110, label %if.end.return_crit_edge44
    i32 1036, label %if.end.return_crit_edge45
    i32 1037, label %if.end.return_crit_edge46
    i32 1038, label %if.end.return_crit_edge47
    i32 1039, label %if.end.return_crit_edge48
    i32 1040, label %if.end.return_crit_edge49
    i32 1041, label %if.end.return_crit_edge50
    i32 1042, label %if.end.return_crit_edge51
    i32 1043, label %if.end.return_crit_edge52
    i32 1044, label %if.end.return_crit_edge53
    i32 1045, label %if.end.return_crit_edge54
    i32 1046, label %if.end.return_crit_edge55
    i32 1047, label %if.end.return_crit_edge56
    i32 1048, label %if.end.return_crit_edge57
    i32 1049, label %if.end.return_crit_edge58
    i32 1050, label %if.end.return_crit_edge59
    i32 520, label %if.end.return_crit_edge60
    i32 521, label %if.end.return_crit_edge61
    i32 522, label %if.end.return_crit_edge62
  ]

if.end.return_crit_edge62:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge61:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge60:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge52:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge49:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge48:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge47:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge46:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge44:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge43:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge42:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge39:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge38:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge37:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge36:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge35:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge5:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %if.end.return_crit_edge, %if.end.return_crit_edge5, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %if.end.return_crit_edge16, %if.end.return_crit_edge17, %if.end.return_crit_edge18, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %if.end.return_crit_edge22, %if.end.return_crit_edge23, %if.end.return_crit_edge24, %if.end.return_crit_edge25, %if.end.return_crit_edge26, %if.end.return_crit_edge27, %if.end.return_crit_edge28, %if.end.return_crit_edge29, %if.end.return_crit_edge30, %if.end.return_crit_edge31, %if.end.return_crit_edge32, %if.end.return_crit_edge33, %if.end.return_crit_edge34, %if.end.return_crit_edge35, %if.end.return_crit_edge36, %if.end.return_crit_edge37, %if.end.return_crit_edge38, %if.end.return_crit_edge39, %if.end.return_crit_edge40, %if.end.return_crit_edge41, %if.end.return_crit_edge42, %if.end.return_crit_edge43, %if.end.return_crit_edge44, %if.end.return_crit_edge45, %if.end.return_crit_edge46, %if.end.return_crit_edge47, %if.end.return_crit_edge48, %if.end.return_crit_edge49, %if.end.return_crit_edge50, %if.end.return_crit_edge51, %if.end.return_crit_edge52, %if.end.return_crit_edge53, %if.end.return_crit_edge54, %if.end.return_crit_edge55, %if.end.return_crit_edge56, %if.end.return_crit_edge57, %if.end.return_crit_edge58, %if.end.return_crit_edge59, %if.end.return_crit_edge60, %if.end.return_crit_edge61, %if.end.return_crit_edge62, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end.return_crit_edge5 ], [ false, %if.end.return_crit_edge6 ], [ false, %if.end.return_crit_edge7 ], [ false, %if.end.return_crit_edge8 ], [ false, %if.end.return_crit_edge9 ], [ false, %if.end.return_crit_edge10 ], [ false, %if.end.return_crit_edge11 ], [ false, %if.end.return_crit_edge12 ], [ false, %if.end.return_crit_edge13 ], [ false, %if.end.return_crit_edge14 ], [ false, %if.end.return_crit_edge15 ], [ false, %if.end.return_crit_edge16 ], [ false, %if.end.return_crit_edge17 ], [ false, %if.end.return_crit_edge18 ], [ false, %if.end.return_crit_edge19 ], [ false, %if.end.return_crit_edge20 ], [ false, %if.end.return_crit_edge21 ], [ false, %if.end.return_crit_edge22 ], [ false, %if.end.return_crit_edge23 ], [ false, %if.end.return_crit_edge24 ], [ false, %if.end.return_crit_edge25 ], [ false, %if.end.return_crit_edge26 ], [ false, %if.end.return_crit_edge27 ], [ false, %if.end.return_crit_edge28 ], [ false, %if.end.return_crit_edge29 ], [ false, %if.end.return_crit_edge30 ], [ false, %if.end.return_crit_edge31 ], [ false, %if.end.return_crit_edge32 ], [ false, %if.end.return_crit_edge33 ], [ false, %if.end.return_crit_edge34 ], [ false, %if.end.return_crit_edge35 ], [ false, %if.end.return_crit_edge36 ], [ false, %if.end.return_crit_edge37 ], [ false, %if.end.return_crit_edge38 ], [ false, %if.end.return_crit_edge39 ], [ false, %if.end.return_crit_edge40 ], [ false, %if.end.return_crit_edge41 ], [ false, %if.end.return_crit_edge42 ], [ false, %if.end.return_crit_edge43 ], [ false, %if.end.return_crit_edge44 ], [ false, %if.end.return_crit_edge45 ], [ false, %if.end.return_crit_edge46 ], [ false, %if.end.return_crit_edge47 ], [ false, %if.end.return_crit_edge48 ], [ false, %if.end.return_crit_edge49 ], [ false, %if.end.return_crit_edge50 ], [ false, %if.end.return_crit_edge51 ], [ false, %if.end.return_crit_edge52 ], [ false, %if.end.return_crit_edge53 ], [ false, %if.end.return_crit_edge54 ], [ false, %if.end.return_crit_edge55 ], [ false, %if.end.return_crit_edge56 ], [ false, %if.end.return_crit_edge57 ], [ false, %if.end.return_crit_edge58 ], [ false, %if.end.return_crit_edge59 ], [ false, %if.end.return_crit_edge60 ], [ false, %if.end.return_crit_edge61 ], [ false, %if.end.return_crit_edge62 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc358768_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %reg)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %reg, label %sw.default [
    i32 516, label %if.end.return_crit_edge
    i32 232, label %if.end.return_crit_edge6
    i32 1304, label %if.end.return_crit_edge7
    i32 1305, label %if.end.return_crit_edge8
    i32 1306, label %if.end.return_crit_edge9
    i32 1292, label %if.end.return_crit_edge10
    i32 1293, label %if.end.return_crit_edge11
    i32 1294, label %if.end.return_crit_edge12
    i32 1280, label %if.end.return_crit_edge13
    i32 1281, label %if.end.return_crit_edge14
    i32 1282, label %if.end.return_crit_edge15
  ]

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %if.end.return_crit_edge, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end.return_crit_edge6 ], [ false, %if.end.return_crit_edge7 ], [ false, %if.end.return_crit_edge8 ], [ false, %if.end.return_crit_edge9 ], [ false, %if.end.return_crit_edge10 ], [ false, %if.end.return_crit_edge11 ], [ false, %if.end.return_crit_edge12 ], [ false, %if.end.return_crit_edge13 ], [ false, %if.end.return_crit_edge14 ], [ false, %if.end.return_crit_edge15 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %reg, label %sw.default [
    i32 512, label %entry.return_crit_edge
    i32 524, label %entry.return_crit_edge4
    i32 1052, label %entry.return_crit_edge5
    i32 1053, label %entry.return_crit_edge6
    i32 1054, label %entry.return_crit_edge7
    i32 1055, label %entry.return_crit_edge8
    i32 1056, label %entry.return_crit_edge9
    i32 1057, label %entry.return_crit_edge10
    i32 1058, label %entry.return_crit_edge11
    i32 1059, label %entry.return_crit_edge12
    i32 1060, label %entry.return_crit_edge13
    i32 1061, label %entry.return_crit_edge14
    i32 1062, label %entry.return_crit_edge15
    i32 1063, label %entry.return_crit_edge16
    i32 1064, label %entry.return_crit_edge17
    i32 1065, label %entry.return_crit_edge18
    i32 1066, label %entry.return_crit_edge19
    i32 1067, label %entry.return_crit_edge20
    i32 1068, label %entry.return_crit_edge21
    i32 1069, label %entry.return_crit_edge22
    i32 1070, label %entry.return_crit_edge23
    i32 1071, label %entry.return_crit_edge24
    i32 1024, label %entry.return_crit_edge25
    i32 1025, label %entry.return_crit_edge26
    i32 1026, label %entry.return_crit_edge27
    i32 1027, label %entry.return_crit_edge28
    i32 1028, label %entry.return_crit_edge29
    i32 1029, label %entry.return_crit_edge30
    i32 1030, label %entry.return_crit_edge31
    i32 1031, label %entry.return_crit_edge32
    i32 1032, label %entry.return_crit_edge33
    i32 276, label %entry.return_crit_edge34
    i32 277, label %entry.return_crit_edge35
    i32 278, label %entry.return_crit_edge36
    i32 279, label %entry.return_crit_edge37
    i32 280, label %entry.return_crit_edge38
    i32 281, label %entry.return_crit_edge39
    i32 282, label %entry.return_crit_edge40
    i32 283, label %entry.return_crit_edge41
    i32 284, label %entry.return_crit_edge42
    i32 285, label %entry.return_crit_edge43
    i32 286, label %entry.return_crit_edge44
    i32 287, label %entry.return_crit_edge45
    i32 288, label %entry.return_crit_edge46
    i32 289, label %entry.return_crit_edge47
    i32 290, label %entry.return_crit_edge48
    i32 291, label %entry.return_crit_edge49
    i32 292, label %entry.return_crit_edge50
    i32 293, label %entry.return_crit_edge51
    i32 294, label %entry.return_crit_edge52
    i32 295, label %entry.return_crit_edge53
    i32 296, label %entry.return_crit_edge54
    i32 297, label %entry.return_crit_edge55
    i32 298, label %entry.return_crit_edge56
    i32 299, label %entry.return_crit_edge57
    i32 300, label %entry.return_crit_edge58
    i32 301, label %entry.return_crit_edge59
    i32 302, label %entry.return_crit_edge60
    i32 303, label %entry.return_crit_edge61
    i32 304, label %entry.return_crit_edge62
    i32 305, label %entry.return_crit_edge63
    i32 306, label %entry.return_crit_edge64
    i32 307, label %entry.return_crit_edge65
    i32 308, label %entry.return_crit_edge66
    i32 309, label %entry.return_crit_edge67
    i32 310, label %entry.return_crit_edge68
    i32 311, label %entry.return_crit_edge69
    i32 312, label %entry.return_crit_edge70
    i32 313, label %entry.return_crit_edge71
    i32 314, label %entry.return_crit_edge72
    i32 315, label %entry.return_crit_edge73
    i32 316, label %entry.return_crit_edge74
    i32 317, label %entry.return_crit_edge75
    i32 318, label %entry.return_crit_edge76
    i32 319, label %entry.return_crit_edge77
  ]

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_attach(ptr noundef %host, ptr noundef %dev) #2 align 64 {
entry:
  %bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #7
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !209
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call17 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %17, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %panel, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  %call23 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %19, i32 noundef 16) #7
  %20 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %output = getelementptr i8, ptr %host, i32 296
  %22 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %output, align 4
  %23 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge, align 4
  %bridge31 = getelementptr i8, ptr %host, i32 304
  %25 = ptrtoint ptr %bridge31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %bridge31, align 4
  %26 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %panel, align 4
  %panel33 = getelementptr i8, ptr %host, i32 300
  %28 = ptrtoint ptr %panel33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %panel33, align 4
  %29 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lanes, align 8
  %dsi_lanes = getelementptr i8, ptr %host, i32 312
  %31 = ptrtoint ptr %dsi_lanes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dsi_lanes, align 4
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %of_node36 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node36, align 8
  %call37 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %35, i32 noundef 0, i32 noundef 0) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end28.if.then43_crit_edge, label %if.then39

if.end28.if.then43_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then39:                                        ; preds = %if.end28
  %pd_lines = getelementptr i8, ptr %host, i32 308
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call37, ptr noundef nonnull @.str.23, ptr noundef %pd_lines, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %call37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %phi.cmp = icmp sgt i32 %call.i.i, -1
  br i1 %phi.cmp, label %if.then39.if.end47_crit_edge, label %if.then39.if.then43_crit_edge

if.then39.if.then43_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then43:                                        ; preds = %if.then39.if.then43_crit_edge, %if.end28.if.then43_crit_edge
  %36 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %switch.lookup, label %if.then43.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

if.then43.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tc358768_dsi_host_attach, i32 0, i32 %37
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %if.then43.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.then43.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %pd_lines46 = getelementptr i8, ptr %host, i32 308
  %40 = ptrtoint ptr %pd_lines46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %pd_lines46, align 4
  br label %if.end47

if.end47:                                         ; preds = %mipi_dsi_pixel_format_to_bpp.exit, %if.then39.if.end47_crit_edge
  %bridge48 = getelementptr i8, ptr %host, i32 16
  call void @drm_bridge_add(ptr noundef %bridge48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then25, %if.end15.cleanup_crit_edge, %do.end13, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -524, %do.end13 ], [ %21, %if.then25 ], [ 0, %if.end47 ], [ -524, %do.end6 ], [ %call17, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_detach(ptr noundef %host, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr i8, ptr %host, i32 16
  tail call void @drm_bridge_remove(ptr noundef %bridge) #7
  %panel = getelementptr i8, ptr %host, i32 300
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bridge2 = getelementptr i8, ptr %host, i32 304
  %2 = ptrtoint ptr %bridge2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge2, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_transfer(ptr nocapture noundef %host, ptr noundef %msg) #2 align 64 {
entry:
  %tmpval.i125 = alloca i32, align 4
  %tmpval.i118 = alloca i32, align 4
  %tmpval.i111 = alloca i32, align 4
  %tmpval.i104 = alloca i32, align 4
  %tmpval.i97 = alloca i32, align 4
  %tmpval.i90 = alloca i32, align 4
  %tmpval.i = alloca i32, align 4
  %packet = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet) #7
  %0 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 3
  %enabled = getelementptr i8, ptr %host, i32 -8
  %5 = call ptr @memset(ptr %packet, i32 255, i32 16)
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %10 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp = icmp ugt i32 %15, 8
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  %call18 = call zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext %19) #7
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 4
  %22 = and i8 %21, 63
  %and = zext i8 %22 to i32
  br i1 %call18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  %or = or i32 %and, 4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i) #7
  %23 = ptrtoint ptr %tmpval.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %tmpval.i, align 4
  %error.i = getelementptr i8, ptr %host, i32 -4
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %tc358768_write.exit, label %tc358768_write.exit.thread

tc358768_write.exit.thread:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i90) #7
  br label %tc358768_write.exit96

tc358768_write.exit:                              ; preds = %if.then19
  %regmap.i = getelementptr i8, ptr %host, i32 -56
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 1538, ptr noundef nonnull %tmpval.i, i32 noundef 1) #7
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i90) #7
  %29 = ptrtoint ptr %tmpval.i90 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tmpval.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i92 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i92, label %if.end.i95, label %tc358768_write.exit.tc358768_write.exit96_crit_edge

tc358768_write.exit.tc358768_write.exit96_crit_edge: ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit96

if.end.i95:                                       ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i94 = call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 1540, ptr noundef nonnull %tmpval.i90, i32 noundef 1) #7
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i94, ptr %error.i, align 4
  br label %tc358768_write.exit96

tc358768_write.exit96:                            ; preds = %if.end.i95, %tc358768_write.exit.tc358768_write.exit96_crit_edge, %tc358768_write.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i90) #7
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 2
  %conv22 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv22, 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %conv25 = zext i8 %36 to i32
  %or26 = or i32 %shl, %conv25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i97) #7
  %37 = ptrtoint ptr %tmpval.i97 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or26, ptr %tmpval.i97, align 4
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i99 = icmp eq i32 %39, 0
  br i1 %tobool.not.i99, label %if.end.i102, label %tc358768_write.exit96.tc358768_write.exit103_crit_edge

tc358768_write.exit96.tc358768_write.exit103_crit_edge: ; preds = %tc358768_write.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit103

if.end.i102:                                      ; preds = %tc358768_write.exit96
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i100 = getelementptr i8, ptr %host, i32 -56
  %40 = ptrtoint ptr %regmap.i100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i100, align 4
  %call.i101 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 1552, ptr noundef nonnull %tmpval.i97, i32 noundef 1) #7
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i101, ptr %error.i, align 4
  br label %tc358768_write.exit103

tc358768_write.exit103:                           ; preds = %if.end.i102, %tc358768_write.exit96.tc358768_write.exit103_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i97) #7
  br label %if.end53

if.else:                                          ; preds = %if.end17
  %or31 = or i32 %and, 16384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i104) #7
  %43 = ptrtoint ptr %tmpval.i104 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or31, ptr %tmpval.i104, align 4
  %error.i105 = getelementptr i8, ptr %host, i32 -4
  %44 = ptrtoint ptr %error.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i106 = icmp eq i32 %45, 0
  br i1 %tobool.not.i106, label %tc358768_write.exit110, label %tc358768_write.exit110.thread

tc358768_write.exit110.thread:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i104) #7
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i111) #7
  br label %tc358768_write.exit117

tc358768_write.exit110:                           ; preds = %if.else
  %regmap.i107 = getelementptr i8, ptr %host, i32 -56
  %48 = ptrtoint ptr %regmap.i107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i107, align 4
  %call.i108 = call i32 @regmap_bulk_write(ptr noundef %49, i32 noundef 1538, ptr noundef nonnull %tmpval.i104, i32 noundef 1) #7
  %50 = ptrtoint ptr %error.i105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i108, ptr %error.i105, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i104) #7
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i111) #7
  %53 = ptrtoint ptr %tmpval.i111 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmpval.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i113 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i113, label %if.end.i116, label %tc358768_write.exit110.tc358768_write.exit117_crit_edge

tc358768_write.exit110.tc358768_write.exit117_crit_edge: ; preds = %tc358768_write.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit117

if.end.i116:                                      ; preds = %tc358768_write.exit110
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %regmap.i107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i107, align 4
  %call.i115 = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef 1540, ptr noundef nonnull %tmpval.i111, i32 noundef 1) #7
  %56 = ptrtoint ptr %error.i105 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i115, ptr %error.i105, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %3, align 4
  br label %tc358768_write.exit117

tc358768_write.exit117:                           ; preds = %if.end.i116, %tc358768_write.exit110.tc358768_write.exit117_crit_edge, %tc358768_write.exit110.thread
  %58 = phi i32 [ %47, %tc358768_write.exit110.thread ], [ %52, %tc358768_write.exit110.tc358768_write.exit117_crit_edge ], [ %.pr, %if.end.i116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp33136.not = icmp eq i32 %58, 0
  br i1 %cmp33136.not, label %tc358768_write.exit117.if.end53_crit_edge, label %for.body.lr.ph

tc358768_write.exit117.if.end53_crit_edge:        ; preds = %tc358768_write.exit117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.body.lr.ph:                                   ; preds = %tc358768_write.exit117
  %regmap.i121 = getelementptr i8, ptr %host, i32 -56
  br label %for.body

for.body:                                         ; preds = %tc358768_write.exit124.for.body_crit_edge, %for.body.lr.ph
  %59 = phi i32 [ %58, %for.body.lr.ph ], [ %75, %tc358768_write.exit124.for.body_crit_edge ]
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %add52, %tc358768_write.exit124.for.body_crit_edge ]
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %4, align 4
  %arrayidx35 = getelementptr i8, ptr %61, i32 %i.0137
  %62 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %63 to i32
  %add = or i32 %i.0137, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %59)
  %cmp38 = icmp ult i32 %add, %59
  br i1 %cmp38, label %if.then40, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx43 = getelementptr i8, ptr %61, i32 %add
  %64 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %65 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or47 = or i32 %shl45, %conv36
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %for.body.if.end49_crit_edge
  %val.0 = phi i32 [ %or47, %if.then40 ], [ %conv36, %for.body.if.end49_crit_edge ]
  %conv51 = and i32 %val.0, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i118) #7
  %66 = ptrtoint ptr %tmpval.i118 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv51, ptr %tmpval.i118, align 4
  %67 = ptrtoint ptr %error.i105 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i120 = icmp eq i32 %68, 0
  br i1 %tobool.not.i120, label %if.end.i123, label %if.end49.tc358768_write.exit124_crit_edge

if.end49.tc358768_write.exit124_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit124

if.end.i123:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %add50 = add i32 %i.0137, 1552
  %69 = add i32 %i.0137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1280, i32 %69)
  %70 = icmp ult i32 %69, -1280
  %count.0.i = select i1 %70, i32 1, i32 2
  %71 = ptrtoint ptr %regmap.i121 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i121, align 4
  %call.i122 = call i32 @regmap_bulk_write(ptr noundef %72, i32 noundef %add50, ptr noundef nonnull %tmpval.i118, i32 noundef %count.0.i) #7
  %73 = ptrtoint ptr %error.i105 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i122, ptr %error.i105, align 4
  br label %tc358768_write.exit124

tc358768_write.exit124:                           ; preds = %if.end.i123, %if.end49.tc358768_write.exit124_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i118) #7
  %add52 = add i32 %i.0137, 2
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %cmp33 = icmp ult i32 %add52, %75
  br i1 %cmp33, label %tc358768_write.exit124.for.body_crit_edge, label %tc358768_write.exit124.if.end53_crit_edge

tc358768_write.exit124.if.end53_crit_edge:        ; preds = %tc358768_write.exit124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

tc358768_write.exit124.for.body_crit_edge:        ; preds = %tc358768_write.exit124
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end53:                                         ; preds = %tc358768_write.exit124.if.end53_crit_edge, %tc358768_write.exit117.if.end53_crit_edge, %tc358768_write.exit103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i125) #7
  %76 = ptrtoint ptr %tmpval.i125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %tmpval.i125, align 4
  %error.i126 = getelementptr i8, ptr %host, i32 -4
  %77 = ptrtoint ptr %error.i126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %error.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i127 = icmp eq i32 %78, 0
  br i1 %tobool.not.i127, label %tc358768_write.exit131, label %tc358768_write.exit131.thread

tc358768_write.exit131.thread:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i125) #7
  %79 = ptrtoint ptr %error.i126 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %error.i126, align 4
  br label %do.end59

tc358768_write.exit131:                           ; preds = %if.end53
  %regmap.i128 = getelementptr i8, ptr %host, i32 -56
  %80 = ptrtoint ptr %regmap.i128 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i128, align 4
  %call.i129 = call i32 @regmap_bulk_write(ptr noundef %81, i32 noundef 1536, ptr noundef nonnull %tmpval.i125, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i125) #7
  %82 = ptrtoint ptr %error.i126 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %error.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool55.not = icmp eq i32 %call.i129, 0
  br i1 %tobool55.not, label %if.else61, label %tc358768_write.exit131.do.end59_crit_edge

tc358768_write.exit131.do.end59_crit_edge:        ; preds = %tc358768_write.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59:                                         ; preds = %tc358768_write.exit131.do.end59_crit_edge, %tc358768_write.exit131.thread
  %83 = phi i32 [ %78, %tc358768_write.exit131.thread ], [ %call.i129, %tc358768_write.exit131.do.end59_crit_edge ]
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.33, i32 noundef %83) #10
  br label %cleanup

if.else61:                                        ; preds = %tc358768_write.exit131
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %packet, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else61, %do.end59, %if.end13.cleanup_crit_edge, %do.end11, %do.end5, %do.end
  %retval.0 = phi i32 [ -524, %do.end5 ], [ -524, %do.end11 ], [ -19, %do.end ], [ %call14, %if.end13.cleanup_crit_edge ], [ %83, %do.end59 ], [ %87, %if.else61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 16
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %bridge3 = getelementptr i8, ptr %bridge, i32 288
  %12 = ptrtoint ptr %bridge3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge3, align 4
  %call4 = tail call i32 @drm_bridge_attach(ptr noundef %11, ptr noundef %13, ptr noundef %bridge, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -524, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358768_bridge_mode_valid(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  %call1 = tail call fastcc i32 @tc358768_calc_pll(ptr noundef %add.ptr.i, ptr noundef %mode, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 17
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358768_bridge_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %tmpval.i.i24 = alloca i32, align 4
  %orig.i25 = alloca i32, align 4
  %tmpval.i.i7 = alloca i32, align 4
  %orig.i8 = alloca i32, align 4
  %tmpval.i.i = alloca i32, align 4
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #7
  %0 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %orig.i, align 4, !annotation !209
  %error.i.i = getelementptr i8, ptr %bridge, i32 -20
  %1 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %entry.tc358768_read.exit.i_crit_edge

entry.tc358768_read.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i

if.then2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %orig.i, align 4
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 -72
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 50, ptr noundef nonnull %orig.i, i32 noundef 1) #7
  %6 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i

tc358768_read.exit.i:                             ; preds = %if.then2.i.i, %entry.tc358768_read.exit.i_crit_edge
  %7 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig.i, align 4
  %or.i = or i32 %8, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %8)
  %cmp.not.i = icmp eq i32 %or.i, %8
  br i1 %cmp.not.i, label %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge, label %if.then.i

tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge: ; preds = %tc358768_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit

if.then.i:                                        ; preds = %tc358768_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  %9 = ptrtoint ptr %tmpval.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %tmpval.i.i, align 4
  %10 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i8.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i8.i, label %if.end.i.i, label %if.then.i.tc358768_write.exit.i_crit_edge

if.then.i.tc358768_write.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i9.i = getelementptr i8, ptr %bridge, i32 -72
  %12 = ptrtoint ptr %regmap.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i9.i, align 4
  %call.i10.i = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 50, ptr noundef nonnull %tmpval.i.i, i32 noundef 1) #7
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i10.i, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i

tc358768_write.exit.i:                            ; preds = %if.end.i.i, %if.then.i.tc358768_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  br label %tc358768_update_bits.exit

tc358768_update_bits.exit:                        ; preds = %tc358768_write.exit.i, %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #7
  call void @msleep(i32 noundef 50) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i8) #7
  %15 = ptrtoint ptr %orig.i8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %orig.i8, align 4, !annotation !209
  %16 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i10 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i10, label %if.then2.i.i13, label %tc358768_update_bits.exit.tc358768_read.exit.i16_crit_edge

tc358768_update_bits.exit.tc358768_read.exit.i16_crit_edge: ; preds = %tc358768_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i16

if.then2.i.i13:                                   ; preds = %tc358768_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %orig.i8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %orig.i8, align 4
  %regmap.i.i11 = getelementptr i8, ptr %bridge, i32 -72
  %19 = ptrtoint ptr %regmap.i.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i11, align 4
  %call.i.i12 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %orig.i8, i32 noundef 1) #7
  %21 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i12, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i16

tc358768_read.exit.i16:                           ; preds = %if.then2.i.i13, %tc358768_update_bits.exit.tc358768_read.exit.i16_crit_edge
  %22 = ptrtoint ptr %orig.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %orig.i8, align 4
  %and.i14 = and i32 %23, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i14, i32 %23)
  %cmp.not.i15 = icmp eq i32 %and.i14, %23
  br i1 %cmp.not.i15, label %tc358768_read.exit.i16.tc358768_update_bits.exit23_crit_edge, label %if.then.i18

tc358768_read.exit.i16.tc358768_update_bits.exit23_crit_edge: ; preds = %tc358768_read.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit23

if.then.i18:                                      ; preds = %tc358768_read.exit.i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i7) #7
  %24 = ptrtoint ptr %tmpval.i.i7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i14, ptr %tmpval.i.i7, align 4
  %25 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i8.i17 = icmp eq i32 %26, 0
  br i1 %tobool.not.i8.i17, label %if.end.i.i21, label %if.then.i18.tc358768_write.exit.i22_crit_edge

if.then.i18.tc358768_write.exit.i22_crit_edge:    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i22

if.end.i.i21:                                     ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i9.i19 = getelementptr i8, ptr %bridge, i32 -72
  %27 = ptrtoint ptr %regmap.i9.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i9.i19, align 4
  %call.i10.i20 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 4, ptr noundef nonnull %tmpval.i.i7, i32 noundef 1) #7
  %29 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i10.i20, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i22

tc358768_write.exit.i22:                          ; preds = %if.end.i.i21, %if.then.i18.tc358768_write.exit.i22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i7) #7
  br label %tc358768_update_bits.exit23

tc358768_update_bits.exit23:                      ; preds = %tc358768_write.exit.i22, %tc358768_read.exit.i16.tc358768_update_bits.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i25) #7
  %30 = ptrtoint ptr %orig.i25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %orig.i25, align 4, !annotation !209
  %31 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i27 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i27, label %if.then2.i.i30, label %tc358768_update_bits.exit23.tc358768_read.exit.i34_crit_edge

tc358768_update_bits.exit23.tc358768_read.exit.i34_crit_edge: ; preds = %tc358768_update_bits.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i34

if.then2.i.i30:                                   ; preds = %tc358768_update_bits.exit23
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %orig.i25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %orig.i25, align 4
  %regmap.i.i28 = getelementptr i8, ptr %bridge, i32 -72
  %34 = ptrtoint ptr %regmap.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i28, align 4
  %call.i.i29 = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef 50, ptr noundef nonnull %orig.i25, i32 noundef 1) #7
  %36 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i.i29, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i34

tc358768_read.exit.i34:                           ; preds = %if.then2.i.i30, %tc358768_update_bits.exit23.tc358768_read.exit.i34_crit_edge
  %37 = ptrtoint ptr %orig.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %orig.i25, align 4
  %or.i32 = or i32 %38, 16384
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i32, i32 %38)
  %cmp.not.i33 = icmp eq i32 %or.i32, %38
  br i1 %cmp.not.i33, label %tc358768_read.exit.i34.tc358768_update_bits.exit41_crit_edge, label %if.then.i36

tc358768_read.exit.i34.tc358768_update_bits.exit41_crit_edge: ; preds = %tc358768_read.exit.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit41

if.then.i36:                                      ; preds = %tc358768_read.exit.i34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i24) #7
  %39 = ptrtoint ptr %tmpval.i.i24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i32, ptr %tmpval.i.i24, align 4
  %40 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i8.i35 = icmp eq i32 %41, 0
  br i1 %tobool.not.i8.i35, label %if.end.i.i39, label %if.then.i36.tc358768_write.exit.i40_crit_edge

if.then.i36.tc358768_write.exit.i40_crit_edge:    ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i40

if.end.i.i39:                                     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i9.i37 = getelementptr i8, ptr %bridge, i32 -72
  %42 = ptrtoint ptr %regmap.i9.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i9.i37, align 4
  %call.i10.i38 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 50, ptr noundef nonnull %tmpval.i.i24, i32 noundef 1) #7
  %44 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i10.i38, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i40

tc358768_write.exit.i40:                          ; preds = %if.end.i.i39, %if.then.i36.tc358768_write.exit.i40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i24) #7
  br label %tc358768_update_bits.exit41

tc358768_update_bits.exit41:                      ; preds = %tc358768_write.exit.i40, %tc358768_read.exit.i34.tc358768_update_bits.exit41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i25) #7
  %45 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error.i.i, align 4
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %tc358768_update_bits.exit41.if.end_crit_edge, label %do.end

tc358768_update_bits.exit41.if.end_crit_edge:     ; preds = %tc358768_update_bits.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %tc358768_update_bits.exit41
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.33, i32 noundef %46) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %tc358768_update_bits.exit41.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358768_bridge_post_disable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  %enabled.i = getelementptr i8, ptr %bridge, i32 -24
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.tc358768_hw_disable.exit_crit_edge, label %if.end.i

entry.tc358768_hw_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_hw_disable.exit

if.end.i:                                         ; preds = %entry
  %reset_gpio.i = getelementptr i8, ptr %bridge, i32 -68
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %supplies.i = getelementptr i8, ptr %bridge, i32 -64
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef %call.i) #10
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.end.i, %if.end.i.if.end2.i_crit_edge
  %refclk.i = getelementptr i8, ptr %bridge, i32 -28
  %6 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enabled.i, align 4
  br label %tc358768_hw_disable.exit

tc358768_hw_disable.exit:                         ; preds = %if.end2.i, %entry.tc358768_hw_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358768_bridge_pre_enable(ptr noundef %bridge) #2 align 64 {
entry:
  %tmpval.i1497 = alloca i32, align 4
  %tmpval.i1490 = alloca i32, align 4
  %tmpval.i1483 = alloca i32, align 4
  %tmpval.i1476 = alloca i32, align 4
  %tmpval.i.i1457 = alloca i32, align 4
  %orig.i1458 = alloca i32, align 4
  %tmpval.i.i1449 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  %tmpval.i1442 = alloca i32, align 4
  %tmpval.i1435 = alloca i32, align 4
  %tmpval.i1428 = alloca i32, align 4
  %tmpval.i1307 = alloca i32, align 4
  %tmpval.i1300 = alloca i32, align 4
  %tmpval.i1293 = alloca i32, align 4
  %tmpval.i1286 = alloca i32, align 4
  %tmpval.i1279 = alloca i32, align 4
  %tmpval.i1158 = alloca i32, align 4
  %tmpval.i1043 = alloca i32, align 4
  %tmpval.i1036 = alloca i32, align 4
  %tmpval.i1029 = alloca i32, align 4
  %tmpval.i1022 = alloca i32, align 4
  %tmpval.i1015 = alloca i32, align 4
  %tmpval.i1008 = alloca i32, align 4
  %tmpval.i993 = alloca i32, align 4
  %tmpval.i986 = alloca i32, align 4
  %tmpval.i979 = alloca i32, align 4
  %tmpval.i968 = alloca i32, align 4
  %tmpval.i957 = alloca i32, align 4
  %tmpval.i948 = alloca i32, align 4
  %tmpval.i932 = alloca i32, align 4
  %tmpval.i921 = alloca i32, align 4
  %tmpval.i908 = alloca i32, align 4
  %tmpval.i899 = alloca i32, align 4
  %tmpval.i783 = alloca i32, align 4
  %tmpval.i776 = alloca i32, align 4
  %tmpval.i769 = alloca i32, align 4
  %tmpval.i762 = alloca i32, align 4
  %tmpval.i = alloca i32, align 4
  %tmpval.i3.i = alloca i32, align 4
  %tmpval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  %output = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %mode_flags1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags1, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %entry
  %.b700 = load i1, ptr @tc358768_bridge_pre_enable.__print_once, align 1
  br i1 %.b700, label %do.body.if.end9_crit_edge, label %if.then3

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tc358768_bridge_pre_enable.__print_once, align 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.42) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  %mode_flags.0 = phi i32 [ %3, %entry.if.end9_crit_edge ], [ 0, %if.then3 ], [ 0, %do.body.if.end9_crit_edge ]
  %enabled.i = getelementptr i8, ptr %bridge, i32 -24
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.tc358768_hw_enable.exit_crit_edge

if.end9.tc358768_hw_enable.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_hw_enable.exit

if.end.i:                                         ; preds = %if.end9
  %refclk.i = getelementptr i8, ptr %bridge, i32 -28
  %8 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %refclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end2.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end2.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %clk_prepare_enable.exit.i.if.end2.i_crit_edge

clk_prepare_enable.exit.i.if.end2.i_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

do.end.i:                                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i.i) #10
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.end.i, %clk_prepare_enable.exit.i.if.end2.i_crit_edge, %if.end.i.i.if.end2.i_crit_edge
  %supplies.i = getelementptr i8, ptr %bridge, i32 -64
  %call3.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end2.i.if.end10.i_crit_edge

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

do.end8.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.72, i32 noundef %call3.i) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end8.i, %if.end2.i.if.end10.i_crit_edge
  %reset_gpio.i = getelementptr i8, ptr %bridge, i32 -68
  %14 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end13.i_crit_edge, label %if.then12.i

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %16 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %enabled.i, align 4
  br label %tc358768_hw_enable.exit

tc358768_hw_enable.exit:                          ; preds = %if.end13.i, %if.end9.tc358768_hw_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  %19 = ptrtoint ptr %tmpval.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tmpval.i.i, align 4
  %error.i.i = getelementptr i8, ptr %bridge, i32 -20
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i737 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i737, label %tc358768_write.exit.i, label %tc358768_write.exit.thread.i

tc358768_write.exit.thread.i:                     ; preds = %tc358768_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i3.i) #7
  br label %tc358768_sw_reset.exit.thread

tc358768_write.exit.i:                            ; preds = %tc358768_hw_enable.exit
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 -72
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i738 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 2, ptr noundef nonnull %tmpval.i.i, i32 noundef 1) #7
  %24 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i.i738, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i3.i) #7
  %25 = ptrtoint ptr %tmpval.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tmpval.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i738)
  %tobool.not.i5.i = icmp eq i32 %call.i.i738, 0
  br i1 %tobool.not.i5.i, label %tc358768_sw_reset.exit, label %tc358768_write.exit.i.tc358768_sw_reset.exit.thread_crit_edge

tc358768_write.exit.i.tc358768_sw_reset.exit.thread_crit_edge: ; preds = %tc358768_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_sw_reset.exit.thread

tc358768_sw_reset.exit.thread:                    ; preds = %tc358768_write.exit.i.tc358768_sw_reset.exit.thread_crit_edge, %tc358768_write.exit.thread.i
  %.ph = phi i32 [ %call.i.i738, %tc358768_write.exit.i.tc358768_sw_reset.exit.thread_crit_edge ], [ %21, %tc358768_write.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i3.i) #7
  %26 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %error.i.i, align 4
  br label %do.end15

tc358768_sw_reset.exit:                           ; preds = %tc358768_write.exit.i
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 2, ptr noundef nonnull %tmpval.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i3.i) #7
  %29 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool11.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool11.not, label %if.end17, label %tc358768_sw_reset.exit.do.end15_crit_edge

tc358768_sw_reset.exit.do.end15_crit_edge:        ; preds = %tc358768_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %tc358768_sw_reset.exit.do.end15_crit_edge, %tc358768_sw_reset.exit.thread
  %30 = phi i32 [ %.ph, %tc358768_sw_reset.exit.thread ], [ %call.i7.i, %tc358768_sw_reset.exit.do.end15_crit_edge ]
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.45, i32 noundef %30) #10
  %33 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i740 = icmp eq i32 %34, 0
  br i1 %tobool.not.i740, label %do.end15.cleanup_crit_edge, label %if.end.i744

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i744:                                      ; preds = %do.end15
  %reset_gpio.i741 = getelementptr i8, ptr %bridge, i32 -68
  %35 = ptrtoint ptr %reset_gpio.i741 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset_gpio.i741, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %36, i32 noundef 1) #7
  %supplies.i742 = getelementptr i8, ptr %bridge, i32 -64
  %call.i = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i742) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i743 = icmp slt i32 %call.i, 0
  br i1 %cmp.i743, label %do.end.i745, label %if.end.i744.if.end2.i747_crit_edge

if.end.i744.if.end2.i747_crit_edge:               ; preds = %if.end.i744
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i747

do.end.i745:                                      ; preds = %if.end.i744
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.40, i32 noundef %call.i) #10
  br label %if.end2.i747

if.end2.i747:                                     ; preds = %do.end.i745, %if.end.i744.if.end2.i747_crit_edge
  %refclk.i746 = getelementptr i8, ptr %bridge, i32 -28
  %39 = ptrtoint ptr %refclk.i746 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %refclk.i746, align 4
  call void @clk_disable(ptr noundef %40) #7
  call void @clk_unprepare(ptr noundef %40) #7
  %41 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %enabled.i, align 4
  br label %cleanup

if.end17:                                         ; preds = %tc358768_sw_reset.exit
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %42 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7
  %call18 = call fastcc i32 @tc358768_setup_pll(ptr noundef %add.ptr.i, ptr noundef %adjusted_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48, i32 noundef %call18) #10
  %50 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i749 = icmp eq i32 %51, 0
  br i1 %tobool.not.i749, label %do.end23.cleanup_crit_edge, label %if.end.i754

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i754:                                      ; preds = %do.end23
  %reset_gpio.i750 = getelementptr i8, ptr %bridge, i32 -68
  %52 = ptrtoint ptr %reset_gpio.i750 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reset_gpio.i750, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %53, i32 noundef 1) #7
  %supplies.i751 = getelementptr i8, ptr %bridge, i32 -64
  %call.i752 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i751) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i752)
  %cmp.i753 = icmp slt i32 %call.i752, 0
  br i1 %cmp.i753, label %do.end.i755, label %if.end.i754.if.end2.i757_crit_edge

if.end.i754.if.end2.i757_crit_edge:               ; preds = %if.end.i754
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i757

do.end.i755:                                      ; preds = %if.end.i754
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.40, i32 noundef %call.i752) #10
  br label %if.end2.i757

if.end2.i757:                                     ; preds = %do.end.i755, %if.end.i754.if.end2.i757_crit_edge
  %refclk.i756 = getelementptr i8, ptr %bridge, i32 -28
  %56 = ptrtoint ptr %refclk.i756 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %refclk.i756, align 4
  call void @clk_disable(ptr noundef %57) #7
  call void @clk_unprepare(ptr noundef %57) #7
  %58 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %enabled.i, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %dsiclk26 = getelementptr i8, ptr %bridge, i32 312
  %59 = ptrtoint ptr %dsiclk26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsiclk26, align 4
  %div697 = lshr i32 %60, 2
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %format, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %62, label %do.end67 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb41
    i32 3, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %65 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %66 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %htotal, align 2
  %conv27 = zext i16 %67 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hsync_start, align 2
  %conv28 = zext i16 %69 to i32
  %sub = sub nsw i32 %conv27, %conv28
  %mul29 = mul nsw i32 %sub, 3
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay32 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %hdisplay32 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %hdisplay32, align 4
  %conv33 = zext i16 %71 to i32
  %mul34 = mul nuw nsw i32 %conv33, 3
  %htotal35 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %72 = ptrtoint ptr %htotal35 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %htotal35, align 2
  %conv36 = zext i16 %73 to i32
  %hsync_start37 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %hsync_start37 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hsync_start37, align 2
  %conv38 = zext i16 %75 to i32
  %sub39 = sub nsw i32 %conv36, %conv38
  %mul40 = mul nsw i32 %sub39, 3
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay43 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %hdisplay43 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hdisplay43, align 4
  %conv44 = zext i16 %77 to i32
  %mul45 = mul nuw nsw i32 %conv44, 18
  %div46699 = lshr i32 %mul45, 3
  %htotal47 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %78 = ptrtoint ptr %htotal47 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %htotal47, align 2
  %conv48 = zext i16 %79 to i32
  %hsync_start49 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %hsync_start49 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %hsync_start49, align 2
  %conv50 = zext i16 %81 to i32
  %sub51 = sub nsw i32 %conv48, %conv50
  %mul52 = mul nsw i32 %sub51, 18
  %div53 = sdiv i32 %mul52, 8
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay56 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 1
  %82 = ptrtoint ptr %hdisplay56 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hdisplay56, align 4
  %conv57 = zext i16 %83 to i32
  %mul58 = shl nuw nsw i32 %conv57, 1
  %htotal59 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %84 = ptrtoint ptr %htotal59 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %htotal59, align 2
  %conv60 = zext i16 %85 to i32
  %hsync_start61 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %86 = ptrtoint ptr %hsync_start61 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hsync_start61, align 2
  %conv62 = zext i16 %87 to i32
  %sub63 = sub nsw i32 %conv60, %conv62
  %mul64 = shl nsw i32 %sub63, 1
  br label %sw.epilog

do.end67:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.51, i32 noundef %62) #10
  call fastcc void @tc358768_hw_disable(ptr noundef %add.ptr.i)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb54, %sw.bb41, %sw.bb30, %sw.bb
  %video_start.0 = phi i32 [ %mul64, %sw.bb54 ], [ %div53, %sw.bb41 ], [ %mul40, %sw.bb30 ], [ %mul29, %sw.bb ]
  %data_type.0 = phi i32 [ 14, %sw.bb54 ], [ 46, %sw.bb41 ], [ 30, %sw.bb30 ], [ 62, %sw.bb ]
  %hact.0 = phi i32 [ %mul58, %sw.bb54 ], [ %div46699, %sw.bb41 ], [ %mul34, %sw.bb30 ], [ %mul, %sw.bb ]
  %val.0 = phi i32 [ 87, %sw.bb54 ], [ 79, %sw.bb41 ], [ 71, %sw.bb30 ], [ 55, %sw.bb ]
  %90 = call i32 @llvm.umax.i32(i32 %video_start.0, i32 41)
  %sub71 = add nsw i32 %90, -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i) #7
  %91 = ptrtoint ptr %tmpval.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub71, ptr %tmpval.i, align 4
  %92 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i759 = icmp eq i32 %93, 0
  br i1 %tobool.not.i759, label %tc358768_write.exit, label %tc358768_write.exit.thread

tc358768_write.exit.thread:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i762) #7
  %94 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load i32, ptr %error.i.i, align 4
  br label %tc358768_write.exit768

tc358768_write.exit:                              ; preds = %sw.epilog
  %95 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i.i, align 4
  %call.i760 = call i32 @regmap_bulk_write(ptr noundef %96, i32 noundef 6, ptr noundef nonnull %tmpval.i, i32 noundef 1) #7
  %97 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call.i760, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i762) #7
  %98 = ptrtoint ptr %tmpval.i762 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %val.0, ptr %tmpval.i762, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i760)
  %tobool.not.i764 = icmp eq i32 %call.i760, 0
  br i1 %tobool.not.i764, label %if.end.i767, label %tc358768_write.exit768.thread

tc358768_write.exit768.thread:                    ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i762) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i769) #7
  br label %tc358768_write.exit775thread-pre-split

if.end.i767:                                      ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i.i, align 4
  %call.i766 = call i32 @regmap_bulk_write(ptr noundef %100, i32 noundef 8, ptr noundef nonnull %tmpval.i762, i32 noundef 1) #7
  %101 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.i766, ptr %error.i.i, align 4
  br label %tc358768_write.exit768

tc358768_write.exit768:                           ; preds = %if.end.i767, %tc358768_write.exit.thread
  %102 = phi i32 [ %.pr, %tc358768_write.exit.thread ], [ %call.i766, %if.end.i767 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i762) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i769) #7
  %103 = ptrtoint ptr %tmpval.i769 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %data_type.0, ptr %tmpval.i769, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i771 = icmp eq i32 %102, 0
  br i1 %tobool.not.i771, label %if.end.i774, label %tc358768_write.exit768.tc358768_write.exit775thread-pre-split_crit_edge

tc358768_write.exit768.tc358768_write.exit775thread-pre-split_crit_edge: ; preds = %tc358768_write.exit768
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit775thread-pre-split

if.end.i774:                                      ; preds = %tc358768_write.exit768
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i.i, align 4
  %call.i773 = call i32 @regmap_bulk_write(ptr noundef %105, i32 noundef 80, ptr noundef nonnull %tmpval.i769, i32 noundef 1) #7
  %106 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call.i773, ptr %error.i.i, align 4
  br label %tc358768_write.exit775

tc358768_write.exit775thread-pre-split:           ; preds = %tc358768_write.exit768.tc358768_write.exit775thread-pre-split_crit_edge, %tc358768_write.exit768.thread
  %107 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr1512 = load i32, ptr %error.i.i, align 4
  br label %tc358768_write.exit775

tc358768_write.exit775:                           ; preds = %tc358768_write.exit775thread-pre-split, %if.end.i774
  %108 = phi i32 [ %.pr1512, %tc358768_write.exit775thread-pre-split ], [ %call.i773, %if.end.i774 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i769) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i776) #7
  %109 = ptrtoint ptr %tmpval.i776 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %tmpval.i776, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i778 = icmp eq i32 %108, 0
  br i1 %tobool.not.i778, label %if.end.i781, label %tc358768_write.exit775.tc358768_write.exit782_crit_edge

tc358768_write.exit775.tc358768_write.exit782_crit_edge: ; preds = %tc358768_write.exit775
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit782

if.end.i781:                                      ; preds = %tc358768_write.exit775
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i.i, align 4
  %call.i780 = call i32 @regmap_bulk_write(ptr noundef %111, i32 noundef 320, ptr noundef nonnull %tmpval.i776, i32 noundef 2) #7
  %112 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call.i780, ptr %error.i.i, align 4
  br label %tc358768_write.exit782

tc358768_write.exit782:                           ; preds = %if.end.i781, %tc358768_write.exit775.tc358768_write.exit782_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i776) #7
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %113 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp721560.not = icmp eq i32 %114, 0
  br i1 %cmp721560.not, label %tc358768_write.exit782.if.else162.i.i_crit_edge, label %tc358768_write.exit782.for.body_crit_edge

tc358768_write.exit782.for.body_crit_edge:        ; preds = %tc358768_write.exit782
  br label %for.body

tc358768_write.exit782.if.else162.i.i_crit_edge:  ; preds = %tc358768_write.exit782
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else162.i.i

for.body:                                         ; preds = %tc358768_write.exit789.for.body_crit_edge, %tc358768_write.exit782.for.body_crit_edge
  %i.01561 = phi i32 [ %inc, %tc358768_write.exit789.for.body_crit_edge ], [ 0, %tc358768_write.exit782.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i783) #7
  %115 = ptrtoint ptr %tmpval.i783 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %tmpval.i783, align 4
  %116 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i785 = icmp eq i32 %117, 0
  br i1 %tobool.not.i785, label %if.end.i788, label %for.body.tc358768_write.exit789_crit_edge

for.body.tc358768_write.exit789_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit789

if.end.i788:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul74 = shl i32 %i.01561, 2
  %add = add i32 %mul74, 324
  %118 = add i32 %mul74, -1212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1280, i32 %118)
  %119 = icmp ult i32 %118, -1280
  %count.0.i = select i1 %119, i32 1, i32 2
  %120 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i.i, align 4
  %call.i787 = call i32 @regmap_bulk_write(ptr noundef %121, i32 noundef %add, ptr noundef nonnull %tmpval.i783, i32 noundef %count.0.i) #7
  %122 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call.i787, ptr %error.i.i, align 4
  br label %tc358768_write.exit789

tc358768_write.exit789:                           ; preds = %if.end.i788, %for.body.tc358768_write.exit789_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i783) #7
  %inc = add nuw i32 %i.01561, 1
  %123 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %lanes, align 8
  %cmp72 = icmp ult i32 %inc, %124
  br i1 %cmp72, label %tc358768_write.exit789.for.body_crit_edge, label %tc358768_write.exit789.if.else162.i.i_crit_edge

tc358768_write.exit789.if.else162.i.i_crit_edge:  ; preds = %tc358768_write.exit789
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else162.i.i

tc358768_write.exit789.for.body_crit_edge:        ; preds = %tc358768_write.exit789
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else162.i.i:                                   ; preds = %tc358768_write.exit789.if.else162.i.i_crit_edge, %tc358768_write.exit782.if.else162.i.i_crit_edge
  %125 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div697, i64 1000000000000) #11, !srcloc !210
  %asmresult1.i.i.i = extractvalue { i64, i64 } %125, 1
  %extract.t1568 = trunc i64 %asmresult1.i.i.i to i32
  %126 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 1000000000000) #11, !srcloc !210
  %asmresult1.i.i.i896 = extractvalue { i64, i64 } %126, 1
  %extract.t1570 = trunc i64 %asmresult1.i.i.i896 to i32
  %div79698 = lshr i32 %extract.t1570, 1
  %mul80 = shl i32 %extract.t1570, 1
  %add81 = add i32 %mul80, %extract.t1568
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then88)) #7
          to label %do.body93 [label %if.then88], !srcloc !211

if.then88:                                        ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug316, ptr noundef %128, ptr noundef nonnull @.str.53, i32 noundef %extract.t1570) #7
  br label %do.body93

do.body93:                                        ; preds = %if.then88, %if.else162.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then105)) #7
          to label %do.body110 [label %if.then105], !srcloc !211

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug317, ptr noundef %130, ptr noundef nonnull @.str.54, i32 noundef %div79698) #7
  br label %do.body110

do.body110:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then122)) #7
          to label %do.body127 [label %if.then122], !srcloc !211

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug318, ptr noundef %132, ptr noundef nonnull @.str.55, i32 noundef %extract.t1568) #7
  br label %do.body127

do.body127:                                       ; preds = %if.then122, %do.body110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then139)) #7
          to label %do.end143 [label %if.then139], !srcloc !211

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug319, ptr noundef %134, ptr noundef nonnull @.str.56, i32 noundef %add81) #7
  br label %do.end143

do.end143:                                        ; preds = %if.then139, %do.body127
  %add.i = add i32 %extract.t1568, 100000000
  %div.i = udiv i32 %add.i, %extract.t1568
  %sub145 = add i32 %div.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then158)) #7
          to label %do.end162 [label %if.then158], !srcloc !211

if.then158:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug320, ptr noundef %136, ptr noundef nonnull @.str.57, i32 noundef %sub145) #7
  br label %do.end162

do.end162:                                        ; preds = %if.then158, %do.end143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i899) #7
  %137 = ptrtoint ptr %tmpval.i899 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub145, ptr %tmpval.i899, align 4
  %138 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i901 = icmp eq i32 %139, 0
  br i1 %tobool.not.i901, label %if.end.i904, label %do.end162.tc358768_write.exit905_crit_edge

do.end162.tc358768_write.exit905_crit_edge:       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit905

if.end.i904:                                      ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i.i, align 4
  %call.i903 = call i32 @regmap_bulk_write(ptr noundef %141, i32 noundef 528, ptr noundef nonnull %tmpval.i899, i32 noundef 2) #7
  %142 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call.i903, ptr %error.i.i, align 4
  br label %tc358768_write.exit905

tc358768_write.exit905:                           ; preds = %if.end.i904, %do.end162.tc358768_write.exit905_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i899) #7
  %add.i906 = add i32 %extract.t1568, 50000
  %div.i907 = udiv i32 %add.i906, %extract.t1568
  %sub164 = add i32 %div.i907, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then177)) #7
          to label %do.end181 [label %if.then177], !srcloc !211

if.then177:                                       ; preds = %tc358768_write.exit905
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug321, ptr noundef %144, ptr noundef nonnull @.str.58, i32 noundef %sub164) #7
  br label %do.end181

do.end181:                                        ; preds = %if.then177, %tc358768_write.exit905
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i908) #7
  %145 = ptrtoint ptr %tmpval.i908 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub164, ptr %tmpval.i908, align 4
  %146 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i910 = icmp eq i32 %147, 0
  br i1 %tobool.not.i910, label %if.end.i913, label %do.end181.tc358768_write.exit914_crit_edge

do.end181.tc358768_write.exit914_crit_edge:       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit914

if.end.i913:                                      ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap.i.i, align 4
  %call.i912 = call i32 @regmap_bulk_write(ptr noundef %149, i32 noundef 532, ptr noundef nonnull %tmpval.i908, i32 noundef 2) #7
  %150 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call.i912, ptr %error.i.i, align 4
  br label %tc358768_write.exit914

tc358768_write.exit914:                           ; preds = %if.end.i913, %do.end181.tc358768_write.exit914_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i908) #7
  %add.i915 = add i32 %extract.t1568, 65000
  %div.i916 = udiv i32 %add.i915, %extract.t1568
  %sub183 = add i32 %div.i916, -1
  %mul184 = mul i32 %div79698, 3
  %151 = urem i32 %mul184, 1000
  %152 = sub i32 %mul184, %151
  %mul.i = add i32 %extract.t1568, 300000
  %add.i918 = add i32 %mul.i, %152
  %div.i919 = udiv i32 %add.i918, %extract.t1568
  %div.i920 = udiv i32 %mul80, 1000
  %sub190 = sub i32 %div.i919, %div.i920
  %shl = shl i32 %sub190, 8
  %or191 = or i32 %shl, %sub183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then204)) #7
          to label %do.end208 [label %if.then204], !srcloc !211

if.then204:                                       ; preds = %tc358768_write.exit914
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug322, ptr noundef %154, ptr noundef nonnull @.str.59, i32 noundef %or191) #7
  br label %do.end208

do.end208:                                        ; preds = %if.then204, %tc358768_write.exit914
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i921) #7
  %155 = ptrtoint ptr %tmpval.i921 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or191, ptr %tmpval.i921, align 4
  %156 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i923 = icmp eq i32 %157, 0
  br i1 %tobool.not.i923, label %if.end.i926, label %do.end208.tc358768_write.exit927_crit_edge

do.end208.tc358768_write.exit927_crit_edge:       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit927

if.end.i926:                                      ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap.i.i, align 4
  %call.i925 = call i32 @regmap_bulk_write(ptr noundef %159, i32 noundef 536, ptr noundef nonnull %tmpval.i921, i32 noundef 2) #7
  %160 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call.i925, ptr %error.i.i, align 4
  br label %tc358768_write.exit927

tc358768_write.exit927:                           ; preds = %if.end.i926, %do.end208.tc358768_write.exit927_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i921) #7
  %mul.i929 = add i32 %extract.t1568, 60000
  %add.i930 = add i32 %mul.i929, %152
  %div.i931 = udiv i32 %add.i930, %extract.t1568
  %sub213 = add i32 %div.i931, -5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then226)) #7
          to label %do.end230 [label %if.then226], !srcloc !211

if.then226:                                       ; preds = %tc358768_write.exit927
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug323, ptr noundef %162, ptr noundef nonnull @.str.60, i32 noundef %sub213) #7
  br label %do.end230

do.end230:                                        ; preds = %if.then226, %tc358768_write.exit927
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i932) #7
  %163 = ptrtoint ptr %tmpval.i932 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sub213, ptr %tmpval.i932, align 4
  %164 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i934 = icmp eq i32 %165, 0
  br i1 %tobool.not.i934, label %if.end.i937, label %do.end230.tc358768_write.exit938_crit_edge

do.end230.tc358768_write.exit938_crit_edge:       ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit938

if.end.i937:                                      ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap.i.i, align 4
  %call.i936 = call i32 @regmap_bulk_write(ptr noundef %167, i32 noundef 540, ptr noundef nonnull %tmpval.i932, i32 noundef 2) #7
  %168 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call.i936, ptr %error.i.i, align 4
  br label %tc358768_write.exit938

tc358768_write.exit938:                           ; preds = %if.end.i937, %do.end230.tc358768_write.exit938_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i932) #7
  %mul231 = shl i32 %div79698, 2
  %169 = urem i32 %mul231, 1000
  %mul.i940 = add i32 %add.i906, %mul231
  %add.i941 = sub i32 %mul.i940, %169
  %div.i942 = udiv i32 %add.i941, %extract.t1568
  %sub235 = add i32 %div.i942, -1
  %div.i943 = udiv i32 %extract.t1570, 2000
  %sub237 = sub nsw i32 145, %div.i943
  %mul.i944 = mul nsw i32 %sub237, 1000
  %add.i945 = add i32 %mul.i944, %extract.t1568
  %div.i946 = udiv i32 %add.i945, %extract.t1568
  %div.i947 = udiv i32 %add81, 1000
  %sub240 = sub i32 %div.i946, %div.i947
  %shl241 = shl i32 %sub240, 8
  %or242 = or i32 %shl241, %sub235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then255)) #7
          to label %do.end259 [label %if.then255], !srcloc !211

if.then255:                                       ; preds = %tc358768_write.exit938
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug324, ptr noundef %171, ptr noundef nonnull @.str.61, i32 noundef %or242) #7
  br label %do.end259

do.end259:                                        ; preds = %if.then255, %tc358768_write.exit938
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i948) #7
  %172 = ptrtoint ptr %tmpval.i948 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or242, ptr %tmpval.i948, align 4
  %173 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i950 = icmp eq i32 %174, 0
  br i1 %tobool.not.i950, label %if.end.i953, label %do.end259.tc358768_write.exit954_crit_edge

do.end259.tc358768_write.exit954_crit_edge:       ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit954

if.end.i953:                                      ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i.i, align 4
  %call.i952 = call i32 @regmap_bulk_write(ptr noundef %176, i32 noundef 544, ptr noundef nonnull %tmpval.i948, i32 noundef 2) #7
  %177 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call.i952, ptr %error.i.i, align 4
  br label %tc358768_write.exit954

tc358768_write.exit954:                           ; preds = %if.end.i953, %do.end259.tc358768_write.exit954_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i948) #7
  %add.i955 = add i32 %extract.t1568, 1020000000
  %div.i956 = udiv i32 %add.i955, %extract.t1568
  %div262 = udiv i32 %div.i956, %div.i907
  %sub263 = add i32 %div262, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then276)) #7
          to label %do.end280 [label %if.then276], !srcloc !211

if.then276:                                       ; preds = %tc358768_write.exit954
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug325, ptr noundef %179, ptr noundef nonnull @.str.62, i32 noundef %sub263) #7
  br label %do.end280

do.end280:                                        ; preds = %if.then276, %tc358768_write.exit954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i957) #7
  %180 = ptrtoint ptr %tmpval.i957 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub263, ptr %tmpval.i957, align 4
  %181 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i959 = icmp eq i32 %182, 0
  br i1 %tobool.not.i959, label %if.end.i962, label %do.end280.tc358768_write.exit963_crit_edge

do.end280.tc358768_write.exit963_crit_edge:       ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit963

if.end.i962:                                      ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regmap.i.i, align 4
  %call.i961 = call i32 @regmap_bulk_write(ptr noundef %184, i32 noundef 548, ptr noundef nonnull %tmpval.i957, i32 noundef 2) #7
  %185 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call.i961, ptr %error.i.i, align 4
  br label %tc358768_write.exit963

tc358768_write.exit963:                           ; preds = %if.end.i962, %do.end280.tc358768_write.exit963_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i957) #7
  %mul281 = mul i32 %div79698, 52
  %186 = urem i32 %mul281, 1000
  %mul.i965 = add i32 %mul.i929, %mul281
  %add.i966 = sub i32 %mul.i965, %186
  %div.i967 = udiv i32 %add.i966, %extract.t1568
  %sub285 = add i32 %div.i967, -3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then298)) #7
          to label %do.end302 [label %if.then298], !srcloc !211

if.then298:                                       ; preds = %tc358768_write.exit963
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug326, ptr noundef %188, ptr noundef nonnull @.str.63, i32 noundef %sub285) #7
  br label %do.end302

do.end302:                                        ; preds = %if.then298, %tc358768_write.exit963
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i968) #7
  %189 = ptrtoint ptr %tmpval.i968 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %sub285, ptr %tmpval.i968, align 4
  %190 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i970 = icmp eq i32 %191, 0
  br i1 %tobool.not.i970, label %if.end.i973, label %do.end302.tc358768_write.exit974_crit_edge

do.end302.tc358768_write.exit974_crit_edge:       ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit974

if.end.i973:                                      ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap.i.i, align 4
  %call.i972 = call i32 @regmap_bulk_write(ptr noundef %193, i32 noundef 552, ptr noundef nonnull %tmpval.i968, i32 noundef 2) #7
  %194 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call.i972, ptr %error.i.i, align 4
  br label %tc358768_write.exit974

tc358768_write.exit974:                           ; preds = %if.end.i973, %do.end302.tc358768_write.exit974_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i968) #7
  %mul303 = mul i32 %div79698, 15
  %195 = urem i32 %mul303, 1000
  %mul.i976 = add i32 %mul.i929, %mul303
  %add.i977 = sub i32 %mul.i976, %195
  %div.i978 = udiv i32 %add.i977, %extract.t1568
  %sub307 = add i32 %div.i978, -5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then320)) #7
          to label %do.end324 [label %if.then320], !srcloc !211

if.then320:                                       ; preds = %tc358768_write.exit974
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug327, ptr noundef %197, ptr noundef nonnull @.str.64, i32 noundef %sub307) #7
  br label %do.end324

do.end324:                                        ; preds = %if.then320, %tc358768_write.exit974
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i979) #7
  %198 = ptrtoint ptr %tmpval.i979 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub307, ptr %tmpval.i979, align 4
  %199 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i981 = icmp eq i32 %200, 0
  br i1 %tobool.not.i981, label %if.end.i984, label %do.end324.tc358768_write.exit985_crit_edge

do.end324.tc358768_write.exit985_crit_edge:       ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit985

if.end.i984:                                      ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regmap.i.i, align 4
  %call.i983 = call i32 @regmap_bulk_write(ptr noundef %202, i32 noundef 556, ptr noundef nonnull %tmpval.i979, i32 noundef 2) #7
  %203 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %call.i983, ptr %error.i.i, align 4
  br label %tc358768_write.exit985

tc358768_write.exit985:                           ; preds = %if.end.i984, %do.end324.tc358768_write.exit985_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i979) #7
  %204 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp3271563.not = icmp eq i32 %205, 0
  br i1 %cmp3271563.not, label %tc358768_write.exit985.for.end335_crit_edge, label %tc358768_write.exit985.for.body329_crit_edge

tc358768_write.exit985.for.body329_crit_edge:     ; preds = %tc358768_write.exit985
  br label %for.body329

tc358768_write.exit985.for.end335_crit_edge:      ; preds = %tc358768_write.exit985
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end335

for.body329:                                      ; preds = %for.body329.for.body329_crit_edge, %tc358768_write.exit985.for.body329_crit_edge
  %val.11565 = phi i32 [ %or332, %for.body329.for.body329_crit_edge ], [ 1, %tc358768_write.exit985.for.body329_crit_edge ]
  %i.11564 = phi i32 [ %add330, %for.body329.for.body329_crit_edge ], [ 0, %tc358768_write.exit985.for.body329_crit_edge ]
  %add330 = add nuw i32 %i.11564, 1
  %shl331 = shl i32 2, %i.11564
  %or332 = or i32 %val.11565, %shl331
  %exitcond.not = icmp eq i32 %add330, %205
  br i1 %exitcond.not, label %for.body329.for.end335_crit_edge, label %for.body329.for.body329_crit_edge

for.body329.for.body329_crit_edge:                ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body329

for.body329.for.end335_crit_edge:                 ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end335

for.end335:                                       ; preds = %for.body329.for.end335_crit_edge, %tc358768_write.exit985.for.end335_crit_edge
  %val.1.lcssa = phi i32 [ 1, %tc358768_write.exit985.for.end335_crit_edge ], [ %or332, %for.body329.for.end335_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i986) #7
  %206 = ptrtoint ptr %tmpval.i986 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %val.1.lcssa, ptr %tmpval.i986, align 4
  %207 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i988 = icmp eq i32 %208, 0
  br i1 %tobool.not.i988, label %if.end.i991, label %for.end335.tc358768_write.exit992_crit_edge

for.end335.tc358768_write.exit992_crit_edge:      ; preds = %for.end335
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit992

if.end.i991:                                      ; preds = %for.end335
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regmap.i.i, align 4
  %call.i990 = call i32 @regmap_bulk_write(ptr noundef %210, i32 noundef 564, ptr noundef nonnull %tmpval.i986, i32 noundef 2) #7
  %211 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call.i990, ptr %error.i.i, align 4
  br label %tc358768_write.exit992

tc358768_write.exit992:                           ; preds = %if.end.i991, %for.end335.tc358768_write.exit992_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i986) #7
  %and336 = and i32 %mode_flags.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %if.then338, label %tc358768_write.exit992.if.end339_crit_edge

tc358768_write.exit992.if.end339_crit_edge:       ; preds = %tc358768_write.exit992
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end339

if.then338:                                       ; preds = %tc358768_write.exit992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i993) #7
  %212 = ptrtoint ptr %tmpval.i993 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %tmpval.i993, align 4
  %213 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.not.i995 = icmp eq i32 %214, 0
  br i1 %tobool.not.i995, label %if.end.i998, label %if.then338.tc358768_write.exit999_crit_edge

if.then338.tc358768_write.exit999_crit_edge:      ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit999

if.end.i998:                                      ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap.i.i, align 4
  %call.i997 = call i32 @regmap_bulk_write(ptr noundef %216, i32 noundef 568, ptr noundef nonnull %tmpval.i993, i32 noundef 2) #7
  %217 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %call.i997, ptr %error.i.i, align 4
  br label %tc358768_write.exit999

tc358768_write.exit999:                           ; preds = %if.end.i998, %if.then338.tc358768_write.exit999_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i993) #7
  br label %if.end339

if.end339:                                        ; preds = %tc358768_write.exit999, %tc358768_write.exit992.if.end339_crit_edge
  %mul341 = mul i32 %div.i907, %extract.t1568
  %mul342 = shl i32 %mul341, 2
  %218 = urem i32 %mul342, 1000
  %mul.i1001 = add i32 %mul342, %extract.t1568
  %add.i1002 = sub i32 %mul.i1001, %218
  %div.i1003 = udiv i32 %add.i1002, %extract.t1568
  %219 = urem i32 %mul341, 1000
  %mul.i1005 = add i32 %mul341, %extract.t1568
  %add.i1006 = sub i32 %mul.i1005, %219
  %div.i1007 = udiv i32 %add.i1006, %extract.t1568
  %sub350 = add i32 %div.i1007, -2
  %sub345 = shl i32 %div.i1003, 16
  %shl351 = add i32 %sub345, -65536
  %or352 = or i32 %shl351, %sub350
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_bridge_pre_enable, %if.then365)) #7
          to label %do.end369 [label %if.then365], !srcloc !211

if.then365:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug328, ptr noundef %221, ptr noundef nonnull @.str.65, i32 noundef %or352) #7
  br label %do.end369

do.end369:                                        ; preds = %if.then365, %if.end339
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1008) #7
  %222 = ptrtoint ptr %tmpval.i1008 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or352, ptr %tmpval.i1008, align 4
  %223 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i1010 = icmp eq i32 %224, 0
  br i1 %tobool.not.i1010, label %tc358768_write.exit1014, label %tc358768_write.exit1014.thread

tc358768_write.exit1014.thread:                   ; preds = %do.end369
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1008) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1015) #7
  br label %tc358768_write.exit1021

tc358768_write.exit1014:                          ; preds = %do.end369
  %225 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regmap.i.i, align 4
  %call.i1012 = call i32 @regmap_bulk_write(ptr noundef %226, i32 noundef 572, ptr noundef nonnull %tmpval.i1008, i32 noundef 2) #7
  %227 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %call.i1012, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1008) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1015) #7
  %228 = ptrtoint ptr %tmpval.i1015 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %tmpval.i1015, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1012)
  %tobool.not.i1017 = icmp eq i32 %call.i1012, 0
  br i1 %tobool.not.i1017, label %if.end.i1020, label %tc358768_write.exit1014.tc358768_write.exit1021_crit_edge

tc358768_write.exit1014.tc358768_write.exit1021_crit_edge: ; preds = %tc358768_write.exit1014
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1021

if.end.i1020:                                     ; preds = %tc358768_write.exit1014
  call void @__sanitizer_cov_trace_pc() #9
  %229 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regmap.i.i, align 4
  %call.i1019 = call i32 @regmap_bulk_write(ptr noundef %230, i32 noundef 516, ptr noundef nonnull %tmpval.i1015, i32 noundef 2) #7
  %231 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call.i1019, ptr %error.i.i, align 4
  br label %tc358768_write.exit1021

tc358768_write.exit1021:                          ; preds = %if.end.i1020, %tc358768_write.exit1014.tc358768_write.exit1021_crit_edge, %tc358768_write.exit1014.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1015) #7
  %232 = ptrtoint ptr %mode_flags1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %mode_flags1, align 8
  %and371 = and i32 %233, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %if.else, label %if.then373

if.then373:                                       ; preds = %tc358768_write.exit1021
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1022) #7
  %234 = ptrtoint ptr %tmpval.i1022 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %tmpval.i1022, align 4
  %235 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.i1024 = icmp eq i32 %236, 0
  br i1 %tobool.not.i1024, label %tc358768_write.exit1028, label %tc358768_write.exit1028.thread

tc358768_write.exit1028.thread:                   ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1022) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1029) #7
  br label %tc358768_write.exit1035

tc358768_write.exit1028:                          ; preds = %if.then373
  %237 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regmap.i.i, align 4
  %call.i1026 = call i32 @regmap_bulk_write(ptr noundef %238, i32 noundef 1568, ptr noundef nonnull %tmpval.i1022, i32 noundef 1) #7
  %239 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %call.i1026, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1022) #7
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 6
  %240 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %vdisplay, align 2
  %conv374 = zext i16 %241 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1029) #7
  %242 = ptrtoint ptr %tmpval.i1029 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %conv374, ptr %tmpval.i1029, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1026)
  %tobool.not.i1031 = icmp eq i32 %call.i1026, 0
  br i1 %tobool.not.i1031, label %if.end.i1034, label %tc358768_write.exit1028.tc358768_write.exit1035_crit_edge

tc358768_write.exit1028.tc358768_write.exit1035_crit_edge: ; preds = %tc358768_write.exit1028
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1035

if.end.i1034:                                     ; preds = %tc358768_write.exit1028
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regmap.i.i, align 4
  %call.i1033 = call i32 @regmap_bulk_write(ptr noundef %244, i32 noundef 1574, ptr noundef nonnull %tmpval.i1029, i32 noundef 1) #7
  %245 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call.i1033, ptr %error.i.i, align 4
  br label %tc358768_write.exit1035

tc358768_write.exit1035:                          ; preds = %if.end.i1034, %tc358768_write.exit1028.tc358768_write.exit1035_crit_edge, %tc358768_write.exit1028.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1029) #7
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 8
  %246 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %vsync_end, align 2
  %conv375 = zext i16 %247 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 7
  %248 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %vsync_start, align 4
  %conv376 = zext i16 %249 to i32
  %sub377 = sub nsw i32 %conv375, %conv376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1036) #7
  %250 = ptrtoint ptr %tmpval.i1036 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %sub377, ptr %tmpval.i1036, align 4
  %251 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i1038 = icmp eq i32 %252, 0
  br i1 %tobool.not.i1038, label %if.end.i1041, label %tc358768_write.exit1035.tc358768_write.exit1042_crit_edge

tc358768_write.exit1035.tc358768_write.exit1042_crit_edge: ; preds = %tc358768_write.exit1035
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1042

if.end.i1041:                                     ; preds = %tc358768_write.exit1035
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regmap.i.i, align 4
  %call.i1040 = call i32 @regmap_bulk_write(ptr noundef %254, i32 noundef 1570, ptr noundef nonnull %tmpval.i1036, i32 noundef 1) #7
  %255 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call.i1040, ptr %error.i.i, align 4
  br label %tc358768_write.exit1042

tc358768_write.exit1042:                          ; preds = %if.end.i1041, %tc358768_write.exit1035.tc358768_write.exit1042_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1036) #7
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 9
  %256 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %vtotal, align 4
  %conv378 = zext i16 %257 to i32
  %258 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %vsync_end, align 2
  %conv380 = zext i16 %259 to i32
  %sub381 = sub nsw i32 %conv378, %conv380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1043) #7
  %260 = ptrtoint ptr %tmpval.i1043 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub381, ptr %tmpval.i1043, align 4
  %261 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool.not.i1045 = icmp eq i32 %262, 0
  br i1 %tobool.not.i1045, label %if.end.i1048, label %tc358768_write.exit1042.tc358768_write.exit1049_crit_edge

tc358768_write.exit1042.tc358768_write.exit1049_crit_edge: ; preds = %tc358768_write.exit1042
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1049

if.end.i1048:                                     ; preds = %tc358768_write.exit1042
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regmap.i.i, align 4
  %call.i1047 = call i32 @regmap_bulk_write(ptr noundef %264, i32 noundef 1572, ptr noundef nonnull %tmpval.i1043, i32 noundef 1) #7
  %265 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %call.i1047, ptr %error.i.i, align 4
  br label %tc358768_write.exit1049

tc358768_write.exit1049:                          ; preds = %if.end.i1048, %tc358768_write.exit1042.tc358768_write.exit1049_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1043) #7
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 3
  %266 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %hsync_end, align 4
  %conv382 = zext i16 %267 to i32
  %hsync_start383 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %268 = ptrtoint ptr %hsync_start383 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %hsync_start383, align 2
  %conv384 = zext i16 %269 to i32
  %sub385 = sub nsw i32 %conv382, %conv384
  %conv386 = sext i32 %sub385 to i64
  %270 = ptrtoint ptr %dsiclk26 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %dsiclk26, align 4
  %272 = lshr i32 %271, 2
  %div389 = zext i32 %272 to i64
  %mul390 = mul nsw i64 %conv386, %div389
  %dsi_lanes = getelementptr i8, ptr %bridge, i32 296
  %273 = ptrtoint ptr %dsi_lanes to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %dsi_lanes, align 4
  %conv391 = zext i32 %274 to i64
  %mul392 = mul i64 %mul390, %conv391
  %275 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %adjusted_mode, align 4
  %mul393 = mul i32 %276, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul392)
  %cmp164.i.i = icmp ult i64 %mul392, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !212

if.then168.i.i:                                   ; preds = %tc358768_write.exit1049
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul392 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul393
  br label %div_u64.exit1157

if.else174.i.i:                                   ; preds = %tc358768_write.exit1049
  call void @__sanitizer_cov_trace_pc() #9
  %277 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul393, i64 %mul392) #11, !srcloc !210
  %asmresult1.i.i.i1155 = extractvalue { i64, i64 } %277, 1
  %extract.t1546 = trunc i64 %asmresult1.i.i.i1155 to i32
  br label %div_u64.exit1157

div_u64.exit1157:                                 ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i1156.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t1546, %if.else174.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1158) #7
  %278 = ptrtoint ptr %tmpval.i1158 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %dividend.addr.0.i.i1156.off0, ptr %tmpval.i1158, align 4
  %279 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool.not.i1160 = icmp eq i32 %280, 0
  br i1 %tobool.not.i1160, label %if.end.i1163, label %div_u64.exit1157.tc358768_write.exit1164_crit_edge

div_u64.exit1157.tc358768_write.exit1164_crit_edge: ; preds = %div_u64.exit1157
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1164

if.end.i1163:                                     ; preds = %div_u64.exit1157
  call void @__sanitizer_cov_trace_pc() #9
  %281 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap.i.i, align 4
  %call.i1162 = call i32 @regmap_bulk_write(ptr noundef %282, i32 noundef 1576, ptr noundef nonnull %tmpval.i1158, i32 noundef 1) #7
  %283 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %call.i1162, ptr %error.i.i, align 4
  br label %tc358768_write.exit1164

tc358768_write.exit1164:                          ; preds = %if.end.i1163, %div_u64.exit1157.tc358768_write.exit1164_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1158) #7
  %htotal396 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %284 = ptrtoint ptr %htotal396 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %htotal396, align 2
  %conv397 = zext i16 %285 to i32
  %286 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %hsync_end, align 4
  %conv399 = zext i16 %287 to i32
  %sub400 = sub nsw i32 %conv397, %conv399
  %conv401 = sext i32 %sub400 to i64
  %288 = ptrtoint ptr %dsiclk26 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %dsiclk26, align 4
  %290 = lshr i32 %289, 2
  %div404 = zext i32 %290 to i64
  %mul405 = mul nsw i64 %conv401, %div404
  %291 = ptrtoint ptr %dsi_lanes to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %dsi_lanes, align 4
  %conv407 = zext i32 %292 to i64
  %mul408 = mul i64 %mul405, %conv407
  %293 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %adjusted_mode, align 4
  %mul410 = mul i32 %294, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul408)
  %cmp164.i.i1269 = icmp ult i64 %mul408, 4294967296
  br i1 %cmp164.i.i1269, label %if.then168.i.i1274, label %if.else174.i.i1276, !prof !212

if.then168.i.i1274:                               ; preds = %tc358768_write.exit1164
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i1271 = trunc i64 %mul408 to i32
  %div172.i.i1272 = udiv i32 %conv169.i.i1271, %mul410
  br label %div_u64.exit1278

if.else174.i.i1276:                               ; preds = %tc358768_write.exit1164
  call void @__sanitizer_cov_trace_pc() #9
  %295 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul410, i64 %mul408) #11, !srcloc !210
  %asmresult1.i.i.i1275 = extractvalue { i64, i64 } %295, 1
  %extract.t1550 = trunc i64 %asmresult1.i.i.i1275 to i32
  br label %div_u64.exit1278

div_u64.exit1278:                                 ; preds = %if.else174.i.i1276, %if.then168.i.i1274
  %dividend.addr.0.i.i1277.off0 = phi i32 [ %div172.i.i1272, %if.then168.i.i1274 ], [ %extract.t1550, %if.else174.i.i1276 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1279) #7
  %296 = ptrtoint ptr %tmpval.i1279 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %dividend.addr.0.i.i1277.off0, ptr %tmpval.i1279, align 4
  %297 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool.not.i1281 = icmp eq i32 %298, 0
  br i1 %tobool.not.i1281, label %if.end.i1284, label %div_u64.exit1278.tc358768_write.exit1285_crit_edge

div_u64.exit1278.tc358768_write.exit1285_crit_edge: ; preds = %div_u64.exit1278
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1285

if.end.i1284:                                     ; preds = %div_u64.exit1278
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regmap.i.i, align 4
  %call.i1283 = call i32 @regmap_bulk_write(ptr noundef %300, i32 noundef 1578, ptr noundef nonnull %tmpval.i1279, i32 noundef 1) #7
  %301 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call.i1283, ptr %error.i.i, align 4
  br label %tc358768_write.exit1285

tc358768_write.exit1285:                          ; preds = %if.end.i1284, %div_u64.exit1278.tc358768_write.exit1285_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1279) #7
  br label %if.end437

if.else:                                          ; preds = %tc358768_write.exit1021
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1286) #7
  %302 = ptrtoint ptr %tmpval.i1286 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 1, ptr %tmpval.i1286, align 4
  %303 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool.not.i1288 = icmp eq i32 %304, 0
  br i1 %tobool.not.i1288, label %tc358768_write.exit1292, label %tc358768_write.exit1292.thread

tc358768_write.exit1292.thread:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1286) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1293) #7
  br label %tc358768_write.exit1299

tc358768_write.exit1292:                          ; preds = %if.else
  %305 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %regmap.i.i, align 4
  %call.i1290 = call i32 @regmap_bulk_write(ptr noundef %306, i32 noundef 1568, ptr noundef nonnull %tmpval.i1286, i32 noundef 1) #7
  %307 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %call.i1290, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1286) #7
  %vdisplay413 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 6
  %308 = ptrtoint ptr %vdisplay413 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %vdisplay413, align 2
  %conv414 = zext i16 %309 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1293) #7
  %310 = ptrtoint ptr %tmpval.i1293 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %conv414, ptr %tmpval.i1293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1290)
  %tobool.not.i1295 = icmp eq i32 %call.i1290, 0
  br i1 %tobool.not.i1295, label %if.end.i1298, label %tc358768_write.exit1292.tc358768_write.exit1299_crit_edge

tc358768_write.exit1292.tc358768_write.exit1299_crit_edge: ; preds = %tc358768_write.exit1292
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1299

if.end.i1298:                                     ; preds = %tc358768_write.exit1292
  call void @__sanitizer_cov_trace_pc() #9
  %311 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regmap.i.i, align 4
  %call.i1297 = call i32 @regmap_bulk_write(ptr noundef %312, i32 noundef 1574, ptr noundef nonnull %tmpval.i1293, i32 noundef 1) #7
  %313 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call.i1297, ptr %error.i.i, align 4
  br label %tc358768_write.exit1299

tc358768_write.exit1299:                          ; preds = %if.end.i1298, %tc358768_write.exit1292.tc358768_write.exit1299_crit_edge, %tc358768_write.exit1292.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1293) #7
  %vtotal415 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 9
  %314 = ptrtoint ptr %vtotal415 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %vtotal415, align 4
  %conv416 = zext i16 %315 to i32
  %vsync_start417 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 7
  %316 = ptrtoint ptr %vsync_start417 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %vsync_start417, align 4
  %conv418 = zext i16 %317 to i32
  %sub419 = sub nsw i32 %conv416, %conv418
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1300) #7
  %318 = ptrtoint ptr %tmpval.i1300 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %sub419, ptr %tmpval.i1300, align 4
  %319 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool.not.i1302 = icmp eq i32 %320, 0
  br i1 %tobool.not.i1302, label %tc358768_write.exit1306, label %tc358768_write.exit1306.thread

tc358768_write.exit1306.thread:                   ; preds = %tc358768_write.exit1299
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1300) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1307) #7
  br label %tc358768_write.exit1313

tc358768_write.exit1306:                          ; preds = %tc358768_write.exit1299
  %321 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regmap.i.i, align 4
  %call.i1304 = call i32 @regmap_bulk_write(ptr noundef %322, i32 noundef 1570, ptr noundef nonnull %tmpval.i1300, i32 noundef 1) #7
  %323 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %call.i1304, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1300) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1307) #7
  %324 = ptrtoint ptr %tmpval.i1307 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %tmpval.i1307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1304)
  %tobool.not.i1309 = icmp eq i32 %call.i1304, 0
  br i1 %tobool.not.i1309, label %if.end.i1312, label %tc358768_write.exit1306.tc358768_write.exit1313_crit_edge

tc358768_write.exit1306.tc358768_write.exit1313_crit_edge: ; preds = %tc358768_write.exit1306
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1313

if.end.i1312:                                     ; preds = %tc358768_write.exit1306
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regmap.i.i, align 4
  %call.i1311 = call i32 @regmap_bulk_write(ptr noundef %326, i32 noundef 1572, ptr noundef nonnull %tmpval.i1307, i32 noundef 1) #7
  %327 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %call.i1311, ptr %error.i.i, align 4
  br label %tc358768_write.exit1313

tc358768_write.exit1313:                          ; preds = %if.end.i1312, %tc358768_write.exit1306.tc358768_write.exit1313_crit_edge, %tc358768_write.exit1306.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1307) #7
  %htotal420 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 4
  %328 = ptrtoint ptr %htotal420 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %htotal420, align 2
  %conv421 = zext i16 %329 to i32
  %hsync_start422 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 2
  %330 = ptrtoint ptr %hsync_start422 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %hsync_start422, align 2
  %conv423 = zext i16 %331 to i32
  %sub424 = sub nsw i32 %conv421, %conv423
  %conv425 = sext i32 %sub424 to i64
  %332 = ptrtoint ptr %dsiclk26 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %dsiclk26, align 4
  %334 = lshr i32 %333, 2
  %div428 = zext i32 %334 to i64
  %mul429 = mul nsw i64 %conv425, %div428
  %dsi_lanes430 = getelementptr i8, ptr %bridge, i32 296
  %335 = ptrtoint ptr %dsi_lanes430 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %dsi_lanes430, align 4
  %conv431 = zext i32 %336 to i64
  %mul432 = mul i64 %mul429, %conv431
  %337 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %adjusted_mode, align 4
  %mul434 = mul i32 %338, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul432)
  %cmp164.i.i1418 = icmp ult i64 %mul432, 4294967296
  br i1 %cmp164.i.i1418, label %if.then168.i.i1423, label %if.else174.i.i1425, !prof !212

if.then168.i.i1423:                               ; preds = %tc358768_write.exit1313
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i1420 = trunc i64 %mul432 to i32
  %div172.i.i1421 = udiv i32 %conv169.i.i1420, %mul434
  br label %div_u64.exit1427

if.else174.i.i1425:                               ; preds = %tc358768_write.exit1313
  call void @__sanitizer_cov_trace_pc() #9
  %339 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul434, i64 %mul432) #11, !srcloc !210
  %asmresult1.i.i.i1424 = extractvalue { i64, i64 } %339, 1
  %extract.t1554 = trunc i64 %asmresult1.i.i.i1424 to i32
  br label %div_u64.exit1427

div_u64.exit1427:                                 ; preds = %if.else174.i.i1425, %if.then168.i.i1423
  %dividend.addr.0.i.i1426.off0 = phi i32 [ %div172.i.i1421, %if.then168.i.i1423 ], [ %extract.t1554, %if.else174.i.i1425 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1428) #7
  %340 = ptrtoint ptr %tmpval.i1428 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %dividend.addr.0.i.i1426.off0, ptr %tmpval.i1428, align 4
  %341 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool.not.i1430 = icmp eq i32 %342, 0
  br i1 %tobool.not.i1430, label %tc358768_write.exit1434, label %tc358768_write.exit1434.thread

tc358768_write.exit1434.thread:                   ; preds = %div_u64.exit1427
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1428) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1435) #7
  br label %tc358768_write.exit1441

tc358768_write.exit1434:                          ; preds = %div_u64.exit1427
  %343 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %regmap.i.i, align 4
  %call.i1432 = call i32 @regmap_bulk_write(ptr noundef %344, i32 noundef 1576, ptr noundef nonnull %tmpval.i1428, i32 noundef 1) #7
  %345 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %call.i1432, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1428) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1435) #7
  %346 = ptrtoint ptr %tmpval.i1435 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %tmpval.i1435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1432)
  %tobool.not.i1437 = icmp eq i32 %call.i1432, 0
  br i1 %tobool.not.i1437, label %if.end.i1440, label %tc358768_write.exit1434.tc358768_write.exit1441_crit_edge

tc358768_write.exit1434.tc358768_write.exit1441_crit_edge: ; preds = %tc358768_write.exit1434
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1441

if.end.i1440:                                     ; preds = %tc358768_write.exit1434
  call void @__sanitizer_cov_trace_pc() #9
  %347 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regmap.i.i, align 4
  %call.i1439 = call i32 @regmap_bulk_write(ptr noundef %348, i32 noundef 1578, ptr noundef nonnull %tmpval.i1435, i32 noundef 1) #7
  %349 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %call.i1439, ptr %error.i.i, align 4
  br label %tc358768_write.exit1441

tc358768_write.exit1441:                          ; preds = %if.end.i1440, %tc358768_write.exit1434.tc358768_write.exit1441_crit_edge, %tc358768_write.exit1434.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1435) #7
  br label %if.end437

if.end437:                                        ; preds = %tc358768_write.exit1441, %tc358768_write.exit1285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1442) #7
  %350 = ptrtoint ptr %tmpval.i1442 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %hact.0, ptr %tmpval.i1442, align 4
  %351 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool.not.i1444 = icmp eq i32 %352, 0
  br i1 %tobool.not.i1444, label %if.end.i1447, label %if.end437.tc358768_write.exit1448_crit_edge

if.end437.tc358768_write.exit1448_crit_edge:      ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1448

if.end.i1447:                                     ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #9
  %353 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %regmap.i.i, align 4
  %call.i1446 = call i32 @regmap_bulk_write(ptr noundef %354, i32 noundef 1580, ptr noundef nonnull %tmpval.i1442, i32 noundef 1) #7
  %355 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %call.i1446, ptr %error.i.i, align 4
  br label %tc358768_write.exit1448

tc358768_write.exit1448:                          ; preds = %if.end.i1447, %if.end437.tc358768_write.exit1448_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1442) #7
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 7, i32 11
  %356 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %flags, align 4
  %and438 = and i32 %357, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and438)
  %tobool439.not = icmp eq i32 %and438, 0
  br i1 %tobool439.not, label %if.then440, label %tc358768_write.exit1448.if.end441_crit_edge

tc358768_write.exit1448.if.end441_crit_edge:      ; preds = %tc358768_write.exit1448
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441

if.then440:                                       ; preds = %tc358768_write.exit1448
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #7
  %358 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 -1, ptr %orig.i, align 4, !annotation !209
  %359 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool.not.i.i1451 = icmp eq i32 %360, 0
  br i1 %tobool.not.i.i1451, label %if.then2.i.i, label %if.then440.tc358768_read.exit.i_crit_edge

if.then440.tc358768_read.exit.i_crit_edge:        ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i

if.then2.i.i:                                     ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #9
  %361 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 0, ptr %orig.i, align 4
  %362 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i1453 = call i32 @regmap_bulk_read(ptr noundef %363, i32 noundef 4, ptr noundef nonnull %orig.i, i32 noundef 1) #7
  %364 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %call.i.i1453, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i

tc358768_read.exit.i:                             ; preds = %if.then2.i.i, %if.then440.tc358768_read.exit.i_crit_edge
  %365 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %orig.i, align 4
  %or.i = or i32 %366, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %366)
  %cmp.not.i = icmp eq i32 %or.i, %366
  br i1 %cmp.not.i, label %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge, label %if.then.i

tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge: ; preds = %tc358768_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit

if.then.i:                                        ; preds = %tc358768_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i1449) #7
  %367 = ptrtoint ptr %tmpval.i.i1449 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %or.i, ptr %tmpval.i.i1449, align 4
  %368 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool.not.i8.i = icmp eq i32 %369, 0
  br i1 %tobool.not.i8.i, label %if.end.i.i1454, label %if.then.i.tc358768_write.exit.i1455_crit_edge

if.then.i.tc358768_write.exit.i1455_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i1455

if.end.i.i1454:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %370 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %regmap.i.i, align 4
  %call.i10.i = call i32 @regmap_bulk_write(ptr noundef %371, i32 noundef 4, ptr noundef nonnull %tmpval.i.i1449, i32 noundef 1) #7
  %372 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %call.i10.i, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i1455

tc358768_write.exit.i1455:                        ; preds = %if.end.i.i1454, %if.then.i.tc358768_write.exit.i1455_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i1449) #7
  br label %tc358768_update_bits.exit

tc358768_update_bits.exit:                        ; preds = %tc358768_write.exit.i1455, %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #7
  br label %if.end441

if.end441:                                        ; preds = %tc358768_update_bits.exit, %tc358768_write.exit1448.if.end441_crit_edge
  %373 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %flags, align 4
  %and443 = and i32 %374, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %tobool444.not = icmp eq i32 %and443, 0
  br i1 %tobool444.not, label %if.end441.if.end446_crit_edge, label %if.then445

if.end441.if.end446_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end446

if.then445:                                       ; preds = %if.end441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i1458) #7
  %375 = ptrtoint ptr %orig.i1458 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 -1, ptr %orig.i1458, align 4, !annotation !209
  %376 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.not.i.i1460 = icmp eq i32 %377, 0
  br i1 %tobool.not.i.i1460, label %if.then2.i.i1463, label %if.then445.tc358768_read.exit.i1467_crit_edge

if.then445.tc358768_read.exit.i1467_crit_edge:    ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i1467

if.then2.i.i1463:                                 ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #9
  %378 = ptrtoint ptr %orig.i1458 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %orig.i1458, align 4
  %379 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i1462 = call i32 @regmap_bulk_read(ptr noundef %380, i32 noundef 50, ptr noundef nonnull %orig.i1458, i32 noundef 1) #7
  %381 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %call.i.i1462, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i1467

tc358768_read.exit.i1467:                         ; preds = %if.then2.i.i1463, %if.then445.tc358768_read.exit.i1467_crit_edge
  %382 = ptrtoint ptr %orig.i1458 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %orig.i1458, align 4
  %or.i1465 = or i32 %383, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i1465, i32 %383)
  %cmp.not.i1466 = icmp eq i32 %or.i1465, %383
  br i1 %cmp.not.i1466, label %tc358768_read.exit.i1467.tc358768_update_bits.exit1475_crit_edge, label %if.then.i1469

tc358768_read.exit.i1467.tc358768_update_bits.exit1475_crit_edge: ; preds = %tc358768_read.exit.i1467
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit1475

if.then.i1469:                                    ; preds = %tc358768_read.exit.i1467
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i1457) #7
  %384 = ptrtoint ptr %tmpval.i.i1457 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %or.i1465, ptr %tmpval.i.i1457, align 4
  %385 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool.not.i8.i1468 = icmp eq i32 %386, 0
  br i1 %tobool.not.i8.i1468, label %if.end.i.i1472, label %if.then.i1469.tc358768_write.exit.i1473_crit_edge

if.then.i1469.tc358768_write.exit.i1473_crit_edge: ; preds = %if.then.i1469
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i1473

if.end.i.i1472:                                   ; preds = %if.then.i1469
  call void @__sanitizer_cov_trace_pc() #9
  %387 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %regmap.i.i, align 4
  %call.i10.i1471 = call i32 @regmap_bulk_write(ptr noundef %388, i32 noundef 50, ptr noundef nonnull %tmpval.i.i1457, i32 noundef 1) #7
  %389 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %call.i10.i1471, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i1473

tc358768_write.exit.i1473:                        ; preds = %if.end.i.i1472, %if.then.i1469.tc358768_write.exit.i1473_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i1457) #7
  br label %tc358768_update_bits.exit1475

tc358768_update_bits.exit1475:                    ; preds = %tc358768_write.exit.i1473, %tc358768_read.exit.i1467.tc358768_update_bits.exit1475_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i1458) #7
  br label %if.end446

if.end446:                                        ; preds = %tc358768_update_bits.exit1475, %if.end441.if.end446_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1476) #7
  %390 = ptrtoint ptr %tmpval.i1476 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 1, ptr %tmpval.i1476, align 4
  %391 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %392)
  %tobool.not.i1478 = icmp eq i32 %392, 0
  br i1 %tobool.not.i1478, label %tc358768_write.exit1482, label %tc358768_write.exit1482.thread

tc358768_write.exit1482.thread:                   ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1476) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1483) #7
  br label %tc358768_write.exit1489

tc358768_write.exit1482:                          ; preds = %if.end446
  %393 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regmap.i.i, align 4
  %call.i1480 = call i32 @regmap_bulk_write(ptr noundef %394, i32 noundef 1304, ptr noundef nonnull %tmpval.i1476, i32 noundef 2) #7
  %395 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %call.i1480, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1476) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1483) #7
  %396 = ptrtoint ptr %tmpval.i1483 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 -1023410009, ptr %tmpval.i1483, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1480)
  %tobool.not.i1485 = icmp eq i32 %call.i1480, 0
  br i1 %tobool.not.i1485, label %if.end.i1488, label %tc358768_write.exit1482.tc358768_write.exit1489_crit_edge

tc358768_write.exit1482.tc358768_write.exit1489_crit_edge: ; preds = %tc358768_write.exit1482
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit1489

if.end.i1488:                                     ; preds = %tc358768_write.exit1482
  call void @__sanitizer_cov_trace_pc() #9
  %397 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %regmap.i.i, align 4
  %call.i1487 = call i32 @regmap_bulk_write(ptr noundef %398, i32 noundef 1280, ptr noundef nonnull %tmpval.i1483, i32 noundef 2) #7
  %399 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %call.i1487, ptr %error.i.i, align 4
  br label %tc358768_write.exit1489

tc358768_write.exit1489:                          ; preds = %if.end.i1488, %tc358768_write.exit1482.tc358768_write.exit1489_crit_edge, %tc358768_write.exit1482.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1483) #7
  %400 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %lanes, align 8
  %sub449 = shl i32 %401, 1
  %shl450 = add i32 %sub449, 2147483646
  %402 = ptrtoint ptr %mode_flags1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %mode_flags1, align 8
  %and453 = and i32 %403, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453)
  %tobool454.not = icmp eq i32 %and453, 0
  %spec.select.v = select i1 %tobool454.not, i32 -1560280960, i32 -1560281088
  %spec.select = or i32 %spec.select.v, %shl450
  %or461 = or i32 %spec.select, 32
  %val.3 = select i1 %tobool337.not, i32 %or461, i32 %spec.select
  %and464 = lshr i32 %403, 9
  %404 = and i32 %and464, 1
  %405 = or i32 %val.3, %404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1490) #7
  %406 = ptrtoint ptr %tmpval.i1490 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %tmpval.i1490, align 4
  %407 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %tobool.not.i1492 = icmp eq i32 %408, 0
  br i1 %tobool.not.i1492, label %tc358768_write.exit1496, label %tc358768_write.exit1496.thread

tc358768_write.exit1496.thread:                   ; preds = %tc358768_write.exit1489
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1490) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1497) #7
  %409 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %.pr1537 = load i32, ptr %error.i.i, align 4
  br label %tc358768_write.exit1503

tc358768_write.exit1496:                          ; preds = %tc358768_write.exit1489
  %410 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regmap.i.i, align 4
  %call.i1494 = call i32 @regmap_bulk_write(ptr noundef %411, i32 noundef 1280, ptr noundef nonnull %tmpval.i1490, i32 noundef 2) #7
  %412 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %call.i1494, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1490) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i1497) #7
  %413 = ptrtoint ptr %tmpval.i1497 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 -1023377408, ptr %tmpval.i1497, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1494)
  %tobool.not.i1499 = icmp eq i32 %call.i1494, 0
  br i1 %tobool.not.i1499, label %if.end.i1502, label %tc358768_write.exit1503.thread

tc358768_write.exit1503.thread:                   ; preds = %tc358768_write.exit1496
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1497) #7
  %414 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %error.i.i, align 4
  br label %do.end475

if.end.i1502:                                     ; preds = %tc358768_write.exit1496
  call void @__sanitizer_cov_trace_pc() #9
  %415 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regmap.i.i, align 4
  %call.i1501 = call i32 @regmap_bulk_write(ptr noundef %416, i32 noundef 1280, ptr noundef nonnull %tmpval.i1497, i32 noundef 2) #7
  br label %tc358768_write.exit1503

tc358768_write.exit1503:                          ; preds = %if.end.i1502, %tc358768_write.exit1496.thread
  %417 = phi i32 [ %.pr1537, %tc358768_write.exit1496.thread ], [ %call.i1501, %if.end.i1502 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i1497) #7
  %418 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %417)
  %tobool471.not = icmp eq i32 %417, 0
  br i1 %tobool471.not, label %tc358768_write.exit1503.cleanup_crit_edge, label %tc358768_write.exit1503.do.end475_crit_edge

tc358768_write.exit1503.do.end475_crit_edge:      ; preds = %tc358768_write.exit1503
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end475

tc358768_write.exit1503.cleanup_crit_edge:        ; preds = %tc358768_write.exit1503
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end475:                                        ; preds = %tc358768_write.exit1503.do.end475_crit_edge, %tc358768_write.exit1503.thread
  %419 = phi i32 [ %call.i1494, %tc358768_write.exit1503.thread ], [ %417, %tc358768_write.exit1503.do.end475_crit_edge ]
  %420 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %421, ptr noundef nonnull @.str.67, i32 noundef %419) #10
  call void @tc358768_bridge_disable(ptr noundef %bridge)
  %422 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %tobool.not.i.i1505 = icmp eq i32 %423, 0
  br i1 %tobool.not.i.i1505, label %do.end475.cleanup_crit_edge, label %if.end.i.i1508

do.end475.cleanup_crit_edge:                      ; preds = %do.end475
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i1508:                                   ; preds = %do.end475
  %reset_gpio.i.i = getelementptr i8, ptr %bridge, i32 -68
  %424 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %425, i32 noundef 1) #7
  %supplies.i.i = getelementptr i8, ptr %bridge, i32 -64
  %call.i.i1506 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1506)
  %cmp.i.i1507 = icmp slt i32 %call.i.i1506, 0
  br i1 %cmp.i.i1507, label %do.end.i.i, label %if.end.i.i1508.if.end2.i.i_crit_edge

if.end.i.i1508.if.end2.i.i_crit_edge:             ; preds = %if.end.i.i1508
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i.i

do.end.i.i:                                       ; preds = %if.end.i.i1508
  call void @__sanitizer_cov_trace_pc() #9
  %426 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %427, ptr noundef nonnull @.str.40, i32 noundef %call.i.i1506) #10
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %do.end.i.i, %if.end.i.i1508.if.end2.i.i_crit_edge
  %refclk.i.i = getelementptr i8, ptr %bridge, i32 -28
  %428 = ptrtoint ptr %refclk.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %refclk.i.i, align 4
  call void @clk_disable(ptr noundef %429) #7
  call void @clk_unprepare(ptr noundef %429) #7
  %430 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 0, ptr %enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i.i, %do.end475.cleanup_crit_edge, %tc358768_write.exit1503.cleanup_crit_edge, %do.end67, %if.end2.i757, %do.end23.cleanup_crit_edge, %if.end2.i747, %do.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358768_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  %tmpval.i.i18 = alloca i32, align 4
  %orig.i19 = alloca i32, align 4
  %tmpval.i.i = alloca i32, align 4
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -76
  %enabled = getelementptr i8, ptr %bridge, i32 -24
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #7
  %4 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %orig.i, align 4, !annotation !209
  %error.i.i = getelementptr i8, ptr %bridge, i32 -20
  %5 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end.tc358768_read.exit.i_crit_edge

if.end.tc358768_read.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i

if.then2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %orig.i, align 4
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 -72
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 50, ptr noundef nonnull %orig.i, i32 noundef 1) #7
  %10 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i.i, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i

tc358768_read.exit.i:                             ; preds = %if.then2.i.i, %if.end.tc358768_read.exit.i_crit_edge
  %11 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %orig.i, align 4
  %and.i = and i32 %12, -49153
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp.not.i = icmp eq i32 %and.i, %12
  br i1 %cmp.not.i, label %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge, label %if.then.i

tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge: ; preds = %tc358768_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit

if.then.i:                                        ; preds = %tc358768_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  %13 = ptrtoint ptr %tmpval.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i, ptr %tmpval.i.i, align 4
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i8.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i8.i, label %if.end.i.i, label %if.then.i.tc358768_write.exit.i_crit_edge

if.then.i.tc358768_write.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i9.i = getelementptr i8, ptr %bridge, i32 -72
  %16 = ptrtoint ptr %regmap.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i9.i, align 4
  %call.i10.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 50, ptr noundef nonnull %tmpval.i.i, i32 noundef 1) #7
  %18 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i10.i, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i

tc358768_write.exit.i:                            ; preds = %if.end.i.i, %if.then.i.tc358768_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i) #7
  br label %tc358768_update_bits.exit

tc358768_update_bits.exit:                        ; preds = %tc358768_write.exit.i, %tc358768_read.exit.i.tc358768_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i19) #7
  %19 = ptrtoint ptr %orig.i19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %orig.i19, align 4, !annotation !209
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i21 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i21, label %if.then2.i.i24, label %tc358768_update_bits.exit.tc358768_read.exit.i27_crit_edge

tc358768_update_bits.exit.tc358768_read.exit.i27_crit_edge: ; preds = %tc358768_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_read.exit.i27

if.then2.i.i24:                                   ; preds = %tc358768_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %orig.i19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %orig.i19, align 4
  %regmap.i.i22 = getelementptr i8, ptr %bridge, i32 -72
  %23 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i22, align 4
  %call.i.i23 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %orig.i19, i32 noundef 1) #7
  %25 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i.i23, ptr %error.i.i, align 4
  br label %tc358768_read.exit.i27

tc358768_read.exit.i27:                           ; preds = %if.then2.i.i24, %tc358768_update_bits.exit.tc358768_read.exit.i27_crit_edge
  %26 = ptrtoint ptr %orig.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %orig.i19, align 4
  %or.i = or i32 %27, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %27)
  %cmp.not.i26 = icmp eq i32 %or.i, %27
  br i1 %cmp.not.i26, label %tc358768_read.exit.i27.tc358768_update_bits.exit34_crit_edge, label %if.then.i29

tc358768_read.exit.i27.tc358768_update_bits.exit34_crit_edge: ; preds = %tc358768_read.exit.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_update_bits.exit34

if.then.i29:                                      ; preds = %tc358768_read.exit.i27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i.i18) #7
  %28 = ptrtoint ptr %tmpval.i.i18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %tmpval.i.i18, align 4
  %29 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i8.i28 = icmp eq i32 %30, 0
  br i1 %tobool.not.i8.i28, label %if.end.i.i32, label %if.then.i29.tc358768_write.exit.i33_crit_edge

if.then.i29.tc358768_write.exit.i33_crit_edge:    ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit.i33

if.end.i.i32:                                     ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i9.i30 = getelementptr i8, ptr %bridge, i32 -72
  %31 = ptrtoint ptr %regmap.i9.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i9.i30, align 4
  %call.i10.i31 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 4, ptr noundef nonnull %tmpval.i.i18, i32 noundef 1) #7
  %33 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i10.i31, ptr %error.i.i, align 4
  br label %tc358768_write.exit.i33

tc358768_write.exit.i33:                          ; preds = %if.end.i.i32, %if.then.i29.tc358768_write.exit.i33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i.i18) #7
  br label %tc358768_update_bits.exit34

tc358768_update_bits.exit34:                      ; preds = %tc358768_write.exit.i33, %tc358768_read.exit.i27.tc358768_update_bits.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i19) #7
  %34 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i.i, align 4
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not = icmp eq i32 %35, 0
  br i1 %tobool2.not, label %tc358768_update_bits.exit34.cleanup_crit_edge, label %do.end6

tc358768_update_bits.exit34.cleanup_crit_edge:    ; preds = %tc358768_update_bits.exit34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end6:                                          ; preds = %tc358768_update_bits.exit34
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.81, i32 noundef %35) #10
  call void @tc358768_bridge_disable(ptr noundef %bridge)
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i35 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i35, label %do.end6.cleanup_crit_edge, label %if.end.i.i37

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i37:                                     ; preds = %do.end6
  %reset_gpio.i.i = getelementptr i8, ptr %bridge, i32 -68
  %40 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %41, i32 noundef 1) #7
  %supplies.i.i = getelementptr i8, ptr %bridge, i32 -64
  %call.i.i36 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i.i = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i37.if.end2.i.i_crit_edge

if.end.i.i37.if.end2.i.i_crit_edge:               ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i.i

do.end.i.i:                                       ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.40, i32 noundef %call.i.i36) #10
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %do.end.i.i, %if.end.i.i37.if.end2.i.i_crit_edge
  %refclk.i.i = getelementptr i8, ptr %bridge, i32 -28
  %44 = ptrtoint ptr %refclk.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %refclk.i.i, align 4
  call void @clk_disable(ptr noundef %45) #7
  call void @clk_unprepare(ptr noundef %45) #7
  %46 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i.i, %do.end6.cleanup_crit_edge, %tc358768_update_bits.exit34.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358768_calc_pll(ptr nocapture noundef %priv, ptr nocapture noundef readonly %mode, i1 noundef zeroext %verify_only) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %conv.i = zext i32 %mul to i64
  %pd_lines.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %pd_lines.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_lines.i, align 4
  %conv1.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %dsi_lanes.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsi_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !212

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %5
  br label %tc358768_pclk_to_pll.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %mul.i) #11, !srcloc !210
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t5.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %tc358768_pclk_to_pll.exit

tc358768_pclk_to_pll.exit:                        ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t5.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %dividend.addr.0.i.i.off0.i)
  %cmp1.not = icmp ult i32 %dividend.addr.0.i.i.off0.i, 1000000000
  br i1 %cmp1.not, label %for.inc, label %tc358768_pclk_to_pll.exit.cleanup68_crit_edge

tc358768_pclk_to_pll.exit.cleanup68_crit_edge:    ; preds = %tc358768_pclk_to_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

for.inc:                                          ; preds = %tc358768_pclk_to_pll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %dividend.addr.0.i.i.off0.i)
  %cmp1.not.1 = icmp ult i32 %dividend.addr.0.i.i.off0.i, 500000000
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.end5_crit_edge

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %dividend.addr.0.i.i.off0.i)
  %cmp1.not.2 = icmp ult i32 %dividend.addr.0.i.i.off0.i, 250000000
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.end5_crit_edge

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %dividend.addr.0.i.i.off0.i)
  %cmp1.not.3 = icmp ult i32 %dividend.addr.0.i.i.off0.i, 125000000
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.end5_crit_edge

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500000, i32 %dividend.addr.0.i.i.off0.i)
  %cmp1.not.4 = icmp ult i32 %dividend.addr.0.i.i.off0.i, 62500000
  br i1 %cmp1.not.4, label %for.inc.3.cleanup68_crit_edge, label %for.inc.3.if.end5_crit_edge

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc.3.cleanup68_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end5:                                          ; preds = %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge
  %i.0.lcssa.ph = phi i32 [ 4, %for.inc.3.if.end5_crit_edge ], [ 3, %for.inc.2.if.end5_crit_edge ], [ 2, %for.inc.1.if.end5_crit_edge ], [ 1, %for.inc.if.end5_crit_edge ]
  %sub = add nsw i32 %i.0.lcssa.ph, -1
  %arrayidx7 = getelementptr [5 x i32], ptr @tc358768_calc_pll.frs_limits, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr [5 x i32], ptr @tc358768_calc_pll.frs_limits, i32 0, i32 %i.0.lcssa.ph
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %refclk9 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %refclk9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %refclk9, align 4
  %call10 = tail call i32 @clk_get_rate(ptr noundef %12) #7
  %conv = zext i32 %call10 to i64
  br label %for.body13

for.cond11.loopexit:                              ; preds = %for.inc49
  %exitcond155.not = icmp eq i32 %add, 16
  br i1 %exitcond155.not, label %for.end58, label %for.cond11.loopexit.for.body13_crit_edge

for.cond11.loopexit.for.body13_crit_edge:         ; preds = %for.cond11.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.body13:                                       ; preds = %for.cond11.loopexit.for.body13_crit_edge, %if.end5
  %best_fbd.0151 = phi i32 [ 0, %if.end5 ], [ %best_fbd.3.ph, %for.cond11.loopexit.for.body13_crit_edge ]
  %best_prd.0150 = phi i32 [ 0, %if.end5 ], [ %best_prd.3.ph, %for.cond11.loopexit.for.body13_crit_edge ]
  %best_pll.0149 = phi i32 [ 0, %if.end5 ], [ %best_pll.3.ph, %for.cond11.loopexit.for.body13_crit_edge ]
  %best_diff.0148 = phi i32 [ -1, %if.end5 ], [ %best_diff.3.ph, %for.cond11.loopexit.for.body13_crit_edge ]
  %prd.0147 = phi i32 [ 0, %if.end5 ], [ %add, %for.cond11.loopexit.for.body13_crit_edge ]
  %add = add nuw nsw i32 %prd.0147, 1
  %mul14 = shl i32 %add, %sub
  br label %for.body17

for.body17:                                       ; preds = %for.inc49.for.body17_crit_edge, %for.body13
  %fbd.0146 = phi i32 [ 0, %for.body13 ], [ %add18, %for.inc49.for.body17_crit_edge ]
  %best_fbd.1145 = phi i32 [ %best_fbd.0151, %for.body13 ], [ %best_fbd.3.ph, %for.inc49.for.body17_crit_edge ]
  %best_prd.1144 = phi i32 [ %best_prd.0150, %for.body13 ], [ %best_prd.3.ph, %for.inc49.for.body17_crit_edge ]
  %best_pll.1143 = phi i32 [ %best_pll.0149, %for.body13 ], [ %best_pll.3.ph, %for.inc49.for.body17_crit_edge ]
  %best_diff.1142 = phi i32 [ %best_diff.0148, %for.body13 ], [ %best_diff.3.ph, %for.inc49.for.body17_crit_edge ]
  %add18 = add nuw nsw i32 %fbd.0146, 1
  %conv19 = zext i32 %add18 to i64
  %mul20 = mul nuw nsw i64 %conv19, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul20)
  %cmp164.i.i = icmp ult i64 %mul20, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !212

if.then168.i.i:                                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul20 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul14
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul14, i64 %mul20) #11, !srcloc !210
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t129 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t129, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %dividend.addr.0.i.i.off0)
  %cmp23.not = icmp ule i32 %8, %dividend.addr.0.i.i.off0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %dividend.addr.0.i.i.off0)
  %cmp26 = icmp ugt i32 %10, %dividend.addr.0.i.i.off0
  %or.cond = select i1 %cmp23.not, i1 true, i1 %cmp26
  br i1 %or.cond, label %div_u64.exit.for.inc49_crit_edge, label %if.end29

div_u64.exit.for.inc49_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49

if.end29:                                         ; preds = %div_u64.exit
  %14 = tail call i32 @llvm.umax.i32(i32 %dividend.addr.0.i.i.off0.i, i32 %dividend.addr.0.i.i.off0)
  %15 = tail call i32 @llvm.umin.i32(i32 %dividend.addr.0.i.i.off0.i, i32 %dividend.addr.0.i.i.off0)
  %sub39 = sub i32 %14, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %best_diff.1142)
  %cmp40 = icmp ult i32 %sub39, %best_diff.1142
  br i1 %cmp40, label %if.then42, label %if.end29.for.inc49_crit_edge

if.end29.for.inc49_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39)
  %cmp43 = icmp eq i32 %sub39, 0
  br i1 %cmp43, label %if.then42.found_crit_edge, label %if.then42.for.inc49_crit_edge

if.then42.for.inc49_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49

if.then42.found_crit_edge:                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.inc49:                                        ; preds = %if.then42.for.inc49_crit_edge, %if.end29.for.inc49_crit_edge, %div_u64.exit.for.inc49_crit_edge
  %best_diff.3.ph = phi i32 [ %best_diff.1142, %div_u64.exit.for.inc49_crit_edge ], [ %sub39, %if.then42.for.inc49_crit_edge ], [ %best_diff.1142, %if.end29.for.inc49_crit_edge ]
  %best_pll.3.ph = phi i32 [ %best_pll.1143, %div_u64.exit.for.inc49_crit_edge ], [ %dividend.addr.0.i.i.off0, %if.then42.for.inc49_crit_edge ], [ %best_pll.1143, %if.end29.for.inc49_crit_edge ]
  %best_prd.3.ph = phi i32 [ %best_prd.1144, %div_u64.exit.for.inc49_crit_edge ], [ %prd.0147, %if.then42.for.inc49_crit_edge ], [ %best_prd.1144, %if.end29.for.inc49_crit_edge ]
  %best_fbd.3.ph = phi i32 [ %best_fbd.1145, %div_u64.exit.for.inc49_crit_edge ], [ %fbd.0146, %if.then42.for.inc49_crit_edge ], [ %best_fbd.1145, %if.end29.for.inc49_crit_edge ]
  %exitcond.not = icmp eq i32 %add18, 512
  br i1 %exitcond.not, label %for.cond11.loopexit, label %for.inc49.for.body17_crit_edge

for.inc49.for.body17_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.end58:                                        ; preds = %for.cond11.loopexit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.3.ph)
  %cmp59 = icmp eq i32 %best_diff.3.ph, -1
  br i1 %cmp59, label %do.end, label %for.end58.found_crit_edge

for.end58.found_crit_edge:                        ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

do.end:                                           ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.37) #10
  br label %cleanup68

found:                                            ; preds = %for.end58.found_crit_edge, %if.then42.found_crit_edge
  %best_pll.5 = phi i32 [ %best_pll.3.ph, %for.end58.found_crit_edge ], [ %dividend.addr.0.i.i.off0, %if.then42.found_crit_edge ]
  %best_prd.5 = phi i32 [ %best_prd.3.ph, %for.end58.found_crit_edge ], [ %prd.0147, %if.then42.found_crit_edge ]
  %best_fbd.5 = phi i32 [ %best_fbd.3.ph, %for.end58.found_crit_edge ], [ %fbd.0146, %if.then42.found_crit_edge ]
  br i1 %verify_only, label %found.cleanup68_crit_edge, label %if.end64

found.cleanup68_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end64:                                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #9
  %fbd65 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 12
  %18 = ptrtoint ptr %fbd65 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %best_fbd.5, ptr %fbd65, align 4
  %prd66 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 13
  %19 = ptrtoint ptr %prd66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %best_prd.5, ptr %prd66, align 4
  %frs67 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 14
  %20 = ptrtoint ptr %frs67 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %frs67, align 4
  %div113 = lshr i32 %best_pll.5, 1
  %dsiclk = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 15
  %21 = ptrtoint ptr %dsiclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div113, ptr %dsiclk, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %if.end64, %found.cleanup68_crit_edge, %do.end, %for.inc.3.cleanup68_crit_edge, %tc358768_pclk_to_pll.exit.cleanup68_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -22, %do.end ], [ 0, %found.cleanup68_crit_edge ], [ -22, %tc358768_pclk_to_pll.exit.cleanup68_crit_edge ], [ -22, %for.inc.3.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358768_hw_disable(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %supplies = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 3
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef %call) #10
  br label %if.end2

if.end2:                                          ; preds = %do.end, %if.end.if.end2_crit_edge
  %refclk = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358768_setup_pll(ptr nocapture noundef %priv, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %tmpval.i106 = alloca i32, align 4
  %tmpval.i99 = alloca i32, align 4
  %tmpval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tc358768_calc_pll(ptr noundef %priv, ptr noundef %mode, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fbd1 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %fbd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fbd1, align 4
  %prd2 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %prd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prd2, align 4
  %frs3 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %frs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frs3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_setup_pll, %if.then9)) #7
          to label %do.body15 [label %if.then9], !srcloc !211

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %refclk = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 4
  %10 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %refclk, align 4
  %call11 = tail call i32 @clk_get_rate(ptr noundef %11) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_setup_pll.__UNIQUE_ID_ddebug311, ptr noundef %9, ptr noundef nonnull @.str.76, i32 noundef %call11, i32 noundef %3, i32 noundef %5, i32 noundef %7) #7
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_setup_pll, %if.then27)) #7
          to label %do.body34 [label %if.then27], !srcloc !211

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %dsiclk = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 15
  %14 = ptrtoint ptr %dsiclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsiclk, align 4
  %mul = shl i32 %15, 1
  %div92 = lshr i32 %15, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_setup_pll.__UNIQUE_ID_ddebug312, ptr noundef %13, ptr noundef nonnull @.str.77, i32 noundef %mul, i32 noundef %15, i32 noundef %div92) #7
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %do.body15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358768_setup_pll, %if.then46)) #7
          to label %do.end54 [label %if.then46], !srcloc !211

if.then46:                                        ; preds = %do.body34
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %dsiclk48 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 15
  %18 = ptrtoint ptr %dsiclk48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dsiclk48, align 4
  %mul49 = shl i32 %19, 1
  %conv.i = zext i32 %mul49 to i64
  %dsi_lanes.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 11
  %20 = ptrtoint ptr %dsi_lanes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsi_lanes.i, align 4
  %conv1.i = zext i32 %21 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %pd_lines.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 10
  %22 = ptrtoint ptr %pd_lines.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pd_lines.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !212

if.then168.i.i.i:                                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %23
  br label %tc358768_pll_to_pclk.exit

if.else174.i.i.i:                                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %mul.i) #11, !srcloc !210
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t5.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %tc358768_pll_to_pclk.exit

tc358768_pll_to_pclk.exit:                        ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t5.i, %if.else174.i.i.i ]
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %mul51 = mul i32 %26, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358768_setup_pll.__UNIQUE_ID_ddebug313, ptr noundef %17, ptr noundef nonnull @.str.78, i32 noundef %dividend.addr.0.i.i.off0.i, i32 noundef %mul51) #7
  br label %do.end54

do.end54:                                         ; preds = %tc358768_pll_to_pclk.exit, %do.body34
  %shl = shl i32 %5, 12
  %or = or i32 %shl, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i) #7
  %27 = ptrtoint ptr %tmpval.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %tmpval.i, align 4
  %error.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 6
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %tc358768_write.exit, label %tc358768_write.exit.thread

tc358768_write.exit.thread:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  %shl55117 = shl i32 %7, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i99) #7
  br label %tc358768_write.exit105

tc358768_write.exit:                              ; preds = %do.end54
  %regmap.i = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 22, ptr noundef nonnull %tmpval.i, i32 noundef 1) #7
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i) #7
  %shl55 = shl i32 %7, 10
  %or58 = or i32 %shl55, 515
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i99) #7
  %33 = ptrtoint ptr %tmpval.i99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or58, ptr %tmpval.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i101 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i101, label %if.end.i104, label %tc358768_write.exit.tc358768_write.exit105_crit_edge

tc358768_write.exit.tc358768_write.exit105_crit_edge: ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit105

if.end.i104:                                      ; preds = %tc358768_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i103 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 24, ptr noundef nonnull %tmpval.i99, i32 noundef 1) #7
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i103, ptr %error.i, align 4
  br label %tc358768_write.exit105

tc358768_write.exit105:                           ; preds = %if.end.i104, %tc358768_write.exit.tc358768_write.exit105_crit_edge, %tc358768_write.exit.thread
  %shl55120 = phi i32 [ %shl55117, %tc358768_write.exit.thread ], [ %shl55, %tc358768_write.exit.tc358768_write.exit105_crit_edge ], [ %shl55, %if.end.i104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i99) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %or63 = or i32 %shl55120, 531
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpval.i106) #7
  %37 = ptrtoint ptr %tmpval.i106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or63, ptr %tmpval.i106, align 4
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i108 = icmp eq i32 %39, 0
  br i1 %tobool.not.i108, label %if.end.i111, label %tc358768_write.exit105.tc358768_write.exit112_crit_edge

tc358768_write.exit105.tc358768_write.exit112_crit_edge: ; preds = %tc358768_write.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc358768_write.exit112

if.end.i111:                                      ; preds = %tc358768_write.exit105
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i109 = getelementptr inbounds %struct.tc358768_priv, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %regmap.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i109, align 4
  %call.i110 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 24, ptr noundef nonnull %tmpval.i106, i32 noundef 1) #7
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i110, ptr %error.i, align 4
  br label %tc358768_write.exit112

tc358768_write.exit112:                           ; preds = %if.end.i111, %tc358768_write.exit105.tc358768_write.exit112_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpval.i106) #7
  %43 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %tc358768_write.exit112, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %44, %tc358768_write.exit112 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_tc358768__329_1093_tc358768_driver_init6, !1, !"__initcall__kmod_tc358768__329_1093_tc358768_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1093, i32 1}
!2 = !{ptr @__exitcall_tc358768_driver_exit, !1, !"__exitcall_tc358768_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author330, !4, !"__UNIQUE_ID_author330", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1095, i32 1}
!5 = !{ptr @__UNIQUE_ID_description331, !6, !"__UNIQUE_ID_description331", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1096, i32 1}
!7 = !{ptr @__UNIQUE_ID_file332, !8, !"__UNIQUE_ID_file332", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1097, i32 1}
!9 = !{ptr @__UNIQUE_ID_license333, !8, !"__UNIQUE_ID_license333", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1086, i32 11}
!12 = !{ptr @tc358768_driver, !13, !"tc358768_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1084, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1043, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1052, i32 51}
!18 = !{ptr @tc358768_i2c_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1057, i32 17}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1059, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tc358768_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @tc358768_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 1016, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tc358768_get_regulators._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tc358768_get_regulators._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 126, i32 2}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 126, i32 10}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 126, i32 21}
!40 = distinct !{null, !41, !"tc358768_supplies", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 125, i32 27}
!42 = !{ptr @tc358768_regmap_config, !43, !"tc358768_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 980, i32 35}
!44 = !{ptr @tc358768_dsi_host_ops, !45, !"tc358768_dsi_host_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 516, i32 39}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 386, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tc358768_dsi_host_attach._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tc358768_dsi_host_attach._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 396, i32 3}
!53 = !{ptr @tc358768_dsi_host_attach._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tc358768_dsi_host_attach._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 405, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tc358768_dsi_host_attach._entry.19, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tc358768_dsi_host_attach._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 431, i32 34}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 464, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tc358768_dsi_host_transfer._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @tc358768_dsi_host_transfer._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 469, i32 3}
!69 = !{ptr @tc358768_dsi_host_transfer._entry.26, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @tc358768_dsi_host_transfer._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 474, i32 3}
!73 = !{ptr @tc358768_dsi_host_transfer._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tc358768_dsi_host_transfer._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 509, i32 3}
!77 = !{ptr @tc358768_dsi_host_transfer._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tc358768_dsi_host_transfer._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @tc358768_bridge_funcs, !80, !"tc358768_bridge_funcs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 917, i32 38}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 528, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tc358768_bridge_attach._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @tc358768_bridge_attach._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @tc358768_calc_pll.frs_limits, !87, !"frs_limits", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 300, i32 19}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 360, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tc358768_calc_pll._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @tc358768_calc_pll._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 568, i32 3}
!95 = !{ptr @tc358768_bridge_disable._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tc358768_bridge_disable._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 279, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tc358768_hw_disable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @tc358768_hw_disable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__print_once", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 643, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tc358768_bridge_pre_enable._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @tc358768_bridge_pre_enable._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 651, i32 3}
!110 = !{ptr @tc358768_bridge_pre_enable._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tc358768_bridge_pre_enable._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 659, i32 3}
!114 = !{ptr @tc358768_bridge_pre_enable._entry.47, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tc358768_bridge_pre_enable._entry_ptr.49, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 697, i32 3}
!118 = !{ptr @tc358768_bridge_pre_enable._entry.50, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tc358768_bridge_pre_enable._entry_ptr.52, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 722, i32 2}
!122 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug316, !121, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 723, i32 2}
!125 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug317, !124, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 724, i32 2}
!128 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug318, !127, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 725, i32 2}
!131 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug319, !130, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 729, i32 2}
!134 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug320, !133, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 735, i32 2}
!137 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug321, !136, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 744, i32 2}
!140 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug322, !139, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 750, i32 2}
!143 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug323, !142, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 759, i32 2}
!146 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug324, !145, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 765, i32 2}
!149 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug325, !148, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 771, i32 2}
!152 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug326, !151, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 777, i32 2}
!155 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug327, !154, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 794, i32 2}
!158 = !{ptr @tc358768_bridge_pre_enable.__UNIQUE_ID_ddebug328, !157, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 887, i32 3}
!161 = !{ptr @tc358768_bridge_pre_enable._entry.66, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @tc358768_bridge_pre_enable._entry_ptr.68, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 242, i32 3}
!165 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @tc358768_hw_enable._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @tc358768_hw_enable._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 246, i32 3}
!170 = !{ptr @tc358768_hw_enable._entry.71, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @tc358768_hw_enable._entry_ptr.73, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 586, i32 3}
!174 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @tc358768_setup_pll._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @tc358768_setup_pll._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 594, i32 2}
!179 = !{ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug311, !178, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 596, i32 2}
!182 = !{ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug312, !181, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 598, i32 2}
!185 = !{ptr @tc358768_setup_pll.__UNIQUE_ID_ddebug313, !184, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 899, i32 3}
!188 = !{ptr @tc358768_bridge_enable._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tc358768_bridge_enable._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 911, i32 3}
!192 = !{ptr @tc358768_bridge_enable._entry.80, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tc358768_bridge_enable._entry_ptr.82, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @default_tc358768_timings, !195, !"default_tc358768_timings", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 926, i32 40}
!196 = !{ptr @tc358768_of_ids, !197, !"tc358768_of_ids", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 999, i32 34}
!198 = !{ptr @tc358768_i2c_ids, !199, !"tc358768_i2c_ids", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/bridge/tc358768.c", i32 992, i32 35}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"auto-init"}
!210 = !{i64 2148658156, i64 2148658436, i64 2148658770, i64 2148659104}
!211 = !{i64 2148749437, i64 2148749442, i64 2148749455, i64 2148749499, i64 2148749533, i64 2148749554}
!212 = !{!"branch_weights", i32 2000, i32 1}
