; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/tc358775.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358775.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tc_data = type { ptr, ptr, %struct.drm_bridge, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, i8, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_tc358775__601_753_tc358775_driver_init6 = internal global ptr @tc358775_driver_init, section ".initcall6.init", align 4
@tc358775_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tc_probe, ptr @tc_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358775_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358775_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc358775_driver_exit = internal global ptr @tc358775_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author602 = internal constant [52 x i8] c"tc358775.author=Vinay Simha BN <simhavcs@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description603 = internal constant [53 x i8] c"tc358775.description=TC358775 DSI/LVDS bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file604 = internal constant [46 x i8] c"tc358775.file=drivers/gpu/drm/bridge/tc358775\00", section ".modinfo", align 1
@__UNIQUE_ID_license605 = internal constant [24 x i8] c"tc358775.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358775\00", [23 x i8] zeroinitializer }, align 32
@tc358775_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358775\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tc358775_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc358775\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vddio-supply\00", [19 x i8] zeroinitializer }, align 32
@tc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 681, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vddio-supply not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/tc358775.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr = internal global ptr @tc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-supply\00", [21 x i8] zeroinitializer }, align 32
@tc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 688, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vdd-supply not found\0A\00", [42 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.10 = internal global ptr @tc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stby\00", [27 x i8] zeroinitializer }, align 32
@tc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 695, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get stby-gpio %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.14 = internal global ptr @tc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get reset-gpios %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.18 = internal global ptr @tc_probe._entry.16, section ".printk_index", align 4
@tc_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tc_bridge_attach, ptr null, ptr @tc_mode_valid, ptr null, ptr null, ptr @tc_bridge_post_disable, ptr null, ptr @tc_bridge_pre_enable, ptr @tc_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@tc358775_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find data lane\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc358775_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@tc358775_parse_dt._entry_ptr = internal global ptr @tc358775_parse_dt._entry, section ".printk_index", align 4
@tc358775_parse_dt.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no.of dsi lanes: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@tc358775_parse_dt.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"operating in %d-link mode\0A\00", [37 x i8] zeroinitializer }, align 32
@tc_mode_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 520, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported LVDS bus format 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc_mode_valid\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tc_mode_valid._entry_ptr = internal global ptr @tc_mode_valid._entry, section ".printk_index", align 4
@tc_bridge_post_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator vdd disable failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc_bridge_post_disable\00", [41 x i8] zeroinitializer }, align 32
@tc_bridge_post_disable._entry_ptr = internal global ptr @tc_bridge_post_disable._entry, section ".printk_index", align 4
@tc_bridge_post_disable._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"regulator vddio disable failed, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tc_bridge_post_disable._entry_ptr.31 = internal global ptr @tc_bridge_post_disable._entry.29, section ".printk_index", align 4
@tc_bridge_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator vddio enable failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc_bridge_pre_enable\00", [43 x i8] zeroinitializer }, align 32
@tc_bridge_pre_enable._entry_ptr = internal global ptr @tc_bridge_pre_enable._entry, section ".printk_index", align 4
@tc_bridge_pre_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"regulator vdd enable failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tc_bridge_pre_enable._entry_ptr.36 = internal global ptr @tc_bridge_pre_enable._entry.34, section ".printk_index", align 4
@tc_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 406, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DSI2LVDS Chip ID.%02x Revision ID. %02x **\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc_bridge_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tc_bridge_enable._entry_ptr = internal global ptr @tc_bridge_enable._entry, section ".printk_index", align 4
@tc_bridge_enable.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.40, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bus_formats %04x bpc %d\0A\00", [39 x i8] zeroinitializer }, align 32
@d2l_read.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"d2l_read\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"d2l: I2C : addr:%04x value:%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@d2l_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d reading from subaddress 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@d2l_read._entry_ptr = internal global ptr @d2l_read._entry, section ".printk_index", align 4
@d2l_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error %d writing to subaddress 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d2l_write\00", [22 x i8] zeroinitializer }, align 32
@d2l_write._entry_ptr = internal global ptr @d2l_write._entry, section ".printk_index", align 4
@__const.tc_attach_host.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"tc358775\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@tc_attach_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc_attach_host\00", [17 x i8] zeroinitializer }, align 32
@tc_attach_host._entry_ptr = internal global ptr @tc_attach_host._entry, section ".printk_index", align 4
@tc_attach_host._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 630, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@tc_attach_host._entry_ptr.50 = internal global ptr @tc_attach_host._entry.48, section ".printk_index", align 4
@tc_attach_host._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 642, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach dsi to host\0A\00", [34 x i8] zeroinitializer }, align 32
@tc_attach_host._entry_ptr.53 = internal global ptr @tc_attach_host._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4112, i64 4113, i64 4114]
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"tc358775_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 744, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 746, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"tc358775_of_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 738, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"tc358775_i2c_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 732, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 678, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 681, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 685, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 688, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 692, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 695, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 699, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 702, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"tc_bridge_funcs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 603, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 550, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 554, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 587, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 588, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 518, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 318, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 323, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 289, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 294, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 405, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 453, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 341, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 344, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 358, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 624, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 630, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/tc358775.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 642, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author602, ptr @__UNIQUE_ID_description603, ptr @__UNIQUE_ID_file604, ptr @__UNIQUE_ID_license605, ptr @__exitcall_tc358775_driver_exit, ptr @__initcall__kmod_tc358775__601_753_tc358775_driver_init6, ptr @d2l_read._entry, ptr @d2l_read._entry_ptr, ptr @d2l_write._entry, ptr @d2l_write._entry_ptr, ptr @tc358775_driver_exit, ptr @tc358775_parse_dt._entry, ptr @tc358775_parse_dt._entry_ptr, ptr @tc_attach_host._entry, ptr @tc_attach_host._entry.48, ptr @tc_attach_host._entry.51, ptr @tc_attach_host._entry_ptr, ptr @tc_attach_host._entry_ptr.50, ptr @tc_attach_host._entry_ptr.53, ptr @tc_bridge_enable._entry, ptr @tc_bridge_enable._entry_ptr, ptr @tc_bridge_post_disable._entry, ptr @tc_bridge_post_disable._entry.29, ptr @tc_bridge_post_disable._entry_ptr, ptr @tc_bridge_post_disable._entry_ptr.31, ptr @tc_bridge_pre_enable._entry, ptr @tc_bridge_pre_enable._entry.34, ptr @tc_bridge_pre_enable._entry_ptr, ptr @tc_bridge_pre_enable._entry_ptr.36, ptr @tc_mode_valid._entry, ptr @tc_mode_valid._entry_ptr, ptr @tc_probe._entry, ptr @tc_probe._entry.12, ptr @tc_probe._entry.16, ptr @tc_probe._entry.8, ptr @tc_probe._entry_ptr, ptr @tc_probe._entry_ptr.10, ptr @tc_probe._entry_ptr.14, ptr @tc_probe._entry_ptr.18, ptr @tc358775_driver, ptr @.str, ptr @tc358775_of_ids, ptr @tc358775_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @tc_bridge_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358775_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358775_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358775_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358775_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_mode_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_post_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_post_disable._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_pre_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d2l_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d2l_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_attach_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_attach_host._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_attach_host._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358775_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc358775_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358775_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tc358775_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %info.i = alloca %struct.mipi_dsi_device_info, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #6
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !129
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 324, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef nonnull %6) #6
  %panel_bridge = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %panel_bridge, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call17 = call fastcc i32 @tc358775_parse_dt(ptr noundef %10, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %vddio = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %vddio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %vddio, align 4
  %cmp.i120 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call28 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %vdd = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %vdd, align 4
  %cmp.i121 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %call38 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 7) #6
  %stby_gpio = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %stby_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %stby_gpio, align 4
  %cmp.i122 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %16) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call48 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call48, ptr %reset_gpio, align 4
  %cmp.i123 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %18) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  %bridge = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tc_bridge_funcs, ptr %funcs, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node60 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %of_node60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node60, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #6
  %26 = call ptr @memcpy(ptr %info.i, ptr @__const.tc_attach_host.info, i32 28)
  %host_node.i = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host_node.i, align 4
  %call.i124 = call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %28) #6
  %tobool.not.i = icmp eq ptr %call.i124, null
  br i1 %tobool.not.i, label %if.end57.tc_attach_host.exit.thread_crit_edge, label %if.end.i

if.end57.tc_attach_host.exit.thread_crit_edge:    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_attach_host.exit.thread

if.end.i:                                         ; preds = %if.end57
  %call2.i = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %dev1.i, ptr noundef nonnull %call.i124, ptr noundef nonnull %info.i) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tc_attach_host.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  %dsi10.i = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %dsi10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2.i, ptr %dsi10.i, align 4
  %num_dsi_lanes.i = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %num_dsi_lanes.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_dsi_lanes.i, align 4
  %conv.i = zext i8 %31 to i32
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 4
  %32 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %lanes.i, align 8
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 5
  %33 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %format.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 6
  %34 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mode_flags.i, align 8
  %call11.i = call i32 @devm_mipi_dsi_attach(ptr noundef %dev1.i, ptr noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i125 = icmp slt i32 %call11.i, 0
  br i1 %cmp.i125, label %if.end9.i.tc_attach_host.exit.thread_crit_edge, label %tc_attach_host.exit.thread129

if.end9.i.tc_attach_host.exit.thread_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_attach_host.exit.thread

tc_attach_host.exit.thread129:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %cleanup

tc_attach_host.exit.thread:                       ; preds = %if.end9.i.tc_attach_host.exit.thread_crit_edge, %if.end57.tc_attach_host.exit.thread_crit_edge
  %.str.52.sink = phi ptr [ @.str.46, %if.end57.tc_attach_host.exit.thread_crit_edge ], [ @.str.52, %if.end9.i.tc_attach_host.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ -517, %if.end57.tc_attach_host.exit.thread_crit_edge ], [ %call11.i, %if.end9.i.tc_attach_host.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.52.sink) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %err_bridge_remove

tc_attach_host.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49) #9
  %35 = ptrtoint ptr %call2.i to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #6
  br label %err_bridge_remove

err_bridge_remove:                                ; preds = %tc_attach_host.exit, %tc_attach_host.exit.thread
  %retval.0.i128 = phi i32 [ %retval.0.i.ph, %tc_attach_host.exit.thread ], [ %35, %tc_attach_host.exit ]
  call void @drm_bridge_remove(ptr noundef %bridge) #6
  br label %cleanup

cleanup:                                          ; preds = %err_bridge_remove, %tc_attach_host.exit.thread129, %if.then51, %if.then41, %if.then31, %if.then24, %if.end15.cleanup_crit_edge, %if.then12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then12 ], [ %12, %if.then24 ], [ %14, %if.then31 ], [ %16, %if.then41 ], [ %18, %if.then51 ], [ %retval.0.i128, %err_bridge_remove ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ 0, %tc_attach_host.exit.thread129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.tc_data, ptr %1, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358775_parse_dt(ptr noundef %np, ptr nocapture noundef %tc) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  %dev = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %4, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call) #6
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end13_crit_edge, label %if.then3

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -1) #6
  tail call void @of_node_put(ptr noundef nonnull %call1) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then3.if.end13_crit_edge, label %if.then6

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %if.then3
  %call7 = call ptr @of_find_property(ptr noundef nonnull %call4, ptr noundef nonnull @.str.19, ptr noundef nonnull %len) #6
  call void @of_node_put(ptr noundef nonnull %call4) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.then3.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %div104 = lshr i32 %8, 2
  %conv = trunc i32 %div104 to i8
  %num_dsi_lanes = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6
  %9 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_dsi_lanes, align 4
  %conv15 = and i32 %div104, 255
  %10 = add nsw i32 %conv15, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %10)
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %if.end13.cleanup_crit_edge, label %if.end22

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call23 = call ptr @of_graph_get_remote_node(ptr noundef %np, i32 noundef 0, i32 noundef 0) #6
  %host_node = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 4
  %12 = ptrtoint ptr %host_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %host_node, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @of_node_put(ptr noundef nonnull %call23) #6
  %lvds_link = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 11
  %13 = ptrtoint ptr %lvds_link to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %lvds_link, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %of_node30 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node30, align 8
  %call31 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %17, i32 noundef 2, i32 noundef -1) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end27.do.body43_crit_edge, label %if.then33

if.end27.do.body43_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

if.then33:                                        ; preds = %if.end27
  %call34 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call31) #6
  call void @of_node_put(ptr noundef nonnull %call31) #6
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then33.do.body43_crit_edge, label %if.then36

if.then33.do.body43_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

if.then36:                                        ; preds = %if.then33
  %call37 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call34) #6
  br i1 %call37, label %if.then38, label %if.then36.if.end40_crit_edge

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %lvds_link to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %lvds_link, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36.if.end40_crit_edge
  call void @of_node_put(ptr noundef nonnull %call34) #6
  br label %do.body43

do.body43:                                        ; preds = %if.end40, %if.then33.do.body43_crit_edge, %if.end27.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358775_parse_dt.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358775_parse_dt, %if.then48)) #6
          to label %do.body55 [label %if.then48], !srcloc !130

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_dsi_lanes, align 4
  %conv51 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358775_parse_dt.__UNIQUE_ID_ddebug599, ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef %conv51) #6
  br label %do.body55

do.body55:                                        ; preds = %if.then48, %do.body43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358775_parse_dt.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358775_parse_dt, %if.then67)) #6
          to label %cleanup [label %if.then67], !srcloc !130

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %lvds_link to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lvds_link, align 4
  %conv70 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358775_parse_dt.__UNIQUE_ID_ddebug600, ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef %conv70) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.body55, %if.end22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -517, %do.end ], [ -22, %if.end13.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %do.body55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %call2 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_mode_valid(ptr nocapture noundef %bridge, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %1)
  %cmp = icmp sgt i32 %1, 135000
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %lvds_link = getelementptr i8, ptr %bridge, i32 312
  %2 = ptrtoint ptr %lvds_link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lvds_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp1 = icmp eq i8 %3, 1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %1)
  %cmp4 = icmp ugt i32 %1, 270000
  br i1 %cmp4, label %land.lhs.true6, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %lvds_link to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lvds_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp9 = icmp eq i8 %5, 2
  br i1 %cmp9, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %bus_formats = getelementptr inbounds %struct.drm_display_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_formats, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 4113, label %if.end.sw.bb_crit_edge
    i32 4114, label %if.end.sw.bb_crit_edge22
    i32 4112, label %sw.bb11
  ]

if.end.sw.bb_crit_edge22:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge22
  %bpc = getelementptr i8, ptr %bridge, i32 313
  %11 = ptrtoint ptr %bpc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %bpc, align 1
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bpc12 = getelementptr i8, ptr %bridge, i32 313
  %12 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %bpc12, align 1
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %bridge, i32 -4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb11, %sw.bb, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %do.end ], [ 15, %land.lhs.true6.cleanup_crit_edge ], [ 15, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_post_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %reset_gpio = getelementptr i8, ptr %bridge, i32 304
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %stby_gpio = getelementptr i8, ptr %bridge, i32 308
  %4 = ptrtoint ptr %stby_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stby_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %vdd = getelementptr i8, ptr %bridge, i32 296
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %vddio = getelementptr i8, ptr %bridge, i32 300
  %8 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vddio, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call3) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end.if.end9_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_pre_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %vddio = getelementptr i8, ptr %bridge, i32 300
  %2 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %vdd = getelementptr i8, ptr %bridge, i32 296
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call3) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end.if.end9_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %stby_gpio = getelementptr i8, ptr %bridge, i32 308
  %6 = ptrtoint ptr %stby_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stby_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %reset_gpio = getelementptr i8, ptr %bridge, i32 304
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_enable(ptr noundef readonly %bridge) #2 align 64 {
entry:
  %data.i1455 = alloca [6 x i8], align 2
  %data.i1448 = alloca [6 x i8], align 2
  %data.i1441 = alloca [6 x i8], align 2
  %data.i1434 = alloca [6 x i8], align 2
  %data.i1427 = alloca [6 x i8], align 2
  %data.i1420 = alloca [6 x i8], align 2
  %data.i1413 = alloca [6 x i8], align 2
  %data.i1406 = alloca [6 x i8], align 2
  %data.i1399 = alloca [6 x i8], align 2
  %data.i1392 = alloca [6 x i8], align 2
  %data.i1385 = alloca [6 x i8], align 2
  %data.i1378 = alloca [6 x i8], align 2
  %data.i1371 = alloca [6 x i8], align 2
  %data.i1364 = alloca [6 x i8], align 2
  %data.i1357 = alloca [6 x i8], align 2
  %data.i1350 = alloca [6 x i8], align 2
  %data.i1343 = alloca [6 x i8], align 2
  %data.i1336 = alloca [6 x i8], align 2
  %data.i1329 = alloca [6 x i8], align 2
  %data.i1322 = alloca [6 x i8], align 2
  %data.i1315 = alloca [6 x i8], align 2
  %data.i1308 = alloca [6 x i8], align 2
  %data.i1301 = alloca [6 x i8], align 2
  %data.i1294 = alloca [6 x i8], align 2
  %data.i1287 = alloca [6 x i8], align 2
  %data.i1280 = alloca [6 x i8], align 2
  %data.i1273 = alloca [6 x i8], align 2
  %data.i1266 = alloca [6 x i8], align 2
  %data.i1259 = alloca [6 x i8], align 2
  %data.i1252 = alloca [6 x i8], align 2
  %data.i1245 = alloca [6 x i8], align 2
  %data.i1238 = alloca [6 x i8], align 2
  %data.i1231 = alloca [6 x i8], align 2
  %data.i1224 = alloca [6 x i8], align 2
  %data.i = alloca [6 x i8], align 2
  %buf_addr.i = alloca [2 x i8], align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %1 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %encoder, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %connector_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %for.cond.i.get_connector.exit_crit_edge, label %for.body.i

for.cond.i.get_connector.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_connector.exit

for.body.i:                                       ; preds = %for.cond.i
  %encoder4.i = getelementptr i8, ptr %.pn.i, i32 804
  %6 = ptrtoint ptr %encoder4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder4.i, align 4
  %cmp5.i = icmp eq ptr %7, %2
  br i1 %cmp5.i, label %cleanup.split.loop.exit17.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

cleanup.split.loop.exit17.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %connector.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  br label %get_connector.exit

get_connector.exit:                               ; preds = %cleanup.split.loop.exit17.i, %for.cond.i.get_connector.exit_crit_edge
  %retval.0.i1219 = phi ptr [ %connector.0.le.i, %cleanup.split.loop.exit17.i ], [ null, %for.cond.i.get_connector.exit_crit_edge ]
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal, align 2
  %conv = zext i16 %13 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_end, align 4
  %conv3 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv, %conv3
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_start, align 2
  %conv6 = zext i16 %17 to i32
  %sub7 = sub nsw i32 %conv3, %conv6
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal, align 4
  %conv8 = zext i16 %19 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_end, align 2
  %conv9 = zext i16 %21 to i32
  %sub10 = sub nsw i32 %conv8, %conv9
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_start, align 4
  %conv13 = zext i16 %23 to i32
  %sub14 = sub nsw i32 %conv9, %conv13
  %shl = shl i32 %sub, 16
  %add = add i32 %shl, %sub7
  %shl15 = shl i32 %sub10, 16
  %add16 = add i32 %sub14, %shl15
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdisplay, align 4
  %conv19 = zext i16 %25 to i32
  %sub20 = sub nsw i32 %conv6, %conv19
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv25 = zext i16 %27 to i32
  %sub26 = sub nsw i32 %conv13, %conv25
  %shl29 = shl i32 %sub20, 16
  %add30 = or i32 %shl29, %conv19
  %shl31 = shl i32 %sub26, 16
  %add32 = or i32 %shl31, %conv25
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_addr.i) #6
  %30 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1408, ptr %buf_addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %buf_addr.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %get_connector.exit.d2l_read.exit_crit_edge, label %if.end.i

get_connector.exit.d2l_read.exit_crit_edge:       ; preds = %get_connector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_read.exit

if.end.i:                                         ; preds = %get_connector.exit
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %val, i32 noundef 4, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp3.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp3.i, label %if.end.i.d2l_read.exit_crit_edge, label %do.body.i

if.end.i.d2l_read.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_read.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @d2l_read.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_bridge_enable, %if.then9.i)) #6
          to label %d2l_read.exit [label %if.then9.i], !srcloc !130

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @d2l_read.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.42, i32 noundef 1408, i32 noundef %32) #6
  br label %d2l_read.exit

d2l_read.exit:                                    ; preds = %if.then9.i, %do.body.i, %if.end.i.d2l_read.exit_crit_edge, %get_connector.exit.d2l_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %get_connector.exit.d2l_read.exit_crit_edge ], [ %call.i1.i, %if.end.i.d2l_read.exit_crit_edge ], [ %call.i1.i, %if.then9.i ], [ %call.i1.i, %do.body.i ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %ret.0.i, i32 noundef 1408) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_addr.i) #6
  %dev = getelementptr i8, ptr %bridge, i32 -4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %shr = lshr i32 %36, 8
  %and = and i32 %shr, 255
  %and33 = and i32 %36, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.37, i32 noundef %and, i32 noundef %and33) #9
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #6
  %39 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 2
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1284, ptr %data.i, align 2
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 1056964608, ptr %39, align 2
  %call.i.i1220 = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %data.i, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1220)
  %cmp.i1221 = icmp slt i32 %call.i.i1220, 0
  br i1 %cmp.i1221, label %do.end.i, label %d2l_read.exit.d2l_write.exit_crit_edge

d2l_read.exit.d2l_write.exit_crit_edge:           ; preds = %d2l_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit

do.end.i:                                         ; preds = %d2l_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1222 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1222, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1220, i32 noundef 1284) #9
  br label %d2l_write.exit

d2l_write.exit:                                   ; preds = %do.end.i, %d2l_read.exit.d2l_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #6
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 40000, i32 noundef 2) #6
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1224) #6
  %44 = getelementptr inbounds [6 x i8], ptr %data.i1224, i32 0, i32 2
  %45 = ptrtoint ptr %data.i1224 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 316, ptr %data.i1224, align 2
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 100664320, ptr %44, align 2
  %call.i.i1225 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %data.i1224, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1225)
  %cmp.i1226 = icmp slt i32 %call.i.i1225, 0
  br i1 %cmp.i1226, label %do.end.i1228, label %d2l_write.exit.d2l_write.exit1230_crit_edge

d2l_write.exit.d2l_write.exit1230_crit_edge:      ; preds = %d2l_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1230

do.end.i1228:                                     ; preds = %d2l_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1227 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1227, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1225, i32 noundef 316) #9
  br label %d2l_write.exit1230

d2l_write.exit1230:                               ; preds = %do.end.i1228, %d2l_write.exit.d2l_write.exit1230_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1224) #6
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1231) #6
  %49 = getelementptr inbounds [6 x i8], ptr %data.i1231, i32 0, i32 2
  %50 = ptrtoint ptr %data.i1231 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 276, ptr %data.i1231, align 2
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 67108864, ptr %49, align 2
  %call.i.i1232 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %data.i1231, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1232)
  %cmp.i1233 = icmp slt i32 %call.i.i1232, 0
  br i1 %cmp.i1233, label %do.end.i1235, label %d2l_write.exit1230.d2l_write.exit1237_crit_edge

d2l_write.exit1230.d2l_write.exit1237_crit_edge:  ; preds = %d2l_write.exit1230
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1237

do.end.i1235:                                     ; preds = %d2l_write.exit1230
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1234 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1234, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1232, i32 noundef 276) #9
  br label %d2l_write.exit1237

d2l_write.exit1237:                               ; preds = %do.end.i1235, %d2l_write.exit1230.d2l_write.exit1237_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1231) #6
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1238) #6
  %54 = getelementptr inbounds [6 x i8], ptr %data.i1238, i32 0, i32 2
  %55 = ptrtoint ptr %data.i1238 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 356, ptr %data.i1238, align 2
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 50331648, ptr %54, align 2
  %call.i.i1239 = call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef nonnull %data.i1238, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1239)
  %cmp.i1240 = icmp slt i32 %call.i.i1239, 0
  br i1 %cmp.i1240, label %do.end.i1242, label %d2l_write.exit1237.d2l_write.exit1244_crit_edge

d2l_write.exit1237.d2l_write.exit1244_crit_edge:  ; preds = %d2l_write.exit1237
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1244

do.end.i1242:                                     ; preds = %d2l_write.exit1237
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1241 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1241, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1239, i32 noundef 356) #9
  br label %d2l_write.exit1244

d2l_write.exit1244:                               ; preds = %do.end.i1242, %d2l_write.exit1237.d2l_write.exit1244_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1238) #6
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1245) #6
  %59 = getelementptr inbounds [6 x i8], ptr %data.i1245, i32 0, i32 2
  %60 = ptrtoint ptr %data.i1245 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 360, ptr %data.i1245, align 2
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 50331648, ptr %59, align 2
  %call.i.i1246 = call i32 @i2c_transfer_buffer_flags(ptr noundef %58, ptr noundef nonnull %data.i1245, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1246)
  %cmp.i1247 = icmp slt i32 %call.i.i1246, 0
  br i1 %cmp.i1247, label %do.end.i1249, label %d2l_write.exit1244.d2l_write.exit1251_crit_edge

d2l_write.exit1244.d2l_write.exit1251_crit_edge:  ; preds = %d2l_write.exit1244
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1251

do.end.i1249:                                     ; preds = %d2l_write.exit1244
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1248 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1248, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1246, i32 noundef 360) #9
  br label %d2l_write.exit1251

d2l_write.exit1251:                               ; preds = %do.end.i1249, %d2l_write.exit1244.d2l_write.exit1251_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1245) #6
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1252) #6
  %64 = getelementptr inbounds [6 x i8], ptr %data.i1252, i32 0, i32 2
  %65 = ptrtoint ptr %data.i1252 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 364, ptr %data.i1252, align 2
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 50331648, ptr %64, align 2
  %call.i.i1253 = call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef nonnull %data.i1252, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1253)
  %cmp.i1254 = icmp slt i32 %call.i.i1253, 0
  br i1 %cmp.i1254, label %do.end.i1256, label %d2l_write.exit1251.d2l_write.exit1258_crit_edge

d2l_write.exit1251.d2l_write.exit1258_crit_edge:  ; preds = %d2l_write.exit1251
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1258

do.end.i1256:                                     ; preds = %d2l_write.exit1251
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1255 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1255, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1253, i32 noundef 364) #9
  br label %d2l_write.exit1258

d2l_write.exit1258:                               ; preds = %do.end.i1256, %d2l_write.exit1251.d2l_write.exit1258_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1252) #6
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1259) #6
  %69 = getelementptr inbounds [6 x i8], ptr %data.i1259, i32 0, i32 2
  %70 = ptrtoint ptr %data.i1259 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 368, ptr %data.i1259, align 2
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 50331648, ptr %69, align 2
  %call.i.i1260 = call i32 @i2c_transfer_buffer_flags(ptr noundef %68, ptr noundef nonnull %data.i1259, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1260)
  %cmp.i1261 = icmp slt i32 %call.i.i1260, 0
  br i1 %cmp.i1261, label %do.end.i1263, label %d2l_write.exit1258.d2l_write.exit1265_crit_edge

d2l_write.exit1258.d2l_write.exit1265_crit_edge:  ; preds = %d2l_write.exit1258
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1265

do.end.i1263:                                     ; preds = %d2l_write.exit1258
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1262 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1262, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1260, i32 noundef 368) #9
  br label %d2l_write.exit1265

d2l_write.exit1265:                               ; preds = %do.end.i1263, %d2l_write.exit1258.d2l_write.exit1265_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1259) #6
  %num_dsi_lanes = getelementptr i8, ptr %bridge, i32 292
  %72 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_dsi_lanes, align 4
  %conv41 = zext i8 %73 to i32
  %shl42 = shl i32 2, %conv41
  %or = add i32 %shl42, -1
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or, ptr %val, align 4
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1266) #6
  %77 = getelementptr inbounds [6 x i8], ptr %data.i1266, i32 0, i32 2
  %78 = ptrtoint ptr %data.i1266 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 308, ptr %data.i1266, align 2
  %79 = call i32 @llvm.bswap.i32(i32 %or) #6
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %77, align 2
  %call.i.i1267 = call i32 @i2c_transfer_buffer_flags(ptr noundef %76, ptr noundef nonnull %data.i1266, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1267)
  %cmp.i1268 = icmp slt i32 %call.i.i1267, 0
  br i1 %cmp.i1268, label %do.end.i1270, label %d2l_write.exit1265.d2l_write.exit1272_crit_edge

d2l_write.exit1265.d2l_write.exit1272_crit_edge:  ; preds = %d2l_write.exit1265
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1272

do.end.i1270:                                     ; preds = %d2l_write.exit1265
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1269 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1269, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1267, i32 noundef 308) #9
  br label %d2l_write.exit1272

d2l_write.exit1272:                               ; preds = %do.end.i1270, %d2l_write.exit1265.d2l_write.exit1272_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1266) #6
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 4
  %83 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1273) #6
  %85 = getelementptr inbounds [6 x i8], ptr %data.i1273, i32 0, i32 2
  %86 = ptrtoint ptr %data.i1273 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 528, ptr %data.i1273, align 2
  %87 = call i32 @llvm.bswap.i32(i32 %84) #6
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %85, align 2
  %call.i.i1274 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %data.i1273, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1274)
  %cmp.i1275 = icmp slt i32 %call.i.i1274, 0
  br i1 %cmp.i1275, label %do.end.i1277, label %d2l_write.exit1272.d2l_write.exit1279_crit_edge

d2l_write.exit1272.d2l_write.exit1279_crit_edge:  ; preds = %d2l_write.exit1272
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1279

do.end.i1277:                                     ; preds = %d2l_write.exit1272
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1276 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1276, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1274, i32 noundef 528) #9
  br label %d2l_write.exit1279

d2l_write.exit1279:                               ; preds = %do.end.i1277, %d2l_write.exit1272.d2l_write.exit1279_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1273) #6
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1280) #6
  %91 = getelementptr inbounds [6 x i8], ptr %data.i1280, i32 0, i32 2
  %92 = ptrtoint ptr %data.i1280 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 260, ptr %data.i1280, align 2
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 16777216, ptr %91, align 2
  %call.i.i1281 = call i32 @i2c_transfer_buffer_flags(ptr noundef %90, ptr noundef nonnull %data.i1280, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1281)
  %cmp.i1282 = icmp slt i32 %call.i.i1281, 0
  br i1 %cmp.i1282, label %do.end.i1284, label %d2l_write.exit1279.d2l_write.exit1286_crit_edge

d2l_write.exit1279.d2l_write.exit1286_crit_edge:  ; preds = %d2l_write.exit1279
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1286

do.end.i1284:                                     ; preds = %d2l_write.exit1279
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1283 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1283, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1281, i32 noundef 260) #9
  br label %d2l_write.exit1286

d2l_write.exit1286:                               ; preds = %do.end.i1284, %d2l_write.exit1279.d2l_write.exit1286_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1280) #6
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1287) #6
  %96 = getelementptr inbounds [6 x i8], ptr %data.i1287, i32 0, i32 2
  %97 = ptrtoint ptr %data.i1287 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 516, ptr %data.i1287, align 2
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 16777216, ptr %96, align 2
  %call.i.i1288 = call i32 @i2c_transfer_buffer_flags(ptr noundef %95, ptr noundef nonnull %data.i1287, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1288)
  %cmp.i1289 = icmp slt i32 %call.i.i1288, 0
  br i1 %cmp.i1289, label %do.end.i1291, label %d2l_write.exit1286.d2l_write.exit1293_crit_edge

d2l_write.exit1286.d2l_write.exit1293_crit_edge:  ; preds = %d2l_write.exit1286
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1293

do.end.i1291:                                     ; preds = %d2l_write.exit1286
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1290 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1290, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1288, i32 noundef 516) #9
  br label %d2l_write.exit1293

d2l_write.exit1293:                               ; preds = %do.end.i1291, %d2l_write.exit1286.d2l_write.exit1293_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1287) #6
  %bpc = getelementptr i8, ptr %bridge, i32 313
  %99 = ptrtoint ptr %bpc to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bpc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %100)
  %cmp = icmp eq i8 %100, 8
  %spec.select = select i1 %cmp, i32 256, i32 1
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 12
  %101 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %crtc_clock, align 4
  %conv53 = zext i8 %100 to i32
  %mul = mul nuw nsw i32 %conv53, 3
  %mul54 = mul i32 %mul, %102
  %103 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_dsi_lanes, align 4
  %conv56 = zext i8 %104 to i32
  %div = sdiv i32 %mul54, %conv56
  %div57 = sdiv i32 %div, 1000
  %div60.lhs.trunc = trunc i32 %div57 to i16
  %div601463 = udiv i16 %div60.lhs.trunc, 3
  %div60.zext = zext i16 %div601463 to i32
  %lvds_link = getelementptr i8, ptr %bridge, i32 312
  %105 = ptrtoint ptr %lvds_link to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %lvds_link, align 4
  %conv61 = zext i8 %106 to i32
  %mul62 = mul nuw nsw i32 %div60.zext, %conv61
  %conv59 = lshr i32 %div57, 2
  %div651216 = and i32 %conv59, 16383
  %div701217 = lshr i32 %mul, 3
  %mul71 = mul nuw nsw i32 %div701217, %conv19
  %div74 = udiv i32 %mul71, %conv56
  %conv76 = and i32 %mul62, 65535
  %div77 = udiv i32 100000, %conv76
  %mul81 = mul i32 %div77, %conv
  %div82 = udiv i32 %mul81, 1000
  %conv84 = and i32 %div82, 65535
  %mul86 = mul nuw nsw i32 %conv84, %div651216
  %div87 = udiv i32 %mul86, 100
  %sub96 = sub nsw i32 %div87, %div74
  %conv99 = and i32 %div74, 65535
  %conv100 = and i32 %sub96, 65535
  %add101 = add nuw nsw i32 %conv100, %conv99
  %mul102 = mul i32 %add101, %conv76
  %div104 = sdiv i32 %mul102, %div651216
  %107 = add nsw i32 %sub7, %sub
  %108 = add nsw i32 %107, %conv19
  %sub107 = sub i32 %div104, %108
  %shl.i = shl i32 %sub107, 20
  %and.i = and i32 %shl.i, 1072693248
  %or111 = or i32 %and.i, %spec.select
  %109 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or111, ptr %val, align 4
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1294) #6
  %112 = getelementptr inbounds [6 x i8], ptr %data.i1294, i32 0, i32 2
  %113 = ptrtoint ptr %data.i1294 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1104, ptr %data.i1294, align 2
  %114 = call i32 @llvm.bswap.i32(i32 %or111) #6
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %114, ptr %112, align 2
  %call.i.i1295 = call i32 @i2c_transfer_buffer_flags(ptr noundef %111, ptr noundef nonnull %data.i1294, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1295)
  %cmp.i1296 = icmp slt i32 %call.i.i1295, 0
  br i1 %cmp.i1296, label %do.end.i1298, label %d2l_write.exit1293.d2l_write.exit1300_crit_edge

d2l_write.exit1293.d2l_write.exit1300_crit_edge:  ; preds = %d2l_write.exit1293
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1300

do.end.i1298:                                     ; preds = %d2l_write.exit1293
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1297 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1297, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1295, i32 noundef 1104) #9
  br label %d2l_write.exit1300

d2l_write.exit1300:                               ; preds = %do.end.i1298, %d2l_write.exit1293.d2l_write.exit1300_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1294) #6
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1301) #6
  %118 = getelementptr inbounds [6 x i8], ptr %data.i1301, i32 0, i32 2
  %119 = ptrtoint ptr %data.i1301 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1108, ptr %data.i1301, align 2
  %120 = call i32 @llvm.bswap.i32(i32 %add) #6
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %118, align 2
  %call.i.i1302 = call i32 @i2c_transfer_buffer_flags(ptr noundef %117, ptr noundef nonnull %data.i1301, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1302)
  %cmp.i1303 = icmp slt i32 %call.i.i1302, 0
  br i1 %cmp.i1303, label %do.end.i1305, label %d2l_write.exit1300.d2l_write.exit1307_crit_edge

d2l_write.exit1300.d2l_write.exit1307_crit_edge:  ; preds = %d2l_write.exit1300
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1307

do.end.i1305:                                     ; preds = %d2l_write.exit1300
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1304 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1304, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1302, i32 noundef 1108) #9
  br label %d2l_write.exit1307

d2l_write.exit1307:                               ; preds = %do.end.i1305, %d2l_write.exit1300.d2l_write.exit1307_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1301) #6
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1308) #6
  %124 = getelementptr inbounds [6 x i8], ptr %data.i1308, i32 0, i32 2
  %125 = ptrtoint ptr %data.i1308 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1116, ptr %data.i1308, align 2
  %126 = call i32 @llvm.bswap.i32(i32 %add16) #6
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %126, ptr %124, align 2
  %call.i.i1309 = call i32 @i2c_transfer_buffer_flags(ptr noundef %123, ptr noundef nonnull %data.i1308, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1309)
  %cmp.i1310 = icmp slt i32 %call.i.i1309, 0
  br i1 %cmp.i1310, label %do.end.i1312, label %d2l_write.exit1307.d2l_write.exit1314_crit_edge

d2l_write.exit1307.d2l_write.exit1314_crit_edge:  ; preds = %d2l_write.exit1307
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1314

do.end.i1312:                                     ; preds = %d2l_write.exit1307
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1311 = getelementptr inbounds %struct.i2c_client, ptr %123, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1311, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1309, i32 noundef 1116) #9
  br label %d2l_write.exit1314

d2l_write.exit1314:                               ; preds = %do.end.i1312, %d2l_write.exit1307.d2l_write.exit1314_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1308) #6
  %128 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1315) #6
  %130 = getelementptr inbounds [6 x i8], ptr %data.i1315, i32 0, i32 2
  %131 = ptrtoint ptr %data.i1315 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1112, ptr %data.i1315, align 2
  %132 = call i32 @llvm.bswap.i32(i32 %add30) #6
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %130, align 2
  %call.i.i1316 = call i32 @i2c_transfer_buffer_flags(ptr noundef %129, ptr noundef nonnull %data.i1315, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1316)
  %cmp.i1317 = icmp slt i32 %call.i.i1316, 0
  br i1 %cmp.i1317, label %do.end.i1319, label %d2l_write.exit1314.d2l_write.exit1321_crit_edge

d2l_write.exit1314.d2l_write.exit1321_crit_edge:  ; preds = %d2l_write.exit1314
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1321

do.end.i1319:                                     ; preds = %d2l_write.exit1314
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1318 = getelementptr inbounds %struct.i2c_client, ptr %129, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1318, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1316, i32 noundef 1112) #9
  br label %d2l_write.exit1321

d2l_write.exit1321:                               ; preds = %do.end.i1319, %d2l_write.exit1314.d2l_write.exit1321_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1315) #6
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1322) #6
  %136 = getelementptr inbounds [6 x i8], ptr %data.i1322, i32 0, i32 2
  %137 = ptrtoint ptr %data.i1322 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1120, ptr %data.i1322, align 2
  %138 = call i32 @llvm.bswap.i32(i32 %add32) #6
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %138, ptr %136, align 2
  %call.i.i1323 = call i32 @i2c_transfer_buffer_flags(ptr noundef %135, ptr noundef nonnull %data.i1322, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1323)
  %cmp.i1324 = icmp slt i32 %call.i.i1323, 0
  br i1 %cmp.i1324, label %do.end.i1326, label %d2l_write.exit1321.d2l_write.exit1328_crit_edge

d2l_write.exit1321.d2l_write.exit1328_crit_edge:  ; preds = %d2l_write.exit1321
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1328

do.end.i1326:                                     ; preds = %d2l_write.exit1321
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1325 = getelementptr inbounds %struct.i2c_client, ptr %135, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1325, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1323, i32 noundef 1120) #9
  br label %d2l_write.exit1328

d2l_write.exit1328:                               ; preds = %do.end.i1326, %d2l_write.exit1321.d2l_write.exit1328_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1322) #6
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1329) #6
  %142 = getelementptr inbounds [6 x i8], ptr %data.i1329, i32 0, i32 2
  %143 = ptrtoint ptr %data.i1329 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1124, ptr %data.i1329, align 2
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 16777216, ptr %142, align 2
  %call.i.i1330 = call i32 @i2c_transfer_buffer_flags(ptr noundef %141, ptr noundef nonnull %data.i1329, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1330)
  %cmp.i1331 = icmp slt i32 %call.i.i1330, 0
  br i1 %cmp.i1331, label %do.end.i1333, label %d2l_write.exit1328.d2l_write.exit1335_crit_edge

d2l_write.exit1328.d2l_write.exit1335_crit_edge:  ; preds = %d2l_write.exit1328
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1335

do.end.i1333:                                     ; preds = %d2l_write.exit1328
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1332 = getelementptr inbounds %struct.i2c_client, ptr %141, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1332, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1330, i32 noundef 1124) #9
  br label %d2l_write.exit1335

d2l_write.exit1335:                               ; preds = %do.end.i1333, %d2l_write.exit1328.d2l_write.exit1335_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1329) #6
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1336) #6
  %147 = getelementptr inbounds [6 x i8], ptr %data.i1336, i32 0, i32 2
  %148 = ptrtoint ptr %data.i1336 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1284, ptr %data.i1336, align 2
  %149 = ptrtoint ptr %147 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 67108864, ptr %147, align 2
  %call.i.i1337 = call i32 @i2c_transfer_buffer_flags(ptr noundef %146, ptr noundef nonnull %data.i1336, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1337)
  %cmp.i1338 = icmp slt i32 %call.i.i1337, 0
  br i1 %cmp.i1338, label %do.end.i1340, label %d2l_write.exit1335.d2l_write.exit1342_crit_edge

d2l_write.exit1335.d2l_write.exit1342_crit_edge:  ; preds = %d2l_write.exit1335
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1342

do.end.i1340:                                     ; preds = %d2l_write.exit1335
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1339 = getelementptr inbounds %struct.i2c_client, ptr %146, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1339, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1337, i32 noundef 1284) #9
  br label %d2l_write.exit1342

d2l_write.exit1342:                               ; preds = %do.end.i1340, %d2l_write.exit1335.d2l_write.exit1342_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1336) #6
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1343) #6
  %152 = getelementptr inbounds [6 x i8], ptr %data.i1343, i32 0, i32 2
  %153 = ptrtoint ptr %data.i1343 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 1184, ptr %data.i1343, align 2
  %154 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 100664320, ptr %152, align 2
  %call.i.i1344 = call i32 @i2c_transfer_buffer_flags(ptr noundef %151, ptr noundef nonnull %data.i1343, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1344)
  %cmp.i1345 = icmp slt i32 %call.i.i1344, 0
  br i1 %cmp.i1345, label %do.end.i1347, label %d2l_write.exit1342.d2l_write.exit1349_crit_edge

d2l_write.exit1342.d2l_write.exit1349_crit_edge:  ; preds = %d2l_write.exit1342
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1349

do.end.i1347:                                     ; preds = %d2l_write.exit1342
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1346 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1346, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1344, i32 noundef 1184) #9
  br label %d2l_write.exit1349

d2l_write.exit1349:                               ; preds = %do.end.i1347, %d2l_write.exit1342.d2l_write.exit1349_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1343) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_bridge_enable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_bridge_enable, %if.then157)) #6
          to label %do.end163 [label %if.then157], !srcloc !130

if.then157:                                       ; preds = %d2l_write.exit1349
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev, align 4
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i1219, i32 0, i32 20, i32 6
  %157 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus_formats, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %161 = ptrtoint ptr %bpc to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bpc, align 1
  %conv160 = zext i8 %162 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_bridge_enable.__UNIQUE_ID_ddebug318, ptr noundef %156, ptr noundef nonnull @.str.40, i32 noundef %160, i32 noundef %conv160) #6
  br label %do.end163

do.end163:                                        ; preds = %if.then157, %d2l_write.exit1349
  %bus_formats165 = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i1219, i32 0, i32 20, i32 6
  %163 = ptrtoint ptr %bus_formats165 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus_formats165, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4113, i32 %166)
  %cmp167 = icmp eq i32 %166, 4113
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i, align 4
  br i1 %cmp167, label %if.then169, label %if.else646

if.then169:                                       ; preds = %do.end163
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1350) #6
  %169 = getelementptr inbounds [6 x i8], ptr %data.i1350, i32 0, i32 2
  %170 = ptrtoint ptr %data.i1350 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 1152, ptr %data.i1350, align 2
  %171 = ptrtoint ptr %169 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 66051, ptr %169, align 2
  %call.i.i1351 = call i32 @i2c_transfer_buffer_flags(ptr noundef %168, ptr noundef nonnull %data.i1350, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1351)
  %cmp.i1352 = icmp slt i32 %call.i.i1351, 0
  br i1 %cmp.i1352, label %do.end.i1354, label %if.then169.d2l_write.exit1356_crit_edge

if.then169.d2l_write.exit1356_crit_edge:          ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1356

do.end.i1354:                                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1353 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1353, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1351, i32 noundef 1152) #9
  br label %d2l_write.exit1356

d2l_write.exit1356:                               ; preds = %do.end.i1354, %if.then169.d2l_write.exit1356_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1350) #6
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1357) #6
  %174 = getelementptr inbounds [6 x i8], ptr %data.i1357, i32 0, i32 2
  %175 = ptrtoint ptr %data.i1357 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1156, ptr %data.i1357, align 2
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 67568904, ptr %174, align 2
  %call.i.i1358 = call i32 @i2c_transfer_buffer_flags(ptr noundef %173, ptr noundef nonnull %data.i1357, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1358)
  %cmp.i1359 = icmp slt i32 %call.i.i1358, 0
  br i1 %cmp.i1359, label %do.end.i1361, label %d2l_write.exit1356.d2l_write.exit1363_crit_edge

d2l_write.exit1356.d2l_write.exit1363_crit_edge:  ; preds = %d2l_write.exit1356
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1363

do.end.i1361:                                     ; preds = %d2l_write.exit1356
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1360 = getelementptr inbounds %struct.i2c_client, ptr %173, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1360, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1358, i32 noundef 1156) #9
  br label %d2l_write.exit1363

d2l_write.exit1363:                               ; preds = %do.end.i1361, %d2l_write.exit1356.d2l_write.exit1363_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1357) #6
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1364) #6
  %179 = getelementptr inbounds [6 x i8], ptr %data.i1364, i32 0, i32 2
  %180 = ptrtoint ptr %data.i1364 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 1160, ptr %data.i1364, align 2
  %181 = ptrtoint ptr %179 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 151653903, ptr %179, align 2
  %call.i.i1365 = call i32 @i2c_transfer_buffer_flags(ptr noundef %178, ptr noundef nonnull %data.i1364, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1365)
  %cmp.i1366 = icmp slt i32 %call.i.i1365, 0
  br i1 %cmp.i1366, label %do.end.i1368, label %d2l_write.exit1363.d2l_write.exit1370_crit_edge

d2l_write.exit1363.d2l_write.exit1370_crit_edge:  ; preds = %d2l_write.exit1363
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1370

do.end.i1368:                                     ; preds = %d2l_write.exit1363
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1367 = getelementptr inbounds %struct.i2c_client, ptr %178, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1367, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1365, i32 noundef 1160) #9
  br label %d2l_write.exit1370

d2l_write.exit1370:                               ; preds = %do.end.i1368, %d2l_write.exit1363.d2l_write.exit1370_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1364) #6
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1371) #6
  %184 = getelementptr inbounds [6 x i8], ptr %data.i1371, i32 0, i32 2
  %185 = ptrtoint ptr %data.i1371 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 1164, ptr %data.i1371, align 2
  %186 = ptrtoint ptr %184 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 185339152, ptr %184, align 2
  %call.i.i1372 = call i32 @i2c_transfer_buffer_flags(ptr noundef %183, ptr noundef nonnull %data.i1371, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1372)
  %cmp.i1373 = icmp slt i32 %call.i.i1372, 0
  br i1 %cmp.i1373, label %do.end.i1375, label %d2l_write.exit1370.d2l_write.exit1377_crit_edge

d2l_write.exit1370.d2l_write.exit1377_crit_edge:  ; preds = %d2l_write.exit1370
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1377

do.end.i1375:                                     ; preds = %d2l_write.exit1370
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1374 = getelementptr inbounds %struct.i2c_client, ptr %183, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1374, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1372, i32 noundef 1164) #9
  br label %d2l_write.exit1377

d2l_write.exit1377:                               ; preds = %do.end.i1375, %d2l_write.exit1370.d2l_write.exit1377_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1371) #6
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1378) #6
  %189 = getelementptr inbounds [6 x i8], ptr %data.i1378, i32 0, i32 2
  %190 = ptrtoint ptr %data.i1378 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 1168, ptr %data.i1378, align 2
  %191 = ptrtoint ptr %189 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 370610450, ptr %189, align 2
  %call.i.i1379 = call i32 @i2c_transfer_buffer_flags(ptr noundef %188, ptr noundef nonnull %data.i1378, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1379)
  %cmp.i1380 = icmp slt i32 %call.i.i1379, 0
  br i1 %cmp.i1380, label %do.end.i1382, label %d2l_write.exit1377.d2l_write.exit1384_crit_edge

d2l_write.exit1377.d2l_write.exit1384_crit_edge:  ; preds = %d2l_write.exit1377
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1384

do.end.i1382:                                     ; preds = %d2l_write.exit1377
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1381 = getelementptr inbounds %struct.i2c_client, ptr %188, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1381, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1379, i32 noundef 1168) #9
  br label %d2l_write.exit1384

d2l_write.exit1384:                               ; preds = %do.end.i1382, %d2l_write.exit1377.d2l_write.exit1384_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1378) #6
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1385) #6
  %194 = getelementptr inbounds [6 x i8], ptr %data.i1385, i32 0, i32 2
  %195 = ptrtoint ptr %data.i1385 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 1172, ptr %data.i1385, align 2
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 320083227, ptr %194, align 2
  %call.i.i1386 = call i32 @i2c_transfer_buffer_flags(ptr noundef %193, ptr noundef nonnull %data.i1385, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1386)
  %cmp.i1387 = icmp slt i32 %call.i.i1386, 0
  br i1 %cmp.i1387, label %do.end.i1389, label %d2l_write.exit1384.d2l_write.exit1391_crit_edge

d2l_write.exit1384.d2l_write.exit1391_crit_edge:  ; preds = %d2l_write.exit1384
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1391

do.end.i1389:                                     ; preds = %d2l_write.exit1384
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1388 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1388, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1386, i32 noundef 1172) #9
  br label %d2l_write.exit1391

d2l_write.exit1391:                               ; preds = %do.end.i1389, %d2l_write.exit1384.d2l_write.exit1391_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1385) #6
  %197 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1392) #6
  %199 = getelementptr inbounds [6 x i8], ptr %data.i1392, i32 0, i32 2
  %200 = ptrtoint ptr %data.i1392 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 1176, ptr %data.i1392, align 2
  %201 = ptrtoint ptr %199 to i32
  call void @__asan_storeN_noabort(i32 %201, i32 4)
  store i32 404298246, ptr %199, align 2
  %call.i.i1393 = call i32 @i2c_transfer_buffer_flags(ptr noundef %198, ptr noundef nonnull %data.i1392, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1393)
  %cmp.i1394 = icmp slt i32 %call.i.i1393, 0
  br i1 %cmp.i1394, label %do.end.i1396, label %d2l_write.exit1391.d2l_write.exit1398_crit_edge

d2l_write.exit1391.d2l_write.exit1398_crit_edge:  ; preds = %d2l_write.exit1391
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1398

do.end.i1396:                                     ; preds = %d2l_write.exit1391
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1395 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1395, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1393, i32 noundef 1176) #9
  br label %d2l_write.exit1398

d2l_write.exit1398:                               ; preds = %do.end.i1396, %d2l_write.exit1391.d2l_write.exit1398_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1392) #6
  br label %if.end1123

if.else646:                                       ; preds = %do.end163
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1399) #6
  %202 = getelementptr inbounds [6 x i8], ptr %data.i1399, i32 0, i32 2
  %203 = ptrtoint ptr %data.i1399 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 1152, ptr %data.i1399, align 2
  %204 = ptrtoint ptr %202 to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 66051, ptr %202, align 2
  %call.i.i1400 = call i32 @i2c_transfer_buffer_flags(ptr noundef %168, ptr noundef nonnull %data.i1399, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1400)
  %cmp.i1401 = icmp slt i32 %call.i.i1400, 0
  br i1 %cmp.i1401, label %do.end.i1403, label %if.else646.d2l_write.exit1405_crit_edge

if.else646.d2l_write.exit1405_crit_edge:          ; preds = %if.else646
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1405

do.end.i1403:                                     ; preds = %if.else646
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1402 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1402, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1400, i32 noundef 1152) #9
  br label %d2l_write.exit1405

d2l_write.exit1405:                               ; preds = %do.end.i1403, %if.else646.d2l_write.exit1405_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1399) #6
  %205 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1406) #6
  %207 = getelementptr inbounds [6 x i8], ptr %data.i1406, i32 0, i32 2
  %208 = ptrtoint ptr %data.i1406 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 1156, ptr %data.i1406, align 2
  %209 = ptrtoint ptr %207 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 68879624, ptr %207, align 2
  %call.i.i1407 = call i32 @i2c_transfer_buffer_flags(ptr noundef %206, ptr noundef nonnull %data.i1406, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1407)
  %cmp.i1408 = icmp slt i32 %call.i.i1407, 0
  br i1 %cmp.i1408, label %do.end.i1410, label %d2l_write.exit1405.d2l_write.exit1412_crit_edge

d2l_write.exit1405.d2l_write.exit1412_crit_edge:  ; preds = %d2l_write.exit1405
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1412

do.end.i1410:                                     ; preds = %d2l_write.exit1405
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1409 = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1409, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1407, i32 noundef 1156) #9
  br label %d2l_write.exit1412

d2l_write.exit1412:                               ; preds = %do.end.i1410, %d2l_write.exit1405.d2l_write.exit1412_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1406) #6
  %210 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1413) #6
  %212 = getelementptr inbounds [6 x i8], ptr %data.i1413, i32 0, i32 2
  %213 = ptrtoint ptr %data.i1413 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 1160, ptr %data.i1413, align 2
  %214 = ptrtoint ptr %212 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 151657243, ptr %212, align 2
  %call.i.i1414 = call i32 @i2c_transfer_buffer_flags(ptr noundef %211, ptr noundef nonnull %data.i1413, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1414)
  %cmp.i1415 = icmp slt i32 %call.i.i1414, 0
  br i1 %cmp.i1415, label %do.end.i1417, label %d2l_write.exit1412.d2l_write.exit1419_crit_edge

d2l_write.exit1412.d2l_write.exit1419_crit_edge:  ; preds = %d2l_write.exit1412
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1419

do.end.i1417:                                     ; preds = %d2l_write.exit1412
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1416 = getelementptr inbounds %struct.i2c_client, ptr %211, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1416, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1414, i32 noundef 1160) #9
  br label %d2l_write.exit1419

d2l_write.exit1419:                               ; preds = %do.end.i1417, %d2l_write.exit1412.d2l_write.exit1419_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1413) #6
  %215 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1420) #6
  %217 = getelementptr inbounds [6 x i8], ptr %data.i1420, i32 0, i32 2
  %218 = ptrtoint ptr %data.i1420 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 1164, ptr %data.i1420, align 2
  %219 = ptrtoint ptr %217 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 185339152, ptr %217, align 2
  %call.i.i1421 = call i32 @i2c_transfer_buffer_flags(ptr noundef %216, ptr noundef nonnull %data.i1420, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1421)
  %cmp.i1422 = icmp slt i32 %call.i.i1421, 0
  br i1 %cmp.i1422, label %do.end.i1424, label %d2l_write.exit1419.d2l_write.exit1426_crit_edge

d2l_write.exit1419.d2l_write.exit1426_crit_edge:  ; preds = %d2l_write.exit1419
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1426

do.end.i1424:                                     ; preds = %d2l_write.exit1419
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1423 = getelementptr inbounds %struct.i2c_client, ptr %216, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1423, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1421, i32 noundef 1164) #9
  br label %d2l_write.exit1426

d2l_write.exit1426:                               ; preds = %do.end.i1424, %d2l_write.exit1419.d2l_write.exit1426_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1420) #6
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1427) #6
  %222 = getelementptr inbounds [6 x i8], ptr %data.i1427, i32 0, i32 2
  %223 = ptrtoint ptr %data.i1427 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 1168, ptr %data.i1427, align 2
  %224 = ptrtoint ptr %222 to i32
  call void @__asan_storeN_noabort(i32 %224, i32 4)
  store i32 454758674, ptr %222, align 2
  %call.i.i1428 = call i32 @i2c_transfer_buffer_flags(ptr noundef %221, ptr noundef nonnull %data.i1427, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1428)
  %cmp.i1429 = icmp slt i32 %call.i.i1428, 0
  br i1 %cmp.i1429, label %do.end.i1431, label %d2l_write.exit1426.d2l_write.exit1433_crit_edge

d2l_write.exit1426.d2l_write.exit1433_crit_edge:  ; preds = %d2l_write.exit1426
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1433

do.end.i1431:                                     ; preds = %d2l_write.exit1426
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1430 = getelementptr inbounds %struct.i2c_client, ptr %221, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1430, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1428, i32 noundef 1168) #9
  br label %d2l_write.exit1433

d2l_write.exit1433:                               ; preds = %do.end.i1431, %d2l_write.exit1426.d2l_write.exit1433_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1427) #6
  %225 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1434) #6
  %227 = getelementptr inbounds [6 x i8], ptr %data.i1434, i32 0, i32 2
  %228 = ptrtoint ptr %data.i1434 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1172, ptr %data.i1434, align 2
  %229 = ptrtoint ptr %227 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 4)
  store i32 320083227, ptr %227, align 2
  %call.i.i1435 = call i32 @i2c_transfer_buffer_flags(ptr noundef %226, ptr noundef nonnull %data.i1434, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1435)
  %cmp.i1436 = icmp slt i32 %call.i.i1435, 0
  br i1 %cmp.i1436, label %do.end.i1438, label %d2l_write.exit1433.d2l_write.exit1440_crit_edge

d2l_write.exit1433.d2l_write.exit1440_crit_edge:  ; preds = %d2l_write.exit1433
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1440

do.end.i1438:                                     ; preds = %d2l_write.exit1433
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1437 = getelementptr inbounds %struct.i2c_client, ptr %226, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1437, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1435, i32 noundef 1172) #9
  br label %d2l_write.exit1440

d2l_write.exit1440:                               ; preds = %do.end.i1438, %d2l_write.exit1433.d2l_write.exit1440_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1434) #6
  %230 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1441) #6
  %232 = getelementptr inbounds [6 x i8], ptr %data.i1441, i32 0, i32 2
  %233 = ptrtoint ptr %data.i1441 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 1176, ptr %data.i1441, align 2
  %234 = ptrtoint ptr %232 to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 404298267, ptr %232, align 2
  %call.i.i1442 = call i32 @i2c_transfer_buffer_flags(ptr noundef %231, ptr noundef nonnull %data.i1441, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1442)
  %cmp.i1443 = icmp slt i32 %call.i.i1442, 0
  br i1 %cmp.i1443, label %do.end.i1445, label %d2l_write.exit1440.d2l_write.exit1447_crit_edge

d2l_write.exit1440.d2l_write.exit1447_crit_edge:  ; preds = %d2l_write.exit1440
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1447

do.end.i1445:                                     ; preds = %d2l_write.exit1440
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1444 = getelementptr inbounds %struct.i2c_client, ptr %231, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1444, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1442, i32 noundef 1176) #9
  br label %d2l_write.exit1447

d2l_write.exit1447:                               ; preds = %do.end.i1445, %d2l_write.exit1440.d2l_write.exit1447_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1441) #6
  br label %if.end1123

if.end1123:                                       ; preds = %d2l_write.exit1447, %d2l_write.exit1398
  %235 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1448) #6
  %237 = getelementptr inbounds [6 x i8], ptr %data.i1448, i32 0, i32 2
  %238 = ptrtoint ptr %data.i1448 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 1124, ptr %data.i1448, align 2
  %239 = ptrtoint ptr %237 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 4)
  store i32 16777216, ptr %237, align 2
  %call.i.i1449 = call i32 @i2c_transfer_buffer_flags(ptr noundef %236, ptr noundef nonnull %data.i1448, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1449)
  %cmp.i1450 = icmp slt i32 %call.i.i1449, 0
  br i1 %cmp.i1450, label %do.end.i1452, label %if.end1123.d2l_write.exit1454_crit_edge

if.end1123.d2l_write.exit1454_crit_edge:          ; preds = %if.end1123
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1454

do.end.i1452:                                     ; preds = %if.end1123
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1451 = getelementptr inbounds %struct.i2c_client, ptr %236, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1451, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1449, i32 noundef 1124) #9
  br label %d2l_write.exit1454

d2l_write.exit1454:                               ; preds = %do.end.i1452, %if.end1123.d2l_write.exit1454_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1448) #6
  %240 = ptrtoint ptr %lvds_link to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %lvds_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %241)
  %cmp1127 = icmp eq i8 %241, 2
  %spec.select1464 = select i1 %cmp1127, i32 97, i32 49
  %242 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %spec.select1464, ptr %val, align 4
  %243 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i1455) #6
  %245 = getelementptr inbounds [6 x i8], ptr %data.i1455, i32 0, i32 2
  %246 = ptrtoint ptr %data.i1455 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 1180, ptr %data.i1455, align 2
  %247 = shl nuw nsw i32 %spec.select1464, 24
  %248 = ptrtoint ptr %245 to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 %247, ptr %245, align 2
  %call.i.i1456 = call i32 @i2c_transfer_buffer_flags(ptr noundef %244, ptr noundef nonnull %data.i1455, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1456)
  %cmp.i1457 = icmp slt i32 %call.i.i1456, 0
  br i1 %cmp.i1457, label %do.end.i1459, label %d2l_write.exit1454.d2l_write.exit1461_crit_edge

d2l_write.exit1454.d2l_write.exit1461_crit_edge:  ; preds = %d2l_write.exit1454
  call void @__sanitizer_cov_trace_pc() #8
  br label %d2l_write.exit1461

do.end.i1459:                                     ; preds = %d2l_write.exit1454
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1458 = getelementptr inbounds %struct.i2c_client, ptr %244, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1458, ptr noundef nonnull @.str.44, i32 noundef %call.i.i1456, i32 noundef 1180) #9
  br label %d2l_write.exit1461

d2l_write.exit1461:                               ; preds = %do.end.i1459, %d2l_write.exit1454.d2l_write.exit1461_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i1455) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_tc358775__601_753_tc358775_driver_init6, !1, !"__initcall__kmod_tc358775__601_753_tc358775_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 753, i32 1}
!2 = !{ptr @__exitcall_tc358775_driver_exit, !1, !"__exitcall_tc358775_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author602, !4, !"__UNIQUE_ID_author602", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 755, i32 1}
!5 = !{ptr @__UNIQUE_ID_description603, !6, !"__UNIQUE_ID_description603", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 756, i32 1}
!7 = !{ptr @__UNIQUE_ID_file604, !8, !"__UNIQUE_ID_file604", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 757, i32 1}
!9 = !{ptr @__UNIQUE_ID_license605, !8, !"__UNIQUE_ID_license605", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 746, i32 11}
!12 = !{ptr @tc358775_driver, !13, !"tc358775_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 744, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 678, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 681, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 685, i32 36}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 688, i32 3}
!28 = !{ptr @tc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 692, i32 38}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 695, i32 3}
!34 = !{ptr @tc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 699, i32 39}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 702, i32 3}
!40 = !{ptr @tc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 550, i32 39}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 554, i32 6}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tc358775_parse_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tc358775_parse_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 587, i32 2}
!51 = !{ptr @tc358775_parse_dt.__UNIQUE_ID_ddebug599, !50, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 588, i32 2}
!54 = !{ptr @tc358775_parse_dt.__UNIQUE_ID_ddebug600, !53, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!55 = !{ptr @tc_bridge_funcs, !56, !"tc_bridge_funcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 603, i32 38}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 518, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tc_mode_valid._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @tc_mode_valid._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 318, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tc_bridge_post_disable._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tc_bridge_post_disable._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 323, i32 3}
!70 = !{ptr @tc_bridge_post_disable._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tc_bridge_post_disable._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 289, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tc_bridge_pre_enable._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tc_bridge_pre_enable._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 294, i32 3}
!79 = !{ptr @tc_bridge_pre_enable._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tc_bridge_pre_enable._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 405, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tc_bridge_enable._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @tc_bridge_enable._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 453, i32 2}
!89 = !{ptr @tc_bridge_enable.__UNIQUE_ID_ddebug318, !88, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 341, i32 2}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @d2l_read.__UNIQUE_ID_ddebug307, !91, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 344, i32 2}
!96 = !{ptr @d2l_read._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @d2l_read._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 358, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @d2l_write._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @d2l_write._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 624, i32 3}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tc_attach_host._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @tc_attach_host._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 630, i32 3}
!110 = !{ptr @tc_attach_host._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tc_attach_host._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 642, i32 3}
!114 = !{ptr @tc_attach_host._entry.51, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tc_attach_host._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @tc358775_of_ids, !117, !"tc358775_of_ids", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 738, i32 34}
!118 = !{ptr @tc358775_i2c_ids, !119, !"tc358775_i2c_ids", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/tc358775.c", i32 732, i32 35}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i64 2148773777, i64 2148773782, i64 2148773795, i64 2148773839, i64 2148773873, i64 2148773894}
