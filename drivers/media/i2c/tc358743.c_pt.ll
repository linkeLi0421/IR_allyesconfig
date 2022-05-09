; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tc358743.c_pt.bc'
source_filename = "../drivers/media/i2c/tc358743.c"
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
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc358743_state = type <{ %struct.tc358743_platform_data, %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, ptr, ptr, %struct.delayed_work, %struct.timer_list, %struct.work_struct, i8, %struct.v4l2_dv_timings, [3 x i8], i32, i8, [3 x i8], ptr, ptr }>
%struct.tc358743_platform_data = type { i32, i32, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.95 }
%union.anon.95 = type { [32 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_event = type { i32, %union.anon.107, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.107 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.108, i32, i32, i32, i32, i32 }
%union.anon.108 = type { i64 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.102 }
%union.anon.102 = type { [16 x i32] }

@__param_str_debug = internal constant [15 x i8] c"tc358743.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [28 x i8] c"tc358743.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [38 x i8] c"tc358743.parm=debug:debug level (0-3)\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [66 x i8] c"tc358743.description=Toshiba TC358743 HDMI to CSI-2 bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [63 x i8] c"tc358743.author=Ramakrishnan Muthukrishnan <ram@rkrishnan.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [51 x i8] c"tc358743.author=Mikhail Khelik <mkhelik@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [52 x i8] c"tc358743.author=Mats Randgaard <matrandg@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [41 x i8] c"tc358743.file=drivers/media/i2c/tc358743\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [21 x i8] c"tc358743.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tc358743__300_2233_tc358743_driver_init6 = internal global ptr @tc358743_driver_init, section ".initcall6.init", align 4
@tc358743_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tc358743_remove, ptr @tc358743_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358743_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358743_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc358743_driver_exit = internal global ptr @tc358743_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358743\00", [23 x i8] zeroinitializer }, align 32
@tc358743_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tc358743_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc358743\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tc358743_probe.default_timing = internal global { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@tc358743_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc358743_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/i2c/tc358743.c\00", [35 x i8] zeroinitializer }, align 32
@tc358743_probe._entry_ptr = internal global ptr @tc358743_probe._entry, section ".printk_index", align 4
@tc358743_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s %d-%04x: No platform data!\0A\00", [63 x i8] zeroinitializer }, align 32
@tc358743_probe._entry_ptr.6 = internal global ptr @tc358743_probe._entry.4, section ".printk_index", align 4
@tc358743_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tc358743_core_ops, ptr null, ptr null, ptr @tc358743_video_ops, ptr null, ptr null, ptr null, ptr @tc358743_pad_ops }, [32 x i8] zeroinitializer }, align 32
@tc358743_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: not a TC358743 on address 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@tc358743_probe._entry_ptr.9 = internal global ptr @tc358743_probe._entry.7, section ".printk_index", align 4
@tc358743_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tc358743:2079:(&state->hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@tc358743_ctrl_audio_sampling_rate = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9968000, ptr @.str.320, i32 1, i64 0, i64 768000, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 4, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@tc358743_ctrl_audio_present = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9968001, ptr @.str.321, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 4, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@tc358743_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&state->confctl_mutex\00", [42 x i8] zeroinitializer }, align 32
@tc358743_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(work_completion)(&(&state->delayed_work_enable_hotplug)->work)\00", [32 x i8] zeroinitializer }, align 32
@tc358743_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&(&state->delayed_work_enable_hotplug)->timer\00", [50 x i8] zeroinitializer }, align 32
@tc358743_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @tc358743_cec_adap_enable, ptr @tc358743_cec_adap_monitor_all_enable, ptr null, ptr @tc358743_cec_adap_log_addr, ptr @tc358743_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tc358743_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&state->work_i2c_poll)\00", [55 x i8] zeroinitializer }, align 32
@tc358743_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&state->timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tc358743_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: failed to register the cec device\0A\00", [55 x i8] zeroinitializer }, align 32
@tc358743_probe._entry_ptr.22 = internal global ptr @tc358743_probe._entry.20, section ".printk_index", align 4
@tc358743_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@tc358743_probe._entry_ptr.25 = internal global ptr @tc358743_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1911, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get refclk: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc358743_probe_of\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr = internal global ptr @tc358743_probe_of._entry, section ".printk_index", align 4
@tc358743_probe_of._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 1917, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing endpoint node\0A\00", [41 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.33 = internal global ptr @tc358743_probe_of._entry.31, section ".printk_index", align 4
@tc358743_probe_of._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 1923, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to parse endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.36 = internal global ptr @tc358743_probe_of._entry.34, section ".printk_index", align 4
@tc358743_probe_of._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.3, i32 1930, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing CSI-2 properties in endpoint\0A\00", [58 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.39 = internal global ptr @tc358743_probe_of._entry.37, section ".printk_index", align 4
@tc358743_probe_of._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.3, i32 1936, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid number of lanes\0A\00", [39 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.42 = internal global ptr @tc358743_probe_of._entry.40, section ".printk_index", align 4
@tc358743_probe_of._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.28, ptr @.str.3, i32 1945, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed! to enable clock\0A\00", [39 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.45 = internal global ptr @tc358743_probe_of._entry.43, section ".printk_index", align 4
@tc358743_probe_of._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.28, ptr @.str.3, i32 1966, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported refclk rate: %u Hz\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.48 = internal global ptr @tc358743_probe_of._entry.46, section ".printk_index", align 4
@tc358743_probe_of._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.28, ptr @.str.3, i32 1976, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported bps per lane: %u bps\0A\00", [62 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.51 = internal global ptr @tc358743_probe_of._entry.49, section ".printk_index", align 4
@tc358743_probe_of._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.28, ptr @.str.3, i32 1991, ptr @.str.54, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"untested bps per lane: %u bps\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.55 = internal global ptr @tc358743_probe_of._entry.52, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.28, ptr @.str.3, i32 2007, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358743_probe_of._entry_ptr.59 = internal global ptr @tc358743_probe_of._entry.57, section ".printk_index", align 4
@tc358743_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tc358743_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc358743_g_register, ptr @tc358743_s_register, ptr null, ptr @tc358743_isr, ptr @tc358743_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@tc358743_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc358743_g_input_status, ptr @tc358743_s_stream, ptr null, ptr null, ptr null, ptr @tc358743_s_dv_timings, ptr @tc358743_g_dv_timings, ptr @tc358743_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tc358743_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @tc358743_enum_mbus_code, ptr null, ptr null, ptr @tc358743_get_fmt, ptr @tc358743_set_fmt, ptr null, ptr null, ptr @tc358743_g_edid, ptr @tc358743_s_edid, ptr @tc358743_dv_timings_cap, ptr @tc358743_enum_dv_timings, ptr null, ptr null, ptr null, ptr @tc358743_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.tc358743_log_status.deep_color_mode = private unnamed_addr constant [4 x i32] [i32 8, i32 10, i32 12, i32 16], align 4
@tc358743_log_status.input_color_space = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"YCbCr 601\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"opRGB\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"YCbCr 709\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NA (4)\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xvYCC 601\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NA(6)\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xvYCC 709\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NA(8)\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sYCC601\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NA(10)\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NA(11)\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NA(12)\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"opYCC 601\00", [22 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: -----Chip status-----\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc358743_log_status\00", [44 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr = internal global ptr @tc358743_log_status._entry, section ".printk_index", align 4
@tc358743_log_status._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Chip ID: 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.78 = internal global ptr @tc358743_log_status._entry.76, section ".printk_index", align 4
@tc358743_log_status._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Chip revision: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.81 = internal global ptr @tc358743_log_status._entry.79, section ".printk_index", align 4
@tc358743_log_status._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.3, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: Reset: IR: %d, CEC: %d, CSI TX: %d, HDMI: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.84 = internal global ptr @tc358743_log_status._entry.82, section ".printk_index", align 4
@tc358743_log_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.3, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Sleep mode: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.87 = internal global ptr @tc358743_log_status._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.75, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Cable detected (+5V power): %s\0A\00", [58 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.92 = internal global ptr @tc358743_log_status._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.3, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: DDC lines enabled: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.97 = internal global ptr @tc358743_log_status._entry.95, section ".printk_index", align 4
@tc358743_log_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.75, ptr @.str.3, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Hotplug enabled: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.100 = internal global ptr @tc358743_log_status._entry.98, section ".printk_index", align 4
@tc358743_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.75, ptr @.str.3, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: CEC enabled: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.103 = internal global ptr @tc358743_log_status._entry.101, section ".printk_index", align 4
@tc358743_log_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.75, ptr @.str.3, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----Signal status-----\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.106 = internal global ptr @tc358743_log_status._entry.104, section ".printk_index", align 4
@tc358743_log_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.75, ptr @.str.3, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: TMDS signal detected: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.109 = internal global ptr @tc358743_log_status._entry.107, section ".printk_index", align 4
@tc358743_log_status._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.75, ptr @.str.3, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Stable sync signal: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.112 = internal global ptr @tc358743_log_status._entry.110, section ".printk_index", align 4
@tc358743_log_status._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.75, ptr @.str.3, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: PHY PLL locked: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.115 = internal global ptr @tc358743_log_status._entry.113, section ".printk_index", align 4
@tc358743_log_status._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.75, ptr @.str.3, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: PHY DE detected: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.118 = internal global ptr @tc358743_log_status._entry.116, section ".printk_index", align 4
@tc358743_log_status._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.75, ptr @.str.3, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: No video detected\0A\00", [39 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.121 = internal global ptr @tc358743_log_status._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Detected format: \00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Configured format: \00", [44 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.75, ptr @.str.3, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----CSI-TX status-----\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.126 = internal global ptr @tc358743_log_status._entry.124, section ".printk_index", align 4
@tc358743_log_status._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.75, ptr @.str.3, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Lanes needed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.129 = internal global ptr @tc358743_log_status._entry.127, section ".printk_index", align 4
@tc358743_log_status._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.75, ptr @.str.3, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Lanes in use: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.132 = internal global ptr @tc358743_log_status._entry.130, section ".printk_index", align 4
@tc358743_log_status._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.75, ptr @.str.3, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Waiting for particular sync signal: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.135 = internal global ptr @tc358743_log_status._entry.133, section ".printk_index", align 4
@tc358743_log_status._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.75, ptr @.str.3, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Transmit mode: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.138 = internal global ptr @tc358743_log_status._entry.136, section ".printk_index", align 4
@tc358743_log_status._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.75, ptr @.str.3, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Receive mode: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.141 = internal global ptr @tc358743_log_status._entry.139, section ".printk_index", align 4
@tc358743_log_status._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.75, ptr @.str.3, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Stopped: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.144 = internal global ptr @tc358743_log_status._entry.142, section ".printk_index", align 4
@tc358743_log_status._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.75, ptr @.str.3, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Color space: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.147 = internal global ptr @tc358743_log_status._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YCbCr 422 16-bit\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RGB 888 24-bit\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unsupported\00", [20 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.75, ptr @.str.3, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: -----%s status-----\0A\00", [37 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.153 = internal global ptr @tc358743_log_status._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-D\00", [26 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.75, ptr @.str.3, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: HDCP encrypted content: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.158 = internal global ptr @tc358743_log_status._entry.156, section ".printk_index", align 4
@tc358743_log_status._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.75, ptr @.str.3, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Input color space: %s %s range\0A\00", [58 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.161 = internal global ptr @tc358743_log_status._entry.159, section ".printk_index", align 4
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"limited\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.75, ptr @.str.3, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: AV Mute: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.166 = internal global ptr @tc358743_log_status._entry.164, section ".printk_index", align 4
@tc358743_log_status._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.75, ptr @.str.3, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: Deep color mode: %d-bits per channel\0A\00", [52 x i8] zeroinitializer }, align 32
@tc358743_log_status._entry_ptr.169 = internal global ptr @tc358743_log_status._entry.167, section ".printk_index", align 4
@i2c_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: %s: reading register 0x%x from 0x%x failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_rd\00", [25 x i8] zeroinitializer }, align 32
@i2c_rd._entry_ptr = internal global ptr @i2c_rd._entry, section ".printk_index", align 4
@tc358743_get_detected_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: no valid signal\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tc358743_get_detected_timings\00", [34 x i8] zeroinitializer }, align 32
@tc358743_get_detected_timings._entry_ptr = internal global ptr @tc358743_get_detected_timings._entry, section ".printk_index", align 4
@tc358743_get_detected_timings._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: no sync on signal\0A\00", [35 x i8] zeroinitializer }, align 32
@tc358743_get_detected_timings._entry_ptr.176 = internal global ptr @tc358743_get_detected_timings._entry.174, section ".printk_index", align 4
@print_avi_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: DVI-D signal - AVI infoframe not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"print_avi_infoframe\00", [44 x i8] zeroinitializer }, align 32
@print_avi_infoframe._entry_ptr = internal global ptr @print_avi_infoframe._entry, section ".printk_index", align 4
@print_avi_infoframe._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s: unpack of AVI infoframe failed\0A\00", [54 x i8] zeroinitializer }, align 32
@print_avi_infoframe._entry_ptr.181 = internal global ptr @print_avi_infoframe._entry.179, section ".printk_index", align 4
@.str.182 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: 0x0000-0x00FF: Global Control Register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tc358743_print_register_map\00", [36 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr = internal global ptr @tc358743_print_register_map._entry, section ".printk_index", align 4
@tc358743_print_register_map._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.3, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: 0x0100-0x01FF: CSI2-TX PHY Register\0A\00", [53 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.187 = internal global ptr @tc358743_print_register_map._entry.185, section ".printk_index", align 4
@tc358743_print_register_map._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.3, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: 0x0200-0x03FF: CSI2-TX PPI Register\0A\00", [53 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.190 = internal global ptr @tc358743_print_register_map._entry.188, section ".printk_index", align 4
@tc358743_print_register_map._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.3, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x0400-0x05FF: Reserved\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.193 = internal global ptr @tc358743_print_register_map._entry.191, section ".printk_index", align 4
@tc358743_print_register_map._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.184, ptr @.str.3, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: 0x0600-0x06FF: CEC Register\0A\00", [61 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.196 = internal global ptr @tc358743_print_register_map._entry.194, section ".printk_index", align 4
@tc358743_print_register_map._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.184, ptr @.str.3, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x0700-0x84FF: Reserved\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.199 = internal global ptr @tc358743_print_register_map._entry.197, section ".printk_index", align 4
@tc358743_print_register_map._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.184, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: 0x8500-0x85FF: HDMIRX System Control Register\0A\00", [43 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.202 = internal global ptr @tc358743_print_register_map._entry.200, section ".printk_index", align 4
@tc358743_print_register_map._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.184, ptr @.str.3, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: 0x8600-0x86FF: HDMIRX Audio Control Register\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.205 = internal global ptr @tc358743_print_register_map._entry.203, section ".printk_index", align 4
@tc358743_print_register_map._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.184, ptr @.str.3, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: 0x8700-0x87FF: HDMIRX InfoFrame packet data Register\0A\00", [36 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.208 = internal global ptr @tc358743_print_register_map._entry.206, section ".printk_index", align 4
@tc358743_print_register_map._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.184, ptr @.str.3, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: 0x8800-0x88FF: HDMIRX HDCP Port Register\0A\00", [48 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.211 = internal global ptr @tc358743_print_register_map._entry.209, section ".printk_index", align 4
@tc358743_print_register_map._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.184, ptr @.str.3, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: 0x8900-0x89FF: HDMIRX Video Output Port & 3D Register\0A\00", [35 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.214 = internal global ptr @tc358743_print_register_map._entry.212, section ".printk_index", align 4
@tc358743_print_register_map._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.184, ptr @.str.3, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x8A00-0x8BFF: Reserved\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.217 = internal global ptr @tc358743_print_register_map._entry.215, section ".printk_index", align 4
@tc358743_print_register_map._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.184, ptr @.str.3, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: 0x8C00-0x8FFF: HDMIRX EDID-RAM (1024bytes)\0A\00", [46 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.220 = internal global ptr @tc358743_print_register_map._entry.218, section ".printk_index", align 4
@tc358743_print_register_map._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.184, ptr @.str.3, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: 0x9000-0x90FF: HDMIRX GBD Extraction Control\0A\00", [44 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.223 = internal global ptr @tc358743_print_register_map._entry.221, section ".printk_index", align 4
@tc358743_print_register_map._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.184, ptr @.str.3, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: 0x9100-0x92FF: HDMIRX GBD RAM read\0A\00", [54 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.226 = internal global ptr @tc358743_print_register_map._entry.224, section ".printk_index", align 4
@tc358743_print_register_map._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.184, ptr @.str.3, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x9300-      : Reserved\0A\00", [33 x i8] zeroinitializer }, align 32
@tc358743_print_register_map._entry_ptr.229 = internal global ptr @tc358743_print_register_map._entry.227, section ".printk_index", align 4
@i2c_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: i2c wr reg=%04x: len=%d is too big!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_wr\00", [25 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr = internal global ptr @i2c_wr._entry, section ".printk_index", align 4
@i2c_wr._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: %s: writing register 0x%x from 0x%x failed\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr.234 = internal global ptr @i2c_wr._entry.232, section ".printk_index", align 4
@i2c_wr._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.231, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: I2C write 0x%04x = 0x%02x\00", [32 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr.237 = internal global ptr @i2c_wr._entry.235, section ".printk_index", align 4
@i2c_wr._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.231, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: I2C write 0x%04x = 0x%02x%02x\00", [60 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr.240 = internal global ptr @i2c_wr._entry.238, section ".printk_index", align 4
@i2c_wr._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.231, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: I2C write 0x%04x = 0x%02x%02x%02x%02x\00", [52 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr.243 = internal global ptr @i2c_wr._entry.241, section ".printk_index", align 4
@i2c_wr._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.231, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: I2C write %d bytes from address 0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@i2c_wr._entry_ptr.246 = internal global ptr @i2c_wr._entry.244, section ".printk_index", align 4
@tc358743_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.3, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: IntStatus = 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc358743_isr\00", [19 x i8] zeroinitializer }, align 32
@tc358743_isr._entry_ptr = internal global ptr @tc358743_isr._entry, section ".printk_index", align 4
@tc358743_isr._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.248, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s: Unhandled IntStatus interrupts: 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@tc358743_isr._entry_ptr.251 = internal global ptr @tc358743_isr._entry.249, section ".printk_index", align 4
@tc358743_hdmi_misc_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.3, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: MISC_INT = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tc358743_hdmi_misc_int_handler\00", [33 x i8] zeroinitializer }, align 32
@tc358743_hdmi_misc_int_handler._entry_ptr = internal global ptr @tc358743_hdmi_misc_int_handler._entry, section ".printk_index", align 4
@tc358743_hdmi_misc_int_handler._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.3, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: %s: Unhandled MISC_INT interrupts: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@tc358743_hdmi_misc_int_handler._entry_ptr.256 = internal global ptr @tc358743_hdmi_misc_int_handler._entry.254, section ".printk_index", align 4
@tc358743_reset_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.3, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc358743_reset_phy\00", [45 x i8] zeroinitializer }, align 32
@tc358743_reset_phy._entry_ptr = internal global ptr @tc358743_reset_phy._entry, section ".printk_index", align 4
@__const.tc358743_format_change.tc358743_ev_fmt = private unnamed_addr constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32], [4 x i8] } { i32 5, [4 x i8] c"\FF\FF\FF\FF", { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer, [4 x i8] zeroinitializer }, align 8
@tc358743_format_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.3, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: No signal\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc358743_format_change\00", [41 x i8] zeroinitializer }, align 32
@tc358743_format_change._entry_ptr = internal global ptr @tc358743_format_change._entry, section ".printk_index", align 4
@.str.261 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tc358743_format_change: New format: \00", [59 x i8] zeroinitializer }, align 32
@enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: %sable\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable_stream\00", [18 x i8] zeroinitializer }, align 32
@enable_stream._entry_ptr = internal global ptr @enable_stream._entry, section ".printk_index", align 4
@.str.264 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@tc358743_hdmi_cbit_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.3, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: CBIT_INT = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tc358743_hdmi_cbit_int_handler\00", [33 x i8] zeroinitializer }, align 32
@tc358743_hdmi_cbit_int_handler._entry_ptr = internal global ptr @tc358743_hdmi_cbit_int_handler._entry, section ".printk_index", align 4
@tc358743_hdmi_cbit_int_handler._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.3, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: Audio sample rate changed\0A\00", [59 x i8] zeroinitializer }, align 32
@tc358743_hdmi_cbit_int_handler._entry_ptr.270 = internal global ptr @tc358743_hdmi_cbit_int_handler._entry.268, section ".printk_index", align 4
@tc358743_hdmi_cbit_int_handler._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.267, ptr @.str.3, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Audio present changed\0A\00", [63 x i8] zeroinitializer }, align 32
@tc358743_hdmi_cbit_int_handler._entry_ptr.273 = internal global ptr @tc358743_hdmi_cbit_int_handler._entry.271, section ".printk_index", align 4
@tc358743_hdmi_cbit_int_handler._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.267, ptr @.str.3, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: %s: Unhandled CBIT_INT interrupts: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@tc358743_hdmi_cbit_int_handler._entry_ptr.276 = internal global ptr @tc358743_hdmi_cbit_int_handler._entry.274, section ".printk_index", align 4
@get_audio_sampling_rate.code_to_rate = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 44100, i32 0, i32 48000, i32 32000, i32 22050, i32 384000, i32 24000, i32 352800, i32 88200, i32 768000, i32 96000, i32 705600, i32 176400, i32 0, i32 192000, i32 0], [32 x i8] zeroinitializer }, align 32
@tc358743_hdmi_clk_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.3, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: CLK_INT = 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tc358743_hdmi_clk_int_handler\00", [34 x i8] zeroinitializer }, align 32
@tc358743_hdmi_clk_int_handler._entry_ptr = internal global ptr @tc358743_hdmi_clk_int_handler._entry, section ".printk_index", align 4
@tc358743_hdmi_clk_int_handler._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.278, ptr @.str.3, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s: DE size or position has changed\0A\00", [53 x i8] zeroinitializer }, align 32
@tc358743_hdmi_clk_int_handler._entry_ptr.281 = internal global ptr @tc358743_hdmi_clk_int_handler._entry.279, section ".printk_index", align 4
@tc358743_hdmi_clk_int_handler._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.278, ptr @.str.3, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: %s: Unhandled CLK_INT interrupts: 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@tc358743_hdmi_clk_int_handler._entry_ptr.284 = internal global ptr @tc358743_hdmi_clk_int_handler._entry.282, section ".printk_index", align 4
@tc358743_hdmi_sys_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.286, ptr @.str.3, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: SYS_INT = 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tc358743_hdmi_sys_int_handler\00", [34 x i8] zeroinitializer }, align 32
@tc358743_hdmi_sys_int_handler._entry_ptr = internal global ptr @tc358743_hdmi_sys_int_handler._entry, section ".printk_index", align 4
@tc358743_hdmi_sys_int_handler._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.286, ptr @.str.3, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: Tx 5V power present: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@tc358743_hdmi_sys_int_handler._entry_ptr.289 = internal global ptr @tc358743_hdmi_sys_int_handler._entry.287, section ".printk_index", align 4
@tc358743_hdmi_sys_int_handler._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.286, ptr @.str.3, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: HDMI->DVI change detected\0A\00", [59 x i8] zeroinitializer }, align 32
@tc358743_hdmi_sys_int_handler._entry_ptr.292 = internal global ptr @tc358743_hdmi_sys_int_handler._entry.290, section ".printk_index", align 4
@tc358743_hdmi_sys_int_handler._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.286, ptr @.str.3, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: DVI->HDMI change detected\0A\00", [59 x i8] zeroinitializer }, align 32
@tc358743_hdmi_sys_int_handler._entry_ptr.295 = internal global ptr @tc358743_hdmi_sys_int_handler._entry.293, section ".printk_index", align 4
@tc358743_hdmi_sys_int_handler._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.286, ptr @.str.3, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: %s: Unhandled SYS_INT interrupts: 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@tc358743_hdmi_sys_int_handler._entry_ptr.298 = internal global ptr @tc358743_hdmi_sys_int_handler._entry.296, section ".printk_index", align 4
@tc358743_enable_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.3, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: no EDID -> no hotplug\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc358743_enable_edid\00", [43 x i8] zeroinitializer }, align 32
@tc358743_enable_edid._entry_ptr = internal global ptr @tc358743_enable_edid._entry, section ".printk_index", align 4
@tc358743_enable_edid._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.300, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tc358743_enable_edid._entry_ptr.302 = internal global ptr @tc358743_enable_edid._entry.301, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tc358743_disable_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.303, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tc358743_disable_edid\00", [42 x i8] zeroinitializer }, align 32
@tc358743_disable_edid._entry_ptr = internal global ptr @tc358743_disable_edid._entry, section ".printk_index", align 4
@tc358743_hdmi_audio_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.3, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: AUDIO_INT = 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tc358743_hdmi_audio_int_handler\00", [32 x i8] zeroinitializer }, align 32
@tc358743_hdmi_audio_int_handler._entry_ptr = internal global ptr @tc358743_hdmi_audio_int_handler._entry, section ".printk_index", align 4
@tc358743_csi_err_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.307, ptr @.str.3, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: %s: CSI_ERR = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tc358743_csi_err_int_handler\00", [35 x i8] zeroinitializer }, align 32
@tc358743_csi_err_int_handler._entry_ptr = internal global ptr @tc358743_csi_err_int_handler._entry, section ".printk_index", align 4
@tc358743_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.309, ptr @.str.3, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: status = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tc358743_g_input_status\00", [40 x i8] zeroinitializer }, align 32
@tc358743_g_input_status._entry_ptr = internal global ptr @tc358743_g_input_status._entry, section ".printk_index", align 4
@tc358743_set_csi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.310, ptr @.str.3, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc358743_set_csi\00", [47 x i8] zeroinitializer }, align 32
@tc358743_set_csi._entry_ptr = internal global ptr @tc358743_set_csi._entry, section ".printk_index", align 4
@.str.311 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tc358743_query_dv_timings: \00", [36 x i8] zeroinitializer }, align 32
@tc358743_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.97 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 13000000, i64 165000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@tc358743_query_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.313, ptr @.str.3, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: timings out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tc358743_query_dv_timings\00", [38 x i8] zeroinitializer }, align 32
@tc358743_query_dv_timings._entry_ptr = internal global ptr @tc358743_query_dv_timings._entry, section ".printk_index", align 4
@tc358743_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.314, ptr @.str.3, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc358743_set_pll\00", [47 x i8] zeroinitializer }, align 32
@tc358743_set_pll._entry_ptr = internal global ptr @tc358743_set_pll._entry, section ".printk_index", align 4
@tc358743_set_pll._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.314, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: updating PLL clock\0A\00", [34 x i8] zeroinitializer }, align 32
@tc358743_set_pll._entry_ptr.317 = internal global ptr @tc358743_set_pll._entry.315, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tc358743_s_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.319, ptr @.str.3, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s, pad %d, start block %d, blocks %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tc358743_s_edid\00", [16 x i8] zeroinitializer }, align 32
@tc358743_s_edid._entry_ptr = internal global ptr @tc358743_s_edid._entry, section ".printk_index", align 4
@.str.320 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Audio sampling rate\00", [44 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Audio present\00", [18 x i8] zeroinitializer }, align 32
@tc358743_delayed_work_enable_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.322, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tc358743_delayed_work_enable_hotplug\00", [59 x i8] zeroinitializer }, align 32
@tc358743_delayed_work_enable_hotplug._entry_ptr = internal global ptr @tc358743_delayed_work_enable_hotplug._entry, section ".printk_index", align 4
@tc358743_set_hdmi_hdcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc358743_set_hdmi_hdcp\00", [41 x i8] zeroinitializer }, align 32
@tc358743_set_hdmi_hdcp._entry_ptr = internal global ptr @tc358743_set_hdmi_hdcp._entry, section ".printk_index", align 4
@.str.325 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tc358743_s_dv_timings: \00", [40 x i8] zeroinitializer }, align 32
@tc358743_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.3, i32 1535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: no change\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tc358743_s_dv_timings\00", [42 x i8] zeroinitializer }, align 32
@tc358743_s_dv_timings._entry_ptr = internal global ptr @tc358743_s_dv_timings._entry, section ".printk_index", align 4
@tc358743_s_dv_timings._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.329, ptr @.str.3, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tc358743_s_dv_timings._entry_ptr.331 = internal global ptr @tc358743_s_dv_timings._entry.330, section ".printk_index", align 4
@tc358743_set_csi_color_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.333, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: YCbCr 422 16-bit\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tc358743_set_csi_color_space\00", [35 x i8] zeroinitializer }, align 32
@tc358743_set_csi_color_space._entry_ptr = internal global ptr @tc358743_set_csi_color_space._entry, section ".printk_index", align 4
@tc358743_set_csi_color_space._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.333, ptr @.str.3, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: RGB 888 24-bit\0A\00", [38 x i8] zeroinitializer }, align 32
@tc358743_set_csi_color_space._entry_ptr.336 = internal global ptr @tc358743_set_csi_color_space._entry.334, section ".printk_index", align 4
@tc358743_set_csi_color_space._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.333, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: Unsupported format code 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@tc358743_set_csi_color_space._entry_ptr.339 = internal global ptr @tc358743_set_csi_color_space._entry.337, section ".printk_index", align 4
@tc358743_enable_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.341, ptr @.str.3, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: cable connected = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tc358743_enable_interrupts\00", [37 x i8] zeroinitializer }, align 32
@tc358743_enable_interrupts._entry_ptr = internal global ptr @tc358743_enable_interrupts._entry, section ".printk_index", align 4
@switch.table.tc358743_get_fmt = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 8, i32 1, i32 1, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.tc358743_set_fmt = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 8, i32 1, i32 1, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.tc358743_get_mbus_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 257, i32 258, i32 260, i32 264], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 26000000, i64 27000000, i64 42000000]
@__sancov_gen_cov_switch_values.342 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.343 = internal global [5 x i64] [i64 3, i64 32, i64 26000000, i64 27000000, i64 42000000]
@__sancov_gen_cov_switch_values.344 = internal global [4 x i64] [i64 2, i64 32, i64 4106, i64 8207]
@__sancov_gen_cov_switch_values.345 = internal global [7 x i64] [i64 5, i64 64, i64 34144, i64 34147, i64 34148, i64 34257, i64 34880]
@__sancov_gen_cov_switch_values.346 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.347 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.349 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 32, i64 4106, i64 8207]
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 39, i32 12 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"tc358743_driver\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2223, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2225, i32 11 }
@___asan_gen_.360 = private unnamed_addr constant [18 x i8] c"tc358743_of_match\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2216, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"tc358743_id\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2208, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant [15 x i8] c"default_timing\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2035, i32 32 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2045, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2062, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant [13 x i8] c"tc358743_ops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1856, i32 37 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2073, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2079, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [34 x i8] c"tc358743_ctrl_audio_sampling_rate\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1864, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant [28 x i8] c"tc358743_ctrl_audio_present\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1875, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2115, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2117, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [22 x i8] c"tc358743_cec_adap_ops\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 915, i32 34 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2148, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2150, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2158, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2171, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1907, i32 29 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1910, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1917, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1923, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1930, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1936, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1945, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1965, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1976, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1991, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2004, i32 51 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 2007, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant [18 x i8] c"tc358743_core_ops\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1826, i32 42 }
@___asan_gen_.534 = private unnamed_addr constant [19 x i8] c"tc358743_video_ops\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1837, i32 43 }
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"tc358743_pad_ops\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1845, i32 41 }
@___asan_gen_.540 = private unnamed_addr constant [18 x i8] c"input_color_space\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1247, i32 28 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1248, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1248, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1248, i32 23 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1248, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1248, i32 45 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1249, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1249, i32 16 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1249, i32 25 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1249, i32 38 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1249, i32 47 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1250, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1250, i32 13 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1250, i32 23 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1250, i32 33 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1252, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1253, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1255, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1257, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1262, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1263, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1265, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1268, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1271, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1273, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1274, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1276, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1278, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1280, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1284, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1286, i32 35 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1289, i32 34 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1292, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1293, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1295, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1297, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1300, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1303, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1306, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1309, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1315, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1316, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1318, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1323, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1325, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 136, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 313, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 317, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 441, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 448, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 452, i32 21 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1336, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1337, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1338, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1339, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1340, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1341, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1342, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1343, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1344, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1345, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1346, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1347, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1348, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1349, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1350, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1351, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 151, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 168, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 178, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 182, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 186, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 190, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1414, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1455, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1074, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1093, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 496, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 995, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1003, i32 6 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 520, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1106, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1110, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1121, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1131, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant [13 x i8] c"code_to_rate\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 281, i32 19 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1144, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1148, i32 3 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1166, i32 3 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1179, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1184, i32 3 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1203, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1220, i32 3 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1232, i32 3 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 408, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 413, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 394, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1053, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1061, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1517, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 685, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1584, i32 35 }
@___asan_gen_.1179 = private unnamed_addr constant [21 x i8] c"tc358743_timings_cap\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 57, i32 41 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1589, i32 3 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 554, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 570, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1779, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1866, i32 10 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1877, i32 10 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 363, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 370, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1531, i32 35 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1535, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1541, i32 3 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 638, i32 3 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 650, i32 3 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 661, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1282 = private constant [32 x i8] c"../drivers/media/i2c/tc358743.c\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1282, i32 1025, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant [30 x i8] c"switch.table.tc358743_get_fmt\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant [30 x i8] c"switch.table.tc358743_set_fmt\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [38 x i8] c"switch.table.tc358743_get_mbus_config\00", align 1
@llvm.compiler.used = appending global [434 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_tc358743_driver_exit, ptr @__initcall__kmod_tc358743__300_2233_tc358743_driver_init6, ptr @__param_debug, ptr @enable_stream._entry, ptr @enable_stream._entry_ptr, ptr @i2c_rd._entry, ptr @i2c_rd._entry_ptr, ptr @i2c_wr._entry, ptr @i2c_wr._entry.232, ptr @i2c_wr._entry.235, ptr @i2c_wr._entry.238, ptr @i2c_wr._entry.241, ptr @i2c_wr._entry.244, ptr @i2c_wr._entry_ptr, ptr @i2c_wr._entry_ptr.234, ptr @i2c_wr._entry_ptr.237, ptr @i2c_wr._entry_ptr.240, ptr @i2c_wr._entry_ptr.243, ptr @i2c_wr._entry_ptr.246, ptr @print_avi_infoframe._entry, ptr @print_avi_infoframe._entry.179, ptr @print_avi_infoframe._entry_ptr, ptr @print_avi_infoframe._entry_ptr.181, ptr @tc358743_csi_err_int_handler._entry, ptr @tc358743_csi_err_int_handler._entry_ptr, ptr @tc358743_delayed_work_enable_hotplug._entry, ptr @tc358743_delayed_work_enable_hotplug._entry_ptr, ptr @tc358743_disable_edid._entry, ptr @tc358743_disable_edid._entry_ptr, ptr @tc358743_driver_exit, ptr @tc358743_enable_edid._entry, ptr @tc358743_enable_edid._entry.301, ptr @tc358743_enable_edid._entry_ptr, ptr @tc358743_enable_edid._entry_ptr.302, ptr @tc358743_enable_interrupts._entry, ptr @tc358743_enable_interrupts._entry_ptr, ptr @tc358743_format_change._entry, ptr @tc358743_format_change._entry_ptr, ptr @tc358743_g_input_status._entry, ptr @tc358743_g_input_status._entry_ptr, ptr @tc358743_get_detected_timings._entry, ptr @tc358743_get_detected_timings._entry.174, ptr @tc358743_get_detected_timings._entry_ptr, ptr @tc358743_get_detected_timings._entry_ptr.176, ptr @tc358743_hdmi_audio_int_handler._entry, ptr @tc358743_hdmi_audio_int_handler._entry_ptr, ptr @tc358743_hdmi_cbit_int_handler._entry, ptr @tc358743_hdmi_cbit_int_handler._entry.268, ptr @tc358743_hdmi_cbit_int_handler._entry.271, ptr @tc358743_hdmi_cbit_int_handler._entry.274, ptr @tc358743_hdmi_cbit_int_handler._entry_ptr, ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.270, ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.273, ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.276, ptr @tc358743_hdmi_clk_int_handler._entry, ptr @tc358743_hdmi_clk_int_handler._entry.279, ptr @tc358743_hdmi_clk_int_handler._entry.282, ptr @tc358743_hdmi_clk_int_handler._entry_ptr, ptr @tc358743_hdmi_clk_int_handler._entry_ptr.281, ptr @tc358743_hdmi_clk_int_handler._entry_ptr.284, ptr @tc358743_hdmi_misc_int_handler._entry, ptr @tc358743_hdmi_misc_int_handler._entry.254, ptr @tc358743_hdmi_misc_int_handler._entry_ptr, ptr @tc358743_hdmi_misc_int_handler._entry_ptr.256, ptr @tc358743_hdmi_sys_int_handler._entry, ptr @tc358743_hdmi_sys_int_handler._entry.287, ptr @tc358743_hdmi_sys_int_handler._entry.290, ptr @tc358743_hdmi_sys_int_handler._entry.293, ptr @tc358743_hdmi_sys_int_handler._entry.296, ptr @tc358743_hdmi_sys_int_handler._entry_ptr, ptr @tc358743_hdmi_sys_int_handler._entry_ptr.289, ptr @tc358743_hdmi_sys_int_handler._entry_ptr.292, ptr @tc358743_hdmi_sys_int_handler._entry_ptr.295, ptr @tc358743_hdmi_sys_int_handler._entry_ptr.298, ptr @tc358743_isr._entry, ptr @tc358743_isr._entry.249, ptr @tc358743_isr._entry_ptr, ptr @tc358743_isr._entry_ptr.251, ptr @tc358743_log_status._entry, ptr @tc358743_log_status._entry.101, ptr @tc358743_log_status._entry.104, ptr @tc358743_log_status._entry.107, ptr @tc358743_log_status._entry.110, ptr @tc358743_log_status._entry.113, ptr @tc358743_log_status._entry.116, ptr @tc358743_log_status._entry.119, ptr @tc358743_log_status._entry.124, ptr @tc358743_log_status._entry.127, ptr @tc358743_log_status._entry.130, ptr @tc358743_log_status._entry.133, ptr @tc358743_log_status._entry.136, ptr @tc358743_log_status._entry.139, ptr @tc358743_log_status._entry.142, ptr @tc358743_log_status._entry.145, ptr @tc358743_log_status._entry.151, ptr @tc358743_log_status._entry.156, ptr @tc358743_log_status._entry.159, ptr @tc358743_log_status._entry.164, ptr @tc358743_log_status._entry.167, ptr @tc358743_log_status._entry.76, ptr @tc358743_log_status._entry.79, ptr @tc358743_log_status._entry.82, ptr @tc358743_log_status._entry.85, ptr @tc358743_log_status._entry.90, ptr @tc358743_log_status._entry.95, ptr @tc358743_log_status._entry.98, ptr @tc358743_log_status._entry_ptr, ptr @tc358743_log_status._entry_ptr.100, ptr @tc358743_log_status._entry_ptr.103, ptr @tc358743_log_status._entry_ptr.106, ptr @tc358743_log_status._entry_ptr.109, ptr @tc358743_log_status._entry_ptr.112, ptr @tc358743_log_status._entry_ptr.115, ptr @tc358743_log_status._entry_ptr.118, ptr @tc358743_log_status._entry_ptr.121, ptr @tc358743_log_status._entry_ptr.126, ptr @tc358743_log_status._entry_ptr.129, ptr @tc358743_log_status._entry_ptr.132, ptr @tc358743_log_status._entry_ptr.135, ptr @tc358743_log_status._entry_ptr.138, ptr @tc358743_log_status._entry_ptr.141, ptr @tc358743_log_status._entry_ptr.144, ptr @tc358743_log_status._entry_ptr.147, ptr @tc358743_log_status._entry_ptr.153, ptr @tc358743_log_status._entry_ptr.158, ptr @tc358743_log_status._entry_ptr.161, ptr @tc358743_log_status._entry_ptr.166, ptr @tc358743_log_status._entry_ptr.169, ptr @tc358743_log_status._entry_ptr.78, ptr @tc358743_log_status._entry_ptr.81, ptr @tc358743_log_status._entry_ptr.84, ptr @tc358743_log_status._entry_ptr.87, ptr @tc358743_log_status._entry_ptr.92, ptr @tc358743_log_status._entry_ptr.97, ptr @tc358743_print_register_map._entry, ptr @tc358743_print_register_map._entry.185, ptr @tc358743_print_register_map._entry.188, ptr @tc358743_print_register_map._entry.191, ptr @tc358743_print_register_map._entry.194, ptr @tc358743_print_register_map._entry.197, ptr @tc358743_print_register_map._entry.200, ptr @tc358743_print_register_map._entry.203, ptr @tc358743_print_register_map._entry.206, ptr @tc358743_print_register_map._entry.209, ptr @tc358743_print_register_map._entry.212, ptr @tc358743_print_register_map._entry.215, ptr @tc358743_print_register_map._entry.218, ptr @tc358743_print_register_map._entry.221, ptr @tc358743_print_register_map._entry.224, ptr @tc358743_print_register_map._entry.227, ptr @tc358743_print_register_map._entry_ptr, ptr @tc358743_print_register_map._entry_ptr.187, ptr @tc358743_print_register_map._entry_ptr.190, ptr @tc358743_print_register_map._entry_ptr.193, ptr @tc358743_print_register_map._entry_ptr.196, ptr @tc358743_print_register_map._entry_ptr.199, ptr @tc358743_print_register_map._entry_ptr.202, ptr @tc358743_print_register_map._entry_ptr.205, ptr @tc358743_print_register_map._entry_ptr.208, ptr @tc358743_print_register_map._entry_ptr.211, ptr @tc358743_print_register_map._entry_ptr.214, ptr @tc358743_print_register_map._entry_ptr.217, ptr @tc358743_print_register_map._entry_ptr.220, ptr @tc358743_print_register_map._entry_ptr.223, ptr @tc358743_print_register_map._entry_ptr.226, ptr @tc358743_print_register_map._entry_ptr.229, ptr @tc358743_probe._entry, ptr @tc358743_probe._entry.20, ptr @tc358743_probe._entry.23, ptr @tc358743_probe._entry.4, ptr @tc358743_probe._entry.7, ptr @tc358743_probe._entry_ptr, ptr @tc358743_probe._entry_ptr.22, ptr @tc358743_probe._entry_ptr.25, ptr @tc358743_probe._entry_ptr.6, ptr @tc358743_probe._entry_ptr.9, ptr @tc358743_probe_of._entry, ptr @tc358743_probe_of._entry.31, ptr @tc358743_probe_of._entry.34, ptr @tc358743_probe_of._entry.37, ptr @tc358743_probe_of._entry.40, ptr @tc358743_probe_of._entry.43, ptr @tc358743_probe_of._entry.46, ptr @tc358743_probe_of._entry.49, ptr @tc358743_probe_of._entry.52, ptr @tc358743_probe_of._entry.57, ptr @tc358743_probe_of._entry_ptr, ptr @tc358743_probe_of._entry_ptr.33, ptr @tc358743_probe_of._entry_ptr.36, ptr @tc358743_probe_of._entry_ptr.39, ptr @tc358743_probe_of._entry_ptr.42, ptr @tc358743_probe_of._entry_ptr.45, ptr @tc358743_probe_of._entry_ptr.48, ptr @tc358743_probe_of._entry_ptr.51, ptr @tc358743_probe_of._entry_ptr.55, ptr @tc358743_probe_of._entry_ptr.59, ptr @tc358743_query_dv_timings._entry, ptr @tc358743_query_dv_timings._entry_ptr, ptr @tc358743_reset_phy._entry, ptr @tc358743_reset_phy._entry_ptr, ptr @tc358743_s_dv_timings._entry, ptr @tc358743_s_dv_timings._entry.330, ptr @tc358743_s_dv_timings._entry_ptr, ptr @tc358743_s_dv_timings._entry_ptr.331, ptr @tc358743_s_edid._entry, ptr @tc358743_s_edid._entry_ptr, ptr @tc358743_set_csi._entry, ptr @tc358743_set_csi._entry_ptr, ptr @tc358743_set_csi_color_space._entry, ptr @tc358743_set_csi_color_space._entry.334, ptr @tc358743_set_csi_color_space._entry.337, ptr @tc358743_set_csi_color_space._entry_ptr, ptr @tc358743_set_csi_color_space._entry_ptr.336, ptr @tc358743_set_csi_color_space._entry_ptr.339, ptr @tc358743_set_hdmi_hdcp._entry, ptr @tc358743_set_hdmi_hdcp._entry_ptr, ptr @tc358743_set_pll._entry, ptr @tc358743_set_pll._entry.315, ptr @tc358743_set_pll._entry_ptr, ptr @tc358743_set_pll._entry_ptr.317, ptr @debug, ptr @tc358743_driver, ptr @.str, ptr @tc358743_of_match, ptr @tc358743_id, ptr @tc358743_probe.default_timing, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @tc358743_ops, ptr @.str.8, ptr @tc358743_probe._key, ptr @.str.10, ptr @tc358743_ctrl_audio_sampling_rate, ptr @tc358743_ctrl_audio_present, ptr @tc358743_probe.__key, ptr @.str.11, ptr @tc358743_probe.__key.12, ptr @.str.13, ptr @tc358743_probe.__key.14, ptr @.str.15, ptr @tc358743_cec_adap_ops, ptr @tc358743_probe.__key.16, ptr @.str.17, ptr @tc358743_probe.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @tc358743_core_ops, ptr @tc358743_video_ops, ptr @tc358743_pad_ops, ptr @tc358743_log_status.input_color_space, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @get_audio_sampling_rate.code_to_rate, ptr @.str.277, ptr @.str.278, ptr @.str.280, ptr @.str.283, ptr @.str.285, ptr @.str.286, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @tc358743_timings_cap, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.316, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.332, ptr @.str.333, ptr @.str.335, ptr @.str.338, ptr @.str.340, ptr @.str.341, ptr @switch.table.tc358743_get_fmt, ptr @switch.table.tc358743_set_fmt, ptr @switch.table.tc358743_get_mbus_config], section "llvm.metadata"
@0 = internal global [314 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.default_timing to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_ctrl_audio_sampling_rate to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_ctrl_audio_present to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_probe_of._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status.input_color_space to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_log_status._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_get_detected_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_get_detected_timings._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_avi_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_avi_infoframe._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_print_register_map._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_wr._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_isr._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_misc_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_misc_int_handler._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_reset_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_format_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_cbit_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_cbit_int_handler._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_cbit_int_handler._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_cbit_int_handler._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_audio_sampling_rate.code_to_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_clk_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_clk_int_handler._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_clk_int_handler._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_sys_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_sys_int_handler._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_sys_int_handler._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_sys_int_handler._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_sys_int_handler._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_enable_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_enable_edid._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_disable_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_hdmi_audio_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_csi_err_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_csi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_query_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_pll._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_s_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_delayed_work_enable_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_hdmi_hdcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_s_dv_timings._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_csi_color_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_csi_color_space._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_set_csi_color_space._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358743_enable_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc358743_get_fmt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc358743_set_fmt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc358743_get_mbus_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc358743_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358743_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @tc358743_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_client = getelementptr i8, ptr %1, i32 412
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr i8, ptr %1, i32 620
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %work_i2c_poll = getelementptr i8, ptr %1, i32 668
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %work_i2c_poll) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delayed_work_enable_hotplug = getelementptr i8, ptr %1, i32 520
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hotplug) #10
  %cec_adap = getelementptr i8, ptr %1, i32 860
  %6 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %7) #10
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #10
  %confctl_mutex = getelementptr i8, ptr %1, i32 416
  tail call void @mutex_destroy(ptr noundef %confctl_mutex) #10
  %hdl = getelementptr i8, ptr %1, i32 228
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_probe(ptr noundef %client) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #10
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr, align 2
  %conv = zext i16 %18 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name9 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %16, i32 noundef %conv, i32 noundef %shl, ptr noundef %name9) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 952, i32 noundef 3520) #10
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %do.end13.cleanup_crit_edge, label %if.end18

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %do.end13
  %i2c_client = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %i2c_client, align 4
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call ptr @memcpy(ptr %call.i, ptr %1, i32 64)
  %bus = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %bus, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endpoint.i) #10
  %22 = call ptr @memset(ptr %endpoint.i, i32 0, i32 64)
  %call.i316 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  %cmp.i.i = icmp ugt ptr %call.i316, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.else
  %cmp.not.i = icmp eq ptr %call.i316, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.tc358743_probe_of.exit.thread_crit_edge, label %do.end.i

if.then.i.tc358743_probe_of.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_probe_of.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call.i316 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %23) #13
  br label %tc358743_probe_of.exit

if.end7.i:                                        ; preds = %if.else
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %call8.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %25, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %do.end12.i, label %cond.end.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %tc358743_probe_of.exit.thread

cond.end.i:                                       ; preds = %if.end7.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call8.i, i32 0, i32 3
  %call15.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef %fwnode.i, ptr noundef nonnull %endpoint.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end21.i, label %do.end20.i

do.end20.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %put_node.i

if.end21.i:                                       ; preds = %cond.end.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 1
  %26 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp22.not.i = icmp eq i32 %27, 5
  br i1 %cmp22.not.i, label %lor.lhs.false.i, label %if.end21.i.do.end31.i_crit_edge

if.end21.i.do.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %mipi_csi2.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2, i32 2
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2, i32 2, i32 3
  %28 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp23.i = icmp eq i8 %29, 0
  br i1 %cmp23.i, label %lor.lhs.false.i.do.end31.i_crit_edge, label %lor.lhs.false25.i

lor.lhs.false.i.do.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 4
  %30 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp26.i = icmp eq i32 %31, 0
  br i1 %cmp26.i, label %lor.lhs.false25.i.do.end31.i_crit_edge, label %if.end32.i

lor.lhs.false25.i.do.end31.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %lor.lhs.false25.i.do.end31.i_crit_edge, %lor.lhs.false.i.do.end31.i_crit_edge, %if.end21.i.do.end31.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %free_endpoint.i

if.end32.i:                                       ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp37.i = icmp ugt i8 %29, 4
  br i1 %cmp37.i, label %do.end42.i, label %if.end43.i

do.end42.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %free_endpoint.i

if.end43.i:                                       ; preds = %if.end32.i
  %bus44.i = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %bus44.i, ptr %mipi_csi2.i, i32 24)
  %call.i.i317 = call i32 @clk_prepare(ptr noundef %call.i316) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i317)
  %tobool.not.i.i = icmp eq i32 %call.i.i317, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end43.i.do.end52.i_crit_edge

if.end43.i.do.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52.i

if.end.i.i:                                       ; preds = %if.end43.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call.i316) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end53.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call.i316) #10
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then3.i.i, %if.end43.i.do.end52.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i317, %if.end43.i.do.end52.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #13
  br label %free_endpoint.i

if.end53.i:                                       ; preds = %if.end.i.i
  %call54.i = call i32 @clk_get_rate(ptr noundef %call.i316) #10
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call54.i, ptr %call.i, align 4
  %ddc5v_delay.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %ddc5v_delay.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %ddc5v_delay.i, align 4
  %enable_hdcp.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %enable_hdcp.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %enable_hdcp.i, align 4
  %fifo_level.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %fifo_level.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 16, ptr %fifo_level.i, align 2
  %37 = zext i32 %call54.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call54.i, label %do.end66.i [
    i32 26000000, label %if.end53.i.sw.bb.i_crit_edge
    i32 27000000, label %if.end53.i.sw.bb.i_crit_edge327
    i32 42000000, label %if.end53.i.sw.bb.i_crit_edge328
  ]

if.end53.i.sw.bb.i_crit_edge328:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end53.i.sw.bb.i_crit_edge327:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end53.i.sw.bb.i_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end53.i.sw.bb.i_crit_edge, %if.end53.i.sw.bb.i_crit_edge327, %if.end53.i.sw.bb.i_crit_edge328
  %div.i = udiv i32 %call54.i, 6000000
  %conv62.i = trunc i32 %div.i to i16
  %pll_prd.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %pll_prd.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv62.i, ptr %pll_prd.i, align 4
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 3
  %39 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link_frequencies.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %.tr.i = trunc i64 %42 to i32
  %conv69.i = shl i32 %.tr.i, 1
  %43 = add i32 %conv69.i, -1000000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -937500001, i32 %43)
  %44 = icmp ult i32 %43, -937500001
  br i1 %44, label %do.end78.i, label %if.end79.i

do.end66.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call54.i) #13
  br label %disable_clk.i

do.end78.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv69.i) #13
  br label %disable_clk.i

if.end79.i:                                       ; preds = %sw.bb.i
  %div82.i = udiv i32 %conv69.i, %call54.i
  %mul86.i = mul nuw nsw i32 %div82.i, %div.i
  %conv87.i = trunc i32 %mul86.i to i16
  %pll_fbd.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %pll_fbd.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv87.i, ptr %pll_fbd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 594000000, i32 %conv69.i)
  %cmp89.not.i = icmp eq i32 %conv69.i, 594000000
  br i1 %cmp89.not.i, label %if.end79.i.if.end95.i_crit_edge, label %do.end94.i

if.end79.i.if.end95.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

do.end94.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv69.i) #13
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end94.i, %if.end79.i.if.end95.i_crit_edge
  %lineinitcnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %lineinitcnt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3712, ptr %lineinitcnt.i, align 4
  %lptxtimecnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %lptxtimecnt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %lptxtimecnt.i, align 4
  %tclk_headercnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %tclk_headercnt.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5123, ptr %tclk_headercnt.i, align 4
  %tclk_trailcnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %tclk_trailcnt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %tclk_trailcnt.i, align 4
  %ths_headercnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %ths_headercnt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 259, ptr %ths_headercnt.i, align 4
  %twakeup.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %twakeup.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 18562, ptr %twakeup.i, align 4
  %tclk_postcnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 12
  %52 = ptrtoint ptr %tclk_postcnt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %tclk_postcnt.i, align 4
  %ths_trailcnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 13
  %53 = ptrtoint ptr %ths_trailcnt.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %ths_trailcnt.i, align 4
  %hstxvregcnt.i = getelementptr inbounds %struct.tc358743_platform_data, ptr %call.i, i32 0, i32 14
  %54 = ptrtoint ptr %hstxvregcnt.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %hstxvregcnt.i, align 4
  %call105.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef 3) #10
  %reset_gpio.i = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 19
  %55 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call105.i, ptr %reset_gpio.i, align 4
  %cmp.i178.i = icmp ugt ptr %call105.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %do.end111.i, label %if.end114.i

do.end111.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #13
  %56 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reset_gpio.i, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %disable_clk.i

if.end114.i:                                      ; preds = %if.end95.i
  %tobool116.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool116.not.i, label %if.end114.i.free_endpoint.i_crit_edge, label %if.then117.i

if.end114.i.free_endpoint.i_crit_edge:            ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_endpoint.i

if.then117.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %59 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value(ptr noundef %60, i32 noundef 1) #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %61 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value(ptr noundef %62, i32 noundef 0) #10
  call void @msleep(i32 noundef 20) #10
  br label %free_endpoint.i

disable_clk.i:                                    ; preds = %do.end111.i, %do.end78.i, %do.end66.i
  %ret.0.i = phi i32 [ 0, %do.end66.i ], [ -22, %do.end78.i ], [ %58, %do.end111.i ]
  call void @clk_disable(ptr noundef %call.i316) #10
  call void @clk_unprepare(ptr noundef %call.i316) #10
  br label %free_endpoint.i

free_endpoint.i:                                  ; preds = %disable_clk.i, %if.then117.i, %if.end114.i.free_endpoint.i_crit_edge, %do.end52.i, %do.end42.i, %do.end31.i
  %ret.1.i = phi i32 [ -22, %do.end31.i ], [ -22, %do.end42.i ], [ %retval.0.i.ph.i, %do.end52.i ], [ %ret.0.i, %disable_clk.i ], [ 0, %if.then117.i ], [ 0, %if.end114.i.free_endpoint.i_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %endpoint.i) #10
  br label %put_node.i

put_node.i:                                       ; preds = %free_endpoint.i, %do.end20.i
  %ret.2.i = phi i32 [ %call15.i, %do.end20.i ], [ %ret.1.i, %free_endpoint.i ]
  call void @of_node_put(ptr noundef nonnull %call8.i) #10
  br label %tc358743_probe_of.exit

tc358743_probe_of.exit.thread:                    ; preds = %do.end12.i, %if.then.i.tc358743_probe_of.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -517, %if.then.i.tc358743_probe_of.exit.thread_crit_edge ], [ -22, %do.end12.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #10
  br label %cleanup

tc358743_probe_of.exit:                           ; preds = %put_node.i, %do.end.i
  %retval.0.i = phi i32 [ %ret.2.i, %put_node.i ], [ %23, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #10
  %63 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %retval.0.i, label %tc358743_probe_of.exit.cleanup_crit_edge [
    i32 -19, label %do.end28
    i32 0, label %tc358743_probe_of.exit.if.end42_crit_edge
  ]

tc358743_probe_of.exit.if.end42_crit_edge:        ; preds = %tc358743_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

tc358743_probe_of.exit.cleanup_crit_edge:         ; preds = %tc358743_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %tc358743_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #12
  %driver31 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %driver31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver31, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 8
  %nr.i318 = getelementptr inbounds %struct.i2c_adapter, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %nr.i318 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr.i318, align 4
  %addr35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %72 = ptrtoint ptr %addr35 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr35, align 2
  %conv36 = zext i16 %73 to i32
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %67, i32 noundef %71, i32 noundef %conv36) #13
  br label %cleanup

if.end42:                                         ; preds = %tc358743_probe_of.exit.if.end42_crit_edge, %if.then20
  %sd43 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2
  call void @v4l2_i2c_subdev_init(ptr noundef %sd43, ptr noundef %client, ptr noundef nonnull @tc358743_ops) #10
  %flags44 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 4
  %74 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags44, align 4
  %or = or i32 %75, 12
  store i32 %or, ptr %flags44, align 4
  %call.i319 = call fastcc i32 @i2c_rdreg(ptr noundef %sd43, i16 noundef zeroext 0, i32 noundef 2) #10
  %76 = and i32 %call.i319, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp47.not = icmp eq i32 %76, 0
  br i1 %cmp47.not, label %if.end60, label %do.end52

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %name54 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 9
  %addr56 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %77 = ptrtoint ptr %addr56 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr56, align 2
  %conv57 = zext i16 %78 to i32
  %shl58 = shl nuw nsw i32 %conv57, 1
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name54, i32 noundef %shl58) #13
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  %hdl = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 4
  %call62 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @tc358743_probe._key, ptr noundef nonnull @.str.10) #10
  %call64 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #10
  %detect_tx_5v_ctrl = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 7
  %79 = ptrtoint ptr %detect_tx_5v_ctrl to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call64, ptr %detect_tx_5v_ctrl, align 4
  %call66 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @tc358743_ctrl_audio_sampling_rate, ptr noundef null) #10
  %audio_sampling_rate_ctrl = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 8
  %80 = ptrtoint ptr %audio_sampling_rate_ctrl to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call66, ptr %audio_sampling_rate_ctrl, align 4
  %call68 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @tc358743_ctrl_audio_present, ptr noundef null) #10
  %audio_present_ctrl = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 9
  %81 = ptrtoint ptr %audio_present_ctrl to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call68, ptr %audio_present_ctrl, align 4
  %ctrl_handler = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 8
  %82 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 4, i32 9
  %83 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool71.not = icmp eq i32 %84, 0
  br i1 %tobool71.not, label %if.end75, label %if.end60.err_hdl_crit_edge

if.end60.err_hdl_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hdl

if.end75:                                         ; preds = %if.end60
  %call76 = call fastcc i32 @tc358743_update_controls(ptr noundef %sd43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.err_hdl_crit_edge

if.end75.err_hdl_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hdl

if.end79:                                         ; preds = %if.end75
  %pad = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 3
  %flags80 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 3, i32 4
  %85 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %flags80, align 4
  %function = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %86 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 20482, ptr %function, align 4
  %call83 = call i32 @media_entity_pads_init(ptr noundef %sd43, i16 noundef zeroext 1, ptr noundef %pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end79.err_hdl_crit_edge, label %if.end87

if.end79.err_hdl_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hdl

if.end87:                                         ; preds = %if.end79
  %mbus_fmt_code = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 16
  %87 = ptrtoint ptr %mbus_fmt_code to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4106, ptr %mbus_fmt_code, align 4
  %dev89 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 14
  %88 = ptrtoint ptr %dev89 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev, ptr %dev89, align 4
  %call90 = call i32 @v4l2_async_register_subdev(ptr noundef %sd43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end87.err_hdl_crit_edge, label %do.body95

if.end87.err_hdl_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hdl

do.body95:                                        ; preds = %if.end87
  %confctl_mutex = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %confctl_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @tc358743_probe.__key) #10
  %delayed_work_enable_hotplug = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10
  call void @__init_work(ptr noundef %delayed_work_enable_hotplug, i32 noundef 0) #10
  %89 = ptrtoint ptr %delayed_work_enable_hotplug to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -64, ptr %delayed_work_enable_hotplug, align 4
  %lockdep_map = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @tc358743_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry106 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %90 = ptrtoint ptr %entry106 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %entry106, ptr %entry106, align 4
  %prev.i = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entry106, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10, i32 0, i32 2
  %92 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @tc358743_delayed_work_enable_hotplug, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @tc358743_probe.__key.14) #10
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i321 = icmp eq ptr %94, null
  br i1 %tobool.not.i321, label %if.end.i, label %do.body95.dev_name.exit_crit_edge

do.body95.dev_name.exit_crit_edge:                ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body95.dev_name.exit_crit_edge
  %retval.0.i322 = phi ptr [ %96, %if.end.i ], [ %94, %do.body95.dev_name.exit_crit_edge ]
  %call119 = call ptr @cec_allocate_adapter(ptr noundef nonnull @tc358743_cec_adap_ops, ptr noundef nonnull %call.i, ptr noundef %retval.0.i322, i32 noundef 62, i8 noundef zeroext 4) #10
  %cec_adap = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 20
  %97 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call119, ptr %cec_adap, align 4
  %cmp.i323 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then122, label %if.end125

if.then122:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %call119 to i32
  br label %err_hdl

if.end125:                                        ; preds = %dev_name.exit
  call fastcc void @tc358743_initial_setup(ptr noundef %sd43)
  %call129 = call i32 @tc358743_s_dv_timings(ptr noundef %sd43, ptr noundef nonnull @tc358743_probe.default_timing)
  call fastcc void @tc358743_set_csi_color_space(ptr noundef %sd43)
  call fastcc void @tc358743_init_interrupts(ptr noundef %sd43)
  %99 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c_client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool131.not = icmp eq i32 %102, 0
  br i1 %tobool131.not, label %do.body141, label %if.then132

if.then132:                                       ; preds = %if.end125
  %call136 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %102, ptr noundef null, ptr noundef nonnull @tc358743_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then132.if.end161_crit_edge, label %if.then132.err_work_queues_crit_edge

if.then132.err_work_queues_crit_edge:             ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_work_queues

if.then132.if.end161_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

do.body141:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %work_i2c_poll = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12
  call void @__init_work(ptr noundef %work_i2c_poll, i32 noundef 0) #10
  %103 = ptrtoint ptr %work_i2c_poll to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %work_i2c_poll, align 4
  %lockdep_map147 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map147, ptr noundef nonnull @.str.17, ptr noundef nonnull @tc358743_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry149 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %entry149 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry149, ptr %entry149, align 4
  %prev.i324 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry149, ptr %prev.i324, align 4
  %func151 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12, i32 2
  %106 = ptrtoint ptr %func151 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tc358743_work_i2c_poll, ptr %func151, align 4
  %timer155 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 11
  call void @init_timer_key(ptr noundef %timer155, ptr noundef nonnull @tc358743_irq_poll_timer, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @tc358743_probe.__key.18) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %107, 100
  %expires = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 11, i32 1
  %108 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add, ptr %expires, align 4
  call void @add_timer(ptr noundef %timer155) #10
  br label %if.end161

if.end161:                                        ; preds = %do.body141, %if.then132.if.end161_crit_edge
  %109 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cec_adap, align 4
  %call164 = call i32 @cec_register_adapter(ptr noundef %110, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %do.end170, label %if.end175

do.end170:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2) #13
  %111 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cec_adap, align 4
  call void @cec_delete_adapter(ptr noundef %112) #10
  %113 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %cec_adap, align 4
  br label %err_work_queues

if.end175:                                        ; preds = %if.end161
  %call.i.i325 = call fastcc i32 @i2c_rdreg(ptr noundef %sd43, i16 noundef zeroext -31456, i32 noundef 1) #10
  %114 = and i32 %call.i.i325, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i = icmp ne i32 %114, 0
  call fastcc void @tc358743_enable_interrupts(ptr noundef %sd43, i1 noundef zeroext %tobool.i)
  call fastcc void @i2c_wrreg(ptr noundef %sd43, i16 noundef zeroext 22, i32 noundef 64755, i32 noundef 2) #10
  %115 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctrl_handler, align 4
  %call180 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %116) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.end186, label %if.end175.err_work_queues_crit_edge

if.end175.err_work_queues_crit_edge:              ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_work_queues

do.end186:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  %name188 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 2, i32 9
  %name190 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr192 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %117 = ptrtoint ptr %addr192 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %addr192, align 2
  %conv193 = zext i16 %118 to i32
  %shl194 = shl nuw nsw i32 %conv193, 1
  %119 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter, align 8
  %name196 = getelementptr inbounds %struct.i2c_adapter, ptr %120, i32 0, i32 12
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name188, ptr noundef %name190, i32 noundef %shl194, ptr noundef %name196) #13
  br label %cleanup

err_work_queues:                                  ; preds = %if.end175.err_work_queues_crit_edge, %do.end170, %if.then132.err_work_queues_crit_edge
  %err.0 = phi i32 [ %call136, %if.then132.err_work_queues_crit_edge ], [ %call164, %do.end170 ], [ %call180, %if.end175.err_work_queues_crit_edge ]
  %121 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cec_adap, align 4
  call void @cec_unregister_adapter(ptr noundef %122) #10
  %123 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c_client, align 4
  %irq201 = getelementptr inbounds %struct.i2c_client, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %irq201 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool202.not = icmp eq i32 %126, 0
  br i1 %tobool202.not, label %if.then203, label %err_work_queues.if.end206_crit_edge

err_work_queues.if.end206_crit_edge:              ; preds = %err_work_queues
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then203:                                       ; preds = %err_work_queues
  call void @__sanitizer_cov_trace_pc() #12
  %work_i2c_poll204 = getelementptr inbounds %struct.tc358743_state, ptr %call.i, i32 0, i32 12
  %call205 = call zeroext i1 @flush_work(ptr noundef %work_i2c_poll204) #10
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %err_work_queues.if.end206_crit_edge
  %call208 = call zeroext i1 @cancel_delayed_work(ptr noundef %delayed_work_enable_hotplug) #10
  call void @mutex_destroy(ptr noundef %confctl_mutex) #10
  br label %err_hdl

err_hdl:                                          ; preds = %if.end206, %if.then122, %if.end87.err_hdl_crit_edge, %if.end79.err_hdl_crit_edge, %if.end75.err_hdl_crit_edge, %if.end60.err_hdl_crit_edge
  %err.1 = phi i32 [ %call83, %if.end79.err_hdl_crit_edge ], [ %call90, %if.end87.err_hdl_crit_edge ], [ %98, %if.then122 ], [ %err.0, %if.end206 ], [ %84, %if.end60.err_hdl_crit_edge ], [ -19, %if.end75.err_hdl_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  br label %cleanup

cleanup:                                          ; preds = %err_hdl, %do.end186, %do.end52, %do.end28, %tc358743_probe_of.exit.cleanup_crit_edge, %tc358743_probe_of.exit.thread, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end52 ], [ %err.1, %err_hdl ], [ 0, %do.end186 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end13.cleanup_crit_edge ], [ %retval.0.i, %tc358743_probe_of.exit.cleanup_crit_edge ], [ -19, %do.end28 ], [ %retval.0.i.ph, %tc358743_probe_of.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358743_update_controls(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %detect_tx_5v_ctrl.i = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %detect_tx_5v_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detect_tx_5v_ctrl.i, align 4
  %call.i.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %2 = and i32 %call.i.i.i, 1
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #10
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %1, i32 noundef %2) #10
  %7 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i4.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %lock.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock.i4.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %10) #10
  %call1 = tail call fastcc i32 @tc358743_s_ctrl_audio_sampling_rate(ptr noundef %sd)
  %or2 = or i32 %call1, %call.i.i
  %audio_present_ctrl.i = getelementptr i8, ptr %sd, i32 516
  %11 = ptrtoint ptr %audio_present_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio_present_ctrl.i, align 4
  %call.i.i.i10 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31453, i32 noundef 1) #10
  %13 = and i32 %call.i.i.i10, 1
  %handler.i.i.i11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %handler.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i.i.i11, align 8
  %lock.i.i.i12 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lock.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i.i.i12, align 4
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #10
  %call.i.i13 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %12, i32 noundef %13) #10
  %18 = ptrtoint ptr %handler.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i.i.i11, align 8
  %lock.i4.i.i14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i4.i.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i4.i.i14, align 4
  tail call void @mutex_unlock(ptr noundef %21) #10
  %or4 = or i32 %or2, %call.i.i13
  ret i32 %or4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358743_delayed_work_enable_hotplug(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -404
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name, ptr noundef nonnull @.str.322) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sd1 = getelementptr i8, ptr %work, i32 -520
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd1, i16 noundef zeroext -31420, i32 noundef 1) #10
  %and.i = and i32 %call.i, 254
  %or.i = or i32 %and.i, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext -31420, i32 noundef %or.i, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_initial_setup(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -88
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %and.i = and i32 %call.i, 62463
  %or.i = or i32 %and.i, 3072
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %or.i, i32 noundef 2) #10
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %or10.i = and i32 %call.i.i, 64767
  %conv.i11.i = or i32 %or10.i, 768
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %conv.i11.i, i32 noundef 2) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %or10.i, i32 noundef 2) #10
  %call.i.i20 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %or10.i22 = and i32 %call.i.i20, 64511
  %conv.i11.i23 = or i32 %or10.i22, 1024
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %conv.i11.i23, i32 noundef 2) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %or10.i22, i32 noundef 2) #10
  %call.i.i26 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %and.i.i = and i32 %call.i.i26, 65534
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %and.i.i, i32 noundef 2) #10
  %fifo_level = getelementptr i8, ptr %sd, i32 -78
  %0 = ptrtoint ptr %fifo_level to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fifo_level, align 2
  %conv.i = zext i16 %1 to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 6, i32 noundef %conv.i, i32 noundef 2) #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %3, label %do.body8.critedge.i [
    i32 26000000, label %entry.tc358743_set_ref_clk.exit_crit_edge
    i32 27000000, label %entry.tc358743_set_ref_clk.exit_crit_edge53
    i32 42000000, label %entry.tc358743_set_ref_clk.exit_crit_edge54
  ]

entry.tc358743_set_ref_clk.exit_crit_edge54:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_set_ref_clk.exit

entry.tc358743_set_ref_clk.exit_crit_edge53:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_set_ref_clk.exit

entry.tc358743_set_ref_clk.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_set_ref_clk.exit

do.body8.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/i2c/tc358743.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #10, !srcloc !601
  unreachable

tc358743_set_ref_clk.exit:                        ; preds = %entry.tc358743_set_ref_clk.exit_crit_edge, %entry.tc358743_set_ref_clk.exit_crit_edge53, %entry.tc358743_set_ref_clk.exit_crit_edge54
  %div.i = udiv i32 %3, 10000
  %conv.i.i27 = and i32 %div.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31424, i32 noundef %conv.i.i27, i32 noundef 1) #10
  %and15.i = lshr i32 %div.i, 8
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31423, i32 noundef %and15.i, i32 noundef 1) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42000000, i32 %6)
  %cmp18.i = icmp eq i32 %6, 42000000
  %call.i.i28 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31439, i32 noundef 1) #10
  %and.i.i29 = and i32 %call.i.i28, 253
  %conv1.i.i = select i1 %cmp18.i, i32 2, i32 0
  %or.i.i = or i32 %and.i.i29, %conv1.i.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31439, i32 noundef %or.i.i, i32 noundef 1) #10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %div22.i = udiv i32 %8, 100000
  %conv.i89.i = and i32 %div22.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31318, i32 noundef %conv.i89.i, i32 noundef 1) #10
  %9 = lshr i32 %div22.i, 8
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31317, i32 noundef %9, i32 noundef 1) #10
  %mul.i = mul nuw nsw i32 %div22.i, 66
  %div32.i = udiv i32 %mul.i, 10
  %conv.i91.i = and i32 %div32.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31316, i32 noundef %conv.i91.i, i32 noundef 1) #10
  %and38.i = lshr i32 %div32.i, 8
  %conv.i92.i = and i32 %and38.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31315, i32 noundef %conv.i92.i, i32 noundef 1) #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %div42.i = udiv i32 %11, 100
  %conv.i93.i = and i32 %div42.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31184, i32 noundef %conv.i93.i, i32 noundef 1) #10
  %and45.i = lshr i32 %div42.i, 8
  %conv.i94.i = and i32 %and45.i, 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31183, i32 noundef %conv.i94.i, i32 noundef 1) #10
  %and48.i = lshr i32 %div42.i, 16
  %conv50.i = and i32 %and48.i, 15
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31182, i32 noundef %conv50.i, i32 noundef 1) #10
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %13)
  %cmp52.i = icmp eq i32 %13, 27000000
  %call.i96.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31120, i32 noundef 1) #10
  %and.i97.i = and i32 %call.i96.i, 252
  %conv1.i98.i = zext i1 %cmp52.i to i32
  %or.i99.i = or i32 %and.i97.i, %conv1.i98.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31120, i32 noundef %or.i99.i, i32 noundef 1) #10
  %mul56.i = mul nuw nsw i32 %div.i, 656
  %div57.i = udiv i32 %mul56.i, 4200
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 40, i32 noundef %div57.i, i32 noundef 2) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 42, i32 noundef %div57.i, i32 noundef 2) #10
  %ddc5v_delay = getelementptr i8, ptr %sd, i32 -84
  %14 = ptrtoint ptr %ddc5v_delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ddc5v_delay, align 4
  %conv = and i32 %15, 3
  %call.i30 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31421, i32 noundef 1) #10
  %and.i31 = and i32 %call.i30, 252
  %or.i32 = or i32 %and.i31, %conv
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31421, i32 noundef %or.i32, i32 noundef 1) #10
  %call.i33 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31289, i32 noundef 1) #10
  %and.i34 = and i32 %call.i33, 252
  %or.i35 = or i32 %and.i34, 2
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31289, i32 noundef %or.i35, i32 noundef 1) #10
  %call.i.i36 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31436, i32 noundef 1) #10
  %and.i.i37 = and i32 %call.i.i36, 254
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31436, i32 noundef %and.i.i37, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31438, i32 noundef 128, i32 noundef 1) #10
  %hdmi_phy_auto_reset_tmds_detected.i = getelementptr i8, ptr %sd, i32 -32
  %16 = ptrtoint ptr %hdmi_phy_auto_reset_tmds_detected.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdmi_phy_auto_reset_tmds_detected.i, align 4, !range !602
  %hdmi_phy_auto_reset_tmds_in_range.i = getelementptr i8, ptr %sd, i32 -31
  %18 = ptrtoint ptr %hdmi_phy_auto_reset_tmds_in_range.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdmi_phy_auto_reset_tmds_in_range.i, align 1, !range !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  %cond3.i = select i1 %tobool2.not.i, i8 0, i8 2
  %or.i38 = or i8 %cond3.i, %17
  %hdmi_phy_auto_reset_tmds_valid.i = getelementptr i8, ptr %sd, i32 -30
  %20 = ptrtoint ptr %hdmi_phy_auto_reset_tmds_valid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdmi_phy_auto_reset_tmds_valid.i, align 2, !range !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  %cond5.i = select i1 %tobool4.not.i, i8 0, i8 4
  %or6.i = or i8 %or.i38, %cond5.i
  %call.i30.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31437, i32 noundef 1) #10
  %and.i31.i = and i32 %call.i30.i, 248
  %conv1.i.i39 = zext i8 %or6.i to i32
  %or.i.i40 = or i32 %and.i31.i, %conv1.i.i39
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31437, i32 noundef %or.i.i40, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31434, i32 noundef 64, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31425, i32 noundef 10, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31418, i32 noundef 45, i32 noundef 1) #10
  %hdmi_detection_delay.i = getelementptr i8, ptr %sd, i32 -36
  %22 = ptrtoint ptr %hdmi_detection_delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hdmi_detection_delay.i, align 4
  %conv7.i = shl i32 %23, 4
  %call.i32.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31406, i32 noundef 1) #10
  %and.i33.i = and i32 %call.i32.i, 207
  %conv1.i34.i = and i32 %conv7.i, 240
  %or.i35.i = or i32 %and.i33.i, %conv1.i34.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31406, i32 noundef %or.i35.i, i32 noundef 1) #10
  %hdmi_phy_auto_reset_hsync_out_of_range.i = getelementptr i8, ptr %sd, i32 -29
  %24 = ptrtoint ptr %hdmi_phy_auto_reset_hsync_out_of_range.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdmi_phy_auto_reset_hsync_out_of_range.i, align 1, !range !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not.i = icmp eq i8 %25, 0
  %cond10.i = select i1 %tobool8.not.i, i32 0, i32 32
  %hdmi_phy_auto_reset_vsync_out_of_range.i = getelementptr i8, ptr %sd, i32 -28
  %26 = ptrtoint ptr %hdmi_phy_auto_reset_vsync_out_of_range.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdmi_phy_auto_reset_vsync_out_of_range.i, align 4, !range !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not.i = icmp eq i8 %27, 0
  %cond13.i = select i1 %tobool11.not.i, i32 0, i32 16
  %or14.i = or i32 %cond13.i, %cond10.i
  %call.i36.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31313, i32 noundef 1) #10
  %and.i37.i = and i32 %call.i36.i, 207
  %or.i39.i = or i32 %or14.i, %and.i37.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31313, i32 noundef %or.i39.i, i32 noundef 1) #10
  %call.i40.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31436, i32 noundef 1) #10
  %and.i41.i = and i32 %call.i40.i, 254
  %or.i42.i = or i32 %and.i41.i, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31436, i32 noundef %or.i42.i, i32 noundef 1) #10
  %enable_hdcp = getelementptr i8, ptr %sd, i32 -80
  %28 = ptrtoint ptr %enable_hdcp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_hdcp, align 4, !range !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp sgt i32 %30, 1
  br i1 %cmp.i, label %do.end.i, label %tc358743_set_ref_clk.exit.do.end2.i_crit_edge

tc358743_set_ref_clk.exit.do.end2.i_crit_edge:    ; preds = %tc358743_set_ref_clk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i

do.end.i:                                         ; preds = %tc358743_set_ref_clk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond.i = select i1 %tobool.not, ptr @.str.326, ptr @.str.325
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, ptr noundef %name.i, ptr noundef nonnull @.str.324, ptr noundef nonnull %cond.i) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %tc358743_set_ref_clk.exit.do.end2.i_crit_edge
  br i1 %tobool.not, label %do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge, label %if.then4.i

do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge:  ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_set_hdmi_hdcp.exit

if.then4.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i42 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31279, i32 noundef 1) #10
  %and.i.i43 = and i32 %call.i.i42, 254
  %or.i.i44 = or i32 %and.i.i43, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31279, i32 noundef %or.i.i44, i32 noundef 1) #10
  %call.i12.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31392, i32 noundef 1) #10
  %and.i13.i = and i32 %call.i12.i, 253
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31392, i32 noundef %and.i13.i, i32 noundef 1) #10
  %call.i14.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31389, i32 noundef 1) #10
  %and.i15.i = and i32 %call.i14.i, 238
  %or.i16.i = or i32 %and.i15.i, 17
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31389, i32 noundef %or.i16.i, i32 noundef 1) #10
  br label %tc358743_set_hdmi_hdcp.exit

tc358743_set_hdmi_hdcp.exit:                      ; preds = %if.then4.i, %do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge
  %.sink25.i = phi i16 [ -31388, %if.then4.i ], [ -31392, %do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge ]
  %.sink24.i = phi i32 [ 240, %if.then4.i ], [ 253, %do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge ]
  %.sink23.i = phi i32 [ 15, %if.then4.i ], [ 2, %do.end2.i.tc358743_set_hdmi_hdcp.exit_crit_edge ]
  %call.i20.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext %.sink25.i, i32 noundef 1) #10
  %and.i21.i = and i32 %call.i20.i, %.sink24.i
  %or.i22.i = or i32 %and.i21.i, %.sink23.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext %.sink25.i, i32 noundef %or.i22.i, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31232, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31230, i32 noundef 243, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31229, i32 noundef 2, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31228, i32 noundef 12, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31226, i32 noundef 5, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31225, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31200, i32 noundef 34, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31168, i32 noundef 1, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31167, i32 noundef 101, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31166, i32 noundef 7, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31150, i32 noundef 2, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31131, i32 noundef 16, i32 noundef 1) #10
  %confctl_mutex.i = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex.i, i32 noundef 0) #10
  %call.i.i45 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i.i46 = and i32 %call.i.i45, 62443
  %or.i.i47 = or i32 %and.i.i46, 3092
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %or.i.i47, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex.i) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30967, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30965, i32 noundef 44, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30964, i32 noundef 83, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30963, i32 noundef 1, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30962, i32 noundef 48, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -28665, i32 noundef 16, i32 noundef 1) #10
  %call.i48 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31376, i32 noundef 1) #10
  %and.i49 = and i32 %call.i48, 247
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31376, i32 noundef %and.i49, i32 noundef 1) #10
  %call.i50 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef 1) #10
  %and.i51 = and i32 %call.i50, 252
  %or.i52 = or i32 %and.i51, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef %or.i52, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31372, i32 noundef 8, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timings, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.327, ptr noundef nonnull %timings, i1 noundef zeroext false) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %timings4 = getelementptr i8, ptr %sd, i32 713
  %call5 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings4, ptr noundef nonnull %timings, i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call5, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end3
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name9 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef %name9, ptr noundef nonnull @.str.329) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %call16 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef nonnull %timings, ptr noundef nonnull @tc358743_timings_cap, ptr noundef null, ptr noundef null) #10
  br i1 %call16, label %if.end31, label %do.body18

do.body18:                                        ; preds = %if.end15
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp19 = icmp sgt i32 %2, 0
  br i1 %cmp19, label %do.end23, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %name25 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef %name25, ptr noundef nonnull @.str.329) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end15
  %3 = call ptr @memcpy(ptr %timings4, ptr %timings, i32 132)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp sgt i32 %4, 2
  br i1 %cmp.i, label %do.end.i, label %if.end31.enable_stream.exit_crit_edge

if.end31.enable_stream.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_stream.exit

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name.i, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.265) #13
  br label %enable_stream.exit

enable_stream.exit:                               ; preds = %do.end.i, %if.end31.enable_stream.exit_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31361, i32 noundef 208, i32 noundef 1) #10
  %confctl_mutex.i = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex.i, i32 noundef 0) #10
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i.i = and i32 %call.i.i, 65532
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %and.i.i, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex.i) #10
  tail call fastcc void @tc358743_set_pll(ptr noundef %sd)
  tail call fastcc void @tc358743_set_csi(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %enable_stream.exit, %do.end23, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %enable_stream.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -34, %do.end23 ], [ -34, %do.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_set_csi_color_space(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbus_fmt_code = getelementptr i8, ptr %sd, i32 848
  %0 = ptrtoint ptr %mbus_fmt_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbus_fmt_code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %1, label %do.body22 [
    i32 8207, label %do.body
    i32 4106, label %do.body7
  ]

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body.do.end4_crit_edge

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.332, ptr noundef %name, ptr noundef nonnull @.str.333) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef 1) #10
  %and.i = and i32 %call.i, 63
  %or.i = or i32 %and.i, 192
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef %or.i, i32 noundef 1) #10
  %call.i50 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef 1) #10
  %and.i51 = and i32 %call.i50, 31
  %or.i52 = or i32 %and.i51, 96
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef %or.i52, i32 noundef 1) #10
  %confctl_mutex = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex, i32 noundef 0) #10
  %call.i53 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i54 = and i32 %call.i53, 65343
  %or.i55 = or i32 %and.i54, 192
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %or.i55, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex) #10
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8 = icmp sgt i32 %4, 1
  br i1 %cmp8, label %do.end12, label %do.body7.do.end19_crit_edge

do.body7.do.end19_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %name14 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef %name14, ptr noundef nonnull @.str.333) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end12, %do.body7.do.end19_crit_edge
  %call.i56 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef 1) #10
  %and.i57 = and i32 %call.i56, 63
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31373, i32 noundef %and.i57, i32 noundef 1) #10
  %call.i58 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef 1) #10
  %and.i59 = and i32 %call.i58, 31
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef %and.i59, i32 noundef 1) #10
  %confctl_mutex20 = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex20, i32 noundef 0) #10
  %call.i60 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i61 = and i32 %call.i60, 65343
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %and.i61, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex20) #10
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp23 = icmp sgt i32 %5, 1
  br i1 %cmp23, label %do.end27, label %do.body22.sw.epilog_crit_edge

do.body22.sw.epilog_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, ptr noundef %name29, ptr noundef nonnull @.str.333, i32 noundef %1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %do.body22.sw.epilog_crit_edge, %do.end19, %do.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_init_interrupts(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31486, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31485, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31484, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31483, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31482, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31481, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31480, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31479, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31478, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31477, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31476, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31475, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31474, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31473, i32 noundef 255, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef 65535, i32 noundef 2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #10
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %handled, align 1
  %sd = getelementptr inbounds %struct.tc358743_state, ptr %dev_id, i32 0, i32 2
  %call = call i32 @tc358743_isr(ptr noundef %sd, i32 noundef 0, ptr noundef nonnull %handled)
  %1 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %handled, align 1, !range !602
  %3 = zext i8 %2 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358743_work_i2c_poll(ptr noundef %work) #2 align 64 {
entry:
  %handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #10
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %handled, align 1, !annotation !603
  %sd = getelementptr i8, ptr %work, i32 -668
  %call = call i32 @tc358743_isr(ptr noundef %sd, i32 noundef 0, ptr noundef nonnull %handled)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358743_irq_poll_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work_i2c_poll = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work_i2c_poll) #10
  %cec_adap = getelementptr i8, ptr %t, i32 240
  %1 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cec_adap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %tobool.not = icmp eq ptr %2, null
  %cond = select i1 %tobool.not, i32 1000, i32 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #10
  %add = add i32 %call2.i, %3
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_enable_interrupts(ptr noundef %sd, i1 noundef zeroext %cable_connected) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv = zext i1 %cable_connected to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.340, ptr noundef %name, ptr noundef nonnull @.str.341, i32 noundef %conv) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %. = select i1 %cable_connected, i32 206, i32 254
  %.21 = select i1 %cable_connected, i32 223, i32 255
  %.22 = select i1 %cable_connected, i32 61, i32 255
  %.23 = select i1 %cable_connected, i32 254, i32 255
  %.24 = select i1 %cable_connected, i32 253, i32 255
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31470, i32 noundef %., i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31469, i32 noundef %.21, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31467, i32 noundef %.22, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31466, i32 noundef %.23, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31461, i32 noundef %.24, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %frame.i = alloca %union.hdmi_infoframe, align 4
  %buffer.i = alloca [17 x i8], align 1
  %timings = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -88
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #10
  %0 = call ptr @memset(ptr %timings, i32 255, i32 132)
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %call.i388 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %call.i390 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31448, i32 noundef 1) #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name) #13
  %call.i392 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 0, i32 noundef 2) #10
  %1 = lshr i32 %call.i392, 8
  %2 = and i32 %1, 255
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %2) #13
  %call.i394 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 0, i32 noundef 2) #10
  %3 = and i32 %call.i394, 255
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %3) #13
  %and30 = lshr i32 %call.i388, 11
  %and30.lobit = and i32 %and30, 1
  %and33 = lshr i32 %call.i388, 10
  %and33.lobit = and i32 %and33, 1
  %and40 = lshr i32 %call.i388, 9
  %and40.lobit = and i32 %and40, 1
  %and47 = lshr i32 %call.i388, 8
  %and47.lobit = and i32 %and47, 1
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %and30.lobit, i32 noundef %and33.lobit, i32 noundef %and40.lobit, i32 noundef %and47.lobit) #13
  %and61 = and i32 %call.i388, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond = select i1 %tobool62.not, ptr @.str.89, ptr @.str.88
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef nonnull %cond) #13
  %and71 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %cond73 = select i1 %tobool72.not, ptr @.str.94, ptr @.str.93
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef nonnull %cond73) #13
  %call.i396 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31289, i32 noundef 1) #10
  %4 = and i32 %call.i396, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool84.not = icmp eq i32 %4, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.94, ptr @.str.93
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull %cond85) #13
  %call.i398 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31420, i32 noundef 1) #10
  %5 = and i32 %call.i398, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool96.not = icmp eq i32 %5, 0
  %cond97 = select i1 %tobool96.not, ptr @.str.94, ptr @.str.93
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name, ptr noundef nonnull %cond97) #13
  %call.i400 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1536, i32 noundef 2) #10
  %6 = and i32 %call.i400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool108.not = icmp eq i32 %6, 0
  %cond109 = select i1 %tobool108.not, ptr @.str.94, ptr @.str.93
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, ptr noundef nonnull %cond109) #13
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name) #13
  %and125 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %cond127 = select i1 %tobool126.not, ptr @.str.94, ptr @.str.93
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, ptr noundef nonnull %cond127) #13
  %and136 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %cond138 = select i1 %tobool137.not, ptr @.str.94, ptr @.str.93
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name, ptr noundef nonnull %cond138) #13
  %and147 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %cond149 = select i1 %tobool148.not, ptr @.str.94, ptr @.str.93
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name, ptr noundef nonnull %cond149) #13
  %and158 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  %cond160 = select i1 %tobool159.not, ptr @.str.94, ptr @.str.93
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name, ptr noundef nonnull %cond160) #13
  %call162 = call fastcc i32 @tc358743_get_detected_timings(ptr noundef %sd, ptr noundef nonnull %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.else, label %do.end166

do.end166:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.122, ptr noundef nonnull %timings, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end166
  %timings175 = getelementptr i8, ptr %sd, i32 713
  call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.123, ptr noundef %timings175, i1 noundef zeroext true) #10
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name) #13
  %7 = getelementptr i8, ptr %sd, i32 717
  %mbus_fmt_code.i = getelementptr i8, ptr %sd, i32 848
  %8 = ptrtoint ptr %mbus_fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbus_fmt_code.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %7, align 1
  %height.i = getelementptr i8, ptr %sd, i32 721
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height.i, align 1
  %vfrontporch.i.i = getelementptr i8, ptr %sd, i32 753
  %14 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %vfrontporch.i.i, align 1
  %vsync.i.i = getelementptr i8, ptr %sd, i32 757
  %16 = ptrtoint ptr %vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %vsync.i.i, align 1
  %vbackporch.i.i = getelementptr i8, ptr %sd, i32 761
  %18 = ptrtoint ptr %vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %vbackporch.i.i, align 1
  %il_vfrontporch.i.i = getelementptr i8, ptr %sd, i32 765
  %20 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %il_vfrontporch.i.i, align 1
  %il_vsync.i.i = getelementptr i8, ptr %sd, i32 769
  %22 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %il_vsync.i.i, align 1
  %il_vbackporch.i.i = getelementptr i8, ptr %sd, i32 773
  %24 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i.i = add i32 %15, %13
  %add1.i.i = add i32 %add.i.i, %17
  %add2.i.i = add i32 %add1.i.i, %19
  %add3.i.i = add i32 %add2.i.i, %21
  %add4.i.i = add i32 %add3.i.i, %23
  %add5.i.i = add i32 %add4.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i.i)
  %tobool.not.i.i = icmp eq i32 %add5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.tc358743_num_csi_lanes_needed.exit_crit_edge, label %lor.lhs.false.i.i

if.end.tc358743_num_csi_lanes_needed.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_num_csi_lanes_needed.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %hfrontporch.i.i = getelementptr i8, ptr %sd, i32 741
  %26 = ptrtoint ptr %hfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %hfrontporch.i.i, align 1
  %hsync.i.i = getelementptr i8, ptr %sd, i32 745
  %28 = ptrtoint ptr %hsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %hsync.i.i, align 1
  %hbackporch.i.i = getelementptr i8, ptr %sd, i32 749
  %30 = ptrtoint ptr %hbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %hbackporch.i.i, align 1
  %add6.i.i = add i32 %27, %11
  %add7.i.i = add i32 %add6.i.i, %29
  %add8.i.i = add i32 %add7.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i.i)
  %tobool9.not.i.i = icmp eq i32 %add8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_num_csi_lanes_needed.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixelclock.i.i = getelementptr i8, ptr %sd, i32 733
  %32 = ptrtoint ptr %pixelclock.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %pixelclock.i.i, align 1
  %conv.i.i = trunc i64 %33 to i32
  %mul.i.i = mul i32 %add8.i.i, %add5.i.i
  %div55.i.i = lshr i32 %mul.i.i, 1
  %add30.i.i = add i32 %div55.i.i, %conv.i.i
  %div31.i.i = udiv i32 %add30.i.i, %mul.i.i
  br label %tc358743_num_csi_lanes_needed.exit

tc358743_num_csi_lanes_needed.exit:               ; preds = %if.end.i.i, %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge, %if.end.tc358743_num_csi_lanes_needed.exit_crit_edge
  %retval.0.i.i = phi i32 [ %div31.i.i, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge ], [ 0, %if.end.tc358743_num_csi_lanes_needed.exit_crit_edge ]
  %mul.i = mul i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %9)
  %cmp.i = icmp eq i32 %9, 8207
  %cond.i = select i1 %cmp.i, i32 16, i32 24
  %mul3.i = mul i32 %mul.i, %cond.i
  %mul4.i = mul i32 %mul3.i, %retval.0.i.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  %pll_prd.i = getelementptr i8, ptr %sd, i32 -76
  %36 = ptrtoint ptr %pll_prd.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pll_prd.i, align 4
  %conv.i402 = zext i16 %37 to i32
  %div.i = udiv i32 %35, %conv.i402
  %pll_fbd.i = getelementptr i8, ptr %sd, i32 -74
  %38 = ptrtoint ptr %pll_fbd.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pll_fbd.i, align 2
  %conv5.i = zext i16 %39 to i32
  %mul6.i = mul i32 %div.i, %conv5.i
  %add.i = add i32 %mul4.i, -1
  %sub.i = add i32 %add.i, %mul6.i
  %div7.i = udiv i32 %sub.i, %mul6.i
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name, i32 noundef %div7.i) #13
  %csi_lanes_in_use = getelementptr i8, ptr %sd, i32 852
  %40 = ptrtoint ptr %csi_lanes_in_use to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %csi_lanes_in_use, align 4
  %conv197 = zext i8 %41 to i32
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name, i32 noundef %conv197) #13
  %call.i403 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1040, i32 noundef 2) #10
  %42 = and i32 %call.i403, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool208.not = icmp eq i32 %42, 0
  %cond209 = select i1 %tobool208.not, ptr @.str.94, ptr @.str.93
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name, ptr noundef nonnull %cond209) #13
  %call.i405 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1040, i32 noundef 2) #10
  %43 = and i32 %call.i405, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool220.not = icmp eq i32 %43, 0
  %cond221 = select i1 %tobool220.not, ptr @.str.94, ptr @.str.93
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name, ptr noundef nonnull %cond221) #13
  %call.i407 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1040, i32 noundef 2) #10
  %44 = and i32 %call.i407, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool232.not = icmp eq i32 %44, 0
  %cond233 = select i1 %tobool232.not, ptr @.str.94, ptr @.str.93
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name, ptr noundef nonnull %cond233) #13
  %call.i409 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1040, i32 noundef 2) #10
  %45 = and i32 %call.i409, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool244.not = icmp eq i32 %45, 0
  %cond245 = select i1 %tobool244.not, ptr @.str.94, ptr @.str.93
  %call246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name, ptr noundef nonnull %cond245) #13
  %46 = ptrtoint ptr %mbus_fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mbus_fmt_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %47)
  %cmp = icmp eq i32 %47, 8207
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %47)
  %cmp255 = icmp eq i32 %47, 4106
  %cond257 = select i1 %cmp255, ptr @.str.149, ptr @.str.150
  %cond258 = select i1 %cmp, ptr @.str.148, ptr %cond257
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name, ptr noundef nonnull %cond258) #13
  %call.i.i = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %48 = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  %cond268 = select i1 %tobool.i.not, ptr @.str.155, ptr @.str.154
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name, ptr noundef nonnull %cond268) #13
  %and277 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  %cond279 = select i1 %tobool278.not, ptr @.str.94, ptr @.str.93
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %name, ptr noundef nonnull %cond279) #13
  %and288 = lshr i32 %call.i390, 1
  %49 = and i32 %and288, 15
  %arrayidx = getelementptr [14 x ptr], ptr @tc358743_log_status.input_color_space, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %and291 = and i32 %call.i390, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %cond293 = select i1 %tobool292.not, ptr @.str.163, ptr @.str.162
  %call294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %name, ptr noundef %51, ptr noundef nonnull %cond293) #13
  %call.i.i411 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %52 = and i32 %call.i.i411, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i412.not = icmp eq i32 %52, 0
  br i1 %tobool.i412.not, label %tc358743_num_csi_lanes_needed.exit.cleanup_crit_edge, label %do.end300

tc358743_num_csi_lanes_needed.exit.cleanup_crit_edge: ; preds = %tc358743_num_csi_lanes_needed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end300:                                        ; preds = %tc358743_num_csi_lanes_needed.exit
  %and305 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  %cond307 = select i1 %tobool306.not, ptr @.str.89, ptr @.str.88
  %call308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name, ptr noundef nonnull %cond307) #13
  %call.i413 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31454, i32 noundef 1) #10
  %53 = lshr i32 %call.i413, 2
  %54 = and i32 %53, 3
  %arrayidx319 = getelementptr [4 x i32], ptr @__const.tc358743_log_status.deep_color_mode, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx319, align 4
  %call320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %name, i32 noundef %56) #13
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %57 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #10
  %59 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #10
  %60 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  %call.i.i.i = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %61 = and i32 %call.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not.i = icmp eq i32 %61, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name) #13
  br label %print_avi_infoframe.exit

if.end.i:                                         ; preds = %do.end300
  %i2c_client.i.i = getelementptr i8, ptr %sd, i32 412
  %62 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_client.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %64 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -121, ptr %buf.i.i, align 1
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 16, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #10
  %67 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %68 = call ptr @memset(ptr %67, i32 255, i32 16)
  %addr5.i.i = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %addr5.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr5.i.i, align 2
  %71 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i.i, align 2
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2, ptr %67, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %75 = load i16, ptr %addr5.i.i, align 2
  %76 = ptrtoint ptr %arrayinit.element7.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayinit.element7.i.i, align 4
  %flags10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %77 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags10.i.i, align 2
  %len11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %78 = ptrtoint ptr %len11.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 17, ptr %len11.i.i, align 4
  %buf13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %79 = ptrtoint ptr %buf13.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buffer.i, ptr %buf13.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 3
  %80 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i.i, align 8
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15.i.i)
  %cmp.not.i.i = icmp eq i32 %call15.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i2c_rd.exit.i_crit_edge, label %do.end.i.i

if.end.i.i2c_rd.exit.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_rd.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %addr5.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %addr5.i.i, align 2
  %conv20.i.i = zext i16 %83 to i32
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name, ptr noundef nonnull @.str.171, i32 noundef 34576, i32 noundef %conv20.i.i) #13
  br label %i2c_rd.exit.i

i2c_rd.exit.i:                                    ; preds = %do.end.i.i, %if.end.i.i2c_rd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %call6.i = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i415 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i415, label %do.end10.i, label %if.end15.i

do.end10.i:                                       ; preds = %i2c_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name, ptr noundef nonnull @.str.178) #13
  br label %print_avi_infoframe.exit

if.end15.i:                                       ; preds = %i2c_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.182, ptr noundef %dev1.i, ptr noundef nonnull %frame.i) #10
  br label %print_avi_infoframe.exit

print_avi_infoframe.exit:                         ; preds = %if.end15.i, %do.end10.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #10
  br label %cleanup

cleanup:                                          ; preds = %print_avi_infoframe.exit, %tc358743_num_csi_lanes_needed.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %1)
  %cmp = icmp ugt i64 %1, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tc358743_print_register_map(ptr noundef %sd)
  br label %return

if.end:                                           ; preds = %entry
  %conv = trunc i64 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv)
  %cmp.i = icmp ult i16 %conv, 256
  br i1 %cmp.i, label %if.end.tc358743_get_reg_size.exit_crit_edge, label %land.lhs.true.i

if.end.tc358743_get_reg_size.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_get_reg_size.exit

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %conv)
  %cmp6.i = icmp ult i16 %conv, 1792
  br i1 %cmp6.i, label %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_get_reg_size.exit

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31488, i16 %conv)
  %cmp15.i = icmp ult i16 %conv, -31488
  %..i = select i1 %cmp15.i, i32 2, i32 1
  br label %tc358743_get_reg_size.exit

tc358743_get_reg_size.exit:                       ; preds = %land.lhs.true13.i, %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge, %if.end.tc358743_get_reg_size.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end.tc358743_get_reg_size.exit_crit_edge ], [ 4, %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge ], [ %..i, %land.lhs.true13.i ]
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %retval.0.i, ptr %size, align 1
  %call6 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext %conv, i32 noundef %retval.0.i)
  %conv7 = zext i32 %call6 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %conv7, ptr %val, align 1
  br label %return

return:                                           ; preds = %tc358743_get_reg_size.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %tc358743_get_reg_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %1)
  %cmp = icmp ugt i64 %1, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tc358743_print_register_map(ptr noundef %sd)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.345)
  switch i64 %1, label %if.end16 [
    i64 34144, label %if.end.return_crit_edge
    i64 34147, label %if.end.return_crit_edge30
    i64 34148, label %if.end.return_crit_edge31
    i64 34257, label %if.end.return_crit_edge32
    i64 34880, label %if.end.return_crit_edge33
  ]

if.end.return_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.return_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.return_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.return_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end16:                                         ; preds = %if.end
  %conv = trunc i64 %1 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv18 = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv)
  %cmp.i = icmp ult i16 %conv, 256
  br i1 %cmp.i, label %if.end16.tc358743_get_reg_size.exit_crit_edge, label %land.lhs.true.i

if.end16.tc358743_get_reg_size.exit_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_get_reg_size.exit

land.lhs.true.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %conv)
  %cmp6.i = icmp ult i16 %conv, 1792
  br i1 %cmp6.i, label %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_get_reg_size.exit

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31488, i16 %conv)
  %cmp15.i = icmp ult i16 %conv, -31488
  %..i = select i1 %cmp15.i, i32 2, i32 1
  br label %tc358743_get_reg_size.exit

tc358743_get_reg_size.exit:                       ; preds = %land.lhs.true13.i, %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge, %if.end16.tc358743_get_reg_size.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end16.tc358743_get_reg_size.exit_crit_edge ], [ 4, %land.lhs.true.i.tc358743_get_reg_size.exit_crit_edge ], [ %..i, %land.lhs.true13.i ]
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext %conv, i32 noundef %conv18, i32 noundef %retval.0.i)
  br label %return

return:                                           ; preds = %tc358743_get_reg_size.exit, %if.end.return_crit_edge, %if.end.return_crit_edge30, %if.end.return_crit_edge31, %if.end.return_crit_edge32, %if.end.return_crit_edge33, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %tc358743_get_reg_size.exit ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end.return_crit_edge30 ], [ 0, %if.end.return_crit_edge31 ], [ 0, %if.end.return_crit_edge32 ], [ 0, %if.end.return_crit_edge33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_isr(ptr noundef %sd, i32 noundef %status, ptr noundef writeonly %handled) #2 align 64 {
entry:
  %msg.i = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef 2) #10
  %conv.i = trunc i32 %call.i to i16
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv = and i32 %call.i, 65535
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %name, ptr noundef nonnull @.str.248, i32 noundef %conv) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = and i16 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.end4.if.end37_crit_edge, label %if.then6

do.end4.if.end37_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then6:                                         ; preds = %do.end4
  %call.i112 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31488, i32 noundef 1) #10
  %call.i114 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31487, i32 noundef 1) #10
  %2 = and i32 %call.i112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool11.not = icmp eq i32 %2, 0
  br i1 %tobool11.not, label %if.then6.if.end13_crit_edge, label %if.then12

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.then6
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31461, i32 noundef 1) #10
  %conv.i.i = trunc i32 %call.i.i to i8
  %call.i52.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31477, i32 noundef 1) #10
  %conv.i53.i = trunc i32 %call.i52.i to i8
  %neg.i = xor i8 %conv.i.i, -1
  %and.i = and i8 %conv.i53.i, %neg.i
  %conv.i54.i = zext i8 %and.i to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31477, i32 noundef %conv.i54.i, i32 noundef 1) #10
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp sgt i32 %3, 2
  br i1 %cmp.i, label %do.end.i, label %if.then12.do.end9.i_crit_edge

if.then12.do.end9.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef %name.i, ptr noundef nonnull @.str.253, i32 noundef %conv.i54.i) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then12.do.end9.i_crit_edge
  %4 = and i8 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end9.i.if.end25.i_crit_edge, label %if.then12.i

do.end9.i.if.end25.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then12.i:                                      ; preds = %do.end9.i
  %call.i.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %5 = and i32 %call.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then12.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.then12.i.if.then17.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.then12.i
  %call.i.i55.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %6 = and i32 %call.i.i55.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i56.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i56.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %lor.lhs.false.i.if.end18.i_crit_edge

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.then12.i.if.then17.i_crit_edge
  tail call fastcc void @tc358743_reset_phy(ptr noundef %sd) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30720, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30719, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30718, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30717, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30716, i32 noundef 0, i32 noundef 1) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %lor.lhs.false.i.if.end18.i_crit_edge
  tail call fastcc void @tc358743_format_change(ptr noundef %sd) #10
  %and20.i = and i8 %and.i, -3
  %tobool22.not.i = icmp eq ptr %handled, null
  br i1 %tobool22.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then23.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %handled, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end25.i_crit_edge, %do.end9.i.if.end25.i_crit_edge
  %misc_int.0.i = phi i8 [ %and20.i, %if.then23.i ], [ %and20.i, %if.end18.i.if.end25.i_crit_edge ], [ %and.i, %do.end9.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %misc_int.0.i)
  %tobool26.not.i = icmp eq i8 %misc_int.0.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.if.end13_crit_edge, label %do.end30.i

if.end25.i.if.end13_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end30.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %name32.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv34.i = zext i8 %misc_int.0.i to i32
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef %name32.i, ptr noundef nonnull @.str.253, i32 noundef %conv34.i) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end30.i, %if.end25.i.if.end13_crit_edge, %if.then6.if.end13_crit_edge
  %and15 = and i32 %call.i114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  %call.i.i116 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31467, i32 noundef 1) #10
  %conv.i.i117 = trunc i32 %call.i.i116 to i8
  %call.i90.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31483, i32 noundef 1) #10
  %conv.i91.i = trunc i32 %call.i90.i to i8
  %neg.i118 = xor i8 %conv.i.i117, -1
  %and.i119 = and i8 %conv.i91.i, %neg.i118
  %conv.i92.i = zext i8 %and.i119 to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31483, i32 noundef %conv.i92.i, i32 noundef 1) #10
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i120 = icmp sgt i32 %8, 2
  br i1 %cmp.i120, label %do.end.i123, label %if.then17.do.end9.i125_crit_edge

if.then17.do.end9.i125_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i125

do.end.i123:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %name.i121 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef %name.i121, ptr noundef nonnull @.str.267, i32 noundef %conv.i92.i) #13
  br label %do.end9.i125

do.end9.i125:                                     ; preds = %do.end.i123, %if.then17.do.end9.i125_crit_edge
  %9 = and i8 %and.i119, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i124 = icmp eq i8 %9, 0
  br i1 %tobool.not.i124, label %do.end9.i125.if.end34.i_crit_edge, label %do.body13.i

do.end9.i125.if.end34.i_crit_edge:                ; preds = %do.end9.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

do.body13.i:                                      ; preds = %do.end9.i125
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.i = icmp sgt i32 %10, 0
  br i1 %cmp14.i, label %do.end19.i, label %do.body13.i.do.end26.i_crit_edge

do.body13.i.do.end26.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

do.end19.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %name21.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name21.i, ptr noundef nonnull @.str.267) #13
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end19.i, %do.body13.i.do.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @tc358743_s_ctrl_audio_sampling_rate(ptr noundef %sd) #10
  %and29.i = and i8 %and.i119, -3
  %tobool31.not.i = icmp eq ptr %handled, null
  br i1 %tobool31.not.i, label %do.end26.i.if.end34.i_crit_edge, label %if.then32.i

do.end26.i.if.end34.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then32.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %handled, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %do.end26.i.if.end34.i_crit_edge, %do.end9.i125.if.end34.i_crit_edge
  %cbit_int.0.i = phi i8 [ %and29.i, %if.then32.i ], [ %and29.i, %do.end26.i.if.end34.i_crit_edge ], [ %and.i119, %do.end9.i125.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %cbit_int.0.i)
  %tobool37.not.i = icmp ult i8 %cbit_int.0.i, 64
  br i1 %tobool37.not.i, label %if.end34.i.if.end60.i_crit_edge, label %do.body39.i

if.end34.i.if.end60.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

do.body39.i:                                      ; preds = %if.end34.i
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp40.i = icmp sgt i32 %12, 0
  br i1 %cmp40.i, label %do.end45.i, label %do.body39.i.do.end52.i_crit_edge

do.body39.i.do.end52.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52.i

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  %name47.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %name47.i, ptr noundef nonnull @.str.267) #13
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end45.i, %do.body39.i.do.end52.i_crit_edge
  %audio_present_ctrl.i.i = getelementptr i8, ptr %sd, i32 516
  %13 = ptrtoint ptr %audio_present_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %audio_present_ctrl.i.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31453, i32 noundef 1) #10
  %15 = and i32 %call.i.i.i.i, 1
  %handler.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i.i.i, align 8
  %lock.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %19, i32 noundef 0) #10
  %call.i.i.i126 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %14, i32 noundef %15) #10
  %20 = ptrtoint ptr %handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i.i.i, align 8
  %lock.i4.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i4.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %23) #10
  %and55.i = and i8 %cbit_int.0.i, 63
  %tobool57.not.i = icmp eq ptr %handled, null
  br i1 %tobool57.not.i, label %do.end52.i.if.end60.i_crit_edge, label %if.then58.i

do.end52.i.if.end60.i_crit_edge:                  ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then58.i:                                      ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %handled, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %do.end52.i.if.end60.i_crit_edge, %if.end34.i.if.end60.i_crit_edge
  %cbit_int.1.i = phi i8 [ %and55.i, %if.then58.i ], [ %and55.i, %do.end52.i.if.end60.i_crit_edge ], [ %cbit_int.0.i, %if.end34.i.if.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cbit_int.1.i)
  %tobool61.not.i = icmp eq i8 %cbit_int.1.i, 0
  br i1 %tobool61.not.i, label %if.end60.i.if.end18_crit_edge, label %do.end65.i

if.end60.i.if.end18_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end65.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %name67.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv69.i = zext i8 %cbit_int.1.i to i32
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %name67.i, ptr noundef nonnull @.str.267, i32 noundef %conv69.i) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end65.i, %if.end60.i.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %and20 = and i32 %call.i114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  %call.i.i127 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31469, i32 noundef 1) #10
  %conv.i.i128 = trunc i32 %call.i.i127 to i8
  %call.i66.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31485, i32 noundef 1) #10
  %conv.i67.i = trunc i32 %call.i66.i to i8
  %neg.i129 = xor i8 %conv.i.i128, -1
  %and.i130 = and i8 %conv.i67.i, %neg.i129
  %conv4.i = zext i8 %and.i130 to i32
  %or5.i = or i8 %and.i130, -64
  %conv.i68.i = zext i8 %or5.i to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31485, i32 noundef %conv.i68.i, i32 noundef 1) #10
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i131 = icmp sgt i32 %25, 2
  br i1 %cmp.i131, label %do.end.i133, label %if.then22.do.end12.i_crit_edge

if.then22.do.end12.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

do.end.i133:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %name.i132 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name.i132, ptr noundef nonnull @.str.278, i32 noundef %conv4.i) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i133, %if.then22.do.end12.i_crit_edge
  %and14.i = and i32 %conv4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not.i134 = icmp eq i32 %and14.i, 0
  br i1 %tobool.not.i134, label %do.end12.i.if.end40.i_crit_edge, label %do.body16.i

do.end12.i.if.end40.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

do.body16.i:                                      ; preds = %do.end12.i
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.i = icmp sgt i32 %26, 0
  br i1 %cmp17.i, label %do.end22.i, label %do.body16.i.do.end29.i_crit_edge

do.body16.i.do.end29.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

do.end22.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %name24.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef %name24.i, ptr noundef nonnull @.str.278) #13
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end22.i, %do.body16.i.do.end29.i_crit_edge
  %call.i.i.i135 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %27 = and i32 %call.i.i.i135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i136 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i136, label %do.end29.i.if.end33.i_crit_edge, label %land.lhs.true.i

do.end29.i.if.end33.i_crit_edge:                  ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %do.end29.i
  %call.i.i69.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %28 = and i32 %call.i.i69.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i70.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i70.i, label %land.lhs.true.i.if.end33.i_crit_edge, label %if.then32.i137

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then32.i137:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tc358743_format_change(ptr noundef %sd) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i137, %land.lhs.true.i.if.end33.i_crit_edge, %do.end29.i.if.end33.i_crit_edge
  %and35.i = and i8 %and.i130, -33
  %tobool37.not.i138 = icmp eq ptr %handled, null
  br i1 %tobool37.not.i138, label %if.end33.i.if.end40.i_crit_edge, label %if.then38.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %handled, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end40.i_crit_edge, %do.end12.i.if.end40.i_crit_edge
  %clk_int.0.i = phi i8 [ %and35.i, %if.then38.i ], [ %and35.i, %if.end33.i.if.end40.i_crit_edge ], [ %and.i130, %do.end12.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clk_int.0.i)
  %tobool41.not.i = icmp eq i8 %clk_int.0.i, 0
  br i1 %tobool41.not.i, label %if.end40.i.if.end23_crit_edge, label %do.end45.i140

if.end40.i.if.end23_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end45.i140:                                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %name47.i139 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv49.i = zext i8 %clk_int.0.i to i32
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef %name47.i139, ptr noundef nonnull @.str.278, i32 noundef %conv49.i) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end45.i140, %if.end40.i.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %and25 = and i32 %call.i114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end28_crit_edge, label %if.then27

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  %call.i.i141 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31470, i32 noundef 1) #10
  %conv.i.i142 = trunc i32 %call.i.i141 to i8
  %call.i143.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31486, i32 noundef 1) #10
  %conv.i144.i = trunc i32 %call.i143.i to i8
  %neg.i143 = xor i8 %conv.i.i142, -1
  %and.i144 = and i8 %conv.i144.i, %neg.i143
  %conv.i145.i = zext i8 %and.i144 to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31486, i32 noundef %conv.i145.i, i32 noundef 1) #10
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i145 = icmp sgt i32 %30, 2
  br i1 %cmp.i145, label %do.end.i147, label %if.then27.do.end10.i_crit_edge

if.then27.do.end10.i_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end.i147:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %name.i146 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %name.i146, ptr noundef nonnull @.str.286, i32 noundef %conv.i145.i) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i147, %if.then27.do.end10.i_crit_edge
  %31 = and i8 %and.i144, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i148 = icmp eq i8 %31, 0
  br i1 %tobool.not.i148, label %do.end10.i.if.end41.i_crit_edge, label %if.then13.i

do.end10.i.if.end41.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then13.i:                                      ; preds = %do.end10.i
  %call.i.i.i149 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %32 = and i32 %call.i.i.i149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.i = icmp sgt i32 %33, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.then13.i.do.end30.i151_crit_edge

if.then13.i.do.end30.i151_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i151

do.end21.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %name23.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond.i = select i1 %tobool.i.not.i, ptr @.str.94, ptr @.str.93
  %call27.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name23.i, ptr noundef nonnull @.str.286, ptr noundef nonnull %cond.i) #13
  br label %do.end30.i151

do.end30.i151:                                    ; preds = %do.end21.i, %if.then13.i.do.end30.i151_crit_edge
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then32.i152

if.then32.i152:                                   ; preds = %do.end30.i151
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tc358743_enable_edid(ptr noundef %sd) #10
  br label %if.end34.i153

if.else.i:                                        ; preds = %do.end30.i151
  tail call fastcc void @tc358743_enable_interrupts(ptr noundef %sd, i1 noundef zeroext false) #10
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i = icmp sgt i32 %34, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.tc358743_disable_edid.exit.i_crit_edge

if.else.i.tc358743_disable_edid.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_disable_edid.exit.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name.i.i, ptr noundef nonnull @.str.303) #13
  br label %tc358743_disable_edid.exit.i

tc358743_disable_edid.exit.i:                     ; preds = %do.end.i.i, %if.else.i.tc358743_disable_edid.exit.i_crit_edge
  %delayed_work_enable_hotplug.i.i = getelementptr i8, ptr %sd, i32 520
  %call5.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hotplug.i.i) #10
  %call.i.i146.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31420, i32 noundef 1) #10
  %and.i.i.i = and i32 %call.i.i146.i, 254
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31420, i32 noundef %and.i.i.i, i32 noundef 1) #10
  %timings.i = getelementptr i8, ptr %sd, i32 713
  %35 = call ptr @memset(ptr %timings.i, i32 0, i32 132)
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30720, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30719, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30718, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30717, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30716, i32 noundef 0, i32 noundef 1) #10
  %call33.i = tail call fastcc i32 @tc358743_update_controls(ptr noundef %sd) #10
  br label %if.end34.i153

if.end34.i153:                                    ; preds = %tc358743_disable_edid.exit.i, %if.then32.i152
  %and36.i = and i8 %and.i144, -2
  %tobool38.not.i = icmp eq ptr %handled, null
  br i1 %tobool38.not.i, label %if.end34.i153.if.end41.i_crit_edge, label %if.then39.i

if.end34.i153.if.end41.i_crit_edge:               ; preds = %if.end34.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end34.i153
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %handled, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end34.i153.if.end41.i_crit_edge, %do.end10.i.if.end41.i_crit_edge
  %sys_int.0.i = phi i8 [ %and.i144, %do.end10.i.if.end41.i_crit_edge ], [ %and36.i, %if.then39.i ], [ %and36.i, %if.end34.i153.if.end41.i_crit_edge ]
  %37 = and i8 %sys_int.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not.i = icmp eq i8 %37, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end72.i_crit_edge, label %do.body46.i

if.end41.i.if.end72.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

do.body46.i:                                      ; preds = %if.end41.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp47.i = icmp sgt i32 %38, 0
  br i1 %cmp47.i, label %do.end52.i154, label %do.body46.i.do.end59.i_crit_edge

do.body46.i.do.end59.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59.i

do.end52.i154:                                    ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  %name54.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %name54.i, ptr noundef nonnull @.str.286) #13
  br label %do.end59.i

do.end59.i:                                       ; preds = %do.end52.i154, %do.body46.i.do.end59.i_crit_edge
  %call.i.i147.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %39 = and i32 %call.i.i147.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i155 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i155, label %do.end59.i.if.then64.i_crit_edge, label %lor.lhs.false.i156

do.end59.i.if.then64.i_crit_edge:                 ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.i

lor.lhs.false.i156:                               ; preds = %do.end59.i
  %call.i.i148.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %40 = and i32 %call.i.i148.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i149.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i149.i, label %lor.lhs.false.i156.if.then64.i_crit_edge, label %lor.lhs.false.i156.if.end65.i_crit_edge

lor.lhs.false.i156.if.end65.i_crit_edge:          ; preds = %lor.lhs.false.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

lor.lhs.false.i156.if.then64.i_crit_edge:         ; preds = %lor.lhs.false.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.i

if.then64.i:                                      ; preds = %lor.lhs.false.i156.if.then64.i_crit_edge, %do.end59.i.if.then64.i_crit_edge
  tail call fastcc void @tc358743_reset_phy(ptr noundef %sd) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30720, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30719, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30718, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30717, i32 noundef 0, i32 noundef 1) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -30716, i32 noundef 0, i32 noundef 1) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %lor.lhs.false.i156.if.end65.i_crit_edge
  %and67.i = and i8 %sys_int.0.i, -33
  %tobool69.not.i = icmp eq ptr %handled, null
  br i1 %tobool69.not.i, label %if.end65.i.if.end72.i_crit_edge, label %if.then70.i

if.end65.i.if.end72.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then70.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %handled, align 1
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then70.i, %if.end65.i.if.end72.i_crit_edge, %if.end41.i.if.end72.i_crit_edge
  %sys_int.1.i = phi i8 [ %and67.i, %if.then70.i ], [ %and67.i, %if.end65.i.if.end72.i_crit_edge ], [ %sys_int.0.i, %if.end41.i.if.end72.i_crit_edge ]
  %42 = and i8 %sys_int.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool75.not.i = icmp eq i8 %42, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end97.i_crit_edge, label %do.body77.i

if.end72.i.if.end97.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

do.body77.i:                                      ; preds = %if.end72.i
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp78.i = icmp sgt i32 %43, 0
  br i1 %cmp78.i, label %do.end83.i, label %do.body77.i.do.end90.i_crit_edge

do.body77.i.do.end90.i_crit_edge:                 ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90.i

do.end83.i:                                       ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #12
  %name85.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name85.i, ptr noundef nonnull @.str.286) #13
  br label %do.end90.i

do.end90.i:                                       ; preds = %do.end83.i, %do.body77.i.do.end90.i_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31419, i32 noundef 49, i32 noundef 1) #10
  %and92.i = and i8 %sys_int.1.i, -17
  %tobool94.not.i = icmp eq ptr %handled, null
  br i1 %tobool94.not.i, label %do.end90.i.if.end97.i_crit_edge, label %if.then95.i

do.end90.i.if.end97.i_crit_edge:                  ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

if.then95.i:                                      ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %handled, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then95.i, %do.end90.i.if.end97.i_crit_edge, %if.end72.i.if.end97.i_crit_edge
  %sys_int.2.i = phi i8 [ %and92.i, %if.then95.i ], [ %and92.i, %do.end90.i.if.end97.i_crit_edge ], [ %sys_int.1.i, %if.end72.i.if.end97.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sys_int.2.i)
  %tobool98.not.i = icmp eq i8 %sys_int.2.i, 0
  br i1 %tobool98.not.i, label %if.end97.i.if.end28_crit_edge, label %do.end102.i

if.end97.i.if.end28_crit_edge:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end102.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %name104.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv106.i = zext i8 %sys_int.2.i to i32
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name104.i, ptr noundef nonnull @.str.286, i32 noundef %conv106.i) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end102.i, %if.end97.i.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %and30 = and i32 %call.i114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  %call.i.i157 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31466, i32 noundef 1) #10
  %call.i1.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31482, i32 noundef 1) #10
  %neg.i158 = and i32 %call.i.i157, 255
  %and.i159 = xor i32 %neg.i158, 255
  %conv.i3.i = and i32 %and.i159, %call.i1.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31482, i32 noundef %conv.i3.i, i32 noundef 1) #10
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i160 = icmp sgt i32 %45, 2
  br i1 %cmp.i160, label %do.end.i163, label %if.then32.tc358743_hdmi_audio_int_handler.exit_crit_edge

if.then32.tc358743_hdmi_audio_int_handler.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_hdmi_audio_int_handler.exit

do.end.i163:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %name.i161 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef %name.i161, ptr noundef nonnull @.str.305, i32 noundef %conv.i3.i) #13
  br label %tc358743_hdmi_audio_int_handler.exit

tc358743_hdmi_audio_int_handler.exit:             ; preds = %do.end.i163, %if.then32.tc358743_hdmi_audio_int_handler.exit_crit_edge
  %call10.i164 = tail call fastcc i32 @tc358743_s_ctrl_audio_sampling_rate(ptr noundef %sd) #10
  %audio_present_ctrl.i.i165 = getelementptr i8, ptr %sd, i32 516
  %46 = ptrtoint ptr %audio_present_ctrl.i.i165 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %audio_present_ctrl.i.i165, align 4
  %call.i.i.i.i166 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31453, i32 noundef 1) #10
  %48 = and i32 %call.i.i.i.i166, 1
  %handler.i.i.i.i167 = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 2
  %49 = ptrtoint ptr %handler.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handler.i.i.i.i167, align 8
  %lock.i.i.i.i168 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %lock.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock.i.i.i.i168, align 4
  tail call void @mutex_lock_nested(ptr noundef %52, i32 noundef 0) #10
  %call.i.i.i169 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %47, i32 noundef %48) #10
  %53 = ptrtoint ptr %handler.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handler.i.i.i.i167, align 8
  %lock.i4.i.i.i170 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lock.i4.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i4.i.i.i170, align 4
  tail call void @mutex_unlock(ptr noundef %56) #10
  br label %if.end33

if.end33:                                         ; preds = %tc358743_hdmi_audio_int_handler.exit, %if.end28.if.end33_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef 512, i32 noundef 2) #10
  %and35 = and i16 %conv.i, -513
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %do.end4.if.end37_crit_edge
  %intstatus.0 = phi i16 [ %and35, %if.end33 ], [ %conv.i, %do.end4.if.end37_crit_edge ]
  %57 = and i16 %intstatus.0, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool40.not = icmp eq i16 %57, 0
  br i1 %tobool40.not, label %if.end37.if.end48_crit_edge, label %if.then41

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then41:                                        ; preds = %if.end37
  %call.i.i172 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1580, i32 noundef 4) #10
  %call.i91.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1584, i32 noundef 4) #10
  %conv.i173 = zext i16 %intstatus.0 to i32
  %and.i174 = and i32 %conv.i173, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  %not.tobool.not.i = xor i1 %tobool.not.i175, true
  %spec.select.i = zext i1 %not.tobool.not.i to i32
  %and4.i = and i32 %conv.i173, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %58 = lshr exact i32 %and4.i, 2
  %59 = or i32 %58, %spec.select.i
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1740, i32 noundef %59, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool12.not.i = icmp eq i32 %call.i91.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i, label %if.then41.if.end38.i_crit_edge, label %if.then13.i177

if.then41.if.end38.i_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then13.i177:                                   ; preds = %if.then41
  %and14.i176 = and i32 %call.i91.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i176)
  %tobool15.not.i = icmp eq i32 %and14.i176, 0
  br i1 %tobool15.not.i, label %if.else.i178, label %if.then13.i177.if.end34.sink.split.i_crit_edge

if.then13.i177.if.end34.sink.split.i_crit_edge:   ; preds = %if.then13.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split.i

if.else.i178:                                     ; preds = %if.then13.i177
  %and17.i = and i32 %call.i91.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else21.i, label %if.else.i178.if.end34.sink.split.i_crit_edge

if.else.i178.if.end34.sink.split.i_crit_edge:     ; preds = %if.else.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split.i

if.else21.i:                                      ; preds = %if.else.i178
  %and22.i = and i32 %call.i91.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else26.i, label %if.else21.i.if.end34.sink.split.i_crit_edge

if.else21.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split.i

if.else26.i:                                      ; preds = %if.else21.i
  %and27.i = and i32 %call.i91.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else26.i.if.end34.i179_crit_edge, label %if.else26.i.if.end34.sink.split.i_crit_edge

if.else26.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split.i

if.else26.i.if.end34.i179_crit_edge:              ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i179

if.end34.sink.split.i:                            ; preds = %if.else26.i.if.end34.sink.split.i_crit_edge, %if.else21.i.if.end34.sink.split.i_crit_edge, %if.else.i178.if.end34.sink.split.i_crit_edge, %if.then13.i177.if.end34.sink.split.i_crit_edge
  %.sink101.i = phi i8 [ 1, %if.then13.i177.if.end34.sink.split.i_crit_edge ], [ 2, %if.else.i178.if.end34.sink.split.i_crit_edge ], [ 4, %if.else21.i.if.end34.sink.split.i_crit_edge ], [ 16, %if.else26.i.if.end34.sink.split.i_crit_edge ]
  %cec_adap20.i = getelementptr i8, ptr %sd, i32 860
  %60 = ptrtoint ptr %cec_adap20.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cec_adap20.i, align 4
  %call.i93.i = tail call i64 @ktime_get() #10
  tail call void @cec_transmit_attempt_done_ts(ptr noundef %61, i8 noundef zeroext %.sink101.i, i64 noundef %call.i93.i) #10
  br label %if.end34.i179

if.end34.i179:                                    ; preds = %if.end34.sink.split.i, %if.else26.i.if.end34.i179_crit_edge
  %tobool35.not.i = icmp eq ptr %handled, null
  br i1 %tobool35.not.i, label %if.end34.i179.if.end38.i_crit_edge, label %if.then36.i

if.end34.i179.if.end38.i_crit_edge:               ; preds = %if.end34.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end34.i179
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %handled, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end34.i179.if.end38.i_crit_edge, %if.then41.if.end38.i_crit_edge
  %and43.i = and i32 %call.i.i172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i180 = icmp eq i32 %and43.i, 0
  %or.cond90.i = select i1 %tobool.not.i175, i1 true, i1 %tobool44.not.i180
  br i1 %or.cond90.i, label %if.end38.i.tc358743_cec_handler.exit_crit_edge, label %if.then45.i

if.end38.i.tc358743_cec_handler.exit_crit_edge:   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_cec_handler.exit

if.then45.i:                                      ; preds = %if.end38.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %63 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %call.i96.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1716, i32 noundef 4) #10
  %and47.i = and i32 %call.i96.i, 31
  %len.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 2
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and47.i, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %cmp99.not.i = icmp eq i32 %and47.i, 0
  br i1 %cmp99.not.i, label %if.then45.i.for.end.i_crit_edge, label %if.then45.i.for.body.i_crit_edge

if.then45.i.for.body.i_crit_edge:                 ; preds = %if.then45.i
  br label %for.body.i

if.then45.i.for.end.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then45.i.for.body.i_crit_edge
  %i.0100.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then45.i.for.body.i_crit_edge ]
  %i.0.tr.i = trunc i32 %i.0100.i to i16
  %65 = shl i16 %i.0.tr.i, 2
  %conv50.i = add i16 %65, 1588
  %call.i97.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext %conv50.i, i32 noundef 4) #10
  %conv53.i = trunc i32 %call.i97.i to i8
  %arrayidx.i = getelementptr %struct.cec_msg, ptr %msg.i, i32 0, i32 6, i32 %i.0100.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv53.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.0100.i, 1
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i, align 8
  %cmp.i181 = icmp ult i32 %inc.i, %68
  br i1 %cmp.i181, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then45.i.for.end.i_crit_edge
  %cec_adap55.i = getelementptr i8, ptr %sd, i32 860
  %69 = ptrtoint ptr %cec_adap55.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cec_adap55.i, align 4
  %call.i98.i = tail call i64 @ktime_get() #10
  call void @cec_received_msg_ts(ptr noundef %70, ptr noundef nonnull %msg.i, i64 noundef %call.i98.i) #10
  %tobool56.not.i = icmp eq ptr %handled, null
  br i1 %tobool56.not.i, label %for.end.i.if.end58.i_crit_edge, label %if.then57.i

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then57.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %handled, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %for.end.i.if.end58.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %tc358743_cec_handler.exit

tc358743_cec_handler.exit:                        ; preds = %if.end58.i, %if.end38.i.tc358743_cec_handler.exit_crit_edge
  %conv.i.i182 = zext i16 %57 to i32
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef %conv.i.i182, i32 noundef 2) #10
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef %conv.i.i182, i32 noundef 2) #10
  %and46 = and i16 %intstatus.0, -13
  br label %if.end48

if.end48:                                         ; preds = %tc358743_cec_handler.exit, %if.end37.if.end48_crit_edge
  %intstatus.1 = phi i16 [ %and46, %tc358743_cec_handler.exit ], [ %intstatus.0, %if.end37.if.end48_crit_edge ]
  %72 = and i16 %intstatus.1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool51.not = icmp eq i16 %72, 0
  br i1 %tobool51.not, label %if.end48.if.end58_crit_edge, label %if.then52

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then52:                                        ; preds = %if.end48
  %call.i184 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1044, i32 noundef 4) #10
  %and54 = and i32 %call.i184, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then52.if.end57_crit_edge, label %if.then56

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %name.i185 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i.i186 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 1100, i32 noundef 4) #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %name.i185, ptr noundef nonnull @.str.307, i32 noundef %call.i.i186) #13
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1292, i32 noundef 4, i32 noundef 4) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then52.if.end57_crit_edge
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef 256, i32 noundef 2) #10
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end48.if.end58_crit_edge
  %call.i187 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 20, i32 noundef 2) #10
  %conv.i188 = trunc i32 %call.i187 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i188)
  %tobool60.not = icmp eq i16 %conv.i188, 0
  br i1 %tobool60.not, label %if.end58.if.end77_crit_edge, label %do.body62

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.body62:                                        ; preds = %if.end58
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp63 = icmp sgt i32 %73, 0
  br i1 %cmp63, label %do.end68, label %do.body62.if.end77_crit_edge

do.body62.if.end77_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  %name70 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv72 = and i32 %call.i187, 65535
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %name70, ptr noundef nonnull @.str.248, i32 noundef %conv72) #13
  br label %if.end77

if.end77:                                         ; preds = %do.end68, %do.body62.if.end77_crit_edge, %if.end58.if.end77_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358743_get_detected_timings(ptr noundef %sd, ptr nocapture noundef %timings) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %1 = call ptr @memset(ptr %timings, i32 0, i32 132)
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %2 = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name, ptr noundef nonnull @.str.173) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call.i.i121 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %4 = and i32 %call.i.i121, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i122 = icmp eq i32 %4, 0
  br i1 %tobool.not.i122, label %do.body9, label %if.end22

do.body9:                                         ; preds = %if.end6
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %name16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name16, ptr noundef nonnull @.str.173) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %timings, align 1
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31454, i32 noundef 1) #10
  %7 = and i32 %call.i, 1
  %interlaced = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %interlaced to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %interlaced, align 1
  %call.i123 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31357, i32 noundef 1) #10
  %9 = shl i32 %call.i123, 8
  %shl = and i32 %9, 7936
  %call.i125 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31358, i32 noundef 1) #10
  %conv28 = and i32 %call.i125, 255
  %add = or i32 %shl, %conv28
  %call.i127 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31351, i32 noundef 1) #10
  %10 = shl i32 %call.i127, 8
  %shl32 = and i32 %10, 7936
  %call.i129 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31352, i32 noundef 1) #10
  %conv34 = and i32 %call.i129, 255
  %add35 = or i32 %shl32, %conv34
  %call.i131 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31349, i32 noundef 1) #10
  %11 = shl i32 %call.i131, 8
  %shl39 = and i32 %11, 7936
  %call.i133 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31350, i32 noundef 1) #10
  %conv41 = and i32 %call.i133, 255
  %add42 = or i32 %shl39, %conv41
  %call.i135 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31347, i32 noundef 1) #10
  %12 = shl i32 %call.i135, 8
  %shl46 = and i32 %12, 16128
  %call.i137 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31348, i32 noundef 1) #10
  %conv48 = and i32 %call.i137, 254
  %add49 = or i32 %shl46, %conv48
  %div118 = lshr exact i32 %add49, 1
  %call.i139 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31326, i32 noundef 1) #10
  %13 = shl i32 %call.i139, 8
  %shl53 = and i32 %13, 768
  %call.i141 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31327, i32 noundef 1) #10
  %conv55 = and i32 %call.i141, 255
  %add56 = or i32 %shl53, %conv55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add56)
  %cmp57.not = icmp eq i32 %add56, 0
  br i1 %cmp57.not, label %if.end22.cond.end_crit_edge, label %cond.true

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %div60120 = lshr i32 %add56, 1
  %add61 = add nuw nsw i32 %div60120, 10000
  %div62 = udiv i32 %add61, %add56
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end22.cond.end_crit_edge
  %cond63 = phi i32 [ %div62, %cond.true ], [ 0, %if.end22.cond.end_crit_edge ]
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %add, ptr %0, align 1
  %height65 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height65 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %add35, ptr %height65, align 1
  %sub = sub nsw i32 %div118, %add35
  %vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %16 = ptrtoint ptr %vsync to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %sub, ptr %vsync, align 1
  %sub66 = sub nsw i32 %add42, %add
  %hsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %hsync to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %sub66, ptr %hsync, align 1
  %mul = mul nuw nsw i32 %div118, %add42
  %mul67 = mul i32 %mul, %cond63
  %conv68 = zext i32 %mul67 to i64
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %conv68, ptr %pixelclock, align 1
  %19 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp70 = icmp eq i32 %20, 1
  br i1 %cmp70, label %if.then72, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul74 = shl nuw nsw i32 %add35, 1
  %21 = ptrtoint ptr %height65 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %mul74, ptr %height65, align 1
  %add76 = add nsw i32 %sub, 1
  %il_vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %22 = ptrtoint ptr %il_vsync to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %add76, ptr %il_vsync, align 1
  %div78119 = lshr i64 %conv68, 1
  %23 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %div78119, ptr %pixelclock, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %cond.end.cleanup_crit_edge, %do.end14, %do.body9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -67, %do.end ], [ -67, %do.body.cleanup_crit_edge ], [ -37, %do.end14 ], [ -37, %do.body9.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext %reg, i32 noundef %n) unnamed_addr #5 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %i2c_client.i = getelementptr i8, ptr %sd, i32 412
  %1 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %4 to i8
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %reg to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %7 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr5.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr5.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %7, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf6.i, align 4
  %arrayinit.element7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = load i16, ptr %addr5.i, align 2
  %16 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayinit.element7.i, align 4
  %flags10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags10.i, align 2
  %len11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %conv12.i = trunc i32 %n to i16
  %18 = ptrtoint ptr %len11.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12.i, ptr %len11.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val, ptr %buf13.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15.i)
  %cmp.not.i = icmp eq i32 %call15.i, 2
  br i1 %cmp.not.i, label %entry.i2c_rd.exit_crit_edge, label %do.end.i

entry.i2c_rd.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_rd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %reg to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr5.i, align 2
  %conv20.i = zext i16 %23 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name.i, ptr noundef nonnull @.str.171, i32 noundef %conv.i, i32 noundef %conv20.i) #13
  br label %i2c_rd.exit

i2c_rd.exit:                                      ; preds = %do.end.i, %entry.i2c_rd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_unpack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_infoframe_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_print_register_map(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef %name) #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name) #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name) #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name) #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %name) #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name) #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %name) #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name) #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name) #13
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %name) #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %name) #13
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name) #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %name) #13
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name) #13
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %name) #13
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %name) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext %reg, i32 noundef %val, i32 noundef %n) unnamed_addr #5 align 64 {
entry:
  %raw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw) #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %raw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %raw, align 4
  call fastcc void @i2c_wr(ptr noundef %sd, i16 noundef zeroext %reg, ptr noundef nonnull %raw, i32 noundef %n)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_wr(ptr noundef %sd, i16 noundef zeroext %reg, ptr nocapture noundef readonly %values, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %data = alloca [130 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr i8, ptr %sd, i32 412
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %data) #10
  %4 = getelementptr inbounds i8, ptr %data, i32 2
  %5 = call ptr @memset(ptr %4, i32 255, i32 128)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %buf, align 4
  %10 = trunc i32 %n to i16
  %conv6 = add i16 %10, 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv6, ptr %len, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %conv7 = zext i16 %reg to i32
  %13 = lshr i16 %reg, 8
  %conv8 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %data, align 1
  %conv10 = trunc i16 %reg to i8
  %arrayidx11 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp12112.not = icmp eq i32 %n, 0
  br i1 %cmp12112.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr inbounds i8, ptr %data, i32 2
  %16 = call ptr @memcpy(ptr %uglygep, ptr %values, i32 %n)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call17 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end31, label %do.end23

do.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name25 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr, align 2
  %conv29 = zext i16 %20 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %name25, ptr noundef nonnull @.str.231, i32 noundef %conv7, i32 noundef %conv29) #13
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp32 = icmp slt i32 %21, 3
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %22 = zext i32 %n to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %n, label %do.end78 [
    i32 1, label %do.end38
    i32 2, label %do.end49
    i32 4, label %do.end62
  ]

do.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %name40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx43 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %24 to i32
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %name40, i32 noundef %conv7, i32 noundef %conv44) #13
  br label %cleanup

do.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %name51 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx54 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %26 to i32
  %arrayidx56 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %28 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef %name51, i32 noundef %conv7, i32 noundef %conv55, i32 noundef %conv57) #13
  br label %cleanup

do.end62:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %name64 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx67 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %30 to i32
  %arrayidx69 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %32 to i32
  %arrayidx71 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %34 to i32
  %arrayidx73 = getelementptr inbounds [130 x i8], ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %36 to i32
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef %name64, i32 noundef %conv7, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv74) #13
  br label %cleanup

do.end78:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %name80 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef %name80, i32 noundef %n, i32 noundef %conv7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.end62, %do.end49, %do.end38, %if.end31.cleanup_crit_edge, %do.end23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_reset_phy(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name, ptr noundef nonnull @.str.258) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31435, i32 noundef 1) #10
  %and.i = and i32 %call.i, 254
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31435, i32 noundef %and.i, i32 noundef 1) #10
  %call.i5 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31435, i32 noundef 1) #10
  %and.i6 = and i32 %call.i5, 254
  %or.i = or i32 %and.i6, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31435, i32 noundef %or.i, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_format_change(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %timings = alloca %struct.v4l2_dv_timings, align 1
  %tc358743_ev_fmt = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #10
  %0 = call ptr @memset(ptr %timings, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %tc358743_ev_fmt) #10
  %1 = call ptr @memcpy(ptr %tc358743_ev_fmt, ptr @__const.tc358743_format_change.tc358743_ev_fmt, i32 136)
  %call1 = call fastcc i32 @tc358743_get_detected_timings(ptr noundef %sd, ptr noundef nonnull %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp sgt i32 %2, 2
  br i1 %cmp.i, label %do.end.i, label %if.then.enable_stream.exit_crit_edge

if.then.enable_stream.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_stream.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name.i, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.265) #13
  br label %enable_stream.exit

enable_stream.exit:                               ; preds = %do.end.i, %if.then.enable_stream.exit_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31361, i32 noundef 208, i32 noundef 1) #10
  %confctl_mutex.i = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex.i, i32 noundef 0) #10
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i.i = and i32 %call.i.i, 65532
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %and.i.i, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex.i) #10
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %enable_stream.exit.if.end16_crit_edge

enable_stream.exit.if.end16_crit_edge:            ; preds = %enable_stream.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end:                                           ; preds = %enable_stream.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef %name, ptr noundef nonnull @.str.260) #13
  br label %if.end16

if.else:                                          ; preds = %entry
  %timings7 = getelementptr i8, ptr %sd, i32 713
  %call8 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings7, ptr noundef nonnull %timings, i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call8, label %if.else.if.end10_crit_edge, label %if.then9

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.else
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i27 = icmp sgt i32 %4, 2
  br i1 %cmp.i27, label %do.end.i30, label %if.then9.enable_stream.exit34_crit_edge

if.then9.enable_stream.exit34_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_stream.exit34

do.end.i30:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %name.i28 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name.i28, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.265) #13
  br label %enable_stream.exit34

enable_stream.exit34:                             ; preds = %do.end.i30, %if.then9.enable_stream.exit34_crit_edge
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31361, i32 noundef 208, i32 noundef 1) #10
  %confctl_mutex.i31 = getelementptr i8, ptr %sd, i32 416
  call void @mutex_lock_nested(ptr noundef %confctl_mutex.i31, i32 noundef 0) #10
  %call.i.i32 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i.i33 = and i32 %call.i.i32, 65532
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %and.i.i33, i32 noundef 2) #10
  call void @mutex_unlock(ptr noundef %confctl_mutex.i31) #10
  br label %if.end10

if.end10:                                         ; preds = %enable_stream.exit34, %if.else.if.end10_crit_edge
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %name13 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @v4l2_print_dv_timings(ptr noundef %name13, ptr noundef nonnull @.str.261, ptr noundef nonnull %timings, i1 noundef zeroext false) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end10.if.end16_crit_edge, %do.end, %enable_stream.exit.if.end16_crit_edge
  %devnode = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 13
  %6 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devnode, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @v4l2_subdev_notify_event(ptr noundef %sd, ptr noundef nonnull %tc358743_ev_fmt) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %tc358743_ev_fmt) #10
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_stream(ptr noundef %sd, i1 noundef zeroext %enable) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %enable, ptr @.str.264, ptr @.str.265
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name, ptr noundef nonnull @.str.263, ptr noundef nonnull %cond) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  br i1 %enable, label %if.then6, label %do.end4.if.end7_crit_edge

do.end4.if.end7_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 568, i32 noundef 0, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 568, i32 noundef 1, i32 noundef 4) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end4.if.end7_crit_edge
  %.sink = phi i32 [ 192, %if.then6 ], [ 208, %do.end4.if.end7_crit_edge ]
  %cond9 = phi i32 [ 3, %if.then6 ], [ 0, %do.end4.if.end7_crit_edge ]
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31361, i32 noundef %.sink, i32 noundef 1) #10
  %confctl_mutex = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i = and i32 %call.i, 65532
  %or.i = or i32 %and.i, %cond9
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %or.i, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc358743_s_ctrl_audio_sampling_rate(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_sampling_rate_ctrl = getelementptr i8, ptr %sd, i32 512
  %0 = ptrtoint ptr %audio_sampling_rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_sampling_rate_ctrl, align 4
  %call.i.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %2 = and i32 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %entry.get_audio_sampling_rate.exit_crit_edge, label %if.end.i

entry.get_audio_sampling_rate.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_audio_sampling_rate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31199, i32 noundef 1) #10
  %3 = and i32 %call.i.i, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @get_audio_sampling_rate.code_to_rate, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  br label %get_audio_sampling_rate.exit

get_audio_sampling_rate.exit:                     ; preds = %if.end.i, %entry.get_audio_sampling_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ 0, %entry.get_audio_sampling_rate.exit_crit_edge ]
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #10
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %1, i32 noundef %retval.0.i) #10
  %10 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %13) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_enable_edid(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edid_blocks_written = getelementptr i8, ptr %sd, i32 712
  %0 = ptrtoint ptr %edid_blocks_written to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %edid_blocks_written, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body, label %do.body11

do.body:                                          ; preds = %entry
  br i1 %cmp2, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef %name, ptr noundef nonnull @.str.300) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %detect_tx_5v_ctrl.i = getelementptr i8, ptr %sd, i32 508
  %3 = ptrtoint ptr %detect_tx_5v_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %detect_tx_5v_ctrl.i, align 4
  %call.i.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %5 = and i32 %call.i.i.i, 1
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #10
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %4, i32 noundef %5) #10
  br label %cleanup

do.body11:                                        ; preds = %entry
  br i1 %cmp2, label %do.end17, label %do.body11.do.end24_crit_edge

do.body11.do.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name19, ptr noundef nonnull @.str.300) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end17, %do.body11.do.end24_crit_edge
  %delayed_work_enable_hotplug = getelementptr i8, ptr %sd, i32 520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %delayed_work_enable_hotplug, i32 noundef 10) #10
  tail call fastcc void @tc358743_enable_interrupts(ptr noundef %sd, i1 noundef zeroext true)
  %detect_tx_5v_ctrl.i34 = getelementptr i8, ptr %sd, i32 508
  %11 = ptrtoint ptr %detect_tx_5v_ctrl.i34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %detect_tx_5v_ctrl.i34, align 4
  %call.i.i.i35 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %13 = and i32 %call.i.i.i35, 1
  %handler.i.i.i36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %handler.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i.i.i36, align 8
  %lock.i.i.i37 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lock.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i.i.i37, align 4
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #10
  %call.i.i38 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %12, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end8
  %handler.i.i.i36.sink = phi ptr [ %handler.i.i.i36, %do.end24 ], [ %handler.i.i.i, %do.end8 ]
  %18 = ptrtoint ptr %handler.i.i.i36.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i.i.i36.sink, align 8
  %lock.i4.i.i39 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i4.i.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i4.i.i39, align 4
  tail call void @mutex_unlock(ptr noundef %21) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_g_input_status(ptr noundef %sd, ptr nocapture noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %1 = and i32 %call.i.i, 2
  %2 = xor i32 %1, 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %or = or i32 %2, %4
  store i32 %or, ptr %status, align 4
  %call.i.i12 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %5 = shl i32 %call.i.i12, 9
  %6 = and i32 %5, 65536
  %7 = xor i32 %6, 65536
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %or3 = or i32 %7, %9
  store i32 %or3, ptr %status, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef %name, ptr noundef nonnull @.str.309, i32 noundef %or3) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  tail call fastcc void @enable_stream(ptr noundef %sd, i1 noundef zeroext %tobool)
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tc358743_set_csi(ptr noundef %sd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc358743_g_dv_timings(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %timings) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timings1 = getelementptr i8, ptr %sd, i32 713
  %0 = call ptr @memcpy(ptr %timings, ptr %timings1, i32 132)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_query_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tc358743_get_detected_timings(ptr noundef %sd, ptr noundef %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.311, ptr noundef %timings, i1 noundef zeroext false) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @tc358743_timings_cap, ptr noundef null, ptr noundef null) #10
  br i1 %call4, label %if.end3.cleanup_crit_edge, label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end3
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name8 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef %name8, ptr noundef nonnull @.str.313) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -34, %do.end ], [ -34, %do.body.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_set_csi(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -88
  %0 = getelementptr i8, ptr %sd, i32 717
  %mbus_fmt_code.i = getelementptr i8, ptr %sd, i32 848
  %1 = ptrtoint ptr %mbus_fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbus_fmt_code.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %0, align 1
  %height.i = getelementptr i8, ptr %sd, i32 721
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %height.i, align 1
  %vfrontporch.i.i = getelementptr i8, ptr %sd, i32 753
  %7 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %vfrontporch.i.i, align 1
  %vsync.i.i = getelementptr i8, ptr %sd, i32 757
  %9 = ptrtoint ptr %vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %vsync.i.i, align 1
  %vbackporch.i.i = getelementptr i8, ptr %sd, i32 761
  %11 = ptrtoint ptr %vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %vbackporch.i.i, align 1
  %il_vfrontporch.i.i = getelementptr i8, ptr %sd, i32 765
  %13 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %il_vfrontporch.i.i, align 1
  %il_vsync.i.i = getelementptr i8, ptr %sd, i32 769
  %15 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %il_vsync.i.i, align 1
  %il_vbackporch.i.i = getelementptr i8, ptr %sd, i32 773
  %17 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i.i = add i32 %8, %6
  %add1.i.i = add i32 %add.i.i, %10
  %add2.i.i = add i32 %add1.i.i, %12
  %add3.i.i = add i32 %add2.i.i, %14
  %add4.i.i = add i32 %add3.i.i, %16
  %add5.i.i = add i32 %add4.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i.i)
  %tobool.not.i.i = icmp eq i32 %add5.i.i, 0
  br i1 %tobool.not.i.i, label %entry.tc358743_num_csi_lanes_needed.exit_crit_edge, label %lor.lhs.false.i.i

entry.tc358743_num_csi_lanes_needed.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_num_csi_lanes_needed.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %hfrontporch.i.i = getelementptr i8, ptr %sd, i32 741
  %19 = ptrtoint ptr %hfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %hfrontporch.i.i, align 1
  %hsync.i.i = getelementptr i8, ptr %sd, i32 745
  %21 = ptrtoint ptr %hsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %hsync.i.i, align 1
  %hbackporch.i.i = getelementptr i8, ptr %sd, i32 749
  %23 = ptrtoint ptr %hbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %hbackporch.i.i, align 1
  %add6.i.i = add i32 %20, %4
  %add7.i.i = add i32 %add6.i.i, %22
  %add8.i.i = add i32 %add7.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i.i)
  %tobool9.not.i.i = icmp eq i32 %add8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_num_csi_lanes_needed.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixelclock.i.i = getelementptr i8, ptr %sd, i32 733
  %25 = ptrtoint ptr %pixelclock.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %pixelclock.i.i, align 1
  %conv.i.i = trunc i64 %26 to i32
  %mul.i.i = mul i32 %add8.i.i, %add5.i.i
  %div55.i.i = lshr i32 %mul.i.i, 1
  %add30.i.i = add i32 %div55.i.i, %conv.i.i
  %div31.i.i = udiv i32 %add30.i.i, %mul.i.i
  br label %tc358743_num_csi_lanes_needed.exit

tc358743_num_csi_lanes_needed.exit:               ; preds = %if.end.i.i, %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge, %entry.tc358743_num_csi_lanes_needed.exit_crit_edge
  %retval.0.i.i = phi i32 [ %div31.i.i, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.tc358743_num_csi_lanes_needed.exit_crit_edge ], [ 0, %entry.tc358743_num_csi_lanes_needed.exit_crit_edge ]
  %mul.i = mul i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %2)
  %cmp.i = icmp eq i32 %2, 8207
  %cond.i = select i1 %cmp.i, i32 16, i32 24
  %mul3.i = mul i32 %mul.i, %cond.i
  %mul4.i = mul i32 %mul3.i, %retval.0.i.i
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %pll_prd.i = getelementptr i8, ptr %sd, i32 -76
  %29 = ptrtoint ptr %pll_prd.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pll_prd.i, align 4
  %conv.i = zext i16 %30 to i32
  %div.i = udiv i32 %28, %conv.i
  %pll_fbd.i = getelementptr i8, ptr %sd, i32 -74
  %31 = ptrtoint ptr %pll_fbd.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pll_fbd.i, align 2
  %conv5.i = zext i16 %32 to i32
  %mul6.i = mul i32 %div.i, %conv5.i
  %add.i = add i32 %mul4.i, -1
  %sub.i = add i32 %add.i, %mul6.i
  %div7.i = udiv i32 %sub.i, %mul6.i
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp sgt i32 %33, 2
  br i1 %cmp, label %do.end, label %tc358743_num_csi_lanes_needed.exit.do.end6_crit_edge

tc358743_num_csi_lanes_needed.exit.do.end6_crit_edge: ; preds = %tc358743_num_csi_lanes_needed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %tc358743_num_csi_lanes_needed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name, ptr noundef nonnull @.str.310) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %tc358743_num_csi_lanes_needed.exit.do.end6_crit_edge
  %conv = trunc i32 %div7.i to i8
  %csi_lanes_in_use = getelementptr i8, ptr %sd, i32 852
  %34 = ptrtoint ptr %csi_lanes_in_use to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %csi_lanes_in_use, align 4
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %or10.i = and i32 %call.i.i, 65023
  %conv.i11.i = or i32 %or10.i, 512
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %conv.i11.i, i32 noundef 2) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %or10.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %sub.i)
  %cmp7 = icmp ugt i32 %mul6.i, %sub.i
  br i1 %cmp7, label %if.end14.thread, label %if.end14

if.end14.thread:                                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 320, i32 noundef 1, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 324, i32 noundef 1, i32 noundef 4) #10
  br label %if.end18.thread

if.end14:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div7.i)
  %cmp15 = icmp ult i32 %div7.i, 2
  br i1 %cmp15, label %if.end14.if.end18.thread_crit_edge, label %if.end18

if.end14.if.end18.thread_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end14.if.end18.thread_crit_edge, %if.end14.thread
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 328, i32 noundef 1, i32 noundef 4) #10
  br label %if.end22.thread

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div7.i)
  %cmp19 = icmp eq i32 %div7.i, 2
  br i1 %cmp19, label %if.end18.if.end22.thread_crit_edge, label %if.end22

if.end18.if.end22.thread_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.thread

if.end22.thread:                                  ; preds = %if.end18.if.end22.thread_crit_edge, %if.end18.thread
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 332, i32 noundef 1, i32 noundef 4) #10
  br label %if.then25

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div7.i)
  %cmp23 = icmp ult i32 %div7.i, 4
  br i1 %cmp23, label %if.end22.if.then25_crit_edge, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %if.end22.if.then25_crit_edge, %if.end22.thread
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 336, i32 noundef 1, i32 noundef 4) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %lineinitcnt = getelementptr i8, ptr %sd, i32 -72
  %35 = ptrtoint ptr %lineinitcnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lineinitcnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 528, i32 noundef %36, i32 noundef 4) #10
  %lptxtimecnt = getelementptr i8, ptr %sd, i32 -68
  %37 = ptrtoint ptr %lptxtimecnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lptxtimecnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 532, i32 noundef %38, i32 noundef 4) #10
  %tclk_headercnt = getelementptr i8, ptr %sd, i32 -64
  %39 = ptrtoint ptr %tclk_headercnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tclk_headercnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 536, i32 noundef %40, i32 noundef 4) #10
  %tclk_trailcnt = getelementptr i8, ptr %sd, i32 -60
  %41 = ptrtoint ptr %tclk_trailcnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tclk_trailcnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 540, i32 noundef %42, i32 noundef 4) #10
  %ths_headercnt = getelementptr i8, ptr %sd, i32 -56
  %43 = ptrtoint ptr %ths_headercnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ths_headercnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 544, i32 noundef %44, i32 noundef 4) #10
  %twakeup = getelementptr i8, ptr %sd, i32 -52
  %45 = ptrtoint ptr %twakeup to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %twakeup, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 548, i32 noundef %46, i32 noundef 4) #10
  %tclk_postcnt = getelementptr i8, ptr %sd, i32 -48
  %47 = ptrtoint ptr %tclk_postcnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tclk_postcnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 552, i32 noundef %48, i32 noundef 4) #10
  %ths_trailcnt = getelementptr i8, ptr %sd, i32 -44
  %49 = ptrtoint ptr %ths_trailcnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ths_trailcnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 556, i32 noundef %50, i32 noundef 4) #10
  %hstxvregcnt = getelementptr i8, ptr %sd, i32 -40
  %51 = ptrtoint ptr %hstxvregcnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hstxvregcnt, align 4
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 560, i32 noundef %52, i32 noundef 4) #10
  %not.cmp27.not = xor i1 %cmp7, true
  %cond = zext i1 %not.cmp27.not to i32
  %cond31 = select i1 %cmp7, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div7.i)
  %cmp32 = icmp ugt i32 %div7.i, 1
  %cond34 = select i1 %cmp32, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div7.i)
  %cmp36 = icmp ugt i32 %div7.i, 2
  %cond38 = select i1 %cmp36, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div7.i)
  %cmp40 = icmp ugt i32 %div7.i, 3
  %cond42 = select i1 %cmp40, i32 16, i32 0
  %or = or i32 %cond38, %cond34
  %or35 = or i32 %or, %cond42
  %or39 = or i32 %or35, %cond
  %or43 = or i32 %or39, %cond31
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 564, i32 noundef %or43, i32 noundef 4) #10
  %bus = getelementptr i8, ptr %sd, i32 -24
  %53 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus, align 4
  %and = lshr i32 %54, 8
  %and.lobit = and i32 %and, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 568, i32 noundef %and.lobit, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 516, i32 noundef 1, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1304, i32 noundef 1, i32 noundef 4) #10
  %55 = zext i32 %div7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %div7.i, label %cond.false50 [
    i32 4, label %if.end26.cond.end55_crit_edge
    i32 3, label %cond.end55.fold.split
  ]

if.end26.cond.end55_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end55

cond.false50:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div7.i)
  %cmp51 = icmp eq i32 %div7.i, 2
  %phi.bo = select i1 %cmp51, i32 -1560248190, i32 -1560248192
  br label %cond.end55

cond.end55.fold.split:                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end55

cond.end55:                                       ; preds = %cond.end55.fold.split, %cond.false50, %if.end26.cond.end55_crit_edge
  %cond56 = phi i32 [ -1560248186, %if.end26.cond.end55_crit_edge ], [ %phi.bo, %cond.false50 ], [ -1560248188, %cond.end55.fold.split ]
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1280, i32 noundef %cond56, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1280, i32 noundef -1275067630, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1280, i32 noundef -721420270, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 1280, i32 noundef -1509949436, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc358743_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb2
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 8207, %sw.bb2 ], [ 4106, %entry.return.sink.split_crit_edge ]
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %3 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %code1, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_get_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef 1) #10
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbus_fmt_code = getelementptr i8, ptr %sd, i32 848
  %2 = ptrtoint ptr %mbus_fmt_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_fmt_code, align 4
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code, align 4
  %5 = getelementptr i8, ptr %sd, i32 717
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %format2, align 4
  %height = getelementptr i8, ptr %sd, i32 721
  %9 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %height, align 1
  %height7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height7, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  %13 = lshr i32 %call.i, 5
  %14 = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %15 = icmp ult i32 %14, 6
  br i1 %15, label %switch.lookup, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.tc358743_get_fmt, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %code2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code2, align 4
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31370, i32 noundef 1) #10
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %tc358743_get_fmt.exit

if.end.i:                                         ; preds = %entry
  %mbus_fmt_code.i = getelementptr i8, ptr %sd, i32 848
  %4 = ptrtoint ptr %mbus_fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbus_fmt_code.i, align 4
  %format2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  %7 = getelementptr i8, ptr %sd, i32 717
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = ptrtoint ptr %format2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format2.i, align 4
  %height.i = getelementptr i8, ptr %sd, i32 721
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %height.i, align 1
  %height7.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height7.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %15 = lshr i32 %call.i.i, 5
  %16 = and i32 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %17 = icmp ult i32 %16, 6
  br i1 %17, label %switch.lookup, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tc358743_get_fmt.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %code2, align 4
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.tc358743_set_fmt, i32 0, i32 %16
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.end.i.if.end_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.if.end_crit_edge ]
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %colorspace.i, align 4
  %21 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %code2, align 4
  %22 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 4106, label %if.end.sw.epilog_crit_edge
    i32 8207, label %if.end.sw.epilog_crit_edge27
  ]

if.end.sw.epilog_crit_edge27:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge27
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  %25 = ptrtoint ptr %mbus_fmt_code.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %1, ptr %mbus_fmt_code.i, align 4
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp sgt i32 %26, 2
  br i1 %cmp.i, label %do.end.i, label %if.end7.enable_stream.exit_crit_edge

if.end7.enable_stream.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_stream.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name.i, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.265) #13
  br label %enable_stream.exit

enable_stream.exit:                               ; preds = %do.end.i, %if.end7.enable_stream.exit_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31361, i32 noundef 208, i32 noundef 1) #10
  %confctl_mutex.i = getelementptr i8, ptr %sd, i32 416
  tail call void @mutex_lock_nested(ptr noundef %confctl_mutex.i, i32 noundef 0) #10
  %call.i.i24 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef 2) #10
  %and.i.i = and i32 %call.i.i24, 65532
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 4, i32 noundef %and.i.i, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %confctl_mutex.i) #10
  tail call fastcc void @tc358743_set_pll(ptr noundef %sd)
  tail call fastcc void @tc358743_set_csi(ptr noundef %sd)
  tail call fastcc void @tc358743_set_csi_color_space(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %enable_stream.exit, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tc358743_get_fmt.exit
  %retval.0 = phi i32 [ 0, %enable_stream.exit ], [ -22, %tc358743_get_fmt.exit ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_g_edid(ptr noundef %sd, ptr nocapture noundef %edid) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %1 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %3 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %edid_blocks_written = getelementptr i8, ptr %sd, i32 712
  %7 = ptrtoint ptr %edid_blocks_written to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %edid_blocks_written, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %blocks, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %edid_blocks_written6 = getelementptr i8, ptr %sd, i32 712
  %10 = ptrtoint ptr %edid_blocks_written6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %edid_blocks_written6, align 4
  %conv7 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp8 = icmp eq i8 %11, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv7)
  %cmp15.not = icmp ult i32 %4, %conv7
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %blocks17 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %12 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18 = icmp eq i32 %13, 0
  br i1 %cmp18, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %add = add i32 %13, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv7)
  %cmp26 = icmp ugt i32 %add, %conv7
  br i1 %cmp26, label %if.then28, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %conv7, %4
  %14 = ptrtoint ptr %blocks17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %blocks17, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end21.if.end33_crit_edge
  %.tr = trunc i32 %4 to i16
  %15 = shl i16 %.tr, 7
  %conv36 = add i16 %15, -29696
  %edid37 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %16 = ptrtoint ptr %edid37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edid37, align 4
  %18 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks17, align 4
  %i2c_client.i = getelementptr i8, ptr %sd, i32 412
  %20 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %23 = lshr i16 %conv36, 8
  %conv1.i = trunc i16 %23 to i8
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %conv36 to i8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv3.i, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %26 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %addr5.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr5.i, align 2
  %30 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i, align 2
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %26, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i, ptr %buf6.i, align 4
  %arrayinit.element7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %34 = load i16, ptr %addr5.i, align 2
  %35 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayinit.element7.i, align 4
  %flags10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %36 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags10.i, align 2
  %len11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %.tr59 = trunc i32 %19 to i16
  %conv12.i = shl i16 %.tr59, 7
  %37 = ptrtoint ptr %len11.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv12.i, ptr %len11.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %38 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %17, ptr %buf13.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15.i)
  %cmp.not.i = icmp eq i32 %call15.i, 2
  br i1 %cmp.not.i, label %if.end33.i2c_rd.exit_crit_edge, label %do.end.i

if.end33.i2c_rd.exit_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_rd.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %conv36 to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %41 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr5.i, align 2
  %conv20.i = zext i16 %42 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name.i, ptr noundef nonnull @.str.171, i32 noundef %conv.i, i32 noundef %conv20.i) #13
  br label %i2c_rd.exit

i2c_rd.exit:                                      ; preds = %do.end.i, %if.end33.i2c_rd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %i2c_rd.exit, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %i2c_rd.exit ], [ -22, %entry.cleanup_crit_edge ], [ -61, %if.end5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_s_edid(ptr noundef %sd, ptr nocapture noundef %edid) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [130 x i8], align 1
  %pa = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %0 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blocks, align 4
  %conv = shl i32 %1, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pa) #10
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %3 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %edid, align 4
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %5 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_block, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef %name, ptr noundef nonnull @.str.319, i32 noundef %4, i32 noundef %6, i32 noundef %1) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %7 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %if.end12, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %start_block13 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %10 = ptrtoint ptr %start_block13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_block13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.not = icmp eq i32 %11, 0
  br i1 %cmp14.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp19 = icmp ugt i32 %13, 8
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %blocks, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %edid24 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %15 = ptrtoint ptr %edid24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edid24, align 4
  %mul26 = shl nuw nsw i32 %13, 7
  %call27 = tail call zeroext i16 @cec_get_edid_phys_addr(ptr noundef %16, i32 noundef %mul26, ptr noundef null) #10
  %17 = ptrtoint ptr %pa to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call27, ptr %pa, align 2
  %call28 = call i32 @v4l2_phys_addr_validate(i16 noundef zeroext %call27, ptr noundef nonnull %pa, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %cec_adap = getelementptr i8, ptr %sd, i32 860
  %18 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cec_adap, align 4
  call void @cec_s_phys_addr(ptr noundef %19, i16 noundef zeroext -1, i1 noundef zeroext false) #10
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp sgt i32 %20, 1
  br i1 %cmp.i, label %do.end.i, label %if.end30.tc358743_disable_edid.exit_crit_edge

if.end30.tc358743_disable_edid.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc358743_disable_edid.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name.i, ptr noundef nonnull @.str.303) #13
  br label %tc358743_disable_edid.exit

tc358743_disable_edid.exit:                       ; preds = %do.end.i, %if.end30.tc358743_disable_edid.exit_crit_edge
  %delayed_work_enable_hotplug.i = getelementptr i8, ptr %sd, i32 520
  %call5.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hotplug.i) #10
  %call.i.i = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31420, i32 noundef 1) #10
  %and.i.i = and i32 %call.i.i, 254
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31420, i32 noundef %and.i.i, i32 noundef 1) #10
  %conv31 = and i32 %conv, 65408
  %conv.i = and i32 %conv, 128
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31286, i32 noundef %conv.i, i32 noundef 1) #10
  %21 = lshr i32 %conv, 8
  %conv.i86 = and i32 %21, 255
  call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext -31285, i32 noundef %conv.i86, i32 noundef 1) #10
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp36 = icmp eq i32 %23, 0
  br i1 %cmp36, label %if.then38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tc358743_disable_edid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31)
  %cmp4188.not = icmp eq i32 %conv31, 0
  br i1 %cmp4188.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i2c_client.i = getelementptr i8, ptr %sd, i32 412
  %24 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %25 = getelementptr inbounds i8, ptr %data.i, i32 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %arrayidx11.i = getelementptr inbounds [130 x i8], ptr %data.i, i32 0, i32 1
  %name25.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body

if.then38:                                        ; preds = %tc358743_disable_edid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %edid_blocks_written = getelementptr i8, ptr %sd, i32 712
  %26 = ptrtoint ptr %edid_blocks_written to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %edid_blocks_written, align 4
  br label %cleanup

for.body:                                         ; preds = %i2c_wr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %add45, %i2c_wr.exit.for.body_crit_edge ]
  %27 = trunc i32 %i.089 to i16
  %conv43 = add i16 %27, -29696
  %28 = ptrtoint ptr %edid24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edid24, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %i.089
  %30 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %data.i) #10
  %33 = call ptr @memset(ptr %25, i32 255, i32 128)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i, align 4
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i, ptr %buf.i, align 4
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 130, ptr %24, align 4
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i, align 2
  %conv7.i = zext i16 %conv43 to i32
  %40 = lshr i16 %conv43, 8
  %conv8.i = trunc i16 %40 to i8
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv8.i, ptr %data.i, align 1
  %conv10.i = trunc i16 %conv43 to i8
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %43 = call ptr @memcpy(ptr %25, ptr %add.ptr, i32 128)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 8
  %call17.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 1
  br i1 %cmp18.not.i, label %if.end31.i, label %do.end23.i

do.end23.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i, align 2
  %conv29.i = zext i16 %47 to i32
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %name25.i, ptr noundef nonnull @.str.231, i32 noundef %conv7.i, i32 noundef %conv29.i) #13
  br label %i2c_wr.exit

if.end31.i:                                       ; preds = %for.body
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp32.i = icmp slt i32 %48, 3
  br i1 %cmp32.i, label %if.end31.i.i2c_wr.exit_crit_edge, label %if.end35.i

if.end31.i.i2c_wr.exit_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_wr.exit

if.end35.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef %name25.i, i32 noundef 128, i32 noundef %conv7.i) #13
  br label %i2c_wr.exit

i2c_wr.exit:                                      ; preds = %if.end35.i, %if.end31.i.i2c_wr.exit_crit_edge, %do.end23.i
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %data.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  %add45 = add nuw nsw i32 %i.089, 128
  %cmp41 = icmp ult i32 %add45, %conv31
  br i1 %cmp41, label %i2c_wr.exit.for.body_crit_edge, label %i2c_wr.exit.for.end_crit_edge

i2c_wr.exit.for.end_crit_edge:                    ; preds = %i2c_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

i2c_wr.exit.for.body_crit_edge:                   ; preds = %i2c_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %i2c_wr.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %49 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blocks, align 4
  %conv47 = trunc i32 %50 to i8
  %edid_blocks_written48 = getelementptr i8, ptr %sd, i32 712
  %51 = ptrtoint ptr %edid_blocks_written48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv47, ptr %edid_blocks_written48, align 4
  %52 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cec_adap, align 4
  %54 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pa, align 2
  call void @cec_s_phys_addr(ptr noundef %53, i16 noundef zeroext %55, i1 noundef zeroext false) #10
  %call.i.i87 = call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext -31456, i32 noundef 1) #10
  %56 = and i32 %call.i.i87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not = icmp eq i32 %56, 0
  br i1 %tobool.i.not, label %for.end.cleanup_crit_edge, label %if.then51

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tc358743_enable_edid(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %for.end.cleanup_crit_edge, %if.then38, %if.end23.cleanup_crit_edge, %if.then21, %if.end12.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then21 ], [ 0, %if.then38 ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pa) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc358743_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef %cap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = call ptr @memcpy(ptr %cap, ptr @tc358743_timings_cap, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @tc358743_timings_cap, ptr noundef null, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc358743_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %cfg, align 4
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %flags, align 4
  %csi_lanes_in_use = getelementptr i8, ptr %sd, i32 852
  %2 = ptrtoint ptr %csi_lanes_in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %csi_lanes_in_use, align 4
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tc358743_get_mbus_config, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc358743_set_pll(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -88
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 32, i32 noundef 2) #10
  %conv.i = trunc i32 %call.i to i16
  %call.i77 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 34, i32 noundef 2) #10
  %pll_prd = getelementptr i8, ptr %sd, i32 -76
  %0 = ptrtoint ptr %pll_prd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pll_prd, align 4
  %conv = zext i16 %1 to i32
  %sub = shl i16 %1, 12
  %shl = add i16 %sub, -4096
  %pll_fbd = getelementptr i8, ptr %sd, i32 -74
  %2 = ptrtoint ptr %pll_fbd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pll_fbd, align 2
  %conv4 = zext i16 %3 to i32
  %sub5 = add i16 %3, 511
  %and6 = and i16 %sub5, 511
  %or = or i16 %and6, %shl
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %div = udiv i32 %5, %conv
  %mul = mul i32 %div, %conv4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name, ptr noundef nonnull @.str.314) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %conv.i)
  %cmp19.not = icmp ne i16 %or, %conv.i
  %7 = and i32 %call.i77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp19.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %if.then25, label %do.end16.if.end60_crit_edge

do.end16.if.end60_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then25:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %mul)
  %cmp26 = icmp ugt i32 %mul, 500000000
  br i1 %cmp26, label %if.then25.do.body40_crit_edge, label %if.else

if.then25.do.body40_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %mul)
  %cmp29 = icmp ugt i32 %mul, 250000000
  br i1 %cmp29, label %if.else.do.body40_crit_edge, label %if.else32

if.else.do.body40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %mul)
  %cmp33 = icmp ugt i32 %mul, 125000000
  %phi.cast = select i1 %cmp33, i32 2051, i32 3075
  br label %do.body40

do.body40:                                        ; preds = %if.else32, %if.else.do.body40_crit_edge, %if.then25.do.body40_crit_edge
  %pll_frs.0 = phi i32 [ 3, %if.then25.do.body40_crit_edge ], [ 1027, %if.else.do.body40_crit_edge ], [ %phi.cast, %if.else32 ]
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41 = icmp sgt i32 %8, 0
  br i1 %cmp41, label %do.end46, label %do.body40.do.end53_crit_edge

do.body40.do.end53_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %name48 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316, ptr noundef %name48, ptr noundef nonnull @.str.314) #13
  br label %do.end53

do.end53:                                         ; preds = %do.end46, %do.body40.do.end53_crit_edge
  %call.i.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %and.i.i = and i32 %call.i.i, 65534
  %or.i.i = or i32 %and.i.i, 1
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %or.i.i, i32 noundef 2) #10
  %conv.i79 = zext i16 %or to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 32, i32 noundef %conv.i79, i32 noundef 2) #10
  %call.i80 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 34, i32 noundef 2) #10
  %and.i = and i32 %call.i80, 62460
  %or.i = or i32 %and.i, %pll_frs.0
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 34, i32 noundef %or.i, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #10
  %call.i81 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 34, i32 noundef 2) #10
  %and.i82 = and i32 %call.i81, 65519
  %or.i83 = or i32 %and.i82, 16
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 34, i32 noundef %or.i83, i32 noundef 2) #10
  %call.i.i84 = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef 2) #10
  %and.i.i85 = and i32 %call.i.i84, 65534
  tail call fastcc void @i2c_wrreg(ptr noundef %sd, i16 noundef zeroext 2, i32 noundef %and.i.i85, i32 noundef 2) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end53, %do.end16.if.end60_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_phys_addr_validate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sd1 = getelementptr inbounds %struct.tc358743_state, ptr %1, i32 0, i32 2
  %cond = select i1 %enable, i32 3, i32 0
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1728, i32 noundef %cond, i32 noundef 4) #10
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1740, i32 noundef 3, i32 noundef 4) #10
  %conv = zext i1 %enable to i32
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1536, i32 noundef %conv, i32 noundef 4) #10
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1548, i32 noundef 1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_cec_adap_monitor_all_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sd1 = getelementptr inbounds %struct.tc358743_state, ptr %1, i32 0, i32 2
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd1, i16 noundef zeroext 1556, i32 noundef 4) #10
  %and = and i32 %call.i, -2
  %masksel = zext i1 %enable to i32
  %reg.0 = or i32 %and, %masksel
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1556, i32 noundef %reg.0, i32 noundef 4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sd1 = getelementptr inbounds %struct.tc358743_state, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %log_addr)
  %cmp.not = icmp eq i8 %log_addr, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %log_addr to i32
  %call.i = tail call fastcc i32 @i2c_rdreg(ptr noundef %sd1, i16 noundef zeroext 1540, i32 noundef 4) #10
  %shl = shl nuw i32 1, %conv
  %or = or i32 %call.i, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %la.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1540, i32 noundef %la.0, i32 noundef 4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358743_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sd1 = getelementptr inbounds %struct.tc358743_state, ptr %1, i32 0, i32 2
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg1.i, align 8
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp.i.not = icmp eq i8 %4, 15
  %cond = select i1 %cmp.i.not, i32 16, i32 0
  %sub = add i32 %signal_free_time, -1
  %or = or i32 %cond, %sub
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1576, i32 noundef %or, i32 noundef 4) #10
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.not = icmp eq i32 %6, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %7 = phi i32 [ %12, %for.body.for.body_crit_edge ], [ %6, %entry.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.020 to i16
  %8 = shl i16 %i.0.tr, 2
  %conv = add i16 %8, 1652
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.020
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %10 to i32
  %sub5 = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.020, i32 %sub5)
  %cmp6 = icmp eq i32 %i.020, %sub5
  %cond8 = select i1 %cmp6, i32 256, i32 0
  %or9 = or i32 %cond8, %conv3
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext %conv, i32 noundef %or9, i32 noundef 4) #10
  %inc = add nuw i32 %i.020, 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @i2c_wrreg(ptr noundef %sd1, i16 noundef zeroext 1568, i32 noundef 1, i32 noundef 4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 314)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 314)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !397, !399, !400, !401, !403, !404, !405, !406, !408, !409, !410, !412, !413, !414, !415, !417, !418, !419, !420, !422, !424, !425, !426, !427, !428, !429, !431, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !450, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !487, !489, !490, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !508, !509, !510, !511, !513, !514, !515, !517, !519, !520, !521, !522, !524, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !539, !541, !543, !545, !547, !549, !550, !551, !553, !555, !556, !557, !558, !559, !560, !562, !564, !565, !566, !567, !569, !570, !572, !573, !574, !575, !577, !578, !579, !581, !582, !583, !585, !586, !587, !588, !590}
!llvm.module.flags = !{!592, !593, !594, !595, !596, !597, !598, !599}
!llvm.ident = !{!600}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tc358743.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tc358743.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/tc358743.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tc358743.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_author296, !10, !"__UNIQUE_ID_author296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/tc358743.c", i32 45, i32 1}
!11 = !{ptr @__UNIQUE_ID_author297, !12, !"__UNIQUE_ID_author297", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/tc358743.c", i32 46, i32 1}
!13 = !{ptr @__UNIQUE_ID_file298, !14, !"__UNIQUE_ID_file298", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/tc358743.c", i32 47, i32 1}
!15 = !{ptr @__UNIQUE_ID_license299, !14, !"__UNIQUE_ID_license299", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_tc358743__300_2233_tc358743_driver_init6, !17, !"__initcall__kmod_tc358743__300_2233_tc358743_driver_init6", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/tc358743.c", i32 2233, i32 1}
!18 = !{ptr @__exitcall_tc358743_driver_exit, !17, !"__exitcall_tc358743_driver_exit", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/tc358743.c", i32 39, i32 12}
!21 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tc358743.c", i32 2225, i32 11}
!24 = !{ptr @tc358743_driver, !25, !"tc358743_driver", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/tc358743.c", i32 2223, i32 26}
!26 = !{ptr @tc358743_probe.default_timing, !27, !"default_timing", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/tc358743.c", i32 2035, i32 32}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/tc358743.c", i32 2045, i32 2}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tc358743_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @tc358743_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tc358743.c", i32 2062, i32 4}
!36 = !{ptr @tc358743_probe._entry.4, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tc358743_probe._entry_ptr.6, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/tc358743.c", i32 2073, i32 3}
!40 = !{ptr @tc358743_probe._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tc358743_probe._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tc358743_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/tc358743.c", i32 2079, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tc358743_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/tc358743.c", i32 2115, i32 2}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tc358743_probe.__key.12, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/tc358743.c", i32 2117, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tc358743_probe.__key.14, !49, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tc358743_probe.__key.16, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/tc358743.c", i32 2148, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tc358743_probe.__key.18, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/tc358743.c", i32 2150, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/tc358743.c", i32 2158, i32 3}
!61 = !{ptr @tc358743_probe._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tc358743_probe._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/tc358743.c", i32 2171, i32 2}
!65 = !{ptr @tc358743_probe._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tc358743_probe._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/tc358743.c", i32 1907, i32 29}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/tc358743.c", i32 1910, i32 4}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tc358743_probe_of._entry, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @tc358743_probe_of._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/tc358743.c", i32 1917, i32 3}
!78 = !{ptr @tc358743_probe_of._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tc358743_probe_of._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/tc358743.c", i32 1923, i32 3}
!82 = !{ptr @tc358743_probe_of._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tc358743_probe_of._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/tc358743.c", i32 1930, i32 3}
!86 = !{ptr @tc358743_probe_of._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tc358743_probe_of._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/tc358743.c", i32 1936, i32 3}
!90 = !{ptr @tc358743_probe_of._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tc358743_probe_of._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/tc358743.c", i32 1945, i32 3}
!94 = !{ptr @tc358743_probe_of._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tc358743_probe_of._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/tc358743.c", i32 1965, i32 3}
!98 = !{ptr @tc358743_probe_of._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tc358743_probe_of._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/tc358743.c", i32 1976, i32 3}
!102 = !{ptr @tc358743_probe_of._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tc358743_probe_of._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/tc358743.c", i32 1991, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @tc358743_probe_of._entry.52, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @tc358743_probe_of._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/tc358743.c", i32 2004, i32 51}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/tc358743.c", i32 2007, i32 3}
!113 = !{ptr @tc358743_probe_of._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tc358743_probe_of._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @tc358743_ops, !116, !"tc358743_ops", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/tc358743.c", i32 1856, i32 37}
!117 = !{ptr @tc358743_core_ops, !118, !"tc358743_core_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/tc358743.c", i32 1826, i32 42}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/tc358743.c", i32 1248, i32 3}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/tc358743.c", i32 1248, i32 10}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/tc358743.c", i32 1248, i32 23}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/tc358743.c", i32 1248, i32 32}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/tc358743.c", i32 1248, i32 45}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/tc358743.c", i32 1249, i32 3}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/tc358743.c", i32 1249, i32 16}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/tc358743.c", i32 1249, i32 25}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/tc358743.c", i32 1249, i32 38}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/tc358743.c", i32 1249, i32 47}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/tc358743.c", i32 1250, i32 3}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/tc358743.c", i32 1250, i32 13}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/tc358743.c", i32 1250, i32 23}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/tc358743.c", i32 1250, i32 33}
!147 = !{ptr @tc358743_log_status.input_color_space, !148, !"input_color_space", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/tc358743.c", i32 1247, i32 28}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/tc358743.c", i32 1252, i32 2}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tc358743_log_status._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tc358743_log_status._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/tc358743.c", i32 1253, i32 2}
!156 = !{ptr @tc358743_log_status._entry.76, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @tc358743_log_status._entry_ptr.78, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/tc358743.c", i32 1255, i32 2}
!160 = !{ptr @tc358743_log_status._entry.79, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tc358743_log_status._entry_ptr.81, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/tc358743.c", i32 1257, i32 2}
!164 = !{ptr @tc358743_log_status._entry.82, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @tc358743_log_status._entry_ptr.84, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/tc358743.c", i32 1262, i32 2}
!168 = !{ptr @tc358743_log_status._entry.85, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @tc358743_log_status._entry_ptr.87, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/tc358743.c", i32 1263, i32 2}
!174 = !{ptr @tc358743_log_status._entry.90, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @tc358743_log_status._entry_ptr.92, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/tc358743.c", i32 1265, i32 2}
!180 = !{ptr @tc358743_log_status._entry.95, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tc358743_log_status._entry_ptr.97, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/tc358743.c", i32 1268, i32 2}
!184 = !{ptr @tc358743_log_status._entry.98, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tc358743_log_status._entry_ptr.100, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/tc358743.c", i32 1271, i32 2}
!188 = !{ptr @tc358743_log_status._entry.101, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tc358743_log_status._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/tc358743.c", i32 1273, i32 2}
!192 = !{ptr @tc358743_log_status._entry.104, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tc358743_log_status._entry_ptr.106, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/tc358743.c", i32 1274, i32 2}
!196 = !{ptr @tc358743_log_status._entry.107, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @tc358743_log_status._entry_ptr.109, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/tc358743.c", i32 1276, i32 2}
!200 = !{ptr @tc358743_log_status._entry.110, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @tc358743_log_status._entry_ptr.112, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/tc358743.c", i32 1278, i32 2}
!204 = !{ptr @tc358743_log_status._entry.113, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @tc358743_log_status._entry_ptr.115, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/tc358743.c", i32 1280, i32 2}
!208 = !{ptr @tc358743_log_status._entry.116, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @tc358743_log_status._entry_ptr.118, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/tc358743.c", i32 1284, i32 3}
!212 = !{ptr @tc358743_log_status._entry.119, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tc358743_log_status._entry_ptr.121, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/tc358743.c", i32 1286, i32 35}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/i2c/tc358743.c", i32 1289, i32 34}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/tc358743.c", i32 1292, i32 2}
!220 = !{ptr @tc358743_log_status._entry.124, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tc358743_log_status._entry_ptr.126, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/i2c/tc358743.c", i32 1293, i32 2}
!224 = !{ptr @tc358743_log_status._entry.127, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @tc358743_log_status._entry_ptr.129, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.131, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/tc358743.c", i32 1295, i32 2}
!228 = !{ptr @tc358743_log_status._entry.130, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @tc358743_log_status._entry_ptr.132, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.134, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/tc358743.c", i32 1297, i32 2}
!232 = !{ptr @tc358743_log_status._entry.133, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @tc358743_log_status._entry_ptr.135, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.137, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/i2c/tc358743.c", i32 1300, i32 2}
!236 = !{ptr @tc358743_log_status._entry.136, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @tc358743_log_status._entry_ptr.138, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.140, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/i2c/tc358743.c", i32 1303, i32 2}
!240 = !{ptr @tc358743_log_status._entry.139, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @tc358743_log_status._entry_ptr.141, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.143, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/i2c/tc358743.c", i32 1306, i32 2}
!244 = !{ptr @tc358743_log_status._entry.142, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @tc358743_log_status._entry_ptr.144, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.146, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/i2c/tc358743.c", i32 1309, i32 2}
!248 = !{ptr @tc358743_log_status._entry.145, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @tc358743_log_status._entry_ptr.147, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.148, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.149, !247, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.150, !247, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.152, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/tc358743.c", i32 1315, i32 2}
!255 = !{ptr @tc358743_log_status._entry.151, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @tc358743_log_status._entry_ptr.153, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.154, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.155, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.157, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/tc358743.c", i32 1316, i32 2}
!261 = !{ptr @tc358743_log_status._entry.156, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @tc358743_log_status._entry_ptr.158, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.160, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/tc358743.c", i32 1318, i32 2}
!265 = !{ptr @tc358743_log_status._entry.159, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @tc358743_log_status._entry_ptr.161, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.162, !264, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.163, !264, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.165, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/tc358743.c", i32 1323, i32 2}
!271 = !{ptr @tc358743_log_status._entry.164, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @tc358743_log_status._entry_ptr.166, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.168, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/tc358743.c", i32 1325, i32 2}
!275 = !{ptr @tc358743_log_status._entry.167, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @tc358743_log_status._entry_ptr.169, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.170, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/i2c/tc358743.c", i32 136, i32 3}
!279 = !{ptr @.str.171, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @i2c_rd._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @i2c_rd._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.172, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/i2c/tc358743.c", i32 313, i32 3}
!284 = !{ptr @.str.173, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @tc358743_get_detected_timings._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @tc358743_get_detected_timings._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.175, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/i2c/tc358743.c", i32 317, i32 3}
!289 = !{ptr @tc358743_get_detected_timings._entry.174, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @tc358743_get_detected_timings._entry_ptr.176, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.177, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/i2c/tc358743.c", i32 441, i32 3}
!293 = !{ptr @.str.178, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @print_avi_infoframe._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @print_avi_infoframe._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.180, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/i2c/tc358743.c", i32 448, i32 3}
!298 = !{ptr @print_avi_infoframe._entry.179, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @print_avi_infoframe._entry_ptr.181, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.182, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/i2c/tc358743.c", i32 452, i32 21}
!302 = !{ptr @.str.183, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/i2c/tc358743.c", i32 1336, i32 2}
!304 = !{ptr @.str.184, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @tc358743_print_register_map._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @tc358743_print_register_map._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.186, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/tc358743.c", i32 1337, i32 2}
!309 = !{ptr @tc358743_print_register_map._entry.185, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @tc358743_print_register_map._entry_ptr.187, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.189, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/i2c/tc358743.c", i32 1338, i32 2}
!313 = !{ptr @tc358743_print_register_map._entry.188, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @tc358743_print_register_map._entry_ptr.190, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.192, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/i2c/tc358743.c", i32 1339, i32 2}
!317 = !{ptr @tc358743_print_register_map._entry.191, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @tc358743_print_register_map._entry_ptr.193, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.195, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/i2c/tc358743.c", i32 1340, i32 2}
!321 = !{ptr @tc358743_print_register_map._entry.194, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @tc358743_print_register_map._entry_ptr.196, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.198, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/i2c/tc358743.c", i32 1341, i32 2}
!325 = !{ptr @tc358743_print_register_map._entry.197, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @tc358743_print_register_map._entry_ptr.199, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.201, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/i2c/tc358743.c", i32 1342, i32 2}
!329 = !{ptr @tc358743_print_register_map._entry.200, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @tc358743_print_register_map._entry_ptr.202, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.204, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/i2c/tc358743.c", i32 1343, i32 2}
!333 = !{ptr @tc358743_print_register_map._entry.203, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @tc358743_print_register_map._entry_ptr.205, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.207, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/i2c/tc358743.c", i32 1344, i32 2}
!337 = !{ptr @tc358743_print_register_map._entry.206, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @tc358743_print_register_map._entry_ptr.208, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.210, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/i2c/tc358743.c", i32 1345, i32 2}
!341 = !{ptr @tc358743_print_register_map._entry.209, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @tc358743_print_register_map._entry_ptr.211, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.213, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/i2c/tc358743.c", i32 1346, i32 2}
!345 = !{ptr @tc358743_print_register_map._entry.212, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @tc358743_print_register_map._entry_ptr.214, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.216, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/i2c/tc358743.c", i32 1347, i32 2}
!349 = !{ptr @tc358743_print_register_map._entry.215, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @tc358743_print_register_map._entry_ptr.217, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.219, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/i2c/tc358743.c", i32 1348, i32 2}
!353 = !{ptr @tc358743_print_register_map._entry.218, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @tc358743_print_register_map._entry_ptr.220, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.222, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/i2c/tc358743.c", i32 1349, i32 2}
!357 = !{ptr @tc358743_print_register_map._entry.221, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @tc358743_print_register_map._entry_ptr.223, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.225, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/i2c/tc358743.c", i32 1350, i32 2}
!361 = !{ptr @tc358743_print_register_map._entry.224, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @tc358743_print_register_map._entry_ptr.226, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.228, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/i2c/tc358743.c", i32 1351, i32 2}
!365 = !{ptr @tc358743_print_register_map._entry.227, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @tc358743_print_register_map._entry_ptr.229, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.230, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/i2c/tc358743.c", i32 151, i32 3}
!369 = !{ptr @.str.231, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @i2c_wr._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @i2c_wr._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.233, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/i2c/tc358743.c", i32 168, i32 3}
!374 = !{ptr @i2c_wr._entry.232, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @i2c_wr._entry_ptr.234, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.236, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/i2c/tc358743.c", i32 178, i32 3}
!378 = !{ptr @i2c_wr._entry.235, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @i2c_wr._entry_ptr.237, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.239, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/i2c/tc358743.c", i32 182, i32 3}
!382 = !{ptr @i2c_wr._entry.238, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @i2c_wr._entry_ptr.240, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.242, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/i2c/tc358743.c", i32 186, i32 3}
!386 = !{ptr @i2c_wr._entry.241, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @i2c_wr._entry_ptr.243, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.245, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/i2c/tc358743.c", i32 190, i32 3}
!390 = !{ptr @i2c_wr._entry.244, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @i2c_wr._entry_ptr.246, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.247, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/i2c/tc358743.c", i32 1414, i32 2}
!394 = !{ptr @.str.248, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @tc358743_isr._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @tc358743_isr._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.250, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/i2c/tc358743.c", i32 1455, i32 3}
!399 = !{ptr @tc358743_isr._entry.249, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @tc358743_isr._entry_ptr.251, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.252, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/i2c/tc358743.c", i32 1074, i32 2}
!403 = !{ptr @.str.253, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @tc358743_hdmi_misc_int_handler._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @tc358743_hdmi_misc_int_handler._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.255, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/i2c/tc358743.c", i32 1093, i32 3}
!408 = !{ptr @tc358743_hdmi_misc_int_handler._entry.254, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @tc358743_hdmi_misc_int_handler._entry_ptr.256, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.257, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/i2c/tc358743.c", i32 496, i32 2}
!412 = !{ptr @.str.258, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @tc358743_reset_phy._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @tc358743_reset_phy._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.259, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/i2c/tc358743.c", i32 995, i32 3}
!417 = !{ptr @.str.260, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @tc358743_format_change._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @tc358743_format_change._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.261, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/i2c/tc358743.c", i32 1003, i32 6}
!422 = !{ptr @.str.262, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/i2c/tc358743.c", i32 520, i32 2}
!424 = !{ptr @.str.263, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @enable_stream._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @enable_stream._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.264, !423, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.265, !423, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.266, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/i2c/tc358743.c", i32 1106, i32 2}
!431 = !{ptr @.str.267, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @tc358743_hdmi_cbit_int_handler._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @tc358743_hdmi_cbit_int_handler._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.269, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/i2c/tc358743.c", i32 1110, i32 3}
!436 = !{ptr @tc358743_hdmi_cbit_int_handler._entry.268, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.270, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.272, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/i2c/tc358743.c", i32 1121, i32 3}
!440 = !{ptr @tc358743_hdmi_cbit_int_handler._entry.271, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.273, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.275, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/i2c/tc358743.c", i32 1131, i32 3}
!444 = !{ptr @tc358743_hdmi_cbit_int_handler._entry.274, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @tc358743_hdmi_cbit_int_handler._entry_ptr.276, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @get_audio_sampling_rate.code_to_rate, !447, !"code_to_rate", i1 false, i1 false}
!447 = !{!"../drivers/media/i2c/tc358743.c", i32 281, i32 19}
!448 = !{ptr @.str.277, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/i2c/tc358743.c", i32 1144, i32 2}
!450 = !{ptr @.str.278, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @tc358743_hdmi_clk_int_handler._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @tc358743_hdmi_clk_int_handler._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.280, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/i2c/tc358743.c", i32 1148, i32 3}
!455 = !{ptr @tc358743_hdmi_clk_int_handler._entry.279, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @tc358743_hdmi_clk_int_handler._entry_ptr.281, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.283, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/i2c/tc358743.c", i32 1166, i32 3}
!459 = !{ptr @tc358743_hdmi_clk_int_handler._entry.282, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @tc358743_hdmi_clk_int_handler._entry_ptr.284, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.285, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/i2c/tc358743.c", i32 1179, i32 2}
!463 = !{ptr @.str.286, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @tc358743_hdmi_sys_int_handler._entry, !462, !"_entry", i1 false, i1 false}
!465 = !{ptr @tc358743_hdmi_sys_int_handler._entry_ptr, !462, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.288, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/i2c/tc358743.c", i32 1184, i32 3}
!468 = !{ptr @tc358743_hdmi_sys_int_handler._entry.287, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @tc358743_hdmi_sys_int_handler._entry_ptr.289, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.291, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/i2c/tc358743.c", i32 1203, i32 3}
!472 = !{ptr @tc358743_hdmi_sys_int_handler._entry.290, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @tc358743_hdmi_sys_int_handler._entry_ptr.292, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.294, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/i2c/tc358743.c", i32 1220, i32 3}
!476 = !{ptr @tc358743_hdmi_sys_int_handler._entry.293, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @tc358743_hdmi_sys_int_handler._entry_ptr.295, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.297, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/i2c/tc358743.c", i32 1232, i32 3}
!480 = !{ptr @tc358743_hdmi_sys_int_handler._entry.296, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @tc358743_hdmi_sys_int_handler._entry_ptr.298, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.299, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/i2c/tc358743.c", i32 408, i32 3}
!484 = !{ptr @.str.300, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @tc358743_enable_edid._entry, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @tc358743_enable_edid._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @tc358743_enable_edid._entry.301, !488, !"_entry", i1 false, i1 false}
!488 = !{!"../drivers/media/i2c/tc358743.c", i32 413, i32 2}
!489 = !{ptr @tc358743_enable_edid._entry_ptr.302, !488, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.303, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/media/i2c/tc358743.c", i32 394, i32 2}
!492 = !{ptr @tc358743_disable_edid._entry, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @tc358743_disable_edid._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.304, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/media/i2c/tc358743.c", i32 1053, i32 2}
!496 = !{ptr @.str.305, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @tc358743_hdmi_audio_int_handler._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @tc358743_hdmi_audio_int_handler._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.306, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/media/i2c/tc358743.c", i32 1061, i32 2}
!501 = !{ptr @.str.307, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @tc358743_csi_err_int_handler._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @tc358743_csi_err_int_handler._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @tc358743_video_ops, !505, !"tc358743_video_ops", i1 false, i1 false}
!505 = !{!"../drivers/media/i2c/tc358743.c", i32 1837, i32 43}
!506 = !{ptr @.str.308, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/media/i2c/tc358743.c", i32 1517, i32 2}
!508 = !{ptr @.str.309, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @tc358743_g_input_status._entry, !507, !"_entry", i1 false, i1 false}
!510 = !{ptr @tc358743_g_input_status._entry_ptr, !507, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.310, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/i2c/tc358743.c", i32 685, i32 2}
!513 = !{ptr @tc358743_set_csi._entry, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @tc358743_set_csi._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.311, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/i2c/tc358743.c", i32 1584, i32 35}
!517 = !{ptr @.str.312, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/i2c/tc358743.c", i32 1589, i32 3}
!519 = !{ptr @.str.313, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @tc358743_query_dv_timings._entry, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @tc358743_query_dv_timings._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @tc358743_timings_cap, !523, !"tc358743_timings_cap", i1 false, i1 false}
!523 = !{!"../drivers/media/i2c/tc358743.c", i32 57, i32 41}
!524 = !{ptr @tc358743_pad_ops, !525, !"tc358743_pad_ops", i1 false, i1 false}
!525 = !{!"../drivers/media/i2c/tc358743.c", i32 1845, i32 41}
!526 = !{ptr @.str.314, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/media/i2c/tc358743.c", i32 554, i32 2}
!528 = !{ptr @tc358743_set_pll._entry, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @tc358743_set_pll._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.316, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/media/i2c/tc358743.c", i32 570, i32 3}
!532 = !{ptr @tc358743_set_pll._entry.315, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @tc358743_set_pll._entry_ptr.317, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.318, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/media/i2c/tc358743.c", i32 1779, i32 2}
!536 = !{ptr @.str.319, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @tc358743_s_edid._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @tc358743_s_edid._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.320, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/i2c/tc358743.c", i32 1866, i32 10}
!541 = !{ptr @tc358743_ctrl_audio_sampling_rate, !542, !"tc358743_ctrl_audio_sampling_rate", i1 false, i1 false}
!542 = !{!"../drivers/media/i2c/tc358743.c", i32 1864, i32 38}
!543 = !{ptr @.str.321, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/media/i2c/tc358743.c", i32 1877, i32 10}
!545 = !{ptr @tc358743_ctrl_audio_present, !546, !"tc358743_ctrl_audio_present", i1 false, i1 false}
!546 = !{!"../drivers/media/i2c/tc358743.c", i32 1875, i32 38}
!547 = !{ptr @.str.322, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/media/i2c/tc358743.c", i32 363, i32 2}
!549 = !{ptr @tc358743_delayed_work_enable_hotplug._entry, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @tc358743_delayed_work_enable_hotplug._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @tc358743_cec_adap_ops, !552, !"tc358743_cec_adap_ops", i1 false, i1 false}
!552 = !{!"../drivers/media/i2c/tc358743.c", i32 915, i32 34}
!553 = !{ptr @.str.323, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/i2c/tc358743.c", i32 370, i32 2}
!555 = !{ptr @.str.324, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @tc358743_set_hdmi_hdcp._entry, !554, !"_entry", i1 false, i1 false}
!557 = !{ptr @tc358743_set_hdmi_hdcp._entry_ptr, !554, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.325, !554, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @.str.326, !554, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @.str.327, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/i2c/tc358743.c", i32 1531, i32 35}
!562 = !{ptr @.str.328, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/media/i2c/tc358743.c", i32 1535, i32 3}
!564 = !{ptr @.str.329, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @tc358743_s_dv_timings._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @tc358743_s_dv_timings._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @tc358743_s_dv_timings._entry.330, !568, !"_entry", i1 false, i1 false}
!568 = !{!"../drivers/media/i2c/tc358743.c", i32 1541, i32 3}
!569 = !{ptr @tc358743_s_dv_timings._entry_ptr.331, !568, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.332, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/media/i2c/tc358743.c", i32 638, i32 3}
!572 = !{ptr @.str.333, !571, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @tc358743_set_csi_color_space._entry, !571, !"_entry", i1 false, i1 false}
!574 = !{ptr @tc358743_set_csi_color_space._entry_ptr, !571, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.335, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/i2c/tc358743.c", i32 650, i32 3}
!577 = !{ptr @tc358743_set_csi_color_space._entry.334, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @tc358743_set_csi_color_space._entry_ptr.336, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.338, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/i2c/tc358743.c", i32 661, i32 3}
!581 = !{ptr @tc358743_set_csi_color_space._entry.337, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @tc358743_set_csi_color_space._entry_ptr.339, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.340, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/i2c/tc358743.c", i32 1025, i32 2}
!585 = !{ptr @.str.341, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @tc358743_enable_interrupts._entry, !584, !"_entry", i1 false, i1 false}
!587 = !{ptr @tc358743_enable_interrupts._entry_ptr, !584, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @tc358743_of_match, !589, !"tc358743_of_match", i1 false, i1 false}
!589 = !{!"../drivers/media/i2c/tc358743.c", i32 2216, i32 34}
!590 = !{ptr @tc358743_id, !591, !"tc358743_id", i1 false, i1 false}
!591 = !{!"../drivers/media/i2c/tc358743.c", i32 2208, i32 35}
!592 = !{i32 1, !"wchar_size", i32 2}
!593 = !{i32 1, !"min_enum_size", i32 4}
!594 = !{i32 8, !"branch-target-enforcement", i32 0}
!595 = !{i32 8, !"sign-return-address", i32 0}
!596 = !{i32 8, !"sign-return-address-all", i32 0}
!597 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!598 = !{i32 7, !"uwtable", i32 1}
!599 = !{i32 7, !"frame-pointer", i32 2}
!600 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!601 = !{i64 2156745795, i64 2156746288, i64 2156745832, i64 2156745888, i64 2156745922, i64 2156745946, i64 2156745987, i64 2156746008, i64 2156746036, i64 2156746070}
!602 = !{i8 0, i8 2}
!603 = !{!"auto-init"}
