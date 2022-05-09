; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/tc358767.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358767.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tc_data = type { ptr, ptr, %struct.drm_dp_aux, %struct.drm_bridge, ptr, %struct.drm_connector, %struct.tc_edp_link, %struct.drm_display_mode, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
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
%struct.tc_edp_link = type { [15 x i8], i32, i8, i8, i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@__param_str_test = internal constant [14 x i8] c"tc358767.test\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@tc_test_pattern = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_test = internal constant %struct.kernel_param { ptr @__param_str_test, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tc_test_pattern } }, section "__param", align 4
@__UNIQUE_ID_testtype307 = internal constant [28 x i8] c"tc358767.parmtype=test:bool\00", section ".modinfo", align 1
@__initcall__kmod_tc358767__469_1742_tc358767_driver_init6 = internal global ptr @tc358767_driver_init, section ".initcall6.init", align 4
@tc358767_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tc_probe, ptr @tc_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358767_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358767_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc358767_driver_exit = internal global ptr @tc358767_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author470 = internal constant [67 x i8] c"tc358767.author=Andrey Gusakov <andrey.gusakov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description471 = internal constant [49 x i8] c"tc358767.description=tc358767 eDP encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file472 = internal constant [46 x i8] c"tc358767.file=drivers/gpu/drm/bridge/tc358767\00", section ".modinfo", align 1
@__UNIQUE_ID_license473 = internal constant [21 x i8] c"tc358767.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358767\00", [23 x i8] zeroinitializer }, align 32
@tc358767_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tc358767_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc358767\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@tc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1606, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get refclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/tc358767.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr = internal global ptr @tc_probe._entry, section ".printk_index", align 4
@tc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 4, i32 0, i32 32, ptr @tc_writeable_reg, ptr @tc_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2564, ptr null, ptr null, ptr @tc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tc358767:1610:(&tc_regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@tc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1613, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.12 = internal global ptr @tc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"toshiba,hpd-pin\00", [16 x i8] zeroinitializer }, align 32
@tc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1623, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse HPD number\0A\00", [36 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.16 = internal global ptr @tc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc358767-irq\00", [19 x i8] zeroinitializer }, align 32
@tc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1637, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register dp interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.20 = internal global ptr @tc_probe._entry.18, section ".printk_index", align 4
@tc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1646, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can not read device ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.23 = internal global ptr @tc_probe._entry.21, section ".printk_index", align 4
@tc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 1651, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid device ID: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@tc_probe._entry_ptr.26 = internal global ptr @tc_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TC358767 AUX i2c adapter\00", [39 x i8] zeroinitializer }, align 32
@tc_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tc_bridge_attach, ptr @tc_bridge_detach, ptr @tc_mode_valid, ptr @tc_bridge_mode_fixup, ptr @tc_bridge_disable, ptr null, ptr @tc_bridge_mode_set, ptr null, ptr @tc_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc_bridge_detect, ptr null, ptr @tc_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tc_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tc_volatile_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tc_volatile_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range { i32 1644, i32 1676 }, %struct.regmap_range { i32 1744, i32 1748 }, %struct.regmap_range { i32 2048, i32 2048 }, %struct.regmap_range { i32 2304, i32 2312 }, %struct.regmap_range { i32 1124, i32 1124 }, %struct.regmap_range { i32 1380, i32 1380 }, %struct.regmap_range { i32 1356, i32 1356 }], [40 x i8] zeroinitializer }, align 32
@tc_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 1527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syserr %x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc_irq_handler\00", [17 x i8] zeroinitializer }, align 32
@tc_irq_handler._entry_ptr = internal global ptr @tc_irq_handler._entry, section ".printk_index", align 4
@tc_irq_handler.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 1, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO%d: %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LC\00", [29 x i8] zeroinitializer }, align 32
@tc_aux_link_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 644, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for PHY to become ready\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc_aux_link_setup\00", [46 x i8] zeroinitializer }, align 32
@tc_aux_link_setup._entry_ptr = internal global ptr @tc_aux_link_setup._entry, section ".printk_index", align 4
@tc_aux_link_setup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tc_aux_link_setup failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tc_aux_link_setup._entry_ptr.38 = internal global ptr @tc_aux_link_setup._entry.36, section ".printk_index", align 4
@tc_set_syspllparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 609, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid refclk rate: %lu Hz\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc_set_syspllparam\00", [45 x i8] zeroinitializer }, align 32
@tc_set_syspllparam._entry_ptr = internal global ptr @tc_set_syspllparam._entry, section ".printk_index", align 4
@tc_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tc_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tc_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @tc_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tc_connector_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 1335, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read display props: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc_connector_get_modes\00", [41 x i8] zeroinitializer }, align 32
@tc_connector_get_modes._entry_ptr = internal global ptr @tc_connector_get_modes._entry, section ".printk_index", align 4
@tc_get_display_props.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc_get_display_props\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Falling to 2.7 Gbps rate\0A\00", [38 x i8] zeroinitializer }, align 32
@tc_get_display_props.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.45, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Falling to 2 lanes\0A\00", [44 x i8] zeroinitializer }, align 32
@tc_get_display_props.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.46, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DPCD rev: %d.%d, rate: %s, lanes: %d, framing: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1.62Gbps\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.7Gbps\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enhanced\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@tc_get_display_props.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.51, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Downspread: %s, scrambler: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.5%\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.0%\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@tc_get_display_props.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.56, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Display ASSR: %d, TC358767 ASSR: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tc_get_display_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.6, i32 727, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read DPCD: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tc_get_display_props._entry_ptr = internal global ptr @tc_get_display_props._entry, section ".printk_index", align 4
@tc_bridge_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 1269, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"main link stream stop error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc_bridge_disable\00", [46 x i8] zeroinitializer }, align 32
@tc_bridge_disable._entry_ptr = internal global ptr @tc_bridge_disable._entry, section ".printk_index", align 4
@tc_bridge_disable._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.6, i32 1273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"main link disable error: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tc_bridge_disable._entry_ptr.62 = internal global ptr @tc_bridge_disable._entry.60, section ".printk_index", align 4
@tc_stream_disable.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc_stream_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disable video stream\0A\00", [42 x i8] zeroinitializer }, align 32
@tc_main_link_disable.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.6, ptr @.str.66, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc_main_link_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link disable\0A\00", [18 x i8] zeroinitializer }, align 32
@tc_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.67, ptr @.str.6, i32 1244, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc_bridge_enable\00", [47 x i8] zeroinitializer }, align 32
@tc_bridge_enable._entry_ptr = internal global ptr @tc_bridge_enable._entry, section ".printk_index", align 4
@tc_bridge_enable._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.6, i32 1250, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"main link enable error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tc_bridge_enable._entry_ptr.70 = internal global ptr @tc_bridge_enable._entry.68, section ".printk_index", align 4
@tc_bridge_enable._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.6, i32 1256, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"main link stream start error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tc_bridge_enable._entry_ptr.73 = internal global ptr @tc_bridge_enable._entry.71, section ".printk_index", align 4
@tc_main_link_enable.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.6, ptr @.str.75, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc_main_link_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link enable\0A\00", [19 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.6, i32 953, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout waiting for phy become ready\00", [59 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr = internal global ptr @tc_main_link_enable._entry, section ".printk_index", align 4
@tc_main_link_enable.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.6, ptr @.str.77, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Trying to set display to ASSR: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tc_main_link_enable.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.6, ptr @.str.78, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed to switch display ASSR to %d, falling back to unscrambled mode\0A\00", [57 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.6, i32 1054, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link training phase 1 failed: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.81 = internal global ptr @tc_main_link_enable._entry.79, section ".printk_index", align 4
@training_pattern1_errors = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.125, ptr @.str.125], [32 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.6, i32 1081, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link training phase 2 failed: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.84 = internal global ptr @tc_main_link_enable._entry.82, section ".printk_index", align 4
@training_pattern2_errors = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.126, ptr @.str.124, ptr @.str.125, ptr @.str.125, ptr @.str.125], [32 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.74, ptr @.str.6, i32 1117, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Lane 0 failed: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.87 = internal global ptr @tc_main_link_enable._entry.85, section ".printk_index", align 4
@tc_main_link_enable._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.74, ptr @.str.6, i32 1125, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Lane 1 failed: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.90 = internal global ptr @tc_main_link_enable._entry.88, section ".printk_index", align 4
@tc_main_link_enable._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.74, ptr @.str.6, i32 1130, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interlane align failed\0A\00", [40 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.93 = internal global ptr @tc_main_link_enable._entry.91, section ".printk_index", align 4
@tc_main_link_enable._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.74, ptr @.str.6, i32 1136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0202 LANE0_1_STATUS:            0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.96 = internal global ptr @tc_main_link_enable._entry.94, section ".printk_index", align 4
@tc_main_link_enable._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.74, ptr @.str.6, i32 1137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0203 LANE2_3_STATUS             0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.99 = internal global ptr @tc_main_link_enable._entry.97, section ".printk_index", align 4
@tc_main_link_enable._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.74, ptr @.str.6, i32 1138, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0204 LANE_ALIGN_STATUS_UPDATED: 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.102 = internal global ptr @tc_main_link_enable._entry.100, section ".printk_index", align 4
@tc_main_link_enable._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.74, ptr @.str.6, i32 1139, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0205 SINK_STATUS:               0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.105 = internal global ptr @tc_main_link_enable._entry.103, section ".printk_index", align 4
@tc_main_link_enable._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.74, ptr @.str.6, i32 1140, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0206 ADJUST_REQUEST_LANE0_1:    0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.108 = internal global ptr @tc_main_link_enable._entry.106, section ".printk_index", align 4
@tc_main_link_enable._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.74, ptr @.str.6, i32 1141, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x0207 ADJUST_REQUEST_LANE2_3:    0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.111 = internal global ptr @tc_main_link_enable._entry.109, section ".printk_index", align 4
@tc_main_link_enable._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.74, ptr @.str.6, i32 1147, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read DPCD: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.114 = internal global ptr @tc_main_link_enable._entry.112, section ".printk_index", align 4
@tc_main_link_enable._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.74, ptr @.str.6, i32 1150, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to write DPCD: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tc_main_link_enable._entry_ptr.117 = internal global ptr @tc_main_link_enable._entry.115, section ".printk_index", align 4
@tc_wait_link_training._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.6, i32 880, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Link training timeout waiting for LT_LOOPDONE!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tc_wait_link_training\00", [42 x i8] zeroinitializer }, align 32
@tc_wait_link_training._entry_ptr = internal global ptr @tc_wait_link_training._entry, section ".printk_index", align 4
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No errors\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aux write error\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Aux read error\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Max voltage reached error\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Loop counter expired error\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"res\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock recovery failed error\00", [36 x i8] zeroinitializer }, align 32
@tc_stream_enable.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.6, ptr @.str.128, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc_stream_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable video stream\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.tc_pxl_pll_en.ext_div = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4
@tc_pxl_pll_en.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.6, ptr @.str.130, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc_pxl_pll_en\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL: requested %d pixelclock, ref %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tc_pxl_pll_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.6, i32 525, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to calc clock for %d pixelclock\0A\00", [56 x i8] zeroinitializer }, align 32
@tc_pxl_pll_en._entry_ptr = internal global ptr @tc_pxl_pll_en._entry, section ".printk_index", align 4
@tc_pxl_pll_en.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.6, ptr @.str.132, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PLL: got %d, delta %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tc_pxl_pll_en.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.6, ptr @.str.133, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PLL: %d / %d / %d * %d / %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tc_set_video_mode.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.6, ptr @.str.135, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc_set_video_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set mode %dx%d\0A\00", [16 x i8] zeroinitializer }, align 32
@tc_set_video_mode.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.6, ptr @.str.136, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H margin %d,%d sync %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tc_set_video_mode.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.6, ptr @.str.137, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"V margin %d,%d sync %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tc_set_video_mode.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.6, ptr @.str.138, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"total: %dx%d\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 26113, i64 26115]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.142 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 1280, i64 1744, i64 1748]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 162000, i64 270000]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"tc_test_pattern\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 229, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"tc358767_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1733, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1735, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"tc358767_of_ids\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1727, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"tc358767_i2c_ids\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1721, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1584, i32 45 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1594, i32 48 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1603, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1606, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"tc_regmap_config\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1495, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1610, i32 15 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1613, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1617, i32 43 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1623, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1635, i32 7 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1637, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1646, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1651, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1694, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"tc_bridge_funcs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1456, i32 38 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"tc_volatile_table\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1483, i32 41 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"tc_volatile_ranges\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1473, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1527, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1540, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 644, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 661, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 609, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [26 x i8] c"tc_connector_helper_funcs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1352, i32 48 }
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"tc_connector_funcs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1389, i32 41 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1335, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 683, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 690, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 712, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 718, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 721, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 727, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1269, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1273, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1226, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1158, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1244, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1250, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1256, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 900, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 953, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 970, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 983, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1053, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [25 x i8] c"training_pattern1_errors\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 412, i32 27 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1080, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [25 x i8] c"training_pattern2_errors\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 421, i32 27 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1117, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1125, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1130, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1136, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1137, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1138, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1139, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1140, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1141, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1147, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1150, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 880, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 413, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 414, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 415, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 416, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 417, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 418, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 425, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1172, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 476, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 524, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 529, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 531, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 759, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 761, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 763, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/tc358767.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 765, i32 2 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author470, ptr @__UNIQUE_ID_description471, ptr @__UNIQUE_ID_file472, ptr @__UNIQUE_ID_license473, ptr @__UNIQUE_ID_testtype307, ptr @__exitcall_tc358767_driver_exit, ptr @__initcall__kmod_tc358767__469_1742_tc358767_driver_init6, ptr @__param_test, ptr @tc358767_driver_exit, ptr @tc_aux_link_setup._entry, ptr @tc_aux_link_setup._entry.36, ptr @tc_aux_link_setup._entry_ptr, ptr @tc_aux_link_setup._entry_ptr.38, ptr @tc_bridge_disable._entry, ptr @tc_bridge_disable._entry.60, ptr @tc_bridge_disable._entry_ptr, ptr @tc_bridge_disable._entry_ptr.62, ptr @tc_bridge_enable._entry, ptr @tc_bridge_enable._entry.68, ptr @tc_bridge_enable._entry.71, ptr @tc_bridge_enable._entry_ptr, ptr @tc_bridge_enable._entry_ptr.70, ptr @tc_bridge_enable._entry_ptr.73, ptr @tc_connector_get_modes._entry, ptr @tc_connector_get_modes._entry_ptr, ptr @tc_get_display_props._entry, ptr @tc_get_display_props._entry_ptr, ptr @tc_irq_handler._entry, ptr @tc_irq_handler._entry_ptr, ptr @tc_main_link_enable._entry, ptr @tc_main_link_enable._entry.100, ptr @tc_main_link_enable._entry.103, ptr @tc_main_link_enable._entry.106, ptr @tc_main_link_enable._entry.109, ptr @tc_main_link_enable._entry.112, ptr @tc_main_link_enable._entry.115, ptr @tc_main_link_enable._entry.79, ptr @tc_main_link_enable._entry.82, ptr @tc_main_link_enable._entry.85, ptr @tc_main_link_enable._entry.88, ptr @tc_main_link_enable._entry.91, ptr @tc_main_link_enable._entry.94, ptr @tc_main_link_enable._entry.97, ptr @tc_main_link_enable._entry_ptr, ptr @tc_main_link_enable._entry_ptr.102, ptr @tc_main_link_enable._entry_ptr.105, ptr @tc_main_link_enable._entry_ptr.108, ptr @tc_main_link_enable._entry_ptr.111, ptr @tc_main_link_enable._entry_ptr.114, ptr @tc_main_link_enable._entry_ptr.117, ptr @tc_main_link_enable._entry_ptr.81, ptr @tc_main_link_enable._entry_ptr.84, ptr @tc_main_link_enable._entry_ptr.87, ptr @tc_main_link_enable._entry_ptr.90, ptr @tc_main_link_enable._entry_ptr.93, ptr @tc_main_link_enable._entry_ptr.96, ptr @tc_main_link_enable._entry_ptr.99, ptr @tc_probe._entry, ptr @tc_probe._entry.10, ptr @tc_probe._entry.14, ptr @tc_probe._entry.18, ptr @tc_probe._entry.21, ptr @tc_probe._entry.24, ptr @tc_probe._entry_ptr, ptr @tc_probe._entry_ptr.12, ptr @tc_probe._entry_ptr.16, ptr @tc_probe._entry_ptr.20, ptr @tc_probe._entry_ptr.23, ptr @tc_probe._entry_ptr.26, ptr @tc_pxl_pll_en._entry, ptr @tc_pxl_pll_en._entry_ptr, ptr @tc_set_syspllparam._entry, ptr @tc_set_syspllparam._entry_ptr, ptr @tc_wait_link_training._entry, ptr @tc_wait_link_training._entry_ptr, ptr @tc_test_pattern, ptr @tc358767_driver, ptr @.str, ptr @tc358767_of_ids, ptr @tc358767_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tc_probe._key, ptr @tc_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @tc_bridge_funcs, ptr @tc_volatile_table, ptr @tc_volatile_ranges, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @tc_connector_helper_funcs, ptr @tc_connector_funcs, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @training_pattern1_errors, ptr @.str.83, ptr @training_pattern2_errors, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_test_pattern to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358767_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358767_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358767_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_volatile_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_aux_link_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_aux_link_setup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_set_syspllparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_connector_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_get_display_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_disable._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_enable._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_bridge_enable._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @training_pattern1_errors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @training_pattern2_errors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_main_link_enable._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_wait_link_training._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_pxl_pll_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358767_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc358767_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358767_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @tc358767_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #11
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !295
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3240, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup175_crit_edge, label %if.end

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #11
  %4 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.end.cleanup175_crit_edge [
    i32 0, label %if.end.if.end6_crit_edge
    i32 -19, label %if.end.if.end6_crit_edge293
  ]

if.end.if.end6_crit_edge293:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.cleanup175_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge293
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end6.if.end17_crit_edge, label %if.then8

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %call9 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef nonnull %6) #11
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call9 to i32
  br label %cleanup175

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %panel_bridge14 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %panel_bridge14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %panel_bridge14, align 8
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %if.end6.if.end17_crit_edge
  %.sink = phi i32 [ 14, %cleanup ], [ 10, %if.end6.if.end17_crit_edge ]
  %type = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %type, align 8
  %call18 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #11
  %sd_gpio = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %sd_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %sd_gpio, align 8
  %cmp.i282 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call18 to i32
  br label %cleanup175

if.end24:                                         ; preds = %if.end17
  %tobool26.not = icmp eq ptr %call18, null
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %call18, i32 noundef 0) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %call30 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #11
  %reset_gpio = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %reset_gpio, align 4
  %cmp.i283 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call30 to i32
  br label %cleanup175

if.end36:                                         ; preds = %if.end29
  %tobool38.not = icmp eq ptr %call30, null
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %call30, i32 noundef 1) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %call42 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %refclk = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 12
  %14 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call42, ptr %refclk, align 8
  %cmp.i284 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %15) #14
  br label %cleanup175

if.end48:                                         ; preds = %if.end41
  %call49 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tc_regmap_config, ptr noundef nonnull @tc_probe._key, ptr noundef nonnull @.str.9) #11
  %regmap = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call49, ptr %regmap, align 4
  %cmp.i285 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then52, label %if.end58

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %17) #14
  br label %cleanup175

if.end58:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %hpd_pin = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 14
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef %hpd_pin, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool61.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool61.not, label %if.else64, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -19, ptr %hpd_pin, align 8
  br label %if.end74

if.else64:                                        ; preds = %if.end58
  %21 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %do.end72, label %if.else64.if.end74_crit_edge

if.else64.if.end74_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.end72:                                         ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #14
  br label %cleanup175

if.end74:                                         ; preds = %if.else64.if.end74_crit_edge, %if.then62
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp75 = icmp sgt i32 %25, 0
  br i1 %cmp75, label %if.then76, label %if.end74.if.end87_crit_edge

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then76:                                        ; preds = %if.end74
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call78 = call i32 @regmap_write(ptr noundef %27, i32 noundef 1376, i32 noundef 65536) #11
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call80 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %29, ptr noundef null, ptr noundef nonnull @tc_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #14
  br label %cleanup175

if.end86:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %have_irq = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 13
  %30 = ptrtoint ptr %have_irq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %have_irq, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end74.if.end87_crit_edge
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %rev = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 8
  %call89 = call i32 @regmap_read(ptr noundef %32, i32 noundef 1280, ptr noundef %rev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.22, i32 noundef %call89) #14
  br label %cleanup175

if.end96:                                         ; preds = %if.end87
  %35 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rev, align 8
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %36, label %do.end105 [
    i32 26113, label %if.end96.if.end108_crit_edge
    i32 26115, label %if.end96.if.end108_crit_edge294
  ]

if.end96.if.end108_crit_edge294:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

do.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.25, i32 noundef %36) #14
  br label %cleanup175

if.end108:                                        ; preds = %if.end96.if.end108_crit_edge, %if.end96.if.end108_crit_edge294
  call void @__sanitizer_cov_trace_const_cmp4(i32 26113, i32 %36)
  %cmp110 = icmp eq i32 %36, 26113
  %conv111 = zext i1 %cmp110 to i8
  %assr = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %assr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv111, ptr %assr, align 4
  %41 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reset_gpio, align 4
  %tobool113.not = icmp eq ptr %42, null
  br i1 %tobool113.not, label %if.then114, label %if.end108.if.end119_crit_edge

if.end108.if.end119_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then114:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i286 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 1292, i32 noundef 316, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call.i287 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 1292, i32 noundef 316, i32 noundef 316, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end108.if.end119_crit_edge
  %47 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp121 = icmp sgt i32 %48, -1
  br i1 %cmp121, label %if.then123, label %if.end119.if.end150_crit_edge

if.end119.if.end150_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp125 = icmp eq i32 %48, 0
  %cond = select i1 %cmp125, i32 1412, i32 1416
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %51 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %refclk, align 8
  %call138 = call i32 @clk_get_rate(ptr noundef %52) #11
  %mul = shl i32 %call138, 1
  %div = udiv i32 %mul, 1000
  %call139 = call i32 @regmap_write(ptr noundef %50, i32 noundef %cond, i32 noundef %div) #11
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hpd_pin, align 8
  %shl142 = shl nuw i32 1, %56
  %call143 = call i32 @regmap_write(ptr noundef %54, i32 noundef 1344, i32 noundef %shl142) #11
  %have_irq144 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 13
  %57 = ptrtoint ptr %have_irq144 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %have_irq144, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool145.not = icmp eq i8 %58, 0
  br i1 %tobool145.not, label %if.then123.if.end150_crit_edge, label %if.then146

if.then123.if.end150_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then146:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  %or = select i1 %cmp125, i32 12, i32 3072
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i288 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 1376, i32 noundef %or, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.then123.if.end150_crit_edge, %if.end119.if.end150_crit_edge
  %61 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %refclk, align 8
  %call.i.i289 = call i32 @clk_get_rate(ptr noundef %62) #11
  %63 = zext i32 %call.i.i289 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i.i289, label %tc_set_syspllparam.exit.thread.i [
    i32 38400000, label %if.end150.tc_set_syspllparam.exit.i_crit_edge
    i32 26000000, label %sw.bb1.i.i
    i32 19200000, label %sw.bb3.i.i
    i32 13000000, label %sw.bb5.i.i
  ]

if.end150.tc_set_syspllparam.exit.i_crit_edge:    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit.i

sw.bb1.i.i:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit.i

sw.bb3.i.i:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit.i

sw.bb5.i.i:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit.i

tc_set_syspllparam.exit.thread.i:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.39, i32 noundef %call.i.i289) #14
  br label %do.end27.i

tc_set_syspllparam.exit.i:                        ; preds = %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %if.end150.tc_set_syspllparam.exit.i_crit_edge
  %pllparam.0.i.i = phi i32 [ 769, %sw.bb5.i.i ], [ 257, %sw.bb3.i.i ], [ 513, %sw.bb1.i.i ], [ 1, %if.end150.tc_set_syspllparam.exit.i_crit_edge ]
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call7.i.i = call i32 @regmap_write(ptr noundef %67, i32 noundef 2328, i32 noundef %pllparam.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tc_set_syspllparam.exit.i.do.end27.i_crit_edge

tc_set_syspllparam.exit.i.do.end27.i_crit_edge:   ; preds = %tc_set_syspllparam.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

if.end.i:                                         ; preds = %tc_set_syspllparam.exit.i
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 2048, i32 noundef 50331650) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.end27.i_crit_edge

if.end.i.do.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

if.end4.i:                                        ; preds = %if.end.i
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i49.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 2304, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i, label %if.end4.i.do.end27.i_crit_edge

if.end4.i.do.end27.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #11
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i51.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 2308, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end12.i, label %if.end8.i.do.end27.i_crit_edge

if.end8.i.do.end27.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #11
  %call13.i = call fastcc i32 @tc_poll_timeout(ptr noundef nonnull %call.i, i32 noundef 2048, i32 noundef 65536, i32 noundef 65536, i32 noundef 100) #11
  %74 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call13.i, label %if.end12.i.do.end27.i_crit_edge [
    i32 -110, label %do.end.i
    i32 0, label %if.end18.i
  ]

if.end12.i.do.end27.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.34) #14
  br label %cleanup175

if.end18.i:                                       ; preds = %if.end12.i
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %78, i32 noundef 1636, i32 noundef 67135) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end154, label %if.end18.i.do.end27.i_crit_edge

if.end18.i.do.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.end18.i.do.end27.i_crit_edge, %if.end12.i.do.end27.i_crit_edge, %if.end8.i.do.end27.i_crit_edge, %if.end4.i.do.end27.i_crit_edge, %if.end.i.do.end27.i_crit_edge, %tc_set_syspllparam.exit.i.do.end27.i_crit_edge, %tc_set_syspllparam.exit.thread.i
  %ret.0.i = phi i32 [ %call7.i.i, %tc_set_syspllparam.exit.i.do.end27.i_crit_edge ], [ %call1.i, %if.end.i.do.end27.i_crit_edge ], [ %call21.i, %if.end18.i.do.end27.i_crit_edge ], [ %call13.i, %if.end12.i.do.end27.i_crit_edge ], [ -22, %tc_set_syspllparam.exit.thread.i ], [ %call.i49.i, %if.end4.i.do.end27.i_crit_edge ], [ %call.i51.i, %if.end8.i.do.end27.i_crit_edge ]
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.37, i32 noundef %ret.0.i) #14
  br label %cleanup175

if.end154:                                        ; preds = %if.end18.i
  %aux = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2
  %81 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.27, ptr %aux, align 8
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 8
  %dev157 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %dev157 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %dev157, align 8
  %transfer = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 2, i32 8
  %85 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tc_aux_transfer, ptr %transfer, align 8
  call void @drm_dp_aux_init(ptr noundef %aux) #11
  %bridge160 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3
  %funcs = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3, i32 7
  %86 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tc_bridge_funcs, ptr %funcs, align 4
  %87 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp162 = icmp sgt i32 %88, -1
  br i1 %cmp162, label %if.then164, label %if.end154.if.end167_crit_edge

if.end154.if.end167_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then164:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3, i32 9
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ops, align 4
  %or166 = or i32 %90, 1
  store i32 %or166, ptr %ops, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end154.if.end167_crit_edge
  %ops169 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3, i32 9
  %91 = ptrtoint ptr %ops169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ops169, align 4
  %or170 = or i32 %92, 2
  store i32 %or170, ptr %ops169, align 4
  %93 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node, align 8
  %of_node173 = getelementptr inbounds %struct.tc_data, ptr %call.i, i32 0, i32 3, i32 4
  %95 = ptrtoint ptr %of_node173 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %of_node173, align 4
  call void @drm_bridge_add(ptr noundef %bridge160) #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup175

cleanup175:                                       ; preds = %if.end167, %do.end27.i, %do.end.i, %do.end105, %do.end94, %do.end85, %do.end72, %if.then52, %if.then45, %if.then33, %if.then21, %cleanup.thread, %if.end.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.1 = phi i32 [ %11, %if.then21 ], [ %13, %if.then33 ], [ %15, %if.then45 ], [ %17, %if.then52 ], [ %call80, %do.end85 ], [ %call89, %do.end94 ], [ -22, %do.end105 ], [ 0, %if.end167 ], [ 0, %do.end72 ], [ -12, %entry.cleanup175_crit_edge ], [ %call3, %if.end.cleanup175_crit_edge ], [ %7, %cleanup.thread ], [ -110, %do.end.i ], [ %ret.0.i, %do.end27.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.tc_data, ptr %1, i32 0, i32 3
  tail call void @drm_bridge_remove(ptr noundef %bridge) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !295
  %regmap = getelementptr inbounds %struct.tc_data, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1380, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #11
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stat, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1288, ptr noundef nonnull %stat) #11
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 8
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %hpd_pin = getelementptr inbounds %struct.tc_data, ptr %arg, i32 0, i32 14
  %12 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %land.lhs.true, label %if.end8.if.end45_crit_edge

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end8
  %dev9 = getelementptr inbounds %struct.tc_data, ptr %arg, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %land.lhs.true.if.end45_crit_edge, label %if.then11

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then11:                                        ; preds = %land.lhs.true
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13 = icmp eq i32 %13, 0
  %shl = select i1 %cmp13, i32 4, i32 1024
  %and14 = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %shl19 = select i1 %cmp13, i32 8, i32 2048
  %and20 = and i32 %17, %shl19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_irq_handler.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_irq_handler, %if.then29)) #11
          to label %do.end38 [label %if.then29], !srcloc !297

if.then29:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg, align 8
  %20 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hpd_pin, align 8
  %cond33 = select i1 %tobool15.not, ptr @.str.32, ptr @.str.31
  %cond35 = select i1 %tobool21.not, ptr @.str.32, ptr @.str.33
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_irq_handler.__UNIQUE_ID_ddebug468, ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %21, ptr noundef nonnull %cond33, ptr noundef nonnull %cond35) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %if.then11
  %22 = select i1 %tobool15.not, i1 %tobool21.not, i1 false
  br i1 %22, label %do.end38.if.end45_crit_edge, label %if.then41

do.end38.if.end45_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then41:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9, align 4
  call void @drm_kms_helper_hotplug_event(ptr noundef %24) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %do.end38.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %if.end8.if.end45_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %call47 = call i32 @regmap_write(ptr noundef %26, i32 noundef 1380, i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end45 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_aux_transfer(ptr nocapture noundef readonly %aux, ptr nocapture noundef %msg) #2 align 64 {
entry:
  %auxwdata.i = alloca [4 x i32], align 4
  %auxstatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %aux, i32 -8
  %size1 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 15)
  %request2 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %request2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %request2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auxstatus) #11
  %5 = ptrtoint ptr %auxstatus to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %auxstatus, align 4, !annotation !295
  %call.i = tail call fastcc i32 @tc_poll_timeout(ptr noundef %add.ptr.i, i32 noundef 1676, i32 noundef 1, i32 noundef 0, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = and i8 %4, -5
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 9, label %if.end.sw.epilog_crit_edge
    i8 1, label %if.end.sw.epilog_crit_edge121
    i8 8, label %if.end.sw.bb6_crit_edge
    i8 0, label %if.end.sw.bb6_crit_edge122
  ]

if.end.sw.bb6_crit_edge122:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.sw.epilog_crit_edge121:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then8

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb6
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %auxwdata.i) #11
  %add.i = add nuw nsw i32 %2, 3
  %and.i = and i32 %add.i, 28
  %10 = sub nuw nsw i32 16, %2
  %11 = getelementptr i8, ptr %auxwdata.i, i32 %2
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %auxwdata.i, ptr %9, i32 %2)
  %regmap.i = getelementptr i8, ptr %aux, i32 -4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i118 = call i32 @regmap_raw_write(ptr noundef %15, i32 noundef 1644, ptr noundef nonnull %auxwdata.i, i32 noundef %and.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i = icmp eq i32 %call.i118, 0
  %size.call.i = select i1 %tobool.not.i, i32 %2, i32 %call.i118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %auxwdata.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.call.i)
  %cmp10 = icmp slt i32 %size.call.i, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.sw.epilog_crit_edge

if.then8.sw.epilog_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.then8.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge121
  %regmap = getelementptr i8, ptr %aux, i32 -4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  %call15 = call i32 @regmap_write(ptr noundef %17, i32 noundef 1640, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %request2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %request2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i119 = icmp eq i32 %2, 0
  %sub.i = shl nuw nsw i32 %2, 8
  %shl.i = add nuw nsw i32 %sub.i, 3840
  %and17.i = and i32 %shl.i, 3840
  %and17.pn.i = select i1 %tobool.not.i119, i32 16, i32 %and17.i
  %conv.i = zext i8 %23 to i32
  %auxcfg0.0.i = or i32 %and17.pn.i, %conv.i
  %call21 = call i32 @regmap_write(ptr noundef %21, i32 noundef 1632, i32 noundef %auxcfg0.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call.i120 = call fastcc i32 @tc_poll_timeout(ptr noundef %add.ptr.i, i32 noundef 1676, i32 noundef 1, i32 noundef 0, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool26.not = icmp eq i32 %call.i120, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %25, i32 noundef 1676, ptr noundef nonnull %auxstatus) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %auxstatus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %auxstatus, align 4
  %and34 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %and53 = lshr i32 %27, 8
  %shr = and i32 %and53, 255
  %size.0 = select i1 %tobool.not.i119, i32 0, i32 %shr
  %28 = trunc i32 %27 to i8
  %29 = lshr i8 %28, 4
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %30 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %reply, align 1
  %31 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %6, label %if.end37.cleanup_crit_edge [
    i8 9, label %if.end37.sw.bb75_crit_edge
    i8 1, label %if.end37.sw.bb75_crit_edge123
  ]

if.end37.sw.bb75_crit_edge123:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb75

if.end37.sw.bb75_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb75

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb75:                                          ; preds = %if.end37.sw.bb75_crit_edge, %if.end37.sw.bb75_crit_edge123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool76.not = icmp eq i32 %size.0, 0
  br i1 %tobool76.not, label %sw.bb75.cleanup_crit_edge, label %if.then77

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then77:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #13
  %buffer78 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %32 = ptrtoint ptr %buffer78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer78, align 4
  %call79 = call fastcc i32 @tc_aux_read_data(ptr noundef %add.ptr.i, ptr noundef %33, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %sw.bb75.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call79, %if.then77 ], [ %call.i, %entry.cleanup_crit_edge ], [ %size.call.i, %if.then8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call15, %sw.epilog.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call.i120, %if.end24.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ -110, %if.end33.cleanup_crit_edge ], [ 0, %sw.bb75.cleanup_crit_edge ], [ %size.0, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auxstatus) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %reg, label %land.rhs [
    i32 1280, label %entry.land.end_crit_edge
    i32 1744, label %entry.land.end_crit_edge5
    i32 1748, label %entry.land.end_crit_edge6
  ]

entry.land.end_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

entry.land.end_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge, %entry.land.end_crit_edge5, %entry.land.end_crit_edge6
  %1 = phi i1 [ false, %entry.land.end_crit_edge ], [ true, %land.rhs ], [ false, %entry.land.end_crit_edge5 ], [ false, %entry.land.end_crit_edge6 ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296, i32 %reg)
  %cmp = icmp ne i32 %reg, 1296
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_pllupdate(ptr nocapture noundef readonly %tc, i32 noundef %pllctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %pllctrl, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_poll_timeout(ptr nocapture noundef readonly %tc, i32 noundef %addr, i32 noundef %cond_mask, i32 noundef %cond_value, i32 noundef %sleep_us) unnamed_addr #6 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !295
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 294) #11
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call814 = call i32 @regmap_read(ptr noundef %2, i32 noundef %addr, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call814)
  %tobool.not15 = icmp eq i32 %call814, 0
  br i1 %tobool.not15, label %lor.lhs.false.lr.ph, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %shr = lshr i32 %sleep_us, 2
  %add = add nuw nsw i32 %shr, 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, %cond_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond_value)
  %cmp9 = icmp eq i32 %and, %cond_value
  br i1 %cmp9, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef %add, i32 noundef %sleep_us, i32 noundef 2) #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %addr, ptr noundef nonnull %val) #11
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.lor.end_crit_edge

if.then21.lor.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef %addr, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, %cond_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %cond_value)
  %cmp25 = icmp eq i32 %and24, %cond_value
  %phi.sel = select i1 %cmp25, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then21.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool23.not5 = phi i32 [ %call18, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call814, %entry.lor.end_crit_edge ], [ %call8, %if.then21.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %tobool23.not5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_aux_read_data(ptr nocapture noundef readonly %tc, ptr nocapture noundef writeonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %auxrdata = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %auxrdata) #11
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %0 = call ptr @memset(ptr %auxrdata, i32 255, i32 16)
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_raw_read(ptr noundef %2, i32 noundef 1660, ptr noundef nonnull %auxrdata, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call ptr @memcpy(ptr %data, ptr %auxrdata, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %auxrdata) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  %bus_format = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_format) #11
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4106, ptr %bus_format, align 4
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 280
  %3 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %panel_bridge, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %encoder = getelementptr i8, ptr %bridge, i32 128
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 8
  %or = or i32 %flags, 1
  %call4 = tail call i32 @drm_bridge_attach(ptr noundef %6, ptr noundef nonnull %4, ptr noundef %bridge, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %aux = getelementptr i8, ptr %bridge, i32 -1736
  %drm_dev = getelementptr i8, ptr %bridge, i32 -364
  %7 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %drm_dev, align 4
  %call12 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %connector = getelementptr i8, ptr %bridge, i32 288
  %helper_private.i = getelementptr i8, ptr %bridge, i32 996
  %8 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tc_connector_helper_funcs, ptr %helper_private.i, align 4
  %type = getelementptr i8, ptr %bridge, i32 168
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  %call17 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef %connector, ptr noundef nonnull @tc_connector_funcs, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %aux_unregister

if.end20:                                         ; preds = %if.end14
  %hpd_pin = getelementptr i8, ptr %bridge, i32 1488
  %11 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp21 = icmp sgt i32 %12, -1
  br i1 %cmp21, label %if.then22, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %have_irq = getelementptr i8, ptr %bridge, i32 1484
  %13 = ptrtoint ptr %have_irq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %have_irq, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  %polled27 = getelementptr i8, ptr %bridge, i32 988
  %. = select i1 %tobool23.not, i8 6, i8 1
  %15 = ptrtoint ptr %polled27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %., ptr %polled27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end20.if.end29_crit_edge
  %display_info = getelementptr i8, ptr %bridge, i32 480
  %call31 = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull %bus_format, i32 noundef 1) #11
  %bus_flags = getelementptr i8, ptr %bridge, i32 512
  %16 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 138, ptr %bus_flags, align 8
  %encoder36 = getelementptr i8, ptr %bridge, i32 128
  %17 = ptrtoint ptr %encoder36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder36, align 8
  %call37 = call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %18) #11
  br label %cleanup

aux_unregister:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #11
  br label %cleanup

cleanup:                                          ; preds = %aux_unregister, %if.end29, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %aux_unregister ], [ 0, %if.end29 ], [ %call4, %if.then.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr i8, ptr %bridge, i32 -1736
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000, i32 %1)
  %cmp = icmp sgt i32 %1, 154000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %1, 24
  %div13 = lshr exact i32 %mul, 3
  %num_lanes = getelementptr i8, ptr %bridge, i32 1348
  %2 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_lanes, align 4
  %conv = zext i8 %3 to i32
  %rate = getelementptr i8, ptr %bridge, i32 1344
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 8
  %mul3 = mul i32 %5, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %mul3)
  %cmp4 = icmp ugt i32 %div13, %mul3
  %. = select i1 %cmp4, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_bridge_mode_fixup(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef writeonly %adj) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %flags1 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 11
  %or = and i32 %1, -16
  %and = or i32 %or, 10
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %flags1, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1744
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_stream_disable.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_bridge_disable, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_stream_disable.__UNIQUE_ID_ddebug467, ptr noundef %1, ptr noundef nonnull @.str.64) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr i8, ptr %bridge, i32 -1740
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1536, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %tc_stream_disable.exit.thread, label %tc_stream_disable.exit

tc_stream_disable.exit.thread:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2312, i32 noundef 2) #11
  br label %if.end

tc_stream_disable.exit:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %tc_stream_disable.exit.if.end_crit_edge

tc_stream_disable.exit.if.end_crit_edge:          ; preds = %tc_stream_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %tc_stream_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, i32 noundef %call.i.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %tc_stream_disable.exit.if.end_crit_edge, %tc_stream_disable.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_main_link_disable.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_bridge_disable, %if.then.i16)) #11
          to label %do.end.i19 [label %if.then.i16], !srcloc !297

if.then.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_main_link_disable.__UNIQUE_ID_ddebug465, ptr noundef %9, ptr noundef nonnull @.str.66) #11
  br label %do.end.i19

do.end.i19:                                       ; preds = %if.then.i16, %if.end
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 1696, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i18 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i18, label %if.end6.i20, label %do.end.i19.tc_main_link_disable.exit_crit_edge

do.end.i19.tc_main_link_disable.exit_crit_edge:   ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_main_link_disable.exit

if.end6.i20:                                      ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 1536, i32 noundef 0) #11
  br label %tc_main_link_disable.exit

tc_main_link_disable.exit:                        ; preds = %if.end6.i20, %do.end.i19.tc_main_link_disable.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end6.i20 ], [ %call3.i, %do.end.i19.tc_main_link_disable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %do.end7, label %tc_main_link_disable.exit.if.end9_crit_edge

tc_main_link_disable.exit.if.end9_crit_edge:      ; preds = %tc_main_link_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end7:                                          ; preds = %tc_main_link_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %tc_main_link_disable.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tc_bridge_mode_set(ptr nocapture noundef writeonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adj) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr i8, ptr %bridge, i32 1352
  %0 = call ptr @memcpy(ptr %mode1, ptr %mode, i32 112)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1744
  %call1 = tail call fastcc i32 @tc_get_display_props(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @tc_main_link_enable(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %call2) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @tc_stream_enable(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %call10) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_main_link_disable.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_bridge_enable, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_main_link_disable.__UNIQUE_ID_ddebug465, ptr noundef %7, ptr noundef nonnull @.str.66) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end15
  %regmap.i = getelementptr i8, ptr %bridge, i32 -1740
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 1696, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 1536, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %do.end.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_bridge_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !295
  %regmap = getelementptr i8, ptr %bridge, i32 -1740
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1356, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %hpd_pin = getelementptr i8, ptr %bridge, i32 1488
  %5 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hpd_pin, align 8
  %shl = shl nuw i32 1, %6
  %and = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %. = select i1 %tobool2.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tc_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr i8, ptr %bridge, i32 -1728
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #11
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -2032
  %call1 = tail call fastcc i32 @tc_get_display_props(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel_bridge = getelementptr i8, ptr %connector, i32 -8
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @drm_bridge_get_modes(ptr noundef nonnull %3, ptr noundef %connector) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then2.cleanup_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ddc.i = getelementptr i8, ptr %connector, i32 -2016
  %call1.i = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc.i) #11
  %call10 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call1.i) #11
  tail call void @kfree(ptr noundef %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call10, %if.end8 ], [ %call4, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_get_display_props(ptr noundef %tc) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #11
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !295
  %aux = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 2
  %link = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6
  %call = tail call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 0, ptr noundef %link, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end156_crit_edge, label %if.end

entry.do.end156_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link, align 8
  %arrayidx.i = getelementptr %struct.tc_data, ptr %tc, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %4) #11
  %arrayidx.i208 = getelementptr %struct.tc_data, ptr %tc, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i208, align 1
  %7 = and i8 %6, 31
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call.i, label %do.body [
    i32 162000, label %if.end.if.end19_crit_edge
    i32 270000, label %if.end19.fold.split
  ]

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_get_display_props.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_get_display_props, %if.then17)) #11
          to label %if.end19 [label %if.then17], !srcloc !297

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_get_display_props.__UNIQUE_ID_ddebug328, ptr noundef %10, ptr noundef nonnull @.str.44) #11
  br label %if.end19

if.end19.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.end19.fold.split, %if.then17, %do.body, %if.end.if.end19_crit_edge
  %rate.0 = phi i32 [ %call.i, %if.end.if.end19_crit_edge ], [ 270000, %if.end19.fold.split ], [ 270000, %if.then17 ], [ 270000, %do.body ]
  %rate21 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %rate21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rate.0, ptr %rate21, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp22 = icmp ugt i8 %7, 2
  br i1 %cmp22, label %do.body25, label %if.end19.if.end42_crit_edge

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_get_display_props.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_get_display_props, %if.then37)) #11
          to label %if.end42 [label %if.then37], !srcloc !297

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_get_display_props.__UNIQUE_ID_ddebug329, ptr noundef %13, ptr noundef nonnull @.str.45) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body25, %if.end19.if.end42_crit_edge
  %num_lanes.0 = phi i8 [ %7, %if.end19.if.end42_crit_edge ], [ 2, %if.then37 ], [ 2, %do.body25 ]
  %num_lanes44 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %num_lanes44 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %num_lanes.0, ptr %num_lanes44, align 4
  %call.i209 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 3, ptr noundef nonnull %reg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp47 = icmp slt i32 %call.i209, 0
  br i1 %cmp47, label %if.end42.do.end156_crit_edge, label %if.end50

if.end42.do.end156_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156

if.end50:                                         ; preds = %if.end42
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg, align 1
  %17 = and i8 %16, 1
  %spread = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %spread to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %spread, align 1
  %call.i210 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 6, ptr noundef nonnull %reg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %cmp57 = icmp slt i32 %call.i210, 0
  br i1 %cmp57, label %if.end50.do.end156_crit_edge, label %if.end60

if.end50.do.end156_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156

if.end60:                                         ; preds = %if.end50
  %scrambler_dis = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %scrambler_dis to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %scrambler_dis, align 2
  %call.i211 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 266, ptr noundef nonnull %reg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %cmp64 = icmp slt i32 %call.i211, 0
  br i1 %cmp64, label %if.end60.do.end156_crit_edge, label %if.end67

if.end60.do.end156_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156

if.end67:                                         ; preds = %if.end60
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg, align 1
  %22 = and i8 %21, 1
  %assr = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %assr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %assr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_get_display_props.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_get_display_props, %if.then84)) #11
          to label %do.body105 [label %if.then84], !srcloc !297

if.then84:                                        ; preds = %if.end67
  %24 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tc, align 8
  %conv86 = zext i8 %2 to i32
  %26 = lshr i32 %conv86, 4
  %and88 = and i32 %conv86, 15
  %27 = ptrtoint ptr %rate21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %28)
  %cmp91 = icmp eq i32 %28, 162000
  %cond = select i1 %cmp91, ptr @.str.47, ptr @.str.48
  %29 = ptrtoint ptr %num_lanes44 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_lanes44, align 4
  %conv95 = zext i8 %30 to i32
  %31 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %cmp.i = icmp ugt i8 %32, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.then84.drm_dp_enhanced_frame_cap.exit.thread_crit_edge

if.then84.drm_dp_enhanced_frame_cap.exit.thread_crit_edge: ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i208, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i = icmp slt i8 %34, 0
  %spec.select = select i1 %tobool.i, ptr @.str.49, ptr @.str.50
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit.thread:            ; preds = %drm_dp_enhanced_frame_cap.exit, %if.then84.drm_dp_enhanced_frame_cap.exit.thread_crit_edge
  %35 = phi ptr [ @.str.50, %if.then84.drm_dp_enhanced_frame_cap.exit.thread_crit_edge ], [ %spec.select, %drm_dp_enhanced_frame_cap.exit ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_get_display_props.__UNIQUE_ID_ddebug330, ptr noundef %25, ptr noundef nonnull @.str.46, i32 noundef %26, i32 noundef %and88, ptr noundef nonnull %cond, i32 noundef %conv95, ptr noundef nonnull %35) #11
  br label %do.body105

do.body105:                                       ; preds = %drm_dp_enhanced_frame_cap.exit.thread, %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_get_display_props.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_get_display_props, %if.then117)) #11
          to label %do.body132 [label %if.then117], !srcloc !297

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tc, align 8
  %38 = ptrtoint ptr %spread to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spread, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool121.not = icmp eq i8 %39, 0
  %cond123 = select i1 %tobool121.not, ptr @.str.53, ptr @.str.52
  %40 = ptrtoint ptr %scrambler_dis to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scrambler_dis, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool126.not = icmp eq i8 %41, 0
  %cond128 = select i1 %tobool126.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_get_display_props.__UNIQUE_ID_ddebug331, ptr noundef %37, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond123, ptr noundef nonnull %cond128) #11
  br label %do.body132

do.body132:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_get_display_props.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_get_display_props, %if.then144)) #11
          to label %cleanup [label %if.then144], !srcloc !297

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tc, align 8
  %44 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %assr, align 1
  %conv148 = zext i8 %45 to i32
  %assr149 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 9
  %46 = ptrtoint ptr %assr149 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %assr149, align 4
  %conv150 = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_get_display_props.__UNIQUE_ID_ddebug332, ptr noundef %43, ptr noundef nonnull @.str.56, i32 noundef %conv148, i32 noundef %conv150) #11
  br label %cleanup

do.end156:                                        ; preds = %if.end60.do.end156_crit_edge, %if.end50.do.end156_crit_edge, %if.end42.do.end156_crit_edge, %entry.do.end156_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.end156_crit_edge ], [ %call.i209, %if.end42.do.end156_crit_edge ], [ %call.i210, %if.end50.do.end156_crit_edge ], [ %call.i211, %if.end60.do.end156_crit_edge ]
  %48 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.57, i32 noundef %ret.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %if.then144, %do.body132
  %retval.0 = phi i32 [ %ret.0, %do.end156 ], [ 0, %if.then144 ], [ 0, %do.body132 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_pin = getelementptr i8, ptr %connector, i32 1200
  %0 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hpd_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !295
  %regmap.i = getelementptr i8, ptr %connector, i32 -2028
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 1356, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.tc_bridge_detect.exit_crit_edge

if.then.tc_bridge_detect.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_bridge_detect.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hpd_pin, align 8
  %shl.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool2.not.i, i32 2, i32 1
  br label %tc_bridge_detect.exit

tc_bridge_detect.exit:                            ; preds = %if.end.i, %if.then.tc_bridge_detect.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %if.then.tc_bridge_detect.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %panel_bridge = getelementptr i8, ptr %connector, i32 -8
  %9 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel_bridge, align 8
  %tobool.not = icmp eq ptr %10, null
  %. = select i1 %tobool.not, i32 3, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tc_bridge_detect.exit
  %retval.0 = phi i32 [ %retval.0.i, %tc_bridge_detect.exit ], [ %., %if.end ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_main_link_enable(ptr noundef %tc) unnamed_addr #2 align 64 {
entry:
  %value.addr.i581 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %value = alloca i32, align 4
  %tmp = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 2
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !295
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp) #11
  %3 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 5
  %8 = call ptr @memset(ptr %tmp, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_main_link_enable.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_main_link_enable, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_main_link_enable.__UNIQUE_ID_ddebug462, ptr noundef %10, ptr noundef nonnull @.str.75) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1536, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end48_crit_edge, label %do.end27, !prof !298

if.end10.if.end48_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end27:                                         ; preds = %if.end10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 906, i32 noundef 9, ptr noundef null) #11
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call44 = call i32 @regmap_write(ptr noundef %16, i32 noundef 1536, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end27.if.end48_crit_edge, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end27.if.end48_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end48:                                         ; preds = %do.end27.if.end48_crit_edge, %if.end10.if.end48_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %scrambler_dis.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scrambler_dis.i, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4224, i32 12416
  %spread.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not.i = icmp eq i8 %22, 0
  %or4.i = or i32 %spec.select.i, 8
  %reg.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %num_lanes.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i = icmp eq i8 %24, 2
  %or9.i = or i32 %reg.1.i, 4
  %reg.2.i = select i1 %cmp.i, i32 %or9.i, i32 %reg.1.i
  %rate.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %26)
  %cmp12.not.i = icmp eq i32 %26, 162000
  %or15.i = or i32 %reg.2.i, 2
  %reg.3.i = select i1 %cmp12.not.i, i32 %reg.2.i, i32 %or15.i
  %call51 = call i32 @regmap_write(ptr noundef %18, i32 noundef 1696, i32 noundef %reg.3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %link = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6
  %29 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not = icmp eq i8 %30, 0
  %cond = select i1 %tobool56.not, i32 0, i32 8
  %31 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %32)
  %cmp.not = icmp eq i32 %32, 162000
  %cond58 = select i1 %cmp.not, i32 0, i32 2
  %or = or i32 %cond58, %cond
  %call59 = call i32 @regmap_write(ptr noundef %28, i32 noundef 1952, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %refclk.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 12
  %33 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %refclk.i, align 8
  %call.i = call i32 @clk_get_rate(ptr noundef %34) #11
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call.i, label %tc_set_syspllparam.exit.thread [
    i32 38400000, label %if.end62.tc_set_syspllparam.exit_crit_edge
    i32 26000000, label %sw.bb1.i
    i32 19200000, label %sw.bb3.i
    i32 13000000, label %sw.bb5.i
  ]

if.end62.tc_set_syspllparam.exit_crit_edge:       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit

sw.bb1.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit

sw.bb3.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit

sw.bb5.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_set_syspllparam.exit

tc_set_syspllparam.exit.thread:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.39, i32 noundef %call.i) #14
  br label %cleanup

tc_set_syspllparam.exit:                          ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %if.end62.tc_set_syspllparam.exit_crit_edge
  %pllparam.0.i = phi i32 [ 769, %sw.bb5.i ], [ 257, %sw.bb3.i ], [ 513, %sw.bb1.i ], [ 1, %if.end62.tc_set_syspllparam.exit_crit_edge ]
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 2328, i32 noundef %pllparam.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool64.not = icmp eq i32 %call7.i, 0
  br i1 %tobool64.not, label %if.end66, label %tc_set_syspllparam.exit.cleanup_crit_edge

tc_set_syspllparam.exit.cleanup_crit_edge:        ; preds = %tc_set_syspllparam.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %tc_set_syspllparam.exit
  %40 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp68 = icmp eq i8 %41, 2
  %spec.select = select i1 %cmp68, i32 50331655, i32 50331651
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_write(ptr noundef %43, i32 noundef 2048, i32 noundef %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end77:                                         ; preds = %if.end66
  %call78 = call fastcc i32 @tc_pllupdate(ptr noundef %tc, i32 noundef 2304)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  %call82 = call fastcc i32 @tc_pllupdate(ptr noundef %tc, i32 noundef 2308)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %or86 = or i32 %spec.select, 268439808
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_write(ptr noundef %45, i32 noundef 2048, i32 noundef %or86) #11
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #11
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call91 = call i32 @regmap_write(ptr noundef %47, i32 noundef 2048, i32 noundef %spec.select) #11
  %call92 = call fastcc i32 @tc_poll_timeout(ptr noundef %tc, i32 noundef 2048, i32 noundef 65536, i32 noundef 65536, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end98, label %do.end97

do.end97:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76) #14
  br label %cleanup

if.end98:                                         ; preds = %if.end85
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i527 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 1624, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i527)
  %tobool101.not = icmp eq i32 %call.i527, 0
  br i1 %tobool101.not, label %if.end103, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end103:                                        ; preds = %if.end98
  %assr = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 9
  %50 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %assr, align 4
  %assr106 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %assr106 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %assr106, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp108.not = icmp eq i8 %51, %53
  br i1 %cmp108.not, label %if.end103.if.end168_crit_edge, label %do.body111

if.end103.if.end168_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body111:                                       ; preds = %if.end103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_main_link_enable.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_main_link_enable, %if.then123)) #11
          to label %do.end128 [label %if.then123], !srcloc !297

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %assr, align 4
  %conv125 = zext i8 %55 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_main_link_enable.__UNIQUE_ID_ddebug463, ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef %conv125) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then123, %do.body111
  %56 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %assr, align 4
  %58 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %59 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %value.addr.i, align 1
  %call.i528 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 266, ptr noundef nonnull %value.addr.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i528)
  %cmp132 = icmp slt i32 %call.i528, 0
  br i1 %cmp132, label %do.end128.do.end384_crit_edge, label %if.end135

do.end128.do.end384_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end384

if.end135:                                        ; preds = %do.end128
  %call.i529 = call i32 @drm_dp_dpcd_read(ptr noundef %aux1, i32 noundef 266, ptr noundef nonnull %tmp, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i529)
  %cmp137 = icmp slt i32 %call.i529, 0
  br i1 %cmp137, label %if.end135.do.end384_crit_edge, label %if.end140

if.end135.do.end384_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end384

if.end140:                                        ; preds = %if.end135
  %60 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tmp, align 1
  %62 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %assr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp145.not = icmp eq i8 %61, %63
  br i1 %cmp145.not, label %if.end140.if.end168_crit_edge, label %do.body148

if.end140.if.end168_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body148:                                       ; preds = %if.end140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_main_link_enable.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_main_link_enable, %if.then160)) #11
          to label %do.end165 [label %if.then160], !srcloc !297

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %assr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %assr, align 4
  %conv162 = zext i8 %65 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_main_link_enable.__UNIQUE_ID_ddebug464, ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %conv162) #11
  br label %do.end165

do.end165:                                        ; preds = %if.then160, %do.body148
  %66 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %scrambler_dis.i, align 2
  br label %if.end168

if.end168:                                        ; preds = %do.end165, %if.end140.if.end168_crit_edge, %if.end103.if.end168_crit_edge
  %67 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rate.i, align 8
  %call171 = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %68) #11
  %69 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call171, ptr %tmp, align 1
  %70 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_lanes.i, align 4
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %3, align 1
  %73 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %74)
  %cmp.i530 = icmp ugt i8 %74, 16
  br i1 %cmp.i530, label %drm_dp_enhanced_frame_cap.exit, label %if.end168.if.end184_crit_edge

if.end168.if.end184_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end168
  %arrayidx2.i = getelementptr %struct.tc_data, ptr %tc, i32 0, i32 6, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i = icmp slt i8 %76, 0
  br i1 %tobool.i, label %if.then179, label %drm_dp_enhanced_frame_cap.exit.if.end184_crit_edge

drm_dp_enhanced_frame_cap.exit.if.end184_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then179:                                       ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %77 = or i8 %71, -128
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %3, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %drm_dp_enhanced_frame_cap.exit.if.end184_crit_edge, %if.end168.if.end184_crit_edge
  %call186 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 256, ptr noundef nonnull %tmp, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.end184.do.end388_crit_edge, label %if.end190

if.end184.do.end388_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end388

if.end190:                                        ; preds = %if.end184
  %79 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool193.not = icmp eq i8 %80, 0
  %conv196 = select i1 %tobool193.not, i8 0, i8 16
  %81 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv196, ptr %tmp, align 1
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %3, align 1
  %call200 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 263, ptr noundef nonnull %tmp, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.end190.do.end388_crit_edge, label %if.end204

if.end190.do.end388_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end388

if.end204:                                        ; preds = %if.end190
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %3, align 1
  %84 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %tmp, align 1
  %call208 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 259, ptr noundef nonnull %tmp, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end204.do.end388_crit_edge, label %if.end212

if.end204.do.end388_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end388

if.end212:                                        ; preds = %if.end204
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call214 = call i32 @regmap_write(ptr noundef %86, i32 noundef 1764, i32 noundef 33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end212.cleanup_crit_edge

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end217:                                        ; preds = %if.end212
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call219 = call i32 @regmap_write(ptr noundef %88, i32 noundef 1752, i32 noundef -16777203) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end217.cleanup_crit_edge

if.end217.cleanup_crit_edge:                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end222:                                        ; preds = %if.end217
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %91 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %scrambler_dis.i, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i532 = icmp eq i8 %92, 0
  %spec.select.i533 = select i1 %tobool.not.i532, i32 4224, i32 12416
  %93 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool2.not.i535 = icmp eq i8 %94, 0
  %or4.i536 = or i32 %spec.select.i533, 8
  %reg.1.i537 = select i1 %tobool2.not.i535, i32 %spec.select.i533, i32 %or4.i536
  %95 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp.i539 = icmp eq i8 %96, 2
  %or9.i540 = or i32 %reg.1.i537, 4
  %reg.2.i541 = select i1 %cmp.i539, i32 %or9.i540, i32 %reg.1.i537
  %97 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %98)
  %cmp12.not.i543 = icmp eq i32 %98, 162000
  %or15.i544 = or i32 %reg.2.i541, 2
  %reg.3.i545 = select i1 %cmp12.not.i543, i32 %reg.2.i541, i32 %or15.i544
  %or227 = or i32 %reg.3.i545, 8449
  %call228 = call i32 @regmap_write(ptr noundef %90, i32 noundef 1696, i32 noundef %or227) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end231, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end231:                                        ; preds = %if.end222
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %101 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %102)
  %cmp.i546 = icmp ugt i8 %102, 16
  br i1 %cmp.i546, label %drm_dp_enhanced_frame_cap.exit550, label %if.end231.drm_dp_enhanced_frame_cap.exit550.thread_crit_edge

if.end231.drm_dp_enhanced_frame_cap.exit550.thread_crit_edge: ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_dp_enhanced_frame_cap.exit550.thread

drm_dp_enhanced_frame_cap.exit550:                ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2.i547 = getelementptr %struct.tc_data, ptr %tc, i32 0, i32 6, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx2.i547 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx2.i547, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i548 = icmp slt i8 %104, 0
  %spec.select591 = select i1 %tobool.i548, i32 33, i32 1
  br label %drm_dp_enhanced_frame_cap.exit550.thread

drm_dp_enhanced_frame_cap.exit550.thread:         ; preds = %drm_dp_enhanced_frame_cap.exit550, %if.end231.drm_dp_enhanced_frame_cap.exit550.thread_crit_edge
  %105 = phi i32 [ 1, %if.end231.drm_dp_enhanced_frame_cap.exit550.thread_crit_edge ], [ %spec.select591, %drm_dp_enhanced_frame_cap.exit550 ]
  %call240 = call i32 @regmap_write(ptr noundef %100, i32 noundef 1536, i32 noundef %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %drm_dp_enhanced_frame_cap.exit550.thread.cleanup_crit_edge

drm_dp_enhanced_frame_cap.exit550.thread.cleanup_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit550.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end243:                                        ; preds = %drm_dp_enhanced_frame_cap.exit550.thread
  %call244 = call fastcc i32 @tc_wait_link_training(ptr noundef %tc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %cmp245 = icmp slt i32 %call244, 0
  br i1 %cmp245, label %if.end243.cleanup_crit_edge, label %if.end248

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end248:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool249.not = icmp eq i32 %call244, 0
  br i1 %tobool249.not, label %if.end256, label %do.end253

do.end253:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tc, align 8
  %arrayidx255 = getelementptr [8 x ptr], ptr @training_pattern1_errors, i32 0, i32 %call244
  %108 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx255, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.80, ptr noundef %109) #14
  br label %cleanup

if.end256:                                        ; preds = %if.end248
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call258 = call i32 @regmap_write(ptr noundef %111, i32 noundef 1764, i32 noundef 34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end261, label %if.end256.cleanup_crit_edge

if.end256.cleanup_crit_edge:                      ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end261:                                        ; preds = %if.end256
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %114 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %scrambler_dis.i, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i552 = icmp eq i8 %115, 0
  %spec.select.i553 = select i1 %tobool.not.i552, i32 4224, i32 12416
  %116 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool2.not.i555 = icmp eq i8 %117, 0
  %or4.i556 = or i32 %spec.select.i553, 8
  %reg.1.i557 = select i1 %tobool2.not.i555, i32 %spec.select.i553, i32 %or4.i556
  %118 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %119)
  %cmp.i559 = icmp eq i8 %119, 2
  %or9.i560 = or i32 %reg.1.i557, 4
  %reg.2.i561 = select i1 %cmp.i559, i32 %or9.i560, i32 %reg.1.i557
  %120 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %121)
  %cmp12.not.i563 = icmp eq i32 %121, 162000
  %or15.i564 = or i32 %reg.2.i561, 2
  %reg.3.i565 = select i1 %cmp12.not.i563, i32 %reg.2.i561, i32 %or15.i564
  %or266 = or i32 %reg.3.i565, 8705
  %call267 = call i32 @regmap_write(ptr noundef %113, i32 noundef 1696, i32 noundef %or266) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end270, label %if.end261.cleanup_crit_edge

if.end261.cleanup_crit_edge:                      ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end270:                                        ; preds = %if.end261
  %call271 = call fastcc i32 @tc_wait_link_training(ptr noundef %tc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %if.end270.cleanup_crit_edge, label %if.end275

if.end270.cleanup_crit_edge:                      ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end275:                                        ; preds = %if.end270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool276.not = icmp eq i32 %call271, 0
  br i1 %tobool276.not, label %if.end283, label %do.end280

do.end280:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tc, align 8
  %arrayidx282 = getelementptr [8 x ptr], ptr @training_pattern2_errors, i32 0, i32 %call271
  %124 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx282, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.83, ptr noundef %125) #14
  br label %cleanup

if.end283:                                        ; preds = %if.end275
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %128 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %scrambler_dis.i, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i567 = icmp eq i8 %129, 0
  %spec.select.i568 = select i1 %tobool.not.i567, i32 4224, i32 12416
  %130 = ptrtoint ptr %spread.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %spread.i, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool2.not.i570 = icmp eq i8 %131, 0
  %or4.i571 = or i32 %spec.select.i568, 8
  %reg.1.i572 = select i1 %tobool2.not.i570, i32 %spec.select.i568, i32 %or4.i571
  %132 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %133)
  %cmp.i574 = icmp eq i8 %133, 2
  %or9.i575 = or i32 %reg.1.i572, 4
  %reg.2.i576 = select i1 %cmp.i574, i32 %or9.i575, i32 %reg.1.i572
  %134 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %135)
  %cmp12.not.i578 = icmp eq i32 %135, 162000
  %or15.i579 = or i32 %reg.2.i576, 2
  %reg.3.i580 = select i1 %cmp12.not.i578, i32 %reg.2.i576, i32 %or15.i579
  %or286 = or i32 %reg.3.i580, 1
  %call287 = call i32 @regmap_write(ptr noundef %127, i32 noundef 1696, i32 noundef %or286) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.end290, label %if.end283.cleanup_crit_edge

if.end283.cleanup_crit_edge:                      ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end290:                                        ; preds = %if.end283
  %136 = ptrtoint ptr %scrambler_dis.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %scrambler_dis.i, align 2, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool293.not = icmp eq i8 %137, 0
  %conv296 = select i1 %tobool293.not, i8 0, i8 32
  %138 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv296, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i581)
  %139 = ptrtoint ptr %value.addr.i581 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv296, ptr %value.addr.i581, align 1
  %call.i582 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 258, ptr noundef nonnull %value.addr.i581, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i581)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i582)
  %cmp300 = icmp slt i32 %call.i582, 0
  br i1 %cmp300, label %if.end290.do.end388_crit_edge, label %if.end303

if.end290.do.end388_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end388

if.end303:                                        ; preds = %if.end290
  %call305 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux1, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %cmp306 = icmp slt i32 %call305, 0
  br i1 %cmp306, label %if.end303.do.end384_crit_edge, label %if.end309

if.end303.do.end384_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end384

if.end309:                                        ; preds = %if.end303
  %140 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %tmp, align 1
  %142 = and i8 %141, 7
  %and312 = zext i8 %142 to i32
  %143 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and312, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %142)
  %cmp313.not = icmp eq i8 %142, 7
  br i1 %cmp313.not, label %if.end309.if.end320_crit_edge, label %do.end318

if.end309.if.end320_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end320

do.end318:                                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.86, i32 noundef %and312) #14
  br label %if.end320

if.end320:                                        ; preds = %do.end318, %if.end309.if.end320_crit_edge
  %ret.0 = phi i32 [ -19, %do.end318 ], [ 0, %if.end309.if.end320_crit_edge ]
  %146 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %147)
  %cmp324 = icmp eq i8 %147, 2
  br i1 %cmp324, label %if.then326, label %if.end320.if.end348_crit_edge

if.end320.if.end348_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end348

if.then326:                                       ; preds = %if.end320
  %148 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %tmp, align 1
  %150 = lshr i8 %149, 4
  %151 = and i8 %150, 7
  %and329 = zext i8 %151 to i32
  %152 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %and329, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %151)
  %cmp330.not = icmp eq i8 %151, 7
  br i1 %cmp330.not, label %if.then326.if.end337_crit_edge, label %do.end335

if.then326.if.end337_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end337

do.end335:                                        ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.89, i32 noundef %and329) #14
  br label %if.end337

if.end337:                                        ; preds = %do.end335, %if.then326.if.end337_crit_edge
  %ret.1 = phi i32 [ -19, %do.end335 ], [ %ret.0, %if.then326.if.end337_crit_edge ]
  %155 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %4, align 1
  %157 = and i8 %156, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool341.not = icmp eq i8 %157, 0
  br i1 %tobool341.not, label %if.end348.thread, label %if.end337.if.end348_crit_edge

if.end337.if.end348_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end348

if.end348.thread:                                 ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.92) #14
  br label %do.end353

if.end348:                                        ; preds = %if.end337.if.end348_crit_edge, %if.end320.if.end348_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end337.if.end348_crit_edge ], [ %ret.0, %if.end320.if.end348_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool349.not = icmp eq i32 %ret.2, 0
  br i1 %tobool349.not, label %if.end348.cleanup_crit_edge, label %if.end348.do.end353_crit_edge

if.end348.do.end353_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end353

if.end348.cleanup_crit_edge:                      ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end353:                                        ; preds = %if.end348.do.end353_crit_edge, %if.end348.thread
  %ret.2590 = phi i32 [ -19, %if.end348.thread ], [ %ret.2, %if.end348.do.end353_crit_edge ]
  %160 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tmp, align 1
  %conv355 = zext i8 %161 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef %conv355) #14
  %162 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %3, align 1
  %conv360 = zext i8 %163 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.98, i32 noundef %conv360) #14
  %164 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %4, align 1
  %conv365 = zext i8 %165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.101, i32 noundef %conv365) #14
  %166 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %5, align 1
  %conv370 = zext i8 %167 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %conv370) #14
  %168 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %6, align 1
  %conv375 = zext i8 %169 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.107, i32 noundef %conv375) #14
  %170 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %7, align 1
  %conv380 = zext i8 %171 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef %conv380) #14
  br label %cleanup

do.end384:                                        ; preds = %if.end303.do.end384_crit_edge, %if.end135.do.end384_crit_edge, %do.end128.do.end384_crit_edge
  %ret.3 = phi i32 [ %call.i528, %do.end128.do.end384_crit_edge ], [ %call.i529, %if.end135.do.end384_crit_edge ], [ %call305, %if.end303.do.end384_crit_edge ]
  %172 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.113, i32 noundef %ret.3) #14
  br label %cleanup

do.end388:                                        ; preds = %if.end290.do.end388_crit_edge, %if.end204.do.end388_crit_edge, %if.end190.do.end388_crit_edge, %if.end184.do.end388_crit_edge
  %ret.4 = phi i32 [ %call186, %if.end184.do.end388_crit_edge ], [ %call200, %if.end190.do.end388_crit_edge ], [ %call208, %if.end204.do.end388_crit_edge ], [ %call.i582, %if.end290.do.end388_crit_edge ]
  %174 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tc, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.116, i32 noundef %ret.4) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end388, %do.end384, %do.end353, %if.end348.cleanup_crit_edge, %if.end283.cleanup_crit_edge, %do.end280, %if.end270.cleanup_crit_edge, %if.end261.cleanup_crit_edge, %if.end256.cleanup_crit_edge, %do.end253, %if.end243.cleanup_crit_edge, %drm_dp_enhanced_frame_cap.exit550.thread.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.end217.cleanup_crit_edge, %if.end212.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %do.end97, %if.end81.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %tc_set_syspllparam.exit.cleanup_crit_edge, %tc_set_syspllparam.exit.thread, %if.end54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call92, %do.end97 ], [ %ret.3, %do.end384 ], [ %ret.4, %do.end388 ], [ -19, %do.end253 ], [ -19, %do.end280 ], [ %ret.2590, %do.end353 ], [ %call7, %do.end.cleanup_crit_edge ], [ %call44, %do.end27.cleanup_crit_edge ], [ %call51, %if.end48.cleanup_crit_edge ], [ %call59, %if.end54.cleanup_crit_edge ], [ %call7.i, %tc_set_syspllparam.exit.cleanup_crit_edge ], [ %call74, %if.end66.cleanup_crit_edge ], [ %call78, %if.end77.cleanup_crit_edge ], [ %call82, %if.end81.cleanup_crit_edge ], [ %call.i527, %if.end98.cleanup_crit_edge ], [ %call214, %if.end212.cleanup_crit_edge ], [ %call219, %if.end217.cleanup_crit_edge ], [ %call228, %if.end222.cleanup_crit_edge ], [ %call240, %drm_dp_enhanced_frame_cap.exit550.thread.cleanup_crit_edge ], [ %call244, %if.end243.cleanup_crit_edge ], [ %call258, %if.end256.cleanup_crit_edge ], [ %call267, %if.end261.cleanup_crit_edge ], [ %call271, %if.end270.cleanup_crit_edge ], [ %call287, %if.end283.cleanup_crit_edge ], [ 0, %if.end348.cleanup_crit_edge ], [ -22, %tc_set_syspllparam.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_stream_enable(ptr nocapture noundef readonly %tc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_stream_enable.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_stream_enable, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_stream_enable.__UNIQUE_ID_ddebug466, ptr noundef %1, ptr noundef nonnull @.str.128) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr @tc_test_pattern, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %do.end.if.end10_crit_edge, label %if.then4

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %do.end
  %refclk = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 12
  %3 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %refclk, align 8
  %call5 = tail call i32 @clk_get_rate(ptr noundef %4) #11
  %mode = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %mul = mul i32 %6, 1000
  %call6 = tail call fastcc i32 @tc_pxl_pll_en(ptr noundef %tc, i32 noundef %call5, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %mode11 = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 7
  %call12 = tail call fastcc i32 @tc_set_video_mode(ptr noundef %tc, ptr noundef %mode11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %regmap.i = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1556, i32 noundef 32768) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %link = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp.i = icmp ugt i8 %10, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.end19.drm_dp_enhanced_frame_cap.exit.thread_crit_edge

if.end19.drm_dp_enhanced_frame_cap.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2.i = getelementptr %struct.tc_data, ptr %tc, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i = icmp slt i8 %12, 0
  %spec.select = select i1 %tobool.i, i32 97, i32 65
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit.thread:            ; preds = %drm_dp_enhanced_frame_cap.exit, %if.end19.drm_dp_enhanced_frame_cap.exit.thread_crit_edge
  %13 = phi i32 [ 65, %if.end19.drm_dp_enhanced_frame_cap.exit.thread_crit_edge ], [ %spec.select, %drm_dp_enhanced_frame_cap.exit ]
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1536, i32 noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %drm_dp_enhanced_frame_cap.exit.thread.cleanup_crit_edge

drm_dp_enhanced_frame_cap.exit.thread.cleanup_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %drm_dp_enhanced_frame_cap.exit.thread
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #11
  %or27 = or i32 %13, 2
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1536, i32 noundef %or27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %18 = load i8, ptr @tc_test_pattern, align 1, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  %. = select i1 %tobool33.not, i32 2, i32 3
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 1296, i32 noundef %.) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end26.cleanup_crit_edge, %drm_dp_enhanced_frame_cap.exit.thread.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ], [ %call23, %drm_dp_enhanced_frame_cap.exit.thread.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ], [ %call39, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_wait_link_training(ptr nocapture noundef readonly %tc) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !295
  %call = tail call fastcc i32 @tc_poll_timeout(ptr noundef %tc, i32 noundef 1744, i32 noundef 8192, i32 noundef 8192, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.118) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 1744, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %shr = lshr i32 %6, 8
  %and = and i32 %shr, 7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %and, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_pxl_pll_en(ptr nocapture noundef readonly %tc, i32 noundef %refclk, i32 noundef %pixelclock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_pxl_pll_en, %if.then)) #11
          to label %for.body [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_pxl_pll_en.__UNIQUE_ID_ddebug325, ptr noundef %1, ptr noundef nonnull @.str.130, i32 noundef %pixelclock, i32 noundef %refclk) #11
  br label %for.body

for.body:                                         ; preds = %for.inc258.for.body_crit_edge, %if.then, %entry
  %i_pre.0555 = phi i32 [ %inc259, %for.inc258.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %best_pre.0554 = phi i32 [ %best_pre.5, %for.inc258.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %best_post.0553 = phi i32 [ %best_post.5, %for.inc258.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %best_div.0552 = phi i32 [ %best_div.5, %for.inc258.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %best_mul.0551 = phi i32 [ %best_mul.5, %for.inc258.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %best_pixelclock.0550 = phi i32 [ %best_pixelclock.5, %for.inc258.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %best_delta.0549 = phi i32 [ %best_delta.5, %for.inc258.for.body_crit_edge ], [ %pixelclock, %entry ], [ %pixelclock, %if.then ]
  %arrayidx = getelementptr [5 x i32], ptr @__const.tc_pxl_pll_en.ext_div, i32 0, i32 %i_pre.0555
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div3 = udiv i32 %refclk, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div3)
  %cmp4 = icmp ult i32 %div3, 1000000
  br i1 %cmp4, label %for.body.for.inc258_crit_edge, label %for.cond7.preheader

for.body.for.inc258_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc258

for.cond7.preheader:                              ; preds = %for.body
  %mul15 = mul i32 %3, %pixelclock
  br label %if.then200

if.then200:                                       ; preds = %cleanup.if.then200_crit_edge, %for.cond7.preheader
  %best_pre.2541 = phi i32 [ %best_pre.0554, %for.cond7.preheader ], [ %best_pre.4, %cleanup.if.then200_crit_edge ]
  %best_post.2540 = phi i32 [ %best_post.0553, %for.cond7.preheader ], [ %best_post.4, %cleanup.if.then200_crit_edge ]
  %div.0538 = phi i32 [ 1, %for.cond7.preheader ], [ %inc, %cleanup.if.then200_crit_edge ]
  %best_div.2537 = phi i32 [ %best_div.0552, %for.cond7.preheader ], [ %best_div.4, %cleanup.if.then200_crit_edge ]
  %best_mul.2536 = phi i32 [ %best_mul.0551, %for.cond7.preheader ], [ %best_mul.4, %cleanup.if.then200_crit_edge ]
  %best_pixelclock.2535 = phi i32 [ %best_pixelclock.0550, %for.cond7.preheader ], [ %best_pixelclock.4, %cleanup.if.then200_crit_edge ]
  %best_delta.2534 = phi i32 [ %best_delta.0549, %for.cond7.preheader ], [ %best_delta.4, %cleanup.if.then200_crit_edge ]
  %mul17 = mul i32 %mul15, %div.0538
  %div204 = udiv i32 %mul17, %refclk
  %4 = add i32 %div204, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %4)
  %5 = icmp ult i32 %4, -128
  br i1 %5, label %if.then200.cleanup_crit_edge, label %if.end218

if.then200.cleanup_crit_edge:                     ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end218:                                        ; preds = %if.then200
  %div221 = udiv i32 %div3, %div.0538
  %mul222 = mul i32 %div221, %div204
  %6 = add i32 %mul222, -650000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500000001, i32 %6)
  %7 = icmp ult i32 %6, -500000001
  br i1 %7, label %if.end218.cleanup_crit_edge, label %if.end229

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end229:                                        ; preds = %if.end218
  %sub232 = sub i32 %mul222, %pixelclock
  %8 = tail call i32 @llvm.abs.i32(i32 %sub232, i1 false)
  %9 = tail call i32 @llvm.abs.i32(i32 %best_delta.2534, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp250 = icmp slt i32 %8, %9
  br i1 %cmp250, label %if.then252, label %if.end229.cleanup_crit_edge

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then252:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.then252, %if.end229.cleanup_crit_edge, %if.end218.cleanup_crit_edge, %if.then200.cleanup_crit_edge
  %best_delta.4 = phi i32 [ %best_delta.2534, %if.then200.cleanup_crit_edge ], [ %best_delta.2534, %if.end218.cleanup_crit_edge ], [ %sub232, %if.then252 ], [ %best_delta.2534, %if.end229.cleanup_crit_edge ]
  %best_pixelclock.4 = phi i32 [ %best_pixelclock.2535, %if.then200.cleanup_crit_edge ], [ %best_pixelclock.2535, %if.end218.cleanup_crit_edge ], [ %mul222, %if.then252 ], [ %best_pixelclock.2535, %if.end229.cleanup_crit_edge ]
  %best_mul.4 = phi i32 [ %best_mul.2536, %if.then200.cleanup_crit_edge ], [ %best_mul.2536, %if.end218.cleanup_crit_edge ], [ %div204, %if.then252 ], [ %best_mul.2536, %if.end229.cleanup_crit_edge ]
  %best_div.4 = phi i32 [ %best_div.2537, %if.then200.cleanup_crit_edge ], [ %best_div.2537, %if.end218.cleanup_crit_edge ], [ %div.0538, %if.then252 ], [ %best_div.2537, %if.end229.cleanup_crit_edge ]
  %best_post.4 = phi i32 [ %best_post.2540, %if.then200.cleanup_crit_edge ], [ %best_post.2540, %if.end218.cleanup_crit_edge ], [ 0, %if.then252 ], [ %best_post.2540, %if.end229.cleanup_crit_edge ]
  %best_pre.4 = phi i32 [ %best_pre.2541, %if.then200.cleanup_crit_edge ], [ %best_pre.2541, %if.end218.cleanup_crit_edge ], [ %i_pre.0555, %if.then252 ], [ %best_pre.2541, %if.end229.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %div.0538, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %cleanup.if.then200.1_crit_edge, label %cleanup.if.then200_crit_edge

cleanup.if.then200_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

cleanup.if.then200.1_crit_edge:                   ; preds = %cleanup
  br label %if.then200.1

if.then200.1:                                     ; preds = %cleanup.1.if.then200.1_crit_edge, %cleanup.if.then200.1_crit_edge
  %best_pre.2541.1 = phi i32 [ %best_pre.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_pre.4, %cleanup.if.then200.1_crit_edge ]
  %best_post.2540.1 = phi i32 [ %best_post.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_post.4, %cleanup.if.then200.1_crit_edge ]
  %div.0538.1 = phi i32 [ %inc.1, %cleanup.1.if.then200.1_crit_edge ], [ 1, %cleanup.if.then200.1_crit_edge ]
  %best_div.2537.1 = phi i32 [ %best_div.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_div.4, %cleanup.if.then200.1_crit_edge ]
  %best_mul.2536.1 = phi i32 [ %best_mul.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_mul.4, %cleanup.if.then200.1_crit_edge ]
  %best_pixelclock.2535.1 = phi i32 [ %best_pixelclock.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_pixelclock.4, %cleanup.if.then200.1_crit_edge ]
  %best_delta.2534.1 = phi i32 [ %best_delta.4.1, %cleanup.1.if.then200.1_crit_edge ], [ %best_delta.4, %cleanup.if.then200.1_crit_edge ]
  %mul17.1 = mul i32 %mul15, %div.0538.1
  %mul18.1 = shl i32 %mul17.1, 1
  %div204.1 = udiv i32 %mul18.1, %refclk
  %10 = add i32 %div204.1, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %10)
  %11 = icmp ult i32 %10, -128
  br i1 %11, label %if.then200.1.cleanup.1_crit_edge, label %if.end218.1

if.then200.1.cleanup.1_crit_edge:                 ; preds = %if.then200.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end218.1:                                      ; preds = %if.then200.1
  %div221.1 = udiv i32 %div3, %div.0538.1
  %mul222.1 = mul i32 %div221.1, %div204.1
  %12 = add i32 %mul222.1, -650000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500000001, i32 %12)
  %13 = icmp ult i32 %12, -500000001
  br i1 %13, label %if.end218.1.cleanup.1_crit_edge, label %if.end229.1

if.end218.1.cleanup.1_crit_edge:                  ; preds = %if.end218.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end229.1:                                      ; preds = %if.end218.1
  %div231.1559 = lshr i32 %mul222.1, 1
  %sub232.1 = sub i32 %div231.1559, %pixelclock
  %14 = tail call i32 @llvm.abs.i32(i32 %sub232.1, i1 false)
  %15 = tail call i32 @llvm.abs.i32(i32 %best_delta.2534.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp250.1 = icmp slt i32 %14, %15
  br i1 %cmp250.1, label %if.then252.1, label %if.end229.1.cleanup.1_crit_edge

if.end229.1.cleanup.1_crit_edge:                  ; preds = %if.end229.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.then252.1:                                     ; preds = %if.end229.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then252.1, %if.end229.1.cleanup.1_crit_edge, %if.end218.1.cleanup.1_crit_edge, %if.then200.1.cleanup.1_crit_edge
  %best_delta.4.1 = phi i32 [ %best_delta.2534.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_delta.2534.1, %if.end218.1.cleanup.1_crit_edge ], [ %sub232.1, %if.then252.1 ], [ %best_delta.2534.1, %if.end229.1.cleanup.1_crit_edge ]
  %best_pixelclock.4.1 = phi i32 [ %best_pixelclock.2535.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_pixelclock.2535.1, %if.end218.1.cleanup.1_crit_edge ], [ %div231.1559, %if.then252.1 ], [ %best_pixelclock.2535.1, %if.end229.1.cleanup.1_crit_edge ]
  %best_mul.4.1 = phi i32 [ %best_mul.2536.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_mul.2536.1, %if.end218.1.cleanup.1_crit_edge ], [ %div204.1, %if.then252.1 ], [ %best_mul.2536.1, %if.end229.1.cleanup.1_crit_edge ]
  %best_div.4.1 = phi i32 [ %best_div.2537.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_div.2537.1, %if.end218.1.cleanup.1_crit_edge ], [ %div.0538.1, %if.then252.1 ], [ %best_div.2537.1, %if.end229.1.cleanup.1_crit_edge ]
  %best_post.4.1 = phi i32 [ %best_post.2540.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_post.2540.1, %if.end218.1.cleanup.1_crit_edge ], [ 1, %if.then252.1 ], [ %best_post.2540.1, %if.end229.1.cleanup.1_crit_edge ]
  %best_pre.4.1 = phi i32 [ %best_pre.2541.1, %if.then200.1.cleanup.1_crit_edge ], [ %best_pre.2541.1, %if.end218.1.cleanup.1_crit_edge ], [ %i_pre.0555, %if.then252.1 ], [ %best_pre.2541.1, %if.end229.1.cleanup.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %div.0538.1, 1
  %exitcond.not.1 = icmp eq i32 %inc.1, 17
  br i1 %exitcond.not.1, label %cleanup.1.if.then200.2_crit_edge, label %cleanup.1.if.then200.1_crit_edge

cleanup.1.if.then200.1_crit_edge:                 ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200.1

cleanup.1.if.then200.2_crit_edge:                 ; preds = %cleanup.1
  br label %if.then200.2

if.then200.2:                                     ; preds = %cleanup.2.if.then200.2_crit_edge, %cleanup.1.if.then200.2_crit_edge
  %best_pre.2541.2 = phi i32 [ %best_pre.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_pre.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %best_post.2540.2 = phi i32 [ %best_post.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_post.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %div.0538.2 = phi i32 [ %inc.2, %cleanup.2.if.then200.2_crit_edge ], [ 1, %cleanup.1.if.then200.2_crit_edge ]
  %best_div.2537.2 = phi i32 [ %best_div.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_div.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %best_mul.2536.2 = phi i32 [ %best_mul.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_mul.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %best_pixelclock.2535.2 = phi i32 [ %best_pixelclock.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_pixelclock.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %best_delta.2534.2 = phi i32 [ %best_delta.4.2, %cleanup.2.if.then200.2_crit_edge ], [ %best_delta.4.1, %cleanup.1.if.then200.2_crit_edge ]
  %mul17.2 = mul i32 %mul15, %div.0538.2
  %mul18.2 = mul i32 %mul17.2, 3
  %div204.2 = udiv i32 %mul18.2, %refclk
  %16 = add i32 %div204.2, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %16)
  %17 = icmp ult i32 %16, -128
  br i1 %17, label %if.then200.2.cleanup.2_crit_edge, label %if.end218.2

if.then200.2.cleanup.2_crit_edge:                 ; preds = %if.then200.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.end218.2:                                      ; preds = %if.then200.2
  %div221.2 = udiv i32 %div3, %div.0538.2
  %mul222.2 = mul i32 %div221.2, %div204.2
  %18 = add i32 %mul222.2, -650000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500000001, i32 %18)
  %19 = icmp ult i32 %18, -500000001
  br i1 %19, label %if.end218.2.cleanup.2_crit_edge, label %if.end229.2

if.end218.2.cleanup.2_crit_edge:                  ; preds = %if.end218.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.end229.2:                                      ; preds = %if.end218.2
  %div231.2 = udiv i32 %mul222.2, 3
  %sub232.2 = sub i32 %div231.2, %pixelclock
  %20 = tail call i32 @llvm.abs.i32(i32 %sub232.2, i1 false)
  %21 = tail call i32 @llvm.abs.i32(i32 %best_delta.2534.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp250.2 = icmp slt i32 %20, %21
  br i1 %cmp250.2, label %if.then252.2, label %if.end229.2.cleanup.2_crit_edge

if.end229.2.cleanup.2_crit_edge:                  ; preds = %if.end229.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.then252.2:                                     ; preds = %if.end229.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then252.2, %if.end229.2.cleanup.2_crit_edge, %if.end218.2.cleanup.2_crit_edge, %if.then200.2.cleanup.2_crit_edge
  %best_delta.4.2 = phi i32 [ %best_delta.2534.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_delta.2534.2, %if.end218.2.cleanup.2_crit_edge ], [ %sub232.2, %if.then252.2 ], [ %best_delta.2534.2, %if.end229.2.cleanup.2_crit_edge ]
  %best_pixelclock.4.2 = phi i32 [ %best_pixelclock.2535.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_pixelclock.2535.2, %if.end218.2.cleanup.2_crit_edge ], [ %div231.2, %if.then252.2 ], [ %best_pixelclock.2535.2, %if.end229.2.cleanup.2_crit_edge ]
  %best_mul.4.2 = phi i32 [ %best_mul.2536.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_mul.2536.2, %if.end218.2.cleanup.2_crit_edge ], [ %div204.2, %if.then252.2 ], [ %best_mul.2536.2, %if.end229.2.cleanup.2_crit_edge ]
  %best_div.4.2 = phi i32 [ %best_div.2537.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_div.2537.2, %if.end218.2.cleanup.2_crit_edge ], [ %div.0538.2, %if.then252.2 ], [ %best_div.2537.2, %if.end229.2.cleanup.2_crit_edge ]
  %best_post.4.2 = phi i32 [ %best_post.2540.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_post.2540.2, %if.end218.2.cleanup.2_crit_edge ], [ 2, %if.then252.2 ], [ %best_post.2540.2, %if.end229.2.cleanup.2_crit_edge ]
  %best_pre.4.2 = phi i32 [ %best_pre.2541.2, %if.then200.2.cleanup.2_crit_edge ], [ %best_pre.2541.2, %if.end218.2.cleanup.2_crit_edge ], [ %i_pre.0555, %if.then252.2 ], [ %best_pre.2541.2, %if.end229.2.cleanup.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %div.0538.2, 1
  %exitcond.not.2 = icmp eq i32 %inc.2, 17
  br i1 %exitcond.not.2, label %cleanup.2.if.then200.3_crit_edge, label %cleanup.2.if.then200.2_crit_edge

cleanup.2.if.then200.2_crit_edge:                 ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200.2

cleanup.2.if.then200.3_crit_edge:                 ; preds = %cleanup.2
  br label %if.then200.3

if.then200.3:                                     ; preds = %cleanup.3.if.then200.3_crit_edge, %cleanup.2.if.then200.3_crit_edge
  %best_pre.2541.3 = phi i32 [ %best_pre.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_pre.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %best_post.2540.3 = phi i32 [ %best_post.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_post.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %div.0538.3 = phi i32 [ %inc.3, %cleanup.3.if.then200.3_crit_edge ], [ 1, %cleanup.2.if.then200.3_crit_edge ]
  %best_div.2537.3 = phi i32 [ %best_div.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_div.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %best_mul.2536.3 = phi i32 [ %best_mul.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_mul.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %best_pixelclock.2535.3 = phi i32 [ %best_pixelclock.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_pixelclock.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %best_delta.2534.3 = phi i32 [ %best_delta.4.3, %cleanup.3.if.then200.3_crit_edge ], [ %best_delta.4.2, %cleanup.2.if.then200.3_crit_edge ]
  %mul17.3 = mul i32 %mul15, %div.0538.3
  %mul18.3 = mul i32 %mul17.3, 5
  %div204.3 = udiv i32 %mul18.3, %refclk
  %22 = add i32 %div204.3, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %22)
  %23 = icmp ult i32 %22, -128
  br i1 %23, label %if.then200.3.cleanup.3_crit_edge, label %if.end218.3

if.then200.3.cleanup.3_crit_edge:                 ; preds = %if.then200.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.end218.3:                                      ; preds = %if.then200.3
  %div221.3 = udiv i32 %div3, %div.0538.3
  %mul222.3 = mul i32 %div221.3, %div204.3
  %24 = add i32 %mul222.3, -650000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500000001, i32 %24)
  %25 = icmp ult i32 %24, -500000001
  br i1 %25, label %if.end218.3.cleanup.3_crit_edge, label %if.end229.3

if.end218.3.cleanup.3_crit_edge:                  ; preds = %if.end218.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.end229.3:                                      ; preds = %if.end218.3
  %div231.3 = udiv i32 %mul222.3, 5
  %sub232.3 = sub i32 %div231.3, %pixelclock
  %26 = tail call i32 @llvm.abs.i32(i32 %sub232.3, i1 false)
  %27 = tail call i32 @llvm.abs.i32(i32 %best_delta.2534.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp250.3 = icmp slt i32 %26, %27
  br i1 %cmp250.3, label %if.then252.3, label %if.end229.3.cleanup.3_crit_edge

if.end229.3.cleanup.3_crit_edge:                  ; preds = %if.end229.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.then252.3:                                     ; preds = %if.end229.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then252.3, %if.end229.3.cleanup.3_crit_edge, %if.end218.3.cleanup.3_crit_edge, %if.then200.3.cleanup.3_crit_edge
  %best_delta.4.3 = phi i32 [ %best_delta.2534.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_delta.2534.3, %if.end218.3.cleanup.3_crit_edge ], [ %sub232.3, %if.then252.3 ], [ %best_delta.2534.3, %if.end229.3.cleanup.3_crit_edge ]
  %best_pixelclock.4.3 = phi i32 [ %best_pixelclock.2535.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_pixelclock.2535.3, %if.end218.3.cleanup.3_crit_edge ], [ %div231.3, %if.then252.3 ], [ %best_pixelclock.2535.3, %if.end229.3.cleanup.3_crit_edge ]
  %best_mul.4.3 = phi i32 [ %best_mul.2536.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_mul.2536.3, %if.end218.3.cleanup.3_crit_edge ], [ %div204.3, %if.then252.3 ], [ %best_mul.2536.3, %if.end229.3.cleanup.3_crit_edge ]
  %best_div.4.3 = phi i32 [ %best_div.2537.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_div.2537.3, %if.end218.3.cleanup.3_crit_edge ], [ %div.0538.3, %if.then252.3 ], [ %best_div.2537.3, %if.end229.3.cleanup.3_crit_edge ]
  %best_post.4.3 = phi i32 [ %best_post.2540.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_post.2540.3, %if.end218.3.cleanup.3_crit_edge ], [ 3, %if.then252.3 ], [ %best_post.2540.3, %if.end229.3.cleanup.3_crit_edge ]
  %best_pre.4.3 = phi i32 [ %best_pre.2541.3, %if.then200.3.cleanup.3_crit_edge ], [ %best_pre.2541.3, %if.end218.3.cleanup.3_crit_edge ], [ %i_pre.0555, %if.then252.3 ], [ %best_pre.2541.3, %if.end229.3.cleanup.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %div.0538.3, 1
  %exitcond.not.3 = icmp eq i32 %inc.3, 17
  br i1 %exitcond.not.3, label %cleanup.3.if.then200.4_crit_edge, label %cleanup.3.if.then200.3_crit_edge

cleanup.3.if.then200.3_crit_edge:                 ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200.3

cleanup.3.if.then200.4_crit_edge:                 ; preds = %cleanup.3
  br label %if.then200.4

if.then200.4:                                     ; preds = %cleanup.4.if.then200.4_crit_edge, %cleanup.3.if.then200.4_crit_edge
  %best_pre.2541.4 = phi i32 [ %best_pre.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_pre.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %best_post.2540.4 = phi i32 [ %best_post.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_post.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %div.0538.4 = phi i32 [ %inc.4, %cleanup.4.if.then200.4_crit_edge ], [ 1, %cleanup.3.if.then200.4_crit_edge ]
  %best_div.2537.4 = phi i32 [ %best_div.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_div.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %best_mul.2536.4 = phi i32 [ %best_mul.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_mul.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %best_pixelclock.2535.4 = phi i32 [ %best_pixelclock.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_pixelclock.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %best_delta.2534.4 = phi i32 [ %best_delta.4.4, %cleanup.4.if.then200.4_crit_edge ], [ %best_delta.4.3, %cleanup.3.if.then200.4_crit_edge ]
  %mul17.4 = mul i32 %mul15, %div.0538.4
  %mul18.4 = mul i32 %mul17.4, 7
  %div204.4 = udiv i32 %mul18.4, %refclk
  %28 = add i32 %div204.4, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %28)
  %29 = icmp ult i32 %28, -128
  br i1 %29, label %if.then200.4.cleanup.4_crit_edge, label %if.end218.4

if.then200.4.cleanup.4_crit_edge:                 ; preds = %if.then200.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

if.end218.4:                                      ; preds = %if.then200.4
  %div221.4 = udiv i32 %div3, %div.0538.4
  %mul222.4 = mul i32 %div221.4, %div204.4
  %30 = add i32 %mul222.4, -650000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500000001, i32 %30)
  %31 = icmp ult i32 %30, -500000001
  br i1 %31, label %if.end218.4.cleanup.4_crit_edge, label %if.end229.4

if.end218.4.cleanup.4_crit_edge:                  ; preds = %if.end218.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

if.end229.4:                                      ; preds = %if.end218.4
  %div231.4 = udiv i32 %mul222.4, 7
  %sub232.4 = sub i32 %div231.4, %pixelclock
  %32 = tail call i32 @llvm.abs.i32(i32 %sub232.4, i1 false)
  %33 = tail call i32 @llvm.abs.i32(i32 %best_delta.2534.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %33)
  %cmp250.4 = icmp slt i32 %32, %33
  br i1 %cmp250.4, label %if.then252.4, label %if.end229.4.cleanup.4_crit_edge

if.end229.4.cleanup.4_crit_edge:                  ; preds = %if.end229.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

if.then252.4:                                     ; preds = %if.end229.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.then252.4, %if.end229.4.cleanup.4_crit_edge, %if.end218.4.cleanup.4_crit_edge, %if.then200.4.cleanup.4_crit_edge
  %best_delta.4.4 = phi i32 [ %best_delta.2534.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_delta.2534.4, %if.end218.4.cleanup.4_crit_edge ], [ %sub232.4, %if.then252.4 ], [ %best_delta.2534.4, %if.end229.4.cleanup.4_crit_edge ]
  %best_pixelclock.4.4 = phi i32 [ %best_pixelclock.2535.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_pixelclock.2535.4, %if.end218.4.cleanup.4_crit_edge ], [ %div231.4, %if.then252.4 ], [ %best_pixelclock.2535.4, %if.end229.4.cleanup.4_crit_edge ]
  %best_mul.4.4 = phi i32 [ %best_mul.2536.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_mul.2536.4, %if.end218.4.cleanup.4_crit_edge ], [ %div204.4, %if.then252.4 ], [ %best_mul.2536.4, %if.end229.4.cleanup.4_crit_edge ]
  %best_div.4.4 = phi i32 [ %best_div.2537.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_div.2537.4, %if.end218.4.cleanup.4_crit_edge ], [ %div.0538.4, %if.then252.4 ], [ %best_div.2537.4, %if.end229.4.cleanup.4_crit_edge ]
  %best_post.4.4 = phi i32 [ %best_post.2540.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_post.2540.4, %if.end218.4.cleanup.4_crit_edge ], [ 4, %if.then252.4 ], [ %best_post.2540.4, %if.end229.4.cleanup.4_crit_edge ]
  %best_pre.4.4 = phi i32 [ %best_pre.2541.4, %if.then200.4.cleanup.4_crit_edge ], [ %best_pre.2541.4, %if.end218.4.cleanup.4_crit_edge ], [ %i_pre.0555, %if.then252.4 ], [ %best_pre.2541.4, %if.end229.4.cleanup.4_crit_edge ]
  %inc.4 = add nuw nsw i32 %div.0538.4, 1
  %exitcond.not.4 = icmp eq i32 %inc.4, 17
  br i1 %exitcond.not.4, label %cleanup.4.for.inc258_crit_edge, label %cleanup.4.if.then200.4_crit_edge

cleanup.4.if.then200.4_crit_edge:                 ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200.4

cleanup.4.for.inc258_crit_edge:                   ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc258

for.inc258:                                       ; preds = %cleanup.4.for.inc258_crit_edge, %for.body.for.inc258_crit_edge
  %best_delta.5 = phi i32 [ %best_delta.0549, %for.body.for.inc258_crit_edge ], [ %best_delta.4.4, %cleanup.4.for.inc258_crit_edge ]
  %best_pixelclock.5 = phi i32 [ %best_pixelclock.0550, %for.body.for.inc258_crit_edge ], [ %best_pixelclock.4.4, %cleanup.4.for.inc258_crit_edge ]
  %best_mul.5 = phi i32 [ %best_mul.0551, %for.body.for.inc258_crit_edge ], [ %best_mul.4.4, %cleanup.4.for.inc258_crit_edge ]
  %best_div.5 = phi i32 [ %best_div.0552, %for.body.for.inc258_crit_edge ], [ %best_div.4.4, %cleanup.4.for.inc258_crit_edge ]
  %best_post.5 = phi i32 [ %best_post.0553, %for.body.for.inc258_crit_edge ], [ %best_post.4.4, %cleanup.4.for.inc258_crit_edge ]
  %best_pre.5 = phi i32 [ %best_pre.0554, %for.body.for.inc258_crit_edge ], [ %best_pre.4.4, %cleanup.4.for.inc258_crit_edge ]
  %inc259 = add nuw nsw i32 %i_pre.0555, 1
  %exitcond558.not = icmp eq i32 %inc259, 5
  br i1 %exitcond558.not, label %for.end260, label %for.inc258.for.body_crit_edge

for.inc258.for.body_crit_edge:                    ; preds = %for.inc258
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end260:                                       ; preds = %for.inc258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_pixelclock.5)
  %cmp261 = icmp eq i32 %best_pixelclock.5, 0
  br i1 %cmp261, label %do.end266, label %do.body269

do.end266:                                        ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.131, i32 noundef %pixelclock) #14
  br label %cleanup342

do.body269:                                       ; preds = %for.end260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_pxl_pll_en, %if.then281)) #11
          to label %do.body286 [label %if.then281], !srcloc !297

if.then281:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_pxl_pll_en.__UNIQUE_ID_ddebug326, ptr noundef %37, ptr noundef nonnull @.str.132, i32 noundef %best_pixelclock.5, i32 noundef %best_delta.5) #11
  br label %do.body286

do.body286:                                       ; preds = %if.then281, %do.body269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_pxl_pll_en, %if.then298)) #11
          to label %do.end304 [label %if.then298], !srcloc !297

if.then298:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tc, align 8
  %arrayidx300 = getelementptr [5 x i32], ptr @__const.tc_pxl_pll_en.ext_div, i32 0, i32 %best_pre.5
  %40 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx300, align 4
  %arrayidx301 = getelementptr [5 x i32], ptr @__const.tc_pxl_pll_en.ext_div, i32 0, i32 %best_post.5
  %42 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx301, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_pxl_pll_en.__UNIQUE_ID_ddebug327, ptr noundef %39, ptr noundef nonnull @.str.133, i32 noundef %refclk, i32 noundef %41, i32 noundef %best_div.5, i32 noundef %best_mul.5, i32 noundef %43) #11
  br label %do.end304

do.end304:                                        ; preds = %if.then298, %do.body286
  %arrayidx305 = getelementptr [5 x i32], ptr @__const.tc_pxl_pll_en.ext_div, i32 0, i32 %best_pre.5
  %44 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx305, align 4
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call321 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 2312, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.end324, label %do.end304.cleanup342_crit_edge

do.end304.cleanup342_crit_edge:                   ; preds = %do.end304
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup342

if.end324:                                        ; preds = %do.end304
  %div306 = udiv i32 %refclk, %45
  %div307 = udiv i32 %div306, %best_div.5
  %mul308 = mul i32 %div307, %best_mul.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 299999999, i32 %mul308)
  %cmp309 = icmp ugt i32 %mul308, 299999999
  %spec.select = select i1 %cmp309, i32 16777216, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %best_mul.5)
  %cmp317 = icmp eq i32 %best_mul.5, 128
  %spec.store.select357 = select i1 %cmp317, i32 0, i32 %best_mul.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %best_div.5)
  %cmp313 = icmp eq i32 %best_div.5, 16
  %shl327 = shl i32 %45, 20
  %arrayidx329 = getelementptr [5 x i32], ptr @__const.tc_pxl_pll_en.ext_div, i32 0, i32 %best_post.5
  %48 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx329, align 4
  %shl330 = shl i32 %49, 16
  %best_div.0.op = shl i32 %best_div.5, 8
  %shl333 = select i1 %cmp313, i32 0, i32 %best_div.0.op
  %or328 = or i32 %shl333, %spec.store.select357
  %or331 = or i32 %or328, %shl327
  %or334 = or i32 %or331, %shl330
  %or335 = or i32 %or334, %spec.select
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call337 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 2324, i32 noundef %or335) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.end340, label %if.end324.cleanup342_crit_edge

if.end324.cleanup342_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup342

if.end340:                                        ; preds = %if.end324
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 2312, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end340.cleanup342_crit_edge

if.end340.cleanup342_crit_edge:                   ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup342

if.end.i:                                         ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #11
  br label %cleanup342

cleanup342:                                       ; preds = %if.end.i, %if.end340.cleanup342_crit_edge, %if.end324.cleanup342_crit_edge, %do.end304.cleanup342_crit_edge, %do.end266
  %retval.0 = phi i32 [ -22, %do.end266 ], [ %call321, %do.end304.cleanup342_crit_edge ], [ %call337, %if.end324.cleanup342_crit_edge ], [ %call.i, %if.end340.cleanup342_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_set_video_mode(ptr nocapture noundef readonly %tc, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %0 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal, align 2
  %conv = zext i16 %1 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %2 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsync_end, align 4
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %4 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %5 to i32
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv3 = zext i16 %7 to i32
  %sub4 = sub nsw i32 %conv2, %conv3
  %sub9 = sub nsw i32 %conv1, %conv2
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %8 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vtotal, align 4
  %conv10 = zext i16 %9 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %10 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsync_end, align 2
  %conv11 = zext i16 %11 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %12 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsync_start, align 4
  %conv13 = zext i16 %13 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv14 = zext i16 %15 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  %sub20 = sub nsw i32 %conv11, %conv13
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %mul = mul i32 %17, 24
  %div936 = lshr exact i32 %mul, 3
  %num_lanes = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_lanes, align 4
  %conv21 = zext i8 %19 to i32
  %rate = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate, align 8
  %mul23 = mul i32 %21, %conv21
  %mul24 = mul i32 %div936, 63
  %add = add i32 %mul23, -1
  %sub25 = add i32 %add, %mul24
  %div26 = udiv i32 %sub25, %mul23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_set_video_mode.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_set_video_mode, %if.then)) #11
          to label %do.body33 [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tc, align 8
  %24 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdisplay, align 4
  %conv30 = zext i16 %25 to i32
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv32 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_set_video_mode.__UNIQUE_ID_ddebug333, ptr noundef %23, ptr noundef nonnull @.str.135, i32 noundef %conv30, i32 noundef %conv32) #11
  br label %do.body33

do.body33:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_set_video_mode.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_set_video_mode, %if.then45)) #11
          to label %do.body50 [label %if.then45], !srcloc !297

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_set_video_mode.__UNIQUE_ID_ddebug334, ptr noundef %29, ptr noundef nonnull @.str.136, i32 noundef %sub, i32 noundef %sub4, i32 noundef %sub9) #11
  br label %do.body50

do.body50:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_set_video_mode.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_set_video_mode, %if.then62)) #11
          to label %do.body67 [label %if.then62], !srcloc !297

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_set_video_mode.__UNIQUE_ID_ddebug335, ptr noundef %31, ptr noundef nonnull @.str.137, i32 noundef %sub12, i32 noundef %sub15, i32 noundef %sub20) #11
  br label %do.body67

do.body67:                                        ; preds = %if.then62, %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_set_video_mode.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_set_video_mode, %if.then79)) #11
          to label %do.end87 [label %if.then79], !srcloc !297

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tc, align 8
  %34 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %htotal, align 2
  %conv82 = zext i16 %35 to i32
  %36 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vtotal, align 4
  %conv84 = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc_set_video_mode.__UNIQUE_ID_ddebug336, ptr noundef %33, ptr noundef nonnull @.str.138, i32 noundef %conv82, i32 noundef %conv84) #11
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body67
  %regmap = getelementptr inbounds %struct.tc_data, ptr %tc, i32 0, i32 1
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call106 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 1104, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %do.end87.cleanup_crit_edge

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end109:                                        ; preds = %do.end87
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %add144 = add nsw i32 %sub9, 1
  %add118 = shl i32 %sub, 16
  %shl = add i32 %add118, 65536
  %and136 = and i32 %shl, 33423360
  %and166 = and i32 %add144, 510
  %or167 = or i32 %and136, %and166
  %call168 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 1108, i32 noundef %or167) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end171:                                        ; preds = %if.end109
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %44 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hdisplay, align 4
  %46 = add i16 %45, 1
  %47 = and i16 %46, 2046
  %and208 = zext i16 %47 to i32
  %add216 = shl i32 %sub4, 16
  %shl237 = add i32 %add216, 65536
  %and238 = and i32 %shl237, 33423360
  %or239 = or i32 %and238, %and208
  %call240 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 1112, i32 noundef %or239) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %if.end171.cleanup_crit_edge

if.end171.cleanup_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end243:                                        ; preds = %if.end171
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %shl267 = shl i32 %sub12, 16
  %and268 = and i32 %shl267, 16711680
  %and292 = and i32 %sub20, 255
  %or293 = or i32 %and268, %and292
  %call294 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 1116, i32 noundef %or293) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end297, label %if.end243.cleanup_crit_edge

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end297:                                        ; preds = %if.end243
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %52 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vdisplay, align 2
  %shl321 = shl i32 %sub15, 16
  %and322 = and i32 %shl321, 16711680
  %54 = and i16 %53, 2047
  %and351 = zext i16 %54 to i32
  %or352 = or i32 %and322, %and351
  %call353 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 1120, i32 noundef %or352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end356, label %if.end297.cleanup_crit_edge

if.end297.cleanup_crit_edge:                      ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end356:                                        ; preds = %if.end297
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call358 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 1124, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %if.end361, label %if.end356.cleanup_crit_edge

if.end356.cleanup_crit_edge:                      ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end361:                                        ; preds = %if.end356
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call431 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 2560, i32 noundef 2014602002) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431)
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %if.end434, label %if.end361.cleanup_crit_edge

if.end361.cleanup_crit_edge:                      ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end434:                                        ; preds = %if.end361
  %add435 = add nsw i32 %sub9, %sub
  %59 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hdisplay, align 4
  %conv437 = zext i16 %60 to i32
  %add438 = add nsw i32 %add435, %conv437
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %shl462 = shl i32 %div26, 16
  %and487 = and i32 %add438, 65535
  %or488 = or i32 %and487, %shl462
  %call489 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 1604, i32 noundef %or488) #11
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %65 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %htotal, align 2
  %conv517 = zext i16 %66 to i32
  %67 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vtotal, align 4
  %conv546 = zext i16 %68 to i32
  %shl547 = shl nuw i32 %conv546, 16
  %or549 = or i32 %shl547, %conv517
  %call550 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 1608, i32 noundef %or549) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call550)
  %tobool551.not = icmp eq i32 %call550, 0
  br i1 %tobool551.not, label %if.end553, label %if.end434.cleanup_crit_edge

if.end434.cleanup_crit_edge:                      ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end553:                                        ; preds = %if.end434
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %add589 = add nsw i32 %sub20, %sub12
  %and581 = and i32 %add435, 65535
  %shl607 = shl i32 %add589, 16
  %or609 = or i32 %shl607, %and581
  %call610 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 1612, i32 noundef %or609) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call610)
  %tobool611.not = icmp eq i32 %call610, 0
  br i1 %tobool611.not, label %if.end613, label %if.end553.cleanup_crit_edge

if.end553.cleanup_crit_edge:                      ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end613:                                        ; preds = %if.end553
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %73 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vdisplay, align 2
  %conv641 = zext i16 %74 to i32
  %shl642 = shl nuw i32 %conv641, 16
  %75 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdisplay, align 4
  %conv670 = zext i16 %76 to i32
  %or673 = or i32 %shl642, %conv670
  %call674 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 1616, i32 noundef %or673) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call674)
  %tobool675.not = icmp eq i32 %call674, 0
  br i1 %tobool675.not, label %do.end722, label %if.end613.cleanup_crit_edge

if.end613.cleanup_crit_edge:                      ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end722:                                        ; preds = %if.end613
  %shl700 = shl i32 %sub20, 16
  %and701 = and i32 %shl700, 2147418112
  %and725 = and i32 %sub9, 32767
  %or726 = or i32 %and701, %and725
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and727 = shl i32 %78, 28
  %79 = and i32 %and727, -2147483648
  %80 = or i32 %or726, %79
  %and733 = shl i32 %78, 14
  %81 = and i32 %and733, 32768
  %82 = or i32 %80, %81
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call739 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 1620, i32 noundef %82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call739)
  %tobool740.not = icmp eq i32 %call739, 0
  br i1 %tobool740.not, label %if.end742, label %do.end722.cleanup_crit_edge

do.end722.cleanup_crit_edge:                      ; preds = %do.end722
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end742:                                        ; preds = %do.end722
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call744 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 1088, i32 noundef 1536) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call744)
  %tobool745.not = icmp eq i32 %call744, 0
  br i1 %tobool745.not, label %do.end769, label %if.end742.cleanup_crit_edge

if.end742.cleanup_crit_edge:                      ; preds = %if.end742
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end769:                                        ; preds = %if.end742
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %shl771 = shl i32 %div26, 23
  %and772 = and i32 %shl771, 528482304
  %or790 = or i32 %and772, 4128800
  %call791 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 1624, i32 noundef %or790) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end769, %if.end742.cleanup_crit_edge, %do.end722.cleanup_crit_edge, %if.end613.cleanup_crit_edge, %if.end553.cleanup_crit_edge, %if.end434.cleanup_crit_edge, %if.end361.cleanup_crit_edge, %if.end356.cleanup_crit_edge, %if.end297.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.end171.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %do.end87.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %do.end87.cleanup_crit_edge ], [ %call168, %if.end109.cleanup_crit_edge ], [ %call240, %if.end171.cleanup_crit_edge ], [ %call294, %if.end243.cleanup_crit_edge ], [ %call353, %if.end297.cleanup_crit_edge ], [ %call358, %if.end356.cleanup_crit_edge ], [ %call431, %if.end361.cleanup_crit_edge ], [ %call550, %if.end434.cleanup_crit_edge ], [ %call610, %if.end553.cleanup_crit_edge ], [ %call674, %if.end613.cleanup_crit_edge ], [ %call739, %do.end722.cleanup_crit_edge ], [ %call744, %if.end742.cleanup_crit_edge ], [ %call791, %do.end769 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !124, !126, !127, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !271, !272, !273, !275, !276, !278, !279, !281, !282, !284}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__param_test, !1, !"__param_test", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 230, i32 1}
!2 = !{ptr @__UNIQUE_ID_testtype307, !1, !"__UNIQUE_ID_testtype307", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_tc358767__469_1742_tc358767_driver_init6, !4, !"__initcall__kmod_tc358767__469_1742_tc358767_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1742, i32 1}
!5 = !{ptr @__exitcall_tc358767_driver_exit, !4, !"__exitcall_tc358767_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author470, !7, !"__UNIQUE_ID_author470", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1744, i32 1}
!8 = !{ptr @__UNIQUE_ID_description471, !9, !"__UNIQUE_ID_description471", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1745, i32 1}
!10 = !{ptr @__UNIQUE_ID_file472, !11, !"__UNIQUE_ID_file472", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1746, i32 1}
!12 = !{ptr @__UNIQUE_ID_license473, !11, !"__UNIQUE_ID_license473", i1 false, i1 false}
!13 = !{ptr @tc_test_pattern, !14, !"tc_test_pattern", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 229, i32 13}
!15 = !{ptr @__param_str_test, !1, !"__param_str_test", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1735, i32 11}
!18 = !{ptr @tc358767_driver, !19, !"tc358767_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1733, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1584, i32 45}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1594, i32 48}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1603, i32 33}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1606, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tc_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @tc_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tc_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1610, i32 15}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1613, i32 3}
!39 = !{ptr @tc_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tc_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1617, i32 43}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1623, i32 4}
!45 = !{ptr @tc_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tc_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1635, i32 7}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1637, i32 4}
!51 = !{ptr @tc_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tc_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1646, i32 3}
!55 = !{ptr @tc_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tc_probe._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1651, i32 3}
!59 = !{ptr @tc_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tc_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1694, i32 17}
!63 = !{ptr @tc_regmap_config, !64, !"tc_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1495, i32 35}
!65 = !{ptr @tc_volatile_table, !66, !"tc_volatile_table", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1483, i32 41}
!67 = !{ptr @tc_volatile_ranges, !68, !"tc_volatile_ranges", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1473, i32 34}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1527, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tc_irq_handler._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tc_irq_handler._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1540, i32 3}
!76 = !{ptr @tc_irq_handler.__UNIQUE_ID_ddebug468, !75, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!77 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 644, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tc_aux_link_setup._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tc_aux_link_setup._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 661, i32 2}
!87 = !{ptr @tc_aux_link_setup._entry.36, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tc_aux_link_setup._entry_ptr.38, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 609, i32 3}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tc_set_syspllparam._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tc_set_syspllparam._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @tc_bridge_funcs, !95, !"tc_bridge_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1456, i32 38}
!96 = !{ptr @tc_connector_helper_funcs, !97, !"tc_connector_helper_funcs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1352, i32 48}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1335, i32 3}
!100 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @tc_connector_get_modes._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @tc_connector_get_modes._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 683, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tc_get_display_props.__UNIQUE_ID_ddebug328, !104, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 690, i32 3}
!109 = !{ptr @tc_get_display_props.__UNIQUE_ID_ddebug329, !108, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 712, i32 2}
!112 = !{ptr @tc_get_display_props.__UNIQUE_ID_ddebug330, !111, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!113 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 718, i32 2}
!119 = !{ptr @tc_get_display_props.__UNIQUE_ID_ddebug331, !118, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!120 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 721, i32 2}
!126 = !{ptr @tc_get_display_props.__UNIQUE_ID_ddebug332, !125, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 727, i32 2}
!129 = !{ptr @tc_get_display_props._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tc_get_display_props._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @tc_connector_funcs, !132, !"tc_connector_funcs", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1389, i32 41}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1269, i32 3}
!135 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tc_bridge_disable._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @tc_bridge_disable._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1273, i32 3}
!140 = !{ptr @tc_bridge_disable._entry.60, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tc_bridge_disable._entry_ptr.62, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1226, i32 2}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @tc_stream_disable.__UNIQUE_ID_ddebug467, !143, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1158, i32 2}
!148 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @tc_main_link_disable.__UNIQUE_ID_ddebug465, !147, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1244, i32 3}
!152 = !{ptr @tc_bridge_enable._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @tc_bridge_enable._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1250, i32 3}
!156 = !{ptr @tc_bridge_enable._entry.68, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @tc_bridge_enable._entry_ptr.70, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1256, i32 3}
!160 = !{ptr @tc_bridge_enable._entry.71, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tc_bridge_enable._entry_ptr.73, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 900, i32 2}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @tc_main_link_enable.__UNIQUE_ID_ddebug462, !163, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 953, i32 3}
!168 = !{ptr @tc_main_link_enable._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @tc_main_link_enable._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 970, i32 3}
!172 = !{ptr @tc_main_link_enable.__UNIQUE_ID_ddebug463, !171, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 983, i32 4}
!175 = !{ptr @tc_main_link_enable.__UNIQUE_ID_ddebug464, !174, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1053, i32 3}
!178 = !{ptr @tc_main_link_enable._entry.79, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @tc_main_link_enable._entry_ptr.81, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1080, i32 3}
!182 = !{ptr @tc_main_link_enable._entry.82, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @tc_main_link_enable._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1117, i32 3}
!186 = !{ptr @tc_main_link_enable._entry.85, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tc_main_link_enable._entry_ptr.87, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1125, i32 4}
!190 = !{ptr @tc_main_link_enable._entry.88, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tc_main_link_enable._entry_ptr.90, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1130, i32 4}
!194 = !{ptr @tc_main_link_enable._entry.91, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tc_main_link_enable._entry_ptr.93, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1136, i32 3}
!198 = !{ptr @tc_main_link_enable._entry.94, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @tc_main_link_enable._entry_ptr.96, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1137, i32 3}
!202 = !{ptr @tc_main_link_enable._entry.97, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @tc_main_link_enable._entry_ptr.99, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1138, i32 3}
!206 = !{ptr @tc_main_link_enable._entry.100, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @tc_main_link_enable._entry_ptr.102, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1139, i32 3}
!210 = !{ptr @tc_main_link_enable._entry.103, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @tc_main_link_enable._entry_ptr.105, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1140, i32 3}
!214 = !{ptr @tc_main_link_enable._entry.106, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @tc_main_link_enable._entry_ptr.108, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1141, i32 3}
!218 = !{ptr @tc_main_link_enable._entry.109, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @tc_main_link_enable._entry_ptr.111, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1147, i32 2}
!222 = !{ptr @tc_main_link_enable._entry.112, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @tc_main_link_enable._entry_ptr.114, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1150, i32 2}
!226 = !{ptr @tc_main_link_enable._entry.115, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @tc_main_link_enable._entry_ptr.117, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 880, i32 3}
!230 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @tc_wait_link_training._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @tc_wait_link_training._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 413, i32 2}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 414, i32 2}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 415, i32 2}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 416, i32 2}
!241 = !{ptr @.str.124, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 417, i32 2}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 418, i32 2}
!245 = !{ptr @training_pattern1_errors, !246, !"training_pattern1_errors", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 412, i32 27}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 425, i32 2}
!249 = !{ptr @training_pattern2_errors, !250, !"training_pattern2_errors", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 421, i32 27}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1172, i32 2}
!253 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @tc_stream_enable.__UNIQUE_ID_ddebug466, !252, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 476, i32 2}
!257 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug325, !256, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 524, i32 3}
!261 = !{ptr @tc_pxl_pll_en._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @tc_pxl_pll_en._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 529, i32 2}
!265 = !{ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug326, !264, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 531, i32 2}
!268 = !{ptr @tc_pxl_pll_en.__UNIQUE_ID_ddebug327, !267, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 759, i32 2}
!271 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @tc_set_video_mode.__UNIQUE_ID_ddebug333, !270, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 761, i32 2}
!275 = !{ptr @tc_set_video_mode.__UNIQUE_ID_ddebug334, !274, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 763, i32 2}
!278 = !{ptr @tc_set_video_mode.__UNIQUE_ID_ddebug335, !277, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!279 = !{ptr @.str.138, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 765, i32 2}
!281 = !{ptr @tc_set_video_mode.__UNIQUE_ID_ddebug336, !280, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!282 = !{ptr @tc358767_of_ids, !283, !"tc358767_of_ids", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1727, i32 34}
!284 = !{ptr @tc358767_i2c_ids, !285, !"tc358767_i2c_ids", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/bridge/tc358767.c", i32 1721, i32 35}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{!"auto-init"}
!296 = !{i8 0, i8 2}
!297 = !{i64 2148795741, i64 2148795746, i64 2148795759, i64 2148795803, i64 2148795837, i64 2148795858}
!298 = !{!"branch_weights", i32 2000, i32 1}
