; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7511-v4l2.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7511-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7511_cfg_read_infoframe = type { ptr, i8, i8, [3 x i8], i16 }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
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
%struct.adv7511_state = type { %struct.adv7511_platform_data, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, i32, i8, i8, i8, ptr, ptr, [3 x i8], i8, i8, i8, i8, i8, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.adv7511_state_edid, i32, ptr, %struct.delayed_work }
%struct.adv7511_platform_data = type { i8, i8, i8, i32 }
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
%struct.adv7511_state_edid = type { i32, i32, [2048 x i8], i32, i8 }
%struct.adv7511_monitor_detect = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.adv7511_edid_detect = type { i32, i32, i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.102 }
%union.anon.102 = type { [16 x i32] }

@__param_str_debug = internal constant [19 x i8] c"adv7511_v4l2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [32 x i8] c"adv7511_v4l2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [42 x i8] c"adv7511_v4l2.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [79 x i8] c"adv7511_v4l2.description=Analog Devices ADV7511 HDMI Transmitter Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [33 x i8] c"adv7511_v4l2.author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"adv7511_v4l2.file=drivers/media/i2c/adv7511-v4l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [28 x i8] c"adv7511_v4l2.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_adv7511_v4l2__300_1967_adv7511_driver_init6 = internal global ptr @adv7511_driver_init, section ".initcall6.init", align 4
@adv7511_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7511_probe, ptr @adv7511_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7511_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7511_driver_exit = internal global ptr @adv7511_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adv7511-v4l2\00", [19 x i8] zeroinitializer }, align 32
@adv7511_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7511-v4l2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7511_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s %d-%04x: No platform data!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7511_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/i2c/adv7511-v4l2.c\00", [63 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr = internal global ptr @adv7511_probe._entry, section ".printk_index", align 4
@adv7511_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: detecting adv7511 client on address 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.6 = internal global ptr @adv7511_probe._entry.4, section ".printk_index", align 4
@adv7511_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7511_core_ops, ptr null, ptr @adv7511_audio_ops, ptr @adv7511_video_ops, ptr null, ptr null, ptr null, ptr @adv7511_pad_ops }, [32 x i8] zeroinitializer }, align 32
@adv7511_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @adv7511_registered, ptr @adv7511_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@adv7511_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adv7511_v4l2:1802:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@adv7511_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7511_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@adv7511_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: chip_id != 0x7511, read 0x%02x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.10 = internal global ptr @adv7511_probe._entry.8, section ".printk_index", align 4
@adv7511_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to register edid i2c client\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.13 = internal global ptr @adv7511_probe._entry.11, section ".printk_index", align 4
@adv7511_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: %s: cec_clk %u outside range, disabling cec\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.16 = internal global ptr @adv7511_probe._entry.14, section ".printk_index", align 4
@adv7511_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: failed to register cec i2c client\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.19 = internal global ptr @adv7511_probe._entry.17, section ".printk_index", align 4
@adv7511_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to register pktmem i2c client\0A\00", [52 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.22 = internal global ptr @adv7511_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@adv7511_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: could not create workqueue\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.26 = internal global ptr @adv7511_probe._entry.24, section ".printk_index", align 4
@adv7511_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&state->edid_handler)->work)\00", [47 x i8] zeroinitializer }, align 32
@adv7511_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&state->edid_handler)->timer\00", [33 x i8] zeroinitializer }, align 32
@adv7511_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @adv7511_cec_adap_enable, ptr null, ptr null, ptr @adv7511_cec_adap_log_addr, ptr @adv7511_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adv7511_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr.32 = internal global ptr @adv7511_probe._entry.30, section ".printk_index", align 4
@adv7511_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @adv7511_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7511_g_register, ptr @adv7511_s_register, ptr @adv7511_s_power, ptr @adv7511_isr, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7511_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @adv7511_s_clock_freq, ptr @adv7511_s_i2s_clock_freq, ptr @adv7511_s_routing, ptr @adv7511_s_audio_stream }, [16 x i8] zeroinitializer }, align 32
@adv7511_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7511_s_stream, ptr null, ptr null, ptr null, ptr @adv7511_s_dv_timings, ptr @adv7511_g_dv_timings, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7511_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv7511_enum_mbus_code, ptr null, ptr null, ptr @adv7511_get_fmt, ptr @adv7511_set_fmt, ptr null, ptr null, ptr @adv7511_get_edid, ptr null, ptr @adv7511_dv_timings_cap, ptr @adv7511_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv7511_log_status.states = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in reset\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reading EDID\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initializing HDCP\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDCP enabled\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"initializing HDCP repeater\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@adv7511_log_status.errors = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no error\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad receiver BKSV\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ri mismatch\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Pj mismatch\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c error\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed out\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max repeater cascade exceeded\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash check failed\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"too many devices\00", [47 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: power %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7511_log_status\00", [45 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr = internal global ptr @adv7511_log_status._entry, section ".printk_index", align 4
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.3, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: %s hotplug, %s Rx Sense, %s EDID (%d block(s))\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.64 = internal global ptr @adv7511_log_status._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detected\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.59, ptr @.str.3, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %s output %s\0A\00", [44 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.70 = internal global ptr @adv7511_log_status._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-D\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: state: %s, error: %s, detect count: %u, msk/irq: %02x/%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.77 = internal global ptr @adv7511_log_status._entry.75, section ".printk_index", align 4
@adv7511_log_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.3, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: RGB quantization: %s range\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.80 = internal global ptr @adv7511_log_status._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"limited\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.59, ptr @.str.3, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: CTS %s mode: N %d, CTS %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.85 = internal global ptr @adv7511_log_status._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"automatic\00", [22 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.59, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: VIC: detected %d, sent %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.90 = internal global ptr @adv7511_log_status._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timings: \00", [22 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.59, ptr @.str.3, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: no timings set\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.94 = internal global ptr @adv7511_log_status._entry.92, section ".printk_index", align 4
@adv7511_log_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.59, ptr @.str.3, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: i2c edid addr: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.97 = internal global ptr @adv7511_log_status._entry.95, section ".printk_index", align 4
@adv7511_log_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.59, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: i2c cec addr: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.100 = internal global ptr @adv7511_log_status._entry.98, section ".printk_index", align 4
@adv7511_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.59, ptr @.str.3, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: CEC: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.103 = internal global ptr @adv7511_log_status._entry.101, section ".printk_index", align 4
@adv7511_log_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.59, ptr @.str.3, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: CEC Logical Address: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.106 = internal global ptr @adv7511_log_status._entry.104, section ".printk_index", align 4
@adv7511_log_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.59, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: i2c pktmem addr: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7511_log_status._entry_ptr.109 = internal global ptr @adv7511_log_status._entry.107, section ".printk_index", align 4
@adv7511_log_infoframes.cri = internal constant { [3 x %struct.adv7511_cfg_read_infoframe], [60 x i8] } { [3 x %struct.adv7511_cfg_read_infoframe] [%struct.adv7511_cfg_read_infoframe { ptr @.str.110, i8 68, i8 16, [3 x i8] c"\82\02\0D", i16 85 }, %struct.adv7511_cfg_read_infoframe { ptr @.str.111, i8 68, i8 8, [3 x i8] c"\84\01\0A", i16 115 }, %struct.adv7511_cfg_read_infoframe { ptr @.str.112, i8 64, i8 64, [3 x i8] c"\83\01\19", i16 259 }], [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVI\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDP\00", [28 x i8] zeroinitializer }, align 32
@log_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: %s infoframe not transmitted\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"log_infoframe\00", [18 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr = internal global ptr @log_infoframe._entry, section ".printk_index", align 4
@log_infoframe._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s: invalid %s infoframe length %d\0A\00", [54 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr.117 = internal global ptr @log_infoframe._entry.115, section ".printk_index", align 4
@log_infoframe._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: %s: unpack of %s infoframe failed\0A\00", [55 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr.120 = internal global ptr @log_infoframe._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s %d-%04x: read ok after %d retries\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv_smbus_read_byte_data\00", [39 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry_ptr = internal global ptr @adv_smbus_read_byte_data._entry, section ".printk_index", align 4
@adv_smbus_read_byte_data._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.3, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s %d-%04x: read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry_ptr.126 = internal global ptr @adv_smbus_read_byte_data._entry.124, section ".printk_index", align 4
@adv_smbus_read_byte_data_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s %d-%04x: error reading %02x, %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adv_smbus_read_byte_data_check\00", [33 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data_check._entry_ptr = internal global ptr @adv_smbus_read_byte_data_check._entry, section ".printk_index", align 4
@adv7511_g_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Register %03llx not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7511_g_register\00", [45 x i8] zeroinitializer }, align 32
@adv7511_g_register._entry_ptr = internal global ptr @adv7511_g_register._entry, section ".printk_index", align 4
@adv7511_inv_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: 0x000-0x0ff: Main Map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7511_inv_register\00", [43 x i8] zeroinitializer }, align 32
@adv7511_inv_register._entry_ptr = internal global ptr @adv7511_inv_register._entry, section ".printk_index", align 4
@adv7511_inv_register._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: 0x100-0x1ff: CEC Map\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7511_inv_register._entry_ptr.135 = internal global ptr @adv7511_inv_register._entry.133, section ".printk_index", align 4
@adv7511_s_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.136, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7511_s_register\00", [45 x i8] zeroinitializer }, align 32
@adv7511_s_register._entry_ptr = internal global ptr @adv7511_s_register._entry, section ".printk_index", align 4
@adv7511_cec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: %s: I2C Write Problem\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7511_cec_write\00", [46 x i8] zeroinitializer }, align 32
@adv7511_cec_write._entry_ptr = internal global ptr @adv7511_cec_write._entry, section ".printk_index", align 4
@adv7511_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: power %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7511_s_power\00", [16 x i8] zeroinitializer }, align 32
@adv7511_s_power._entry_ptr = internal global ptr @adv7511_s_power._entry, section ".printk_index", align 4
@adv7511_s_power._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.3, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %s: failed to powerup the adv7511!\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7511_s_power._entry_ptr.143 = internal global ptr @adv7511_s_power._entry.141, section ".printk_index", align 4
@adv7511_s_power._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.3, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %s: needed %d retries to powerup the adv7511\0A\00", [44 x i8] zeroinitializer }, align 32
@adv7511_s_power._entry_ptr.146 = internal global ptr @adv7511_s_power._entry.144, section ".printk_index", align 4
@adv7511_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: irq 0x%x, cec-irq 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv7511_isr\00", [20 x i8] zeroinitializer }, align 32
@adv7511_isr._entry_ptr = internal global ptr @adv7511_isr._entry, section ".printk_index", align 4
@adv7511_isr._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: cec msg len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7511_isr._entry_ptr.151 = internal global ptr @adv7511_isr._entry.149, section ".printk_index", align 4
@adv7511_check_edid_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: edid ready (retries: %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7511_check_edid_status\00", [38 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr = internal global ptr @adv7511_check_edid_status._entry, section ".printk_index", align 4
@adv7511_check_edid_status._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: edid segment number too big\0A\00", [61 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.156 = internal global ptr @adv7511_check_edid_status._entry.154, section ".printk_index", align 4
@adv7511_check_edid_status._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.3, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: got segment %d\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.159 = internal global ptr @adv7511_check_edid_status._entry.157, section ".printk_index", align 4
@adv7511_check_edid_status._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str.3, i32 1651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: %d blocks in total\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.162 = internal global ptr @adv7511_check_edid_status._entry.160, section ".printk_index", align 4
@adv7511_check_edid_status._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str.3, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: %s: edid crc or header error\0A\00", [60 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.165 = internal global ptr @adv7511_check_edid_status._entry.163, section ".printk_index", align 4
@adv7511_check_edid_status._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.153, ptr @.str.3, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: request segment %d\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.168 = internal global ptr @adv7511_check_edid_status._entry.166, section ".printk_index", align 4
@adv7511_check_edid_status._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.153, ptr @.str.3, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: edid complete with %d segment(s)\0A\00", [52 x i8] zeroinitializer }, align 32
@adv7511_check_edid_status._entry_ptr.171 = internal global ptr @adv7511_check_edid_status._entry.169, section ".printk_index", align 4
@adv7511_edid_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7511_edid_rd\00", [16 x i8] zeroinitializer }, align 32
@adv7511_edid_rd._entry_ptr = internal global ptr @adv7511_edid_rd._entry, section ".printk_index", align 4
@adv7511_edid_rd._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: %s: i2c read error\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7511_edid_rd._entry_ptr.176 = internal global ptr @adv7511_edid_rd._entry.174, section ".printk_index", align 4
@adv7511_dbg_dump_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.3, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: edid segment %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv7511_dbg_dump_edid\00", [42 x i8] zeroinitializer }, align 32
@adv7511_dbg_dump_edid._entry_ptr = internal global ptr @adv7511_dbg_dump_edid._entry, section ".printk_index", align 4
@adv7511_dbg_dump_edid._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.3, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s: \0A\00", [24 x i8] zeroinitializer }, align 32
@adv7511_dbg_dump_edid._entry_ptr.181 = internal global ptr @adv7511_dbg_dump_edid._entry.179, section ".printk_index", align 4
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@adv7511_dbg_dump_edid._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.178, ptr @.str.3, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@adv7511_dbg_dump_edid._entry_ptr.185 = internal global ptr @adv7511_dbg_dump_edid._entry.183, section ".printk_index", align 4
@edid_verify_header.hdmi_header = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\FF\FF\FF\FF\FF\FF\00", [24 x i8] zeroinitializer }, align 32
@adv_cec_tx_raw_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: tx raw: tx disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv_cec_tx_raw_status\00", [42 x i8] zeroinitializer }, align 32
@adv_cec_tx_raw_status._entry_ptr = internal global ptr @adv_cec_tx_raw_status._entry, section ".printk_index", align 4
@adv_cec_tx_raw_status._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.3, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: tx raw: arbitration lost\0A\00", [60 x i8] zeroinitializer }, align 32
@adv_cec_tx_raw_status._entry_ptr.190 = internal global ptr @adv_cec_tx_raw_status._entry.188, section ".printk_index", align 4
@adv_cec_tx_raw_status._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.187, ptr @.str.3, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: tx raw: retry failed\0A\00", [32 x i8] zeroinitializer }, align 32
@adv_cec_tx_raw_status._entry_ptr.193 = internal global ptr @adv_cec_tx_raw_status._entry.191, section ".printk_index", align 4
@adv_cec_tx_raw_status._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.187, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: tx raw: ready ok\0A\00", [36 x i8] zeroinitializer }, align 32
@adv_cec_tx_raw_status._entry_ptr.196 = internal global ptr @adv_cec_tx_raw_status._entry.194, section ".printk_index", align 4
@adv7511_s_audio_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.3, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: %sable\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adv7511_s_audio_stream\00", [41 x i8] zeroinitializer }, align 32
@adv7511_s_audio_stream._entry_ptr = internal global ptr @adv7511_s_audio_stream._entry, section ".printk_index", align 4
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@adv7511_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.201, ptr @.str.3, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7511_s_stream\00", [47 x i8] zeroinitializer }, align 32
@adv7511_s_stream._entry_ptr = internal global ptr @adv7511_s_stream._entry, section ".printk_index", align 4
@adv7511_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.202, ptr @.str.3, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7511_s_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@adv7511_s_dv_timings._entry_ptr = internal global ptr @adv7511_s_dv_timings._entry, section ".printk_index", align 4
@adv7511_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.97 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 20000000, i64 225000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@adv7511_g_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.203, ptr @.str.3, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7511_g_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@adv7511_g_dv_timings._entry_ptr = internal global ptr @adv7511_g_dv_timings._entry, section ".printk_index", align 4
@.str.204 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv7511_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.3, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: ctrl id: %d, ctrl->val %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv7511_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@adv7511_s_ctrl._entry_ptr = internal global ptr @adv7511_s_ctrl._entry, section ".printk_index", align 4
@adv7511_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: %s: i2c write error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adv7511_wr\00", [21 x i8] zeroinitializer }, align 32
@adv7511_wr._entry_ptr = internal global ptr @adv7511_wr._entry, section ".printk_index", align 4
@adv7511_edid_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.209, ptr @.str.3, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7511_edid_handler\00", [43 x i8] zeroinitializer }, align 32
@adv7511_edid_handler._entry_ptr = internal global ptr @adv7511_edid_handler._entry, section ".printk_index", align 4
@adv7511_edid_handler._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.3, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: edid read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7511_edid_handler._entry_ptr.212 = internal global ptr @adv7511_edid_handler._entry.210, section ".printk_index", align 4
@adv7511_edid_handler._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.209, ptr @.str.3, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: no edid found\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7511_edid_handler._entry_ptr.215 = internal global ptr @adv7511_edid_handler._entry.213, section ".printk_index", align 4
@adv7511_init_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.216, ptr @.str.3, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7511_init_setup\00", [45 x i8] zeroinitializer }, align 32
@adv7511_init_setup._entry_ptr = internal global ptr @adv7511_init_setup._entry, section ".printk_index", align 4
@adv7511_init_setup._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str.3, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s: cec_clk %d\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7511_init_setup._entry_ptr.219 = internal global ptr @adv7511_init_setup._entry.217, section ".printk_index", align 4
@adv7511_init_setup._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.216, ptr @.str.3, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: cec_clk %d, not multiple of 750 Khz\0A\00", [49 x i8] zeroinitializer }, align 32
@adv7511_init_setup._entry_ptr.222 = internal global ptr @adv7511_init_setup._entry.220, section ".printk_index", align 4
@adv7511_cec_adap_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.3, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7511_cec_adap_transmit\00", [38 x i8] zeroinitializer }, align 32
@adv7511_cec_adap_transmit._entry_ptr = internal global ptr @adv7511_cec_adap_transmit._entry, section ".printk_index", align 4
@adv7511_cec_adap_transmit._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.3, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %s: len exceeded 16 (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7511_cec_adap_transmit._entry_ptr.227 = internal global ptr @adv7511_cec_adap_transmit._entry.225, section ".printk_index", align 4
@adv7511_set_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.3, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7511_set_isr\00", [16 x i8] zeroinitializer }, align 32
@adv7511_set_isr._entry_ptr = internal global ptr @adv7511_set_isr._entry, section ".printk_index", align 4
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@adv7511_set_isr._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.229, ptr @.str.3, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Could not set interrupts: hw failure?\0A\00", [51 x i8] zeroinitializer }, align 32
@adv7511_set_isr._entry_ptr.234 = internal global ptr @adv7511_set_isr._entry.232, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.3, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: status: 0x%x%s%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adv7511_check_monitor_present_status\00", [59 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr = internal global ptr @adv7511_check_monitor_present_status._entry, section ".printk_index", align 4
@.str.237 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", hotplug\00", [22 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.239 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", rx-sense\00", [21 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.236, ptr @.str.3, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %s: hotplug and (rx-sense or edid)\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.242 = internal global ptr @adv7511_check_monitor_present_status._entry.240, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.236, ptr @.str.3, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: monitor detected\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.245 = internal global ptr @adv7511_check_monitor_present_status._entry.243, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.236, ptr @.str.3, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: monitor detected, powerup failed\0A\00", [52 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.248 = internal global ptr @adv7511_check_monitor_present_status._entry.246, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.236, ptr @.str.3, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: hotplug detected\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.251 = internal global ptr @adv7511_check_monitor_present_status._entry.249, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.236, ptr @.str.3, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: hotplug not detected\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.254 = internal global ptr @adv7511_check_monitor_present_status._entry.252, section ".printk_index", align 4
@adv7511_check_monitor_present_status._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.236, ptr @.str.3, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: monitor not detected\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7511_check_monitor_present_status._entry_ptr.257 = internal global ptr @adv7511_check_monitor_present_status._entry.255, section ".printk_index", align 4
@adv7511_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.258, ptr @.str.3, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7511_setup\00", [18 x i8] zeroinitializer }, align 32
@adv7511_setup._entry_ptr = internal global ptr @adv7511_setup._entry, section ".printk_index", align 4
@adv7511_audio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.259, ptr @.str.3, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adv7511_audio_setup\00", [44 x i8] zeroinitializer }, align 32
@adv7511_audio_setup._entry_ptr = internal global ptr @adv7511_audio_setup._entry, section ".printk_index", align 4
@adv7511_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.3, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s removed @ 0x%x (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv7511_remove\00", [17 x i8] zeroinitializer }, align 32
@adv7511_remove._entry_ptr = internal global ptr @adv7511_remove._entry, section ".printk_index", align 4
@switch.table.adv7511_enum_mbus_code = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4106, i32 8209, i32 8207], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 56, i64 0, i64 1]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 56, i64 0, i64 1]
@__sancov_gen_cov_switch_values.263 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.264 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 30]
@__sancov_gen_cov_switch_values.266 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.267 = internal global [5 x i64] [i64 3, i64 32, i64 4106, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.269 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.271 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.272 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.273 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.274 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 31, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant [15 x i8] c"adv7511_driver\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1958, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1960, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant [11 x i8] c"adv7511_id\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1952, i32 35 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1786, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1795, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"adv7511_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1413, i32 37 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"adv7511_int_ops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1715, i32 46 }
@___asan_gen_.310 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1802, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"adv7511_ctrl_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 410, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1841, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1850, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1858, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1867, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1878, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1883, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1885, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1890, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [21 x i8] c"adv7511_cec_adap_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 864, i32 34 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1908, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"adv7511_core_ops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 971, i32 42 }
@___asan_gen_.382 = private unnamed_addr constant [18 x i8] c"adv7511_audio_ops\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1158, i32 43 }
@___asan_gen_.385 = private unnamed_addr constant [18 x i8] c"adv7511_video_ops\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1080, i32 43 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"adv7511_pad_ops\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1402, i32 41 }
@___asan_gen_.391 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 552, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 553, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 554, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 555, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 556, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 557, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 558, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 13 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 18 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 23 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 28 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 33 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 43 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 48 }
@___asan_gen_.442 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 561, i32 28 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 562, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 563, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 564, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 565, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 566, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 567, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 568, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 569, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 570, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 574, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 575, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 580, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 585, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 589, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 608, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 610, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 615, i32 35 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 618, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 619, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 624, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 626, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 633, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 637, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [4 x i8] c"cri\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 535, i32 49 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 536, i32 5 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 537, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 538, i32 5 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 502, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 511, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 526, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 530, i32 21 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 180, i32 5 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 184, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 168, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 442, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 421, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 423, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 464, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 256, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 648, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 669, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 674, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 926, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 944, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1629, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1641, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1644, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1650, i32 5 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1658, i32 5 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1669, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1677, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 222, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 230, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1425, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1430, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1432, i32 17 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1436, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant [12 x i8] c"hdmi_header\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1613, i32 18 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 825, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 830, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 841, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 858, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1089, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 988, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1006, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c"adv7511_timings_cap\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 134, i32 41 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1051, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 998, i32 6 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 385, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 206, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1461, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1474, i32 4 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1485, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1729, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1749, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1760, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 792, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 795, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 879, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 906, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1546, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1557, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1559, i32 4 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1563, i32 5 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1572, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1576, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1578, i32 4 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1501, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1490, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1046 = private constant [36 x i8] c"../drivers/media/i2c/adv7511-v4l2.c\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1934, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant [36 x i8] c"switch.table.adv7511_enum_mbus_code\00", align 1
@llvm.compiler.used = appending global [349 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_adv7511_driver_exit, ptr @__initcall__kmod_adv7511_v4l2__300_1967_adv7511_driver_init6, ptr @__param_debug, ptr @adv7511_audio_setup._entry, ptr @adv7511_audio_setup._entry_ptr, ptr @adv7511_cec_adap_transmit._entry, ptr @adv7511_cec_adap_transmit._entry.225, ptr @adv7511_cec_adap_transmit._entry_ptr, ptr @adv7511_cec_adap_transmit._entry_ptr.227, ptr @adv7511_cec_write._entry, ptr @adv7511_cec_write._entry_ptr, ptr @adv7511_check_edid_status._entry, ptr @adv7511_check_edid_status._entry.154, ptr @adv7511_check_edid_status._entry.157, ptr @adv7511_check_edid_status._entry.160, ptr @adv7511_check_edid_status._entry.163, ptr @adv7511_check_edid_status._entry.166, ptr @adv7511_check_edid_status._entry.169, ptr @adv7511_check_edid_status._entry_ptr, ptr @adv7511_check_edid_status._entry_ptr.156, ptr @adv7511_check_edid_status._entry_ptr.159, ptr @adv7511_check_edid_status._entry_ptr.162, ptr @adv7511_check_edid_status._entry_ptr.165, ptr @adv7511_check_edid_status._entry_ptr.168, ptr @adv7511_check_edid_status._entry_ptr.171, ptr @adv7511_check_monitor_present_status._entry, ptr @adv7511_check_monitor_present_status._entry.240, ptr @adv7511_check_monitor_present_status._entry.243, ptr @adv7511_check_monitor_present_status._entry.246, ptr @adv7511_check_monitor_present_status._entry.249, ptr @adv7511_check_monitor_present_status._entry.252, ptr @adv7511_check_monitor_present_status._entry.255, ptr @adv7511_check_monitor_present_status._entry_ptr, ptr @adv7511_check_monitor_present_status._entry_ptr.242, ptr @adv7511_check_monitor_present_status._entry_ptr.245, ptr @adv7511_check_monitor_present_status._entry_ptr.248, ptr @adv7511_check_monitor_present_status._entry_ptr.251, ptr @adv7511_check_monitor_present_status._entry_ptr.254, ptr @adv7511_check_monitor_present_status._entry_ptr.257, ptr @adv7511_dbg_dump_edid._entry, ptr @adv7511_dbg_dump_edid._entry.179, ptr @adv7511_dbg_dump_edid._entry.183, ptr @adv7511_dbg_dump_edid._entry_ptr, ptr @adv7511_dbg_dump_edid._entry_ptr.181, ptr @adv7511_dbg_dump_edid._entry_ptr.185, ptr @adv7511_driver_exit, ptr @adv7511_edid_handler._entry, ptr @adv7511_edid_handler._entry.210, ptr @adv7511_edid_handler._entry.213, ptr @adv7511_edid_handler._entry_ptr, ptr @adv7511_edid_handler._entry_ptr.212, ptr @adv7511_edid_handler._entry_ptr.215, ptr @adv7511_edid_rd._entry, ptr @adv7511_edid_rd._entry.174, ptr @adv7511_edid_rd._entry_ptr, ptr @adv7511_edid_rd._entry_ptr.176, ptr @adv7511_g_dv_timings._entry, ptr @adv7511_g_dv_timings._entry_ptr, ptr @adv7511_g_register._entry, ptr @adv7511_g_register._entry_ptr, ptr @adv7511_init_setup._entry, ptr @adv7511_init_setup._entry.217, ptr @adv7511_init_setup._entry.220, ptr @adv7511_init_setup._entry_ptr, ptr @adv7511_init_setup._entry_ptr.219, ptr @adv7511_init_setup._entry_ptr.222, ptr @adv7511_inv_register._entry, ptr @adv7511_inv_register._entry.133, ptr @adv7511_inv_register._entry_ptr, ptr @adv7511_inv_register._entry_ptr.135, ptr @adv7511_isr._entry, ptr @adv7511_isr._entry.149, ptr @adv7511_isr._entry_ptr, ptr @adv7511_isr._entry_ptr.151, ptr @adv7511_log_status._entry, ptr @adv7511_log_status._entry.101, ptr @adv7511_log_status._entry.104, ptr @adv7511_log_status._entry.107, ptr @adv7511_log_status._entry.62, ptr @adv7511_log_status._entry.68, ptr @adv7511_log_status._entry.75, ptr @adv7511_log_status._entry.78, ptr @adv7511_log_status._entry.83, ptr @adv7511_log_status._entry.88, ptr @adv7511_log_status._entry.92, ptr @adv7511_log_status._entry.95, ptr @adv7511_log_status._entry.98, ptr @adv7511_log_status._entry_ptr, ptr @adv7511_log_status._entry_ptr.100, ptr @adv7511_log_status._entry_ptr.103, ptr @adv7511_log_status._entry_ptr.106, ptr @adv7511_log_status._entry_ptr.109, ptr @adv7511_log_status._entry_ptr.64, ptr @adv7511_log_status._entry_ptr.70, ptr @adv7511_log_status._entry_ptr.77, ptr @adv7511_log_status._entry_ptr.80, ptr @adv7511_log_status._entry_ptr.85, ptr @adv7511_log_status._entry_ptr.90, ptr @adv7511_log_status._entry_ptr.94, ptr @adv7511_log_status._entry_ptr.97, ptr @adv7511_probe._entry, ptr @adv7511_probe._entry.11, ptr @adv7511_probe._entry.14, ptr @adv7511_probe._entry.17, ptr @adv7511_probe._entry.20, ptr @adv7511_probe._entry.24, ptr @adv7511_probe._entry.30, ptr @adv7511_probe._entry.4, ptr @adv7511_probe._entry.8, ptr @adv7511_probe._entry_ptr, ptr @adv7511_probe._entry_ptr.10, ptr @adv7511_probe._entry_ptr.13, ptr @adv7511_probe._entry_ptr.16, ptr @adv7511_probe._entry_ptr.19, ptr @adv7511_probe._entry_ptr.22, ptr @adv7511_probe._entry_ptr.26, ptr @adv7511_probe._entry_ptr.32, ptr @adv7511_probe._entry_ptr.6, ptr @adv7511_remove._entry, ptr @adv7511_remove._entry_ptr, ptr @adv7511_s_audio_stream._entry, ptr @adv7511_s_audio_stream._entry_ptr, ptr @adv7511_s_ctrl._entry, ptr @adv7511_s_ctrl._entry_ptr, ptr @adv7511_s_dv_timings._entry, ptr @adv7511_s_dv_timings._entry_ptr, ptr @adv7511_s_power._entry, ptr @adv7511_s_power._entry.141, ptr @adv7511_s_power._entry.144, ptr @adv7511_s_power._entry_ptr, ptr @adv7511_s_power._entry_ptr.143, ptr @adv7511_s_power._entry_ptr.146, ptr @adv7511_s_register._entry, ptr @adv7511_s_register._entry_ptr, ptr @adv7511_s_stream._entry, ptr @adv7511_s_stream._entry_ptr, ptr @adv7511_set_isr._entry, ptr @adv7511_set_isr._entry.232, ptr @adv7511_set_isr._entry_ptr, ptr @adv7511_set_isr._entry_ptr.234, ptr @adv7511_setup._entry, ptr @adv7511_setup._entry_ptr, ptr @adv7511_wr._entry, ptr @adv7511_wr._entry_ptr, ptr @adv_cec_tx_raw_status._entry, ptr @adv_cec_tx_raw_status._entry.188, ptr @adv_cec_tx_raw_status._entry.191, ptr @adv_cec_tx_raw_status._entry.194, ptr @adv_cec_tx_raw_status._entry_ptr, ptr @adv_cec_tx_raw_status._entry_ptr.190, ptr @adv_cec_tx_raw_status._entry_ptr.193, ptr @adv_cec_tx_raw_status._entry_ptr.196, ptr @adv_smbus_read_byte_data._entry, ptr @adv_smbus_read_byte_data._entry.124, ptr @adv_smbus_read_byte_data._entry_ptr, ptr @adv_smbus_read_byte_data._entry_ptr.126, ptr @adv_smbus_read_byte_data_check._entry, ptr @adv_smbus_read_byte_data_check._entry_ptr, ptr @log_infoframe._entry, ptr @log_infoframe._entry.115, ptr @log_infoframe._entry.118, ptr @log_infoframe._entry_ptr, ptr @log_infoframe._entry_ptr.117, ptr @log_infoframe._entry_ptr.120, ptr @debug, ptr @adv7511_driver, ptr @.str, ptr @adv7511_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @adv7511_ops, ptr @adv7511_int_ops, ptr @adv7511_probe._key, ptr @.str.7, ptr @adv7511_ctrl_ops, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @adv7511_probe.__key, ptr @.str.27, ptr @adv7511_probe.__key.28, ptr @.str.29, ptr @adv7511_cec_adap_ops, ptr @.str.31, ptr @adv7511_core_ops, ptr @adv7511_audio_ops, ptr @adv7511_video_ops, ptr @adv7511_pad_ops, ptr @adv7511_log_status.states, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @adv7511_log_status.errors, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @adv7511_log_infoframes.cri, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @edid_verify_header.hdmi_header, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @adv7511_timings_cap, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @.str.216, ptr @.str.218, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @switch.table.adv7511_enum_mbus_code], section "llvm.metadata"
@0 = internal global [259 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status.states to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status.errors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_log_infoframes.cri to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_g_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_inv_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_inv_register._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_power._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_power._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_isr._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_edid_status._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_edid_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_edid_rd._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_dbg_dump_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_dbg_dump_edid._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_dbg_dump_edid._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_verify_header.hdmi_header to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_cec_tx_raw_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_cec_tx_raw_status._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_cec_tx_raw_status._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_cec_tx_raw_status._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_audio_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_g_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_edid_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_edid_handler._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_edid_handler._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_init_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_init_setup._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_init_setup._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_adap_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_adap_transmit._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_set_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_set_isr._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_check_monitor_present_status._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_audio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adv7511_enum_mbus_code to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7511_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7511_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #11
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2804, i32 noundef 3520) #11
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 2
  %conv = zext i16 %17 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %15, i32 noundef %conv) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %1, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %call.i, align 4
  %fmt_code = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 17
  %21 = ptrtoint ptr %fmt_code to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4106, ptr %fmt_code, align 4
  %colorspace = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 18
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %colorspace, align 4
  %sd14 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %do.end20, label %if.end12.do.end28_crit_edge

if.end12.do.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %addr23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %24 = ptrtoint ptr %addr23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr23, align 2
  %conv24 = zext i16 %25 to i32
  %shl = shl nuw nsw i32 %conv24, 1
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name22, i32 noundef %shl) #14
  br label %do.end28

do.end28:                                         ; preds = %do.end20, %if.end12.do.end28_crit_edge
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd14, ptr noundef %client, ptr noundef nonnull @adv7511_ops) #11
  %internal_ops = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @adv7511_int_ops, ptr %internal_ops, align 4
  %hdl29 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 3
  %call31 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl29, i32 noundef 10, ptr noundef nonnull @adv7511_probe._key, ptr noundef nonnull @.str.7) #11
  %call32 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl29, ptr noundef nonnull @adv7511_ctrl_ops, i32 noundef 10488068, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #11
  %hdmi_mode_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 23
  %27 = ptrtoint ptr %hdmi_mode_ctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call32, ptr %hdmi_mode_ctrl, align 4
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl29, ptr noundef null, i32 noundef 10488065, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #11
  %hotplug_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 24
  %28 = ptrtoint ptr %hotplug_ctrl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %hotplug_ctrl, align 4
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl29, ptr noundef null, i32 noundef 10488066, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #11
  %rx_sense_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 25
  %29 = ptrtoint ptr %rx_sense_ctrl to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call34, ptr %rx_sense_ctrl, align 4
  %call35 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl29, ptr noundef null, i32 noundef 10488067, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #11
  %have_edid0_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 26
  %30 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call35, ptr %have_edid0_ctrl, align 4
  %call36 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl29, ptr noundef nonnull @adv7511_ctrl_ops, i32 noundef 10488069, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #11
  %rgb_quantization_range_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 27
  %31 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call36, ptr %rgb_quantization_range_ctrl, align 4
  %call37 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl29, ptr noundef nonnull @adv7511_ctrl_ops, i32 noundef 10488070, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #11
  %content_type_ctrl = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 28
  %32 = ptrtoint ptr %content_type_ctrl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call37, ptr %content_type_ctrl, align 4
  %ctrl_handler = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %hdl29, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool38.not = icmp eq i32 %35, 0
  br i1 %tobool38.not, label %if.end41, label %do.end28.err_hdl_crit_edge

do.end28.err_hdl_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hdl

if.end41:                                         ; preds = %do.end28
  %pad = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 2
  %flags = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %flags, align 4
  %function = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24578, ptr %function, align 4
  %call44 = tail call i32 @media_entity_pads_init(ptr noundef %sd14, i16 noundef zeroext 1, ptr noundef %pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.err_hdl_crit_edge

if.end41.err_hdl_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hdl

if.end47:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call.i, align 4
  %shl50 = shl i8 %39, 1
  %i2c_edid_addr = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %i2c_edid_addr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %shl50, ptr %i2c_edid_addr, align 4
  %i2c_cec = getelementptr inbounds %struct.adv7511_platform_data, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_cec, align 1
  %shl54 = shl i8 %42, 1
  %i2c_cec_addr = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %i2c_cec_addr to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %shl54, ptr %i2c_cec_addr, align 2
  %i2c_pktmem = getelementptr inbounds %struct.adv7511_platform_data, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %i2c_pktmem to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_pktmem, align 2
  %shl58 = shl i8 %45, 1
  %i2c_pktmem_addr = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %i2c_pktmem_addr to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %shl58, ptr %i2c_pktmem_addr, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 11
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %48, i8 noundef zeroext 0) #11
  %chip_revision = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call1.i, ptr %chip_revision, align 4
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i353 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext -11) #11
  %52 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i355 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext -10) #11
  %conv67 = and i32 %call1.i353, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 117, i32 %conv67)
  %cmp68.not = icmp eq i32 %conv67, 117
  %conv71 = and i32 %call1.i355, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv71)
  %cmp72.not = icmp eq i32 %conv71, 17
  %or.cond = select i1 %cmp68.not, i1 %cmp72.not, i1 false
  br i1 %or.cond, label %if.end86, label %do.end77

do.end77:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %name79 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name79, i32 noundef %conv67, i32 noundef %conv71) #14
  br label %err_hdl

if.end86:                                         ; preds = %if.end47
  %54 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter, align 8
  %56 = ptrtoint ptr %i2c_edid_addr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %i2c_edid_addr, align 4
  %58 = lshr i8 %57, 1
  %conv90 = zext i8 %58 to i16
  %call91 = tail call ptr @i2c_new_dummy_device(ptr noundef %55, i16 noundef zeroext %conv90) #11
  %i2c_edid92 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 29
  %59 = ptrtoint ptr %i2c_edid92 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call91, ptr %i2c_edid92, align 4
  %cmp.i356 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %do.end98, label %if.end105

do.end98:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %name100 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name100) #14
  %60 = ptrtoint ptr %i2c_edid92 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_edid92, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %err_hdl

if.end105:                                        ; preds = %if.end86
  %63 = ptrtoint ptr %i2c_cec_addr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %i2c_cec_addr, align 2
  %65 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i358 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext -31, i8 noundef zeroext %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i358)
  %cmp2.i = icmp eq i32 %call1.i358, 0
  br i1 %cmp2.i, label %if.end105.adv7511_wr.exit_crit_edge, label %for.cond.i

if.end105.adv7511_wr.exit_crit_edge:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %if.end105
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext -31, i8 noundef zeroext %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext -31, i8 noundef zeroext %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %if.end105.adv7511_wr.exit_crit_edge
  %cec_clk = getelementptr inbounds %struct.adv7511_platform_data, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %cec_clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cec_clk, align 4
  %69 = add i32 %68, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97000001, i32 %69)
  %70 = icmp ult i32 %69, -97000001
  br i1 %70, label %if.else, label %if.then132

if.then132:                                       ; preds = %adv7511_wr.exit
  %71 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter, align 8
  %73 = ptrtoint ptr %i2c_cec_addr to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %i2c_cec_addr, align 2
  %75 = lshr i8 %74, 1
  %conv137 = zext i8 %75 to i16
  %call138 = tail call ptr @i2c_new_dummy_device(ptr noundef %72, i16 noundef zeroext %conv137) #11
  %i2c_cec139 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 8
  %76 = ptrtoint ptr %i2c_cec139 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call138, ptr %i2c_cec139, align 4
  %cmp.i359 = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i359, label %do.end145, label %if.end152

do.end145:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %name147 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name147) #14
  %77 = ptrtoint ptr %i2c_cec139 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_cec139, align 4
  %79 = ptrtoint ptr %78 to i32
  br label %err_unreg_edid

if.end152:                                        ; preds = %if.then132
  %80 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i361 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext -30, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i361)
  %cmp2.i362 = icmp eq i32 %call1.i361, 0
  br i1 %cmp2.i362, label %if.end152.if.end155_crit_edge, label %for.cond.i365

if.end152.if.end155_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

for.cond.i365:                                    ; preds = %if.end152
  %call1.1.i363 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext -30, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i363)
  %cmp2.1.i364 = icmp eq i32 %call1.1.i363, 0
  br i1 %cmp2.1.i364, label %for.cond.i365.if.end155_crit_edge, label %for.cond.1.i368

for.cond.i365.if.end155_crit_edge:                ; preds = %for.cond.i365
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

for.cond.1.i368:                                  ; preds = %for.cond.i365
  %call1.2.i366 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext -30, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i366)
  %cmp2.2.i367 = icmp eq i32 %call1.2.i366, 0
  br i1 %cmp2.2.i367, label %for.cond.1.i368.if.end155_crit_edge, label %for.cond.2.i371

for.cond.1.i368.if.end155_crit_edge:              ; preds = %for.cond.1.i368
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

for.cond.2.i371:                                  ; preds = %for.cond.1.i368
  call void @__sanitizer_cov_trace_pc() #13
  %name.i369 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call3.i370 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i369, ptr noundef nonnull @.str.208) #14
  br label %if.end155

if.else:                                          ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name121 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name121, ptr noundef nonnull @.str.2, i32 noundef %68) #14
  %82 = ptrtoint ptr %cec_clk to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %cec_clk, align 4
  tail call fastcc void @adv7511_wr(ptr noundef %sd14, i8 noundef zeroext -30, i8 noundef zeroext 1)
  br label %if.end155

if.end155:                                        ; preds = %if.else, %for.cond.2.i371, %for.cond.1.i368.if.end155_crit_edge, %for.cond.i365.if.end155_crit_edge, %if.end152.if.end155_crit_edge
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %85 = ptrtoint ptr %i2c_pktmem_addr to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %i2c_pktmem_addr, align 1
  %87 = lshr i8 %86, 1
  %conv160 = zext i8 %87 to i16
  %call161 = tail call ptr @i2c_new_dummy_device(ptr noundef %84, i16 noundef zeroext %conv160) #11
  %i2c_pktmem162 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 30
  %88 = ptrtoint ptr %i2c_pktmem162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call161, ptr %i2c_pktmem162, align 4
  %cmp.i373 = icmp ugt ptr %call161, inttoptr (i32 -4096 to ptr)
  %name170 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 1, i32 9
  br i1 %cmp.i373, label %do.end168, label %if.end175

do.end168:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name170) #14
  %89 = ptrtoint ptr %i2c_pktmem162 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i2c_pktmem162, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %err_unreg_cec

if.end175:                                        ; preds = %if.end155
  %call178 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 917514, i32 noundef 1, ptr noundef %name170) #11
  %work_queue = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 33
  %92 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call178, ptr %work_queue, align 4
  %cmp180 = icmp eq ptr %call178, null
  br i1 %cmp180, label %do.end185, label %do.body192

do.end185:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name170) #14
  br label %err_unreg_pktmem

do.body192:                                       ; preds = %if.end175
  %edid_handler = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34
  tail call void @__init_work(ptr noundef %edid_handler, i32 noundef 0) #11
  %93 = ptrtoint ptr %edid_handler to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %edid_handler, align 4
  %lockdep_map = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @adv7511_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry199 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34, i32 0, i32 1
  %94 = ptrtoint ptr %entry199 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry199, ptr %entry199, align 4
  %prev.i = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry199, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34, i32 0, i32 2
  %96 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @adv7511_edid_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 34, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @adv7511_probe.__key.28) #11
  tail call fastcc void @adv7511_init_setup(ptr noundef %sd14)
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %97 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %98, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body192.dev_name.exit_crit_edge

do.body192.dev_name.exit_crit_edge:               ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body192.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %100, %if.end.i ], [ %98, %do.body192.dev_name.exit_crit_edge ]
  %call212 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @adv7511_cec_adap_ops, ptr noundef nonnull %call.i, ptr noundef %retval.0.i, i32 noundef 30, i8 noundef zeroext 3) #11
  %cec_adap = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 9
  %101 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call212, ptr %cec_adap, align 4
  %cmp.i.i.not = icmp ugt ptr %call212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then216, label %if.end218

if.then216:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %call212 to i32
  %103 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %104) #11
  br label %err_unreg_pktmem

if.end218:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv7511_set_isr(ptr noundef %sd14, i1 noundef zeroext true)
  tail call fastcc void @adv7511_check_monitor_present_status(ptr noundef %sd14)
  %name225 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr227 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %105 = ptrtoint ptr %addr227 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr227, align 2
  %conv228 = zext i16 %106 to i32
  %shl229 = shl nuw nsw i32 %conv228, 1
  %107 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adapter, align 8
  %name231 = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 12
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name170, ptr noundef %name225, i32 noundef %shl229, ptr noundef %name231) #14
  br label %cleanup

err_unreg_pktmem:                                 ; preds = %if.then216, %do.end185
  %err.0 = phi i32 [ -12, %do.end185 ], [ %102, %if.then216 ]
  %109 = ptrtoint ptr %i2c_pktmem162 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i2c_pktmem162, align 4
  tail call void @i2c_unregister_device(ptr noundef %110) #11
  br label %err_unreg_cec

err_unreg_cec:                                    ; preds = %err_unreg_pktmem, %do.end168
  %err.1 = phi i32 [ %91, %do.end168 ], [ %err.0, %err_unreg_pktmem ]
  %i2c_cec235 = getelementptr inbounds %struct.adv7511_state, ptr %call.i, i32 0, i32 8
  %111 = ptrtoint ptr %i2c_cec235 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c_cec235, align 4
  tail call void @i2c_unregister_device(ptr noundef %112) #11
  br label %err_unreg_edid

err_unreg_edid:                                   ; preds = %err_unreg_cec, %do.end145
  %err.2 = phi i32 [ %79, %do.end145 ], [ %err.1, %err_unreg_cec ]
  %113 = ptrtoint ptr %i2c_edid92 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_edid92, align 4
  tail call void @i2c_unregister_device(ptr noundef %114) #11
  br label %err_hdl

err_hdl:                                          ; preds = %err_unreg_edid, %do.end98, %do.end77, %if.end41.err_hdl_crit_edge, %do.end28.err_hdl_crit_edge
  %err.4 = phi i32 [ %call44, %if.end41.err_hdl_crit_edge ], [ %35, %do.end28.err_hdl_crit_edge ], [ -5, %do.end77 ], [ %62, %do.end98 ], [ %err.2, %err_unreg_edid ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl29) #11
  br label %cleanup

cleanup:                                          ; preds = %err_hdl, %if.end218, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_hdl ], [ 0, %if.end218 ], [ -19, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip_revision = getelementptr i8, ptr %1, i32 412
  %2 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chip_revision, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %name3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = zext i16 %5 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %name5 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef %name, ptr noundef %name3, i32 noundef %shl, ptr noundef %name5) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  tail call fastcc void @adv7511_set_isr(ptr noundef %1, i1 noundef zeroext false)
  tail call fastcc void @adv7511_init_setup(ptr noundef %1)
  %edid_handler = getelementptr i8, ptr %1, i32 2696
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %edid_handler) #11
  %i2c_edid = getelementptr i8, ptr %1, i32 616
  %8 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_edid, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #11
  %i2c_cec = getelementptr i8, ptr %1, i32 420
  %10 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cec, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #11
  %i2c_pktmem = getelementptr i8, ptr %1, i32 620
  %12 = ptrtoint ptr %i2c_pktmem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_pktmem, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #11
  %work_queue = getelementptr i8, ptr %1, i32 2692
  %14 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %15) #11
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %17) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_wr(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %entry
  %call1.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call1.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_edid_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr i8, ptr %work, i32 -2696
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %work, i32 -2580
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name, ptr noundef nonnull @.str.209) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call fastcc zeroext i1 @adv7511_check_edid_status(ptr noundef %sd1)
  br i1 %call7, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %dev_priv.i.i.i = getelementptr i8, ptr %work, i32 -2544
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 66) #11
  %and.i = and i32 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9.if.end32_crit_edge, label %if.then11

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then11:                                        ; preds = %if.end9
  %read_retries = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %read_retries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then11.if.end32_crit_edge, label %if.then12

if.then11.if.end32_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then12:                                        ; preds = %if.then11
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %read_retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %read_retries, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp sgt i32 %6, 0
  br i1 %cmp16, label %do.end20, label %if.then12.do.end27_crit_edge

if.then12.do.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr i8, ptr %work, i32 -2580
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name22, ptr noundef nonnull @.str.209) #14
  br label %do.end27

do.end27:                                         ; preds = %do.end20, %if.then12.do.end27_crit_edge
  %have_monitor = getelementptr i8, ptr %work, i32 -2262
  %7 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %have_monitor, align 2
  %call28 = tail call i32 @adv7511_s_power(ptr noundef %sd1, i32 noundef 0)
  %call29 = tail call i32 @adv7511_s_power(ptr noundef %sd1, i32 noundef 1)
  %work_queue = getelementptr i8, ptr %work, i32 -4
  %8 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %work_queue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 250) #11
  br label %cleanup

if.end32:                                         ; preds = %if.then11.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  tail call fastcc void @adv7511_notify_no_edid(ptr noundef %sd1)
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp34 = icmp sgt i32 %10, 0
  br i1 %cmp34, label %do.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %name40 = getelementptr i8, ptr %work, i32 -2580
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef %name40, ptr noundef nonnull @.str.209) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end32.cleanup_crit_edge, %do.end27, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_init_setup(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %edid1 = getelementptr i8, ptr %sd, i32 624
  %cec_clk2 = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %cec_clk2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cec_clk2, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name, ptr noundef nonnull @.str.216) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -106, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.adv7511_wr.exit_crit_edge, label %for.cond.i

do.end6.adv7511_wr.exit_crit_edge:                ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %do.end6
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -106, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -106, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %do.end6.adv7511_wr.exit_crit_edge
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -105, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %cmp2.i69 = icmp eq i32 %call1.i68, 0
  br i1 %cmp2.i69, label %adv7511_wr.exit.adv7511_wr.exit79_crit_edge, label %for.cond.i72

adv7511_wr.exit.adv7511_wr.exit79_crit_edge:      ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit79

for.cond.i72:                                     ; preds = %adv7511_wr.exit
  %call1.1.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -105, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i70)
  %cmp2.1.i71 = icmp eq i32 %call1.1.i70, 0
  br i1 %cmp2.1.i71, label %for.cond.i72.adv7511_wr.exit79_crit_edge, label %for.cond.1.i75

for.cond.i72.adv7511_wr.exit79_crit_edge:         ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit79

for.cond.1.i75:                                   ; preds = %for.cond.i72
  %call1.2.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -105, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i73)
  %cmp2.2.i74 = icmp eq i32 %call1.2.i73, 0
  br i1 %cmp2.2.i74, label %for.cond.1.i75.adv7511_wr.exit79_crit_edge, label %for.cond.2.i78

for.cond.1.i75.adv7511_wr.exit79_crit_edge:       ; preds = %for.cond.1.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit79

for.cond.2.i78:                                   ; preds = %for.cond.1.i75
  call void @__sanitizer_cov_trace_pc() #13
  %name.i76 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i76, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit79

adv7511_wr.exit79:                                ; preds = %for.cond.2.i78, %for.cond.1.i75.adv7511_wr.exit79_crit_edge, %for.cond.i72.adv7511_wr.exit79_crit_edge, %adv7511_wr.exit.adv7511_wr.exit79_crit_edge
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -42) #11
  %9 = trunc i32 %call1.i.i to i8
  %conv2.i = or i8 %9, -64
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -42, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %adv7511_wr.exit79.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i

adv7511_wr.exit79.adv7511_wr_and_or.exit_crit_edge: ; preds = %adv7511_wr.exit79
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i:                                     ; preds = %adv7511_wr.exit79
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -42, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -42, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, %adv7511_wr.exit79.adv7511_wr_and_or.exit_crit_edge
  %12 = call ptr @memset(ptr %edid1, i32 0, i32 2064)
  %have_monitor = getelementptr i8, ptr %sd, i32 434
  %13 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %have_monitor, align 2
  tail call fastcc void @adv7511_set_isr(ptr noundef %sd, i1 noundef zeroext false)
  %call9 = tail call i32 @adv7511_s_stream(ptr noundef %sd, i32 noundef 0)
  %call10 = tail call i32 @adv7511_s_audio_stream(ptr noundef %sd, i32 noundef 0)
  %i2c_cec = getelementptr i8, ptr %sd, i32 420
  %14 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cec, align 4
  %cmp11 = icmp eq ptr %15, null
  br i1 %cmp11, label %adv7511_wr_and_or.exit.cleanup_crit_edge, label %do.body14

adv7511_wr_and_or.exit.cleanup_crit_edge:         ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body14:                                        ; preds = %adv7511_wr_and_or.exit
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15 = icmp sgt i32 %16, 0
  br i1 %cmp15, label %do.end19, label %do.body14.do.end26_crit_edge

do.body14.do.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %name21 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef %name21, ptr noundef nonnull @.str.216, i32 noundef %1) #14
  br label %do.end26

do.end26:                                         ; preds = %do.end19, %do.body14.do.end26_crit_edge
  %17 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_cec, align 4
  %call1.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 80, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %cmp2.i81 = icmp eq i32 %call1.i80, 0
  br i1 %cmp2.i81, label %do.end26.adv7511_cec_write.exit_crit_edge, label %for.cond.i84

do.end26.adv7511_cec_write.exit_crit_edge:        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.i84:                                     ; preds = %do.end26
  %19 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 80, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i82)
  %cmp2.1.i83 = icmp eq i32 %call1.1.i82, 0
  br i1 %cmp2.1.i83, label %for.cond.i84.adv7511_cec_write.exit_crit_edge, label %for.cond.1.i87

for.cond.i84.adv7511_cec_write.exit_crit_edge:    ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.1.i87:                                   ; preds = %for.cond.i84
  %21 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 80, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i85)
  %cmp2.2.i86 = icmp eq i32 %call1.2.i85, 0
  br i1 %cmp2.2.i86, label %for.cond.1.i87.adv7511_cec_write.exit_crit_edge, label %for.cond.2.i90

for.cond.1.i87.adv7511_cec_write.exit_crit_edge:  ; preds = %for.cond.1.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.2.i90:                                   ; preds = %for.cond.1.i87
  call void @__sanitizer_cov_trace_pc() #13
  %name.i88 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i88, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit

adv7511_cec_write.exit:                           ; preds = %for.cond.2.i90, %for.cond.1.i87.adv7511_cec_write.exit_crit_edge, %for.cond.i84.adv7511_cec_write.exit_crit_edge, %do.end26.adv7511_cec_write.exit_crit_edge
  %23 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_cec, align 4
  %call1.i92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 80, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %cmp2.i93 = icmp eq i32 %call1.i92, 0
  br i1 %cmp2.i93, label %adv7511_cec_write.exit.adv7511_cec_write.exit103_crit_edge, label %for.cond.i96

adv7511_cec_write.exit.adv7511_cec_write.exit103_crit_edge: ; preds = %adv7511_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit103

for.cond.i96:                                     ; preds = %adv7511_cec_write.exit
  %25 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 80, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i94)
  %cmp2.1.i95 = icmp eq i32 %call1.1.i94, 0
  br i1 %cmp2.1.i95, label %for.cond.i96.adv7511_cec_write.exit103_crit_edge, label %for.cond.1.i99

for.cond.i96.adv7511_cec_write.exit103_crit_edge: ; preds = %for.cond.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit103

for.cond.1.i99:                                   ; preds = %for.cond.i96
  %27 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 80, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i97)
  %cmp2.2.i98 = icmp eq i32 %call1.2.i97, 0
  br i1 %cmp2.2.i98, label %for.cond.1.i99.adv7511_cec_write.exit103_crit_edge, label %for.cond.2.i102

for.cond.1.i99.adv7511_cec_write.exit103_crit_edge: ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit103

for.cond.2.i102:                                  ; preds = %for.cond.1.i99
  call void @__sanitizer_cov_trace_pc() #13
  %name.i100 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i100, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit103

adv7511_cec_write.exit103:                        ; preds = %for.cond.2.i102, %for.cond.1.i99.adv7511_cec_write.exit103_crit_edge, %for.cond.i96.adv7511_cec_write.exit103_crit_edge, %adv7511_cec_write.exit.adv7511_cec_write.exit103_crit_edge
  %29 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cec, align 4
  %call1.i105 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %cmp2.i106 = icmp eq i32 %call1.i105, 0
  br i1 %cmp2.i106, label %adv7511_cec_write.exit103.adv7511_cec_write.exit116_crit_edge, label %for.cond.i109

adv7511_cec_write.exit103.adv7511_cec_write.exit116_crit_edge: ; preds = %adv7511_cec_write.exit103
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit116

for.cond.i109:                                    ; preds = %adv7511_cec_write.exit103
  %31 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i107)
  %cmp2.1.i108 = icmp eq i32 %call1.1.i107, 0
  br i1 %cmp2.1.i108, label %for.cond.i109.adv7511_cec_write.exit116_crit_edge, label %for.cond.1.i112

for.cond.i109.adv7511_cec_write.exit116_crit_edge: ; preds = %for.cond.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit116

for.cond.1.i112:                                  ; preds = %for.cond.i109
  %33 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i110)
  %cmp2.2.i111 = icmp eq i32 %call1.2.i110, 0
  br i1 %cmp2.2.i111, label %for.cond.1.i112.adv7511_cec_write.exit116_crit_edge, label %for.cond.2.i115

for.cond.1.i112.adv7511_cec_write.exit116_crit_edge: ; preds = %for.cond.1.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit116

for.cond.2.i115:                                  ; preds = %for.cond.1.i112
  call void @__sanitizer_cov_trace_pc() #13
  %name.i113 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i113, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit116

adv7511_cec_write.exit116:                        ; preds = %for.cond.2.i115, %for.cond.1.i112.adv7511_cec_write.exit116_crit_edge, %for.cond.i109.adv7511_cec_write.exit116_crit_edge, %adv7511_cec_write.exit103.adv7511_cec_write.exit116_crit_edge
  %35 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_cec, align 4
  %call1.i118 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %cmp2.i119 = icmp eq i32 %call1.i118, 0
  br i1 %cmp2.i119, label %adv7511_cec_write.exit116.adv7511_cec_write.exit129_crit_edge, label %for.cond.i122

adv7511_cec_write.exit116.adv7511_cec_write.exit129_crit_edge: ; preds = %adv7511_cec_write.exit116
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit129

for.cond.i122:                                    ; preds = %adv7511_cec_write.exit116
  %37 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i120 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i120)
  %cmp2.1.i121 = icmp eq i32 %call1.1.i120, 0
  br i1 %cmp2.1.i121, label %for.cond.i122.adv7511_cec_write.exit129_crit_edge, label %for.cond.1.i125

for.cond.i122.adv7511_cec_write.exit129_crit_edge: ; preds = %for.cond.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit129

for.cond.1.i125:                                  ; preds = %for.cond.i122
  %39 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i123)
  %cmp2.2.i124 = icmp eq i32 %call1.2.i123, 0
  br i1 %cmp2.2.i124, label %for.cond.1.i125.adv7511_cec_write.exit129_crit_edge, label %for.cond.2.i128

for.cond.1.i125.adv7511_cec_write.exit129_crit_edge: ; preds = %for.cond.1.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit129

for.cond.2.i128:                                  ; preds = %for.cond.1.i125
  call void @__sanitizer_cov_trace_pc() #13
  %name.i126 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i126, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit129

adv7511_cec_write.exit129:                        ; preds = %for.cond.2.i128, %for.cond.1.i125.adv7511_cec_write.exit129_crit_edge, %for.cond.i122.adv7511_cec_write.exit129_crit_edge, %adv7511_cec_write.exit116.adv7511_cec_write.exit129_crit_edge
  %.frozen = freeze i32 %1
  %div = udiv i32 %.frozen, 750000
  %41 = mul i32 %div, 750000
  %rem.decomposed = sub i32 %.frozen, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp31.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp31.not, label %adv7511_cec_write.exit129.if.end40_crit_edge, label %do.end35

adv7511_cec_write.exit129.if.end40_crit_edge:     ; preds = %adv7511_cec_write.exit129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.end35:                                         ; preds = %adv7511_cec_write.exit129
  call void @__sanitizer_cov_trace_pc() #13
  %name37 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %name37, ptr noundef nonnull @.str.216, i32 noundef %1) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end35, %adv7511_cec_write.exit129.if.end40_crit_edge
  %div.tr = trunc i32 %div to i8
  %42 = shl i8 %div.tr, 2
  %conv42 = add i8 %42, -4
  %43 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_cec, align 4
  %call1.i131 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 78, i8 noundef zeroext %conv42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %cmp2.i132 = icmp eq i32 %call1.i131, 0
  br i1 %cmp2.i132, label %if.end40.cleanup_crit_edge, label %for.cond.i135

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i135:                                    ; preds = %if.end40
  %45 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 78, i8 noundef zeroext %conv42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i133)
  %cmp2.1.i134 = icmp eq i32 %call1.1.i133, 0
  br i1 %cmp2.1.i134, label %for.cond.i135.cleanup_crit_edge, label %for.cond.1.i138

for.cond.i135.cleanup_crit_edge:                  ; preds = %for.cond.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i138:                                  ; preds = %for.cond.i135
  %47 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 78, i8 noundef zeroext %conv42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i136)
  %cmp2.2.i137 = icmp eq i32 %call1.2.i136, 0
  br i1 %cmp2.2.i137, label %for.cond.1.i138.cleanup_crit_edge, label %for.cond.2.i141

for.cond.1.i138.cleanup_crit_edge:                ; preds = %for.cond.1.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i141:                                  ; preds = %for.cond.1.i138
  call void @__sanitizer_cov_trace_pc() #13
  %name.i139 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i139, ptr noundef nonnull @.str.138) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i141, %for.cond.1.i138.cleanup_crit_edge, %for.cond.i135.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %adv7511_wr_and_or.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_set_isr(ptr noundef %sd, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %enable, ptr @.str.230, ptr @.str.231
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %name, ptr noundef nonnull @.str.229, ptr noundef nonnull %cond) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %enabled_irq = getelementptr i8, ptr %sd, i32 435
  %1 = ptrtoint ptr %enabled_irq to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled_irq, align 1, !range !495
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %frombool)
  %cmp8 = icmp eq i8 %2, %frombool
  br i1 %cmp8, label %do.end4.cleanup_crit_edge, label %if.end11

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end4
  %3 = ptrtoint ptr %enabled_irq to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %enabled_irq, align 1
  br i1 %enable, label %if.else, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 66) #11
  %and.i = and i32 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i8 -64, i8 -60
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end11.if.end22_crit_edge
  %irqs.0 = phi i8 [ 0, %if.end11.if.end22_crit_edge ], [ %spec.select, %if.else ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %do.body23

do.body23:                                        ; preds = %adv7511_wr.exit.do.body23_crit_edge, %if.end22
  %retries.0 = phi i32 [ 100, %if.end22 ], [ %dec, %adv7511_wr.exit.do.body23_crit_edge ]
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.body23.adv7511_wr.exit_crit_edge, label %for.cond.i

do.body23.adv7511_wr.exit_crit_edge:              ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %do.body23
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %do.body23.adv7511_wr.exit_crit_edge
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i76 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool28.not = icmp eq i32 %retries.0, 0
  %dec = add nsw i32 %retries.0, -1
  %10 = trunc i32 %call1.i76 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %irqs.0, i8 %10)
  %cmp31.not = icmp eq i8 %irqs.0, %10
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %do.end33, label %adv7511_wr.exit.do.body23_crit_edge

adv7511_wr.exit.do.body23_crit_edge:              ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

do.end33:                                         ; preds = %adv7511_wr.exit
  br i1 %cmp31.not, label %do.end33.if.end46_crit_edge, label %do.end41

do.end33.if.end46_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end41:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %name.i) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %do.end33.if.end46_crit_edge
  %cec_enabled_adap = getelementptr i8, ptr %sd, i32 432
  %11 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cec_enabled_adap, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool47.not = icmp eq i8 %12, 0
  %phi.cast = select i1 %enable, i8 57, i8 0
  %spec.select74 = select i1 %tobool47.not, i8 0, i8 %phi.cast
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i78 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext -107) #11
  %15 = trunc i32 %call1.i.i78 to i8
  %16 = and i8 %15, -64
  %conv2.i = or i8 %16, %spec.select74
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.end46.cleanup_crit_edge, label %for.cond.i.i

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end46
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_check_monitor_present_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %mdt.i195 = alloca %struct.adv7511_monitor_detect, align 4
  %mdt.i = alloca %struct.adv7511_monitor_detect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #11
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %call1.i, 64
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv4 = and i32 %call1.i, 255
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.238, ptr @.str.237
  %and7 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.238, ptr @.str.239
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.236, i32 noundef %conv4, ptr noundef nonnull %cond, ptr noundef nonnull %cond9) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %and22.pre-phi = phi i32 [ %.pre, %entry.do.end12_crit_edge ], [ %and, %do.end ]
  %hotplug_ctrl = getelementptr i8, ptr %sd, i32 596
  %3 = ptrtoint ptr %hotplug_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hotplug_ctrl, align 4
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 66) #11
  %and.i = lshr i32 %call1.i.i, 6
  %and.i.lobit = and i32 %and.i, 1
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #11
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %4, i32 noundef %and.i.lobit) #11
  %11 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %14) #11
  %rx_sense_ctrl = getelementptr i8, ptr %sd, i32 600
  %15 = ptrtoint ptr %rx_sense_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_sense_ctrl, align 4
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i185 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 66) #11
  %and.i186 = lshr i32 %call1.i.i185, 5
  %and.i186.lobit = and i32 %and.i186, 1
  %handler.i.i188 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %handler.i.i188 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i188, align 8
  %lock.i.i189 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i.i189 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i.i189, align 4
  tail call void @mutex_lock_nested(ptr noundef %22, i32 noundef 0) #11
  %call.i190 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %16, i32 noundef %and.i186.lobit) #11
  %23 = ptrtoint ptr %handler.i.i188 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i188, align 8
  %lock.i2.i191 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i2.i191 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i2.i191, align 4
  tail call void @mutex_unlock(ptr noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.pre-phi)
  %tobool23.not = icmp eq i32 %and22.pre-phi, 0
  br i1 %tobool23.not, label %do.body109, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end12
  %and25 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %land.lhs.true.do.body29_crit_edge

land.lhs.true.do.body29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %segments = getelementptr i8, ptr %sd, i32 628
  %27 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp eq i32 %28, 0
  br i1 %tobool27.not, label %do.body85.critedge, label %lor.lhs.false.do.body29_crit_edge

lor.lhs.false.do.body29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

do.body29:                                        ; preds = %lor.lhs.false.do.body29_crit_edge, %land.lhs.true.do.body29_crit_edge
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp30 = icmp sgt i32 %29, 0
  br i1 %cmp30, label %do.end35, label %do.body29.do.end42_crit_edge

do.body29.do.end42_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %name37 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %name37, ptr noundef nonnull @.str.236) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %do.body29.do.end42_crit_edge
  %have_monitor = getelementptr i8, ptr %sd, i32 434
  %30 = ptrtoint ptr %have_monitor to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %have_monitor, align 2, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool43.not = icmp eq i8 %31, 0
  br i1 %tobool43.not, label %do.body45, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body45:                                        ; preds = %do.end42
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp46 = icmp sgt i32 %32, 0
  br i1 %cmp46, label %do.end51, label %do.body45.do.end58_crit_edge

do.body45.do.end58_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %name53 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %name53, ptr noundef nonnull @.str.236) #14
  br label %do.end58

do.end58:                                         ; preds = %do.end51, %do.body45.do.end58_crit_edge
  %33 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %have_monitor, align 2
  tail call fastcc void @adv7511_set_isr(ptr noundef %sd, i1 noundef zeroext true)
  %call60 = tail call i32 @adv7511_s_power(ptr noundef %sd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp64 = icmp sgt i32 %34, 0
  br i1 %tobool61.not, label %do.body63, label %if.end77

do.body63:                                        ; preds = %do.end58
  br i1 %cmp64, label %do.end69, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %name71 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %name71, ptr noundef nonnull @.str.236) #14
  br label %cleanup

if.end77:                                         ; preds = %do.end58
  br i1 %cmp64, label %do.end.i, label %if.end77.do.end4.i_crit_edge

if.end77.do.end4.i_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name.i, ptr noundef nonnull @.str.258) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end77.do.end4.i_crit_edge
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 21) #11
  %37 = trunc i32 %call1.i.i.i to i8
  %38 = and i8 %37, -16
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 21, i8 noundef zeroext %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %do.end4.i.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.i.i.i

do.end4.i.adv7511_wr_and_or.exit.i_crit_edge:     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.i.i.i:                                   ; preds = %do.end4.i
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 21, i8 noundef zeroext %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.adv7511_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 21, i8 noundef zeroext %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.adv7511_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit.i

adv7511_wr_and_or.exit.i:                         ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.adv7511_wr_and_or.exit.i_crit_edge, %for.cond.i.i.i.adv7511_wr_and_or.exit.i_crit_edge, %do.end4.i.adv7511_wr_and_or.exit.i_crit_edge
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i20.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 22) #11
  %43 = trunc i32 %call1.i.i20.i to i8
  %44 = and i8 %43, 127
  %45 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 22, i8 noundef zeroext %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i21.i)
  %cmp2.i.i22.i = icmp eq i32 %call1.i7.i21.i, 0
  br i1 %cmp2.i.i22.i, label %adv7511_wr_and_or.exit.i.adv7511_wr_and_or.exit32.i_crit_edge, label %for.cond.i.i25.i

adv7511_wr_and_or.exit.i.adv7511_wr_and_or.exit32.i_crit_edge: ; preds = %adv7511_wr_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit32.i

for.cond.i.i25.i:                                 ; preds = %adv7511_wr_and_or.exit.i
  %call1.1.i.i23.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 22, i8 noundef zeroext %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i23.i)
  %cmp2.1.i.i24.i = icmp eq i32 %call1.1.i.i23.i, 0
  br i1 %cmp2.1.i.i24.i, label %for.cond.i.i25.i.adv7511_wr_and_or.exit32.i_crit_edge, label %for.cond.1.i.i28.i

for.cond.i.i25.i.adv7511_wr_and_or.exit32.i_crit_edge: ; preds = %for.cond.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit32.i

for.cond.1.i.i28.i:                               ; preds = %for.cond.i.i25.i
  %call1.2.i.i26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 22, i8 noundef zeroext %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i26.i)
  %cmp2.2.i.i27.i = icmp eq i32 %call1.2.i.i26.i, 0
  br i1 %cmp2.2.i.i27.i, label %for.cond.1.i.i28.i.adv7511_wr_and_or.exit32.i_crit_edge, label %for.cond.2.i.i31.i

for.cond.1.i.i28.i.adv7511_wr_and_or.exit32.i_crit_edge: ; preds = %for.cond.1.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit32.i

for.cond.2.i.i31.i:                               ; preds = %for.cond.1.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i29.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i29.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit32.i

adv7511_wr_and_or.exit32.i:                       ; preds = %for.cond.2.i.i31.i, %for.cond.1.i.i28.i.adv7511_wr_and_or.exit32.i_crit_edge, %for.cond.i.i25.i.adv7511_wr_and_or.exit32.i_crit_edge, %adv7511_wr_and_or.exit.i.adv7511_wr_and_or.exit32.i_crit_edge
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i34.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %48, i8 noundef zeroext 23) #11
  %49 = trunc i32 %call1.i.i34.i to i8
  %conv2.i.i = or i8 %49, 6
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i35.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i35.i)
  %cmp2.i.i36.i = icmp eq i32 %call1.i7.i35.i, 0
  br i1 %cmp2.i.i36.i, label %adv7511_wr_and_or.exit32.i.adv7511_wr_and_or.exit46.i_crit_edge, label %for.cond.i.i39.i

adv7511_wr_and_or.exit32.i.adv7511_wr_and_or.exit46.i_crit_edge: ; preds = %adv7511_wr_and_or.exit32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit46.i

for.cond.i.i39.i:                                 ; preds = %adv7511_wr_and_or.exit32.i
  %call1.1.i.i37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i37.i)
  %cmp2.1.i.i38.i = icmp eq i32 %call1.1.i.i37.i, 0
  br i1 %cmp2.1.i.i38.i, label %for.cond.i.i39.i.adv7511_wr_and_or.exit46.i_crit_edge, label %for.cond.1.i.i42.i

for.cond.i.i39.i.adv7511_wr_and_or.exit46.i_crit_edge: ; preds = %for.cond.i.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit46.i

for.cond.1.i.i42.i:                               ; preds = %for.cond.i.i39.i
  %call1.2.i.i40.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i40.i)
  %cmp2.2.i.i41.i = icmp eq i32 %call1.2.i.i40.i, 0
  br i1 %cmp2.2.i.i41.i, label %for.cond.1.i.i42.i.adv7511_wr_and_or.exit46.i_crit_edge, label %for.cond.2.i.i45.i

for.cond.1.i.i42.i.adv7511_wr_and_or.exit46.i_crit_edge: ; preds = %for.cond.1.i.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit46.i

for.cond.2.i.i45.i:                               ; preds = %for.cond.1.i.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i43.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i43.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit46.i

adv7511_wr_and_or.exit46.i:                       ; preds = %for.cond.2.i.i45.i, %for.cond.1.i.i42.i.adv7511_wr_and_or.exit46.i_crit_edge, %for.cond.i.i39.i.adv7511_wr_and_or.exit46.i_crit_edge, %adv7511_wr_and_or.exit32.i.adv7511_wr_and_or.exit46.i_crit_edge
  %52 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i48.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 59) #11
  %54 = trunc i32 %call1.i.i48.i to i8
  %55 = and i8 %54, -97
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i49.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 59, i8 noundef zeroext %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i49.i)
  %cmp2.i.i50.i = icmp eq i32 %call1.i7.i49.i, 0
  br i1 %cmp2.i.i50.i, label %adv7511_wr_and_or.exit46.i.adv7511_wr_and_or.exit60.i_crit_edge, label %for.cond.i.i53.i

adv7511_wr_and_or.exit46.i.adv7511_wr_and_or.exit60.i_crit_edge: ; preds = %adv7511_wr_and_or.exit46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit60.i

for.cond.i.i53.i:                                 ; preds = %adv7511_wr_and_or.exit46.i
  %call1.1.i.i51.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 59, i8 noundef zeroext %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i51.i)
  %cmp2.1.i.i52.i = icmp eq i32 %call1.1.i.i51.i, 0
  br i1 %cmp2.1.i.i52.i, label %for.cond.i.i53.i.adv7511_wr_and_or.exit60.i_crit_edge, label %for.cond.1.i.i56.i

for.cond.i.i53.i.adv7511_wr_and_or.exit60.i_crit_edge: ; preds = %for.cond.i.i53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit60.i

for.cond.1.i.i56.i:                               ; preds = %for.cond.i.i53.i
  %call1.2.i.i54.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 59, i8 noundef zeroext %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i54.i)
  %cmp2.2.i.i55.i = icmp eq i32 %call1.2.i.i54.i, 0
  br i1 %cmp2.2.i.i55.i, label %for.cond.1.i.i56.i.adv7511_wr_and_or.exit60.i_crit_edge, label %for.cond.2.i.i59.i

for.cond.1.i.i56.i.adv7511_wr_and_or.exit60.i_crit_edge: ; preds = %for.cond.1.i.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit60.i

for.cond.2.i.i59.i:                               ; preds = %for.cond.1.i.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i57.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i57.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit60.i

adv7511_wr_and_or.exit60.i:                       ; preds = %for.cond.2.i.i59.i, %for.cond.1.i.i56.i.adv7511_wr_and_or.exit60.i_crit_edge, %for.cond.i.i53.i.adv7511_wr_and_or.exit60.i_crit_edge, %adv7511_wr_and_or.exit46.i.adv7511_wr_and_or.exit60.i_crit_edge
  %58 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i62.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 24) #11
  %60 = trunc i32 %call1.i.i62.i to i8
  %61 = and i8 %60, 127
  %62 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i63.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 24, i8 noundef zeroext %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i63.i)
  %cmp2.i.i64.i = icmp eq i32 %call1.i7.i63.i, 0
  br i1 %cmp2.i.i64.i, label %adv7511_wr_and_or.exit60.i.adv7511_wr_and_or.exit74.i_crit_edge, label %for.cond.i.i67.i

adv7511_wr_and_or.exit60.i.adv7511_wr_and_or.exit74.i_crit_edge: ; preds = %adv7511_wr_and_or.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit74.i

for.cond.i.i67.i:                                 ; preds = %adv7511_wr_and_or.exit60.i
  %call1.1.i.i65.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 24, i8 noundef zeroext %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i65.i)
  %cmp2.1.i.i66.i = icmp eq i32 %call1.1.i.i65.i, 0
  br i1 %cmp2.1.i.i66.i, label %for.cond.i.i67.i.adv7511_wr_and_or.exit74.i_crit_edge, label %for.cond.1.i.i70.i

for.cond.i.i67.i.adv7511_wr_and_or.exit74.i_crit_edge: ; preds = %for.cond.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit74.i

for.cond.1.i.i70.i:                               ; preds = %for.cond.i.i67.i
  %call1.2.i.i68.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 24, i8 noundef zeroext %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i68.i)
  %cmp2.2.i.i69.i = icmp eq i32 %call1.2.i.i68.i, 0
  br i1 %cmp2.2.i.i69.i, label %for.cond.1.i.i70.i.adv7511_wr_and_or.exit74.i_crit_edge, label %for.cond.2.i.i73.i

for.cond.1.i.i70.i.adv7511_wr_and_or.exit74.i_crit_edge: ; preds = %for.cond.1.i.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit74.i

for.cond.2.i.i73.i:                               ; preds = %for.cond.1.i.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i71.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i71.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit74.i

adv7511_wr_and_or.exit74.i:                       ; preds = %for.cond.2.i.i73.i, %for.cond.1.i.i70.i.adv7511_wr_and_or.exit74.i_crit_edge, %for.cond.i.i67.i.adv7511_wr_and_or.exit74.i_crit_edge, %adv7511_wr_and_or.exit60.i.adv7511_wr_and_or.exit74.i_crit_edge
  %64 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i76.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 85) #11
  %66 = trunc i32 %call1.i.i76.i to i8
  %67 = and i8 %66, -116
  %conv2.i77.i = or i8 %67, 18
  %68 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i78.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i77.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i78.i)
  %cmp2.i.i79.i = icmp eq i32 %call1.i7.i78.i, 0
  br i1 %cmp2.i.i79.i, label %adv7511_wr_and_or.exit74.i.adv7511_wr_and_or.exit89.i_crit_edge, label %for.cond.i.i82.i

adv7511_wr_and_or.exit74.i.adv7511_wr_and_or.exit89.i_crit_edge: ; preds = %adv7511_wr_and_or.exit74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit89.i

for.cond.i.i82.i:                                 ; preds = %adv7511_wr_and_or.exit74.i
  %call1.1.i.i80.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i77.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i80.i)
  %cmp2.1.i.i81.i = icmp eq i32 %call1.1.i.i80.i, 0
  br i1 %cmp2.1.i.i81.i, label %for.cond.i.i82.i.adv7511_wr_and_or.exit89.i_crit_edge, label %for.cond.1.i.i85.i

for.cond.i.i82.i.adv7511_wr_and_or.exit89.i_crit_edge: ; preds = %for.cond.i.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit89.i

for.cond.1.i.i85.i:                               ; preds = %for.cond.i.i82.i
  %call1.2.i.i83.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i77.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i83.i)
  %cmp2.2.i.i84.i = icmp eq i32 %call1.2.i.i83.i, 0
  br i1 %cmp2.2.i.i84.i, label %for.cond.1.i.i85.i.adv7511_wr_and_or.exit89.i_crit_edge, label %for.cond.2.i.i88.i

for.cond.1.i.i85.i.adv7511_wr_and_or.exit89.i_crit_edge: ; preds = %for.cond.1.i.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit89.i

for.cond.2.i.i88.i:                               ; preds = %for.cond.1.i.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i86.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i86.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit89.i

adv7511_wr_and_or.exit89.i:                       ; preds = %for.cond.2.i.i88.i, %for.cond.1.i.i85.i.adv7511_wr_and_or.exit89.i_crit_edge, %for.cond.i.i82.i.adv7511_wr_and_or.exit89.i_crit_edge, %adv7511_wr_and_or.exit74.i.adv7511_wr_and_or.exit89.i_crit_edge
  %70 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i91.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 68) #11
  %72 = trunc i32 %call1.i.i91.i to i8
  %73 = and i8 %72, -25
  %conv2.i92.i = or i8 %73, 16
  %74 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i93.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 68, i8 noundef zeroext %conv2.i92.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i93.i)
  %cmp2.i.i94.i = icmp eq i32 %call1.i7.i93.i, 0
  br i1 %cmp2.i.i94.i, label %adv7511_wr_and_or.exit89.i.adv7511_wr_and_or.exit104.i_crit_edge, label %for.cond.i.i97.i

adv7511_wr_and_or.exit89.i.adv7511_wr_and_or.exit104.i_crit_edge: ; preds = %adv7511_wr_and_or.exit89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit104.i

for.cond.i.i97.i:                                 ; preds = %adv7511_wr_and_or.exit89.i
  %call1.1.i.i95.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 68, i8 noundef zeroext %conv2.i92.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i95.i)
  %cmp2.1.i.i96.i = icmp eq i32 %call1.1.i.i95.i, 0
  br i1 %cmp2.1.i.i96.i, label %for.cond.i.i97.i.adv7511_wr_and_or.exit104.i_crit_edge, label %for.cond.1.i.i100.i

for.cond.i.i97.i.adv7511_wr_and_or.exit104.i_crit_edge: ; preds = %for.cond.i.i97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit104.i

for.cond.1.i.i100.i:                              ; preds = %for.cond.i.i97.i
  %call1.2.i.i98.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 68, i8 noundef zeroext %conv2.i92.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i98.i)
  %cmp2.2.i.i99.i = icmp eq i32 %call1.2.i.i98.i, 0
  br i1 %cmp2.2.i.i99.i, label %for.cond.1.i.i100.i.adv7511_wr_and_or.exit104.i_crit_edge, label %for.cond.2.i.i103.i

for.cond.1.i.i100.i.adv7511_wr_and_or.exit104.i_crit_edge: ; preds = %for.cond.1.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit104.i

for.cond.2.i.i103.i:                              ; preds = %for.cond.1.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i101.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i101.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit104.i

adv7511_wr_and_or.exit104.i:                      ; preds = %for.cond.2.i.i103.i, %for.cond.1.i.i100.i.adv7511_wr_and_or.exit104.i_crit_edge, %for.cond.i.i97.i.adv7511_wr_and_or.exit104.i_crit_edge, %adv7511_wr_and_or.exit89.i.adv7511_wr_and_or.exit104.i_crit_edge
  %76 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i192 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 86, i8 noundef zeroext -88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i192)
  %cmp2.i.i = icmp eq i32 %call1.i.i192, 0
  br i1 %cmp2.i.i, label %adv7511_wr_and_or.exit104.i.adv7511_wr.exit.i_crit_edge, label %for.cond.i.i

adv7511_wr_and_or.exit104.i.adv7511_wr.exit.i_crit_edge: ; preds = %adv7511_wr_and_or.exit104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.i.i:                                     ; preds = %adv7511_wr_and_or.exit104.i
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 86, i8 noundef zeroext -88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 86, i8 noundef zeroext -88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr.exit.i_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit.i

adv7511_wr.exit.i:                                ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr.exit.i_crit_edge, %for.cond.i.i.adv7511_wr.exit.i_crit_edge, %adv7511_wr_and_or.exit104.i.adv7511_wr.exit.i_crit_edge
  %78 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i106.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext -81) #11
  %80 = trunc i32 %call1.i.i106.i to i8
  %81 = and i8 %80, -19
  %82 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i107.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext -81, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i107.i)
  %cmp2.i.i108.i = icmp eq i32 %call1.i7.i107.i, 0
  br i1 %cmp2.i.i108.i, label %adv7511_wr.exit.i.adv7511_wr_and_or.exit118.i_crit_edge, label %for.cond.i.i111.i

adv7511_wr.exit.i.adv7511_wr_and_or.exit118.i_crit_edge: ; preds = %adv7511_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit118.i

for.cond.i.i111.i:                                ; preds = %adv7511_wr.exit.i
  %call1.1.i.i109.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext -81, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i109.i)
  %cmp2.1.i.i110.i = icmp eq i32 %call1.1.i.i109.i, 0
  br i1 %cmp2.1.i.i110.i, label %for.cond.i.i111.i.adv7511_wr_and_or.exit118.i_crit_edge, label %for.cond.1.i.i114.i

for.cond.i.i111.i.adv7511_wr_and_or.exit118.i_crit_edge: ; preds = %for.cond.i.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit118.i

for.cond.1.i.i114.i:                              ; preds = %for.cond.i.i111.i
  %call1.2.i.i112.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext -81, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i112.i)
  %cmp2.2.i.i113.i = icmp eq i32 %call1.2.i.i112.i, 0
  br i1 %cmp2.2.i.i113.i, label %for.cond.1.i.i114.i.adv7511_wr_and_or.exit118.i_crit_edge, label %for.cond.2.i.i117.i

for.cond.1.i.i114.i.adv7511_wr_and_or.exit118.i_crit_edge: ; preds = %for.cond.1.i.i114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit118.i

for.cond.2.i.i117.i:                              ; preds = %for.cond.1.i.i114.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i115.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i115.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit118.i

adv7511_wr_and_or.exit118.i:                      ; preds = %for.cond.2.i.i117.i, %for.cond.1.i.i114.i.adv7511_wr_and_or.exit118.i_crit_edge, %for.cond.i.i111.i.adv7511_wr_and_or.exit118.i_crit_edge, %adv7511_wr.exit.i.adv7511_wr_and_or.exit118.i_crit_edge
  %84 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i120.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext -70) #11
  %86 = trunc i32 %call1.i.i120.i to i8
  %87 = and i8 %86, 31
  %conv2.i121.i = or i8 %87, 96
  %88 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i122.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i121.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i122.i)
  %cmp2.i.i123.i = icmp eq i32 %call1.i7.i122.i, 0
  br i1 %cmp2.i.i123.i, label %adv7511_wr_and_or.exit118.i.adv7511_wr_and_or.exit133.i_crit_edge, label %for.cond.i.i126.i

adv7511_wr_and_or.exit118.i.adv7511_wr_and_or.exit133.i_crit_edge: ; preds = %adv7511_wr_and_or.exit118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit133.i

for.cond.i.i126.i:                                ; preds = %adv7511_wr_and_or.exit118.i
  %call1.1.i.i124.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i121.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i124.i)
  %cmp2.1.i.i125.i = icmp eq i32 %call1.1.i.i124.i, 0
  br i1 %cmp2.1.i.i125.i, label %for.cond.i.i126.i.adv7511_wr_and_or.exit133.i_crit_edge, label %for.cond.1.i.i129.i

for.cond.i.i126.i.adv7511_wr_and_or.exit133.i_crit_edge: ; preds = %for.cond.i.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit133.i

for.cond.1.i.i129.i:                              ; preds = %for.cond.i.i126.i
  %call1.2.i.i127.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i121.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i127.i)
  %cmp2.2.i.i128.i = icmp eq i32 %call1.2.i.i127.i, 0
  br i1 %cmp2.2.i.i128.i, label %for.cond.1.i.i129.i.adv7511_wr_and_or.exit133.i_crit_edge, label %for.cond.2.i.i132.i

for.cond.1.i.i129.i.adv7511_wr_and_or.exit133.i_crit_edge: ; preds = %for.cond.1.i.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit133.i

for.cond.2.i.i132.i:                              ; preds = %for.cond.1.i.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i130.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i130.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit133.i

adv7511_wr_and_or.exit133.i:                      ; preds = %for.cond.2.i.i132.i, %for.cond.1.i.i129.i.adv7511_wr_and_or.exit133.i_crit_edge, %for.cond.i.i126.i.adv7511_wr_and_or.exit133.i_crit_edge, %adv7511_wr_and_or.exit118.i.adv7511_wr_and_or.exit133.i_crit_edge
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i = icmp sgt i32 %90, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %adv7511_wr_and_or.exit133.i.adv7511_setup.exit_crit_edge

adv7511_wr_and_or.exit133.i.adv7511_setup.exit_crit_edge: ; preds = %adv7511_wr_and_or.exit133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_setup.exit

do.end.i.i:                                       ; preds = %adv7511_wr_and_or.exit133.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i134.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name.i134.i, ptr noundef nonnull @.str.259) #14
  br label %adv7511_setup.exit

adv7511_setup.exit:                               ; preds = %do.end.i.i, %adv7511_wr_and_or.exit133.i.adv7511_setup.exit_crit_edge
  %call3.i135.i = tail call i32 @adv7511_s_i2s_clock_freq(ptr noundef %sd, i32 noundef 48000) #11
  %call4.i.i = tail call i32 @adv7511_s_clock_freq(ptr noundef %sd, i32 noundef 48000) #11
  %call5.i.i = tail call i32 @adv7511_s_routing(ptr noundef %sd, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %hdl.i = getelementptr i8, ptr %sd, i32 228
  %call6.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i) #11
  %91 = ptrtoint ptr %have_monitor to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %have_monitor, align 2, !range !495
  %93 = zext i8 %92 to i32
  %94 = ptrtoint ptr %mdt.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %mdt.i, align 4
  %tobool.not.i.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i.i, label %adv7511_setup.exit.adv7511_notify_monitor_detect.exit_crit_edge, label %land.lhs.true.i.i

adv7511_setup.exit.adv7511_notify_monitor_detect.exit_crit_edge: ; preds = %adv7511_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit

land.lhs.true.i.i:                                ; preds = %adv7511_setup.exit
  %v4l2_dev.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %95 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %v4l2_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %96, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.adv7511_notify_monitor_detect.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.adv7511_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %notify.i.i = getelementptr inbounds %struct.v4l2_device, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %notify.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %notify.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %98, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.adv7511_notify_monitor_detect.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.adv7511_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %98(ptr noundef nonnull %sd, i32 noundef 0, ptr noundef nonnull %mdt.i) #11
  br label %adv7511_notify_monitor_detect.exit

adv7511_notify_monitor_detect.exit:               ; preds = %if.then.i.i, %land.lhs.true2.i.i.adv7511_notify_monitor_detect.exit_crit_edge, %land.lhs.true.i.i.adv7511_notify_monitor_detect.exit_crit_edge, %adv7511_setup.exit.adv7511_notify_monitor_detect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #11
  %read_retries = getelementptr i8, ptr %sd, i32 2680
  %99 = ptrtoint ptr %read_retries to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 8, ptr %read_retries, align 4
  %work_queue = getelementptr i8, ptr %sd, i32 2692
  %100 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %work_queue, align 4
  %edid_handler = getelementptr i8, ptr %sd, i32 2696
  %call.i193 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %edid_handler, i32 noundef 250) #11
  br label %cleanup

do.body85.critedge:                               ; preds = %lor.lhs.false
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp86 = icmp sgt i32 %102, 0
  br i1 %cmp86, label %do.end91, label %do.body85.critedge.do.end98_crit_edge

do.body85.critedge.do.end98_crit_edge:            ; preds = %do.body85.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98

do.end91:                                         ; preds = %do.body85.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %name93 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %name93, ptr noundef nonnull @.str.236) #14
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %do.body85.critedge.do.end98_crit_edge
  %read_retries100 = getelementptr i8, ptr %sd, i32 2680
  %103 = ptrtoint ptr %read_retries100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 8, ptr %read_retries100, align 4
  %work_queue101 = getelementptr i8, ptr %sd, i32 2692
  %104 = ptrtoint ptr %work_queue101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %work_queue101, align 4
  %edid_handler102 = getelementptr i8, ptr %sd, i32 2696
  %call.i194 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %105, ptr noundef %edid_handler102, i32 noundef 250) #11
  br label %cleanup

do.body109:                                       ; preds = %do.end12
  %106 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp110 = icmp sgt i32 %106, 0
  br i1 %cmp110, label %do.end115, label %do.body109.do.end122_crit_edge

do.body109.do.end122_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end122

do.end115:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %name117 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef %name117, ptr noundef nonnull @.str.236) #14
  br label %do.end122

do.end122:                                        ; preds = %do.end115, %do.body109.do.end122_crit_edge
  %have_monitor123 = getelementptr i8, ptr %sd, i32 434
  %107 = ptrtoint ptr %have_monitor123 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %have_monitor123, align 2, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool124.not = icmp eq i8 %108, 0
  br i1 %tobool124.not, label %do.end122.if.end141_crit_edge, label %do.body126

do.end122.if.end141_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

do.body126:                                       ; preds = %do.end122
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp127 = icmp sgt i32 %109, 0
  br i1 %cmp127, label %do.end132, label %do.body126.do.end139_crit_edge

do.body126.do.end139_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end139

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  %name134 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, ptr noundef %name134, ptr noundef nonnull @.str.236) #14
  br label %do.end139

do.end139:                                        ; preds = %do.end132, %do.body126.do.end139_crit_edge
  %110 = ptrtoint ptr %have_monitor123 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %have_monitor123, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i195) #11
  %111 = ptrtoint ptr %mdt.i195 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %mdt.i195, align 4
  %tobool.not.i.i197 = icmp eq ptr %sd, null
  br i1 %tobool.not.i.i197, label %do.end139.adv7511_notify_monitor_detect.exit205_crit_edge, label %land.lhs.true.i.i200

do.end139.adv7511_notify_monitor_detect.exit205_crit_edge: ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit205

land.lhs.true.i.i200:                             ; preds = %do.end139
  %v4l2_dev.i.i198 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %112 = ptrtoint ptr %v4l2_dev.i.i198 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v4l2_dev.i.i198, align 4
  %tobool1.not.i.i199 = icmp eq ptr %113, null
  br i1 %tobool1.not.i.i199, label %land.lhs.true.i.i200.adv7511_notify_monitor_detect.exit205_crit_edge, label %land.lhs.true2.i.i203

land.lhs.true.i.i200.adv7511_notify_monitor_detect.exit205_crit_edge: ; preds = %land.lhs.true.i.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit205

land.lhs.true2.i.i203:                            ; preds = %land.lhs.true.i.i200
  %notify.i.i201 = getelementptr inbounds %struct.v4l2_device, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %notify.i.i201 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %notify.i.i201, align 4
  %tobool4.not.i.i202 = icmp eq ptr %115, null
  br i1 %tobool4.not.i.i202, label %land.lhs.true2.i.i203.adv7511_notify_monitor_detect.exit205_crit_edge, label %if.then.i.i204

land.lhs.true2.i.i203.adv7511_notify_monitor_detect.exit205_crit_edge: ; preds = %land.lhs.true2.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_notify_monitor_detect.exit205

if.then.i.i204:                                   ; preds = %land.lhs.true2.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  call void %115(ptr noundef nonnull %sd, i32 noundef 0, ptr noundef nonnull %mdt.i195) #11
  br label %adv7511_notify_monitor_detect.exit205

adv7511_notify_monitor_detect.exit205:            ; preds = %if.then.i.i204, %land.lhs.true2.i.i203.adv7511_notify_monitor_detect.exit205_crit_edge, %land.lhs.true.i.i200.adv7511_notify_monitor_detect.exit205_crit_edge, %do.end139.adv7511_notify_monitor_detect.exit205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i195) #11
  br label %if.end141

if.end141:                                        ; preds = %adv7511_notify_monitor_detect.exit205, %do.end122.if.end141_crit_edge
  %call142 = call i32 @adv7511_s_power(ptr noundef %sd, i32 noundef 0)
  %edid143 = getelementptr i8, ptr %sd, i32 624
  %116 = call ptr @memset(ptr %edid143, i32 0, i32 2064)
  call fastcc void @adv7511_notify_no_edid(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %do.end98, %adv7511_notify_monitor_detect.exit, %do.end69, %do.body63.cleanup_crit_edge, %do.end42.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %frame.i.i = alloca %union.hdmi_infoframe, align 4
  %buffer.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %edid1 = getelementptr i8, ptr %sd, i32 624
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %power_on = getelementptr i8, ptr %sd, i32 433
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 1, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.61, ptr @.str.60
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name, ptr noundef nonnull %cond) #14
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #11
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.66, ptr @.str.65
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i244 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 66) #11
  %and13 = and i32 %call1.i244, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.66, ptr @.str.65
  %segments = getelementptr i8, ptr %sd, i32 628
  %6 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.66, ptr @.str.67
  %8 = ptrtoint ptr %edid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edid1, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, ptr noundef nonnull %cond11, ptr noundef nonnull %cond15, ptr noundef nonnull %cond17, i32 noundef %9) #14
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i246 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -81) #11
  %and26 = and i32 %call1.i246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.72, ptr @.str.71
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i248 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -95) #11
  %and30 = and i32 %call1.i248, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.74, ptr @.str.73
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, ptr noundef nonnull %cond28, ptr noundef nonnull %cond32) #14
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i250 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -56) #11
  %and41 = and i32 %call1.i250, 15
  %arrayidx = getelementptr [16 x ptr], ptr @adv7511_log_status.states, i32 0, i32 %and41
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i252 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext -56) #11
  %shr = ashr i32 %call1.i252, 4
  %arrayidx43 = getelementptr [16 x ptr], ptr @adv7511_log_status.errors, i32 0, i32 %shr
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx43, align 4
  %edid_detect_counter = getelementptr i8, ptr %sd, i32 2688
  %22 = ptrtoint ptr %edid_detect_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %edid_detect_counter, align 4
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i254 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext -108) #11
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i256 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext -106) #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef %17, ptr noundef %21, i32 noundef %23, i32 noundef %call1.i254, i32 noundef %call1.i256) #14
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i258 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 24) #11
  %and54 = and i32 %call1.i258, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.82, ptr @.str.81
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name, ptr noundef nonnull %cond56) #14
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i260 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext -81) #11
  %and59 = and i32 %call1.i260, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %entry.if.end112_crit_edge, label %if.then

entry.if.end112_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then:                                          ; preds = %entry
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i262 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 10) #11
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i264 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 1) #11
  %and64 = shl i32 %call1.i264, 16
  %shl = and i32 %and64, 983040
  %36 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i266 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 2) #11
  %shl66 = shl i32 %call1.i266, 8
  %or = or i32 %shl66, %shl
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i268 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 3) #11
  %or68 = or i32 %or, %call1.i268
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i270 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 62) #11
  %42 = lshr i32 %call1.i270, 2
  %43 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i272 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext 61) #11
  %conv74 = and i32 %call1.i272, 63
  %45 = and i32 %call1.i262, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool75.not = icmp eq i32 %45, 0
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %. = select i1 %tobool75.not, i8 4, i8 7
  %.292 = select i1 %tobool75.not, i8 5, i8 8
  %.293 = select i1 %tobool75.not, i8 6, i8 9
  %.str.87..str.86 = select i1 %tobool75.not, ptr @.str.87, ptr @.str.86
  %call1.i274 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext %.) #11
  %and78 = shl i32 %call1.i274, 16
  %shl79 = and i32 %and78, 983040
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i276 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext %.292) #11
  %shl81 = shl i32 %call1.i276, 8
  %or82 = or i32 %shl81, %shl79
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i278 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext %.293) #11
  %or84 = or i32 %or82, %call1.i278
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name, ptr noundef nonnull %.str.87..str.86, i32 noundef %or68, i32 noundef %or84) #14
  %conv109 = and i32 %42, 255
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %conv109, i32 noundef %conv74) #14
  %52 = getelementptr inbounds [32 x i8], ptr %buffer.i.i, i32 0, i32 3
  %53 = getelementptr inbounds [32 x i8], ptr %buffer.i.i, i32 0, i32 2
  %i2c_pktmem.i.i.i = getelementptr i8, ptr %sd, i32 620
  br label %for.body.i

for.body.i:                                       ; preds = %log_infoframe.exit.i.for.body.i_crit_edge, %if.then
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i, %log_infoframe.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.adv7511_cfg_read_infoframe], ptr @adv7511_log_infoframes.cri, i32 0, i32 %i.04.i
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #11
  %56 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer.i.i) #11
  %present_reg.i.i = getelementptr [3 x %struct.adv7511_cfg_read_infoframe], ptr @adv7511_log_infoframes.cri, i32 0, i32 %i.04.i, i32 1
  %57 = call ptr @memset(ptr %52, i32 255, i32 29)
  %58 = ptrtoint ptr %present_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %present_reg.i.i, align 4
  %call1.i.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext %59) #11
  %present_mask.i.i = getelementptr [3 x %struct.adv7511_cfg_read_infoframe], ptr @adv7511_log_infoframes.cri, i32 0, i32 %i.04.i, i32 2
  %60 = ptrtoint ptr %present_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %present_mask.i.i, align 1
  %conv.i.i = zext i8 %61 to i32
  %and.i.i = and i32 %call1.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name, ptr noundef %63) #14
  br label %log_infoframe.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %header.i.i = getelementptr [3 x %struct.adv7511_cfg_read_infoframe], ptr @adv7511_log_infoframes.cri, i32 0, i32 %i.04.i, i32 3
  %64 = call ptr @memcpy(ptr %buffer.i.i, ptr %header.i.i, i32 3)
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %53, align 1
  %conv6.i.i = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %66)
  %cmp.i.i = icmp ugt i8 %66, 28
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.end18.i.i

do.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name, ptr noundef nonnull @.str.114, ptr noundef %68, i32 noundef %conv6.i.i) #14
  br label %log_infoframe.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i
  %payload_addr.i.i = getelementptr [3 x %struct.adv7511_cfg_read_infoframe], ptr @adv7511_log_infoframes.cri, i32 0, i32 %i.04.i, i32 4
  %69 = ptrtoint ptr %payload_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %payload_addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.04.i)
  %cmp20.i.i = icmp eq i32 %i.04.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp24107.not.i.i = icmp eq i8 %66, 0
  br i1 %cmp20.i.i, label %for.cond.preheader.i.i, label %for.cond34.preheader.i.i

for.cond34.preheader.i.i:                         ; preds = %if.end18.i.i
  br i1 %cmp24107.not.i.i, label %for.cond34.preheader.i.i.if.end50.i.i_crit_edge, label %for.body38.i.preheader.i

for.cond34.preheader.i.i.if.end50.i.i_crit_edge:  ; preds = %for.cond34.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

for.body38.i.preheader.i:                         ; preds = %for.cond34.preheader.i.i
  %conv40.i.i = zext i16 %70 to i32
  br label %for.body38.i.i

for.cond.preheader.i.i:                           ; preds = %if.end18.i.i
  br i1 %cmp24107.not.i.i, label %for.cond.preheader.i.i.if.end50.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end50.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %conv27.i.i = zext i16 %70 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0108.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add28.i.i = add nuw nsw i32 %i.0108.i.i, %conv27.i.i
  %conv29.i.i = trunc i32 %add28.i.i to i8
  %71 = ptrtoint ptr %i2c_pktmem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_pktmem.i.i.i, align 4
  %call1.i101.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext %conv29.i.i) #11
  %conv31.i.i = trunc i32 %call1.i101.i.i to i8
  %add32.i.i = add nuw nsw i32 %i.0108.i.i, 4
  %arrayidx33.i.i = getelementptr [32 x i8], ptr %buffer.i.i, i32 0, i32 %add32.i.i
  %73 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv31.i.i, ptr %arrayidx33.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0108.i.i, 1
  %exitcond110.not.i.i = icmp eq i32 %inc.i.i, %conv6.i.i
  br i1 %exitcond110.not.i.i, label %for.body.i.i.if.end50.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.if.end50.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

for.body38.i.i:                                   ; preds = %for.body38.i.i.for.body38.i.i_crit_edge, %for.body38.i.preheader.i
  %i.1106.i.i = phi i32 [ %inc48.i.i, %for.body38.i.i.for.body38.i.i_crit_edge ], [ 0, %for.body38.i.preheader.i ]
  %add41.i.i = add nuw nsw i32 %i.1106.i.i, %conv40.i.i
  %conv42.i.i = trunc i32 %add41.i.i to i8
  %74 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i103.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext %conv42.i.i) #11
  %conv44.i.i = trunc i32 %call1.i103.i.i to i8
  %add45.i.i = add nuw nsw i32 %i.1106.i.i, 4
  %arrayidx46.i.i = getelementptr [32 x i8], ptr %buffer.i.i, i32 0, i32 %add45.i.i
  %76 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv44.i.i, ptr %arrayidx46.i.i, align 1
  %inc48.i.i = add nuw nsw i32 %i.1106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc48.i.i, %conv6.i.i
  br i1 %exitcond.not.i.i, label %for.body38.i.i.if.end50.i.i_crit_edge, label %for.body38.i.i.for.body38.i.i_crit_edge

for.body38.i.i.for.body38.i.i_crit_edge:          ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38.i.i

for.body38.i.i.if.end50.i.i_crit_edge:            ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %for.body38.i.i.if.end50.i.i_crit_edge, %for.body.i.i.if.end50.i.i_crit_edge, %for.cond.preheader.i.i.if.end50.i.i_crit_edge, %for.cond34.preheader.i.i.if.end50.i.i_crit_edge
  %77 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %52, align 1
  %78 = add nuw nsw i32 %conv6.i.i, 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end50.i.i
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end50.i.i ]
  %csum.09.i.i.i = phi i32 [ %phi.cast.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end50.i.i ]
  %arrayidx.i.i.i = getelementptr i8, ptr %buffer.i.i, i32 %i.010.i.i.i
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %80 to i32
  %add.i.i.i = add nuw nsw i32 %csum.09.i.i.i, %conv.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %phi.cast.i.i.i = and i32 %add.i.i.i, 255
  %exitcond.not.i.i.i = icmp eq i32 %i.010.i.i.i, %78
  br i1 %exitcond.not.i.i.i, label %hdmi_infoframe_checksum.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

hdmi_infoframe_checksum.exit.i.i:                 ; preds = %for.body.i.i.i
  %phi.cast11.i.i.i = trunc i32 %add.i.i.i to i8
  %conv4.i.i.i = sub i8 0, %phi.cast11.i.i.i
  %81 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv4.i.i.i, ptr %52, align 1
  %call58.i.i = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %frame.i.i, ptr noundef nonnull %buffer.i.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %cmp59.i.i = icmp slt i32 %call58.i.i, 0
  br i1 %cmp59.i.i, label %do.end64.i.i, label %if.end70.i.i

do.end64.i.i:                                     ; preds = %hdmi_infoframe_checksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i, align 4
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name, ptr noundef nonnull @.str.114, ptr noundef %83) #14
  br label %log_infoframe.exit.i

if.end70.i.i:                                     ; preds = %hdmi_infoframe_checksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.121, ptr noundef %dev1.i.i, ptr noundef nonnull %frame.i.i) #11
  br label %log_infoframe.exit.i

log_infoframe.exit.i:                             ; preds = %if.end70.i.i, %do.end64.i.i, %do.end11.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer.i.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i.i) #11
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %log_infoframe.exit.i.if.end112_crit_edge, label %log_infoframe.exit.i.for.body.i_crit_edge

log_infoframe.exit.i.for.body.i_crit_edge:        ; preds = %log_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

log_infoframe.exit.i.if.end112_crit_edge:         ; preds = %log_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end112:                                        ; preds = %log_infoframe.exit.i.if.end112_crit_edge, %entry.if.end112_crit_edge
  %dv_timings = getelementptr i8, ptr %sd, i32 436
  %84 = ptrtoint ptr %dv_timings to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dv_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp = icmp eq i32 %85, 0
  br i1 %cmp, label %if.then114, label %do.end121

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.91, ptr noundef %dv_timings, i1 noundef zeroext false) #11
  br label %do.end129

do.end121:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name) #14
  br label %do.end129

do.end129:                                        ; preds = %do.end121, %if.then114
  %i2c_edid_addr = getelementptr i8, ptr %sd, i32 416
  %86 = ptrtoint ptr %i2c_edid_addr to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i2c_edid_addr, align 4
  %conv133 = zext i8 %87 to i32
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, i32 noundef %conv133) #14
  %i2c_cec = getelementptr i8, ptr %sd, i32 420
  %88 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_cec, align 4
  %cmp135 = icmp eq ptr %89, null
  br i1 %cmp135, label %do.end129.cleanup_crit_edge, label %do.end141

do.end129.cleanup_crit_edge:                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end141:                                        ; preds = %do.end129
  %i2c_cec_addr = getelementptr i8, ptr %sd, i32 418
  %90 = ptrtoint ptr %i2c_cec_addr to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i2c_cec_addr, align 2
  %conv145 = zext i8 %91 to i32
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name, i32 noundef %conv145) #14
  %cec_enabled_adap = getelementptr i8, ptr %sd, i32 432
  %92 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cec_enabled_adap, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool153.not = icmp eq i8 %93, 0
  %cond155 = select i1 %tobool153.not, ptr @.str.73, ptr @.str.74
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, ptr noundef nonnull %cond155) #14
  %94 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cec_enabled_adap, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool158.not = icmp eq i8 %95, 0
  br i1 %tobool158.not, label %do.end141.do.end181_crit_edge, label %for.cond.preheader

do.end141.do.end181_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end181

for.cond.preheader:                               ; preds = %do.end141
  %cec_valid_addrs = getelementptr i8, ptr %sd, i32 431
  %96 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cec_valid_addrs, align 1
  %98 = and i8 %97, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool165.not = icmp eq i8 %98, 0
  br i1 %tobool165.not, label %for.cond.preheader.if.end177_crit_edge, label %do.end170

for.cond.preheader.if.end177_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

do.end170:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx174 = getelementptr i8, ptr %sd, i32 428
  %99 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %100 to i32
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, i32 noundef %conv175) #14
  br label %if.end177

if.end177:                                        ; preds = %do.end170, %for.cond.preheader.if.end177_crit_edge
  %101 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cec_valid_addrs, align 1
  %103 = and i8 %102, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool165.not.1 = icmp eq i8 %103, 0
  br i1 %tobool165.not.1, label %if.end177.if.end177.1_crit_edge, label %do.end170.1

if.end177.if.end177.1_crit_edge:                  ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177.1

do.end170.1:                                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx174.1 = getelementptr i8, ptr %sd, i32 429
  %104 = ptrtoint ptr %arrayidx174.1 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx174.1, align 1
  %conv175.1 = zext i8 %105 to i32
  %call176.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, i32 noundef %conv175.1) #14
  br label %if.end177.1

if.end177.1:                                      ; preds = %do.end170.1, %if.end177.if.end177.1_crit_edge
  %106 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %cec_valid_addrs, align 1
  %108 = and i8 %107, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool165.not.2 = icmp eq i8 %108, 0
  br i1 %tobool165.not.2, label %if.end177.1.do.end181_crit_edge, label %do.end170.2

if.end177.1.do.end181_crit_edge:                  ; preds = %if.end177.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end181

do.end170.2:                                      ; preds = %if.end177.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx174.2 = getelementptr i8, ptr %sd, i32 430
  %109 = ptrtoint ptr %arrayidx174.2 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx174.2, align 1
  %conv175.2 = zext i8 %110 to i32
  %call176.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, i32 noundef %conv175.2) #14
  br label %do.end181

do.end181:                                        ; preds = %do.end170.2, %if.end177.1.do.end181_crit_edge, %do.end141.do.end181_crit_edge
  %i2c_pktmem_addr = getelementptr i8, ptr %sd, i32 417
  %111 = ptrtoint ptr %i2c_pktmem_addr to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %i2c_pktmem_addr, align 1
  %conv185 = zext i8 %112 to i32
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, i32 noundef %conv185) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %do.end129.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %size, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %reg1, align 1
  %shr = lshr i64 %2, 8
  %trunc = trunc i64 %shr to i56
  %3 = zext i56 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i56 %trunc, label %entry.do.end_crit_edge [
    i56 0, label %sw.bb
    i56 1, label %sw.bb5
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %2 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv) #11
  %conv4 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv4, ptr %val, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %i2c_cec = getelementptr i8, ptr %sd, i32 420
  %7 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_cec, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb5.do.end_crit_edge, label %if.then

sw.bb5.do.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %conv8 = trunc i64 %2 to i8
  %9 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_cec, align 4
  %call1.i24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext %conv8) #11
  %conv10 = sext i32 %call1.i24 to i64
  %val11 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %val11 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %conv10, ptr %val11, align 1
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb5.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name, i64 noundef %2) #14
  %call1.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name) #14
  %i2c_cec.i26 = getelementptr i8, ptr %sd, i32 420
  %12 = ptrtoint ptr %i2c_cec.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_cec.i26, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.sw.epilog_crit_edge, label %do.end4.i

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end4.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4.i, %do.end.sw.epilog_crit_edge, %if.then, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %shr = lshr i64 %1, 8
  %trunc = trunc i64 %shr to i56
  %2 = zext i56 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.262)
  switch i56 %trunc, label %entry.do.end_crit_edge [
    i56 0, label %sw.bb
    i56 1, label %sw.bb6
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %val, align 1
  %conv4 = trunc i64 %4 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv, i8 noundef zeroext %conv4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %sw.bb.sw.epilog_crit_edge, label %for.cond.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i:                                       ; preds = %sw.bb
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv, i8 noundef zeroext %conv4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.sw.epilog_crit_edge, label %for.cond.1.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv, i8 noundef zeroext %conv4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.sw.epilog_crit_edge, label %for.cond.2.i

for.cond.1.i.sw.epilog_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %i2c_cec = getelementptr i8, ptr %sd, i32 420
  %7 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_cec, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb6.do.end_crit_edge, label %if.then

sw.bb6.do.end_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %sw.bb6
  %conv9 = trunc i64 %1 to i8
  %val10 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val10 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %val10, align 1
  %conv12 = trunc i64 %10 to i8
  %11 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_cec, align 4
  %call1.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext %conv9, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %cmp2.i26 = icmp eq i32 %call1.i25, 0
  br i1 %cmp2.i26, label %if.then.sw.epilog_crit_edge, label %for.cond.i29

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i29:                                     ; preds = %if.then
  %13 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %conv9, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i27)
  %cmp2.1.i28 = icmp eq i32 %call1.1.i27, 0
  br i1 %cmp2.1.i28, label %for.cond.i29.sw.epilog_crit_edge, label %for.cond.1.i32

for.cond.i29.sw.epilog_crit_edge:                 ; preds = %for.cond.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i32:                                   ; preds = %for.cond.i29
  %15 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext %conv9, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i30)
  %cmp2.2.i31 = icmp eq i32 %call1.2.i30, 0
  br i1 %cmp2.2.i31, label %for.cond.1.i32.sw.epilog_crit_edge, label %for.cond.2.i35

for.cond.1.i32.sw.epilog_crit_edge:               ; preds = %for.cond.1.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.2.i35:                                   ; preds = %for.cond.1.i32
  call void @__sanitizer_cov_trace_pc() #13
  %name.i33 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i33, ptr noundef nonnull @.str.138) #14
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb6.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name, i64 noundef %1) #14
  %call1.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name) #14
  %i2c_cec.i38 = getelementptr i8, ptr %sd, i32 420
  %17 = ptrtoint ptr %i2c_cec.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_cec.i38, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.sw.epilog_crit_edge, label %do.end4.i

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end4.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4.i, %do.end.sw.epilog_crit_edge, %for.cond.2.i35, %for.cond.1.i32.sw.epilog_crit_edge, %for.cond.i29.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %for.cond.2.i, %for.cond.1.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %power_on = getelementptr i8, ptr %sd, i32 433
  %dev_priv.i.i.i85 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %on.tr = phi i32 [ %on, %entry ], [ 0, %tailrecurse.backedge ]
  %ret.known.tr = phi i32 [ 1, %entry ], [ 0, %tailrecurse.backedge ]
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %tailrecurse.do.end4_crit_edge

tailrecurse.do.end4_crit_edge:                    ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on.tr)
  %tobool.not = icmp eq i32 %on.tr, 0
  %cond = select i1 %tobool.not, ptr @.str.61, ptr @.str.60
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %tailrecurse.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on.tr)
  %tobool5 = icmp ne i32 %on.tr, 0
  %frombool = zext i1 %tobool5 to i8
  %1 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %power_on, align 1
  br i1 %tobool5, label %do.end4.for.body_crit_edge, label %if.then7

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

if.then7:                                         ; preds = %do.end4
  %2 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #11
  %4 = trunc i32 %call1.i.i to i8
  %conv2.i = or i8 %4, 64
  %5 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then7.cleanup_crit_edge, label %for.cond.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.then7
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.1.i.i.cleanup.sink.split_crit_edge

for.cond.1.i.i.cleanup.sink.split_crit_edge:      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %adv7511_wr_and_or.exit113.for.body_crit_edge, %do.end4.for.body_crit_edge
  %i.0265 = phi i32 [ %inc, %adv7511_wr_and_or.exit113.for.body_crit_edge ], [ 0, %do.end4.for.body_crit_edge ]
  %7 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i.i86 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 65) #11
  %9 = trunc i32 %call1.i.i86 to i8
  %10 = and i8 %9, -65
  %11 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i7.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i87)
  %cmp2.i.i88 = icmp eq i32 %call1.i7.i87, 0
  br i1 %cmp2.i.i88, label %for.body.adv7511_wr_and_or.exit98_crit_edge, label %for.cond.i.i91

for.body.adv7511_wr_and_or.exit98_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit98

for.cond.i.i91:                                   ; preds = %for.body
  %call1.1.i.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i89)
  %cmp2.1.i.i90 = icmp eq i32 %call1.1.i.i89, 0
  br i1 %cmp2.1.i.i90, label %for.cond.i.i91.adv7511_wr_and_or.exit98_crit_edge, label %for.cond.1.i.i94

for.cond.i.i91.adv7511_wr_and_or.exit98_crit_edge: ; preds = %for.cond.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit98

for.cond.1.i.i94:                                 ; preds = %for.cond.i.i91
  %call1.2.i.i92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i92)
  %cmp2.2.i.i93 = icmp eq i32 %call1.2.i.i92, 0
  br i1 %cmp2.2.i.i93, label %for.cond.1.i.i94.adv7511_wr_and_or.exit98_crit_edge, label %for.cond.2.i.i97

for.cond.1.i.i94.adv7511_wr_and_or.exit98_crit_edge: ; preds = %for.cond.1.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit98

for.cond.2.i.i97:                                 ; preds = %for.cond.1.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit98

adv7511_wr_and_or.exit98:                         ; preds = %for.cond.2.i.i97, %for.cond.1.i.i94.adv7511_wr_and_or.exit98_crit_edge, %for.cond.i.i91.adv7511_wr_and_or.exit98_crit_edge, %for.body.adv7511_wr_and_or.exit98_crit_edge
  %13 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 65) #11
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.end30, label %if.end13

if.end13:                                         ; preds = %adv7511_wr_and_or.exit98
  %15 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i.i100 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 65) #11
  %17 = trunc i32 %call1.i.i100 to i8
  %conv2.i101 = or i8 %17, 64
  %18 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i7.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i102)
  %cmp2.i.i103 = icmp eq i32 %call1.i7.i102, 0
  br i1 %cmp2.i.i103, label %if.end13.adv7511_wr_and_or.exit113_crit_edge, label %for.cond.i.i106

if.end13.adv7511_wr_and_or.exit113_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit113

for.cond.i.i106:                                  ; preds = %if.end13
  %call1.1.i.i104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i104)
  %cmp2.1.i.i105 = icmp eq i32 %call1.1.i.i104, 0
  br i1 %cmp2.1.i.i105, label %for.cond.i.i106.adv7511_wr_and_or.exit113_crit_edge, label %for.cond.1.i.i109

for.cond.i.i106.adv7511_wr_and_or.exit113_crit_edge: ; preds = %for.cond.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit113

for.cond.1.i.i109:                                ; preds = %for.cond.i.i106
  %call1.2.i.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i107)
  %cmp2.2.i.i108 = icmp eq i32 %call1.2.i.i107, 0
  br i1 %cmp2.2.i.i108, label %for.cond.1.i.i109.adv7511_wr_and_or.exit113_crit_edge, label %for.cond.2.i.i112

for.cond.1.i.i109.adv7511_wr_and_or.exit113_crit_edge: ; preds = %for.cond.1.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit113

for.cond.2.i.i112:                                ; preds = %for.cond.1.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit113

adv7511_wr_and_or.exit113:                        ; preds = %for.cond.2.i.i112, %for.cond.1.i.i109.adv7511_wr_and_or.exit113_crit_edge, %for.cond.i.i106.adv7511_wr_and_or.exit113_crit_edge, %if.end13.adv7511_wr_and_or.exit113_crit_edge
  tail call void @msleep(i32 noundef 10) #11
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body16, label %adv7511_wr_and_or.exit113.for.body_crit_edge

adv7511_wr_and_or.exit113.for.body_crit_edge:     ; preds = %adv7511_wr_and_or.exit113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body16:                                        ; preds = %adv7511_wr_and_or.exit113
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp17 = icmp sgt i32 %20, 0
  br i1 %cmp17, label %do.end21, label %do.body16.tailrecurse.backedge_crit_edge

do.body16.tailrecurse.backedge_crit_edge:         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %tailrecurse.backedge

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name, ptr noundef nonnull @.str.140) #14
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %do.end21, %do.body16.tailrecurse.backedge_crit_edge
  br label %tailrecurse

if.end30:                                         ; preds = %adv7511_wr_and_or.exit98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0265)
  %cmp31 = icmp ugt i32 %i.0265, 1
  br i1 %cmp31, label %do.body33, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body33:                                        ; preds = %if.end30
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34 = icmp sgt i32 %21, 0
  br i1 %cmp34, label %do.end38, label %do.body33.if.end46_crit_edge

do.body33.if.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name, ptr noundef nonnull @.str.140, i32 noundef %i.0265) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end38, %do.body33.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -104, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %cmp2.i = icmp eq i32 %call1.i115, 0
  br i1 %cmp2.i, label %if.end46.adv7511_wr.exit_crit_edge, label %for.cond.i

if.end46.adv7511_wr.exit_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %if.end46
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -104, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -104, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %if.end46.adv7511_wr.exit_crit_edge
  %24 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i.i117 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext -102) #11
  %26 = trunc i32 %call1.i.i117 to i8
  %27 = and i8 %26, -114
  %conv2.i118 = or i8 %27, 112
  %28 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i7.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -102, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i119)
  %cmp2.i.i120 = icmp eq i32 %call1.i7.i119, 0
  br i1 %cmp2.i.i120, label %adv7511_wr.exit.adv7511_wr_and_or.exit130_crit_edge, label %for.cond.i.i123

adv7511_wr.exit.adv7511_wr_and_or.exit130_crit_edge: ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit130

for.cond.i.i123:                                  ; preds = %adv7511_wr.exit
  %call1.1.i.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -102, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i121)
  %cmp2.1.i.i122 = icmp eq i32 %call1.1.i.i121, 0
  br i1 %cmp2.1.i.i122, label %for.cond.i.i123.adv7511_wr_and_or.exit130_crit_edge, label %for.cond.1.i.i126

for.cond.i.i123.adv7511_wr_and_or.exit130_crit_edge: ; preds = %for.cond.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit130

for.cond.1.i.i126:                                ; preds = %for.cond.i.i123
  %call1.2.i.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -102, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i124)
  %cmp2.2.i.i125 = icmp eq i32 %call1.2.i.i124, 0
  br i1 %cmp2.2.i.i125, label %for.cond.1.i.i126.adv7511_wr_and_or.exit130_crit_edge, label %for.cond.2.i.i129

for.cond.1.i.i126.adv7511_wr_and_or.exit130_crit_edge: ; preds = %for.cond.1.i.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit130

for.cond.2.i.i129:                                ; preds = %for.cond.1.i.i126
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit130

adv7511_wr_and_or.exit130:                        ; preds = %for.cond.2.i.i129, %for.cond.1.i.i126.adv7511_wr_and_or.exit130_crit_edge, %for.cond.i.i123.adv7511_wr_and_or.exit130_crit_edge, %adv7511_wr.exit.adv7511_wr_and_or.exit130_crit_edge
  %30 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -100, i8 noundef zeroext 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %cmp2.i133 = icmp eq i32 %call1.i132, 0
  br i1 %cmp2.i133, label %adv7511_wr_and_or.exit130.adv7511_wr.exit143_crit_edge, label %for.cond.i136

adv7511_wr_and_or.exit130.adv7511_wr.exit143_crit_edge: ; preds = %adv7511_wr_and_or.exit130
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit143

for.cond.i136:                                    ; preds = %adv7511_wr_and_or.exit130
  %call1.1.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -100, i8 noundef zeroext 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i134)
  %cmp2.1.i135 = icmp eq i32 %call1.1.i134, 0
  br i1 %cmp2.1.i135, label %for.cond.i136.adv7511_wr.exit143_crit_edge, label %for.cond.1.i139

for.cond.i136.adv7511_wr.exit143_crit_edge:       ; preds = %for.cond.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit143

for.cond.1.i139:                                  ; preds = %for.cond.i136
  %call1.2.i137 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -100, i8 noundef zeroext 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i137)
  %cmp2.2.i138 = icmp eq i32 %call1.2.i137, 0
  br i1 %cmp2.2.i138, label %for.cond.1.i139.adv7511_wr.exit143_crit_edge, label %for.cond.2.i142

for.cond.1.i139.adv7511_wr.exit143_crit_edge:     ; preds = %for.cond.1.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit143

for.cond.2.i142:                                  ; preds = %for.cond.1.i139
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit143

adv7511_wr.exit143:                               ; preds = %for.cond.2.i142, %for.cond.1.i139.adv7511_wr.exit143_crit_edge, %for.cond.i136.adv7511_wr.exit143_crit_edge, %adv7511_wr_and_or.exit130.adv7511_wr.exit143_crit_edge
  %32 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i.i145 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext -99) #11
  %34 = trunc i32 %call1.i.i145 to i8
  %35 = and i8 %34, -4
  %conv2.i146 = or i8 %35, 1
  %36 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i7.i147 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i146) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i147)
  %cmp2.i.i148 = icmp eq i32 %call1.i7.i147, 0
  br i1 %cmp2.i.i148, label %adv7511_wr.exit143.adv7511_wr_and_or.exit158_crit_edge, label %for.cond.i.i151

adv7511_wr.exit143.adv7511_wr_and_or.exit158_crit_edge: ; preds = %adv7511_wr.exit143
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit158

for.cond.i.i151:                                  ; preds = %adv7511_wr.exit143
  %call1.1.i.i149 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i146) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i149)
  %cmp2.1.i.i150 = icmp eq i32 %call1.1.i.i149, 0
  br i1 %cmp2.1.i.i150, label %for.cond.i.i151.adv7511_wr_and_or.exit158_crit_edge, label %for.cond.1.i.i154

for.cond.i.i151.adv7511_wr_and_or.exit158_crit_edge: ; preds = %for.cond.i.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit158

for.cond.1.i.i154:                                ; preds = %for.cond.i.i151
  %call1.2.i.i152 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i146) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i152)
  %cmp2.2.i.i153 = icmp eq i32 %call1.2.i.i152, 0
  br i1 %cmp2.2.i.i153, label %for.cond.1.i.i154.adv7511_wr_and_or.exit158_crit_edge, label %for.cond.2.i.i157

for.cond.1.i.i154.adv7511_wr_and_or.exit158_crit_edge: ; preds = %for.cond.1.i.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit158

for.cond.2.i.i157:                                ; preds = %for.cond.1.i.i154
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit158

adv7511_wr_and_or.exit158:                        ; preds = %for.cond.2.i.i157, %for.cond.1.i.i154.adv7511_wr_and_or.exit158_crit_edge, %for.cond.i.i151.adv7511_wr_and_or.exit158_crit_edge, %adv7511_wr.exit143.adv7511_wr_and_or.exit158_crit_edge
  %38 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i160 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -94, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %cmp2.i161 = icmp eq i32 %call1.i160, 0
  br i1 %cmp2.i161, label %adv7511_wr_and_or.exit158.adv7511_wr.exit171_crit_edge, label %for.cond.i164

adv7511_wr_and_or.exit158.adv7511_wr.exit171_crit_edge: ; preds = %adv7511_wr_and_or.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit171

for.cond.i164:                                    ; preds = %adv7511_wr_and_or.exit158
  %call1.1.i162 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -94, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i162)
  %cmp2.1.i163 = icmp eq i32 %call1.1.i162, 0
  br i1 %cmp2.1.i163, label %for.cond.i164.adv7511_wr.exit171_crit_edge, label %for.cond.1.i167

for.cond.i164.adv7511_wr.exit171_crit_edge:       ; preds = %for.cond.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit171

for.cond.1.i167:                                  ; preds = %for.cond.i164
  %call1.2.i165 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -94, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i165)
  %cmp2.2.i166 = icmp eq i32 %call1.2.i165, 0
  br i1 %cmp2.2.i166, label %for.cond.1.i167.adv7511_wr.exit171_crit_edge, label %for.cond.2.i170

for.cond.1.i167.adv7511_wr.exit171_crit_edge:     ; preds = %for.cond.1.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit171

for.cond.2.i170:                                  ; preds = %for.cond.1.i167
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit171

adv7511_wr.exit171:                               ; preds = %for.cond.2.i170, %for.cond.1.i167.adv7511_wr.exit171_crit_edge, %for.cond.i164.adv7511_wr.exit171_crit_edge, %adv7511_wr_and_or.exit158.adv7511_wr.exit171_crit_edge
  %40 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i173 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -93, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %cmp2.i174 = icmp eq i32 %call1.i173, 0
  br i1 %cmp2.i174, label %adv7511_wr.exit171.adv7511_wr.exit184_crit_edge, label %for.cond.i177

adv7511_wr.exit171.adv7511_wr.exit184_crit_edge:  ; preds = %adv7511_wr.exit171
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit184

for.cond.i177:                                    ; preds = %adv7511_wr.exit171
  %call1.1.i175 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -93, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i175)
  %cmp2.1.i176 = icmp eq i32 %call1.1.i175, 0
  br i1 %cmp2.1.i176, label %for.cond.i177.adv7511_wr.exit184_crit_edge, label %for.cond.1.i180

for.cond.i177.adv7511_wr.exit184_crit_edge:       ; preds = %for.cond.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit184

for.cond.1.i180:                                  ; preds = %for.cond.i177
  %call1.2.i178 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -93, i8 noundef zeroext -92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i178)
  %cmp2.2.i179 = icmp eq i32 %call1.2.i178, 0
  br i1 %cmp2.2.i179, label %for.cond.1.i180.adv7511_wr.exit184_crit_edge, label %for.cond.2.i183

for.cond.1.i180.adv7511_wr.exit184_crit_edge:     ; preds = %for.cond.1.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit184

for.cond.2.i183:                                  ; preds = %for.cond.1.i180
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit184

adv7511_wr.exit184:                               ; preds = %for.cond.2.i183, %for.cond.1.i180.adv7511_wr.exit184_crit_edge, %for.cond.i177.adv7511_wr.exit184_crit_edge, %adv7511_wr.exit171.adv7511_wr.exit184_crit_edge
  %42 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i186 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -32, i8 noundef zeroext -48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i186)
  %cmp2.i187 = icmp eq i32 %call1.i186, 0
  br i1 %cmp2.i187, label %adv7511_wr.exit184.adv7511_wr.exit197_crit_edge, label %for.cond.i190

adv7511_wr.exit184.adv7511_wr.exit197_crit_edge:  ; preds = %adv7511_wr.exit184
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit197

for.cond.i190:                                    ; preds = %adv7511_wr.exit184
  %call1.1.i188 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -32, i8 noundef zeroext -48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i188)
  %cmp2.1.i189 = icmp eq i32 %call1.1.i188, 0
  br i1 %cmp2.1.i189, label %for.cond.i190.adv7511_wr.exit197_crit_edge, label %for.cond.1.i193

for.cond.i190.adv7511_wr.exit197_crit_edge:       ; preds = %for.cond.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit197

for.cond.1.i193:                                  ; preds = %for.cond.i190
  %call1.2.i191 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -32, i8 noundef zeroext -48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i191)
  %cmp2.2.i192 = icmp eq i32 %call1.2.i191, 0
  br i1 %cmp2.2.i192, label %for.cond.1.i193.adv7511_wr.exit197_crit_edge, label %for.cond.2.i196

for.cond.1.i193.adv7511_wr.exit197_crit_edge:     ; preds = %for.cond.1.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit197

for.cond.2.i196:                                  ; preds = %for.cond.1.i193
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit197

adv7511_wr.exit197:                               ; preds = %for.cond.2.i196, %for.cond.1.i193.adv7511_wr.exit197_crit_edge, %for.cond.i190.adv7511_wr.exit197_crit_edge, %adv7511_wr.exit184.adv7511_wr.exit197_crit_edge
  %44 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i199 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -7, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i199)
  %cmp2.i200 = icmp eq i32 %call1.i199, 0
  br i1 %cmp2.i200, label %adv7511_wr.exit197.adv7511_wr.exit210_crit_edge, label %for.cond.i203

adv7511_wr.exit197.adv7511_wr.exit210_crit_edge:  ; preds = %adv7511_wr.exit197
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit210

for.cond.i203:                                    ; preds = %adv7511_wr.exit197
  %call1.1.i201 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -7, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i201)
  %cmp2.1.i202 = icmp eq i32 %call1.1.i201, 0
  br i1 %cmp2.1.i202, label %for.cond.i203.adv7511_wr.exit210_crit_edge, label %for.cond.1.i206

for.cond.i203.adv7511_wr.exit210_crit_edge:       ; preds = %for.cond.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit210

for.cond.1.i206:                                  ; preds = %for.cond.i203
  %call1.2.i204 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -7, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i204)
  %cmp2.2.i205 = icmp eq i32 %call1.2.i204, 0
  br i1 %cmp2.2.i205, label %for.cond.1.i206.adv7511_wr.exit210_crit_edge, label %for.cond.2.i209

for.cond.1.i206.adv7511_wr.exit210_crit_edge:     ; preds = %for.cond.1.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit210

for.cond.2.i209:                                  ; preds = %for.cond.1.i206
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit210

adv7511_wr.exit210:                               ; preds = %for.cond.2.i209, %for.cond.1.i206.adv7511_wr.exit210_crit_edge, %for.cond.i203.adv7511_wr.exit210_crit_edge, %adv7511_wr.exit197.adv7511_wr.exit210_crit_edge
  %i2c_edid_addr = getelementptr i8, ptr %sd, i32 416
  %46 = ptrtoint ptr %i2c_edid_addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_edid_addr, align 4
  %48 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i212 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 67, i8 noundef zeroext %47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %cmp2.i213 = icmp eq i32 %call1.i212, 0
  br i1 %cmp2.i213, label %adv7511_wr.exit210.adv7511_wr.exit223_crit_edge, label %for.cond.i216

adv7511_wr.exit210.adv7511_wr.exit223_crit_edge:  ; preds = %adv7511_wr.exit210
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit223

for.cond.i216:                                    ; preds = %adv7511_wr.exit210
  %call1.1.i214 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 67, i8 noundef zeroext %47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i214)
  %cmp2.1.i215 = icmp eq i32 %call1.1.i214, 0
  br i1 %cmp2.1.i215, label %for.cond.i216.adv7511_wr.exit223_crit_edge, label %for.cond.1.i219

for.cond.i216.adv7511_wr.exit223_crit_edge:       ; preds = %for.cond.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit223

for.cond.1.i219:                                  ; preds = %for.cond.i216
  %call1.2.i217 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 67, i8 noundef zeroext %47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i217)
  %cmp2.2.i218 = icmp eq i32 %call1.2.i217, 0
  br i1 %cmp2.2.i218, label %for.cond.1.i219.adv7511_wr.exit223_crit_edge, label %for.cond.2.i222

for.cond.1.i219.adv7511_wr.exit223_crit_edge:     ; preds = %for.cond.1.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit223

for.cond.2.i222:                                  ; preds = %for.cond.1.i219
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit223

adv7511_wr.exit223:                               ; preds = %for.cond.2.i222, %for.cond.1.i219.adv7511_wr.exit223_crit_edge, %for.cond.i216.adv7511_wr.exit223_crit_edge, %adv7511_wr.exit210.adv7511_wr.exit223_crit_edge
  %i2c_pktmem_addr = getelementptr i8, ptr %sd, i32 417
  %50 = ptrtoint ptr %i2c_pktmem_addr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i2c_pktmem_addr, align 1
  %52 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i225 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 69, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i225)
  %cmp2.i226 = icmp eq i32 %call1.i225, 0
  br i1 %cmp2.i226, label %adv7511_wr.exit223.adv7511_wr.exit236_crit_edge, label %for.cond.i229

adv7511_wr.exit223.adv7511_wr.exit236_crit_edge:  ; preds = %adv7511_wr.exit223
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit236

for.cond.i229:                                    ; preds = %adv7511_wr.exit223
  %call1.1.i227 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 69, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i227)
  %cmp2.1.i228 = icmp eq i32 %call1.1.i227, 0
  br i1 %cmp2.1.i228, label %for.cond.i229.adv7511_wr.exit236_crit_edge, label %for.cond.1.i232

for.cond.i229.adv7511_wr.exit236_crit_edge:       ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit236

for.cond.1.i232:                                  ; preds = %for.cond.i229
  %call1.2.i230 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 69, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i230)
  %cmp2.2.i231 = icmp eq i32 %call1.2.i230, 0
  br i1 %cmp2.2.i231, label %for.cond.1.i232.adv7511_wr.exit236_crit_edge, label %for.cond.2.i235

for.cond.1.i232.adv7511_wr.exit236_crit_edge:     ; preds = %for.cond.1.i232
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit236

for.cond.2.i235:                                  ; preds = %for.cond.1.i232
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit236

adv7511_wr.exit236:                               ; preds = %for.cond.2.i235, %for.cond.1.i232.adv7511_wr.exit236_crit_edge, %for.cond.i229.adv7511_wr.exit236_crit_edge, %adv7511_wr.exit223.adv7511_wr.exit236_crit_edge
  %54 = ptrtoint ptr %dev_priv.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i85, align 4
  %call1.i238 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238)
  %cmp2.i239 = icmp eq i32 %call1.i238, 0
  br i1 %cmp2.i239, label %adv7511_wr.exit236.cleanup_crit_edge, label %for.cond.i242

adv7511_wr.exit236.cleanup_crit_edge:             ; preds = %adv7511_wr.exit236
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i242:                                    ; preds = %adv7511_wr.exit236
  %call1.1.i240 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i240)
  %cmp2.1.i241 = icmp eq i32 %call1.1.i240, 0
  br i1 %cmp2.1.i241, label %for.cond.i242.cleanup_crit_edge, label %for.cond.1.i245

for.cond.i242.cleanup_crit_edge:                  ; preds = %for.cond.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i245:                                  ; preds = %for.cond.i242
  %call1.2.i243 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i243)
  %cmp2.2.i244 = icmp eq i32 %call1.2.i243, 0
  br i1 %cmp2.2.i244, label %for.cond.1.i245.cleanup_crit_edge, label %for.cond.1.i245.cleanup.sink.split_crit_edge

for.cond.1.i245.cleanup.sink.split_crit_edge:     ; preds = %for.cond.1.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond.1.i245.cleanup_crit_edge:                ; preds = %for.cond.1.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.cond.1.i245.cleanup.sink.split_crit_edge, %for.cond.1.i.i.cleanup.sink.split_crit_edge
  %call3.i247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.1.i245.cleanup_crit_edge, %for.cond.i242.cleanup_crit_edge, %adv7511_wr.exit236.cleanup_crit_edge, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  ret i32 %ret.known.tr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_isr(ptr noundef %sd, i32 noundef %status, ptr noundef writeonly %handled) #2 align 64 {
entry:
  %msg = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @adv7511_set_isr(ptr noundef %sd, i1 noundef zeroext false)
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -106) #11
  %conv = trunc i32 %call1.i to i8
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i100 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -105) #11
  %conv2 = trunc i32 %call1.i100 to i8
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -106, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %cmp2.i = icmp eq i32 %call1.i102, 0
  br i1 %cmp2.i, label %entry.adv7511_wr.exit_crit_edge, label %for.cond.i

entry.adv7511_wr.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -106, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -106, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %entry.adv7511_wr.exit_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -105, i8 noundef zeroext %conv2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %cmp2.i105 = icmp eq i32 %call1.i104, 0
  br i1 %cmp2.i105, label %adv7511_wr.exit.adv7511_wr.exit115_crit_edge, label %for.cond.i108

adv7511_wr.exit.adv7511_wr.exit115_crit_edge:     ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit115

for.cond.i108:                                    ; preds = %adv7511_wr.exit
  %call1.1.i106 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -105, i8 noundef zeroext %conv2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i106)
  %cmp2.1.i107 = icmp eq i32 %call1.1.i106, 0
  br i1 %cmp2.1.i107, label %for.cond.i108.adv7511_wr.exit115_crit_edge, label %for.cond.1.i111

for.cond.i108.adv7511_wr.exit115_crit_edge:       ; preds = %for.cond.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit115

for.cond.1.i111:                                  ; preds = %for.cond.i108
  %call1.2.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -105, i8 noundef zeroext %conv2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i109)
  %cmp2.2.i110 = icmp eq i32 %call1.2.i109, 0
  br i1 %cmp2.2.i110, label %for.cond.1.i111.adv7511_wr.exit115_crit_edge, label %for.cond.2.i114

for.cond.1.i111.adv7511_wr.exit115_crit_edge:     ; preds = %for.cond.1.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit115

for.cond.2.i114:                                  ; preds = %for.cond.1.i111
  call void @__sanitizer_cov_trace_pc() #13
  %name.i112 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i112, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit115

adv7511_wr.exit115:                               ; preds = %for.cond.2.i114, %for.cond.1.i111.adv7511_wr.exit115_crit_edge, %for.cond.i108.adv7511_wr.exit115_crit_edge, %adv7511_wr.exit.adv7511_wr.exit115_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %adv7511_wr.exit115.do.end11_crit_edge

adv7511_wr.exit115.do.end11_crit_edge:            ; preds = %adv7511_wr.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %adv7511_wr.exit115
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv7 = and i32 %call1.i, 255
  %conv8 = and i32 %call1.i100, 255
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name, ptr noundef nonnull @.str.148, i32 noundef %conv7, i32 noundef %conv8) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %adv7511_wr.exit115.do.end11_crit_edge
  %and = and i32 %call1.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end11.if.end14_crit_edge, label %if.then13

do.end11.if.end14_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv7511_check_monitor_present_status(ptr noundef %sd)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end11.if.end14_crit_edge
  %and16 = and i32 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call fastcc zeroext i1 @adv7511_check_edid_status(ptr noundef %sd)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %and22 = and i32 %call1.i100, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  %i2c_cec.i.i = getelementptr i8, ptr %sd, i32 420
  %9 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 17) #11
  %and.i = and i32 %call1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.then24
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i116 = icmp sgt i32 %11, 0
  br i1 %cmp2.i116, label %do.end.i, label %do.body.i.if.end25_crit_edge

do.body.i.if.end25_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i117 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name.i117, ptr noundef nonnull @.str.187) #14
  br label %if.end25

if.end8.i:                                        ; preds = %if.then24
  %and9.i = and i32 %call1.i100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %if.end25.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.end8.i
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.i = icmp sgt i32 %12, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.body11.i.do.end24.i_crit_edge

do.body11.i.do.end24.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %name19.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name19.i, ptr noundef nonnull @.str.187) #14
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end17.i, %do.body11.i.do.end24.i_crit_edge
  %cec_adap.i = getelementptr i8, ptr %sd, i32 424
  %13 = ptrtoint ptr %cec_adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cec_adap.i, align 4
  %call.i.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %14, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i.i) #11
  br label %if.end25

if.end25.i:                                       ; preds = %if.end8.i
  %and27.i = and i32 %call1.i100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end61.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end25.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp31.i = icmp sgt i32 %15, 0
  br i1 %cmp31.i, label %do.end36.i, label %if.then29.i.do.end43.i_crit_edge

if.then29.i.do.end43.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

do.end36.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %name38.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name38.i, ptr noundef nonnull @.str.187) #14
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end36.i, %if.then29.i.do.end43.i_crit_edge
  %16 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i98.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 20) #11
  %18 = trunc i32 %call1.i98.i to i8
  %conv46.i = and i8 %18, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv46.i)
  %tobool47.not.i = icmp eq i8 %conv46.i, 0
  %spec.select.i = select i1 %tobool47.not.i, i8 32, i8 36
  %19 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i100.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 20) #11
  %21 = lshr i32 %call1.i100.i, 4
  %conv53.i = trunc i32 %21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv53.i)
  %tobool54.not.i = icmp eq i8 %conv53.i, 0
  %22 = or i8 %spec.select.i, 8
  %status.1.i = select i1 %tobool54.not.i, i8 %spec.select.i, i8 %22
  %cec_adap60.i = getelementptr i8, ptr %sd, i32 424
  %23 = ptrtoint ptr %cec_adap60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cec_adap60.i, align 4
  %call.i101.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %24, i8 noundef zeroext %status.1.i, i8 noundef zeroext 0, i8 noundef zeroext %conv46.i, i8 noundef zeroext %conv53.i, i8 noundef zeroext 0, i64 noundef %call.i101.i) #11
  br label %if.end25

if.end61.i:                                       ; preds = %if.end25.i
  %and63.i = and i32 %call1.i100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end61.i.if.end25_crit_edge, label %do.body66.i

if.end61.i.if.end25_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body66.i:                                      ; preds = %if.end61.i
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp67.i = icmp sgt i32 %25, 0
  br i1 %cmp67.i, label %do.end72.i, label %do.body66.i.do.end79.i_crit_edge

do.body66.i.do.end79.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79.i

do.end72.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #13
  %name74.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %name74.i, ptr noundef nonnull @.str.187) #14
  br label %do.end79.i

do.end79.i:                                       ; preds = %do.end72.i, %do.body66.i.do.end79.i_crit_edge
  %cec_adap80.i = getelementptr i8, ptr %sd, i32 424
  %26 = ptrtoint ptr %cec_adap80.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cec_adap80.i, align 4
  %call.i102.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %27, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i102.i) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end79.i, %if.end61.i.if.end25_crit_edge, %do.end43.i, %do.end24.i, %do.end.i, %do.body.i.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %and27 = and i32 %call1.i100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end69_crit_edge, label %if.then29

if.end25.if.end69_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then29:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #11
  %28 = call ptr @memset(ptr %msg, i32 255, i32 56)
  %i2c_cec.i = getelementptr i8, ptr %sd, i32 420
  %29 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cec.i, align 4
  %call1.i118 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 37) #11
  %and32 = and i32 %call1.i118, 31
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and32, ptr %len, align 8
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp34 = icmp sgt i32 %32, 0
  br i1 %cmp34, label %do.end39, label %if.then29.do.end47_crit_edge

if.then29.do.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end39:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %name41 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name41, ptr noundef nonnull @.str.148, i32 noundef %and32) #14
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %len, align 8
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %if.then29.do.end47_crit_edge
  %34 = phi i32 [ %.pr, %do.end39 ], [ %and32, %if.then29.do.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %34)
  %cmp49 = icmp ugt i32 %34, 16
  br i1 %cmp49, label %if.then51, label %if.end53thread-pre-split

if.then51:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %len, align 8
  br label %for.body.preheader

if.end53thread-pre-split:                         ; preds = %do.end47
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr146 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr146)
  %phi.cmp = icmp eq i32 %.pr146, 0
  br i1 %phi.cmp, label %if.end53thread-pre-split.if.end68_crit_edge, label %if.end53thread-pre-split.for.body.preheader_crit_edge

if.end53thread-pre-split.for.body.preheader_crit_edge: ; preds = %if.end53thread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.end53thread-pre-split.if.end68_crit_edge:      ; preds = %if.end53thread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

for.body.preheader:                               ; preds = %if.end53thread-pre-split.for.body.preheader_crit_edge, %if.then51
  %37 = phi i32 [ %.pr146, %if.end53thread-pre-split.for.body.preheader_crit_edge ], [ 16, %if.then51 ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv57149 = phi i32 [ %conv57, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0148 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add i8 %i.0148, 21
  %38 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_cec.i, align 4
  %call1.i120 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext %add) #11
  %conv64 = trunc i32 %call1.i120 to i8
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %conv57149
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv64, ptr %arrayidx, align 1
  %inc = add i8 %i.0148, 1
  %conv57 = zext i8 %inc to i32
  %cmp59 = icmp ugt i32 %37, %conv57
  br i1 %cmp59, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %41 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_cec.i, align 4
  %call1.i122 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %cmp2.i123 = icmp eq i32 %call1.i122, 0
  br i1 %cmp2.i123, label %for.end.adv7511_cec_write.exit_crit_edge, label %for.cond.i126

for.end.adv7511_cec_write.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.i126:                                    ; preds = %for.end
  %43 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_cec.i, align 4
  %call1.1.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i124)
  %cmp2.1.i125 = icmp eq i32 %call1.1.i124, 0
  br i1 %cmp2.1.i125, label %for.cond.i126.adv7511_cec_write.exit_crit_edge, label %for.cond.1.i129

for.cond.i126.adv7511_cec_write.exit_crit_edge:   ; preds = %for.cond.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.1.i129:                                  ; preds = %for.cond.i126
  %45 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_cec.i, align 4
  %call1.2.i127 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i127)
  %cmp2.2.i128 = icmp eq i32 %call1.2.i127, 0
  br i1 %cmp2.2.i128, label %for.cond.1.i129.adv7511_cec_write.exit_crit_edge, label %for.cond.2.i132

for.cond.1.i129.adv7511_cec_write.exit_crit_edge: ; preds = %for.cond.1.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.2.i132:                                  ; preds = %for.cond.1.i129
  call void @__sanitizer_cov_trace_pc() #13
  %name.i130 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i130, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit

adv7511_cec_write.exit:                           ; preds = %for.cond.2.i132, %for.cond.1.i129.adv7511_cec_write.exit_crit_edge, %for.cond.i126.adv7511_cec_write.exit_crit_edge, %for.end.adv7511_cec_write.exit_crit_edge
  %47 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_cec.i, align 4
  %call1.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 74, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %cmp2.i135 = icmp eq i32 %call1.i134, 0
  br i1 %cmp2.i135, label %adv7511_cec_write.exit.adv7511_cec_write.exit145_crit_edge, label %for.cond.i138

adv7511_cec_write.exit.adv7511_cec_write.exit145_crit_edge: ; preds = %adv7511_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit145

for.cond.i138:                                    ; preds = %adv7511_cec_write.exit
  %49 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_cec.i, align 4
  %call1.1.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 74, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i136)
  %cmp2.1.i137 = icmp eq i32 %call1.1.i136, 0
  br i1 %cmp2.1.i137, label %for.cond.i138.adv7511_cec_write.exit145_crit_edge, label %for.cond.1.i141

for.cond.i138.adv7511_cec_write.exit145_crit_edge: ; preds = %for.cond.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit145

for.cond.1.i141:                                  ; preds = %for.cond.i138
  %51 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_cec.i, align 4
  %call1.2.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext 74, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i139)
  %cmp2.2.i140 = icmp eq i32 %call1.2.i139, 0
  br i1 %cmp2.2.i140, label %for.cond.1.i141.adv7511_cec_write.exit145_crit_edge, label %for.cond.2.i144

for.cond.1.i141.adv7511_cec_write.exit145_crit_edge: ; preds = %for.cond.1.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit145

for.cond.2.i144:                                  ; preds = %for.cond.1.i141
  call void @__sanitizer_cov_trace_pc() #13
  %name.i142 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i142, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit145

adv7511_cec_write.exit145:                        ; preds = %for.cond.2.i144, %for.cond.1.i141.adv7511_cec_write.exit145_crit_edge, %for.cond.i138.adv7511_cec_write.exit145_crit_edge, %adv7511_cec_write.exit.adv7511_cec_write.exit145_crit_edge
  %cec_adap = getelementptr i8, ptr %sd, i32 424
  %53 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cec_adap, align 4
  %call.i = tail call i64 @ktime_get() #11
  call void @cec_received_msg_ts(ptr noundef %54, ptr noundef nonnull %msg, i64 noundef %call.i) #11
  br label %if.end68

if.end68:                                         ; preds = %adv7511_cec_write.exit145, %if.end53thread-pre-split.if.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #11
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end25.if.end69_crit_edge
  call fastcc void @adv7511_set_isr(ptr noundef %sd, i1 noundef zeroext true)
  %tobool70.not = icmp eq ptr %handled, null
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %handled, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_unpack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_infoframe_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv_smbus_read_byte_data(ptr nocapture noundef readonly %client, i8 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %conv9.i = zext i8 %command to i32
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #11
  %0 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i, align 8
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr.i, align 2
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %client, align 8
  %call.i = call i32 @i2c_smbus_xfer(ptr noundef %2, i16 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  br label %cleanup18

do.end:                                           ; preds = %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge
  %i.038.lcssa.ph = phi i32 [ 2, %for.inc.1.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ]
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 2
  %conv.i41 = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  %11 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  %conv = zext i16 %20 to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %14, i32 noundef %18, i32 noundef %conv, i32 noundef %i.038.lcssa.ph) #14
  br label %cleanup18

for.inc:                                          ; preds = %entry
  %21 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i.i, align 4
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i, align 2
  %conv6.i = zext i16 %30 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %24, i32 noundef %28, i32 noundef %conv6.i, i32 noundef %conv6.i, i32 noundef %conv9.i) #14
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #11
  %31 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %36 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %client, align 8
  %call.i.1 = call i32 @i2c_smbus_xfer(ptr noundef %33, i16 noundef zeroext %35, i16 noundef zeroext %37, i8 noundef zeroext 1, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %38 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i, align 8
  %nr.i.i.1 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i.i.1, align 4
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i, align 2
  %conv6.i.1 = zext i16 %47 to i32
  %call10.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %41, i32 noundef %45, i32 noundef %conv6.i.1, i32 noundef %conv6.i.1, i32 noundef %conv9.i) #14
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #11
  %48 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 8
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr.i, align 2
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %client, align 8
  %call.i.2 = call i32 @i2c_smbus_xfer(ptr noundef %50, i16 noundef zeroext %52, i16 noundef zeroext %54, i8 noundef zeroext 1, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i, align 8
  %nr.i.i.2 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %nr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr.i.i.2, align 4
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr.i, align 2
  %conv6.i.2 = zext i16 %64 to i32
  %call10.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %58, i32 noundef %62, i32 noundef %conv6.i.2, i32 noundef %conv6.i.2, i32 noundef %conv9.i) #14
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  %65 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter.i, align 8
  %nr.i29 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %nr.i29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr.i29, align 4
  %73 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i, align 2
  %conv16 = zext i16 %74 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %68, i32 noundef %72, i32 noundef %conv16) #14
  br label %cleanup18

cleanup18:                                        ; preds = %for.inc.2, %do.end, %if.then
  %retval.2 = phi i32 [ -1, %for.inc.2 ], [ %conv.i41, %do.end ], [ %conv.i, %if.then ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @adv7511_check_edid_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %b.i = alloca [128 x i8], align 1
  %ed = alloca %struct.adv7511_edid_detect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -59) #11
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %read_retries = getelementptr i8, ptr %sd, i32 2680
  %3 = ptrtoint ptr %read_retries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_retries, align 4
  %sub = sub i32 8, %4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name, ptr noundef nonnull @.str.153, i32 noundef %sub) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %edid7 = getelementptr i8, ptr %sd, i32 624
  %complete = getelementptr i8, ptr %sd, i32 2684
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %complete, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end9, label %do.end6.cleanup161_crit_edge

do.end6.cleanup161_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup161

if.end9:                                          ; preds = %do.end6
  %and = and i32 %call1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end9.cleanup161_crit_edge, label %if.then12

if.end9.cleanup161_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup161

if.then12:                                        ; preds = %if.end9
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i217 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -60) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ed) #11
  %9 = call ptr @memset(ptr %ed, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i217)
  %cmp14 = icmp sgt i32 %call1.i217, 7
  br i1 %cmp14, label %do.end19, label %do.body25

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %name21 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name21) #14
  br label %cleanup

do.body25:                                        ; preds = %if.then12
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26 = icmp sgt i32 %10, 0
  br i1 %cmp26, label %do.end38, label %do.end38.thread

do.end38.thread:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %mul251 = shl i32 %call1.i217, 8
  %arrayidx252 = getelementptr %struct.adv7511_state, ptr %add.ptr.i, i32 0, i32 31, i32 2, i32 %mul251
  br label %do.end4.i

do.end38:                                         ; preds = %do.body25
  %name33 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name33, ptr noundef nonnull @.str.153, i32 noundef %call1.i217) #14
  %.pr = load i32, ptr @debug, align 4
  %mul = shl i32 %call1.i217, 8
  %arrayidx = getelementptr %struct.adv7511_state, ptr %add.ptr.i, i32 0, i32 31, i32 2, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 0
  br i1 %cmp.i, label %do.end.i, label %do.end38.do.end4.i_crit_edge

do.end38.do.end4.i_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name33, ptr noundef nonnull @.str.173) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end38.do.end4.i_crit_edge, %do.end38.thread
  %arrayidx256 = phi ptr [ %arrayidx252, %do.end38.thread ], [ %arrayidx, %do.end.i ], [ %arrayidx, %do.end38.do.end4.i_crit_edge ]
  %mul255 = phi i32 [ %mul251, %do.end38.thread ], [ %mul, %do.end.i ], [ %mul, %do.end38.do.end4.i_crit_edge ]
  %data254 = getelementptr i8, ptr %sd, i32 632
  %i2c_edid.i = getelementptr i8, ptr %sd, i32 616
  %11 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_edid.i, align 4
  %call8.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %arrayidx256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end4.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.i

do.end4.i.adv7511_edid_rd.exit_crit_edge:         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.i:                                       ; preds = %do.end4.i
  %13 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %arrayidx256, i32 32
  %call8.1.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %14, i8 noundef zeroext 32, i8 noundef zeroext 32, ptr noundef %add.ptr.1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %cmp9.1.i = icmp slt i32 %call8.1.i, 0
  br i1 %cmp9.1.i, label %for.cond.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_edid_rd.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %15 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %arrayidx256, i32 64
  %call8.2.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %16, i8 noundef zeroext 64, i8 noundef zeroext 32, ptr noundef %add.ptr.2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i)
  %cmp9.2.i = icmp slt i32 %call8.2.i, 0
  br i1 %cmp9.2.i, label %for.cond.1.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %17 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %arrayidx256, i32 96
  %call8.3.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 96, i8 noundef zeroext 32, ptr noundef %add.ptr.3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3.i)
  %cmp9.3.i = icmp slt i32 %call8.3.i, 0
  br i1 %cmp9.3.i, label %for.cond.2.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %19 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %arrayidx256, i32 128
  %call8.4.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %20, i8 noundef zeroext -128, i8 noundef zeroext 32, ptr noundef %add.ptr.4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4.i)
  %cmp9.4.i = icmp slt i32 %call8.4.i, 0
  br i1 %cmp9.4.i, label %for.cond.3.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %21 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %arrayidx256, i32 160
  %call8.5.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %22, i8 noundef zeroext -96, i8 noundef zeroext 32, ptr noundef %add.ptr.5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5.i)
  %cmp9.5.i = icmp slt i32 %call8.5.i, 0
  br i1 %cmp9.5.i, label %for.cond.4.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %23 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %arrayidx256, i32 192
  %call8.6.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %24, i8 noundef zeroext -64, i8 noundef zeroext 32, ptr noundef %add.ptr.6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.6.i)
  %cmp9.6.i = icmp slt i32 %call8.6.i, 0
  br i1 %cmp9.6.i, label %for.cond.5.i.adv7511_edid_rd.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %25 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_edid.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %arrayidx256, i32 224
  %call8.7.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %26, i8 noundef zeroext -32, i8 noundef zeroext 32, ptr noundef %add.ptr.7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.7.i)
  %cmp9.7.i = icmp slt i32 %call8.7.i, 0
  br i1 %cmp9.7.i, label %for.cond.6.i.adv7511_edid_rd.exit_crit_edge, label %if.then42

for.cond.6.i.adv7511_edid_rd.exit_crit_edge:      ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_edid_rd.exit

adv7511_edid_rd.exit:                             ; preds = %for.cond.6.i.adv7511_edid_rd.exit_crit_edge, %for.cond.5.i.adv7511_edid_rd.exit_crit_edge, %for.cond.4.i.adv7511_edid_rd.exit_crit_edge, %for.cond.3.i.adv7511_edid_rd.exit_crit_edge, %for.cond.2.i.adv7511_edid_rd.exit_crit_edge, %for.cond.1.i.adv7511_edid_rd.exit_crit_edge, %for.cond.i.adv7511_edid_rd.exit_crit_edge, %do.end4.i.adv7511_edid_rd.exit_crit_edge
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name16.i, ptr noundef nonnull @.str.173) #14
  br label %if.end87

if.then42:                                        ; preds = %for.cond.6.i
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i218 = icmp sgt i32 %27, 1
  br i1 %cmp.i218, label %do.end.i220, label %if.then42.adv7511_dbg_dump_edid.exit_crit_edge

if.then42.adv7511_dbg_dump_edid.exit_crit_edge:   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_dbg_dump_edid.exit

do.end.i220:                                      ; preds = %if.then42
  %name.i219 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name.i219, i32 noundef %call1.i217) #14
  %add.ptr.i221 = getelementptr inbounds i8, ptr %b.i, i32 6
  %add.ptr.i221.1 = getelementptr inbounds i8, ptr %b.i, i32 12
  %add.ptr.i221.2 = getelementptr inbounds i8, ptr %b.i, i32 18
  %add.ptr.i221.3 = getelementptr inbounds i8, ptr %b.i, i32 24
  %add.ptr.i221.4 = getelementptr inbounds i8, ptr %b.i, i32 30
  %add.ptr.i221.5 = getelementptr inbounds i8, ptr %b.i, i32 36
  %add.ptr.i221.6 = getelementptr inbounds i8, ptr %b.i, i32 42
  %add.ptr.i221.7 = getelementptr inbounds i8, ptr %b.i, i32 48
  %add.ptr.i221.8 = getelementptr inbounds i8, ptr %b.i, i32 54
  %add.ptr.i221.9 = getelementptr inbounds i8, ptr %b.i, i32 60
  %add.ptr.i221.10 = getelementptr inbounds i8, ptr %b.i, i32 66
  %add.ptr.i221.11 = getelementptr inbounds i8, ptr %b.i, i32 72
  %add.ptr.i221.12 = getelementptr inbounds i8, ptr %b.i, i32 78
  %add.ptr.i221.13 = getelementptr inbounds i8, ptr %b.i, i32 84
  %add.ptr.i221.14 = getelementptr inbounds i8, ptr %b.i, i32 90
  %add.ptr.i221.15 = getelementptr inbounds i8, ptr %b.i, i32 96
  br label %for.body.i

for.body.i:                                       ; preds = %for.body26.preheader.i.for.body.i_crit_edge, %do.end.i220
  %i.05.i = phi i32 [ 0, %do.end.i220 ], [ %add.i, %for.body26.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %b.i) #11
  %28 = call ptr @memset(ptr %b.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.05.i)
  %cmp8.i = icmp eq i32 %i.05.i, 128
  br i1 %cmp8.i, label %do.end15.i, label %for.body.i.for.body26.preheader.i_crit_edge

for.body.i.for.body26.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.preheader.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name.i219) #14
  br label %for.body26.preheader.i

for.body26.preheader.i:                           ; preds = %do.end15.i, %for.body.i.for.body26.preheader.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %arrayidx256, i32 %i.05.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %30 to i32
  %call27.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %b.i, ptr noundef nonnull @.str.182, i32 noundef %conv.i) #11
  %inc.i = or i32 %i.05.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %arrayidx256, i32 %inc.i
  %31 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %32 to i32
  %call27.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221, ptr noundef nonnull @.str.182, i32 noundef %conv.i.1) #11
  %inc.i.1 = or i32 %i.05.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.1
  %33 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %34 to i32
  %call27.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.1, ptr noundef nonnull @.str.182, i32 noundef %conv.i.2) #11
  %inc.i.2 = or i32 %i.05.i, 3
  %arrayidx.i.3 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.2
  %35 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %36 to i32
  %call27.i.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.2, ptr noundef nonnull @.str.182, i32 noundef %conv.i.3) #11
  %inc.i.3 = or i32 %i.05.i, 4
  %arrayidx.i.4 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.3
  %37 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.4, align 1
  %conv.i.4 = zext i8 %38 to i32
  %call27.i.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.3, ptr noundef nonnull @.str.182, i32 noundef %conv.i.4) #11
  %inc.i.4 = or i32 %i.05.i, 5
  %arrayidx.i.5 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.4
  %39 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.5, align 1
  %conv.i.5 = zext i8 %40 to i32
  %call27.i.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.4, ptr noundef nonnull @.str.182, i32 noundef %conv.i.5) #11
  %inc.i.5 = or i32 %i.05.i, 6
  %arrayidx.i.6 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.5
  %41 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.6, align 1
  %conv.i.6 = zext i8 %42 to i32
  %call27.i.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.5, ptr noundef nonnull @.str.182, i32 noundef %conv.i.6) #11
  %inc.i.6 = or i32 %i.05.i, 7
  %arrayidx.i.7 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.6
  %43 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.7, align 1
  %conv.i.7 = zext i8 %44 to i32
  %call27.i.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.6, ptr noundef nonnull @.str.182, i32 noundef %conv.i.7) #11
  %inc.i.7 = or i32 %i.05.i, 8
  %arrayidx.i.8 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.7
  %45 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.8, align 1
  %conv.i.8 = zext i8 %46 to i32
  %call27.i.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.7, ptr noundef nonnull @.str.182, i32 noundef %conv.i.8) #11
  %inc.i.8 = or i32 %i.05.i, 9
  %arrayidx.i.9 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.8
  %47 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.9, align 1
  %conv.i.9 = zext i8 %48 to i32
  %call27.i.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.8, ptr noundef nonnull @.str.182, i32 noundef %conv.i.9) #11
  %inc.i.9 = or i32 %i.05.i, 10
  %arrayidx.i.10 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.9
  %49 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.10, align 1
  %conv.i.10 = zext i8 %50 to i32
  %call27.i.10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.9, ptr noundef nonnull @.str.182, i32 noundef %conv.i.10) #11
  %inc.i.10 = or i32 %i.05.i, 11
  %arrayidx.i.11 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.10
  %51 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.11, align 1
  %conv.i.11 = zext i8 %52 to i32
  %call27.i.11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.10, ptr noundef nonnull @.str.182, i32 noundef %conv.i.11) #11
  %inc.i.11 = or i32 %i.05.i, 12
  %arrayidx.i.12 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.11
  %53 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.12, align 1
  %conv.i.12 = zext i8 %54 to i32
  %call27.i.12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.11, ptr noundef nonnull @.str.182, i32 noundef %conv.i.12) #11
  %inc.i.12 = or i32 %i.05.i, 13
  %arrayidx.i.13 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.12
  %55 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.13, align 1
  %conv.i.13 = zext i8 %56 to i32
  %call27.i.13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.12, ptr noundef nonnull @.str.182, i32 noundef %conv.i.13) #11
  %inc.i.13 = or i32 %i.05.i, 14
  %arrayidx.i.14 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.13
  %57 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.14, align 1
  %conv.i.14 = zext i8 %58 to i32
  %call27.i.14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.13, ptr noundef nonnull @.str.182, i32 noundef %conv.i.14) #11
  %inc.i.14 = or i32 %i.05.i, 15
  %arrayidx.i.15 = getelementptr i8, ptr %arrayidx256, i32 %inc.i.14
  %59 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.15, align 1
  %conv.i.15 = zext i8 %60 to i32
  %call27.i.15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i221.14, ptr noundef nonnull @.str.182, i32 noundef %conv.i.15) #11
  %add.i = add nuw nsw i32 %i.05.i, 16
  %61 = ptrtoint ptr %add.ptr.i221.15 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %add.ptr.i221.15, align 1
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name.i219, ptr noundef nonnull %b.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %b.i) #11
  %cmp6.i = icmp ult i32 %i.05.i, 240
  br i1 %cmp6.i, label %for.body26.preheader.i.for.body.i_crit_edge, label %for.body26.preheader.i.adv7511_dbg_dump_edid.exit_crit_edge

for.body26.preheader.i.adv7511_dbg_dump_edid.exit_crit_edge: ; preds = %for.body26.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_dbg_dump_edid.exit

for.body26.preheader.i.for.body.i_crit_edge:      ; preds = %for.body26.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

adv7511_dbg_dump_edid.exit:                       ; preds = %for.body26.preheader.i.adv7511_dbg_dump_edid.exit_crit_edge, %if.then42.adv7511_dbg_dump_edid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217)
  %cmp47 = icmp eq i32 %call1.i217, 0
  br i1 %cmp47, label %if.then49, label %adv7511_dbg_dump_edid.exit.lor.lhs.false_crit_edge

adv7511_dbg_dump_edid.exit.lor.lhs.false_crit_edge: ; preds = %adv7511_dbg_dump_edid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.then49:                                        ; preds = %adv7511_dbg_dump_edid.exit
  %arrayidx52 = getelementptr i8, ptr %sd, i32 758
  %62 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx52, align 2
  %conv53 = zext i8 %63 to i32
  %add = add nuw nsw i32 %conv53, 1
  %64 = ptrtoint ptr %edid7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add, ptr %edid7, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp56 = icmp sgt i32 %65, 0
  br i1 %cmp56, label %do.end61, label %if.then49.lor.lhs.false_crit_edge

if.then49.lor.lhs.false_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

do.end61:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %name63 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %name63, ptr noundef nonnull @.str.153, i32 noundef %add) #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end61, %if.then49.lor.lhs.false_crit_edge, %adv7511_dbg_dump_edid.exit.lor.lhs.false_crit_edge
  %66 = ptrtoint ptr %edid7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %edid7, align 4
  %arrayidx.i222 = getelementptr i8, ptr %data254, i32 %mul255
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %lor.lhs.false
  %i.010.i.i = phi i32 [ 0, %lor.lhs.false ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sum.09.i.i = phi i32 [ 0, %lor.lhs.false ], [ %phi.cast.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i222, i32 %i.010.i.i
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %69 to i32
  %add.i.i = add nuw nsw i32 %sum.09.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %phi.cast.i.i = and i32 %add.i.i, 255
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %edid_block_verify_crc.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

edid_block_verify_crc.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i.i)
  %cmp4.i.i = icmp eq i32 %phi.cast.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i, label %edid_block_verify_crc.exit.i.do.end82_crit_edge

edid_block_verify_crc.exit.i.do.end82_crit_edge:  ; preds = %edid_block_verify_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

if.end.i:                                         ; preds = %edid_block_verify_crc.exit.i
  %add.i223 = shl i32 %call1.i217, 1
  %mul5.i = add i32 %add.i223, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.i, i32 %67)
  %cmp.not.i = icmp ugt i32 %mul5.i, %67
  br i1 %cmp.not.i, label %if.end.i.lor.lhs.false75_crit_edge, label %if.then6.i

if.end.i.lor.lhs.false75_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false75

if.then6.i:                                       ; preds = %if.end.i
  %add8.i = or i32 %mul255, 128
  %arrayidx9.i = getelementptr i8, ptr %data254, i32 %add8.i
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %if.then6.i
  %i.010.i18.i = phi i32 [ 0, %if.then6.i ], [ %inc.i23.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %sum.09.i19.i = phi i32 [ 0, %if.then6.i ], [ %phi.cast.i24.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %arrayidx.i20.i = getelementptr i8, ptr %arrayidx9.i, i32 %i.010.i18.i
  %70 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i20.i, align 1
  %conv.i21.i = zext i8 %71 to i32
  %add.i22.i = add nuw nsw i32 %sum.09.i19.i, %conv.i21.i
  %inc.i23.i = add nuw nsw i32 %i.010.i18.i, 1
  %phi.cast.i24.i = and i32 %add.i22.i, 255
  %exitcond.not.i25.i = icmp eq i32 %inc.i23.i, 128
  br i1 %exitcond.not.i25.i, label %edid_verify_crc.exit, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i26.i

edid_verify_crc.exit:                             ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i24.i)
  %cmp4.i27.i = icmp eq i32 %phi.cast.i24.i, 0
  br i1 %cmp4.i27.i, label %edid_verify_crc.exit.lor.lhs.false75_crit_edge, label %edid_verify_crc.exit.do.end82_crit_edge

edid_verify_crc.exit.do.end82_crit_edge:          ; preds = %edid_verify_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

edid_verify_crc.exit.lor.lhs.false75_crit_edge:   ; preds = %edid_verify_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %edid_verify_crc.exit.lor.lhs.false75_crit_edge, %if.end.i.lor.lhs.false75_crit_edge
  br i1 %cmp47, label %edid_verify_header.exit, label %lor.lhs.false75.if.end90_crit_edge

lor.lhs.false75.if.end90_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

edid_verify_header.exit:                          ; preds = %lor.lhs.false75
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %data254, ptr noundef nonnull dereferenceable(8) @edid_verify_header.hdmi_header, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %edid_verify_header.exit.if.end90_crit_edge, label %edid_verify_header.exit.do.end82_crit_edge

edid_verify_header.exit.do.end82_crit_edge:       ; preds = %edid_verify_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

edid_verify_header.exit.if.end90_crit_edge:       ; preds = %edid_verify_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end82:                                         ; preds = %edid_verify_header.exit.do.end82_crit_edge, %edid_verify_crc.exit.do.end82_crit_edge, %edid_block_verify_crc.exit.i.do.end82_crit_edge
  %name84 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name84, ptr noundef nonnull @.str.153) #14
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %adv7511_edid_rd.exit
  %have_monitor = getelementptr i8, ptr %sd, i32 434
  %72 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %have_monitor, align 2
  %call88 = call i32 @adv7511_s_power(ptr noundef %sd, i32 noundef 0)
  %call89 = call i32 @adv7511_s_power(ptr noundef %sd, i32 noundef 1)
  br label %cleanup

if.end90:                                         ; preds = %edid_verify_header.exit.if.end90_crit_edge, %lor.lhs.false75.if.end90_crit_edge
  %add91 = add i32 %call1.i217, 1
  %segments = getelementptr i8, ptr %sd, i32 628
  %73 = ptrtoint ptr %segments to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add91, ptr %segments, align 4
  %have_edid0_ctrl = getelementptr i8, ptr %sd, i32 604
  %74 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %have_edid0_ctrl, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %79, i32 noundef 0) #11
  %call.i227 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %75, i32 noundef 1) #11
  %80 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %83) #11
  %arrayidx96 = getelementptr i8, ptr %sd, i32 758
  %84 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx96, align 2
  %86 = lshr i8 %85, 1
  %narrow = add nuw i8 %86, 1
  %add98 = zext i8 %narrow to i32
  %87 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %add98)
  %cmp101 = icmp ult i32 %88, %add98
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp105 = icmp sgt i32 %89, 0
  br i1 %cmp101, label %do.body104, label %do.body129

do.body104:                                       ; preds = %if.end90
  br i1 %cmp105, label %do.end110, label %do.body104.do.end119_crit_edge

do.body104.do.end119_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end119

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  %name112 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name112, ptr noundef nonnull @.str.153, i32 noundef %88) #14
  br label %do.end119

do.end119:                                        ; preds = %do.end110, %do.body104.do.end119_crit_edge
  %90 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i229 = call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229)
  %cmp2.i = icmp eq i32 %call1.i229, 0
  br i1 %cmp2.i, label %do.end119.adv7511_wr.exit_crit_edge, label %for.cond.i230

do.end119.adv7511_wr.exit_crit_edge:              ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i230:                                    ; preds = %do.end119
  %call1.1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i230.adv7511_wr.exit_crit_edge, label %for.cond.1.i231

for.cond.i230.adv7511_wr.exit_crit_edge:          ; preds = %for.cond.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i231:                                  ; preds = %for.cond.i230
  %call1.2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext -55, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i231.adv7511_wr.exit_crit_edge, label %for.cond.2.i233

for.cond.1.i231.adv7511_wr.exit_crit_edge:        ; preds = %for.cond.1.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i233:                                  ; preds = %for.cond.1.i231
  call void @__sanitizer_cov_trace_pc() #13
  %name.i232 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i232, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i233, %for.cond.1.i231.adv7511_wr.exit_crit_edge, %for.cond.i230.adv7511_wr.exit_crit_edge, %do.end119.adv7511_wr.exit_crit_edge
  %92 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %segments, align 4
  %conv123 = trunc i32 %93 to i8
  %94 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i235 = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -60, i8 noundef zeroext %conv123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i235)
  %cmp2.i236 = icmp eq i32 %call1.i235, 0
  br i1 %cmp2.i236, label %adv7511_wr.exit.adv7511_wr.exit246_crit_edge, label %for.cond.i239

adv7511_wr.exit.adv7511_wr.exit246_crit_edge:     ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246

for.cond.i239:                                    ; preds = %adv7511_wr.exit
  %call1.1.i237 = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -60, i8 noundef zeroext %conv123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i237)
  %cmp2.1.i238 = icmp eq i32 %call1.1.i237, 0
  br i1 %cmp2.1.i238, label %for.cond.i239.adv7511_wr.exit246_crit_edge, label %for.cond.1.i242

for.cond.i239.adv7511_wr.exit246_crit_edge:       ; preds = %for.cond.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246

for.cond.1.i242:                                  ; preds = %for.cond.i239
  %call1.2.i240 = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -60, i8 noundef zeroext %conv123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i240)
  %cmp2.2.i241 = icmp eq i32 %call1.2.i240, 0
  br i1 %cmp2.2.i241, label %for.cond.1.i242.adv7511_wr.exit246_crit_edge, label %for.cond.2.i245

for.cond.1.i242.adv7511_wr.exit246_crit_edge:     ; preds = %for.cond.1.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246

for.cond.2.i245:                                  ; preds = %for.cond.1.i242
  call void @__sanitizer_cov_trace_pc() #13
  %name.i243 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i243, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit246

adv7511_wr.exit246:                               ; preds = %for.cond.2.i245, %for.cond.1.i242.adv7511_wr.exit246_crit_edge, %for.cond.i239.adv7511_wr.exit246_crit_edge, %adv7511_wr.exit.adv7511_wr.exit246_crit_edge
  %read_retries126 = getelementptr i8, ptr %sd, i32 2680
  %96 = ptrtoint ptr %read_retries126 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 8, ptr %read_retries126, align 4
  %work_queue = getelementptr i8, ptr %sd, i32 2692
  %97 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %work_queue, align 4
  %edid_handler = getelementptr i8, ptr %sd, i32 2696
  %call.i247 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %98, ptr noundef %edid_handler, i32 noundef 250) #11
  br label %cleanup

do.body129:                                       ; preds = %if.end90
  br i1 %cmp105, label %do.end135, label %do.body129.do.end144_crit_edge

do.body129.do.end144_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  %name137 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name137, ptr noundef nonnull @.str.153, i32 noundef %88) #14
  br label %do.end144

do.end144:                                        ; preds = %do.end135, %do.body129.do.end144_crit_edge
  %99 = ptrtoint ptr %complete to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %complete, align 4
  %100 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %segments, align 4
  %mul152 = shl i32 %101, 8
  %call153 = call zeroext i16 @cec_get_edid_phys_addr(ptr noundef %data254, i32 noundef %mul152, ptr noundef null) #11
  %phys_addr = getelementptr inbounds %struct.adv7511_edid_detect, ptr %ed, i32 0, i32 2
  %102 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %call153, ptr %phys_addr, align 4
  %103 = ptrtoint ptr %ed to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %ed, align 4
  %segment154 = getelementptr inbounds %struct.adv7511_edid_detect, ptr %ed, i32 0, i32 1
  %104 = ptrtoint ptr %segment154 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %segment154, align 4
  %edid_detect_counter = getelementptr i8, ptr %sd, i32 2688
  %105 = ptrtoint ptr %edid_detect_counter to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %edid_detect_counter, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %edid_detect_counter, align 4
  %cec_adap = getelementptr i8, ptr %sd, i32 424
  %107 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cec_adap, align 4
  call void @cec_s_phys_addr(ptr noundef %108, i16 noundef zeroext %call153, i1 noundef zeroext false) #11
  %tobool.not.i248 = icmp eq ptr %sd, null
  br i1 %tobool.not.i248, label %do.end144.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

do.end144.v4l2_subdev_notify.exit_crit_edge:      ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %do.end144
  %v4l2_dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %109 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %110, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %112, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %112(ptr noundef nonnull %sd, i32 noundef 1, ptr noundef nonnull %ed) #11
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %do.end144.v4l2_subdev_notify.exit_crit_edge
  %113 = ptrtoint ptr %ed to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool157 = icmp ne i32 %114, 0
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_notify.exit, %adv7511_wr.exit246, %if.end87, %do.end19
  %retval.0 = phi i1 [ false, %do.end19 ], [ false, %if.end87 ], [ false, %adv7511_wr.exit246 ], [ %tobool157, %v4l2_subdev_notify.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ed) #11
  br label %cleanup161

cleanup161:                                       ; preds = %cleanup, %if.end9.cleanup161_crit_edge, %do.end6.cleanup161_crit_edge
  %retval.1 = phi i1 [ %retval.0, %cleanup ], [ true, %do.end6.cleanup161_crit_edge ], [ false, %if.end9.cleanup161_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.sw.epilog_crit_edge
    i32 44100, label %sw.bb1
    i32 48000, label %sw.bb2
    i32 88200, label %sw.bb3
    i32 96000, label %sw.bb4
    i32 176400, label %sw.bb5
    i32 192000, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %N.0 = phi i32 [ 24576, %sw.bb6 ], [ 25088, %sw.bb5 ], [ 12288, %sw.bb4 ], [ 12544, %sw.bb3 ], [ 6144, %sw.bb2 ], [ 6272, %sw.bb1 ], [ 4096, %entry.sw.epilog_crit_edge ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %sw.epilog.adv7511_wr.exit_crit_edge, label %for.cond.i

sw.epilog.adv7511_wr.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %sw.epilog
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %sw.epilog.adv7511_wr.exit_crit_edge
  %shr7 = lshr i32 %N.0, 8
  %conv9 = trunc i32 %shr7 to i8
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %cmp2.i20 = icmp eq i32 %call1.i19, 0
  br i1 %cmp2.i20, label %adv7511_wr.exit.adv7511_wr.exit30_crit_edge, label %for.cond.i23

adv7511_wr.exit.adv7511_wr.exit30_crit_edge:      ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit30

for.cond.i23:                                     ; preds = %adv7511_wr.exit
  %call1.1.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i21)
  %cmp2.1.i22 = icmp eq i32 %call1.1.i21, 0
  br i1 %cmp2.1.i22, label %for.cond.i23.adv7511_wr.exit30_crit_edge, label %for.cond.1.i26

for.cond.i23.adv7511_wr.exit30_crit_edge:         ; preds = %for.cond.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit30

for.cond.1.i26:                                   ; preds = %for.cond.i23
  %call1.2.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i24)
  %cmp2.2.i25 = icmp eq i32 %call1.2.i24, 0
  br i1 %cmp2.2.i25, label %for.cond.1.i26.adv7511_wr.exit30_crit_edge, label %for.cond.2.i29

for.cond.1.i26.adv7511_wr.exit30_crit_edge:       ; preds = %for.cond.1.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit30

for.cond.2.i29:                                   ; preds = %for.cond.1.i26
  call void @__sanitizer_cov_trace_pc() #13
  %name.i27 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i27, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit30

adv7511_wr.exit30:                                ; preds = %for.cond.2.i29, %for.cond.1.i26.adv7511_wr.exit30_crit_edge, %for.cond.i23.adv7511_wr.exit30_crit_edge, %adv7511_wr.exit.adv7511_wr.exit30_crit_edge
  %conv12 = trunc i32 %N.0 to i8
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %cmp2.i33 = icmp eq i32 %call1.i32, 0
  br i1 %cmp2.i33, label %adv7511_wr.exit30.cleanup_crit_edge, label %for.cond.i36

adv7511_wr.exit30.cleanup_crit_edge:              ; preds = %adv7511_wr.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i36:                                     ; preds = %adv7511_wr.exit30
  %call1.1.i34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i34)
  %cmp2.1.i35 = icmp eq i32 %call1.1.i34, 0
  br i1 %cmp2.1.i35, label %for.cond.i36.cleanup_crit_edge, label %for.cond.1.i39

for.cond.i36.cleanup_crit_edge:                   ; preds = %for.cond.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i39:                                   ; preds = %for.cond.i36
  %call1.2.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i37)
  %cmp2.2.i38 = icmp eq i32 %call1.2.i37, 0
  br i1 %cmp2.2.i38, label %for.cond.1.i39.cleanup_crit_edge, label %for.cond.2.i42

for.cond.1.i39.cleanup_crit_edge:                 ; preds = %for.cond.1.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i42:                                   ; preds = %for.cond.1.i39
  call void @__sanitizer_cov_trace_pc() #13
  %name.i40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i40, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i42, %for.cond.1.i39.cleanup_crit_edge, %for.cond.i36.cleanup_crit_edge, %adv7511_wr.exit30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %adv7511_wr.exit30.cleanup_crit_edge ], [ 0, %for.cond.i36.cleanup_crit_edge ], [ 0, %for.cond.1.i39.cleanup_crit_edge ], [ 0, %for.cond.2.i42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_i2s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.sw.epilog_crit_edge
    i32 44100, label %sw.bb1
    i32 48000, label %sw.bb2
    i32 88200, label %sw.bb3
    i32 96000, label %sw.bb4
    i32 176400, label %sw.bb5
    i32 192000, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %i2s_sf.0 = phi i8 [ -32, %sw.bb6 ], [ -64, %sw.bb5 ], [ -96, %sw.bb4 ], [ -128, %sw.bb3 ], [ 32, %sw.bb2 ], [ 0, %sw.bb1 ], [ 48, %entry.sw.epilog_crit_edge ]
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 21) #11
  %3 = trunc i32 %call1.i.i to i8
  %4 = and i8 %3, 15
  %conv2.i = or i8 %4, %i2s_sf.0
  %5 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %sw.epilog.cleanup_crit_edge, label %for.cond.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.i:                                     ; preds = %sw.epilog
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.i.cleanup_crit_edge ], [ 0, %for.cond.2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 115) #11
  %2 = trunc i32 %call1.i.i to i8
  %3 = and i8 %2, -8
  %conv2.i = or i8 %3, 1
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 115, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %entry.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i

entry.adv7511_wr_and_or.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i:                                     ; preds = %entry
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 115, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 115, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, %entry.adv7511_wr_and_or.exit_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 118, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %adv7511_wr_and_or.exit.adv7511_wr.exit_crit_edge, label %for.cond.i

adv7511_wr_and_or.exit.adv7511_wr.exit_crit_edge: ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %adv7511_wr_and_or.exit
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 118, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 118, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %adv7511_wr_and_or.exit.adv7511_wr.exit_crit_edge
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i4 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 20) #11
  %10 = trunc i32 %call1.i.i4 to i8
  %11 = and i8 %10, -16
  %conv2.i5 = or i8 %11, 2
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i6)
  %cmp2.i.i7 = icmp eq i32 %call1.i7.i6, 0
  br i1 %cmp2.i.i7, label %adv7511_wr.exit.adv7511_wr_and_or.exit17_crit_edge, label %for.cond.i.i10

adv7511_wr.exit.adv7511_wr_and_or.exit17_crit_edge: ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit17

for.cond.i.i10:                                   ; preds = %adv7511_wr.exit
  %call1.1.i.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i8)
  %cmp2.1.i.i9 = icmp eq i32 %call1.1.i.i8, 0
  br i1 %cmp2.1.i.i9, label %for.cond.i.i10.adv7511_wr_and_or.exit17_crit_edge, label %for.cond.1.i.i13

for.cond.i.i10.adv7511_wr_and_or.exit17_crit_edge: ; preds = %for.cond.i.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit17

for.cond.1.i.i13:                                 ; preds = %for.cond.i.i10
  %call1.2.i.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i11)
  %cmp2.2.i.i12 = icmp eq i32 %call1.2.i.i11, 0
  br i1 %cmp2.2.i.i12, label %for.cond.1.i.i13.adv7511_wr_and_or.exit17_crit_edge, label %for.cond.2.i.i16

for.cond.1.i.i13.adv7511_wr_and_or.exit17_crit_edge: ; preds = %for.cond.1.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit17

for.cond.2.i.i16:                                 ; preds = %for.cond.1.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i14 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i14, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit17

adv7511_wr_and_or.exit17:                         ; preds = %for.cond.2.i.i16, %for.cond.1.i.i13.adv7511_wr_and_or.exit17_crit_edge, %for.cond.i.i10.adv7511_wr_and_or.exit17_crit_edge, %adv7511_wr.exit.adv7511_wr_and_or.exit17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_audio_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.200, ptr @.str.199
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name, ptr noundef nonnull @.str.198, ptr noundef nonnull %cond) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %dev_priv.i.i.i9 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i.i10 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 75) #11
  %3 = trunc i32 %call1.i.i10 to i8
  %4 = and i8 %3, 63
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end2
  %conv2.i = or i8 %4, -128
  %5 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then4.if.end5_crit_edge, label %for.cond.i.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.i.i:                                     ; preds = %if.then4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.if.end5_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end5_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.if.end5_crit_edge, label %for.cond.1.i.i.if.end5.sink.split_crit_edge

for.cond.1.i.i.if.end5.sink.split_crit_edge:      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split

for.cond.1.i.i.if.end5_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else:                                          ; preds = %do.end2
  %conv2.i11 = or i8 %4, 64
  %7 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i7.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i12)
  %cmp2.i.i13 = icmp eq i32 %call1.i7.i12, 0
  br i1 %cmp2.i.i13, label %if.else.if.end5_crit_edge, label %for.cond.i.i16

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.i.i16:                                   ; preds = %if.else
  %call1.1.i.i14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i14)
  %cmp2.1.i.i15 = icmp eq i32 %call1.1.i.i14, 0
  br i1 %cmp2.1.i.i15, label %for.cond.i.i16.if.end5_crit_edge, label %for.cond.1.i.i19

for.cond.i.i16.if.end5_crit_edge:                 ; preds = %for.cond.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.1.i.i19:                                 ; preds = %for.cond.i.i16
  %call1.2.i.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i17)
  %cmp2.2.i.i18 = icmp eq i32 %call1.2.i.i17, 0
  br i1 %cmp2.2.i.i18, label %for.cond.1.i.i19.if.end5_crit_edge, label %for.cond.1.i.i19.if.end5.sink.split_crit_edge

for.cond.1.i.i19.if.end5.sink.split_crit_edge:    ; preds = %for.cond.1.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split

for.cond.1.i.i19.if.end5_crit_edge:               ; preds = %for.cond.1.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5.sink.split:                               ; preds = %for.cond.1.i.i19.if.end5.sink.split_crit_edge, %for.cond.1.i.i.if.end5.sink.split_crit_edge
  %name.i.i20 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i20, ptr noundef nonnull @.str.208) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %for.cond.1.i.i19.if.end5_crit_edge, %for.cond.i.i16.if.end5_crit_edge, %if.else.if.end5_crit_edge, %for.cond.1.i.i.if.end5_crit_edge, %for.cond.i.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.200, ptr @.str.199
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name, ptr noundef nonnull @.str.201, ptr noundef nonnull %cond) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool5.not, i8 60, i8 0
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -95) #11
  %3 = trunc i32 %call1.i.i to i8
  %4 = and i8 %3, -61
  %conv2.i = or i8 %4, %conv
  %5 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %do.end4.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i

do.end4.adv7511_wr_and_or.exit_crit_edge:         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i:                                     ; preds = %do.end4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, %do.end4.adv7511_wr_and_or.exit_crit_edge
  br i1 %tobool5.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv7511_check_monitor_present_status(ptr noundef %sd)
  br label %if.end10

if.else:                                          ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @adv7511_s_power(ptr noundef %sd, i32 noundef 0)
  %have_monitor = getelementptr i8, ptr %sd, i32 434
  %7 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %have_monitor, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name, ptr noundef nonnull @.str.202) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @adv7511_timings_cap, ptr noundef null, ptr noundef null) #11
  br i1 %call5, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @adv7511_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %dv_timings = getelementptr i8, ptr %sd, i32 436
  %2 = call ptr @memcpy(ptr %dv_timings, ptr %timings, i32 132)
  %polarities = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %polarities to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %polarities, align 1
  %trunc = trunc i32 %4 to i7
  %rev = tail call i7 @llvm.bitreverse.i7(i7 %trunc)
  %mask = and i7 %rev, -32
  %5 = xor i7 %mask, -32
  %conv = zext i7 %5 to i8
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 23) #11
  %8 = trunc i32 %call1.i.i to i8
  %9 = and i8 %8, -97
  %conv2.i = or i8 %9, %conv
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.end7.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i

if.end7.adv7511_wr_and_or.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i:                                     ; preds = %if.end7
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, %if.end7.adv7511_wr_and_or.exit_crit_edge
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %pixelclock, align 1
  %conv13 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %0, align 1
  %hfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %18 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %20 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %hbackporch, align 1
  %add = add i32 %17, %15
  %add14 = add i32 %add, %19
  %add15 = add i32 %add14, %21
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %height, align 1
  %vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %24 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %26 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %28 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %30 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %32 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %34 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %il_vbackporch, align 1
  %add16 = add i32 %25, %23
  %add17 = add i32 %add16, %27
  %add18 = add i32 %add17, %29
  %add19 = add i32 %add18, %31
  %add20 = add i32 %add19, %33
  %add21 = add i32 %add20, %35
  %mul = mul i32 %add21, %add15
  %div = udiv i32 %conv13, %mul
  %36 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %div, label %sw.default [
    i32 24, label %sw.bb
    i32 25, label %sw.bb22
    i32 30, label %sw.bb23
  ]

sw.bb:                                            ; preds = %adv7511_wr_and_or.exit
  %37 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i51 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext -5) #11
  %39 = trunc i32 %call1.i.i51 to i8
  %40 = and i8 %39, -7
  %conv2.i52 = or i8 %40, 2
  %41 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i53 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i53)
  %cmp2.i.i54 = icmp eq i32 %call1.i7.i53, 0
  br i1 %cmp2.i.i54, label %sw.bb.sw.epilog_crit_edge, label %for.cond.i.i57

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i.i57:                                   ; preds = %sw.bb
  %call1.1.i.i55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i55)
  %cmp2.1.i.i56 = icmp eq i32 %call1.1.i.i55, 0
  br i1 %cmp2.1.i.i56, label %for.cond.i.i57.sw.epilog_crit_edge, label %for.cond.1.i.i60

for.cond.i.i57.sw.epilog_crit_edge:               ; preds = %for.cond.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i.i60:                                 ; preds = %for.cond.i.i57
  %call1.2.i.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i58)
  %cmp2.2.i.i59 = icmp eq i32 %call1.2.i.i58, 0
  br i1 %cmp2.2.i.i59, label %for.cond.1.i.i60.sw.epilog_crit_edge, label %for.cond.1.i.i60.sw.epilog.sink.split_crit_edge

for.cond.1.i.i60.sw.epilog.sink.split_crit_edge:  ; preds = %for.cond.1.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

for.cond.1.i.i60.sw.epilog_crit_edge:             ; preds = %for.cond.1.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb22:                                          ; preds = %adv7511_wr_and_or.exit
  %43 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i66 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext -5) #11
  %45 = trunc i32 %call1.i.i66 to i8
  %46 = and i8 %45, -7
  %conv2.i67 = or i8 %46, 4
  %47 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i68)
  %cmp2.i.i69 = icmp eq i32 %call1.i7.i68, 0
  br i1 %cmp2.i.i69, label %sw.bb22.sw.epilog_crit_edge, label %for.cond.i.i72

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i.i72:                                   ; preds = %sw.bb22
  %call1.1.i.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i70)
  %cmp2.1.i.i71 = icmp eq i32 %call1.1.i.i70, 0
  br i1 %cmp2.1.i.i71, label %for.cond.i.i72.sw.epilog_crit_edge, label %for.cond.1.i.i75

for.cond.i.i72.sw.epilog_crit_edge:               ; preds = %for.cond.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i.i75:                                 ; preds = %for.cond.i.i72
  %call1.2.i.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i73)
  %cmp2.2.i.i74 = icmp eq i32 %call1.2.i.i73, 0
  br i1 %cmp2.2.i.i74, label %for.cond.1.i.i75.sw.epilog_crit_edge, label %for.cond.1.i.i75.sw.epilog.sink.split_crit_edge

for.cond.1.i.i75.sw.epilog.sink.split_crit_edge:  ; preds = %for.cond.1.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

for.cond.1.i.i75.sw.epilog_crit_edge:             ; preds = %for.cond.1.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb23:                                          ; preds = %adv7511_wr_and_or.exit
  %49 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i81 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %50, i8 noundef zeroext -5) #11
  %51 = trunc i32 %call1.i.i81 to i8
  %conv2.i82 = or i8 %51, 6
  %52 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i83)
  %cmp2.i.i84 = icmp eq i32 %call1.i7.i83, 0
  br i1 %cmp2.i.i84, label %sw.bb23.sw.epilog_crit_edge, label %for.cond.i.i87

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i.i87:                                   ; preds = %sw.bb23
  %call1.1.i.i85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i85)
  %cmp2.1.i.i86 = icmp eq i32 %call1.1.i.i85, 0
  br i1 %cmp2.1.i.i86, label %for.cond.i.i87.sw.epilog_crit_edge, label %for.cond.1.i.i90

for.cond.i.i87.sw.epilog_crit_edge:               ; preds = %for.cond.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i.i90:                                 ; preds = %for.cond.i.i87
  %call1.2.i.i88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -5, i8 noundef zeroext %conv2.i82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i88)
  %cmp2.2.i.i89 = icmp eq i32 %call1.2.i.i88, 0
  br i1 %cmp2.2.i.i89, label %for.cond.1.i.i90.sw.epilog_crit_edge, label %for.cond.1.i.i90.sw.epilog.sink.split_crit_edge

for.cond.1.i.i90.sw.epilog.sink.split_crit_edge:  ; preds = %for.cond.1.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

for.cond.1.i.i90.sw.epilog_crit_edge:             ; preds = %for.cond.1.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %adv7511_wr_and_or.exit
  %54 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i96 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext -5) #11
  %56 = trunc i32 %call1.i.i96 to i8
  %57 = and i8 %56, -7
  %58 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext -5, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i97)
  %cmp2.i.i98 = icmp eq i32 %call1.i7.i97, 0
  br i1 %cmp2.i.i98, label %sw.default.sw.epilog_crit_edge, label %for.cond.i.i101

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.i.i101:                                  ; preds = %sw.default
  %call1.1.i.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext -5, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i99)
  %cmp2.1.i.i100 = icmp eq i32 %call1.1.i.i99, 0
  br i1 %cmp2.1.i.i100, label %for.cond.i.i101.sw.epilog_crit_edge, label %for.cond.1.i.i104

for.cond.i.i101.sw.epilog_crit_edge:              ; preds = %for.cond.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.1.i.i104:                                ; preds = %for.cond.i.i101
  %call1.2.i.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext -5, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i102)
  %cmp2.2.i.i103 = icmp eq i32 %call1.2.i.i102, 0
  br i1 %cmp2.2.i.i103, label %for.cond.1.i.i104.sw.epilog_crit_edge, label %for.cond.1.i.i104.sw.epilog.sink.split_crit_edge

for.cond.1.i.i104.sw.epilog.sink.split_crit_edge: ; preds = %for.cond.1.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

for.cond.1.i.i104.sw.epilog_crit_edge:            ; preds = %for.cond.1.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %for.cond.1.i.i104.sw.epilog.sink.split_crit_edge, %for.cond.1.i.i90.sw.epilog.sink.split_crit_edge, %for.cond.1.i.i75.sw.epilog.sink.split_crit_edge, %for.cond.1.i.i60.sw.epilog.sink.split_crit_edge
  %name.i.i105 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i105, ptr noundef nonnull @.str.208) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.cond.1.i.i104.sw.epilog_crit_edge, %for.cond.i.i101.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %for.cond.1.i.i90.sw.epilog_crit_edge, %for.cond.i.i87.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %for.cond.1.i.i75.sw.epilog_crit_edge, %for.cond.i.i72.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %for.cond.1.i.i60.sw.epilog_crit_edge, %for.cond.i.i57.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %fmt_code.i = getelementptr i8, ptr %sd, i32 568
  %60 = ptrtoint ptr %fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fmt_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 4106
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.cleanup.sink.split.i_crit_edge

sw.epilog.cleanup.sink.split.i_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.epilog
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %sd, i32 608
  %62 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %65, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb4.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr i8, ptr %sd, i32 504
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.cleanup.sink.split.i_crit_edge, %sw.epilog.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i1 [ false, %sw.bb4.i ], [ false, %sw.epilog.cleanup.sink.split.i_crit_edge ], [ %tobool.not.i, %sw.bb.i ], [ true, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @adv7511_csc_rgb_full2limit(ptr noundef %sd, i1 noundef zeroext %.sink.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_g_dv_timings(ptr noundef %sd, ptr noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name, ptr noundef nonnull @.str.203) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool.not = icmp eq ptr %timings, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %dv_timings = getelementptr i8, ptr %sd, i32 436
  %1 = call ptr @memcpy(ptr %timings, ptr %dv_timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_csc_rgb_full2limit(ptr noundef %sd, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 24) #11
  %2 = trunc i32 %call1.i.i.i to i8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = and i8 %2, -97
  %4 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 24, i8 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %if.then.adv7511_csc_conversion_mode.exit_crit_edge, label %for.cond.i.i.i

if.then.adv7511_csc_conversion_mode.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_conversion_mode.exit

for.cond.i.i.i:                                   ; preds = %if.then
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 24, i8 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_conversion_mode.exit

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 24, i8 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_conversion_mode.exit

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_csc_conversion_mode.exit

adv7511_csc_conversion_mode.exit:                 ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge, %for.cond.i.i.i.adv7511_csc_conversion_mode.exit_crit_edge, %if.then.adv7511_csc_conversion_mode.exit_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i.i7 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 24) #11
  %8 = trunc i32 %call1.i.i.i7 to i8
  %9 = and i8 %8, -32
  %conv2.i.i = or i8 %9, 13
  %10 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i8)
  %cmp2.i.i.i9 = icmp eq i32 %call1.i7.i.i8, 0
  br i1 %cmp2.i.i.i9, label %adv7511_csc_conversion_mode.exit.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.i.i.i12

adv7511_csc_conversion_mode.exit.adv7511_wr_and_or.exit.i_crit_edge: ; preds = %adv7511_csc_conversion_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.i.i.i12:                                 ; preds = %adv7511_csc_conversion_mode.exit
  %call1.1.i.i.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i10)
  %cmp2.1.i.i.i11 = icmp eq i32 %call1.1.i.i.i10, 0
  br i1 %cmp2.1.i.i.i11, label %for.cond.i.i.i12.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i15

for.cond.i.i.i12.adv7511_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.1.i.i.i15:                               ; preds = %for.cond.i.i.i12
  %call1.2.i.i.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i13)
  %cmp2.2.i.i.i14 = icmp eq i32 %call1.2.i.i.i13, 0
  br i1 %cmp2.2.i.i.i14, label %for.cond.1.i.i.i15.adv7511_wr_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i18

for.cond.1.i.i.i15.adv7511_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit.i

for.cond.2.i.i.i18:                               ; preds = %for.cond.1.i.i.i15
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i.i16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i.i16, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit.i

adv7511_wr_and_or.exit.i:                         ; preds = %for.cond.2.i.i.i18, %for.cond.1.i.i.i15.adv7511_wr_and_or.exit.i_crit_edge, %for.cond.i.i.i12.adv7511_wr_and_or.exit.i_crit_edge, %adv7511_csc_conversion_mode.exit.adv7511_wr_and_or.exit.i_crit_edge
  %12 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 25, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %adv7511_wr_and_or.exit.i.adv7511_wr.exit.i_crit_edge, label %for.cond.i.i

adv7511_wr_and_or.exit.i.adv7511_wr.exit.i_crit_edge: ; preds = %adv7511_wr_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.i.i:                                     ; preds = %adv7511_wr_and_or.exit.i
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 25, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 25, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr.exit.i_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit.i

adv7511_wr.exit.i:                                ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr.exit.i_crit_edge, %for.cond.i.i.adv7511_wr.exit.i_crit_edge, %adv7511_wr_and_or.exit.i.adv7511_wr.exit.i_crit_edge
  %14 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i2.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 26) #11
  %16 = trunc i32 %call1.i.i2.i to i8
  %17 = and i8 %16, -32
  %18 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 26, i8 noundef zeroext %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i3.i)
  %cmp2.i.i4.i = icmp eq i32 %call1.i7.i3.i, 0
  br i1 %cmp2.i.i4.i, label %adv7511_wr.exit.i.adv7511_wr_and_or.exit14.i_crit_edge, label %for.cond.i.i7.i

adv7511_wr.exit.i.adv7511_wr_and_or.exit14.i_crit_edge: ; preds = %adv7511_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit14.i

for.cond.i.i7.i:                                  ; preds = %adv7511_wr.exit.i
  %call1.1.i.i5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 26, i8 noundef zeroext %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i5.i)
  %cmp2.1.i.i6.i = icmp eq i32 %call1.1.i.i5.i, 0
  br i1 %cmp2.1.i.i6.i, label %for.cond.i.i7.i.adv7511_wr_and_or.exit14.i_crit_edge, label %for.cond.1.i.i10.i

for.cond.i.i7.i.adv7511_wr_and_or.exit14.i_crit_edge: ; preds = %for.cond.i.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit14.i

for.cond.1.i.i10.i:                               ; preds = %for.cond.i.i7.i
  %call1.2.i.i8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 26, i8 noundef zeroext %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i8.i)
  %cmp2.2.i.i9.i = icmp eq i32 %call1.2.i.i8.i, 0
  br i1 %cmp2.2.i.i9.i, label %for.cond.1.i.i10.i.adv7511_wr_and_or.exit14.i_crit_edge, label %for.cond.2.i.i13.i

for.cond.1.i.i10.i.adv7511_wr_and_or.exit14.i_crit_edge: ; preds = %for.cond.1.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit14.i

for.cond.2.i.i13.i:                               ; preds = %for.cond.1.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i11.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit14.i

adv7511_wr_and_or.exit14.i:                       ; preds = %for.cond.2.i.i13.i, %for.cond.1.i.i10.i.adv7511_wr_and_or.exit14.i_crit_edge, %for.cond.i.i7.i.adv7511_wr_and_or.exit14.i_crit_edge, %adv7511_wr.exit.i.adv7511_wr_and_or.exit14.i_crit_edge
  %20 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %cmp2.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %cmp2.i17.i, label %adv7511_wr_and_or.exit14.i.adv7511_wr.exit27.i_crit_edge, label %for.cond.i20.i

adv7511_wr_and_or.exit14.i.adv7511_wr.exit27.i_crit_edge: ; preds = %adv7511_wr_and_or.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit27.i

for.cond.i20.i:                                   ; preds = %adv7511_wr_and_or.exit14.i
  %call1.1.i18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i18.i)
  %cmp2.1.i19.i = icmp eq i32 %call1.1.i18.i, 0
  br i1 %cmp2.1.i19.i, label %for.cond.i20.i.adv7511_wr.exit27.i_crit_edge, label %for.cond.1.i23.i

for.cond.i20.i.adv7511_wr.exit27.i_crit_edge:     ; preds = %for.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit27.i

for.cond.1.i23.i:                                 ; preds = %for.cond.i20.i
  %call1.2.i21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i21.i)
  %cmp2.2.i22.i = icmp eq i32 %call1.2.i21.i, 0
  br i1 %cmp2.2.i22.i, label %for.cond.1.i23.i.adv7511_wr.exit27.i_crit_edge, label %for.cond.2.i26.i

for.cond.1.i23.i.adv7511_wr.exit27.i_crit_edge:   ; preds = %for.cond.1.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit27.i

for.cond.2.i26.i:                                 ; preds = %for.cond.1.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i24.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i24.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit27.i

adv7511_wr.exit27.i:                              ; preds = %for.cond.2.i26.i, %for.cond.1.i23.i.adv7511_wr.exit27.i_crit_edge, %for.cond.i20.i.adv7511_wr.exit27.i_crit_edge, %adv7511_wr_and_or.exit14.i.adv7511_wr.exit27.i_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i29.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 28) #11
  %24 = trunc i32 %call1.i.i29.i to i8
  %25 = and i8 %24, -32
  %26 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 28, i8 noundef zeroext %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i30.i)
  %cmp2.i.i31.i = icmp eq i32 %call1.i7.i30.i, 0
  br i1 %cmp2.i.i31.i, label %adv7511_wr.exit27.i.adv7511_wr_and_or.exit41.i_crit_edge, label %for.cond.i.i34.i

adv7511_wr.exit27.i.adv7511_wr_and_or.exit41.i_crit_edge: ; preds = %adv7511_wr.exit27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit41.i

for.cond.i.i34.i:                                 ; preds = %adv7511_wr.exit27.i
  %call1.1.i.i32.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 28, i8 noundef zeroext %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i32.i)
  %cmp2.1.i.i33.i = icmp eq i32 %call1.1.i.i32.i, 0
  br i1 %cmp2.1.i.i33.i, label %for.cond.i.i34.i.adv7511_wr_and_or.exit41.i_crit_edge, label %for.cond.1.i.i37.i

for.cond.i.i34.i.adv7511_wr_and_or.exit41.i_crit_edge: ; preds = %for.cond.i.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit41.i

for.cond.1.i.i37.i:                               ; preds = %for.cond.i.i34.i
  %call1.2.i.i35.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 28, i8 noundef zeroext %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i35.i)
  %cmp2.2.i.i36.i = icmp eq i32 %call1.2.i.i35.i, 0
  br i1 %cmp2.2.i.i36.i, label %for.cond.1.i.i37.i.adv7511_wr_and_or.exit41.i_crit_edge, label %for.cond.2.i.i40.i

for.cond.1.i.i37.i.adv7511_wr_and_or.exit41.i_crit_edge: ; preds = %for.cond.1.i.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit41.i

for.cond.2.i.i40.i:                               ; preds = %for.cond.1.i.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i38.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i38.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit41.i

adv7511_wr_and_or.exit41.i:                       ; preds = %for.cond.2.i.i40.i, %for.cond.1.i.i37.i.adv7511_wr_and_or.exit41.i_crit_edge, %for.cond.i.i34.i.adv7511_wr_and_or.exit41.i_crit_edge, %adv7511_wr.exit27.i.adv7511_wr_and_or.exit41.i_crit_edge
  %28 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i43.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %cmp2.i44.i = icmp eq i32 %call1.i43.i, 0
  br i1 %cmp2.i44.i, label %adv7511_wr_and_or.exit41.i.adv7511_wr.exit54.i_crit_edge, label %for.cond.i47.i

adv7511_wr_and_or.exit41.i.adv7511_wr.exit54.i_crit_edge: ; preds = %adv7511_wr_and_or.exit41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit54.i

for.cond.i47.i:                                   ; preds = %adv7511_wr_and_or.exit41.i
  %call1.1.i45.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i45.i)
  %cmp2.1.i46.i = icmp eq i32 %call1.1.i45.i, 0
  br i1 %cmp2.1.i46.i, label %for.cond.i47.i.adv7511_wr.exit54.i_crit_edge, label %for.cond.1.i50.i

for.cond.i47.i.adv7511_wr.exit54.i_crit_edge:     ; preds = %for.cond.i47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit54.i

for.cond.1.i50.i:                                 ; preds = %for.cond.i47.i
  %call1.2.i48.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i48.i)
  %cmp2.2.i49.i = icmp eq i32 %call1.2.i48.i, 0
  br i1 %cmp2.2.i49.i, label %for.cond.1.i50.i.adv7511_wr.exit54.i_crit_edge, label %for.cond.2.i53.i

for.cond.1.i50.i.adv7511_wr.exit54.i_crit_edge:   ; preds = %for.cond.1.i50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit54.i

for.cond.2.i53.i:                                 ; preds = %for.cond.1.i50.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i51.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i51.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit54.i

adv7511_wr.exit54.i:                              ; preds = %for.cond.2.i53.i, %for.cond.1.i50.i.adv7511_wr.exit54.i_crit_edge, %for.cond.i47.i.adv7511_wr.exit54.i_crit_edge, %adv7511_wr_and_or.exit41.i.adv7511_wr.exit54.i_crit_edge
  %30 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i56.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 30) #11
  %32 = trunc i32 %call1.i.i56.i to i8
  %33 = and i8 %32, -32
  %conv2.i57.i = or i8 %33, 1
  %34 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i58.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i58.i)
  %cmp2.i.i59.i = icmp eq i32 %call1.i7.i58.i, 0
  br i1 %cmp2.i.i59.i, label %adv7511_wr.exit54.i.adv7511_wr_and_or.exit69.i_crit_edge, label %for.cond.i.i62.i

adv7511_wr.exit54.i.adv7511_wr_and_or.exit69.i_crit_edge: ; preds = %adv7511_wr.exit54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit69.i

for.cond.i.i62.i:                                 ; preds = %adv7511_wr.exit54.i
  %call1.1.i.i60.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i60.i)
  %cmp2.1.i.i61.i = icmp eq i32 %call1.1.i.i60.i, 0
  br i1 %cmp2.1.i.i61.i, label %for.cond.i.i62.i.adv7511_wr_and_or.exit69.i_crit_edge, label %for.cond.1.i.i65.i

for.cond.i.i62.i.adv7511_wr_and_or.exit69.i_crit_edge: ; preds = %for.cond.i.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit69.i

for.cond.1.i.i65.i:                               ; preds = %for.cond.i.i62.i
  %call1.2.i.i63.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i63.i)
  %cmp2.2.i.i64.i = icmp eq i32 %call1.2.i.i63.i, 0
  br i1 %cmp2.2.i.i64.i, label %for.cond.1.i.i65.i.adv7511_wr_and_or.exit69.i_crit_edge, label %for.cond.2.i.i68.i

for.cond.1.i.i65.i.adv7511_wr_and_or.exit69.i_crit_edge: ; preds = %for.cond.1.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit69.i

for.cond.2.i.i68.i:                               ; preds = %for.cond.1.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i66.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i66.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit69.i

adv7511_wr_and_or.exit69.i:                       ; preds = %for.cond.2.i.i68.i, %for.cond.1.i.i65.i.adv7511_wr_and_or.exit69.i_crit_edge, %for.cond.i.i62.i.adv7511_wr_and_or.exit69.i_crit_edge, %adv7511_wr.exit54.i.adv7511_wr_and_or.exit69.i_crit_edge
  %36 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i71.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 31, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71.i)
  %cmp2.i72.i = icmp eq i32 %call1.i71.i, 0
  br i1 %cmp2.i72.i, label %adv7511_wr_and_or.exit69.i.adv7511_wr.exit82.i_crit_edge, label %for.cond.i75.i

adv7511_wr_and_or.exit69.i.adv7511_wr.exit82.i_crit_edge: ; preds = %adv7511_wr_and_or.exit69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit82.i

for.cond.i75.i:                                   ; preds = %adv7511_wr_and_or.exit69.i
  %call1.1.i73.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 31, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i73.i)
  %cmp2.1.i74.i = icmp eq i32 %call1.1.i73.i, 0
  br i1 %cmp2.1.i74.i, label %for.cond.i75.i.adv7511_wr.exit82.i_crit_edge, label %for.cond.1.i78.i

for.cond.i75.i.adv7511_wr.exit82.i_crit_edge:     ; preds = %for.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit82.i

for.cond.1.i78.i:                                 ; preds = %for.cond.i75.i
  %call1.2.i76.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 31, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i76.i)
  %cmp2.2.i77.i = icmp eq i32 %call1.2.i76.i, 0
  br i1 %cmp2.2.i77.i, label %for.cond.1.i78.i.adv7511_wr.exit82.i_crit_edge, label %for.cond.2.i81.i

for.cond.1.i78.i.adv7511_wr.exit82.i_crit_edge:   ; preds = %for.cond.1.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit82.i

for.cond.2.i81.i:                                 ; preds = %for.cond.1.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i79.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i79.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit82.i

adv7511_wr.exit82.i:                              ; preds = %for.cond.2.i81.i, %for.cond.1.i78.i.adv7511_wr.exit82.i_crit_edge, %for.cond.i75.i.adv7511_wr.exit82.i_crit_edge, %adv7511_wr_and_or.exit69.i.adv7511_wr.exit82.i_crit_edge
  %38 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i84.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 32) #11
  %40 = trunc i32 %call1.i.i84.i to i8
  %41 = and i8 %40, -32
  %42 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i85.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 32, i8 noundef zeroext %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i85.i)
  %cmp2.i.i86.i = icmp eq i32 %call1.i7.i85.i, 0
  br i1 %cmp2.i.i86.i, label %adv7511_wr.exit82.i.adv7511_wr_and_or.exit96.i_crit_edge, label %for.cond.i.i89.i

adv7511_wr.exit82.i.adv7511_wr_and_or.exit96.i_crit_edge: ; preds = %adv7511_wr.exit82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit96.i

for.cond.i.i89.i:                                 ; preds = %adv7511_wr.exit82.i
  %call1.1.i.i87.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 32, i8 noundef zeroext %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i87.i)
  %cmp2.1.i.i88.i = icmp eq i32 %call1.1.i.i87.i, 0
  br i1 %cmp2.1.i.i88.i, label %for.cond.i.i89.i.adv7511_wr_and_or.exit96.i_crit_edge, label %for.cond.1.i.i92.i

for.cond.i.i89.i.adv7511_wr_and_or.exit96.i_crit_edge: ; preds = %for.cond.i.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit96.i

for.cond.1.i.i92.i:                               ; preds = %for.cond.i.i89.i
  %call1.2.i.i90.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 32, i8 noundef zeroext %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i90.i)
  %cmp2.2.i.i91.i = icmp eq i32 %call1.2.i.i90.i, 0
  br i1 %cmp2.2.i.i91.i, label %for.cond.1.i.i92.i.adv7511_wr_and_or.exit96.i_crit_edge, label %for.cond.2.i.i95.i

for.cond.1.i.i92.i.adv7511_wr_and_or.exit96.i_crit_edge: ; preds = %for.cond.1.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit96.i

for.cond.2.i.i95.i:                               ; preds = %for.cond.1.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i93.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i93.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit96.i

adv7511_wr_and_or.exit96.i:                       ; preds = %for.cond.2.i.i95.i, %for.cond.1.i.i92.i.adv7511_wr_and_or.exit96.i_crit_edge, %for.cond.i.i89.i.adv7511_wr_and_or.exit96.i_crit_edge, %adv7511_wr.exit82.i.adv7511_wr_and_or.exit96.i_crit_edge
  %44 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i98.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 33, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i)
  %cmp2.i99.i = icmp eq i32 %call1.i98.i, 0
  br i1 %cmp2.i99.i, label %adv7511_wr_and_or.exit96.i.adv7511_wr.exit109.i_crit_edge, label %for.cond.i102.i

adv7511_wr_and_or.exit96.i.adv7511_wr.exit109.i_crit_edge: ; preds = %adv7511_wr_and_or.exit96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit109.i

for.cond.i102.i:                                  ; preds = %adv7511_wr_and_or.exit96.i
  %call1.1.i100.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 33, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i100.i)
  %cmp2.1.i101.i = icmp eq i32 %call1.1.i100.i, 0
  br i1 %cmp2.1.i101.i, label %for.cond.i102.i.adv7511_wr.exit109.i_crit_edge, label %for.cond.1.i105.i

for.cond.i102.i.adv7511_wr.exit109.i_crit_edge:   ; preds = %for.cond.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit109.i

for.cond.1.i105.i:                                ; preds = %for.cond.i102.i
  %call1.2.i103.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 33, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i103.i)
  %cmp2.2.i104.i = icmp eq i32 %call1.2.i103.i, 0
  br i1 %cmp2.2.i104.i, label %for.cond.1.i105.i.adv7511_wr.exit109.i_crit_edge, label %for.cond.2.i108.i

for.cond.1.i105.i.adv7511_wr.exit109.i_crit_edge: ; preds = %for.cond.1.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit109.i

for.cond.2.i108.i:                                ; preds = %for.cond.1.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i106.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i106.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit109.i

adv7511_wr.exit109.i:                             ; preds = %for.cond.2.i108.i, %for.cond.1.i105.i.adv7511_wr.exit109.i_crit_edge, %for.cond.i102.i.adv7511_wr.exit109.i_crit_edge, %adv7511_wr_and_or.exit96.i.adv7511_wr.exit109.i_crit_edge
  %46 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i111.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 34) #11
  %48 = trunc i32 %call1.i.i111.i to i8
  %49 = and i8 %48, -32
  %conv2.i112.i = or i8 %49, 13
  %50 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i113.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i112.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i113.i)
  %cmp2.i.i114.i = icmp eq i32 %call1.i7.i113.i, 0
  br i1 %cmp2.i.i114.i, label %adv7511_wr.exit109.i.adv7511_wr_and_or.exit124.i_crit_edge, label %for.cond.i.i117.i

adv7511_wr.exit109.i.adv7511_wr_and_or.exit124.i_crit_edge: ; preds = %adv7511_wr.exit109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit124.i

for.cond.i.i117.i:                                ; preds = %adv7511_wr.exit109.i
  %call1.1.i.i115.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i112.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i115.i)
  %cmp2.1.i.i116.i = icmp eq i32 %call1.1.i.i115.i, 0
  br i1 %cmp2.1.i.i116.i, label %for.cond.i.i117.i.adv7511_wr_and_or.exit124.i_crit_edge, label %for.cond.1.i.i120.i

for.cond.i.i117.i.adv7511_wr_and_or.exit124.i_crit_edge: ; preds = %for.cond.i.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit124.i

for.cond.1.i.i120.i:                              ; preds = %for.cond.i.i117.i
  %call1.2.i.i118.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i112.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i118.i)
  %cmp2.2.i.i119.i = icmp eq i32 %call1.2.i.i118.i, 0
  br i1 %cmp2.2.i.i119.i, label %for.cond.1.i.i120.i.adv7511_wr_and_or.exit124.i_crit_edge, label %for.cond.2.i.i123.i

for.cond.1.i.i120.i.adv7511_wr_and_or.exit124.i_crit_edge: ; preds = %for.cond.1.i.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit124.i

for.cond.2.i.i123.i:                              ; preds = %for.cond.1.i.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i121.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i121.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit124.i

adv7511_wr_and_or.exit124.i:                      ; preds = %for.cond.2.i.i123.i, %for.cond.1.i.i120.i.adv7511_wr_and_or.exit124.i_crit_edge, %for.cond.i.i117.i.adv7511_wr_and_or.exit124.i_crit_edge, %adv7511_wr.exit109.i.adv7511_wr_and_or.exit124.i_crit_edge
  %52 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i126.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 35, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126.i)
  %cmp2.i127.i = icmp eq i32 %call1.i126.i, 0
  br i1 %cmp2.i127.i, label %adv7511_wr_and_or.exit124.i.adv7511_wr.exit137.i_crit_edge, label %for.cond.i130.i

adv7511_wr_and_or.exit124.i.adv7511_wr.exit137.i_crit_edge: ; preds = %adv7511_wr_and_or.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit137.i

for.cond.i130.i:                                  ; preds = %adv7511_wr_and_or.exit124.i
  %call1.1.i128.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 35, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i128.i)
  %cmp2.1.i129.i = icmp eq i32 %call1.1.i128.i, 0
  br i1 %cmp2.1.i129.i, label %for.cond.i130.i.adv7511_wr.exit137.i_crit_edge, label %for.cond.1.i133.i

for.cond.i130.i.adv7511_wr.exit137.i_crit_edge:   ; preds = %for.cond.i130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit137.i

for.cond.1.i133.i:                                ; preds = %for.cond.i130.i
  %call1.2.i131.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 35, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i131.i)
  %cmp2.2.i132.i = icmp eq i32 %call1.2.i131.i, 0
  br i1 %cmp2.2.i132.i, label %for.cond.1.i133.i.adv7511_wr.exit137.i_crit_edge, label %for.cond.2.i136.i

for.cond.1.i133.i.adv7511_wr.exit137.i_crit_edge: ; preds = %for.cond.1.i133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit137.i

for.cond.2.i136.i:                                ; preds = %for.cond.1.i133.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i134.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i134.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit137.i

adv7511_wr.exit137.i:                             ; preds = %for.cond.2.i136.i, %for.cond.1.i133.i.adv7511_wr.exit137.i_crit_edge, %for.cond.i130.i.adv7511_wr.exit137.i_crit_edge, %adv7511_wr_and_or.exit124.i.adv7511_wr.exit137.i_crit_edge
  %54 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i139.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 36) #11
  %56 = trunc i32 %call1.i.i139.i to i8
  %57 = and i8 %56, -32
  %58 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i140.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 36, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i140.i)
  %cmp2.i.i141.i = icmp eq i32 %call1.i7.i140.i, 0
  br i1 %cmp2.i.i141.i, label %adv7511_wr.exit137.i.adv7511_wr_and_or.exit151.i_crit_edge, label %for.cond.i.i144.i

adv7511_wr.exit137.i.adv7511_wr_and_or.exit151.i_crit_edge: ; preds = %adv7511_wr.exit137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit151.i

for.cond.i.i144.i:                                ; preds = %adv7511_wr.exit137.i
  %call1.1.i.i142.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 36, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i142.i)
  %cmp2.1.i.i143.i = icmp eq i32 %call1.1.i.i142.i, 0
  br i1 %cmp2.1.i.i143.i, label %for.cond.i.i144.i.adv7511_wr_and_or.exit151.i_crit_edge, label %for.cond.1.i.i147.i

for.cond.i.i144.i.adv7511_wr_and_or.exit151.i_crit_edge: ; preds = %for.cond.i.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit151.i

for.cond.1.i.i147.i:                              ; preds = %for.cond.i.i144.i
  %call1.2.i.i145.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 36, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i145.i)
  %cmp2.2.i.i146.i = icmp eq i32 %call1.2.i.i145.i, 0
  br i1 %cmp2.2.i.i146.i, label %for.cond.1.i.i147.i.adv7511_wr_and_or.exit151.i_crit_edge, label %for.cond.2.i.i150.i

for.cond.1.i.i147.i.adv7511_wr_and_or.exit151.i_crit_edge: ; preds = %for.cond.1.i.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit151.i

for.cond.2.i.i150.i:                              ; preds = %for.cond.1.i.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i148.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i149.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i148.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit151.i

adv7511_wr_and_or.exit151.i:                      ; preds = %for.cond.2.i.i150.i, %for.cond.1.i.i147.i.adv7511_wr_and_or.exit151.i_crit_edge, %for.cond.i.i144.i.adv7511_wr_and_or.exit151.i_crit_edge, %adv7511_wr.exit137.i.adv7511_wr_and_or.exit151.i_crit_edge
  %60 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i153.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 37, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153.i)
  %cmp2.i154.i = icmp eq i32 %call1.i153.i, 0
  br i1 %cmp2.i154.i, label %adv7511_wr_and_or.exit151.i.adv7511_wr.exit164.i_crit_edge, label %for.cond.i157.i

adv7511_wr_and_or.exit151.i.adv7511_wr.exit164.i_crit_edge: ; preds = %adv7511_wr_and_or.exit151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit164.i

for.cond.i157.i:                                  ; preds = %adv7511_wr_and_or.exit151.i
  %call1.1.i155.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 37, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i155.i)
  %cmp2.1.i156.i = icmp eq i32 %call1.1.i155.i, 0
  br i1 %cmp2.1.i156.i, label %for.cond.i157.i.adv7511_wr.exit164.i_crit_edge, label %for.cond.1.i160.i

for.cond.i157.i.adv7511_wr.exit164.i_crit_edge:   ; preds = %for.cond.i157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit164.i

for.cond.1.i160.i:                                ; preds = %for.cond.i157.i
  %call1.2.i158.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 37, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i158.i)
  %cmp2.2.i159.i = icmp eq i32 %call1.2.i158.i, 0
  br i1 %cmp2.2.i159.i, label %for.cond.1.i160.i.adv7511_wr.exit164.i_crit_edge, label %for.cond.2.i163.i

for.cond.1.i160.i.adv7511_wr.exit164.i_crit_edge: ; preds = %for.cond.1.i160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit164.i

for.cond.2.i163.i:                                ; preds = %for.cond.1.i160.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i161.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i161.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit164.i

adv7511_wr.exit164.i:                             ; preds = %for.cond.2.i163.i, %for.cond.1.i160.i.adv7511_wr.exit164.i_crit_edge, %for.cond.i157.i.adv7511_wr.exit164.i_crit_edge, %adv7511_wr_and_or.exit151.i.adv7511_wr.exit164.i_crit_edge
  %62 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i166.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 38) #11
  %64 = trunc i32 %call1.i.i166.i to i8
  %65 = and i8 %64, -32
  %conv2.i167.i = or i8 %65, 1
  %66 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i168.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i167.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i168.i)
  %cmp2.i.i169.i = icmp eq i32 %call1.i7.i168.i, 0
  br i1 %cmp2.i.i169.i, label %adv7511_wr.exit164.i.adv7511_wr_and_or.exit179.i_crit_edge, label %for.cond.i.i172.i

adv7511_wr.exit164.i.adv7511_wr_and_or.exit179.i_crit_edge: ; preds = %adv7511_wr.exit164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit179.i

for.cond.i.i172.i:                                ; preds = %adv7511_wr.exit164.i
  %call1.1.i.i170.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i167.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i170.i)
  %cmp2.1.i.i171.i = icmp eq i32 %call1.1.i.i170.i, 0
  br i1 %cmp2.1.i.i171.i, label %for.cond.i.i172.i.adv7511_wr_and_or.exit179.i_crit_edge, label %for.cond.1.i.i175.i

for.cond.i.i172.i.adv7511_wr_and_or.exit179.i_crit_edge: ; preds = %for.cond.i.i172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit179.i

for.cond.1.i.i175.i:                              ; preds = %for.cond.i.i172.i
  %call1.2.i.i173.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i167.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i173.i)
  %cmp2.2.i.i174.i = icmp eq i32 %call1.2.i.i173.i, 0
  br i1 %cmp2.2.i.i174.i, label %for.cond.1.i.i175.i.adv7511_wr_and_or.exit179.i_crit_edge, label %for.cond.2.i.i178.i

for.cond.1.i.i175.i.adv7511_wr_and_or.exit179.i_crit_edge: ; preds = %for.cond.1.i.i175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit179.i

for.cond.2.i.i178.i:                              ; preds = %for.cond.1.i.i175.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i176.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i176.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit179.i

adv7511_wr_and_or.exit179.i:                      ; preds = %for.cond.2.i.i178.i, %for.cond.1.i.i175.i.adv7511_wr_and_or.exit179.i_crit_edge, %for.cond.i.i172.i.adv7511_wr_and_or.exit179.i_crit_edge, %adv7511_wr.exit164.i.adv7511_wr_and_or.exit179.i_crit_edge
  %68 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i181.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 39, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i181.i)
  %cmp2.i182.i = icmp eq i32 %call1.i181.i, 0
  br i1 %cmp2.i182.i, label %adv7511_wr_and_or.exit179.i.adv7511_wr.exit192.i_crit_edge, label %for.cond.i185.i

adv7511_wr_and_or.exit179.i.adv7511_wr.exit192.i_crit_edge: ; preds = %adv7511_wr_and_or.exit179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit192.i

for.cond.i185.i:                                  ; preds = %adv7511_wr_and_or.exit179.i
  %call1.1.i183.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 39, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i183.i)
  %cmp2.1.i184.i = icmp eq i32 %call1.1.i183.i, 0
  br i1 %cmp2.1.i184.i, label %for.cond.i185.i.adv7511_wr.exit192.i_crit_edge, label %for.cond.1.i188.i

for.cond.i185.i.adv7511_wr.exit192.i_crit_edge:   ; preds = %for.cond.i185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit192.i

for.cond.1.i188.i:                                ; preds = %for.cond.i185.i
  %call1.2.i186.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 39, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i186.i)
  %cmp2.2.i187.i = icmp eq i32 %call1.2.i186.i, 0
  br i1 %cmp2.2.i187.i, label %for.cond.1.i188.i.adv7511_wr.exit192.i_crit_edge, label %for.cond.2.i191.i

for.cond.1.i188.i.adv7511_wr.exit192.i_crit_edge: ; preds = %for.cond.1.i188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit192.i

for.cond.2.i191.i:                                ; preds = %for.cond.1.i188.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i189.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i190.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i189.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit192.i

adv7511_wr.exit192.i:                             ; preds = %for.cond.2.i191.i, %for.cond.1.i188.i.adv7511_wr.exit192.i_crit_edge, %for.cond.i185.i.adv7511_wr.exit192.i_crit_edge, %adv7511_wr_and_or.exit179.i.adv7511_wr.exit192.i_crit_edge
  %70 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i194.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 40) #11
  %72 = trunc i32 %call1.i.i194.i to i8
  %73 = and i8 %72, -32
  %74 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i195.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 40, i8 noundef zeroext %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i195.i)
  %cmp2.i.i196.i = icmp eq i32 %call1.i7.i195.i, 0
  br i1 %cmp2.i.i196.i, label %adv7511_wr.exit192.i.adv7511_wr_and_or.exit206.i_crit_edge, label %for.cond.i.i199.i

adv7511_wr.exit192.i.adv7511_wr_and_or.exit206.i_crit_edge: ; preds = %adv7511_wr.exit192.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit206.i

for.cond.i.i199.i:                                ; preds = %adv7511_wr.exit192.i
  %call1.1.i.i197.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 40, i8 noundef zeroext %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i197.i)
  %cmp2.1.i.i198.i = icmp eq i32 %call1.1.i.i197.i, 0
  br i1 %cmp2.1.i.i198.i, label %for.cond.i.i199.i.adv7511_wr_and_or.exit206.i_crit_edge, label %for.cond.1.i.i202.i

for.cond.i.i199.i.adv7511_wr_and_or.exit206.i_crit_edge: ; preds = %for.cond.i.i199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit206.i

for.cond.1.i.i202.i:                              ; preds = %for.cond.i.i199.i
  %call1.2.i.i200.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 40, i8 noundef zeroext %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i200.i)
  %cmp2.2.i.i201.i = icmp eq i32 %call1.2.i.i200.i, 0
  br i1 %cmp2.2.i.i201.i, label %for.cond.1.i.i202.i.adv7511_wr_and_or.exit206.i_crit_edge, label %for.cond.2.i.i205.i

for.cond.1.i.i202.i.adv7511_wr_and_or.exit206.i_crit_edge: ; preds = %for.cond.1.i.i202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit206.i

for.cond.2.i.i205.i:                              ; preds = %for.cond.1.i.i202.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i203.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i204.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i203.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit206.i

adv7511_wr_and_or.exit206.i:                      ; preds = %for.cond.2.i.i205.i, %for.cond.1.i.i202.i.adv7511_wr_and_or.exit206.i_crit_edge, %for.cond.i.i199.i.adv7511_wr_and_or.exit206.i_crit_edge, %adv7511_wr.exit192.i.adv7511_wr_and_or.exit206.i_crit_edge
  %76 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i208.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 41, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208.i)
  %cmp2.i209.i = icmp eq i32 %call1.i208.i, 0
  br i1 %cmp2.i209.i, label %adv7511_wr_and_or.exit206.i.adv7511_wr.exit219.i_crit_edge, label %for.cond.i212.i

adv7511_wr_and_or.exit206.i.adv7511_wr.exit219.i_crit_edge: ; preds = %adv7511_wr_and_or.exit206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit219.i

for.cond.i212.i:                                  ; preds = %adv7511_wr_and_or.exit206.i
  %call1.1.i210.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 41, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i210.i)
  %cmp2.1.i211.i = icmp eq i32 %call1.1.i210.i, 0
  br i1 %cmp2.1.i211.i, label %for.cond.i212.i.adv7511_wr.exit219.i_crit_edge, label %for.cond.1.i215.i

for.cond.i212.i.adv7511_wr.exit219.i_crit_edge:   ; preds = %for.cond.i212.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit219.i

for.cond.1.i215.i:                                ; preds = %for.cond.i212.i
  %call1.2.i213.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 41, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i213.i)
  %cmp2.2.i214.i = icmp eq i32 %call1.2.i213.i, 0
  br i1 %cmp2.2.i214.i, label %for.cond.1.i215.i.adv7511_wr.exit219.i_crit_edge, label %for.cond.2.i218.i

for.cond.1.i215.i.adv7511_wr.exit219.i_crit_edge: ; preds = %for.cond.1.i215.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit219.i

for.cond.2.i218.i:                                ; preds = %for.cond.1.i215.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i216.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i217.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i216.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit219.i

adv7511_wr.exit219.i:                             ; preds = %for.cond.2.i218.i, %for.cond.1.i215.i.adv7511_wr.exit219.i_crit_edge, %for.cond.i212.i.adv7511_wr.exit219.i_crit_edge, %adv7511_wr_and_or.exit206.i.adv7511_wr.exit219.i_crit_edge
  %78 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i221.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 42) #11
  %80 = trunc i32 %call1.i.i221.i to i8
  %81 = and i8 %80, -32
  %82 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i222.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 42, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i222.i)
  %cmp2.i.i223.i = icmp eq i32 %call1.i7.i222.i, 0
  br i1 %cmp2.i.i223.i, label %adv7511_wr.exit219.i.adv7511_wr_and_or.exit233.i_crit_edge, label %for.cond.i.i226.i

adv7511_wr.exit219.i.adv7511_wr_and_or.exit233.i_crit_edge: ; preds = %adv7511_wr.exit219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit233.i

for.cond.i.i226.i:                                ; preds = %adv7511_wr.exit219.i
  %call1.1.i.i224.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 42, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i224.i)
  %cmp2.1.i.i225.i = icmp eq i32 %call1.1.i.i224.i, 0
  br i1 %cmp2.1.i.i225.i, label %for.cond.i.i226.i.adv7511_wr_and_or.exit233.i_crit_edge, label %for.cond.1.i.i229.i

for.cond.i.i226.i.adv7511_wr_and_or.exit233.i_crit_edge: ; preds = %for.cond.i.i226.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit233.i

for.cond.1.i.i229.i:                              ; preds = %for.cond.i.i226.i
  %call1.2.i.i227.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 42, i8 noundef zeroext %81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i227.i)
  %cmp2.2.i.i228.i = icmp eq i32 %call1.2.i.i227.i, 0
  br i1 %cmp2.2.i.i228.i, label %for.cond.1.i.i229.i.adv7511_wr_and_or.exit233.i_crit_edge, label %for.cond.2.i.i232.i

for.cond.1.i.i229.i.adv7511_wr_and_or.exit233.i_crit_edge: ; preds = %for.cond.1.i.i229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit233.i

for.cond.2.i.i232.i:                              ; preds = %for.cond.1.i.i229.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i230.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i231.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i230.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit233.i

adv7511_wr_and_or.exit233.i:                      ; preds = %for.cond.2.i.i232.i, %for.cond.1.i.i229.i.adv7511_wr_and_or.exit233.i_crit_edge, %for.cond.i.i226.i.adv7511_wr_and_or.exit233.i_crit_edge, %adv7511_wr.exit219.i.adv7511_wr_and_or.exit233.i_crit_edge
  %84 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i235.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 43, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i235.i)
  %cmp2.i236.i = icmp eq i32 %call1.i235.i, 0
  br i1 %cmp2.i236.i, label %adv7511_wr_and_or.exit233.i.adv7511_wr.exit246.i_crit_edge, label %for.cond.i239.i

adv7511_wr_and_or.exit233.i.adv7511_wr.exit246.i_crit_edge: ; preds = %adv7511_wr_and_or.exit233.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246.i

for.cond.i239.i:                                  ; preds = %adv7511_wr_and_or.exit233.i
  %call1.1.i237.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 43, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i237.i)
  %cmp2.1.i238.i = icmp eq i32 %call1.1.i237.i, 0
  br i1 %cmp2.1.i238.i, label %for.cond.i239.i.adv7511_wr.exit246.i_crit_edge, label %for.cond.1.i242.i

for.cond.i239.i.adv7511_wr.exit246.i_crit_edge:   ; preds = %for.cond.i239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246.i

for.cond.1.i242.i:                                ; preds = %for.cond.i239.i
  %call1.2.i240.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 43, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i240.i)
  %cmp2.2.i241.i = icmp eq i32 %call1.2.i240.i, 0
  br i1 %cmp2.2.i241.i, label %for.cond.1.i242.i.adv7511_wr.exit246.i_crit_edge, label %for.cond.2.i245.i

for.cond.1.i242.i.adv7511_wr.exit246.i_crit_edge: ; preds = %for.cond.1.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit246.i

for.cond.2.i245.i:                                ; preds = %for.cond.1.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i243.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i244.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i243.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit246.i

adv7511_wr.exit246.i:                             ; preds = %for.cond.2.i245.i, %for.cond.1.i242.i.adv7511_wr.exit246.i_crit_edge, %for.cond.i239.i.adv7511_wr.exit246.i_crit_edge, %adv7511_wr_and_or.exit233.i.adv7511_wr.exit246.i_crit_edge
  %86 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i248.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 44) #11
  %88 = trunc i32 %call1.i.i248.i to i8
  %89 = and i8 %88, -32
  %conv2.i249.i = or i8 %89, 13
  %90 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i250.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i249.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i250.i)
  %cmp2.i.i251.i = icmp eq i32 %call1.i7.i250.i, 0
  br i1 %cmp2.i.i251.i, label %adv7511_wr.exit246.i.adv7511_wr_and_or.exit261.i_crit_edge, label %for.cond.i.i254.i

adv7511_wr.exit246.i.adv7511_wr_and_or.exit261.i_crit_edge: ; preds = %adv7511_wr.exit246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit261.i

for.cond.i.i254.i:                                ; preds = %adv7511_wr.exit246.i
  %call1.1.i.i252.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i249.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i252.i)
  %cmp2.1.i.i253.i = icmp eq i32 %call1.1.i.i252.i, 0
  br i1 %cmp2.1.i.i253.i, label %for.cond.i.i254.i.adv7511_wr_and_or.exit261.i_crit_edge, label %for.cond.1.i.i257.i

for.cond.i.i254.i.adv7511_wr_and_or.exit261.i_crit_edge: ; preds = %for.cond.i.i254.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit261.i

for.cond.1.i.i257.i:                              ; preds = %for.cond.i.i254.i
  %call1.2.i.i255.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i249.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i255.i)
  %cmp2.2.i.i256.i = icmp eq i32 %call1.2.i.i255.i, 0
  br i1 %cmp2.2.i.i256.i, label %for.cond.1.i.i257.i.adv7511_wr_and_or.exit261.i_crit_edge, label %for.cond.2.i.i260.i

for.cond.1.i.i257.i.adv7511_wr_and_or.exit261.i_crit_edge: ; preds = %for.cond.1.i.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit261.i

for.cond.2.i.i260.i:                              ; preds = %for.cond.1.i.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i258.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i259.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i258.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit261.i

adv7511_wr_and_or.exit261.i:                      ; preds = %for.cond.2.i.i260.i, %for.cond.1.i.i257.i.adv7511_wr_and_or.exit261.i_crit_edge, %for.cond.i.i254.i.adv7511_wr_and_or.exit261.i_crit_edge, %adv7511_wr.exit246.i.adv7511_wr_and_or.exit261.i_crit_edge
  %92 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i263.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 45, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i263.i)
  %cmp2.i264.i = icmp eq i32 %call1.i263.i, 0
  br i1 %cmp2.i264.i, label %adv7511_wr_and_or.exit261.i.adv7511_wr.exit274.i_crit_edge, label %for.cond.i267.i

adv7511_wr_and_or.exit261.i.adv7511_wr.exit274.i_crit_edge: ; preds = %adv7511_wr_and_or.exit261.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit274.i

for.cond.i267.i:                                  ; preds = %adv7511_wr_and_or.exit261.i
  %call1.1.i265.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 45, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i265.i)
  %cmp2.1.i266.i = icmp eq i32 %call1.1.i265.i, 0
  br i1 %cmp2.1.i266.i, label %for.cond.i267.i.adv7511_wr.exit274.i_crit_edge, label %for.cond.1.i270.i

for.cond.i267.i.adv7511_wr.exit274.i_crit_edge:   ; preds = %for.cond.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit274.i

for.cond.1.i270.i:                                ; preds = %for.cond.i267.i
  %call1.2.i268.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 45, i8 noundef zeroext -52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i268.i)
  %cmp2.2.i269.i = icmp eq i32 %call1.2.i268.i, 0
  br i1 %cmp2.2.i269.i, label %for.cond.1.i270.i.adv7511_wr.exit274.i_crit_edge, label %for.cond.2.i273.i

for.cond.1.i270.i.adv7511_wr.exit274.i_crit_edge: ; preds = %for.cond.1.i270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit274.i

for.cond.2.i273.i:                                ; preds = %for.cond.1.i270.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i271.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i272.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i271.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit274.i

adv7511_wr.exit274.i:                             ; preds = %for.cond.2.i273.i, %for.cond.1.i270.i.adv7511_wr.exit274.i_crit_edge, %for.cond.i267.i.adv7511_wr.exit274.i_crit_edge, %adv7511_wr_and_or.exit261.i.adv7511_wr.exit274.i_crit_edge
  %94 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i276.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext 46) #11
  %96 = trunc i32 %call1.i.i276.i to i8
  %97 = and i8 %96, -32
  %conv2.i277.i = or i8 %97, 1
  %98 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i278.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i277.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i278.i)
  %cmp2.i.i279.i = icmp eq i32 %call1.i7.i278.i, 0
  br i1 %cmp2.i.i279.i, label %adv7511_wr.exit274.i.adv7511_wr_and_or.exit289.i_crit_edge, label %for.cond.i.i282.i

adv7511_wr.exit274.i.adv7511_wr_and_or.exit289.i_crit_edge: ; preds = %adv7511_wr.exit274.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit289.i

for.cond.i.i282.i:                                ; preds = %adv7511_wr.exit274.i
  %call1.1.i.i280.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i277.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i280.i)
  %cmp2.1.i.i281.i = icmp eq i32 %call1.1.i.i280.i, 0
  br i1 %cmp2.1.i.i281.i, label %for.cond.i.i282.i.adv7511_wr_and_or.exit289.i_crit_edge, label %for.cond.1.i.i285.i

for.cond.i.i282.i.adv7511_wr_and_or.exit289.i_crit_edge: ; preds = %for.cond.i.i282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit289.i

for.cond.1.i.i285.i:                              ; preds = %for.cond.i.i282.i
  %call1.2.i.i283.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i277.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i283.i)
  %cmp2.2.i.i284.i = icmp eq i32 %call1.2.i.i283.i, 0
  br i1 %cmp2.2.i.i284.i, label %for.cond.1.i.i285.i.adv7511_wr_and_or.exit289.i_crit_edge, label %for.cond.2.i.i288.i

for.cond.1.i.i285.i.adv7511_wr_and_or.exit289.i_crit_edge: ; preds = %for.cond.1.i.i285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit289.i

for.cond.2.i.i288.i:                              ; preds = %for.cond.1.i.i285.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i286.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i287.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i286.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit289.i

adv7511_wr_and_or.exit289.i:                      ; preds = %for.cond.2.i.i288.i, %for.cond.1.i.i285.i.adv7511_wr_and_or.exit289.i_crit_edge, %for.cond.i.i282.i.adv7511_wr_and_or.exit289.i_crit_edge, %adv7511_wr.exit274.i.adv7511_wr_and_or.exit289.i_crit_edge
  %100 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i291.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext 47, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i291.i)
  %cmp2.i292.i = icmp eq i32 %call1.i291.i, 0
  br i1 %cmp2.i292.i, label %adv7511_wr_and_or.exit289.i.adv7511_csc_coeff.exit_crit_edge, label %for.cond.i295.i

adv7511_wr_and_or.exit289.i.adv7511_csc_coeff.exit_crit_edge: ; preds = %adv7511_wr_and_or.exit289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_coeff.exit

for.cond.i295.i:                                  ; preds = %adv7511_wr_and_or.exit289.i
  %call1.1.i293.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext 47, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i293.i)
  %cmp2.1.i294.i = icmp eq i32 %call1.1.i293.i, 0
  br i1 %cmp2.1.i294.i, label %for.cond.i295.i.adv7511_csc_coeff.exit_crit_edge, label %for.cond.1.i298.i

for.cond.i295.i.adv7511_csc_coeff.exit_crit_edge: ; preds = %for.cond.i295.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_coeff.exit

for.cond.1.i298.i:                                ; preds = %for.cond.i295.i
  %call1.2.i296.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext 47, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i296.i)
  %cmp2.2.i297.i = icmp eq i32 %call1.2.i296.i, 0
  br i1 %cmp2.2.i297.i, label %for.cond.1.i298.i.adv7511_csc_coeff.exit_crit_edge, label %for.cond.2.i301.i

for.cond.1.i298.i.adv7511_csc_coeff.exit_crit_edge: ; preds = %for.cond.1.i298.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_csc_coeff.exit

for.cond.2.i301.i:                                ; preds = %for.cond.1.i298.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i299.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i300.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i299.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_csc_coeff.exit

adv7511_csc_coeff.exit:                           ; preds = %for.cond.2.i301.i, %for.cond.1.i298.i.adv7511_csc_coeff.exit_crit_edge, %for.cond.i295.i.adv7511_csc_coeff.exit_crit_edge, %adv7511_wr_and_or.exit289.i.adv7511_csc_coeff.exit_crit_edge
  %102 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i19 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 24) #11
  %104 = trunc i32 %call1.i.i19 to i8
  %conv2.i = or i8 %104, -128
  %105 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %106, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i20 = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i20, label %adv7511_csc_coeff.exit.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i23

adv7511_csc_coeff.exit.adv7511_wr_and_or.exit_crit_edge: ; preds = %adv7511_csc_coeff.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i23:                                   ; preds = %adv7511_csc_coeff.exit
  %call1.1.i.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %106, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i21)
  %cmp2.1.i.i22 = icmp eq i32 %call1.1.i.i21, 0
  br i1 %cmp2.1.i.i22, label %for.cond.i.i23.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i26

for.cond.i.i23.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.i.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i26:                                 ; preds = %for.cond.i.i23
  %call1.2.i.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %106, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i24)
  %cmp2.2.i.i25 = icmp eq i32 %call1.2.i.i24, 0
  br i1 %cmp2.2.i.i25, label %for.cond.1.i.i26.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i29

for.cond.1.i.i26.adv7511_wr_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i29:                                 ; preds = %for.cond.1.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i27 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i27, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i29, %for.cond.1.i.i26.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i23.adv7511_wr_and_or.exit_crit_edge, %adv7511_csc_coeff.exit.adv7511_wr_and_or.exit_crit_edge
  %107 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i32 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %108, i8 noundef zeroext 87) #11
  %109 = trunc i32 %call1.i.i32 to i8
  %110 = and i8 %109, -13
  %conv2.i33 = or i8 %110, 4
  %111 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i34)
  %cmp2.i.i35 = icmp eq i32 %call1.i7.i34, 0
  br i1 %cmp2.i.i35, label %adv7511_wr_and_or.exit.if.end_crit_edge, label %for.cond.i.i38

adv7511_wr_and_or.exit.if.end_crit_edge:          ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i.i38:                                   ; preds = %adv7511_wr_and_or.exit
  %call1.1.i.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i36)
  %cmp2.1.i.i37 = icmp eq i32 %call1.1.i.i36, 0
  br i1 %cmp2.1.i.i37, label %for.cond.i.i38.if.end_crit_edge, label %for.cond.1.i.i41

for.cond.i.i38.if.end_crit_edge:                  ; preds = %for.cond.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.1.i.i41:                                 ; preds = %for.cond.i.i38
  %call1.2.i.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i39)
  %cmp2.2.i.i40 = icmp eq i32 %call1.2.i.i39, 0
  br i1 %cmp2.2.i.i40, label %for.cond.1.i.i41.if.end_crit_edge, label %for.cond.1.i.i41.if.end.sink.split_crit_edge

for.cond.1.i.i41.if.end.sink.split_crit_edge:     ; preds = %for.cond.1.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

for.cond.1.i.i41.if.end_crit_edge:                ; preds = %for.cond.1.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %113 = and i8 %2, 127
  %114 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %115, i8 noundef zeroext 24, i8 noundef zeroext %113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i49)
  %cmp2.i.i50 = icmp eq i32 %call1.i7.i49, 0
  br i1 %cmp2.i.i50, label %if.else.adv7511_wr_and_or.exit61_crit_edge, label %for.cond.i.i53

if.else.adv7511_wr_and_or.exit61_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit61

for.cond.i.i53:                                   ; preds = %if.else
  %call1.1.i.i51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %115, i8 noundef zeroext 24, i8 noundef zeroext %113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i51)
  %cmp2.1.i.i52 = icmp eq i32 %call1.1.i.i51, 0
  br i1 %cmp2.1.i.i52, label %for.cond.i.i53.adv7511_wr_and_or.exit61_crit_edge, label %for.cond.1.i.i56

for.cond.i.i53.adv7511_wr_and_or.exit61_crit_edge: ; preds = %for.cond.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit61

for.cond.1.i.i56:                                 ; preds = %for.cond.i.i53
  %call1.2.i.i54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %115, i8 noundef zeroext 24, i8 noundef zeroext %113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i54)
  %cmp2.2.i.i55 = icmp eq i32 %call1.2.i.i54, 0
  br i1 %cmp2.2.i.i55, label %for.cond.1.i.i56.adv7511_wr_and_or.exit61_crit_edge, label %for.cond.2.i.i59

for.cond.1.i.i56.adv7511_wr_and_or.exit61_crit_edge: ; preds = %for.cond.1.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit61

for.cond.2.i.i59:                                 ; preds = %for.cond.1.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i57 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i57, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit61

adv7511_wr_and_or.exit61:                         ; preds = %for.cond.2.i.i59, %for.cond.1.i.i56.adv7511_wr_and_or.exit61_crit_edge, %for.cond.i.i53.adv7511_wr_and_or.exit61_crit_edge, %if.else.adv7511_wr_and_or.exit61_crit_edge
  %116 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i63 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %117, i8 noundef zeroext 87) #11
  %118 = trunc i32 %call1.i.i63 to i8
  %119 = and i8 %118, -13
  %conv2.i64 = or i8 %119, 8
  %120 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i65)
  %cmp2.i.i66 = icmp eq i32 %call1.i7.i65, 0
  br i1 %cmp2.i.i66, label %adv7511_wr_and_or.exit61.if.end_crit_edge, label %for.cond.i.i69

adv7511_wr_and_or.exit61.if.end_crit_edge:        ; preds = %adv7511_wr_and_or.exit61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i.i69:                                   ; preds = %adv7511_wr_and_or.exit61
  %call1.1.i.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i67)
  %cmp2.1.i.i68 = icmp eq i32 %call1.1.i.i67, 0
  br i1 %cmp2.1.i.i68, label %for.cond.i.i69.if.end_crit_edge, label %for.cond.1.i.i72

for.cond.i.i69.if.end_crit_edge:                  ; preds = %for.cond.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.1.i.i72:                                 ; preds = %for.cond.i.i69
  %call1.2.i.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i70)
  %cmp2.2.i.i71 = icmp eq i32 %call1.2.i.i70, 0
  br i1 %cmp2.2.i.i71, label %for.cond.1.i.i72.if.end_crit_edge, label %for.cond.1.i.i72.if.end.sink.split_crit_edge

for.cond.1.i.i72.if.end.sink.split_crit_edge:     ; preds = %for.cond.1.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

for.cond.1.i.i72.if.end_crit_edge:                ; preds = %for.cond.1.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.sink.split:                                ; preds = %for.cond.1.i.i72.if.end.sink.split_crit_edge, %for.cond.1.i.i41.if.end.sink.split_crit_edge
  %name.i.i73 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i73, ptr noundef nonnull @.str.208) #14
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.cond.1.i.i72.if.end_crit_edge, %for.cond.i.i69.if.end_crit_edge, %adv7511_wr_and_or.exit61.if.end_crit_edge, %for.cond.1.i.i41.if.end_crit_edge, %for.cond.i.i38.if.end_crit_edge, %adv7511_wr_and_or.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7511_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.adv7511_enum_mbus_code, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %code1, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %2 = call ptr @memset(ptr %format1, i32 0, i32 48)
  %3 = getelementptr i8, ptr %sd, i32 440
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format1, align 4
  %height.i = getelementptr i8, ptr %sd, i32 444
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height3.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i.not = icmp eq i16 %14, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then4.v4l2_subdev_get_try_format.exit_crit_edge, !prof !496

if.then4.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.204, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then4.v4l2_subdev_get_try_format.exit_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code, align 4
  %code8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code8, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  %colorspace10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %colorspace10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %colorspace10, align 4
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %16, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %25, ptr %26, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %16, i32 0, i32 6
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %quantization, align 2
  %quantization13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %quantization13 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %quantization13, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %16, i32 0, i32 7
  %31 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %xfer_func, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmt_code = getelementptr i8, ptr %sd, i32 568
  %33 = ptrtoint ptr %fmt_code to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt_code, align 4
  %code17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %code17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %code17, align 4
  %colorspace18 = getelementptr i8, ptr %sd, i32 572
  %36 = ptrtoint ptr %colorspace18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %colorspace18, align 4
  %colorspace20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %colorspace20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %colorspace20, align 4
  %ycbcr_enc = getelementptr i8, ptr %sd, i32 576
  %39 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ycbcr_enc, align 4
  %conv = trunc i32 %40 to i16
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv, ptr %41, align 4
  %quantization22 = getelementptr i8, ptr %sd, i32 580
  %43 = ptrtoint ptr %quantization22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quantization22, align 4
  %conv23 = trunc i32 %44 to i16
  %quantization25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %quantization25 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv23, ptr %quantization25, align 2
  %xfer_func26 = getelementptr i8, ptr %sd, i32 584
  %46 = ptrtoint ptr %xfer_func26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xfer_func26, align 4
  %conv27 = trunc i32 %47 to i16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %.sink = phi i16 [ %32, %v4l2_subdev_get_try_format.exit ], [ %conv27, %if.else ]
  %xfer_func15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %48 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.sink, ptr %xfer_func15, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %content_type = getelementptr i8, ptr %sd, i32 588
  %0 = ptrtoint ptr %content_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %content_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  %phi.bo220 = shl i32 %1, 4
  %cond = select i1 %cmp.not, i32 0, i32 %phi.bo220
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 8207, label %if.end.sw.epilog_crit_edge
    i32 8209, label %if.end.sw.epilog_crit_edge388
    i32 4106, label %if.end.sw.epilog_crit_edge389
  ]

if.end.sw.epilog_crit_edge389:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge388:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge388, %if.end.sw.epilog_crit_edge389
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %7 = getelementptr i8, ptr %sd, i32 440
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %format7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format7, align 4
  %height.i = getelementptr i8, ptr %sd, i32 444
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height3.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then11, label %if.end24

if.then11:                                        ; preds = %sw.epilog
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.not = icmp eq i16 %18, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then11.v4l2_subdev_get_try_format.exit_crit_edge, !prof !496

if.then11.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.204, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then11.v4l2_subdev_get_try_format.exit_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  %code16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %code16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code16, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %20, i32 0, i32 4
  %26 = ptrtoint ptr %colorspace18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace18, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 4
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %20, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %30, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %quantization, align 2
  %quantization21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %20, i32 0, i32 6
  %34 = ptrtoint ptr %quantization21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %quantization21, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xfer_func, align 4
  %xfer_func23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %20, i32 0, i32 7
  %37 = ptrtoint ptr %xfer_func23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %xfer_func23, align 4
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %38 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %5, label %sw.default30 [
    i32 8207, label %sw.bb27
    i32 8209, label %sw.bb28
  ]

sw.bb27:                                          ; preds = %if.end24
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %39 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 21) #11
  %41 = trunc i32 %call1.i.i to i8
  %42 = and i8 %41, -16
  %conv2.i = or i8 %42, 1
  %43 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %sw.bb27.adv7511_wr_and_or.exit_crit_edge, label %for.cond.i.i

sw.bb27.adv7511_wr_and_or.exit_crit_edge:         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.i.i:                                     ; preds = %sw.bb27
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit

adv7511_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_wr_and_or.exit_crit_edge, %for.cond.i.i.adv7511_wr_and_or.exit_crit_edge, %sw.bb27.adv7511_wr_and_or.exit_crit_edge
  %45 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i225 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %46, i8 noundef zeroext 22) #11
  %47 = trunc i32 %call1.i.i225 to i8
  %48 = and i8 %47, 3
  %conv2.i226 = or i8 %48, -72
  %49 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i227 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i227)
  %cmp2.i.i228 = icmp eq i32 %call1.i7.i227, 0
  br i1 %cmp2.i.i228, label %adv7511_wr_and_or.exit.sw.epilog31_crit_edge, label %for.cond.i.i231

adv7511_wr_and_or.exit.sw.epilog31_crit_edge:     ; preds = %adv7511_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.i.i231:                                  ; preds = %adv7511_wr_and_or.exit
  %call1.1.i.i229 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i229)
  %cmp2.1.i.i230 = icmp eq i32 %call1.1.i.i229, 0
  br i1 %cmp2.1.i.i230, label %for.cond.i.i231.sw.epilog31_crit_edge, label %for.cond.1.i.i234

for.cond.i.i231.sw.epilog31_crit_edge:            ; preds = %for.cond.i.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.1.i.i234:                                ; preds = %for.cond.i.i231
  %call1.2.i.i232 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i232)
  %cmp2.2.i.i233 = icmp eq i32 %call1.2.i.i232, 0
  br i1 %cmp2.2.i.i233, label %for.cond.1.i.i234.sw.epilog31_crit_edge, label %for.cond.1.i.i234.sw.epilog31.sink.split_crit_edge

for.cond.1.i.i234.sw.epilog31.sink.split_crit_edge: ; preds = %for.cond.1.i.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31.sink.split

for.cond.1.i.i234.sw.epilog31_crit_edge:          ; preds = %for.cond.1.i.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.bb28:                                          ; preds = %if.end24
  %dev_priv.i.i.i239 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %51 = ptrtoint ptr %dev_priv.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i.i.i239, align 4
  %call1.i.i240 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext 21) #11
  %53 = trunc i32 %call1.i.i240 to i8
  %54 = and i8 %53, -16
  %conv2.i241 = or i8 %54, 1
  %55 = ptrtoint ptr %dev_priv.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i.i.i239, align 4
  %call1.i7.i242 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i241) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i242)
  %cmp2.i.i243 = icmp eq i32 %call1.i7.i242, 0
  br i1 %cmp2.i.i243, label %sw.bb28.adv7511_wr_and_or.exit253_crit_edge, label %for.cond.i.i246

sw.bb28.adv7511_wr_and_or.exit253_crit_edge:      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit253

for.cond.i.i246:                                  ; preds = %sw.bb28
  %call1.1.i.i244 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i241) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i244)
  %cmp2.1.i.i245 = icmp eq i32 %call1.1.i.i244, 0
  br i1 %cmp2.1.i.i245, label %for.cond.i.i246.adv7511_wr_and_or.exit253_crit_edge, label %for.cond.1.i.i249

for.cond.i.i246.adv7511_wr_and_or.exit253_crit_edge: ; preds = %for.cond.i.i246
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit253

for.cond.1.i.i249:                                ; preds = %for.cond.i.i246
  %call1.2.i.i247 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i241) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i247)
  %cmp2.2.i.i248 = icmp eq i32 %call1.2.i.i247, 0
  br i1 %cmp2.2.i.i248, label %for.cond.1.i.i249.adv7511_wr_and_or.exit253_crit_edge, label %for.cond.2.i.i252

for.cond.1.i.i249.adv7511_wr_and_or.exit253_crit_edge: ; preds = %for.cond.1.i.i249
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit253

for.cond.2.i.i252:                                ; preds = %for.cond.1.i.i249
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i250 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i250, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit253

adv7511_wr_and_or.exit253:                        ; preds = %for.cond.2.i.i252, %for.cond.1.i.i249.adv7511_wr_and_or.exit253_crit_edge, %for.cond.i.i246.adv7511_wr_and_or.exit253_crit_edge, %sw.bb28.adv7511_wr_and_or.exit253_crit_edge
  %57 = ptrtoint ptr %dev_priv.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i.i239, align 4
  %call1.i.i255 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext 22) #11
  %59 = trunc i32 %call1.i.i255 to i8
  %60 = and i8 %59, 3
  %conv2.i256 = or i8 %60, -68
  %61 = ptrtoint ptr %dev_priv.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv.i.i.i239, align 4
  %call1.i7.i257 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i257)
  %cmp2.i.i258 = icmp eq i32 %call1.i7.i257, 0
  br i1 %cmp2.i.i258, label %adv7511_wr_and_or.exit253.sw.epilog31_crit_edge, label %for.cond.i.i261

adv7511_wr_and_or.exit253.sw.epilog31_crit_edge:  ; preds = %adv7511_wr_and_or.exit253
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.i.i261:                                  ; preds = %adv7511_wr_and_or.exit253
  %call1.1.i.i259 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i259)
  %cmp2.1.i.i260 = icmp eq i32 %call1.1.i.i259, 0
  br i1 %cmp2.1.i.i260, label %for.cond.i.i261.sw.epilog31_crit_edge, label %for.cond.1.i.i264

for.cond.i.i261.sw.epilog31_crit_edge:            ; preds = %for.cond.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.1.i.i264:                                ; preds = %for.cond.i.i261
  %call1.2.i.i262 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 22, i8 noundef zeroext %conv2.i256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i262)
  %cmp2.2.i.i263 = icmp eq i32 %call1.2.i.i262, 0
  br i1 %cmp2.2.i.i263, label %for.cond.1.i.i264.sw.epilog31_crit_edge, label %for.cond.1.i.i264.sw.epilog31.sink.split_crit_edge

for.cond.1.i.i264.sw.epilog31.sink.split_crit_edge: ; preds = %for.cond.1.i.i264
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31.sink.split

for.cond.1.i.i264.sw.epilog31_crit_edge:          ; preds = %for.cond.1.i.i264
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.default30:                                     ; preds = %if.end24
  %dev_priv.i.i.i269 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %63 = ptrtoint ptr %dev_priv.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i.i269, align 4
  %call1.i.i270 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %64, i8 noundef zeroext 21) #11
  %65 = trunc i32 %call1.i.i270 to i8
  %66 = and i8 %65, -16
  %67 = ptrtoint ptr %dev_priv.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i.i.i269, align 4
  %call1.i7.i271 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 21, i8 noundef zeroext %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i271)
  %cmp2.i.i272 = icmp eq i32 %call1.i7.i271, 0
  br i1 %cmp2.i.i272, label %sw.default30.adv7511_wr_and_or.exit282_crit_edge, label %for.cond.i.i275

sw.default30.adv7511_wr_and_or.exit282_crit_edge: ; preds = %sw.default30
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit282

for.cond.i.i275:                                  ; preds = %sw.default30
  %call1.1.i.i273 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 21, i8 noundef zeroext %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i273)
  %cmp2.1.i.i274 = icmp eq i32 %call1.1.i.i273, 0
  br i1 %cmp2.1.i.i274, label %for.cond.i.i275.adv7511_wr_and_or.exit282_crit_edge, label %for.cond.1.i.i278

for.cond.i.i275.adv7511_wr_and_or.exit282_crit_edge: ; preds = %for.cond.i.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit282

for.cond.1.i.i278:                                ; preds = %for.cond.i.i275
  %call1.2.i.i276 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 21, i8 noundef zeroext %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i276)
  %cmp2.2.i.i277 = icmp eq i32 %call1.2.i.i276, 0
  br i1 %cmp2.2.i.i277, label %for.cond.1.i.i278.adv7511_wr_and_or.exit282_crit_edge, label %for.cond.2.i.i281

for.cond.1.i.i278.adv7511_wr_and_or.exit282_crit_edge: ; preds = %for.cond.1.i.i278
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit282

for.cond.2.i.i281:                                ; preds = %for.cond.1.i.i278
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i279 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i279, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit282

adv7511_wr_and_or.exit282:                        ; preds = %for.cond.2.i.i281, %for.cond.1.i.i278.adv7511_wr_and_or.exit282_crit_edge, %for.cond.i.i275.adv7511_wr_and_or.exit282_crit_edge, %sw.default30.adv7511_wr_and_or.exit282_crit_edge
  %69 = ptrtoint ptr %dev_priv.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i.i.i269, align 4
  %call1.i.i284 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext 22) #11
  %71 = trunc i32 %call1.i.i284 to i8
  %72 = and i8 %71, 3
  %73 = ptrtoint ptr %dev_priv.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i.i269, align 4
  %call1.i7.i285 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 22, i8 noundef zeroext %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i285)
  %cmp2.i.i286 = icmp eq i32 %call1.i7.i285, 0
  br i1 %cmp2.i.i286, label %adv7511_wr_and_or.exit282.sw.epilog31_crit_edge, label %for.cond.i.i289

adv7511_wr_and_or.exit282.sw.epilog31_crit_edge:  ; preds = %adv7511_wr_and_or.exit282
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.i.i289:                                  ; preds = %adv7511_wr_and_or.exit282
  %call1.1.i.i287 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 22, i8 noundef zeroext %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i287)
  %cmp2.1.i.i288 = icmp eq i32 %call1.1.i.i287, 0
  br i1 %cmp2.1.i.i288, label %for.cond.i.i289.sw.epilog31_crit_edge, label %for.cond.1.i.i292

for.cond.i.i289.sw.epilog31_crit_edge:            ; preds = %for.cond.i.i289
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

for.cond.1.i.i292:                                ; preds = %for.cond.i.i289
  %call1.2.i.i290 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 22, i8 noundef zeroext %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i290)
  %cmp2.2.i.i291 = icmp eq i32 %call1.2.i.i290, 0
  br i1 %cmp2.2.i.i291, label %for.cond.1.i.i292.sw.epilog31_crit_edge, label %for.cond.1.i.i292.sw.epilog31.sink.split_crit_edge

for.cond.1.i.i292.sw.epilog31.sink.split_crit_edge: ; preds = %for.cond.1.i.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31.sink.split

for.cond.1.i.i292.sw.epilog31_crit_edge:          ; preds = %for.cond.1.i.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.epilog31.sink.split:                           ; preds = %for.cond.1.i.i292.sw.epilog31.sink.split_crit_edge, %for.cond.1.i.i264.sw.epilog31.sink.split_crit_edge, %for.cond.1.i.i234.sw.epilog31.sink.split_crit_edge
  %tobool92.not.ph = phi i1 [ false, %for.cond.1.i.i234.sw.epilog31.sink.split_crit_edge ], [ false, %for.cond.1.i.i264.sw.epilog31.sink.split_crit_edge ], [ true, %for.cond.1.i.i292.sw.epilog31.sink.split_crit_edge ]
  %y.0.ph = phi i8 [ 32, %for.cond.1.i.i234.sw.epilog31.sink.split_crit_edge ], [ 32, %for.cond.1.i.i264.sw.epilog31.sink.split_crit_edge ], [ 0, %for.cond.1.i.i292.sw.epilog31.sink.split_crit_edge ]
  %name.i.i293 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i293, ptr noundef nonnull @.str.208) #14
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.epilog31.sink.split, %for.cond.1.i.i292.sw.epilog31_crit_edge, %for.cond.i.i289.sw.epilog31_crit_edge, %adv7511_wr_and_or.exit282.sw.epilog31_crit_edge, %for.cond.1.i.i264.sw.epilog31_crit_edge, %for.cond.i.i261.sw.epilog31_crit_edge, %adv7511_wr_and_or.exit253.sw.epilog31_crit_edge, %for.cond.1.i.i234.sw.epilog31_crit_edge, %for.cond.i.i231.sw.epilog31_crit_edge, %adv7511_wr_and_or.exit.sw.epilog31_crit_edge
  %tobool92.not = phi i1 [ false, %adv7511_wr_and_or.exit.sw.epilog31_crit_edge ], [ false, %for.cond.i.i231.sw.epilog31_crit_edge ], [ false, %for.cond.1.i.i234.sw.epilog31_crit_edge ], [ false, %adv7511_wr_and_or.exit253.sw.epilog31_crit_edge ], [ false, %for.cond.i.i261.sw.epilog31_crit_edge ], [ false, %for.cond.1.i.i264.sw.epilog31_crit_edge ], [ true, %adv7511_wr_and_or.exit282.sw.epilog31_crit_edge ], [ true, %for.cond.i.i289.sw.epilog31_crit_edge ], [ true, %for.cond.1.i.i292.sw.epilog31_crit_edge ], [ %tobool92.not.ph, %sw.epilog31.sink.split ]
  %y.0 = phi i8 [ 32, %adv7511_wr_and_or.exit.sw.epilog31_crit_edge ], [ 32, %for.cond.i.i231.sw.epilog31_crit_edge ], [ 32, %for.cond.1.i.i234.sw.epilog31_crit_edge ], [ 32, %adv7511_wr_and_or.exit253.sw.epilog31_crit_edge ], [ 32, %for.cond.i.i261.sw.epilog31_crit_edge ], [ 32, %for.cond.1.i.i264.sw.epilog31_crit_edge ], [ 0, %adv7511_wr_and_or.exit282.sw.epilog31_crit_edge ], [ 0, %for.cond.i.i289.sw.epilog31_crit_edge ], [ 0, %for.cond.1.i.i292.sw.epilog31_crit_edge ], [ %y.0.ph, %sw.epilog31.sink.split ]
  %75 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %code, align 4
  %fmt_code = getelementptr i8, ptr %sd, i32 568
  %77 = ptrtoint ptr %fmt_code to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %fmt_code, align 4
  %colorspace35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %colorspace35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %colorspace35, align 4
  %colorspace36 = getelementptr i8, ptr %sd, i32 572
  %80 = ptrtoint ptr %colorspace36 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %colorspace36, align 4
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %81, align 4
  %conv38 = zext i16 %83 to i32
  %ycbcr_enc = getelementptr i8, ptr %sd, i32 576
  %84 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv38, ptr %ycbcr_enc, align 4
  %quantization40 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %85 = ptrtoint ptr %quantization40 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %quantization40, align 2
  %conv41 = zext i16 %86 to i32
  %quantization42 = getelementptr i8, ptr %sd, i32 580
  %87 = ptrtoint ptr %quantization42 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv41, ptr %quantization42, align 4
  %xfer_func44 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %88 = ptrtoint ptr %xfer_func44 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %xfer_func44, align 4
  %conv45 = zext i16 %89 to i32
  %xfer_func46 = getelementptr i8, ptr %sd, i32 584
  %90 = ptrtoint ptr %xfer_func46 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv45, ptr %xfer_func46, align 4
  %91 = load i32, ptr %colorspace35, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %91, label %sw.epilog31.sw.epilog101_crit_edge [
    i32 9, label %sw.bb49
    i32 1, label %sw.bb54
    i32 3, label %sw.bb67
    i32 8, label %sw.bb81
    i32 10, label %sw.bb90
  ]

sw.epilog31.sw.epilog101_crit_edge:               ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog101

sw.bb49:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %cond52 = select i1 %tobool92.not, i32 64, i32 48
  br label %sw.epilog101

sw.bb54:                                          ; preds = %sw.epilog31
  %not.tobool92.not = xor i1 %tobool92.not, true
  %cond57 = zext i1 %not.tobool92.not to i32
  br i1 %tobool92.not, label %sw.bb54.sw.epilog101_crit_edge, label %land.lhs.true

sw.bb54.sw.epilog101_crit_edge:                   ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog101

land.lhs.true:                                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %94)
  %cmp63 = icmp eq i16 %94, 3
  %spec.select = select i1 %cmp63, i32 3, i32 %cond57
  br label %sw.epilog101

sw.bb67:                                          ; preds = %sw.epilog31
  br i1 %tobool92.not, label %sw.bb67.sw.epilog101_crit_edge, label %land.lhs.true74

sw.bb67.sw.epilog101_crit_edge:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog101

land.lhs.true74:                                  ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %96)
  %cmp77 = icmp eq i16 %96, 4
  %spec.select222 = select i1 %cmp77, i32 3, i32 2
  %spec.select223 = select i1 %cmp77, i32 16, i32 0
  br label %sw.epilog101

sw.bb81:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %cond84 = select i1 %tobool92.not, i32 0, i32 3
  %cond88 = select i1 %tobool92.not, i32 0, i32 32
  br label %sw.epilog101

sw.bb90:                                          ; preds = %sw.epilog31
  br i1 %tobool92.not, label %sw.bb90.if.else_crit_edge, label %land.lhs.true93

sw.bb90.if.else_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true93:                                  ; preds = %sw.bb90
  %97 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %98)
  %cmp96 = icmp eq i16 %98, 7
  br i1 %cmp96, label %land.lhs.true93.sw.epilog101_crit_edge, label %land.lhs.true93.if.else_crit_edge

land.lhs.true93.if.else_crit_edge:                ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true93.sw.epilog101_crit_edge:           ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog101

if.else:                                          ; preds = %land.lhs.true93.if.else_crit_edge, %sw.bb90.if.else_crit_edge
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %if.else, %land.lhs.true93.sw.epilog101_crit_edge, %sw.bb81, %land.lhs.true74, %sw.bb67.sw.epilog101_crit_edge, %land.lhs.true, %sw.bb54.sw.epilog101_crit_edge, %sw.bb49, %sw.epilog31.sw.epilog101_crit_edge
  %c.0 = phi i32 [ 0, %sw.epilog31.sw.epilog101_crit_edge ], [ 3, %if.else ], [ %cond84, %sw.bb81 ], [ 0, %sw.bb67.sw.epilog101_crit_edge ], [ %cond57, %sw.bb54.sw.epilog101_crit_edge ], [ 3, %sw.bb49 ], [ %spec.select, %land.lhs.true ], [ %spec.select222, %land.lhs.true74 ], [ 3, %land.lhs.true93.sw.epilog101_crit_edge ]
  %ec.0 = phi i32 [ 0, %sw.epilog31.sw.epilog101_crit_edge ], [ 96, %if.else ], [ %cond88, %sw.bb81 ], [ 0, %sw.bb67.sw.epilog101_crit_edge ], [ 0, %sw.bb54.sw.epilog101_crit_edge ], [ %cond52, %sw.bb49 ], [ 0, %land.lhs.true ], [ %spec.select223, %land.lhs.true74 ], [ 80, %land.lhs.true93.sw.epilog101_crit_edge ]
  %99 = ptrtoint ptr %quantization40 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %quantization40, align 2
  %101 = zext i16 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.270)
  switch i16 %100, label %sw.epilog101.sw.epilog132_crit_edge [
    i16 1, label %sw.bb105
    i16 2, label %sw.bb118
  ]

sw.epilog101.sw.epilog132_crit_edge:              ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog132

sw.bb105:                                         ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #13
  %cond108 = select i1 %tobool92.not, i32 2, i32 0
  %sub = shl nuw nsw i32 %cond108, 6
  %phi.bo = add nuw nsw i32 %sub, 16320
  %phi.bo.op = and i32 %phi.bo, 16320
  %phi.bo387 = select i1 %tobool92.not, i32 %phi.bo.op, i32 64
  br label %sw.epilog132

sw.bb118:                                         ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #13
  %conv122 = zext i1 %tobool92.not to i32
  br label %sw.epilog132

sw.epilog132:                                     ; preds = %sw.bb118, %sw.bb105, %sw.epilog101.sw.epilog132_crit_edge
  %q.0 = phi i32 [ 0, %sw.epilog101.sw.epilog132_crit_edge ], [ %conv122, %sw.bb118 ], [ %cond108, %sw.bb105 ]
  %yq.0 = phi i32 [ 0, %sw.epilog101.sw.epilog132_crit_edge ], [ 0, %sw.bb118 ], [ %phi.bo387, %sw.bb105 ]
  %dev_priv.i.i.i297 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %102 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i298 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 74) #11
  %104 = trunc i32 %call1.i.i298 to i8
  %105 = and i8 %104, -65
  %106 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i299 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 74, i8 noundef zeroext %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i299)
  %cmp2.i.i300 = icmp eq i32 %call1.i7.i299, 0
  br i1 %cmp2.i.i300, label %sw.epilog132.adv7511_wr_and_or.exit310_crit_edge, label %for.cond.i.i303

sw.epilog132.adv7511_wr_and_or.exit310_crit_edge: ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit310

for.cond.i.i303:                                  ; preds = %sw.epilog132
  %call1.1.i.i301 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 74, i8 noundef zeroext %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i301)
  %cmp2.1.i.i302 = icmp eq i32 %call1.1.i.i301, 0
  br i1 %cmp2.1.i.i302, label %for.cond.i.i303.adv7511_wr_and_or.exit310_crit_edge, label %for.cond.1.i.i306

for.cond.i.i303.adv7511_wr_and_or.exit310_crit_edge: ; preds = %for.cond.i.i303
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit310

for.cond.1.i.i306:                                ; preds = %for.cond.i.i303
  %call1.2.i.i304 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 74, i8 noundef zeroext %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i304)
  %cmp2.2.i.i305 = icmp eq i32 %call1.2.i.i304, 0
  br i1 %cmp2.2.i.i305, label %for.cond.1.i.i306.adv7511_wr_and_or.exit310_crit_edge, label %for.cond.2.i.i309

for.cond.1.i.i306.adv7511_wr_and_or.exit310_crit_edge: ; preds = %for.cond.1.i.i306
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit310

for.cond.2.i.i309:                                ; preds = %for.cond.1.i.i306
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i307 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i307, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit310

adv7511_wr_and_or.exit310:                        ; preds = %for.cond.2.i.i309, %for.cond.1.i.i306.adv7511_wr_and_or.exit310_crit_edge, %for.cond.i.i303.adv7511_wr_and_or.exit310_crit_edge, %sw.epilog132.adv7511_wr_and_or.exit310_crit_edge
  %108 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i312 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext 85) #11
  %110 = trunc i32 %call1.i.i312 to i8
  %111 = and i8 %110, -97
  %conv2.i313 = or i8 %111, %y.0
  %112 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i314 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i313) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i314)
  %cmp2.i.i315 = icmp eq i32 %call1.i7.i314, 0
  br i1 %cmp2.i.i315, label %adv7511_wr_and_or.exit310.adv7511_wr_and_or.exit325_crit_edge, label %for.cond.i.i318

adv7511_wr_and_or.exit310.adv7511_wr_and_or.exit325_crit_edge: ; preds = %adv7511_wr_and_or.exit310
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit325

for.cond.i.i318:                                  ; preds = %adv7511_wr_and_or.exit310
  %call1.1.i.i316 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i313) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i316)
  %cmp2.1.i.i317 = icmp eq i32 %call1.1.i.i316, 0
  br i1 %cmp2.1.i.i317, label %for.cond.i.i318.adv7511_wr_and_or.exit325_crit_edge, label %for.cond.1.i.i321

for.cond.i.i318.adv7511_wr_and_or.exit325_crit_edge: ; preds = %for.cond.i.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit325

for.cond.1.i.i321:                                ; preds = %for.cond.i.i318
  %call1.2.i.i319 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 85, i8 noundef zeroext %conv2.i313) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i319)
  %cmp2.2.i.i320 = icmp eq i32 %call1.2.i.i319, 0
  br i1 %cmp2.2.i.i320, label %for.cond.1.i.i321.adv7511_wr_and_or.exit325_crit_edge, label %for.cond.2.i.i324

for.cond.1.i.i321.adv7511_wr_and_or.exit325_crit_edge: ; preds = %for.cond.1.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit325

for.cond.2.i.i324:                                ; preds = %for.cond.1.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i322 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i322, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit325

adv7511_wr_and_or.exit325:                        ; preds = %for.cond.2.i.i324, %for.cond.1.i.i321.adv7511_wr_and_or.exit325_crit_edge, %for.cond.i.i318.adv7511_wr_and_or.exit325_crit_edge, %adv7511_wr_and_or.exit310.adv7511_wr_and_or.exit325_crit_edge
  %c.0.tr = trunc i32 %c.0 to i8
  %conv137 = shl nuw i8 %c.0.tr, 6
  %114 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i327 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %115, i8 noundef zeroext 86) #11
  %116 = trunc i32 %call1.i.i327 to i8
  %117 = and i8 %116, 63
  %conv2.i328 = or i8 %117, %conv137
  %118 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i329 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 86, i8 noundef zeroext %conv2.i328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i329)
  %cmp2.i.i330 = icmp eq i32 %call1.i7.i329, 0
  br i1 %cmp2.i.i330, label %adv7511_wr_and_or.exit325.adv7511_wr_and_or.exit340_crit_edge, label %for.cond.i.i333

adv7511_wr_and_or.exit325.adv7511_wr_and_or.exit340_crit_edge: ; preds = %adv7511_wr_and_or.exit325
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit340

for.cond.i.i333:                                  ; preds = %adv7511_wr_and_or.exit325
  %call1.1.i.i331 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 86, i8 noundef zeroext %conv2.i328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i331)
  %cmp2.1.i.i332 = icmp eq i32 %call1.1.i.i331, 0
  br i1 %cmp2.1.i.i332, label %for.cond.i.i333.adv7511_wr_and_or.exit340_crit_edge, label %for.cond.1.i.i336

for.cond.i.i333.adv7511_wr_and_or.exit340_crit_edge: ; preds = %for.cond.i.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit340

for.cond.1.i.i336:                                ; preds = %for.cond.i.i333
  %call1.2.i.i334 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 86, i8 noundef zeroext %conv2.i328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i334)
  %cmp2.2.i.i335 = icmp eq i32 %call1.2.i.i334, 0
  br i1 %cmp2.2.i.i335, label %for.cond.1.i.i336.adv7511_wr_and_or.exit340_crit_edge, label %for.cond.2.i.i339

for.cond.1.i.i336.adv7511_wr_and_or.exit340_crit_edge: ; preds = %for.cond.1.i.i336
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit340

for.cond.2.i.i339:                                ; preds = %for.cond.1.i.i336
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i337 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i337, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit340

adv7511_wr_and_or.exit340:                        ; preds = %for.cond.2.i.i339, %for.cond.1.i.i336.adv7511_wr_and_or.exit340_crit_edge, %for.cond.i.i333.adv7511_wr_and_or.exit340_crit_edge, %adv7511_wr_and_or.exit325.adv7511_wr_and_or.exit340_crit_edge
  %shl141 = shl nuw nsw i32 %q.0, 2
  %or = or i32 %shl141, %ec.0
  %shl143 = select i1 %cmp.not, i32 0, i32 128
  %or144 = or i32 %or, %shl143
  %conv145 = trunc i32 %or144 to i8
  %120 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i342 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %121, i8 noundef zeroext 87) #11
  %122 = trunc i32 %call1.i.i342 to i8
  %123 = and i8 %122, -125
  %conv2.i343 = or i8 %123, %conv145
  %124 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i344 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i343) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i344)
  %cmp2.i.i345 = icmp eq i32 %call1.i7.i344, 0
  br i1 %cmp2.i.i345, label %adv7511_wr_and_or.exit340.adv7511_wr_and_or.exit355_crit_edge, label %for.cond.i.i348

adv7511_wr_and_or.exit340.adv7511_wr_and_or.exit355_crit_edge: ; preds = %adv7511_wr_and_or.exit340
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit355

for.cond.i.i348:                                  ; preds = %adv7511_wr_and_or.exit340
  %call1.1.i.i346 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i343) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i346)
  %cmp2.1.i.i347 = icmp eq i32 %call1.1.i.i346, 0
  br i1 %cmp2.1.i.i347, label %for.cond.i.i348.adv7511_wr_and_or.exit355_crit_edge, label %for.cond.1.i.i351

for.cond.i.i348.adv7511_wr_and_or.exit355_crit_edge: ; preds = %for.cond.i.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit355

for.cond.1.i.i351:                                ; preds = %for.cond.i.i348
  %call1.2.i.i349 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i343) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i349)
  %cmp2.2.i.i350 = icmp eq i32 %call1.2.i.i349, 0
  br i1 %cmp2.2.i.i350, label %for.cond.1.i.i351.adv7511_wr_and_or.exit355_crit_edge, label %for.cond.2.i.i354

for.cond.1.i.i351.adv7511_wr_and_or.exit355_crit_edge: ; preds = %for.cond.1.i.i351
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit355

for.cond.2.i.i354:                                ; preds = %for.cond.1.i.i351
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i352 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i352, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit355

adv7511_wr_and_or.exit355:                        ; preds = %for.cond.2.i.i354, %for.cond.1.i.i351.adv7511_wr_and_or.exit355_crit_edge, %for.cond.i.i348.adv7511_wr_and_or.exit355_crit_edge, %adv7511_wr_and_or.exit340.adv7511_wr_and_or.exit355_crit_edge
  %or150 = or i32 %yq.0, %cond
  %conv151 = trunc i32 %or150 to i8
  %126 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i357 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %127, i8 noundef zeroext 89) #11
  %128 = trunc i32 %call1.i.i357 to i8
  %129 = and i8 %128, 15
  %conv2.i358 = or i8 %129, %conv151
  %130 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i359 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i358) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i359)
  %cmp2.i.i360 = icmp eq i32 %call1.i7.i359, 0
  br i1 %cmp2.i.i360, label %adv7511_wr_and_or.exit355.adv7511_wr_and_or.exit370_crit_edge, label %for.cond.i.i363

adv7511_wr_and_or.exit355.adv7511_wr_and_or.exit370_crit_edge: ; preds = %adv7511_wr_and_or.exit355
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit370

for.cond.i.i363:                                  ; preds = %adv7511_wr_and_or.exit355
  %call1.1.i.i361 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i358) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i361)
  %cmp2.1.i.i362 = icmp eq i32 %call1.1.i.i361, 0
  br i1 %cmp2.1.i.i362, label %for.cond.i.i363.adv7511_wr_and_or.exit370_crit_edge, label %for.cond.1.i.i366

for.cond.i.i363.adv7511_wr_and_or.exit370_crit_edge: ; preds = %for.cond.i.i363
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit370

for.cond.1.i.i366:                                ; preds = %for.cond.i.i363
  %call1.2.i.i364 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i358) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i364)
  %cmp2.2.i.i365 = icmp eq i32 %call1.2.i.i364, 0
  br i1 %cmp2.2.i.i365, label %for.cond.1.i.i366.adv7511_wr_and_or.exit370_crit_edge, label %for.cond.2.i.i369

for.cond.1.i.i366.adv7511_wr_and_or.exit370_crit_edge: ; preds = %for.cond.1.i.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit370

for.cond.2.i.i369:                                ; preds = %for.cond.1.i.i366
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i367 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i367, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit370

adv7511_wr_and_or.exit370:                        ; preds = %for.cond.2.i.i369, %for.cond.1.i.i366.adv7511_wr_and_or.exit370_crit_edge, %for.cond.i.i363.adv7511_wr_and_or.exit370_crit_edge, %adv7511_wr_and_or.exit355.adv7511_wr_and_or.exit370_crit_edge
  %132 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i.i372 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %133, i8 noundef zeroext 74) #11
  %134 = trunc i32 %call1.i.i372 to i8
  %conv2.i373 = or i8 %134, 1
  %135 = ptrtoint ptr %dev_priv.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_priv.i.i.i297, align 4
  %call1.i7.i374 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext 74, i8 noundef zeroext %conv2.i373) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i374)
  %cmp2.i.i375 = icmp eq i32 %call1.i7.i374, 0
  br i1 %cmp2.i.i375, label %adv7511_wr_and_or.exit370.adv7511_wr_and_or.exit385_crit_edge, label %for.cond.i.i378

adv7511_wr_and_or.exit370.adv7511_wr_and_or.exit385_crit_edge: ; preds = %adv7511_wr_and_or.exit370
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit385

for.cond.i.i378:                                  ; preds = %adv7511_wr_and_or.exit370
  %call1.1.i.i376 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext 74, i8 noundef zeroext %conv2.i373) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i376)
  %cmp2.1.i.i377 = icmp eq i32 %call1.1.i.i376, 0
  br i1 %cmp2.1.i.i377, label %for.cond.i.i378.adv7511_wr_and_or.exit385_crit_edge, label %for.cond.1.i.i381

for.cond.i.i378.adv7511_wr_and_or.exit385_crit_edge: ; preds = %for.cond.i.i378
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit385

for.cond.1.i.i381:                                ; preds = %for.cond.i.i378
  %call1.2.i.i379 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext 74, i8 noundef zeroext %conv2.i373) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i379)
  %cmp2.2.i.i380 = icmp eq i32 %call1.2.i.i379, 0
  br i1 %cmp2.2.i.i380, label %for.cond.1.i.i381.adv7511_wr_and_or.exit385_crit_edge, label %for.cond.2.i.i384

for.cond.1.i.i381.adv7511_wr_and_or.exit385_crit_edge: ; preds = %for.cond.1.i.i381
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit385

for.cond.2.i.i384:                                ; preds = %for.cond.1.i.i381
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i382 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i382, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit385

adv7511_wr_and_or.exit385:                        ; preds = %for.cond.2.i.i384, %for.cond.1.i.i381.adv7511_wr_and_or.exit385_crit_edge, %for.cond.i.i378.adv7511_wr_and_or.exit385_crit_edge, %adv7511_wr_and_or.exit370.adv7511_wr_and_or.exit385_crit_edge
  %137 = ptrtoint ptr %fmt_code to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fmt_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %138)
  %cmp.not.i386 = icmp eq i32 %138, 4106
  br i1 %cmp.not.i386, label %if.end.i, label %adv7511_wr_and_or.exit385.cleanup.sink.split.i_crit_edge

adv7511_wr_and_or.exit385.cleanup.sink.split.i_crit_edge: ; preds = %adv7511_wr_and_or.exit385
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %adv7511_wr_and_or.exit385
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %sd, i32 608
  %139 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %140, i32 0, i32 22
  %141 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %val.i, align 4
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %142, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb4.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr i8, ptr %sd, i32 504
  %144 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %145, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.cleanup.sink.split.i_crit_edge, %adv7511_wr_and_or.exit385.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i1 [ false, %sw.bb4.i ], [ false, %adv7511_wr_and_or.exit385.cleanup.sink.split.i_crit_edge ], [ %tobool.not.i, %sw.bb.i ], [ true, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @adv7511_csc_rgb_full2limit(ptr noundef %sd, i1 noundef zeroext %.sink.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7511_get_edid(ptr nocapture noundef readonly %sd, ptr nocapture noundef %edid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %1 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %3 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %edid4 = getelementptr i8, ptr %sd, i32 624
  %7 = ptrtoint ptr %edid4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %edid4, align 4
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %blocks, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %edid8 = getelementptr i8, ptr %sd, i32 624
  %10 = ptrtoint ptr %edid8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edid8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %4)
  %cmp16.not = icmp ugt i32 %11, %4
  br i1 %cmp16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %blocks20 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %12 = ptrtoint ptr %blocks20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks20, align 4
  %add = add i32 %13, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp23 = icmp ugt i32 %add, %11
  br i1 %cmp23, label %if.then24, label %if.end18.if.end29_crit_edge

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %11, %4
  %14 = ptrtoint ptr %blocks20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %blocks20, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end18.if.end29_crit_edge
  %edid30 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %15 = ptrtoint ptr %edid30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edid30, align 4
  %mul = shl i32 %4, 7
  %arrayidx = getelementptr %struct.adv7511_state, ptr %add.ptr.i, i32 0, i32 31, i32 2, i32 %mul
  %17 = ptrtoint ptr %blocks20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks20, align 4
  %mul34 = shl i32 %18, 7
  %19 = call ptr @memcpy(ptr %16, ptr %arrayidx, i32 %mul34)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -61, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7511_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef %cap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memcpy(ptr %cap, ptr @adv7511_timings_cap, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @adv7511_timings_cap, ptr noundef null, ptr noundef null) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cec_adap = getelementptr i8, ptr %sd, i32 424
  %2 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @cec_register_adapter(ptr noundef %3, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_delete_adapter(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_adap = getelementptr i8, ptr %sd, i32 424
  %0 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_s_ctrl(ptr noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %sd.i = getelementptr i8, ptr %1, i32 -228
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %1, i32 -112
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %name, ptr noundef nonnull @.str.206, i32 noundef %4, i32 noundef %6) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hdmi_mode_ctrl = getelementptr i8, ptr %1, i32 364
  %7 = ptrtoint ptr %hdmi_mode_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdmi_mode_ctrl, align 4
  %cmp6 = icmp eq ptr %8, %ctrl
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.end5
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp eq i32 %10, 1
  %conv = select i1 %cmp9, i8 2, i8 0
  %dev_priv.i.i.i = getelementptr i8, ptr %1, i32 -76
  %11 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -81) #11
  %13 = trunc i32 %call1.i.i to i8
  %14 = and i8 %13, -3
  %conv2.i = or i8 %14, %conv
  %15 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then7.cleanup_crit_edge, label %for.cond.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.then7
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr i8, ptr %1, i32 -112
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i, ptr noundef nonnull @.str.208) #14
  br label %cleanup

if.end10:                                         ; preds = %do.end5
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %1, i32 380
  %17 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %cmp11 = icmp eq ptr %18, %ctrl
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %fmt_code.i = getelementptr i8, ptr %1, i32 340
  %19 = ptrtoint ptr %fmt_code.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 4106
  br i1 %cmp.not.i, label %if.end.i, label %if.then13.cleanup.sink.split.i_crit_edge

if.then13.cleanup.sink.split.i_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then13
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %22, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb4.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr i8, ptr %1, i32 276
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then13.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i1 [ false, %sw.bb4.i ], [ false, %if.then13.cleanup.sink.split.i_crit_edge ], [ %tobool.not.i, %sw.bb.i ], [ true, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @adv7511_csc_rgb_full2limit(ptr noundef %sd.i, i1 noundef zeroext %.sink.i) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %content_type_ctrl = getelementptr i8, ptr %1, i32 384
  %26 = ptrtoint ptr %content_type_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %content_type_ctrl, align 4
  %cmp15 = icmp eq ptr %27, %ctrl
  br i1 %cmp15, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val18, align 4
  %content_type = getelementptr i8, ptr %1, i32 360
  %30 = ptrtoint ptr %content_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %content_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp20.not = icmp eq i32 %29, 4
  %.tr = trunc i32 %29 to i8
  %phi.cast = shl i8 %.tr, 4
  %shl = select i1 %cmp20.not, i8 0, i8 -128
  %cond25 = select i1 %cmp20.not, i8 0, i8 %phi.cast
  %dev_priv.i.i.i54 = getelementptr i8, ptr %1, i32 -76
  %31 = ptrtoint ptr %dev_priv.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i.i54, align 4
  %call1.i.i55 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 87) #11
  %33 = trunc i32 %call1.i.i55 to i8
  %34 = and i8 %33, 127
  %conv2.i56 = or i8 %34, %shl
  %35 = ptrtoint ptr %dev_priv.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i.i54, align 4
  %call1.i7.i57 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i57)
  %cmp2.i.i58 = icmp eq i32 %call1.i7.i57, 0
  br i1 %cmp2.i.i58, label %if.then17.adv7511_wr_and_or.exit68_crit_edge, label %for.cond.i.i61

if.then17.adv7511_wr_and_or.exit68_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit68

for.cond.i.i61:                                   ; preds = %if.then17
  %call1.1.i.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i59)
  %cmp2.1.i.i60 = icmp eq i32 %call1.1.i.i59, 0
  br i1 %cmp2.1.i.i60, label %for.cond.i.i61.adv7511_wr_and_or.exit68_crit_edge, label %for.cond.1.i.i64

for.cond.i.i61.adv7511_wr_and_or.exit68_crit_edge: ; preds = %for.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit68

for.cond.1.i.i64:                                 ; preds = %for.cond.i.i61
  %call1.2.i.i62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 87, i8 noundef zeroext %conv2.i56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i62)
  %cmp2.2.i.i63 = icmp eq i32 %call1.2.i.i62, 0
  br i1 %cmp2.2.i.i63, label %for.cond.1.i.i64.adv7511_wr_and_or.exit68_crit_edge, label %for.cond.2.i.i67

for.cond.1.i.i64.adv7511_wr_and_or.exit68_crit_edge: ; preds = %for.cond.1.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr_and_or.exit68

for.cond.2.i.i67:                                 ; preds = %for.cond.1.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i65 = getelementptr i8, ptr %1, i32 -112
  %call3.i.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i65, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr_and_or.exit68

adv7511_wr_and_or.exit68:                         ; preds = %for.cond.2.i.i67, %for.cond.1.i.i64.adv7511_wr_and_or.exit68_crit_edge, %for.cond.i.i61.adv7511_wr_and_or.exit68_crit_edge, %if.then17.adv7511_wr_and_or.exit68_crit_edge
  %37 = ptrtoint ptr %dev_priv.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i.i54, align 4
  %call1.i.i70 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext 89) #11
  %39 = trunc i32 %call1.i.i70 to i8
  %40 = and i8 %39, -49
  %conv2.i71 = or i8 %40, %cond25
  %41 = ptrtoint ptr %dev_priv.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i54, align 4
  %call1.i7.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i72)
  %cmp2.i.i73 = icmp eq i32 %call1.i7.i72, 0
  br i1 %cmp2.i.i73, label %adv7511_wr_and_or.exit68.cleanup_crit_edge, label %for.cond.i.i76

adv7511_wr_and_or.exit68.cleanup_crit_edge:       ; preds = %adv7511_wr_and_or.exit68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.i76:                                   ; preds = %adv7511_wr_and_or.exit68
  %call1.1.i.i74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i74)
  %cmp2.1.i.i75 = icmp eq i32 %call1.1.i.i74, 0
  br i1 %cmp2.1.i.i75, label %for.cond.i.i76.cleanup_crit_edge, label %for.cond.1.i.i79

for.cond.i.i76.cleanup_crit_edge:                 ; preds = %for.cond.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i.i79:                                 ; preds = %for.cond.i.i76
  %call1.2.i.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 89, i8 noundef zeroext %conv2.i71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i77)
  %cmp2.2.i.i78 = icmp eq i32 %call1.2.i.i77, 0
  br i1 %cmp2.2.i.i78, label %for.cond.1.i.i79.cleanup_crit_edge, label %for.cond.2.i.i82

for.cond.1.i.i79.cleanup_crit_edge:               ; preds = %for.cond.1.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i.i82:                                 ; preds = %for.cond.1.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i80 = getelementptr i8, ptr %1, i32 -112
  %call3.i.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i80, ptr noundef nonnull @.str.208) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i.i82, %for.cond.1.i.i79.cleanup_crit_edge, %for.cond.i.i76.cleanup_crit_edge, %adv7511_wr_and_or.exit68.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end14.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.i.cleanup_crit_edge ], [ 0, %for.cond.2.i.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 0, %adv7511_wr_and_or.exit68.cleanup_crit_edge ], [ 0, %for.cond.i.i76.cleanup_crit_edge ], [ 0, %for.cond.1.i.i79.cleanup_crit_edge ], [ 0, %for.cond.2.i.i82 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_notify_no_edid(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %ed = alloca %struct.adv7511_edid_detect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ed) #11
  %0 = getelementptr inbounds i8, ptr %ed, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %ed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ed, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -60) #11
  %segment = getelementptr inbounds %struct.adv7511_edid_detect, ptr %ed, i32 0, i32 1
  %5 = ptrtoint ptr %segment to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.i, ptr %segment, align 4
  %phys_addr = getelementptr inbounds %struct.adv7511_edid_detect, ptr %ed, i32 0, i32 2
  %6 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %phys_addr, align 4
  %cec_adap = getelementptr i8, ptr %sd, i32 424
  %7 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_s_phys_addr(ptr noundef %8, i16 noundef zeroext -1, i1 noundef zeroext false) #11
  %tobool.not.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i, label %entry.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

entry.v4l2_subdev_notify.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %entry
  %v4l2_dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %12(ptr noundef nonnull %sd, i32 noundef 1, ptr noundef nonnull %ed) #11
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %entry.v4l2_subdev_notify.exit_crit_edge
  %have_edid0_ctrl = getelementptr i8, ptr %sd, i32 604
  %13 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %have_edid0_ctrl, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #11
  %call.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %14, i32 noundef 0) #11
  %19 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %22) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ed) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %i2c_cec = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_cec, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cec_enabled_adap = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_enabled_adap, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %brmerge.demorgan = and i1 %tobool.not, %enable
  br i1 %brmerge.demorgan, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_cec, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 78) #11
  %8 = trunc i32 %call1.i.i to i8
  %9 = and i8 %8, -4
  %conv2.i = or i8 %9, 1
  %10 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cec, align 4
  %call1.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 78, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %cmp2.i.i = icmp eq i32 %call1.i2.i, 0
  br i1 %cmp2.i.i, label %if.then3.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.i.i

if.then3.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.i.i:                                     ; preds = %if.then3
  %12 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 78, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %14 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 78, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit

adv7511_cec_write_and_or.exit:                    ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, %if.then3.adv7511_cec_write_and_or.exit_crit_edge
  %16 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_cec, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %adv7511_cec_write_and_or.exit.adv7511_cec_write.exit_crit_edge, label %for.cond.i

adv7511_cec_write_and_or.exit.adv7511_cec_write.exit_crit_edge: ; preds = %adv7511_cec_write_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.i:                                       ; preds = %adv7511_cec_write_and_or.exit
  %18 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_cec_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_cec_write.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %20 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 74, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_cec_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_cec_write.exit_crit_edge:    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit

adv7511_cec_write.exit:                           ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_cec_write.exit_crit_edge, %for.cond.i.adv7511_cec_write.exit_crit_edge, %adv7511_cec_write_and_or.exit.adv7511_cec_write.exit_crit_edge
  %22 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_cec, align 4
  %call1.i46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %cmp2.i47 = icmp eq i32 %call1.i46, 0
  br i1 %cmp2.i47, label %adv7511_cec_write.exit.adv7511_cec_write.exit57_crit_edge, label %for.cond.i50

adv7511_cec_write.exit.adv7511_cec_write.exit57_crit_edge: ; preds = %adv7511_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit57

for.cond.i50:                                     ; preds = %adv7511_cec_write.exit
  %24 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i48)
  %cmp2.1.i49 = icmp eq i32 %call1.1.i48, 0
  br i1 %cmp2.1.i49, label %for.cond.i50.adv7511_cec_write.exit57_crit_edge, label %for.cond.1.i53

for.cond.i50.adv7511_cec_write.exit57_crit_edge:  ; preds = %for.cond.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit57

for.cond.1.i53:                                   ; preds = %for.cond.i50
  %26 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 74, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i51)
  %cmp2.2.i52 = icmp eq i32 %call1.2.i51, 0
  br i1 %cmp2.2.i52, label %for.cond.1.i53.adv7511_cec_write.exit57_crit_edge, label %for.cond.2.i56

for.cond.1.i53.adv7511_cec_write.exit57_crit_edge: ; preds = %for.cond.1.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit57

for.cond.2.i56:                                   ; preds = %for.cond.1.i53
  call void @__sanitizer_cov_trace_pc() #13
  %name.i54 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i54, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit57

adv7511_cec_write.exit57:                         ; preds = %for.cond.2.i56, %for.cond.1.i53.adv7511_cec_write.exit57_crit_edge, %for.cond.i50.adv7511_cec_write.exit57_crit_edge, %adv7511_cec_write.exit.adv7511_cec_write.exit57_crit_edge
  %28 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_cec, align 4
  %call1.i.i59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 17) #11
  %30 = trunc i32 %call1.i.i59 to i8
  %31 = and i8 %30, -2
  %32 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_cec, align 4
  %call1.i2.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 17, i8 noundef zeroext %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i60)
  %cmp2.i.i61 = icmp eq i32 %call1.i2.i60, 0
  br i1 %cmp2.i.i61, label %adv7511_cec_write.exit57.adv7511_cec_write_and_or.exit71_crit_edge, label %for.cond.i.i64

adv7511_cec_write.exit57.adv7511_cec_write_and_or.exit71_crit_edge: ; preds = %adv7511_cec_write.exit57
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit71

for.cond.i.i64:                                   ; preds = %adv7511_cec_write.exit57
  %34 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i.i62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 17, i8 noundef zeroext %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i62)
  %cmp2.1.i.i63 = icmp eq i32 %call1.1.i.i62, 0
  br i1 %cmp2.1.i.i63, label %for.cond.i.i64.adv7511_cec_write_and_or.exit71_crit_edge, label %for.cond.1.i.i67

for.cond.i.i64.adv7511_cec_write_and_or.exit71_crit_edge: ; preds = %for.cond.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit71

for.cond.1.i.i67:                                 ; preds = %for.cond.i.i64
  %36 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 17, i8 noundef zeroext %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i65)
  %cmp2.2.i.i66 = icmp eq i32 %call1.2.i.i65, 0
  br i1 %cmp2.2.i.i66, label %for.cond.1.i.i67.adv7511_cec_write_and_or.exit71_crit_edge, label %for.cond.2.i.i70

for.cond.1.i.i67.adv7511_cec_write_and_or.exit71_crit_edge: ; preds = %for.cond.1.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit71

for.cond.2.i.i70:                                 ; preds = %for.cond.1.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i68 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i68, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit71

adv7511_cec_write_and_or.exit71:                  ; preds = %for.cond.2.i.i70, %for.cond.1.i.i67.adv7511_cec_write_and_or.exit71_crit_edge, %for.cond.i.i64.adv7511_cec_write_and_or.exit71_crit_edge, %adv7511_cec_write.exit57.adv7511_cec_write_and_or.exit71_crit_edge
  %enabled_irq = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %enabled_irq to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enabled_irq, align 1, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not = icmp eq i8 %39, 0
  br i1 %tobool8.not, label %adv7511_cec_write_and_or.exit71.if.end23_crit_edge, label %if.then9

adv7511_cec_write_and_or.exit71.if.end23_crit_edge: ; preds = %adv7511_cec_write_and_or.exit71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then9:                                         ; preds = %adv7511_cec_write_and_or.exit71
  %dev_priv.i.i.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i72 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext -107) #11
  %42 = trunc i32 %call1.i.i72 to i8
  %43 = and i8 %42, -64
  %conv2.i73 = or i8 %43, 57
  %44 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i74 = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i74, label %if.then9.if.end23_crit_edge, label %for.cond.i.i77

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.cond.i.i77:                                   ; preds = %if.then9
  %call1.1.i.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i75)
  %cmp2.1.i.i76 = icmp eq i32 %call1.1.i.i75, 0
  br i1 %cmp2.1.i.i76, label %for.cond.i.i77.if.end23_crit_edge, label %for.cond.1.i.i80

for.cond.i.i77.if.end23_crit_edge:                ; preds = %for.cond.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.cond.1.i.i80:                                 ; preds = %for.cond.i.i77
  %call1.2.i.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -107, i8 noundef zeroext %conv2.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i78)
  %cmp2.2.i.i79 = icmp eq i32 %call1.2.i.i78, 0
  br i1 %cmp2.2.i.i79, label %for.cond.1.i.i80.if.end23_crit_edge, label %for.cond.2.i.i83

for.cond.1.i.i80.if.end23_crit_edge:              ; preds = %for.cond.1.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.cond.2.i.i83:                                 ; preds = %for.cond.1.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i81 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i81, ptr noundef nonnull @.str.208) #14
  br label %if.end23

if.else:                                          ; preds = %if.end
  %brmerge44 = or i1 %tobool.not, %enable
  br i1 %brmerge44, label %if.else.if.end23_crit_edge, label %if.then15

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then15:                                        ; preds = %if.else
  %enabled_irq16 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %enabled_irq16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enabled_irq16, align 1, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not = icmp eq i8 %47, 0
  br i1 %tobool17.not, label %if.then15.if.end19_crit_edge, label %if.then18

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %if.then15
  %dev_priv.i.i.i84 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %dev_priv.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i.i84, align 4
  %call1.i.i85 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext -107) #11
  %50 = trunc i32 %call1.i.i85 to i8
  %51 = and i8 %50, -64
  %52 = ptrtoint ptr %dev_priv.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i84, align 4
  %call1.i7.i86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -107, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i86)
  %cmp2.i.i87 = icmp eq i32 %call1.i7.i86, 0
  br i1 %cmp2.i.i87, label %if.then18.if.end19_crit_edge, label %for.cond.i.i90

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.i.i90:                                   ; preds = %if.then18
  %call1.1.i.i88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -107, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i88)
  %cmp2.1.i.i89 = icmp eq i32 %call1.1.i.i88, 0
  br i1 %cmp2.1.i.i89, label %for.cond.i.i90.if.end19_crit_edge, label %for.cond.1.i.i93

for.cond.i.i90.if.end19_crit_edge:                ; preds = %for.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.1.i.i93:                                 ; preds = %for.cond.i.i90
  %call1.2.i.i91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -107, i8 noundef zeroext %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i91)
  %cmp2.2.i.i92 = icmp eq i32 %call1.2.i.i91, 0
  br i1 %cmp2.2.i.i92, label %for.cond.1.i.i93.if.end19_crit_edge, label %for.cond.2.i.i96

for.cond.1.i.i93.if.end19_crit_edge:              ; preds = %for.cond.1.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.2.i.i96:                                 ; preds = %for.cond.1.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i94 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i.i94, ptr noundef nonnull @.str.208) #14
  br label %if.end19

if.end19:                                         ; preds = %for.cond.2.i.i96, %for.cond.1.i.i93.if.end19_crit_edge, %for.cond.i.i90.if.end19_crit_edge, %if.then18.if.end19_crit_edge, %if.then15.if.end19_crit_edge
  %54 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_cec, align 4
  %call1.i.i99 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 75) #11
  %56 = trunc i32 %call1.i.i99 to i8
  %57 = and i8 %56, -113
  %58 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_cec, align 4
  %call1.i2.i100 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 75, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i100)
  %cmp2.i.i101 = icmp eq i32 %call1.i2.i100, 0
  br i1 %cmp2.i.i101, label %if.end19.adv7511_cec_write_and_or.exit111_crit_edge, label %for.cond.i.i104

if.end19.adv7511_cec_write_and_or.exit111_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit111

for.cond.i.i104:                                  ; preds = %if.end19
  %60 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 75, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i102)
  %cmp2.1.i.i103 = icmp eq i32 %call1.1.i.i102, 0
  br i1 %cmp2.1.i.i103, label %for.cond.i.i104.adv7511_cec_write_and_or.exit111_crit_edge, label %for.cond.1.i.i107

for.cond.i.i104.adv7511_cec_write_and_or.exit111_crit_edge: ; preds = %for.cond.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit111

for.cond.1.i.i107:                                ; preds = %for.cond.i.i104
  %62 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i.i105 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 75, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i105)
  %cmp2.2.i.i106 = icmp eq i32 %call1.2.i.i105, 0
  br i1 %cmp2.2.i.i106, label %for.cond.1.i.i107.adv7511_cec_write_and_or.exit111_crit_edge, label %for.cond.2.i.i110

for.cond.1.i.i107.adv7511_cec_write_and_or.exit111_crit_edge: ; preds = %for.cond.1.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit111

for.cond.2.i.i110:                                ; preds = %for.cond.1.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i108 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i108, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit111

adv7511_cec_write_and_or.exit111:                 ; preds = %for.cond.2.i.i110, %for.cond.1.i.i107.adv7511_cec_write_and_or.exit111_crit_edge, %for.cond.i.i104.adv7511_cec_write_and_or.exit111_crit_edge, %if.end19.adv7511_cec_write_and_or.exit111_crit_edge
  %64 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_cec, align 4
  %call1.i.i113 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 78) #11
  %66 = trunc i32 %call1.i.i113 to i8
  %67 = and i8 %66, -4
  %68 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_cec, align 4
  %call1.i2.i114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 78, i8 noundef zeroext %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i114)
  %cmp2.i.i115 = icmp eq i32 %call1.i2.i114, 0
  br i1 %cmp2.i.i115, label %adv7511_cec_write_and_or.exit111.adv7511_cec_write_and_or.exit125_crit_edge, label %for.cond.i.i118

adv7511_cec_write_and_or.exit111.adv7511_cec_write_and_or.exit125_crit_edge: ; preds = %adv7511_cec_write_and_or.exit111
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit125

for.cond.i.i118:                                  ; preds = %adv7511_cec_write_and_or.exit111
  %70 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_cec, align 4
  %call1.1.i.i116 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %71, i8 noundef zeroext 78, i8 noundef zeroext %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i116)
  %cmp2.1.i.i117 = icmp eq i32 %call1.1.i.i116, 0
  br i1 %cmp2.1.i.i117, label %for.cond.i.i118.adv7511_cec_write_and_or.exit125_crit_edge, label %for.cond.1.i.i121

for.cond.i.i118.adv7511_cec_write_and_or.exit125_crit_edge: ; preds = %for.cond.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit125

for.cond.1.i.i121:                                ; preds = %for.cond.i.i118
  %72 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_cec, align 4
  %call1.2.i.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 78, i8 noundef zeroext %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i119)
  %cmp2.2.i.i120 = icmp eq i32 %call1.2.i.i119, 0
  br i1 %cmp2.2.i.i120, label %for.cond.1.i.i121.adv7511_cec_write_and_or.exit125_crit_edge, label %for.cond.2.i.i124

for.cond.1.i.i121.adv7511_cec_write_and_or.exit125_crit_edge: ; preds = %for.cond.1.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit125

for.cond.2.i.i124:                                ; preds = %for.cond.1.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i122 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i122, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit125

adv7511_cec_write_and_or.exit125:                 ; preds = %for.cond.2.i.i124, %for.cond.1.i.i121.adv7511_cec_write_and_or.exit125_crit_edge, %for.cond.i.i118.adv7511_cec_write_and_or.exit125_crit_edge, %adv7511_cec_write_and_or.exit111.adv7511_cec_write_and_or.exit125_crit_edge
  %cec_valid_addrs = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 11
  %74 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %if.end23

if.end23:                                         ; preds = %adv7511_cec_write_and_or.exit125, %if.else.if.end23_crit_edge, %for.cond.2.i.i83, %for.cond.1.i.i80.if.end23_crit_edge, %for.cond.i.i77.if.end23_crit_edge, %if.then9.if.end23_crit_edge, %adv7511_cec_write_and_or.exit71.if.end23_crit_edge
  %75 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool, ptr %cec_enabled_adap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_enabled_adap = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_enabled_adap, align 4, !range !495
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr)
  %cmp = icmp eq i8 %addr, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup53

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cec_valid_addrs11 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %cec_valid_addrs11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_valid_addrs11, align 1
  %conv12 = zext i8 %5 to i32
  %and = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.cond.preheader.for.inc.critedge_crit_edge, label %land.lhs.true21

for.cond.preheader.for.inc.critedge_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge

if.then6:                                         ; preds = %if.end
  %i2c_cec.i.i = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 75) #11
  %8 = trunc i32 %call1.i.i to i8
  %9 = and i8 %8, -113
  %10 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 75, i8 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %cmp2.i.i = icmp eq i32 %call1.i2.i, 0
  br i1 %cmp2.i.i, label %if.then6.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.i.i

if.then6.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.i.i:                                     ; preds = %if.then6
  %12 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 75, i8 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %14 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 75, i8 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit

adv7511_cec_write_and_or.exit:                    ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, %if.then6.adv7511_cec_write_and_or.exit_crit_edge
  %cec_valid_addrs = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %cleanup53

land.lhs.true21:                                  ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 10, i32 0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %addr)
  %cmp24 = icmp eq i8 %18, %addr
  br i1 %cmp24, label %land.lhs.true21.cleanup53_crit_edge, label %land.lhs.true21.for.inc.critedge_crit_edge

land.lhs.true21.for.inc.critedge_crit_edge:       ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge

land.lhs.true21.cleanup53_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.inc.critedge:                                 ; preds = %land.lhs.true21.for.inc.critedge_crit_edge, %for.cond.preheader.for.inc.critedge_crit_edge
  %and.1 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool13.not.1 = icmp eq i32 %and.1, 0
  %19 = or i32 %and.1, 1
  %free_idx.1.1 = select i1 %tobool13.not, i32 0, i32 %19
  br i1 %tobool13.not.1, label %for.inc.critedge.for.inc.critedge.1_crit_edge, label %land.lhs.true21.1

for.inc.critedge.for.inc.critedge.1_crit_edge:    ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.1

land.lhs.true21.1:                                ; preds = %for.inc.critedge
  %arrayidx.1 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %addr)
  %cmp24.1 = icmp eq i8 %21, %addr
  br i1 %cmp24.1, label %land.lhs.true21.1.cleanup53_crit_edge, label %land.lhs.true21.1.for.inc.critedge.1_crit_edge

land.lhs.true21.1.for.inc.critedge.1_crit_edge:   ; preds = %land.lhs.true21.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.1

land.lhs.true21.1.cleanup53_crit_edge:            ; preds = %land.lhs.true21.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.inc.critedge.1:                               ; preds = %land.lhs.true21.1.for.inc.critedge.1_crit_edge, %for.inc.critedge.for.inc.critedge.1_crit_edge
  %and.2 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool13.not.2 = icmp eq i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %free_idx.1.1)
  %cmp14.2 = icmp eq i32 %free_idx.1.1, 3
  %spec.select.2 = select i1 %tobool13.not.2, i32 2, i32 3
  %free_idx.1.2 = select i1 %cmp14.2, i32 %spec.select.2, i32 %free_idx.1.1
  br i1 %tobool13.not.2, label %for.inc.critedge.1.if.then30_crit_edge, label %land.lhs.true21.2

for.inc.critedge.1.if.then30_crit_edge:           ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

land.lhs.true21.2:                                ; preds = %for.inc.critedge.1
  %arrayidx.2 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %addr)
  %cmp24.2 = icmp eq i8 %23, %addr
  br i1 %cmp24.2, label %land.lhs.true21.2.cleanup53_crit_edge, label %land.lhs.true21.2.if.then30_crit_edge

land.lhs.true21.2.if.then30_crit_edge:            ; preds = %land.lhs.true21.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

land.lhs.true21.2.cleanup53_crit_edge:            ; preds = %land.lhs.true21.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.then30:                                        ; preds = %land.lhs.true21.2.if.then30_crit_edge, %for.inc.critedge.1.if.then30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %free_idx.1.2)
  %cmp31 = icmp eq i32 %free_idx.1.2, 3
  br i1 %cmp31, label %if.then30.cleanup53_crit_edge, label %if.end35

if.then30.cleanup53_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.end35:                                         ; preds = %if.then30
  %arrayidx37 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 10, i32 %free_idx.1.2
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %addr, ptr %arrayidx37, align 1
  %shl38 = shl nuw i32 1, %free_idx.1.2
  %25 = ptrtoint ptr %cec_valid_addrs11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cec_valid_addrs11, align 1
  %27 = trunc i32 %shl38 to i8
  %conv41 = or i8 %26, %27
  store i8 %conv41, ptr %cec_valid_addrs11, align 1
  %28 = zext i32 %free_idx.1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %free_idx.1.2, label %if.end35.cleanup53_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
    i32 2, label %sw.bb50
  ]

if.end35.cleanup53_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

sw.bb:                                            ; preds = %if.end35
  %i2c_cec.i.i87 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i.i88 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 75) #11
  %31 = trunc i32 %call1.i.i88 to i8
  %conv2.i = or i8 %31, 16
  %32 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i2.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i89)
  %cmp2.i.i90 = icmp eq i32 %call1.i2.i89, 0
  br i1 %cmp2.i.i90, label %sw.bb.adv7511_cec_write_and_or.exit100_crit_edge, label %for.cond.i.i93

sw.bb.adv7511_cec_write_and_or.exit100_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit100

for.cond.i.i93:                                   ; preds = %sw.bb
  %34 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.1.i.i91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i91)
  %cmp2.1.i.i92 = icmp eq i32 %call1.1.i.i91, 0
  br i1 %cmp2.1.i.i92, label %for.cond.i.i93.adv7511_cec_write_and_or.exit100_crit_edge, label %for.cond.1.i.i96

for.cond.i.i93.adv7511_cec_write_and_or.exit100_crit_edge: ; preds = %for.cond.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit100

for.cond.1.i.i96:                                 ; preds = %for.cond.i.i93
  %36 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.2.i.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i94)
  %cmp2.2.i.i95 = icmp eq i32 %call1.2.i.i94, 0
  br i1 %cmp2.2.i.i95, label %for.cond.1.i.i96.adv7511_cec_write_and_or.exit100_crit_edge, label %for.cond.2.i.i99

for.cond.1.i.i96.adv7511_cec_write_and_or.exit100_crit_edge: ; preds = %for.cond.1.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit100

for.cond.2.i.i99:                                 ; preds = %for.cond.1.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i97 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i97, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit100

adv7511_cec_write_and_or.exit100:                 ; preds = %for.cond.2.i.i99, %for.cond.1.i.i96.adv7511_cec_write_and_or.exit100_crit_edge, %for.cond.i.i93.adv7511_cec_write_and_or.exit100_crit_edge, %sw.bb.adv7511_cec_write_and_or.exit100_crit_edge
  %38 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i.i102 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 76) #11
  %40 = trunc i32 %call1.i.i102 to i8
  %41 = and i8 %40, -16
  %conv2.i103 = or i8 %41, %addr
  %42 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i2.i104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i104)
  %cmp2.i.i105 = icmp eq i32 %call1.i2.i104, 0
  br i1 %cmp2.i.i105, label %adv7511_cec_write_and_or.exit100.cleanup53_crit_edge, label %for.cond.i.i108

adv7511_cec_write_and_or.exit100.cleanup53_crit_edge: ; preds = %adv7511_cec_write_and_or.exit100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.i.i108:                                  ; preds = %adv7511_cec_write_and_or.exit100
  %44 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.1.i.i106 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i106)
  %cmp2.1.i.i107 = icmp eq i32 %call1.1.i.i106, 0
  br i1 %cmp2.1.i.i107, label %for.cond.i.i108.cleanup53_crit_edge, label %for.cond.1.i.i111

for.cond.i.i108.cleanup53_crit_edge:              ; preds = %for.cond.i.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.1.i.i111:                                ; preds = %for.cond.i.i108
  %46 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.2.i.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i109)
  %cmp2.2.i.i110 = icmp eq i32 %call1.2.i.i109, 0
  br i1 %cmp2.2.i.i110, label %for.cond.1.i.i111.cleanup53_crit_edge, label %for.cond.2.i.i114

for.cond.1.i.i111.cleanup53_crit_edge:            ; preds = %for.cond.1.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.2.i.i114:                                ; preds = %for.cond.1.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i112 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i112, ptr noundef nonnull @.str.138) #14
  br label %cleanup53

sw.bb44:                                          ; preds = %if.end35
  %i2c_cec.i.i116 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.i.i117 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 75) #11
  %50 = trunc i32 %call1.i.i117 to i8
  %conv2.i118 = or i8 %50, 32
  %51 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.i2.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i119)
  %cmp2.i.i120 = icmp eq i32 %call1.i2.i119, 0
  br i1 %cmp2.i.i120, label %sw.bb44.adv7511_cec_write_and_or.exit130_crit_edge, label %for.cond.i.i123

sw.bb44.adv7511_cec_write_and_or.exit130_crit_edge: ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit130

for.cond.i.i123:                                  ; preds = %sw.bb44
  %53 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.1.i.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i121)
  %cmp2.1.i.i122 = icmp eq i32 %call1.1.i.i121, 0
  br i1 %cmp2.1.i.i122, label %for.cond.i.i123.adv7511_cec_write_and_or.exit130_crit_edge, label %for.cond.1.i.i126

for.cond.i.i123.adv7511_cec_write_and_or.exit130_crit_edge: ; preds = %for.cond.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit130

for.cond.1.i.i126:                                ; preds = %for.cond.i.i123
  %55 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.2.i.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i124)
  %cmp2.2.i.i125 = icmp eq i32 %call1.2.i.i124, 0
  br i1 %cmp2.2.i.i125, label %for.cond.1.i.i126.adv7511_cec_write_and_or.exit130_crit_edge, label %for.cond.2.i.i129

for.cond.1.i.i126.adv7511_cec_write_and_or.exit130_crit_edge: ; preds = %for.cond.1.i.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit130

for.cond.2.i.i129:                                ; preds = %for.cond.1.i.i126
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i127 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i127, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit130

adv7511_cec_write_and_or.exit130:                 ; preds = %for.cond.2.i.i129, %for.cond.1.i.i126.adv7511_cec_write_and_or.exit130_crit_edge, %for.cond.i.i123.adv7511_cec_write_and_or.exit130_crit_edge, %sw.bb44.adv7511_cec_write_and_or.exit130_crit_edge
  %shl47 = shl i8 %addr, 4
  %57 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.i.i132 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext 76) #11
  %59 = trunc i32 %call1.i.i132 to i8
  %60 = and i8 %59, 15
  %conv2.i133 = or i8 %60, %shl47
  %61 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.i2.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i133) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i134)
  %cmp2.i.i135 = icmp eq i32 %call1.i2.i134, 0
  br i1 %cmp2.i.i135, label %adv7511_cec_write_and_or.exit130.cleanup53_crit_edge, label %for.cond.i.i138

adv7511_cec_write_and_or.exit130.cleanup53_crit_edge: ; preds = %adv7511_cec_write_and_or.exit130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.i.i138:                                  ; preds = %adv7511_cec_write_and_or.exit130
  %63 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.1.i.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i133) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i136)
  %cmp2.1.i.i137 = icmp eq i32 %call1.1.i.i136, 0
  br i1 %cmp2.1.i.i137, label %for.cond.i.i138.cleanup53_crit_edge, label %for.cond.1.i.i141

for.cond.i.i138.cleanup53_crit_edge:              ; preds = %for.cond.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.1.i.i141:                                ; preds = %for.cond.i.i138
  %65 = ptrtoint ptr %i2c_cec.i.i116 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_cec.i.i116, align 4
  %call1.2.i.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 76, i8 noundef zeroext %conv2.i133) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i139)
  %cmp2.2.i.i140 = icmp eq i32 %call1.2.i.i139, 0
  br i1 %cmp2.2.i.i140, label %for.cond.1.i.i141.cleanup53_crit_edge, label %for.cond.2.i.i144

for.cond.1.i.i141.cleanup53_crit_edge:            ; preds = %for.cond.1.i.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.2.i.i144:                                ; preds = %for.cond.1.i.i141
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i142 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i142, ptr noundef nonnull @.str.138) #14
  br label %cleanup53

sw.bb50:                                          ; preds = %if.end35
  %i2c_cec.i.i146 = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.i.i147 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %68, i8 noundef zeroext 75) #11
  %69 = trunc i32 %call1.i.i147 to i8
  %conv2.i148 = or i8 %69, 64
  %70 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.i2.i149 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %71, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i149)
  %cmp2.i.i150 = icmp eq i32 %call1.i2.i149, 0
  br i1 %cmp2.i.i150, label %sw.bb50.adv7511_cec_write_and_or.exit160_crit_edge, label %for.cond.i.i153

sw.bb50.adv7511_cec_write_and_or.exit160_crit_edge: ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit160

for.cond.i.i153:                                  ; preds = %sw.bb50
  %72 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.1.i.i151 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i151)
  %cmp2.1.i.i152 = icmp eq i32 %call1.1.i.i151, 0
  br i1 %cmp2.1.i.i152, label %for.cond.i.i153.adv7511_cec_write_and_or.exit160_crit_edge, label %for.cond.1.i.i156

for.cond.i.i153.adv7511_cec_write_and_or.exit160_crit_edge: ; preds = %for.cond.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit160

for.cond.1.i.i156:                                ; preds = %for.cond.i.i153
  %74 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.2.i.i154 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 75, i8 noundef zeroext %conv2.i148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i154)
  %cmp2.2.i.i155 = icmp eq i32 %call1.2.i.i154, 0
  br i1 %cmp2.2.i.i155, label %for.cond.1.i.i156.adv7511_cec_write_and_or.exit160_crit_edge, label %for.cond.2.i.i159

for.cond.1.i.i156.adv7511_cec_write_and_or.exit160_crit_edge: ; preds = %for.cond.1.i.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit160

for.cond.2.i.i159:                                ; preds = %for.cond.1.i.i156
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i157 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i157, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit160

adv7511_cec_write_and_or.exit160:                 ; preds = %for.cond.2.i.i159, %for.cond.1.i.i156.adv7511_cec_write_and_or.exit160_crit_edge, %for.cond.i.i153.adv7511_cec_write_and_or.exit160_crit_edge, %sw.bb50.adv7511_cec_write_and_or.exit160_crit_edge
  %76 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.i.i162 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 77) #11
  %78 = trunc i32 %call1.i.i162 to i8
  %79 = and i8 %78, -16
  %conv2.i163 = or i8 %79, %addr
  %80 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.i2.i164 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 77, i8 noundef zeroext %conv2.i163) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i164)
  %cmp2.i.i165 = icmp eq i32 %call1.i2.i164, 0
  br i1 %cmp2.i.i165, label %adv7511_cec_write_and_or.exit160.cleanup53_crit_edge, label %for.cond.i.i168

adv7511_cec_write_and_or.exit160.cleanup53_crit_edge: ; preds = %adv7511_cec_write_and_or.exit160
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.i.i168:                                  ; preds = %adv7511_cec_write_and_or.exit160
  %82 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.1.i.i166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 77, i8 noundef zeroext %conv2.i163) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i166)
  %cmp2.1.i.i167 = icmp eq i32 %call1.1.i.i166, 0
  br i1 %cmp2.1.i.i167, label %for.cond.i.i168.cleanup53_crit_edge, label %for.cond.1.i.i171

for.cond.i.i168.cleanup53_crit_edge:              ; preds = %for.cond.i.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.1.i.i171:                                ; preds = %for.cond.i.i168
  %84 = ptrtoint ptr %i2c_cec.i.i146 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_cec.i.i146, align 4
  %call1.2.i.i169 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 77, i8 noundef zeroext %conv2.i163) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i169)
  %cmp2.2.i.i170 = icmp eq i32 %call1.2.i.i169, 0
  br i1 %cmp2.2.i.i170, label %for.cond.1.i.i171.cleanup53_crit_edge, label %for.cond.2.i.i174

for.cond.1.i.i171.cleanup53_crit_edge:            ; preds = %for.cond.1.i.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

for.cond.2.i.i174:                                ; preds = %for.cond.1.i.i171
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i172 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i172, ptr noundef nonnull @.str.138) #14
  br label %cleanup53

cleanup53:                                        ; preds = %for.cond.2.i.i174, %for.cond.1.i.i171.cleanup53_crit_edge, %for.cond.i.i168.cleanup53_crit_edge, %adv7511_cec_write_and_or.exit160.cleanup53_crit_edge, %for.cond.2.i.i144, %for.cond.1.i.i141.cleanup53_crit_edge, %for.cond.i.i138.cleanup53_crit_edge, %adv7511_cec_write_and_or.exit130.cleanup53_crit_edge, %for.cond.2.i.i114, %for.cond.1.i.i111.cleanup53_crit_edge, %for.cond.i.i108.cleanup53_crit_edge, %adv7511_cec_write_and_or.exit100.cleanup53_crit_edge, %if.end35.cleanup53_crit_edge, %if.then30.cleanup53_crit_edge, %land.lhs.true21.2.cleanup53_crit_edge, %land.lhs.true21.1.cleanup53_crit_edge, %land.lhs.true21.cleanup53_crit_edge, %adv7511_cec_write_and_or.exit, %if.then
  %retval.2 = phi i32 [ 0, %adv7511_cec_write_and_or.exit ], [ %cond, %if.then ], [ -6, %if.then30.cleanup53_crit_edge ], [ 0, %if.end35.cleanup53_crit_edge ], [ 0, %adv7511_cec_write_and_or.exit100.cleanup53_crit_edge ], [ 0, %for.cond.i.i108.cleanup53_crit_edge ], [ 0, %for.cond.1.i.i111.cleanup53_crit_edge ], [ 0, %for.cond.2.i.i114 ], [ 0, %adv7511_cec_write_and_or.exit130.cleanup53_crit_edge ], [ 0, %for.cond.i.i138.cleanup53_crit_edge ], [ 0, %for.cond.1.i.i141.cleanup53_crit_edge ], [ 0, %for.cond.2.i.i144 ], [ 0, %adv7511_cec_write_and_or.exit160.cleanup53_crit_edge ], [ 0, %for.cond.i.i168.cleanup53_crit_edge ], [ 0, %for.cond.1.i.i171.cleanup53_crit_edge ], [ 0, %for.cond.2.i.i174 ], [ 0, %land.lhs.true21.2.cleanup53_crit_edge ], [ 0, %land.lhs.true21.1.cleanup53_crit_edge ], [ 0, %land.lhs.true21.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %len2 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 8
  %conv = trunc i32 %3 to i8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %3, 255
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %conv5 = and i32 %3, 255
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name, ptr noundef nonnull @.str.224, i32 noundef %conv5) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %conv9.pre-phi = phi i32 [ %.pre, %entry.do.end8_crit_edge ], [ %conv5, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv9.pre-phi)
  %cmp10 = icmp ugt i32 %conv9.pre-phi, 16
  br i1 %cmp10, label %do.end15, label %if.end21

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %name17 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name17, ptr noundef nonnull @.str.224, i32 noundef %conv9.pre-phi) #14
  br label %cleanup

if.end21:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %attempts)
  %cmp24 = icmp ult i8 %attempts, 2
  %sub = shl i8 %attempts, 4
  %phi.bo = add i8 %sub, -16
  %cond = select i1 %cmp24, i8 16, i8 %phi.bo
  %i2c_cec.i.i = getelementptr %struct.adv7511_state, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 18) #11
  %7 = trunc i32 %call1.i.i to i8
  %8 = and i8 %7, -113
  %conv2.i = or i8 %8, %cond
  %9 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %cmp2.i.i = icmp eq i32 %call1.i2.i, 0
  br i1 %cmp2.i.i, label %if.end21.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.i.i

if.end21.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.i.i:                                     ; preds = %if.end21
  %11 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %13 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i.i, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write_and_or.exit

adv7511_cec_write_and_or.exit:                    ; preds = %for.cond.2.i.i, %for.cond.1.i.i.adv7511_cec_write_and_or.exit_crit_edge, %for.cond.i.i.adv7511_cec_write_and_or.exit_crit_edge, %if.end21.adv7511_cec_write_and_or.exit_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -105, i8 noundef zeroext 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %adv7511_cec_write_and_or.exit.adv7511_wr.exit_crit_edge, label %for.cond.i

adv7511_cec_write_and_or.exit.adv7511_wr.exit_crit_edge: ; preds = %adv7511_cec_write_and_or.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.i:                                       ; preds = %adv7511_cec_write_and_or.exit
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -105, i8 noundef zeroext 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adv7511_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.adv7511_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -105, i8 noundef zeroext 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adv7511_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.adv7511_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name.i, ptr noundef nonnull @.str.208) #14
  br label %adv7511_wr.exit

adv7511_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.adv7511_wr.exit_crit_edge, %for.cond.i.adv7511_wr.exit_crit_edge, %adv7511_cec_write_and_or.exit.adv7511_wr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.pre-phi)
  %cmp3093.not = icmp eq i32 %conv9.pre-phi, 0
  br i1 %cmp3093.not, label %adv7511_wr.exit.for.end_crit_edge, label %for.body.lr.ph

adv7511_wr.exit.for.end_crit_edge:                ; preds = %adv7511_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %adv7511_wr.exit
  %name.i64 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %adv7511_cec_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %adv7511_cec_write.exit.for.body_crit_edge ]
  %conv32 = trunc i32 %i.094 to i8
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.094
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext %conv32, i8 noundef zeroext %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %cmp2.i57 = icmp eq i32 %call1.i56, 0
  br i1 %cmp2.i57, label %for.body.adv7511_cec_write.exit_crit_edge, label %for.cond.i60

for.body.adv7511_cec_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.i60:                                     ; preds = %for.body
  %21 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.1.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext %conv32, i8 noundef zeroext %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i58)
  %cmp2.1.i59 = icmp eq i32 %call1.1.i58, 0
  br i1 %cmp2.1.i59, label %for.cond.i60.adv7511_cec_write.exit_crit_edge, label %for.cond.1.i63

for.cond.i60.adv7511_cec_write.exit_crit_edge:    ; preds = %for.cond.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.1.i63:                                   ; preds = %for.cond.i60
  %23 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.2.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext %conv32, i8 noundef zeroext %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i61)
  %cmp2.2.i62 = icmp eq i32 %call1.2.i61, 0
  br i1 %cmp2.2.i62, label %for.cond.1.i63.adv7511_cec_write.exit_crit_edge, label %for.cond.2.i66

for.cond.1.i63.adv7511_cec_write.exit_crit_edge:  ; preds = %for.cond.1.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit

for.cond.2.i66:                                   ; preds = %for.cond.1.i63
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i64, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit

adv7511_cec_write.exit:                           ; preds = %for.cond.2.i66, %for.cond.1.i63.adv7511_cec_write.exit_crit_edge, %for.cond.i60.adv7511_cec_write.exit_crit_edge, %for.body.adv7511_cec_write.exit_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %conv9.pre-phi
  br i1 %exitcond.not, label %adv7511_cec_write.exit.for.end_crit_edge, label %adv7511_cec_write.exit.for.body_crit_edge

adv7511_cec_write.exit.for.body_crit_edge:        ; preds = %adv7511_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

adv7511_cec_write.exit.for.end_crit_edge:         ; preds = %adv7511_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %adv7511_cec_write.exit.for.end_crit_edge, %adv7511_wr.exit.for.end_crit_edge
  %25 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 16, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %cmp2.i69 = icmp eq i32 %call1.i68, 0
  br i1 %cmp2.i69, label %for.end.adv7511_cec_write.exit79_crit_edge, label %for.cond.i72

for.end.adv7511_cec_write.exit79_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit79

for.cond.i72:                                     ; preds = %for.end
  %27 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.1.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 16, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i70)
  %cmp2.1.i71 = icmp eq i32 %call1.1.i70, 0
  br i1 %cmp2.1.i71, label %for.cond.i72.adv7511_cec_write.exit79_crit_edge, label %for.cond.1.i75

for.cond.i72.adv7511_cec_write.exit79_crit_edge:  ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit79

for.cond.1.i75:                                   ; preds = %for.cond.i72
  %29 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.2.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 16, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i73)
  %cmp2.2.i74 = icmp eq i32 %call1.2.i73, 0
  br i1 %cmp2.2.i74, label %for.cond.1.i75.adv7511_cec_write.exit79_crit_edge, label %for.cond.2.i78

for.cond.1.i75.adv7511_cec_write.exit79_crit_edge: ; preds = %for.cond.1.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7511_cec_write.exit79

for.cond.2.i78:                                   ; preds = %for.cond.1.i75
  call void @__sanitizer_cov_trace_pc() #13
  %name.i76 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i76, ptr noundef nonnull @.str.138) #14
  br label %adv7511_cec_write.exit79

adv7511_cec_write.exit79:                         ; preds = %for.cond.2.i78, %for.cond.1.i75.adv7511_cec_write.exit79_crit_edge, %for.cond.i72.adv7511_cec_write.exit79_crit_edge, %for.end.adv7511_cec_write.exit79_crit_edge
  %31 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 17, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %cmp2.i82 = icmp eq i32 %call1.i81, 0
  br i1 %cmp2.i82, label %adv7511_cec_write.exit79.cleanup_crit_edge, label %for.cond.i85

adv7511_cec_write.exit79.cleanup_crit_edge:       ; preds = %adv7511_cec_write.exit79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i85:                                     ; preds = %adv7511_cec_write.exit79
  %33 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.1.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 17, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i83)
  %cmp2.1.i84 = icmp eq i32 %call1.1.i83, 0
  br i1 %cmp2.1.i84, label %for.cond.i85.cleanup_crit_edge, label %for.cond.1.i88

for.cond.i85.cleanup_crit_edge:                   ; preds = %for.cond.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1.i88:                                   ; preds = %for.cond.i85
  %35 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.2.i86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 17, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i86)
  %cmp2.2.i87 = icmp eq i32 %call1.2.i86, 0
  br i1 %cmp2.2.i87, label %for.cond.1.i88.cleanup_crit_edge, label %for.cond.2.i91

for.cond.1.i88.cleanup_crit_edge:                 ; preds = %for.cond.1.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.i91:                                   ; preds = %for.cond.1.i88
  call void @__sanitizer_cov_trace_pc() #13
  %name.i89 = getelementptr inbounds %struct.adv7511_state, ptr %1, i32 0, i32 1, i32 9
  %call3.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i89, ptr noundef nonnull @.str.138) #14
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i91, %for.cond.1.i88.cleanup_crit_edge, %for.cond.i85.cleanup_crit_edge, %adv7511_cec_write.exit79.cleanup_crit_edge, %do.end15
  %retval.0 = phi i32 [ -22, %do.end15 ], [ 0, %adv7511_cec_write.exit79.cleanup_crit_edge ], [ 0, %for.cond.i85.cleanup_crit_edge ], [ 0, %for.cond.1.i88.cleanup_crit_edge ], [ 0, %for.cond.2.i91 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i7 @llvm.bitreverse.i7(i7) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 259)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 259)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !329, !330, !331, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !354, !355, !356, !357, !358, !359, !361, !363, !364, !365, !367, !368, !369, !371, !373, !374, !375, !377, !379, !381, !383, !385, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !421, !422, !423, !424, !426, !427, !428, !430, !431, !432, !433, !434, !435, !437, !438, !439, !441, !442, !443, !444, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !483, !484}
!llvm.module.flags = !{!486, !487, !488, !489, !490, !491, !492, !493}
!llvm.ident = !{!494}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 37, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_adv7511_v4l2__300_1967_adv7511_driver_init6, !13, !"__initcall__kmod_adv7511_v4l2__300_1967_adv7511_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1967, i32 1}
!14 = !{ptr @__exitcall_adv7511_driver_exit, !13, !"__exitcall_adv7511_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 31, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1960, i32 11}
!20 = !{ptr @adv7511_driver, !21, !"adv7511_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1958, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1786, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @adv7511_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @adv7511_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1795, i32 2}
!30 = !{ptr @adv7511_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adv7511_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @adv7511_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1802, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1841, i32 3}
!37 = !{ptr @adv7511_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @adv7511_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1850, i32 3}
!41 = !{ptr @adv7511_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @adv7511_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1858, i32 3}
!45 = !{ptr @adv7511_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @adv7511_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1867, i32 4}
!49 = !{ptr @adv7511_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv7511_probe._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1878, i32 3}
!53 = !{ptr @adv7511_probe._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adv7511_probe._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1883, i32 22}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1885, i32 3}
!59 = !{ptr @adv7511_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @adv7511_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @adv7511_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1890, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @adv7511_probe.__key.28, !62, !"__key", i1 false, i1 false}
!65 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1908, i32 2}
!68 = !{ptr @adv7511_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @adv7511_probe._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @adv7511_ops, !71, !"adv7511_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1413, i32 37}
!72 = !{ptr @adv7511_core_ops, !73, !"adv7511_core_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 971, i32 42}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 553, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 554, i32 3}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 555, i32 3}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 556, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 557, i32 3}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 558, i32 3}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 8}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 13}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 18}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 23}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 28}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 33}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 38}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 43}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 559, i32 48}
!106 = !{ptr @adv7511_log_status.states, !107, !"states", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 552, i32 28}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 562, i32 3}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 563, i32 3}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 564, i32 3}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 565, i32 3}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 566, i32 3}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 567, i32 3}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 568, i32 3}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 569, i32 3}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 570, i32 3}
!126 = !{ptr @adv7511_log_status.errors, !127, !"errors", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 561, i32 28}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 574, i32 2}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @adv7511_log_status._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @adv7511_log_status._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 575, i32 2}
!137 = !{ptr @adv7511_log_status._entry.62, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @adv7511_log_status._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 580, i32 2}
!144 = !{ptr @adv7511_log_status._entry.68, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @adv7511_log_status._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 585, i32 2}
!152 = !{ptr @adv7511_log_status._entry.75, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @adv7511_log_status._entry_ptr.77, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 589, i32 2}
!156 = !{ptr @adv7511_log_status._entry.78, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @adv7511_log_status._entry_ptr.80, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 608, i32 3}
!162 = !{ptr @adv7511_log_status._entry.83, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @adv7511_log_status._entry_ptr.85, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 610, i32 3}
!168 = !{ptr @adv7511_log_status._entry.88, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @adv7511_log_status._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 615, i32 35}
!172 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 618, i32 3}
!174 = !{ptr @adv7511_log_status._entry.92, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @adv7511_log_status._entry_ptr.94, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 619, i32 2}
!178 = !{ptr @adv7511_log_status._entry.95, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @adv7511_log_status._entry_ptr.97, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 624, i32 2}
!182 = !{ptr @adv7511_log_status._entry.98, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @adv7511_log_status._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 626, i32 2}
!186 = !{ptr @adv7511_log_status._entry.101, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @adv7511_log_status._entry_ptr.103, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 633, i32 5}
!190 = !{ptr @adv7511_log_status._entry.104, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @adv7511_log_status._entry_ptr.106, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 637, i32 2}
!194 = !{ptr @adv7511_log_status._entry.107, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @adv7511_log_status._entry_ptr.109, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 536, i32 5}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 537, i32 5}
!200 = !{ptr @.str.112, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 538, i32 5}
!202 = !{ptr @adv7511_log_infoframes.cri, !203, !"cri", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 535, i32 49}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 502, i32 3}
!206 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @log_infoframe._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @log_infoframe._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.116, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 511, i32 3}
!211 = !{ptr @log_infoframe._entry.115, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @log_infoframe._entry_ptr.117, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 526, i32 3}
!215 = !{ptr @log_infoframe._entry.118, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @log_infoframe._entry_ptr.120, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.121, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 530, i32 21}
!219 = !{ptr @.str.122, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 180, i32 5}
!221 = !{ptr @.str.123, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @adv_smbus_read_byte_data._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @adv_smbus_read_byte_data._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 184, i32 2}
!226 = !{ptr @adv_smbus_read_byte_data._entry.124, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @adv_smbus_read_byte_data._entry_ptr.126, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.127, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 168, i32 3}
!230 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @adv_smbus_read_byte_data_check._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @adv_smbus_read_byte_data_check._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 442, i32 3}
!235 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @adv7511_g_register._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @adv7511_g_register._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.131, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 421, i32 2}
!240 = !{ptr @.str.132, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @adv7511_inv_register._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @adv7511_inv_register._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.134, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 423, i32 3}
!245 = !{ptr @adv7511_inv_register._entry.133, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @adv7511_inv_register._entry_ptr.135, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.136, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 464, i32 3}
!249 = !{ptr @adv7511_s_register._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @adv7511_s_register._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.137, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 256, i32 2}
!253 = !{ptr @.str.138, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @adv7511_cec_write._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @adv7511_cec_write._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.139, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 648, i32 2}
!258 = !{ptr @.str.140, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @adv7511_s_power._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @adv7511_s_power._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.142, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 669, i32 3}
!263 = !{ptr @adv7511_s_power._entry.141, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @adv7511_s_power._entry_ptr.143, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.145, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 674, i32 3}
!267 = !{ptr @adv7511_s_power._entry.144, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @adv7511_s_power._entry_ptr.146, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 926, i32 2}
!271 = !{ptr @.str.148, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @adv7511_isr._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @adv7511_isr._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.150, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 944, i32 3}
!276 = !{ptr @adv7511_isr._entry.149, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @adv7511_isr._entry_ptr.151, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.152, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1629, i32 2}
!280 = !{ptr @.str.153, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @adv7511_check_edid_status._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @adv7511_check_edid_status._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.155, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1641, i32 4}
!285 = !{ptr @adv7511_check_edid_status._entry.154, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @adv7511_check_edid_status._entry_ptr.156, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1644, i32 3}
!289 = !{ptr @adv7511_check_edid_status._entry.157, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @adv7511_check_edid_status._entry_ptr.159, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.161, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1650, i32 5}
!293 = !{ptr @adv7511_check_edid_status._entry.160, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @adv7511_check_edid_status._entry_ptr.162, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.164, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1658, i32 5}
!297 = !{ptr @adv7511_check_edid_status._entry.163, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @adv7511_check_edid_status._entry_ptr.165, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.167, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1669, i32 4}
!301 = !{ptr @adv7511_check_edid_status._entry.166, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @adv7511_check_edid_status._entry_ptr.168, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.170, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1677, i32 3}
!305 = !{ptr @adv7511_check_edid_status._entry.169, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @adv7511_check_edid_status._entry_ptr.171, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.172, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 222, i32 2}
!309 = !{ptr @.str.173, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @adv7511_edid_rd._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @adv7511_edid_rd._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.175, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 230, i32 4}
!314 = !{ptr @adv7511_edid_rd._entry.174, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @adv7511_edid_rd._entry_ptr.176, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.177, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1425, i32 3}
!318 = !{ptr @.str.178, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @adv7511_dbg_dump_edid._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @adv7511_dbg_dump_edid._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.180, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1430, i32 5}
!323 = !{ptr @adv7511_dbg_dump_edid._entry.179, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @adv7511_dbg_dump_edid._entry_ptr.181, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.182, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1432, i32 17}
!327 = !{ptr @.str.184, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1436, i32 4}
!329 = !{ptr @adv7511_dbg_dump_edid._entry.183, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @adv7511_dbg_dump_edid._entry_ptr.185, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @edid_verify_header.hdmi_header, !332, !"hdmi_header", i1 false, i1 false}
!332 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1613, i32 18}
!333 = !{ptr @.str.186, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 825, i32 3}
!335 = !{ptr @.str.187, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @adv_cec_tx_raw_status._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @adv_cec_tx_raw_status._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.189, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 830, i32 3}
!340 = !{ptr @adv_cec_tx_raw_status._entry.188, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @adv_cec_tx_raw_status._entry_ptr.190, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.192, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 841, i32 3}
!344 = !{ptr @adv_cec_tx_raw_status._entry.191, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @adv_cec_tx_raw_status._entry_ptr.193, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.195, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 858, i32 3}
!348 = !{ptr @adv_cec_tx_raw_status._entry.194, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @adv_cec_tx_raw_status._entry_ptr.196, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @adv7511_audio_ops, !351, !"adv7511_audio_ops", i1 false, i1 false}
!351 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1158, i32 43}
!352 = !{ptr @.str.197, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1089, i32 2}
!354 = !{ptr @.str.198, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @adv7511_s_audio_stream._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @adv7511_s_audio_stream._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.199, !353, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.200, !353, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @adv7511_video_ops, !360, !"adv7511_video_ops", i1 false, i1 false}
!360 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1080, i32 43}
!361 = !{ptr @.str.201, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 988, i32 2}
!363 = !{ptr @adv7511_s_stream._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @adv7511_s_stream._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.202, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1006, i32 2}
!367 = !{ptr @adv7511_s_dv_timings._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @adv7511_s_dv_timings._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @adv7511_timings_cap, !370, !"adv7511_timings_cap", i1 false, i1 false}
!370 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 134, i32 41}
!371 = !{ptr @.str.203, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1051, i32 2}
!373 = !{ptr @adv7511_g_dv_timings._entry, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @adv7511_g_dv_timings._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @adv7511_pad_ops, !376, !"adv7511_pad_ops", i1 false, i1 false}
!376 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1402, i32 41}
!377 = !{ptr @.str.204, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!379 = !{ptr @adv7511_int_ops, !380, !"adv7511_int_ops", i1 false, i1 false}
!380 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1715, i32 46}
!381 = !{ptr @adv7511_ctrl_ops, !382, !"adv7511_ctrl_ops", i1 false, i1 false}
!382 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 410, i32 35}
!383 = !{ptr @.str.205, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 385, i32 2}
!385 = !{ptr @.str.206, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @adv7511_s_ctrl._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @adv7511_s_ctrl._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.207, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 206, i32 2}
!390 = !{ptr @.str.208, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @adv7511_wr._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @adv7511_wr._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.209, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1461, i32 2}
!395 = !{ptr @adv7511_edid_handler._entry, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @adv7511_edid_handler._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.211, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1474, i32 4}
!399 = !{ptr @adv7511_edid_handler._entry.210, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @adv7511_edid_handler._entry_ptr.212, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.214, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1485, i32 2}
!403 = !{ptr @adv7511_edid_handler._entry.213, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @adv7511_edid_handler._entry_ptr.215, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.216, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1729, i32 2}
!407 = !{ptr @adv7511_init_setup._entry, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @adv7511_init_setup._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.218, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1749, i32 2}
!411 = !{ptr @adv7511_init_setup._entry.217, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @adv7511_init_setup._entry_ptr.219, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.221, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1760, i32 3}
!415 = !{ptr @adv7511_init_setup._entry.220, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @adv7511_init_setup._entry_ptr.222, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @adv7511_cec_adap_ops, !418, !"adv7511_cec_adap_ops", i1 false, i1 false}
!418 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 864, i32 34}
!419 = !{ptr @.str.223, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 792, i32 2}
!421 = !{ptr @.str.224, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @adv7511_cec_adap_transmit._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @adv7511_cec_adap_transmit._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.226, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 795, i32 3}
!426 = !{ptr @adv7511_cec_adap_transmit._entry.225, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @adv7511_cec_adap_transmit._entry_ptr.227, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.228, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 879, i32 2}
!430 = !{ptr @.str.229, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @adv7511_set_isr._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @adv7511_set_isr._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.230, !429, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.231, !429, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.233, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 906, i32 3}
!437 = !{ptr @adv7511_set_isr._entry.232, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @adv7511_set_isr._entry_ptr.234, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.235, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1546, i32 2}
!441 = !{ptr @.str.236, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @adv7511_check_monitor_present_status._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @adv7511_check_monitor_present_status._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.237, !440, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.238, !440, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.239, !440, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.241, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1557, i32 3}
!449 = !{ptr @adv7511_check_monitor_present_status._entry.240, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.242, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.244, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1559, i32 4}
!453 = !{ptr @adv7511_check_monitor_present_status._entry.243, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.245, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.247, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1563, i32 5}
!457 = !{ptr @adv7511_check_monitor_present_status._entry.246, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.248, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.250, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1572, i32 3}
!461 = !{ptr @adv7511_check_monitor_present_status._entry.249, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.251, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.253, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1576, i32 3}
!465 = !{ptr @adv7511_check_monitor_present_status._entry.252, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.254, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.256, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1578, i32 4}
!469 = !{ptr @adv7511_check_monitor_present_status._entry.255, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @adv7511_check_monitor_present_status._entry_ptr.257, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.258, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1501, i32 2}
!473 = !{ptr @adv7511_setup._entry, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @adv7511_setup._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.259, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1490, i32 2}
!477 = !{ptr @adv7511_audio_setup._entry, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @adv7511_audio_setup._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.260, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1934, i32 2}
!481 = !{ptr @.str.261, !480, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @adv7511_remove._entry, !480, !"_entry", i1 false, i1 false}
!483 = !{ptr @adv7511_remove._entry_ptr, !480, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @adv7511_id, !485, !"adv7511_id", i1 false, i1 false}
!485 = !{!"../drivers/media/i2c/adv7511-v4l2.c", i32 1952, i32 35}
!486 = !{i32 1, !"wchar_size", i32 2}
!487 = !{i32 1, !"min_enum_size", i32 4}
!488 = !{i32 8, !"branch-target-enforcement", i32 0}
!489 = !{i32 8, !"sign-return-address", i32 0}
!490 = !{i32 8, !"sign-return-address-all", i32 0}
!491 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!492 = !{i32 7, !"uwtable", i32 1}
!493 = !{i32 7, !"frame-pointer", i32 2}
!494 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!495 = !{i8 0, i8 2}
!496 = !{!"branch_weights", i32 1, i32 2000}
