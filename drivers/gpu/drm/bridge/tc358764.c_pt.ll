; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/tc358764.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358764.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.tc358764 = type { ptr, %struct.drm_bridge, %struct.drm_connector, [3 x %struct.regulator_bulk_data], ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@__initcall__kmod_tc358764__308_500_tc358764_driver_init6 = internal global ptr @tc358764_driver_init, section ".initcall6.init", align 4
@tc358764_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358764_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358764_probe, ptr @tc358764_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_tc358764_driver_exit = internal global ptr @tc358764_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [52 x i8] c"tc358764.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [53 x i8] c"tc358764.author=Maciej Purski <m.purski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [72 x i8] c"tc358764.description=MIPI-DSI based Driver for TC358764 DSI/LVDS Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [46 x i8] c"tc358764.file=drivers/gpu/drm/bridge/tc358764\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [24 x i8] c"tc358764.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358764\00", [23 x i8] zeroinitializer }, align 32
@tc358764_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358764\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tc358764_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tc358764_attach, ptr @tc358764_detach, ptr null, ptr null, ptr @tc358764_disable, ptr @tc358764_post_disable, ptr null, ptr @tc358764_pre_enable, ptr @tc358764_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tc358764_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to attach dsi\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc358764_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/tc358764.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc358764_probe._entry_ptr = internal global ptr @tc358764_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tc358764_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no reset GPIO pin provided\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc358764_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@tc358764_parse_dt._entry_ptr = internal global ptr @tc358764_parse_dt._entry, section ".printk_index", align 4
@tc358764_parse_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot find panel (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@tc358764_parse_dt._entry_ptr.11 = internal global ptr @tc358764_parse_dt._entry.9, section ".printk_index", align 4
@tc358764_configure_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tc358764_configure_regulators\00", [34 x i8] zeroinitializer }, align 32
@tc358764_configure_regulators._entry_ptr = internal global ptr @tc358764_configure_regulators._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddc\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddlvds\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@tc358764_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize connector\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358764_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tc358764_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tc358764_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error disabling panel (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc358764_disable\00", [47 x i8] zeroinitializer }, align 32
@tc358764_disable._entry_ptr = internal global ptr @tc358764_disable._entry, section ".printk_index", align 4
@tc358764_post_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error unpreparing panel (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tc358764_post_disable\00", [42 x i8] zeroinitializer }, align 32
@tc358764_post_disable._entry_ptr = internal global ptr @tc358764_post_disable._entry, section ".printk_index", align 4
@tc358764_post_disable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error disabling regulators (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@tc358764_post_disable._entry_ptr.25 = internal global ptr @tc358764_post_disable._entry.23, section ".printk_index", align 4
@tc358764_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error enabling regulators (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc358764_pre_enable\00", [44 x i8] zeroinitializer }, align 32
@tc358764_pre_enable._entry_ptr = internal global ptr @tc358764_pre_enable._entry, section ".printk_index", align 4
@tc358764_pre_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error initializing bridge (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358764_pre_enable._entry_ptr.30 = internal global ptr @tc358764_pre_enable._entry.28, section ".printk_index", align 4
@tc358764_pre_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error preparing panel (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@tc358764_pre_enable._entry_ptr.33 = internal global ptr @tc358764_pre_enable._entry.31, section ".printk_index", align 4
@tc358764_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 226, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ID: %#x\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc358764_init\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tc358764_init._entry_ptr = internal global ptr @tc358764_init._entry, section ".printk_index", align 4
@tc358764_read.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc358764_read\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read: %d, addr: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358764_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error enabling panel (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tc358764_enable\00", [16 x i8] zeroinitializer }, align 32
@tc358764_enable._entry_ptr = internal global ptr @tc358764_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"tc358764_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 491, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 495, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"tc358764_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 485, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"tc358764_bridge_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 391, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 469, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 405, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 407, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 414, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 429, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 150, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 150, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 150, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 360, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"tc358764_connector_funcs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 293, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 369, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [32 x i8] c"tc358764_connector_helper_funcs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 289, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 307, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 317, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 322, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 332, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 337, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 340, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 226, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 184, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/tc358764.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 349, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_tc358764_driver_exit, ptr @__initcall__kmod_tc358764__308_500_tc358764_driver_init6, ptr @tc358764_configure_regulators._entry, ptr @tc358764_configure_regulators._entry_ptr, ptr @tc358764_disable._entry, ptr @tc358764_disable._entry_ptr, ptr @tc358764_driver_exit, ptr @tc358764_enable._entry, ptr @tc358764_enable._entry_ptr, ptr @tc358764_init._entry, ptr @tc358764_init._entry_ptr, ptr @tc358764_parse_dt._entry, ptr @tc358764_parse_dt._entry.9, ptr @tc358764_parse_dt._entry_ptr, ptr @tc358764_parse_dt._entry_ptr.11, ptr @tc358764_post_disable._entry, ptr @tc358764_post_disable._entry.23, ptr @tc358764_post_disable._entry_ptr, ptr @tc358764_post_disable._entry_ptr.25, ptr @tc358764_pre_enable._entry, ptr @tc358764_pre_enable._entry.28, ptr @tc358764_pre_enable._entry.31, ptr @tc358764_pre_enable._entry_ptr, ptr @tc358764_pre_enable._entry_ptr.30, ptr @tc358764_pre_enable._entry_ptr.33, ptr @tc358764_probe._entry, ptr @tc358764_probe._entry_ptr, ptr @tc358764_driver, ptr @.str, ptr @tc358764_of_match, ptr @tc358764_bridge_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @tc358764_connector_funcs, ptr @.str.18, ptr @tc358764_connector_helper_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_parse_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_configure_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_post_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_post_disable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_pre_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_pre_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358764_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358764_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @tc358764_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @tc358764_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358764_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1376, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2059, ptr %mode_flags, align 8
  %call.i41 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 3) #6
  %gpio_reset.i = getelementptr inbounds %struct.tc358764, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i41, ptr %gpio_reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %6 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_reset.i, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %tc358764_parse_dt.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %panel.i = getelementptr inbounds %struct.tc358764, ptr %call.i, i32 0, i32 5
  %call7.i = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %12, i32 noundef 1, i32 noundef 0, ptr noundef %panel.i, ptr noundef null) #6
  %13 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7.i, label %do.end11.i [
    i32 0, label %if.end.i.tc358764_parse_dt.exit_crit_edge
    i32 -517, label %if.end.i.tc358764_parse_dt.exit_crit_edge45
  ]

if.end.i.tc358764_parse_dt.exit_crit_edge45:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_parse_dt.exit

if.end.i.tc358764_parse_dt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_parse_dt.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call7.i) #9
  br label %tc358764_parse_dt.exit

tc358764_parse_dt.exit:                           ; preds = %do.end11.i, %if.end.i.tc358764_parse_dt.exit_crit_edge, %if.end.i.tc358764_parse_dt.exit_crit_edge45, %do.end.i
  %retval.0.i = phi i32 [ %8, %do.end.i ], [ %call7.i, %if.end.i.tc358764_parse_dt.exit_crit_edge ], [ %call7.i, %if.end.i.tc358764_parse_dt.exit_crit_edge45 ], [ %call7.i, %do.end11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %tc358764_parse_dt.exit.cleanup_crit_edge, label %if.end5

tc358764_parse_dt.exit.cleanup_crit_edge:         ; preds = %tc358764_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %tc358764_parse_dt.exit
  %arrayidx1.i = getelementptr %struct.tc358764, ptr %call.i, i32 0, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.14, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.tc358764, ptr %call.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.15, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.tc358764, ptr %call.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.16, ptr %arrayidx1.2.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %call.i42 = tail call i32 @devm_regulator_bulk_get(ptr noundef %18, i32 noundef 3, ptr noundef %arrayidx1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp3.i = icmp slt i32 %call.i42, 0
  br i1 %cmp3.i, label %tc358764_configure_regulators.exit.thread, label %if.end9

tc358764_configure_regulators.exit.thread:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %call.i42) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %bridge = getelementptr inbounds %struct.tc358764, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.tc358764, ptr %call.i, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tc358764_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node11 = getelementptr inbounds %struct.tc358764, ptr %call.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %of_node11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node11, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #6
  %call13 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9.cleanup_crit_edge, %tc358764_configure_regulators.exit.thread, %tc358764_parse_dt.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %tc358764_parse_dt.exit.cleanup_crit_edge ], [ %call13, %if.then15 ], [ %call13, %if.end9.cleanup_crit_edge ], [ %call.i42, %tc358764_configure_regulators.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358764_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  %bridge = getelementptr inbounds %struct.tc358764, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358764_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %connector = getelementptr i8, ptr %bridge, i32 284
  %polled = getelementptr i8, ptr %bridge, i32 984
  %2 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %polled, align 4
  %call2 = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @tc358764_connector_funcs, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr i8, ptr %bridge, i32 992
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tc358764_connector_helper_funcs, ptr %helper_private.i, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %call8 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %5) #6
  %funcs = getelementptr i8, ptr %bridge, i32 636
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 8
  %reset = getelementptr inbounds %struct.drm_connector_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void %9(ptr noundef %connector) #6
  %call12 = tail call i32 @drm_connector_register(ptr noundef %connector) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call2, %if.then4 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %bridge, i32 284
  tail call void @drm_connector_unregister(ptr noundef %connector) #6
  %panel = getelementptr i8, ptr %bridge, i32 1364
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %panel, align 8
  %base.i = getelementptr i8, ptr %bridge, i32 316
  tail call void @drm_mode_object_put(ptr noundef %base.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %bridge, i32 1364
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_post_disable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %panel = getelementptr i8, ptr %bridge, i32 1364
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %gpio_reset.i = getelementptr i8, ptr %bridge, i32 1360
  %4 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %6 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %supplies = getelementptr i8, ptr %bridge, i32 1324
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef %call2) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_pre_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %supplies = getelementptr i8, ptr %bridge, i32 1324
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %gpio_reset.i = getelementptr i8, ptr %bridge, i32 1360
  %2 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %4 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call2 = tail call fastcc i32 @tc358764_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29, i32 noundef %call2) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  %panel = getelementptr i8, ptr %bridge, i32 1364
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 8
  %call10 = tail call i32 @drm_panel_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %call10) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end9.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358764_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %bridge, i32 1364
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %call1 = tail call i32 @drm_panel_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358764_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %connector, i32 1080
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %1, ptr noundef %connector) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358764_init(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %data.i214 = alloca [6 x i8], align 1
  %data.i205 = alloca [6 x i8], align 1
  %data.i196 = alloca [6 x i8], align 1
  %data.i187 = alloca [6 x i8], align 1
  %data.i178 = alloca [6 x i8], align 1
  %data.i169 = alloca [6 x i8], align 1
  %data.i160 = alloca [6 x i8], align 1
  %data.i151 = alloca [6 x i8], align 1
  %data.i142 = alloca [6 x i8], align 1
  %data.i133 = alloca [6 x i8], align 1
  %data.i124 = alloca [6 x i8], align 1
  %data.i115 = alloca [6 x i8], align 1
  %data.i106 = alloca [6 x i8], align 1
  %data.i97 = alloca [6 x i8], align 1
  %data.i88 = alloca [6 x i8], align 1
  %data.i79 = alloca [6 x i8], align 1
  %data.i70 = alloca [6 x i8], align 1
  %data.i61 = alloca [6 x i8], align 1
  %data.i52 = alloca [6 x i8], align 1
  %data.i43 = alloca [6 x i8], align 1
  %data.i34 = alloca [6 x i8], align 1
  %data.i = alloca [6 x i8], align 1
  %addr.addr.i = alloca i16, align 2
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %v, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %error.i = getelementptr inbounds %struct.tc358764, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tc358764_read.exit_crit_edge

entry.tc358764_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_read.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -8
  %5 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32763, ptr %addr.addr.i, align 2
  %call1.i = call i32 @mipi_dsi_generic_read(ptr noundef %add.ptr.i.i, ptr noundef nonnull %addr.addr.i, i32 noundef 2, ptr noundef nonnull %v, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %v, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc358764_read.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc358764_init, %if.then8.i)) #6
          to label %tc358764_read.exit [label %if.then8.i], !srcloc !111

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %12 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.addr.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc358764_read.__UNIQUE_ID_ddebug307, ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef %15) #6
  br label %tc358764_read.exit

tc358764_read.exit:                               ; preds = %if.then8.i, %do.body.i, %entry.tc358764_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end, label %tc358764_read.exit.cleanup_crit_edge

tc358764_read.exit.cleanup_crit_edge:             ; preds = %tc358764_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %tc358764_read.exit
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %20 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.34, i32 noundef %21) #9
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #6
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i30 = icmp eq i32 %25, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %do.end.tc358764_write.exit.thread_crit_edge

do.end.tc358764_write.exit.thread_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit.thread

if.end.i33:                                       ; preds = %do.end
  %26 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 5
  %27 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 4
  %28 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 3
  %29 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 2
  %30 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 1
  %add.ptr.i.i31 = getelementptr i8, ptr %23, i32 -8
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 60, ptr %data.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %30, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %29, align 1
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %28, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %27, align 1
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %26, align 1
  %call15.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i31, ptr noundef nonnull %data.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i32 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i32, label %if.then17.i, label %tc358764_write.exit

if.then17.i:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call15.i, ptr %error.i, align 4
  br label %tc358764_write.exit.thread

tc358764_write.exit.thread:                       ; preds = %if.then17.i, %do.end.tc358764_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i34) #6
  br label %tc358764_write.exit42

tc358764_write.exit:                              ; preds = %if.end.i33
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #6
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i36 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i36, label %if.end.i40, label %tc358764_write.exit.tc358764_write.exit42.thread_crit_edge

tc358764_write.exit.tc358764_write.exit42.thread_crit_edge: ; preds = %tc358764_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit42.thread

if.end.i40:                                       ; preds = %tc358764_write.exit
  %41 = getelementptr inbounds [6 x i8], ptr %data.i34, i32 0, i32 5
  %42 = getelementptr inbounds [6 x i8], ptr %data.i34, i32 0, i32 4
  %43 = getelementptr inbounds [6 x i8], ptr %data.i34, i32 0, i32 3
  %44 = getelementptr inbounds [6 x i8], ptr %data.i34, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i8], ptr %data.i34, i32 0, i32 1
  %add.ptr.i.i37 = getelementptr i8, ptr %40, i32 -8
  %46 = ptrtoint ptr %data.i34 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 20, ptr %data.i34, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %45, align 1
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %44, align 1
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %43, align 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %42, align 1
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %41, align 1
  %call15.i38 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i37, ptr noundef nonnull %data.i34, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i38)
  %cmp.i39 = icmp slt i32 %call15.i38, 0
  br i1 %cmp.i39, label %if.then17.i41, label %if.end.i40.tc358764_write.exit42_crit_edge

if.end.i40.tc358764_write.exit42_crit_edge:       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit42

if.then17.i41:                                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call15.i38, ptr %error.i, align 4
  br label %tc358764_write.exit42.thread

tc358764_write.exit42.thread:                     ; preds = %if.then17.i41, %tc358764_write.exit.tc358764_write.exit42.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i34) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i43) #6
  br label %tc358764_write.exit51

tc358764_write.exit42:                            ; preds = %if.end.i40.tc358764_write.exit42_crit_edge, %tc358764_write.exit.thread
  %53 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr225 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i34) #6
  %54 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr225)
  %tobool.not.i45 = icmp eq i32 %.pr225, 0
  br i1 %tobool.not.i45, label %if.end.i49, label %tc358764_write.exit42.tc358764_write.exit51.thread_crit_edge

tc358764_write.exit42.tc358764_write.exit51.thread_crit_edge: ; preds = %tc358764_write.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit51.thread

if.end.i49:                                       ; preds = %tc358764_write.exit42
  %56 = getelementptr inbounds [6 x i8], ptr %data.i43, i32 0, i32 5
  %57 = getelementptr inbounds [6 x i8], ptr %data.i43, i32 0, i32 4
  %58 = getelementptr inbounds [6 x i8], ptr %data.i43, i32 0, i32 3
  %59 = getelementptr inbounds [6 x i8], ptr %data.i43, i32 0, i32 2
  %60 = getelementptr inbounds [6 x i8], ptr %data.i43, i32 0, i32 1
  %add.ptr.i.i46 = getelementptr i8, ptr %55, i32 -8
  %61 = ptrtoint ptr %data.i43 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 100, ptr %data.i43, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %60, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %59, align 1
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %58, align 1
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %57, align 1
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %56, align 1
  %call15.i47 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i46, ptr noundef nonnull %data.i43, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i47)
  %cmp.i48 = icmp slt i32 %call15.i47, 0
  br i1 %cmp.i48, label %if.then17.i50, label %if.end.i49.tc358764_write.exit51_crit_edge

if.end.i49.tc358764_write.exit51_crit_edge:       ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit51

if.then17.i50:                                    ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call15.i47, ptr %error.i, align 4
  br label %tc358764_write.exit51.thread

tc358764_write.exit51.thread:                     ; preds = %if.then17.i50, %tc358764_write.exit42.tc358764_write.exit51.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i43) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i52) #6
  br label %tc358764_write.exit60

tc358764_write.exit51:                            ; preds = %if.end.i49.tc358764_write.exit51_crit_edge, %tc358764_write.exit42.thread
  %68 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr227 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i43) #6
  %69 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr227)
  %tobool.not.i54 = icmp eq i32 %.pr227, 0
  br i1 %tobool.not.i54, label %if.end.i58, label %tc358764_write.exit51.tc358764_write.exit60.thread_crit_edge

tc358764_write.exit51.tc358764_write.exit60.thread_crit_edge: ; preds = %tc358764_write.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit60.thread

if.end.i58:                                       ; preds = %tc358764_write.exit51
  %71 = getelementptr inbounds [6 x i8], ptr %data.i52, i32 0, i32 5
  %72 = getelementptr inbounds [6 x i8], ptr %data.i52, i32 0, i32 4
  %73 = getelementptr inbounds [6 x i8], ptr %data.i52, i32 0, i32 3
  %74 = getelementptr inbounds [6 x i8], ptr %data.i52, i32 0, i32 2
  %75 = getelementptr inbounds [6 x i8], ptr %data.i52, i32 0, i32 1
  %add.ptr.i.i55 = getelementptr i8, ptr %70, i32 -8
  %76 = ptrtoint ptr %data.i52 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 104, ptr %data.i52, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %75, align 1
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %74, align 1
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %73, align 1
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %72, align 1
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %71, align 1
  %call15.i56 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i55, ptr noundef nonnull %data.i52, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i56)
  %cmp.i57 = icmp slt i32 %call15.i56, 0
  br i1 %cmp.i57, label %if.then17.i59, label %if.end.i58.tc358764_write.exit60_crit_edge

if.end.i58.tc358764_write.exit60_crit_edge:       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit60

if.then17.i59:                                    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call15.i56, ptr %error.i, align 4
  br label %tc358764_write.exit60.thread

tc358764_write.exit60.thread:                     ; preds = %if.then17.i59, %tc358764_write.exit51.tc358764_write.exit60.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i52) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i61) #6
  br label %tc358764_write.exit69

tc358764_write.exit60:                            ; preds = %if.end.i58.tc358764_write.exit60_crit_edge, %tc358764_write.exit51.thread
  %83 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr229 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i52) #6
  %84 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr229)
  %tobool.not.i63 = icmp eq i32 %.pr229, 0
  br i1 %tobool.not.i63, label %if.end.i67, label %tc358764_write.exit60.tc358764_write.exit69.thread_crit_edge

tc358764_write.exit60.tc358764_write.exit69.thread_crit_edge: ; preds = %tc358764_write.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit69.thread

if.end.i67:                                       ; preds = %tc358764_write.exit60
  %86 = getelementptr inbounds [6 x i8], ptr %data.i61, i32 0, i32 5
  %87 = getelementptr inbounds [6 x i8], ptr %data.i61, i32 0, i32 4
  %88 = getelementptr inbounds [6 x i8], ptr %data.i61, i32 0, i32 3
  %89 = getelementptr inbounds [6 x i8], ptr %data.i61, i32 0, i32 2
  %90 = getelementptr inbounds [6 x i8], ptr %data.i61, i32 0, i32 1
  %add.ptr.i.i64 = getelementptr i8, ptr %85, i32 -8
  %91 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 108, ptr %data.i61, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %90, align 1
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 5, ptr %89, align 1
  %94 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %88, align 1
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %87, align 1
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %86, align 1
  %call15.i65 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i64, ptr noundef nonnull %data.i61, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i65)
  %cmp.i66 = icmp slt i32 %call15.i65, 0
  br i1 %cmp.i66, label %if.then17.i68, label %if.end.i67.tc358764_write.exit69_crit_edge

if.end.i67.tc358764_write.exit69_crit_edge:       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit69

if.then17.i68:                                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call15.i65, ptr %error.i, align 4
  br label %tc358764_write.exit69.thread

tc358764_write.exit69.thread:                     ; preds = %if.then17.i68, %tc358764_write.exit60.tc358764_write.exit69.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i61) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i70) #6
  br label %tc358764_write.exit78

tc358764_write.exit69:                            ; preds = %if.end.i67.tc358764_write.exit69_crit_edge, %tc358764_write.exit60.thread
  %98 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr231 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i61) #6
  %99 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr231)
  %tobool.not.i72 = icmp eq i32 %.pr231, 0
  br i1 %tobool.not.i72, label %if.end.i76, label %tc358764_write.exit69.tc358764_write.exit78.thread_crit_edge

tc358764_write.exit69.tc358764_write.exit78.thread_crit_edge: ; preds = %tc358764_write.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit78.thread

if.end.i76:                                       ; preds = %tc358764_write.exit69
  %101 = getelementptr inbounds [6 x i8], ptr %data.i70, i32 0, i32 5
  %102 = getelementptr inbounds [6 x i8], ptr %data.i70, i32 0, i32 4
  %103 = getelementptr inbounds [6 x i8], ptr %data.i70, i32 0, i32 3
  %104 = getelementptr inbounds [6 x i8], ptr %data.i70, i32 0, i32 2
  %105 = getelementptr inbounds [6 x i8], ptr %data.i70, i32 0, i32 1
  %add.ptr.i.i73 = getelementptr i8, ptr %100, i32 -8
  %106 = ptrtoint ptr %data.i70 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 112, ptr %data.i70, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %105, align 1
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 5, ptr %104, align 1
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %103, align 1
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %102, align 1
  %111 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %101, align 1
  %call15.i74 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i73, ptr noundef nonnull %data.i70, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i74)
  %cmp.i75 = icmp slt i32 %call15.i74, 0
  br i1 %cmp.i75, label %if.then17.i77, label %if.end.i76.tc358764_write.exit78_crit_edge

if.end.i76.tc358764_write.exit78_crit_edge:       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit78

if.then17.i77:                                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call15.i74, ptr %error.i, align 4
  br label %tc358764_write.exit78.thread

tc358764_write.exit78.thread:                     ; preds = %if.then17.i77, %tc358764_write.exit69.tc358764_write.exit78.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i70) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i79) #6
  br label %tc358764_write.exit87

tc358764_write.exit78:                            ; preds = %if.end.i76.tc358764_write.exit78_crit_edge, %tc358764_write.exit69.thread
  %113 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr233 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i70) #6
  %114 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr233)
  %tobool.not.i81 = icmp eq i32 %.pr233, 0
  br i1 %tobool.not.i81, label %if.end.i85, label %tc358764_write.exit78.tc358764_write.exit87.thread_crit_edge

tc358764_write.exit78.tc358764_write.exit87.thread_crit_edge: ; preds = %tc358764_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit87.thread

if.end.i85:                                       ; preds = %tc358764_write.exit78
  %116 = getelementptr inbounds [6 x i8], ptr %data.i79, i32 0, i32 5
  %117 = getelementptr inbounds [6 x i8], ptr %data.i79, i32 0, i32 4
  %118 = getelementptr inbounds [6 x i8], ptr %data.i79, i32 0, i32 3
  %119 = getelementptr inbounds [6 x i8], ptr %data.i79, i32 0, i32 2
  %120 = getelementptr inbounds [6 x i8], ptr %data.i79, i32 0, i32 1
  %add.ptr.i.i82 = getelementptr i8, ptr %115, i32 -8
  %121 = ptrtoint ptr %data.i79 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 52, ptr %data.i79, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %120, align 1
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 31, ptr %119, align 1
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %118, align 1
  %125 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %117, align 1
  %126 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %116, align 1
  %call15.i83 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i82, ptr noundef nonnull %data.i79, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i83)
  %cmp.i84 = icmp slt i32 %call15.i83, 0
  br i1 %cmp.i84, label %if.then17.i86, label %if.end.i85.tc358764_write.exit87_crit_edge

if.end.i85.tc358764_write.exit87_crit_edge:       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit87

if.then17.i86:                                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call15.i83, ptr %error.i, align 4
  br label %tc358764_write.exit87.thread

tc358764_write.exit87.thread:                     ; preds = %if.then17.i86, %tc358764_write.exit78.tc358764_write.exit87.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i79) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i88) #6
  br label %tc358764_write.exit96

tc358764_write.exit87:                            ; preds = %if.end.i85.tc358764_write.exit87_crit_edge, %tc358764_write.exit78.thread
  %128 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr235 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i79) #6
  %129 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr235)
  %tobool.not.i90 = icmp eq i32 %.pr235, 0
  br i1 %tobool.not.i90, label %if.end.i94, label %tc358764_write.exit87.tc358764_write.exit96.thread_crit_edge

tc358764_write.exit87.tc358764_write.exit96.thread_crit_edge: ; preds = %tc358764_write.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit96.thread

if.end.i94:                                       ; preds = %tc358764_write.exit87
  %131 = getelementptr inbounds [6 x i8], ptr %data.i88, i32 0, i32 5
  %132 = getelementptr inbounds [6 x i8], ptr %data.i88, i32 0, i32 4
  %133 = getelementptr inbounds [6 x i8], ptr %data.i88, i32 0, i32 3
  %134 = getelementptr inbounds [6 x i8], ptr %data.i88, i32 0, i32 2
  %135 = getelementptr inbounds [6 x i8], ptr %data.i88, i32 0, i32 1
  %add.ptr.i.i91 = getelementptr i8, ptr %130, i32 -8
  %136 = ptrtoint ptr %data.i88 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 16, ptr %data.i88, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 2, ptr %135, align 1
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 31, ptr %134, align 1
  %139 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %133, align 1
  %140 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %132, align 1
  %141 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %131, align 1
  %call15.i92 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i91, ptr noundef nonnull %data.i88, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i92)
  %cmp.i93 = icmp slt i32 %call15.i92, 0
  br i1 %cmp.i93, label %if.then17.i95, label %if.end.i94.tc358764_write.exit96_crit_edge

if.end.i94.tc358764_write.exit96_crit_edge:       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit96

if.then17.i95:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call15.i92, ptr %error.i, align 4
  br label %tc358764_write.exit96.thread

tc358764_write.exit96.thread:                     ; preds = %if.then17.i95, %tc358764_write.exit87.tc358764_write.exit96.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i88) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i97) #6
  br label %tc358764_write.exit105

tc358764_write.exit96:                            ; preds = %if.end.i94.tc358764_write.exit96_crit_edge, %tc358764_write.exit87.thread
  %143 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr237 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i88) #6
  %144 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr237)
  %tobool.not.i99 = icmp eq i32 %.pr237, 0
  br i1 %tobool.not.i99, label %if.end.i103, label %tc358764_write.exit96.tc358764_write.exit105.thread_crit_edge

tc358764_write.exit96.tc358764_write.exit105.thread_crit_edge: ; preds = %tc358764_write.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit105.thread

if.end.i103:                                      ; preds = %tc358764_write.exit96
  %146 = getelementptr inbounds [6 x i8], ptr %data.i97, i32 0, i32 5
  %147 = getelementptr inbounds [6 x i8], ptr %data.i97, i32 0, i32 4
  %148 = getelementptr inbounds [6 x i8], ptr %data.i97, i32 0, i32 3
  %149 = getelementptr inbounds [6 x i8], ptr %data.i97, i32 0, i32 2
  %150 = getelementptr inbounds [6 x i8], ptr %data.i97, i32 0, i32 1
  %add.ptr.i.i100 = getelementptr i8, ptr %145, i32 -8
  %151 = ptrtoint ptr %data.i97 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 4, ptr %data.i97, align 1
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %150, align 1
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %149, align 1
  %154 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %148, align 1
  %155 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %147, align 1
  %156 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %146, align 1
  %call15.i101 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i100, ptr noundef nonnull %data.i97, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i101)
  %cmp.i102 = icmp slt i32 %call15.i101, 0
  br i1 %cmp.i102, label %if.then17.i104, label %if.end.i103.tc358764_write.exit105_crit_edge

if.end.i103.tc358764_write.exit105_crit_edge:     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit105

if.then17.i104:                                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call15.i101, ptr %error.i, align 4
  br label %tc358764_write.exit105.thread

tc358764_write.exit105.thread:                    ; preds = %if.then17.i104, %tc358764_write.exit96.tc358764_write.exit105.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i97) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i106) #6
  br label %tc358764_write.exit114

tc358764_write.exit105:                           ; preds = %if.end.i103.tc358764_write.exit105_crit_edge, %tc358764_write.exit96.thread
  %158 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr239 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i97) #6
  %159 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i106) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr239)
  %tobool.not.i108 = icmp eq i32 %.pr239, 0
  br i1 %tobool.not.i108, label %if.end.i112, label %tc358764_write.exit105.tc358764_write.exit114.thread_crit_edge

tc358764_write.exit105.tc358764_write.exit114.thread_crit_edge: ; preds = %tc358764_write.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit114.thread

if.end.i112:                                      ; preds = %tc358764_write.exit105
  %161 = getelementptr inbounds [6 x i8], ptr %data.i106, i32 0, i32 5
  %162 = getelementptr inbounds [6 x i8], ptr %data.i106, i32 0, i32 4
  %163 = getelementptr inbounds [6 x i8], ptr %data.i106, i32 0, i32 3
  %164 = getelementptr inbounds [6 x i8], ptr %data.i106, i32 0, i32 2
  %165 = getelementptr inbounds [6 x i8], ptr %data.i106, i32 0, i32 1
  %add.ptr.i.i109 = getelementptr i8, ptr %160, i32 -8
  %166 = ptrtoint ptr %data.i106 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 4, ptr %data.i106, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 2, ptr %165, align 1
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %164, align 1
  %169 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %163, align 1
  %170 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %162, align 1
  %171 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %161, align 1
  %call15.i110 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i109, ptr noundef nonnull %data.i106, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i110)
  %cmp.i111 = icmp slt i32 %call15.i110, 0
  br i1 %cmp.i111, label %if.then17.i113, label %if.end.i112.tc358764_write.exit114_crit_edge

if.end.i112.tc358764_write.exit114_crit_edge:     ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit114

if.then17.i113:                                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %call15.i110, ptr %error.i, align 4
  br label %tc358764_write.exit114.thread

tc358764_write.exit114.thread:                    ; preds = %if.then17.i113, %tc358764_write.exit105.tc358764_write.exit114.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i106) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i115) #6
  br label %tc358764_write.exit123

tc358764_write.exit114:                           ; preds = %if.end.i112.tc358764_write.exit114_crit_edge, %tc358764_write.exit105.thread
  %173 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pr241 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i106) #6
  %174 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr241)
  %tobool.not.i117 = icmp eq i32 %.pr241, 0
  br i1 %tobool.not.i117, label %if.end.i121, label %tc358764_write.exit114.tc358764_write.exit123.thread_crit_edge

tc358764_write.exit114.tc358764_write.exit123.thread_crit_edge: ; preds = %tc358764_write.exit114
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit123.thread

if.end.i121:                                      ; preds = %tc358764_write.exit114
  %176 = getelementptr inbounds [6 x i8], ptr %data.i115, i32 0, i32 5
  %177 = getelementptr inbounds [6 x i8], ptr %data.i115, i32 0, i32 4
  %178 = getelementptr inbounds [6 x i8], ptr %data.i115, i32 0, i32 3
  %179 = getelementptr inbounds [6 x i8], ptr %data.i115, i32 0, i32 2
  %180 = getelementptr inbounds [6 x i8], ptr %data.i115, i32 0, i32 1
  %add.ptr.i.i118 = getelementptr i8, ptr %175, i32 -8
  %181 = ptrtoint ptr %data.i115 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 80, ptr %data.i115, align 1
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 4, ptr %180, align 1
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 32, ptr %179, align 1
  %184 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %178, align 1
  %185 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -6, ptr %177, align 1
  %186 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %176, align 1
  %call15.i119 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i118, ptr noundef nonnull %data.i115, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i119)
  %cmp.i120 = icmp slt i32 %call15.i119, 0
  br i1 %cmp.i120, label %if.then17.i122, label %if.end.i121.tc358764_write.exit123_crit_edge

if.end.i121.tc358764_write.exit123_crit_edge:     ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit123

if.then17.i122:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call15.i119, ptr %error.i, align 4
  br label %tc358764_write.exit123.thread

tc358764_write.exit123.thread:                    ; preds = %if.then17.i122, %tc358764_write.exit114.tc358764_write.exit123.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i115) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i124) #6
  br label %tc358764_write.exit132

tc358764_write.exit123:                           ; preds = %if.end.i121.tc358764_write.exit123_crit_edge, %tc358764_write.exit114.thread
  %188 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %.pr243 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i115) #6
  %189 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr243)
  %tobool.not.i126 = icmp eq i32 %.pr243, 0
  br i1 %tobool.not.i126, label %if.end.i130, label %tc358764_write.exit123.tc358764_write.exit132.thread_crit_edge

tc358764_write.exit123.tc358764_write.exit132.thread_crit_edge: ; preds = %tc358764_write.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit132.thread

if.end.i130:                                      ; preds = %tc358764_write.exit123
  %191 = getelementptr inbounds [6 x i8], ptr %data.i124, i32 0, i32 5
  %192 = getelementptr inbounds [6 x i8], ptr %data.i124, i32 0, i32 4
  %193 = getelementptr inbounds [6 x i8], ptr %data.i124, i32 0, i32 3
  %194 = getelementptr inbounds [6 x i8], ptr %data.i124, i32 0, i32 2
  %195 = getelementptr inbounds [6 x i8], ptr %data.i124, i32 0, i32 1
  %add.ptr.i.i127 = getelementptr i8, ptr %190, i32 -8
  %196 = ptrtoint ptr %data.i124 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -96, ptr %data.i124, align 1
  %197 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 4, ptr %195, align 1
  %198 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 6, ptr %194, align 1
  %199 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -128, ptr %193, align 1
  %200 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 68, ptr %192, align 1
  %201 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %191, align 1
  %call15.i128 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i127, ptr noundef nonnull %data.i124, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i128)
  %cmp.i129 = icmp slt i32 %call15.i128, 0
  br i1 %cmp.i129, label %if.then17.i131, label %if.end.i130.tc358764_write.exit132_crit_edge

if.end.i130.tc358764_write.exit132_crit_edge:     ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit132

if.then17.i131:                                   ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #8
  %202 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call15.i128, ptr %error.i, align 4
  br label %tc358764_write.exit132.thread

tc358764_write.exit132.thread:                    ; preds = %if.then17.i131, %tc358764_write.exit123.tc358764_write.exit132.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i124) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i133) #6
  br label %tc358764_write.exit141

tc358764_write.exit132:                           ; preds = %if.end.i130.tc358764_write.exit132_crit_edge, %tc358764_write.exit123.thread
  %203 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pr245 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i124) #6
  %204 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr245)
  %tobool.not.i135 = icmp eq i32 %.pr245, 0
  br i1 %tobool.not.i135, label %if.end.i139, label %tc358764_write.exit132.tc358764_write.exit141.thread_crit_edge

tc358764_write.exit132.tc358764_write.exit141.thread_crit_edge: ; preds = %tc358764_write.exit132
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit141.thread

if.end.i139:                                      ; preds = %tc358764_write.exit132
  %206 = getelementptr inbounds [6 x i8], ptr %data.i133, i32 0, i32 5
  %207 = getelementptr inbounds [6 x i8], ptr %data.i133, i32 0, i32 4
  %208 = getelementptr inbounds [6 x i8], ptr %data.i133, i32 0, i32 3
  %209 = getelementptr inbounds [6 x i8], ptr %data.i133, i32 0, i32 2
  %210 = getelementptr inbounds [6 x i8], ptr %data.i133, i32 0, i32 1
  %add.ptr.i.i136 = getelementptr i8, ptr %205, i32 -8
  %211 = ptrtoint ptr %data.i133 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -96, ptr %data.i133, align 1
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 4, ptr %210, align 1
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 6, ptr %209, align 1
  %214 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -128, ptr %208, align 1
  %215 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 4, ptr %207, align 1
  %216 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %206, align 1
  %call15.i137 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i136, ptr noundef nonnull %data.i133, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i137)
  %cmp.i138 = icmp slt i32 %call15.i137, 0
  br i1 %cmp.i138, label %if.then17.i140, label %if.end.i139.tc358764_write.exit141_crit_edge

if.end.i139.tc358764_write.exit141_crit_edge:     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit141

if.then17.i140:                                   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %call15.i137, ptr %error.i, align 4
  br label %tc358764_write.exit141.thread

tc358764_write.exit141.thread:                    ; preds = %if.then17.i140, %tc358764_write.exit132.tc358764_write.exit141.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i133) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i142) #6
  br label %tc358764_write.exit150

tc358764_write.exit141:                           ; preds = %if.end.i139.tc358764_write.exit141_crit_edge, %tc358764_write.exit132.thread
  %218 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %.pr247 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i133) #6
  %219 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr247)
  %tobool.not.i144 = icmp eq i32 %.pr247, 0
  br i1 %tobool.not.i144, label %if.end.i148, label %tc358764_write.exit141.tc358764_write.exit150.thread_crit_edge

tc358764_write.exit141.tc358764_write.exit150.thread_crit_edge: ; preds = %tc358764_write.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit150.thread

if.end.i148:                                      ; preds = %tc358764_write.exit141
  %221 = getelementptr inbounds [6 x i8], ptr %data.i142, i32 0, i32 5
  %222 = getelementptr inbounds [6 x i8], ptr %data.i142, i32 0, i32 4
  %223 = getelementptr inbounds [6 x i8], ptr %data.i142, i32 0, i32 3
  %224 = getelementptr inbounds [6 x i8], ptr %data.i142, i32 0, i32 2
  %225 = getelementptr inbounds [6 x i8], ptr %data.i142, i32 0, i32 1
  %add.ptr.i.i145 = getelementptr i8, ptr %220, i32 -8
  %226 = ptrtoint ptr %data.i142 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 4, ptr %data.i142, align 1
  %227 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 5, ptr %225, align 1
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 4, ptr %224, align 1
  %229 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %223, align 1
  %230 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %222, align 1
  %231 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %221, align 1
  %call15.i146 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i145, ptr noundef nonnull %data.i142, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i146)
  %cmp.i147 = icmp slt i32 %call15.i146, 0
  br i1 %cmp.i147, label %if.then17.i149, label %if.end.i148.tc358764_write.exit150_crit_edge

if.end.i148.tc358764_write.exit150_crit_edge:     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit150

if.then17.i149:                                   ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #8
  %232 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call15.i146, ptr %error.i, align 4
  br label %tc358764_write.exit150.thread

tc358764_write.exit150.thread:                    ; preds = %if.then17.i149, %tc358764_write.exit141.tc358764_write.exit150.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i142) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i151) #6
  br label %tc358764_write.exit159

tc358764_write.exit150:                           ; preds = %if.end.i148.tc358764_write.exit150_crit_edge, %tc358764_write.exit141.thread
  %233 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %.pr249 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i142) #6
  %234 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i151) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr249)
  %tobool.not.i153 = icmp eq i32 %.pr249, 0
  br i1 %tobool.not.i153, label %if.end.i157, label %tc358764_write.exit150.tc358764_write.exit159.thread_crit_edge

tc358764_write.exit150.tc358764_write.exit159.thread_crit_edge: ; preds = %tc358764_write.exit150
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit159.thread

if.end.i157:                                      ; preds = %tc358764_write.exit150
  %236 = getelementptr inbounds [6 x i8], ptr %data.i151, i32 0, i32 5
  %237 = getelementptr inbounds [6 x i8], ptr %data.i151, i32 0, i32 4
  %238 = getelementptr inbounds [6 x i8], ptr %data.i151, i32 0, i32 3
  %239 = getelementptr inbounds [6 x i8], ptr %data.i151, i32 0, i32 2
  %240 = getelementptr inbounds [6 x i8], ptr %data.i151, i32 0, i32 1
  %add.ptr.i.i154 = getelementptr i8, ptr %235, i32 -8
  %241 = ptrtoint ptr %data.i151 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -128, ptr %data.i151, align 1
  %242 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 4, ptr %240, align 1
  %243 = ptrtoint ptr %239 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %239, align 1
  %244 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %238, align 1
  %245 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 2, ptr %237, align 1
  %246 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 3, ptr %236, align 1
  %call15.i155 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i154, ptr noundef nonnull %data.i151, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i155)
  %cmp.i156 = icmp slt i32 %call15.i155, 0
  br i1 %cmp.i156, label %if.then17.i158, label %if.end.i157.tc358764_write.exit159_crit_edge

if.end.i157.tc358764_write.exit159_crit_edge:     ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit159

if.then17.i158:                                   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #8
  %247 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %call15.i155, ptr %error.i, align 4
  br label %tc358764_write.exit159.thread

tc358764_write.exit159.thread:                    ; preds = %if.then17.i158, %tc358764_write.exit150.tc358764_write.exit159.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i151) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i160) #6
  br label %tc358764_write.exit168

tc358764_write.exit159:                           ; preds = %if.end.i157.tc358764_write.exit159_crit_edge, %tc358764_write.exit150.thread
  %248 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %.pr251 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i151) #6
  %249 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr251)
  %tobool.not.i162 = icmp eq i32 %.pr251, 0
  br i1 %tobool.not.i162, label %if.end.i166, label %tc358764_write.exit159.tc358764_write.exit168.thread_crit_edge

tc358764_write.exit159.tc358764_write.exit168.thread_crit_edge: ; preds = %tc358764_write.exit159
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit168.thread

if.end.i166:                                      ; preds = %tc358764_write.exit159
  %251 = getelementptr inbounds [6 x i8], ptr %data.i160, i32 0, i32 5
  %252 = getelementptr inbounds [6 x i8], ptr %data.i160, i32 0, i32 4
  %253 = getelementptr inbounds [6 x i8], ptr %data.i160, i32 0, i32 3
  %254 = getelementptr inbounds [6 x i8], ptr %data.i160, i32 0, i32 2
  %255 = getelementptr inbounds [6 x i8], ptr %data.i160, i32 0, i32 1
  %add.ptr.i.i163 = getelementptr i8, ptr %250, i32 -8
  %256 = ptrtoint ptr %data.i160 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 -124, ptr %data.i160, align 1
  %257 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 4, ptr %255, align 1
  %258 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 4, ptr %254, align 1
  %259 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 7, ptr %253, align 1
  %260 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 5, ptr %252, align 1
  %261 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 8, ptr %251, align 1
  %call15.i164 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i163, ptr noundef nonnull %data.i160, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i164)
  %cmp.i165 = icmp slt i32 %call15.i164, 0
  br i1 %cmp.i165, label %if.then17.i167, label %if.end.i166.tc358764_write.exit168_crit_edge

if.end.i166.tc358764_write.exit168_crit_edge:     ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit168

if.then17.i167:                                   ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #8
  %262 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %call15.i164, ptr %error.i, align 4
  br label %tc358764_write.exit168.thread

tc358764_write.exit168.thread:                    ; preds = %if.then17.i167, %tc358764_write.exit159.tc358764_write.exit168.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i160) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i169) #6
  br label %tc358764_write.exit177

tc358764_write.exit168:                           ; preds = %if.end.i166.tc358764_write.exit168_crit_edge, %tc358764_write.exit159.thread
  %263 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %.pr253 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i160) #6
  %264 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr253)
  %tobool.not.i171 = icmp eq i32 %.pr253, 0
  br i1 %tobool.not.i171, label %if.end.i175, label %tc358764_write.exit168.tc358764_write.exit177.thread_crit_edge

tc358764_write.exit168.tc358764_write.exit177.thread_crit_edge: ; preds = %tc358764_write.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit177.thread

if.end.i175:                                      ; preds = %tc358764_write.exit168
  %266 = getelementptr inbounds [6 x i8], ptr %data.i169, i32 0, i32 5
  %267 = getelementptr inbounds [6 x i8], ptr %data.i169, i32 0, i32 4
  %268 = getelementptr inbounds [6 x i8], ptr %data.i169, i32 0, i32 3
  %269 = getelementptr inbounds [6 x i8], ptr %data.i169, i32 0, i32 2
  %270 = getelementptr inbounds [6 x i8], ptr %data.i169, i32 0, i32 1
  %add.ptr.i.i172 = getelementptr i8, ptr %265, i32 -8
  %271 = ptrtoint ptr %data.i169 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -120, ptr %data.i169, align 1
  %272 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 4, ptr %270, align 1
  %273 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 9, ptr %269, align 1
  %274 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 10, ptr %268, align 1
  %275 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 14, ptr %267, align 1
  %276 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 15, ptr %266, align 1
  %call15.i173 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i172, ptr noundef nonnull %data.i169, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i173)
  %cmp.i174 = icmp slt i32 %call15.i173, 0
  br i1 %cmp.i174, label %if.then17.i176, label %if.end.i175.tc358764_write.exit177_crit_edge

if.end.i175.tc358764_write.exit177_crit_edge:     ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit177

if.then17.i176:                                   ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  %277 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call15.i173, ptr %error.i, align 4
  br label %tc358764_write.exit177.thread

tc358764_write.exit177.thread:                    ; preds = %if.then17.i176, %tc358764_write.exit168.tc358764_write.exit177.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i169) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i178) #6
  br label %tc358764_write.exit186

tc358764_write.exit177:                           ; preds = %if.end.i175.tc358764_write.exit177_crit_edge, %tc358764_write.exit168.thread
  %278 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %.pr255 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i169) #6
  %279 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr255)
  %tobool.not.i180 = icmp eq i32 %.pr255, 0
  br i1 %tobool.not.i180, label %if.end.i184, label %tc358764_write.exit177.tc358764_write.exit186.thread_crit_edge

tc358764_write.exit177.tc358764_write.exit186.thread_crit_edge: ; preds = %tc358764_write.exit177
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit186.thread

if.end.i184:                                      ; preds = %tc358764_write.exit177
  %281 = getelementptr inbounds [6 x i8], ptr %data.i178, i32 0, i32 5
  %282 = getelementptr inbounds [6 x i8], ptr %data.i178, i32 0, i32 4
  %283 = getelementptr inbounds [6 x i8], ptr %data.i178, i32 0, i32 3
  %284 = getelementptr inbounds [6 x i8], ptr %data.i178, i32 0, i32 2
  %285 = getelementptr inbounds [6 x i8], ptr %data.i178, i32 0, i32 1
  %add.ptr.i.i181 = getelementptr i8, ptr %280, i32 -8
  %286 = ptrtoint ptr %data.i178 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 -116, ptr %data.i178, align 1
  %287 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 4, ptr %285, align 1
  %288 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 11, ptr %284, align 1
  %289 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 12, ptr %283, align 1
  %290 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 13, ptr %282, align 1
  %291 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 16, ptr %281, align 1
  %call15.i182 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i181, ptr noundef nonnull %data.i178, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i182)
  %cmp.i183 = icmp slt i32 %call15.i182, 0
  br i1 %cmp.i183, label %if.then17.i185, label %if.end.i184.tc358764_write.exit186_crit_edge

if.end.i184.tc358764_write.exit186_crit_edge:     ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit186

if.then17.i185:                                   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #8
  %292 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call15.i182, ptr %error.i, align 4
  br label %tc358764_write.exit186.thread

tc358764_write.exit186.thread:                    ; preds = %if.then17.i185, %tc358764_write.exit177.tc358764_write.exit186.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i178) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i187) #6
  br label %tc358764_write.exit195

tc358764_write.exit186:                           ; preds = %if.end.i184.tc358764_write.exit186_crit_edge, %tc358764_write.exit177.thread
  %293 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %.pr257 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i178) #6
  %294 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i187) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr257)
  %tobool.not.i189 = icmp eq i32 %.pr257, 0
  br i1 %tobool.not.i189, label %if.end.i193, label %tc358764_write.exit186.tc358764_write.exit195.thread_crit_edge

tc358764_write.exit186.tc358764_write.exit195.thread_crit_edge: ; preds = %tc358764_write.exit186
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit195.thread

if.end.i193:                                      ; preds = %tc358764_write.exit186
  %296 = getelementptr inbounds [6 x i8], ptr %data.i187, i32 0, i32 5
  %297 = getelementptr inbounds [6 x i8], ptr %data.i187, i32 0, i32 4
  %298 = getelementptr inbounds [6 x i8], ptr %data.i187, i32 0, i32 3
  %299 = getelementptr inbounds [6 x i8], ptr %data.i187, i32 0, i32 2
  %300 = getelementptr inbounds [6 x i8], ptr %data.i187, i32 0, i32 1
  %add.ptr.i.i190 = getelementptr i8, ptr %295, i32 -8
  %301 = ptrtoint ptr %data.i187 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 -112, ptr %data.i187, align 1
  %302 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 4, ptr %300, align 1
  %303 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 22, ptr %299, align 1
  %304 = ptrtoint ptr %298 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 23, ptr %298, align 1
  %305 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 17, ptr %297, align 1
  %306 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 18, ptr %296, align 1
  %call15.i191 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i190, ptr noundef nonnull %data.i187, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i191)
  %cmp.i192 = icmp slt i32 %call15.i191, 0
  br i1 %cmp.i192, label %if.then17.i194, label %if.end.i193.tc358764_write.exit195_crit_edge

if.end.i193.tc358764_write.exit195_crit_edge:     ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit195

if.then17.i194:                                   ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #8
  %307 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %call15.i191, ptr %error.i, align 4
  br label %tc358764_write.exit195.thread

tc358764_write.exit195.thread:                    ; preds = %if.then17.i194, %tc358764_write.exit186.tc358764_write.exit195.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i187) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i196) #6
  br label %tc358764_write.exit204

tc358764_write.exit195:                           ; preds = %if.end.i193.tc358764_write.exit195_crit_edge, %tc358764_write.exit186.thread
  %308 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %.pr259 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i187) #6
  %309 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i196) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr259)
  %tobool.not.i198 = icmp eq i32 %.pr259, 0
  br i1 %tobool.not.i198, label %if.end.i202, label %tc358764_write.exit195.tc358764_write.exit204.thread_crit_edge

tc358764_write.exit195.tc358764_write.exit204.thread_crit_edge: ; preds = %tc358764_write.exit195
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit204.thread

if.end.i202:                                      ; preds = %tc358764_write.exit195
  %311 = getelementptr inbounds [6 x i8], ptr %data.i196, i32 0, i32 5
  %312 = getelementptr inbounds [6 x i8], ptr %data.i196, i32 0, i32 4
  %313 = getelementptr inbounds [6 x i8], ptr %data.i196, i32 0, i32 3
  %314 = getelementptr inbounds [6 x i8], ptr %data.i196, i32 0, i32 2
  %315 = getelementptr inbounds [6 x i8], ptr %data.i196, i32 0, i32 1
  %add.ptr.i.i199 = getelementptr i8, ptr %310, i32 -8
  %316 = ptrtoint ptr %data.i196 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 -108, ptr %data.i196, align 1
  %317 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 4, ptr %315, align 1
  %318 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 19, ptr %314, align 1
  %319 = ptrtoint ptr %313 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 20, ptr %313, align 1
  %320 = ptrtoint ptr %312 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 21, ptr %312, align 1
  %321 = ptrtoint ptr %311 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 27, ptr %311, align 1
  %call15.i200 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i199, ptr noundef nonnull %data.i196, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i200)
  %cmp.i201 = icmp slt i32 %call15.i200, 0
  br i1 %cmp.i201, label %if.then17.i203, label %if.end.i202.tc358764_write.exit204_crit_edge

if.end.i202.tc358764_write.exit204_crit_edge:     ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit204

if.then17.i203:                                   ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  %322 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %call15.i200, ptr %error.i, align 4
  br label %tc358764_write.exit204.thread

tc358764_write.exit204.thread:                    ; preds = %if.then17.i203, %tc358764_write.exit195.tc358764_write.exit204.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i196) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i205) #6
  br label %tc358764_write.exit213

tc358764_write.exit204:                           ; preds = %if.end.i202.tc358764_write.exit204_crit_edge, %tc358764_write.exit195.thread
  %323 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %.pr261 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i196) #6
  %324 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i205) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr261)
  %tobool.not.i207 = icmp eq i32 %.pr261, 0
  br i1 %tobool.not.i207, label %if.end.i211, label %tc358764_write.exit204.tc358764_write.exit213.thread_crit_edge

tc358764_write.exit204.tc358764_write.exit213.thread_crit_edge: ; preds = %tc358764_write.exit204
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit213.thread

if.end.i211:                                      ; preds = %tc358764_write.exit204
  %326 = getelementptr inbounds [6 x i8], ptr %data.i205, i32 0, i32 5
  %327 = getelementptr inbounds [6 x i8], ptr %data.i205, i32 0, i32 4
  %328 = getelementptr inbounds [6 x i8], ptr %data.i205, i32 0, i32 3
  %329 = getelementptr inbounds [6 x i8], ptr %data.i205, i32 0, i32 2
  %330 = getelementptr inbounds [6 x i8], ptr %data.i205, i32 0, i32 1
  %add.ptr.i.i208 = getelementptr i8, ptr %325, i32 -8
  %331 = ptrtoint ptr %data.i205 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 -104, ptr %data.i205, align 1
  %332 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 4, ptr %330, align 1
  %333 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 24, ptr %329, align 1
  %334 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 25, ptr %328, align 1
  %335 = ptrtoint ptr %327 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 26, ptr %327, align 1
  %336 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 6, ptr %326, align 1
  %call15.i209 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i208, ptr noundef nonnull %data.i205, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i209)
  %cmp.i210 = icmp slt i32 %call15.i209, 0
  br i1 %cmp.i210, label %if.then17.i212, label %if.end.i211.tc358764_write.exit213_crit_edge

if.end.i211.tc358764_write.exit213_crit_edge:     ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit213

if.then17.i212:                                   ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #8
  %337 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %call15.i209, ptr %error.i, align 4
  br label %tc358764_write.exit213.thread

tc358764_write.exit213.thread:                    ; preds = %if.then17.i212, %tc358764_write.exit204.tc358764_write.exit213.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i205) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i214) #6
  br label %tc358764_write.exit222

tc358764_write.exit213:                           ; preds = %if.end.i211.tc358764_write.exit213_crit_edge, %tc358764_write.exit204.thread
  %338 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %.pr263 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i205) #6
  %339 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i214) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr263)
  %tobool.not.i216 = icmp eq i32 %.pr263, 0
  br i1 %tobool.not.i216, label %if.end.i220, label %tc358764_write.exit213.tc358764_write.exit222_crit_edge

tc358764_write.exit213.tc358764_write.exit222_crit_edge: ; preds = %tc358764_write.exit213
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit222

if.end.i220:                                      ; preds = %tc358764_write.exit213
  %341 = getelementptr inbounds [6 x i8], ptr %data.i214, i32 0, i32 5
  %342 = getelementptr inbounds [6 x i8], ptr %data.i214, i32 0, i32 4
  %343 = getelementptr inbounds [6 x i8], ptr %data.i214, i32 0, i32 3
  %344 = getelementptr inbounds [6 x i8], ptr %data.i214, i32 0, i32 2
  %345 = getelementptr inbounds [6 x i8], ptr %data.i214, i32 0, i32 1
  %add.ptr.i.i217 = getelementptr i8, ptr %340, i32 -8
  %346 = ptrtoint ptr %data.i214 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 -100, ptr %data.i214, align 1
  %347 = ptrtoint ptr %345 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 4, ptr %345, align 1
  %348 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 13, ptr %344, align 1
  %349 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 0, ptr %343, align 1
  %350 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %342, align 1
  %351 = ptrtoint ptr %341 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %341, align 1
  %call15.i218 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i217, ptr noundef nonnull %data.i214, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i218)
  %cmp.i219 = icmp slt i32 %call15.i218, 0
  br i1 %cmp.i219, label %if.then17.i221, label %if.end.i220.tc358764_write.exit222_crit_edge

if.end.i220.tc358764_write.exit222_crit_edge:     ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc358764_write.exit222

if.then17.i221:                                   ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #8
  %352 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %call15.i218, ptr %error.i, align 4
  br label %tc358764_write.exit222

tc358764_write.exit222:                           ; preds = %if.then17.i221, %if.end.i220.tc358764_write.exit222_crit_edge, %tc358764_write.exit213.tc358764_write.exit222_crit_edge, %tc358764_write.exit213.thread
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i214) #6
  %353 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %error.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %tc358764_write.exit222, %tc358764_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %354, %tc358764_write.exit222 ], [ %17, %tc358764_read.exit.cleanup_crit_edge ]
  %355 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_tc358764__308_500_tc358764_driver_init6, !1, !"__initcall__kmod_tc358764__308_500_tc358764_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 500, i32 1}
!2 = !{ptr @__exitcall_tc358764_driver_exit, !1, !"__exitcall_tc358764_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 502, i32 1}
!5 = !{ptr @__UNIQUE_ID_author310, !6, !"__UNIQUE_ID_author310", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 503, i32 1}
!7 = !{ptr @__UNIQUE_ID_description311, !8, !"__UNIQUE_ID_description311", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 504, i32 1}
!9 = !{ptr @__UNIQUE_ID_file312, !10, !"__UNIQUE_ID_file312", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 505, i32 1}
!11 = !{ptr @__UNIQUE_ID_license313, !10, !"__UNIQUE_ID_license313", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 495, i32 11}
!14 = !{ptr @tc358764_driver, !15, !"tc358764_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 491, i32 31}
!16 = !{ptr @tc358764_of_match, !17, !"tc358764_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 485, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 469, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tc358764_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tc358764_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 405, i32 40}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 407, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tc358764_parse_dt._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @tc358764_parse_dt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 414, i32 3}
!35 = !{ptr @tc358764_parse_dt._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tc358764_parse_dt._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 429, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tc358764_configure_regulators._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tc358764_configure_regulators._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 150, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 150, i32 10}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 150, i32 19}
!48 = distinct !{null, !49, !"tc358764_supplies", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 149, i32 27}
!50 = !{ptr @tc358764_bridge_funcs, !51, !"tc358764_bridge_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 391, i32 38}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 360, i32 3}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 369, i32 3}
!56 = !{ptr @tc358764_connector_funcs, !57, !"tc358764_connector_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 293, i32 41}
!58 = !{ptr @tc358764_connector_helper_funcs, !59, !"tc358764_connector_helper_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 289, i32 35}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 307, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tc358764_disable._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tc358764_disable._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 317, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tc358764_post_disable._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tc358764_post_disable._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 322, i32 3}
!72 = !{ptr @tc358764_post_disable._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tc358764_post_disable._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 332, i32 3}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tc358764_pre_enable._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tc358764_pre_enable._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 337, i32 3}
!81 = !{ptr @tc358764_pre_enable._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tc358764_pre_enable._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 340, i32 3}
!85 = !{ptr @tc358764_pre_enable._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tc358764_pre_enable._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 226, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tc358764_init._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @tc358764_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 184, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tc358764_read.__UNIQUE_ID_ddebug307, !94, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/tc358764.c", i32 349, i32 3}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tc358764_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @tc358764_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148769119, i64 2148769124, i64 2148769137, i64 2148769181, i64 2148769215, i64 2148769236}
