; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7842.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7842.c"
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
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7842_format_info = type { i32, i8, i8, i8, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.95 }
%union.anon.95 = type { [32 x i32] }
%struct.adv7842_cfg_read_infoframe = type { ptr, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adv7842_video_standards = type <{ %struct.v4l2_dv_timings, i8, i8 }>
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
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
%struct.adv7842_state = type { %struct.adv7842_platform_data, %struct.v4l2_subdev, [4 x %struct.media_pad], %struct.v4l2_ctrl_handler, i32, %struct.v4l2_dv_timings, i32, ptr, i64, %struct.anon.100, %struct.anon.101, %struct.v4l2_fract, i32, i8, %struct.delayed_work, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], i8, i8 }
%struct.adv7842_platform_data = type { i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i8, %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.adv7842_sdp_csc_coeff = type { i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.adv7842_sdp_io_sync_adjustment = type { i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { [512 x i8], i32, i32 }
%struct.anon.101 = type { [128 x i8], i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.stdi_readback = type { i16, i16, i16, i8, i8, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.104 }
%union.anon.104 = type { [16 x i32] }

@__param_str_debug = internal constant [14 x i8] c"adv7842.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"adv7842.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [37 x i8] c"adv7842.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [64 x i8] c"adv7842.description=Analog Devices ADV7842 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [53 x i8] c"adv7842.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [49 x i8] c"adv7842.author=Martin Bugge <marbugge@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"adv7842.file=drivers/media/i2c/adv7842\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"adv7842.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_adv7842__301_3629_adv7842_driver_init6 = internal global ptr @adv7842_driver_init, section ".initcall6.init", align 4
@adv7842_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7842_probe, ptr @adv7842_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7842_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7842_driver_exit = internal global ptr @adv7842_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7842\00", [24 x i8] zeroinitializer }, align 32
@adv7842_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7842\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7842_probe.cea640x480 = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@adv7842_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s %d-%04x: detecting adv7842 client on address 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7842_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7842.c\00", [36 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr = internal global ptr @adv7842_probe._entry, section ".printk_index", align 4
@adv7842_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 3466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s %d-%04x: No platform data!\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr.6 = internal global ptr @adv7842_probe._entry.4, section ".printk_index", align 4
@adv7842_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7842_core_ops, ptr null, ptr null, ptr @adv7842_video_ops, ptr null, ptr null, ptr null, ptr @adv7842_pad_ops }, [32 x i8] zeroinitializer }, align 32
@adv7842_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @adv7842_registered, ptr @adv7842_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@adv7842_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 3492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: got rev=0x%04x on first read attempt\0A\00", [52 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr.9 = internal global ptr @adv7842_probe._entry.7, section ".printk_index", align 4
@adv7842_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 3498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: not an adv7842 on address 0x%x (rev=0x%04x)\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr.12 = internal global ptr @adv7842_probe._entry.10, section ".printk_index", align 4
@adv7842_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7842:3507:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@adv7842_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @adv7842_g_volatile_ctrl, ptr null, ptr @adv7842_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@adv7842_ctrl_analog_sampling_phase = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @adv7842_ctrl_ops, ptr null, i32 10492160, ptr @.str.410, i32 1, i64 0, i64 31, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@adv7842_ctrl_free_run_color_manual = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @adv7842_ctrl_ops, ptr null, i32 10492161, ptr @.str.411, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@adv7842_ctrl_free_run_color = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @adv7842_ctrl_ops, ptr null, i32 10492162, ptr @.str.412, i32 1, i64 0, i64 16777215, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@adv7842_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 3549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to create all i2c clients\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr.16 = internal global ptr @adv7842_probe._entry.14, section ".printk_index", align 4
@adv7842_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(work_completion)(&(&state->delayed_work_enable_hotplug)->work)\00", [32 x i8] zeroinitializer }, align 32
@adv7842_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&(&state->delayed_work_enable_hotplug)->timer\00", [50 x i8] zeroinitializer }, align 32
@adv7842_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @adv7842_cec_adap_enable, ptr null, ptr null, ptr @adv7842_cec_adap_log_addr, ptr @adv7842_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adv7842_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 3580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_probe._entry_ptr.22 = internal global ptr @adv7842_probe._entry.20, section ".printk_index", align 4
@adv7842_formats = internal constant { [19 x %struct.adv7842_format_info], [40 x i8] } { [19 x %struct.adv7842_format_info] [%struct.adv7842_format_info { i32 4106, i8 96, i8 1, i8 0, i8 64 }, %struct.adv7842_format_info { i32 8200, i8 96, i8 0, i8 0, i8 0 }, %struct.adv7842_format_info { i32 8201, i8 96, i8 0, i8 1, i8 0 }, %struct.adv7842_format_info { i32 8203, i8 96, i8 0, i8 0, i8 1 }, %struct.adv7842_format_info { i32 8204, i8 96, i8 0, i8 1, i8 1 }, %struct.adv7842_format_info { i32 8222, i8 96, i8 0, i8 0, i8 2 }, %struct.adv7842_format_info { i32 8223, i8 96, i8 0, i8 1, i8 2 }, %struct.adv7842_format_info { i32 8207, i8 -96, i8 0, i8 0, i8 -128 }, %struct.adv7842_format_info { i32 8208, i8 -96, i8 0, i8 1, i8 -128 }, %struct.adv7842_format_info { i32 8209, i8 96, i8 0, i8 0, i8 -128 }, %struct.adv7842_format_info { i32 8210, i8 96, i8 0, i8 1, i8 -128 }, %struct.adv7842_format_info { i32 8218, i8 -96, i8 0, i8 0, i8 -127 }, %struct.adv7842_format_info { i32 8219, i8 -96, i8 0, i8 1, i8 -127 }, %struct.adv7842_format_info { i32 8205, i8 96, i8 0, i8 0, i8 -127 }, %struct.adv7842_format_info { i32 8206, i8 96, i8 0, i8 1, i8 -127 }, %struct.adv7842_format_info { i32 8224, i8 -96, i8 0, i8 0, i8 -126 }, %struct.adv7842_format_info { i32 8225, i8 -96, i8 0, i8 1, i8 -126 }, %struct.adv7842_format_info { i32 8226, i8 96, i8 0, i8 0, i8 -126 }, %struct.adv7842_format_info { i32 8227, i8 96, i8 0, i8 1, i8 -126 }], [40 x i8] zeroinitializer }, align 32
@adv7842_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @adv7842_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7842_ioctl, ptr @adv7842_g_register, ptr @adv7842_s_register, ptr null, ptr @adv7842_isr, ptr @adv7842_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@adv7842_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7842_s_routing, ptr null, ptr @adv7842_g_std, ptr @adv7842_s_std, ptr null, ptr null, ptr @adv7842_querystd, ptr null, ptr null, ptr @adv7842_g_input_status, ptr null, ptr null, ptr null, ptr null, ptr @adv7842_s_dv_timings, ptr @adv7842_g_dv_timings, ptr @adv7842_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7842_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv7842_enum_mbus_code, ptr null, ptr null, ptr @adv7842_get_format, ptr @adv7842_set_format, ptr null, ptr null, ptr @adv7842_get_edid, ptr @adv7842_set_edid, ptr @adv7842_dv_timings_cap, ptr @adv7842_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 2640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Chip powered %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adv7842_sdp_log_status\00", [41 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr = internal global ptr @adv7842_sdp_log_status._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.3, i32 2642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Prim-mode = 0x%x, video std = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.29 = internal global ptr @adv7842_sdp_log_status._entry.27, section ".printk_index", align 4
@adv7842_sdp_log_status._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.3, i32 2645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: SDP: free run: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.32 = internal global ptr @adv7842_sdp_log_status._entry.30, section ".printk_index", align 4
@adv7842_sdp_log_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.3, i32 2647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: SDP: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.35 = internal global ptr @adv7842_sdp_log_status._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"valid SD/PR signal detected\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid/no signal\00", [46 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status.sdp_std_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NTSC-M/J\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1?\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NTSC-443\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"60HzSECAM\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5?\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7?\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8?\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9?\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"a?\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"b?\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAL-CombN\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"d?\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAL-BGHID\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.24, ptr @.str.3, i32 2664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: SDP: standard %s\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.56 = internal global ptr @adv7842_sdp_log_status._entry.54, section ".printk_index", align 4
@adv7842_sdp_log_status._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.3, i32 2666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.58 = internal global ptr @adv7842_sdp_log_status._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"60Hz\00", [27 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.3, i32 2668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.62 = internal global ptr @adv7842_sdp_log_status._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Interlaced\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Progressive\00", [20 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.24, ptr @.str.3, i32 2670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: SDP: deinterlacer %s\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.67 = internal global ptr @adv7842_sdp_log_status._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.24, ptr @.str.3, i32 2672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: SDP: csc %s mode\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_sdp_log_status._entry_ptr.72 = internal global ptr @adv7842_sdp_log_status._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s %d-%04x: read ok after %d retries\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv_smbus_read_byte_data\00", [39 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry_ptr = internal global ptr @adv_smbus_read_byte_data._entry, section ".printk_index", align 4
@adv_smbus_read_byte_data._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s %d-%04x: read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data._entry_ptr.79 = internal global ptr @adv_smbus_read_byte_data._entry.77, section ".printk_index", align 4
@adv7842_cp_log_status.csc_coeff_sel_rb = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.82, ptr @.str.84, ptr @.str.82, ptr @.str.85, ptr @.str.82, ptr @.str.86, ptr @.str.87, ptr @.str.82, ptr @.str.82, ptr @.str.82, ptr @.str.82, ptr @.str.74], [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bypassed\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YPbPr601 -> RGB\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YPbPr709 -> RGB\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RGB -> YPbPr601\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RGB -> YPbPr709\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YPbPr709 -> YPbPr601\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YPbPr601 -> YPbPr709\00", [43 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status.input_color_space_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.97], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGB limited range (16-235)\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RGB full range (0-255)\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"YCbCr Bt.601 (16-235)\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"YCbCr Bt.709 (16-235)\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xvYCC Bt.601\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xvYCC Bt.709\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YCbCr Bt.601 (0-255)\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YCbCr Bt.709 (0-255)\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"automatic\00", [22 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status.rgb_quantization_range_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.98, ptr @.str.88, ptr @.str.89], [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Automatic\00", [22 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status.deep_color_mode_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"8-bits per channel\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"10-bits per channel\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"12-bits per channel\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"16-bits per channel (not supported)\00", [60 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: -----Chip status-----\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv7842_cp_log_status\00", [42 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr = internal global ptr @adv7842_cp_log_status._entry, section ".printk_index", align 4
@adv7842_cp_log_status._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 2717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Chip power: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.107 = internal global ptr @adv7842_cp_log_status._entry.105, section ".printk_index", align 4
@adv7842_cp_log_status._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 2719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: HDMI/DVI-D port selected: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.110 = internal global ptr @adv7842_cp_log_status._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.104, ptr @.str.3, i32 2724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: EDID A %s, B %s\0A\00", [41 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.115 = internal global ptr @adv7842_cp_log_status._entry.113, section ".printk_index", align 4
@adv7842_cp_log_status._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.104, ptr @.str.3, i32 2727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: HPD A %s, B %s\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.118 = internal global ptr @adv7842_cp_log_status._entry.116, section ".printk_index", align 4
@adv7842_cp_log_status._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.104, ptr @.str.3, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: CEC: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.121 = internal global ptr @adv7842_cp_log_status._entry.119, section ".printk_index", align 4
@adv7842_cp_log_status._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.104, ptr @.str.3, i32 2738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: CEC Logical Address: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.124 = internal global ptr @adv7842_cp_log_status._entry.122, section ".printk_index", align 4
@adv7842_cp_log_status._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.104, ptr @.str.3, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----Signal status-----\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.127 = internal global ptr @adv7842_cp_log_status._entry.125, section ".printk_index", align 4
@adv7842_cp_log_status._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.104, ptr @.str.3, i32 2745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Cable detected (+5V power): %s\0A\00", [58 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.130 = internal global ptr @adv7842_cp_log_status._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.104, ptr @.str.3, i32 2747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: TMDS signal detected: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.135 = internal global ptr @adv7842_cp_log_status._entry.133, section ".printk_index", align 4
@adv7842_cp_log_status._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.104, ptr @.str.3, i32 2749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: TMDS signal locked: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.138 = internal global ptr @adv7842_cp_log_status._entry.136, section ".printk_index", align 4
@adv7842_cp_log_status._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.104, ptr @.str.3, i32 2752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Cable detected (+5V power):%s\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.141 = internal global ptr @adv7842_cp_log_status._entry.139, section ".printk_index", align 4
@adv7842_cp_log_status._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.104, ptr @.str.3, i32 2754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.143 = internal global ptr @adv7842_cp_log_status._entry.142, section ".printk_index", align 4
@adv7842_cp_log_status._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.104, ptr @.str.3, i32 2756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.145 = internal global ptr @adv7842_cp_log_status._entry.144, section ".printk_index", align 4
@adv7842_cp_log_status._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.104, ptr @.str.3, i32 2759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: CP free run: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.148 = internal global ptr @adv7842_cp_log_status._entry.146, section ".printk_index", align 4
@adv7842_cp_log_status._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.104, ptr @.str.3, i32 2762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.151 = internal global ptr @adv7842_cp_log_status._entry.149, section ".printk_index", align 4
@adv7842_cp_log_status._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.104, ptr @.str.3, i32 2764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----Video Timings-----\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.154 = internal global ptr @adv7842_cp_log_status._entry.152, section ".printk_index", align 4
@adv7842_cp_log_status._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.104, ptr @.str.3, i32 2766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: STDI: not locked\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.157 = internal global ptr @adv7842_cp_log_status._entry.155, section ".printk_index", align 4
@adv7842_cp_log_status._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.104, ptr @.str.3, i32 2781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\016%s: STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, fcl = %d, %s, %chsync, %cvsync\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.160 = internal global ptr @adv7842_cp_log_status._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interlaced\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"progressive\00", [20 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.104, ptr @.str.3, i32 2784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: No video detected\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.165 = internal global ptr @adv7842_cp_log_status._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Detected format: \00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Configured format: \00", [44 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.104, ptr @.str.3, i32 2794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: -----Color space-----\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.170 = internal global ptr @adv7842_cp_log_status._entry.168, section ".printk_index", align 4
@adv7842_cp_log_status._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.104, ptr @.str.3, i32 2796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: RGB quantization range ctrl: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.173 = internal global ptr @adv7842_cp_log_status._entry.171, section ".printk_index", align 4
@adv7842_cp_log_status._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.104, ptr @.str.3, i32 2798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Input color space: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.176 = internal global ptr @adv7842_cp_log_status._entry.174, section ".printk_index", align 4
@adv7842_cp_log_status._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.104, ptr @.str.3, i32 2803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Output color space: %s %s, alt-gamma %s\0A\00", [49 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.179 = internal global ptr @adv7842_cp_log_status._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"YCbCr\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(16-235)\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(0-255)\00", [24 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.104, ptr @.str.3, i32 2805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Color space conversion: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.186 = internal global ptr @adv7842_cp_log_status._entry.184, section ".printk_index", align 4
@adv7842_cp_log_status._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.104, ptr @.str.3, i32 2810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: -----%s status-----\0A\00", [37 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.189 = internal global ptr @adv7842_cp_log_status._entry.187, section ".printk_index", align 4
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-D\00", [26 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.104, ptr @.str.3, i32 2812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: HDCP encrypted content: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.194 = internal global ptr @adv7842_cp_log_status._entry.192, section ".printk_index", align 4
@adv7842_cp_log_status._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.104, ptr @.str.3, i32 2815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: HDCP keys read: %s%s\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.197 = internal global ptr @adv7842_cp_log_status._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@adv7842_cp_log_status._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.104, ptr @.str.3, i32 2822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Audio: pll %s, samples %s, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.204 = internal global ptr @adv7842_cp_log_status._entry.202, section ".printk_index", align 4
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not locked\00", [21 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detected\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not detected\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"muted\00", [26 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.104, ptr @.str.3, i32 2825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Audio format: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.212 = internal global ptr @adv7842_cp_log_status._entry.210, section ".printk_index", align 4
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"multi-channel\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.104, ptr @.str.3, i32 2829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: Audio CTS: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.217 = internal global ptr @adv7842_cp_log_status._entry.215, section ".printk_index", align 4
@adv7842_cp_log_status._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.104, ptr @.str.3, i32 2832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Audio N: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.220 = internal global ptr @adv7842_cp_log_status._entry.218, section ".printk_index", align 4
@adv7842_cp_log_status._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.104, ptr @.str.3, i32 2834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: AV Mute: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.223 = internal global ptr @adv7842_cp_log_status._entry.221, section ".printk_index", align 4
@adv7842_cp_log_status._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.104, ptr @.str.3, i32 2836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Deep color mode: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@adv7842_cp_log_status._entry_ptr.226 = internal global ptr @adv7842_cp_log_status._entry.224, section ".printk_index", align 4
@adv7842_query_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.3, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv7842_query_dv_timings\00", [39 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr = internal global ptr @adv7842_query_dv_timings._entry, section ".printk_index", align 4
@adv7842_query_dv_timings._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.3, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: no valid signal\0A\00", [37 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr.231 = internal global ptr @adv7842_query_dv_timings._entry.229, section ".printk_index", align 4
@adv7842_query_dv_timings._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.228, ptr @.str.3, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: lcvs + 1 = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr.234 = internal global ptr @adv7842_query_dv_timings._entry.232, section ".printk_index", align 4
@adv7842_query_dv_timings._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.228, ptr @.str.3, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: lcvs - 1 = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr.237 = internal global ptr @adv7842_query_dv_timings._entry.235, section ".printk_index", align 4
@adv7842_query_dv_timings._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.228, ptr @.str.3, i32 1622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s: restart STDI\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr.240 = internal global ptr @adv7842_query_dv_timings._entry.238, section ".printk_index", align 4
@adv7842_query_dv_timings._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.228, ptr @.str.3, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: format not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7842_query_dv_timings._entry_ptr.243 = internal global ptr @adv7842_query_dv_timings._entry.241, section ".printk_index", align 4
@.str.244 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7842_query_dv_timings:\00", [38 x i8] zeroinitializer }, align 32
@read_stdi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: no signal\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_stdi\00", [22 x i8] zeroinitializer }, align 32
@read_stdi._entry_ptr = internal global ptr @read_stdi._entry, section ".printk_index", align 4
@read_stdi._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.3, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: invalid signal\0A\00", [38 x i8] zeroinitializer }, align 32
@read_stdi._entry_ptr.249 = internal global ptr @read_stdi._entry.247, section ".printk_index", align 4
@read_stdi._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.246, ptr @.str.3, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017%s: %s: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, %chsync, %cvsync, %s\0A\00", [39 x i8] zeroinitializer }, align 32
@read_stdi._entry_ptr.252 = internal global ptr @read_stdi._entry.250, section ".printk_index", align 4
@adv7842_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.3, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: SDP status = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adv7842_g_input_status\00", [41 x i8] zeroinitializer }, align 32
@adv7842_g_input_status._entry_ptr = internal global ptr @adv7842_g_input_status._entry, section ".printk_index", align 4
@adv7842_g_input_status._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.254, ptr @.str.3, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: CP status = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_g_input_status._entry_ptr.257 = internal global ptr @adv7842_g_input_status._entry.255, section ".printk_index", align 4
@adv7842_timings_cap_digital = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.97 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 25000000, i64 225000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@adv7842_timings_cap_analog = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.97 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 25000000, i64 170000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@adv7842_timings_exceptions = internal constant { <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>, [88 x i8] } { <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, %struct.v4l2_dv_timings zeroinitializer }>, [88 x i8] zeroinitializer }, align 32
@v4l2_dv_timings_presets = external dso_local constant [0 x %struct.v4l2_dv_timings], align 1
@stdi2dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.3, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017%s: %s: No format candidate found for lcvs = %d, lcf=%d, bl = %d, %chsync, %cvsync\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stdi2dv_timings\00", [16 x i8] zeroinitializer }, align 32
@stdi2dv_timings._entry_ptr = internal global ptr @stdi2dv_timings._entry, section ".printk_index", align 4
@adv_smbus_write_byte_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s %d-%04x: error writing %02x, %02x, %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv_smbus_write_byte_data\00", [38 x i8] zeroinitializer }, align 32
@adv_smbus_write_byte_data._entry_ptr = internal global ptr @adv_smbus_write_byte_data._entry, section ".printk_index", align 4
@adv7842_log_infoframes.cri = internal constant { [4 x %struct.adv7842_cfg_read_infoframe], [32 x i8] } { [4 x %struct.adv7842_cfg_read_infoframe] [%struct.adv7842_cfg_read_infoframe { ptr @.str.263, i8 1, i8 -32, i8 0 }, %struct.adv7842_cfg_read_infoframe { ptr @.str.264, i8 2, i8 -29, i8 28 }, %struct.adv7842_cfg_read_infoframe { ptr @.str.265, i8 4, i8 -26, i8 42 }, %struct.adv7842_cfg_read_infoframe { ptr @.str.266, i8 16, i8 -20, i8 84 }], [32 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVI\00", [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDP\00", [28 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Vendor\00", [25 x i8] zeroinitializer }, align 32
@adv7842_log_infoframes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.268, ptr @.str.3, i32 2605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: receive DVI-D signal, no infoframes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adv7842_log_infoframes\00", [41 x i8] zeroinitializer }, align 32
@adv7842_log_infoframes._entry_ptr = internal global ptr @adv7842_log_infoframes._entry, section ".printk_index", align 4
@log_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.3, i32 2569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s infoframe not received\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"log_infoframe\00", [18 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr = internal global ptr @log_infoframe._entry, section ".printk_index", align 4
@log_infoframe._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str.3, i32 2579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s: invalid %s infoframe length %d\0A\00", [54 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr.273 = internal global ptr @log_infoframe._entry.271, section ".printk_index", align 4
@log_infoframe._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.270, ptr @.str.3, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: %s: unpack of %s infoframe failed\0A\00", [55 x i8] zeroinitializer }, align 32
@log_infoframe._entry_ptr.276 = internal global ptr @log_infoframe._entry.274, section ".printk_index", align 4
@.str.277 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adv7842_command_ram_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.3, i32 3197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: no sdram or no ddr sdram\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv7842_command_ram_test\00", [39 x i8] zeroinitializer }, align 32
@adv7842_command_ram_test._entry_ptr = internal global ptr @adv7842_command_ram_test._entry, section ".printk_index", align 4
@adv7842_ddr_ram_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.3, i32 3160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: Ram Test: completed %d of %d: pass %d, fail %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7842_ddr_ram_test\00", [43 x i8] zeroinitializer }, align 32
@adv7842_ddr_ram_test._entry_ptr = internal global ptr @adv7842_ddr_ram_test._entry, section ".printk_index", align 4
@select_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.283, ptr @.str.3, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: Unknown mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"select_input\00", [19 x i8] zeroinitializer }, align 32
@select_input._entry_ptr = internal global ptr @select_input._entry, section ".printk_index", align 4
@enable_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.284, ptr @.str.3, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_input\00", [19 x i8] zeroinitializer }, align 32
@enable_input._entry_ptr = internal global ptr @enable_input._entry, section ".printk_index", align 4
@set_rgb_quantization_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.286, ptr @.str.3, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: %s: RGB quantization range: %d, RGB out: %d, HDMI: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_rgb_quantization_range\00", [37 x i8] zeroinitializer }, align 32
@set_rgb_quantization_range._entry_ptr = internal global ptr @set_rgb_quantization_range._entry, section ".printk_index", align 4
@adv7842_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.3, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: %s: %s gain: a = 0x%x, b = 0x%x, c = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7842_set_gain\00", [47 x i8] zeroinitializer }, align 32
@adv7842_set_gain._entry_ptr = internal global ptr @adv7842_set_gain._entry, section ".printk_index", align 4
@.str.289 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Auto\00", [27 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Manual\00", [25 x i8] zeroinitializer }, align 32
@adv7842_set_gain._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.288, ptr @.str.3, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: %s: i2c error writing to CP reg 0x73, 0x74, 0x75, 0x76\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7842_set_gain._entry_ptr.293 = internal global ptr @adv7842_set_gain._entry.291, section ".printk_index", align 4
@adv7842_set_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.3, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: %s: %s offset: a = 0x%x, b = 0x%x, c = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7842_set_offset\00", [45 x i8] zeroinitializer }, align 32
@adv7842_set_offset._entry_ptr = internal global ptr @adv7842_set_offset._entry, section ".printk_index", align 4
@adv7842_set_offset._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.295, ptr @.str.3, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: %s: i2c error writing to CP reg 0x77, 0x78, 0x79, 0x7a\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7842_set_offset._entry_ptr.298 = internal global ptr @adv7842_set_offset._entry.296, section ".printk_index", align 4
@edid_write_vga_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.3, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: write EDID on VGA port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"edid_write_vga_segment\00", [41 x i8] zeroinitializer }, align 32
@edid_write_vga_segment._entry_ptr = internal global ptr @edid_write_vga_segment._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@edid_write_vga_segment._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s %d-%04x: error enabling edid on VGA port\0A\00", [49 x i8] zeroinitializer }, align 32
@edid_write_vga_segment._entry_ptr.303 = internal global ptr @edid_write_vga_segment._entry.301, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@edid_write_hdmi_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: write EDID on port %c\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edid_write_hdmi_segment\00", [40 x i8] zeroinitializer }, align 32
@edid_write_hdmi_segment._entry_ptr = internal global ptr @edid_write_hdmi_segment._entry, section ".printk_index", align 4
@edid_write_hdmi_segment._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.305, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s %d-%04x: error enabling edid on port %c\0A\00", [50 x i8] zeroinitializer }, align 32
@edid_write_hdmi_segment._entry_ptr.308 = internal global ptr @edid_write_hdmi_segment._entry.306, section ".printk_index", align 4
@adv7842_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.309, ptr @.str.3, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7842_s_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@adv7842_s_dv_timings._entry_ptr = internal global ptr @adv7842_s_dv_timings._entry, section ".printk_index", align 4
@adv7842_s_dv_timings._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.3, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: no change\0A\00", [43 x i8] zeroinitializer }, align 32
@adv7842_s_dv_timings._entry_ptr.312 = internal global ptr @adv7842_s_dv_timings._entry.310, section ".printk_index", align 4
@.str.313 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adv7842_s_dv_timings: \00", [41 x i8] zeroinitializer }, align 32
@configure_predefined_video_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.315, ptr @.str.3, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"configure_predefined_video_timings\00", [61 x i8] zeroinitializer }, align 32
@configure_predefined_video_timings._entry_ptr = internal global ptr @configure_predefined_video_timings._entry, section ".printk_index", align 4
@configure_predefined_video_timings._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.315, ptr @.str.3, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_predefined_video_timings._entry_ptr.317 = internal global ptr @configure_predefined_video_timings._entry.316, section ".printk_index", align 4
@adv7842_prim_mode_comp = internal constant { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, [298 x i8] } { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 0 }>, %struct.adv7842_video_standards zeroinitializer }>, [298 x i8] zeroinitializer }, align 32
@adv7842_prim_mode_gr = internal constant { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, [790 x i8] } { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 8, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 9, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 0, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 1, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 2, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 3, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 4, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 12, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 13, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 14, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 15, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 5, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 6, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1360, i32 768, i32 0, i32 3, i64 85500000, i32 64, i32 112, i32 256, i32 3, i32 6, i32 18, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 18, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1366, i32 768, i32 0, i32 3, i64 85500000, i32 70, i32 143, i32 213, i32 3, i32 3, i32 24, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 121750000, i32 88, i32 144, i32 232, i32 3, i32 4, i32 32, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 20, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 156000000, i32 104, i32 144, i32 248, i32 3, i32 4, i32 42, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 21, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 162000000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 22, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 1, i64 146250000, i32 104, i32 176, i32 280, i32 3, i32 6, i32 30, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 24, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 2, i64 154000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 26, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 0 }>, %struct.adv7842_video_standards zeroinitializer }>, [790 x i8] zeroinitializer }, align 32
@adv7842_prim_mode_hdmi_comp = internal constant { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, [324 x i8] } { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 0 }>, %struct.adv7842_video_standards zeroinitializer }>, [324 x i8] zeroinitializer }, align 32
@adv7842_prim_mode_hdmi_gr = internal constant { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, [512 x i8] } { <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 8, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 9, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 0, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 1, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 2, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 3, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 4, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 12, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 13, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 14, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 15, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 5, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 6, i8 0 }>, %struct.adv7842_video_standards zeroinitializer }>, [512 x i8] zeroinitializer }, align 32
@configure_custom_video_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.322, ptr @.str.3, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"configure_custom_video_timings\00", [33 x i8] zeroinitializer }, align 32
@configure_custom_video_timings._entry_ptr = internal global ptr @configure_custom_video_timings._entry, section ".printk_index", align 4
@configure_custom_video_timings._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.322, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: writing to reg 0x16 and 0x17 failed\0A\00", [53 x i8] zeroinitializer }, align 32
@configure_custom_video_timings._entry_ptr.325 = internal global ptr @configure_custom_video_timings._entry.323, section ".printk_index", align 4
@configure_custom_video_timings._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.322, ptr @.str.3, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_custom_video_timings._entry_ptr.327 = internal global ptr @configure_custom_video_timings._entry.326, section ".printk_index", align 4
@adv7842_g_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.3, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Register %03llx not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7842_g_register\00", [45 x i8] zeroinitializer }, align 32
@adv7842_g_register._entry_ptr = internal global ptr @adv7842_g_register._entry, section ".printk_index", align 4
@adv7842_inv_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.331, ptr @.str.3, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: 0x000-0x0ff: IO Map\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7842_inv_register\00", [43 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr = internal global ptr @adv7842_inv_register._entry, section ".printk_index", align 4
@adv7842_inv_register._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.331, ptr @.str.3, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x100-0x1ff: AVLink Map\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.334 = internal global ptr @adv7842_inv_register._entry.332, section ".printk_index", align 4
@adv7842_inv_register._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.331, ptr @.str.3, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: 0x200-0x2ff: CEC Map\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.337 = internal global ptr @adv7842_inv_register._entry.335, section ".printk_index", align 4
@adv7842_inv_register._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.331, ptr @.str.3, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: 0x300-0x3ff: InfoFrame Map\0A\00", [62 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.340 = internal global ptr @adv7842_inv_register._entry.338, section ".printk_index", align 4
@adv7842_inv_register._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.331, ptr @.str.3, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: 0x400-0x4ff: SDP_IO Map\0A\00", [33 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.343 = internal global ptr @adv7842_inv_register._entry.341, section ".printk_index", align 4
@adv7842_inv_register._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.331, ptr @.str.3, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: 0x500-0x5ff: SDP Map\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.346 = internal global ptr @adv7842_inv_register._entry.344, section ".printk_index", align 4
@adv7842_inv_register._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.331, ptr @.str.3, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: 0x600-0x6ff: AFE Map\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.349 = internal global ptr @adv7842_inv_register._entry.347, section ".printk_index", align 4
@adv7842_inv_register._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.331, ptr @.str.3, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: 0x700-0x7ff: Repeater Map\0A\00", [63 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.352 = internal global ptr @adv7842_inv_register._entry.350, section ".printk_index", align 4
@adv7842_inv_register._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.331, ptr @.str.3, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: 0x800-0x8ff: EDID Map\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.355 = internal global ptr @adv7842_inv_register._entry.353, section ".printk_index", align 4
@adv7842_inv_register._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.331, ptr @.str.3, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: 0x900-0x9ff: HDMI Map\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.358 = internal global ptr @adv7842_inv_register._entry.356, section ".printk_index", align 4
@adv7842_inv_register._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.331, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: 0xa00-0xaff: CP Map\0A\00", [37 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.361 = internal global ptr @adv7842_inv_register._entry.359, section ".printk_index", align 4
@adv7842_inv_register._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.331, ptr @.str.3, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: 0xb00-0xbff: VDP Map\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_inv_register._entry_ptr.364 = internal global ptr @adv7842_inv_register._entry.362, section ".printk_index", align 4
@adv7842_s_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.365, ptr @.str.3, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7842_s_register\00", [45 x i8] zeroinitializer }, align 32
@adv7842_s_register._entry_ptr = internal global ptr @adv7842_s_register._entry, section ".printk_index", align 4
@adv7842_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.367, ptr @.str.3, i32 2392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s: irq %x, %x, %x, %x, %x, %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv7842_isr\00", [20 x i8] zeroinitializer }, align 32
@adv7842_isr._entry_ptr = internal global ptr @adv7842_isr._entry, section ".printk_index", align 4
@adv7842_isr._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.367, ptr @.str.3, i32 2414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017%s: %s: fmt_change_cp = 0x%x, fmt_change_digital = 0x%x, fmt_change_sdp = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@adv7842_isr._entry_ptr.370 = internal global ptr @adv7842_isr._entry.368, section ".printk_index", align 4
@adv7842_isr._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.367, ptr @.str.3, i32 2423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: irq %s mode\0A\00", [41 x i8] zeroinitializer }, align 32
@adv7842_isr._entry_ptr.373 = internal global ptr @adv7842_isr._entry.371, section ".printk_index", align 4
@.str.374 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVI\00", [28 x i8] zeroinitializer }, align 32
@adv7842_isr._entry.375 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.367, ptr @.str.3, i32 2436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: irq tx_5v\0A\00", [43 x i8] zeroinitializer }, align 32
@adv7842_isr._entry_ptr.377 = internal global ptr @adv7842_isr._entry.375, section ".printk_index", align 4
@adv7842_ev_fmt = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@adv7842_cec_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.380, ptr @.str.3, i32 2211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: cec: irq 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7842_cec_isr\00", [16 x i8] zeroinitializer }, align 32
@adv7842_cec_isr._entry_ptr = internal global ptr @adv7842_cec_isr._entry, section ".printk_index", align 4
@adv7842_cec_tx_raw_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.382, ptr @.str.3, i32 2163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: tx raw: tx disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7842_cec_tx_raw_status\00", [38 x i8] zeroinitializer }, align 32
@adv7842_cec_tx_raw_status._entry_ptr = internal global ptr @adv7842_cec_tx_raw_status._entry, section ".printk_index", align 4
@adv7842_cec_tx_raw_status._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.382, ptr @.str.3, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: tx raw: arbitration lost\0A\00", [60 x i8] zeroinitializer }, align 32
@adv7842_cec_tx_raw_status._entry_ptr.385 = internal global ptr @adv7842_cec_tx_raw_status._entry.383, section ".printk_index", align 4
@adv7842_cec_tx_raw_status._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.382, ptr @.str.3, i32 2179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: tx raw: retry failed\0A\00", [32 x i8] zeroinitializer }, align 32
@adv7842_cec_tx_raw_status._entry_ptr.388 = internal global ptr @adv7842_cec_tx_raw_status._entry.386, section ".printk_index", align 4
@adv7842_cec_tx_raw_status._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.382, ptr @.str.3, i32 2196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: tx raw: ready ok\0A\00", [36 x i8] zeroinitializer }, align 32
@adv7842_cec_tx_raw_status._entry_ptr.391 = internal global ptr @adv7842_cec_tx_raw_status._entry.389, section ".printk_index", align 4
@adv7842_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.393, ptr @.str.3, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: input %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7842_s_routing\00", [46 x i8] zeroinitializer }, align 32
@adv7842_s_routing._entry_ptr = internal global ptr @adv7842_s_routing._entry, section ".printk_index", align 4
@adv7842_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.394, ptr @.str.3, i32 2975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7842_g_std\00", [18 x i8] zeroinitializer }, align 32
@adv7842_g_std._entry_ptr = internal global ptr @adv7842_g_std._entry, section ".printk_index", align 4
@adv7842_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.395, ptr @.str.3, i32 2952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7842_s_std\00", [18 x i8] zeroinitializer }, align 32
@adv7842_s_std._entry_ptr = internal global ptr @adv7842_s_std._entry, section ".printk_index", align 4
@adv7842_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.396, ptr @.str.3, i32 2856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7842_querystd\00", [47 x i8] zeroinitializer }, align 32
@adv7842_querystd._entry_ptr = internal global ptr @adv7842_querystd._entry, section ".printk_index", align 4
@adv7842_querystd._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.396, ptr @.str.3, i32 2863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7842_querystd._entry_ptr.398 = internal global ptr @adv7842_querystd._entry.397, section ".printk_index", align 4
@.str.399 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv7842_op_ch_sel.op_ch_sel = internal constant { [6 x [6 x i32]], [48 x i8] } { [6 x [6 x i32]] [[6 x i32] [i32 0, i32 32, i32 64, i32 96, i32 128, i32 160], [6 x i32] [i32 64, i32 96, i32 0, i32 32, i32 160, i32 128], [6 x i32] [i32 32, i32 0, i32 128, i32 160, i32 64, i32 96], [6 x i32] [i32 160, i32 128, i32 96, i32 64, i32 32, i32 0], [6 x i32] [i32 128, i32 160, i32 32, i32 0, i32 96, i32 64], [6 x i32] [i32 96, i32 64, i32 160, i32 128, i32 0, i32 32]], [48 x i8] zeroinitializer }, align 32
@adv7842_set_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.400, ptr @.str.401, ptr @.str.3, i32 2548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: error %d writing edid on port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7842_set_edid\00", [47 x i8] zeroinitializer }, align 32
@adv7842_set_edid._entry_ptr = internal global ptr @adv7842_set_edid._entry, section ".printk_index", align 4
@adv_smbus_read_byte_data_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.403, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s %d-%04x: error reading %02x, %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adv_smbus_read_byte_data_check\00", [33 x i8] zeroinitializer }, align 32
@adv_smbus_read_byte_data_check._entry_ptr = internal global ptr @adv_smbus_read_byte_data_check._entry, section ".printk_index", align 4
@main_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.404, ptr @.str.3, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"main_reset\00", [21 x i8] zeroinitializer }, align 32
@main_reset._entry_ptr = internal global ptr @main_reset._entry, section ".printk_index", align 4
@adv7842_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.405, ptr @.str.406, ptr @.str.3, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: R %x, G %x, B %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv7842_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@adv7842_s_ctrl._entry_ptr = internal global ptr @adv7842_s_ctrl._entry, section ".printk_index", align 4
@adv7842_s_ctrl._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.408, ptr @.str.406, ptr @.str.3, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Y %x, U %x, V %x\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7842_s_ctrl._entry_ptr.409 = internal global ptr @adv7842_s_ctrl._entry.407, section ".printk_index", align 4
@.str.410 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Sampling Phase\00", [42 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Free Running Color, Manual\00", [37 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Free Running Color\00", [45 x i8] zeroinitializer }, align 32
@adv7842_s_detect_tx_5v_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.414, ptr @.str.3, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adv7842_s_detect_tx_5v_ctrl\00", [36 x i8] zeroinitializer }, align 32
@adv7842_s_detect_tx_5v_ctrl._entry_ptr = internal global ptr @adv7842_s_detect_tx_5v_ctrl._entry, section ".printk_index", align 4
@.str.415 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"avlink\00", [25 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infoframe\00", [22 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdp_io\00", [25 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdp\00", [28 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afe\00", [28 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"repeater\00", [23 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cp\00", [29 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdp\00", [28 x i8] zeroinitializer }, align 32
@adv7842_dummy_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.427, ptr @.str.3, i32 3397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: no %s i2c addr configured\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7842_dummy_client\00", [43 x i8] zeroinitializer }, align 32
@adv7842_dummy_client._entry_ptr = internal global ptr @adv7842_dummy_client._entry, section ".printk_index", align 4
@adv7842_dummy_client._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.429, ptr @.str.427, ptr @.str.3, i32 3404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: register %s on i2c addr 0x%x failed with %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@adv7842_dummy_client._entry_ptr.430 = internal global ptr @adv7842_dummy_client._entry.428, section ".printk_index", align 4
@adv7842_delayed_work_enable_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.432, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: enable hotplug on ports: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adv7842_delayed_work_enable_hotplug\00", [60 x i8] zeroinitializer }, align 32
@adv7842_delayed_work_enable_hotplug._entry_ptr = internal global ptr @adv7842_delayed_work_enable_hotplug._entry, section ".printk_index", align 4
@adv7842_cec_adap_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.434, ptr @.str.3, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %s: len exceeded 16 (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adv7842_cec_adap_transmit\00", [38 x i8] zeroinitializer }, align 32
@adv7842_cec_adap_transmit._entry_ptr = internal global ptr @adv7842_cec_adap_transmit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 4106, i64 8200, i64 8201, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 8208, i64 8209, i64 8210, i64 8218, i64 8219, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227]
@__sancov_gen_cov_switch_values.435 = internal global [14 x i64] [i64 12, i64 56, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.436 = internal global [14 x i64] [i64 12, i64 56, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.437 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.438 = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16383]
@__sancov_gen_cov_switch_values.439 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.440 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.441 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.442 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.443 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.444 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.445 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.446 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.447 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.448 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.449 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 10488165, i64 10492160, i64 10492161, i64 10492162]
@__sancov_gen_cov_switch_values.450 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.451 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 36, i32 12 }
@___asan_gen_.454 = private unnamed_addr constant [15 x i8] c"adv7842_driver\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3620, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3622, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant [11 x i8] c"adv7842_id\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3612, i32 35 }
@___asan_gen_.463 = private unnamed_addr constant [11 x i8] c"cea640x480\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3448, i32 38 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3462, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3466, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [12 x i8] c"adv7842_ops\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3316, i32 37 }
@___asan_gen_.487 = private unnamed_addr constant [16 x i8] c"adv7842_int_ops\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3322, i32 46 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3492, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3497, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3507, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"adv7842_ctrl_ops\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3278, i32 35 }
@___asan_gen_.511 = private unnamed_addr constant [35 x i8] c"adv7842_ctrl_analog_sampling_phase\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3329, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant [35 x i8] c"adv7842_ctrl_free_run_color_manual\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3340, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant [28 x i8] c"adv7842_ctrl_free_run_color\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3350, i32 38 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3549, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3554, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c"adv7842_cec_adap_ops\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2351, i32 34 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3579, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [16 x i8] c"adv7842_formats\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 569, i32 41 }
@___asan_gen_.550 = private unnamed_addr constant [17 x i8] c"adv7842_core_ops\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3283, i32 42 }
@___asan_gen_.553 = private unnamed_addr constant [18 x i8] c"adv7842_video_ops\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3295, i32 43 }
@___asan_gen_.556 = private unnamed_addr constant [16 x i8] c"adv7842_pad_ops\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3306, i32 41 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2640, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2641, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2644, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2646, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [12 x i8] c"sdp_std_txt\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2649, i32 29 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2650, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2651, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2652, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2653, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2654, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2655, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2656, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2657, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2657, i32 10 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2657, i32 16 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2657, i32 22 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2657, i32 28 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2658, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2659, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2660, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2661, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2663, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2665, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2667, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2669, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2671, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 296, i32 5 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 300, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [17 x i8] c"csc_coeff_sel_rb\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2690, i32 28 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2691, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2691, i32 15 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2691, i32 34 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2691, i32 46 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2692, i32 15 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2692, i32 46 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2693, i32 15 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2693, i32 39 }
@___asan_gen_.739 = private unnamed_addr constant [22 x i8] c"input_color_space_txt\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2696, i32 28 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2697, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2697, i32 33 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2698, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2698, i32 28 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2699, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2699, i32 19 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2700, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2700, i32 27 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2701, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2702, i32 25 }
@___asan_gen_.772 = private unnamed_addr constant [27 x i8] c"rgb_quantization_range_txt\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2704, i32 28 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2705, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant [20 x i8] c"deep_color_mode_txt\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2709, i32 28 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2710, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2711, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2712, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2713, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2716, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2717, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2718, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2720, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2725, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2728, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2737, i32 5 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2742, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2744, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2746, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2748, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2751, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2753, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2755, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2758, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2760, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2764, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2766, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2776, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2784, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2786, i32 35 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2788, i32 34 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2794, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2795, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2797, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2799, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2804, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2810, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2811, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2813, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2819, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2824, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2827, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2830, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2833, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2835, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1528, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1539, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1606, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1610, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1622, i32 5 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1633, i32 4 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1641, i32 35 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1457, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1477, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1481, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1378, i32 3 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1391, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant [28 x i8] c"adv7842_timings_cap_digital\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 651, i32 41 }
@___asan_gen_.1150 = private unnamed_addr constant [27 x i8] c"adv7842_timings_cap_analog\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 640, i32 41 }
@___asan_gen_.1153 = private unnamed_addr constant [27 x i8] c"adv7842_timings_exceptions\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 144, i32 37 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1444, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 321, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant [4 x i8] c"cri\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2597, i32 49 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2598, i32 5 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2599, i32 5 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2600, i32 5 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2601, i32 5 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2605, i32 3 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2569, i32 3 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2579, i32 3 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2587, i32 3 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2591, i32 21 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3197, i32 3 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3158, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1932, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1720, i32 3 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1169, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1145, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1156, i32 3 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1116, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1127, i32 3 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 711, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 743, i32 3 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 764, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 824, i32 3 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1653, i32 2 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1659, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1687, i32 35 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 992, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1028, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant [23 x i8] c"adv7842_prim_mode_comp\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 166, i32 45 }
@___asan_gen_.1360 = private unnamed_addr constant [21 x i8] c"adv7842_prim_mode_gr\00", align 1
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 181, i32 45 }
@___asan_gen_.1363 = private unnamed_addr constant [28 x i8] c"adv7842_prim_mode_hdmi_comp\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 209, i32 45 }
@___asan_gen_.1366 = private unnamed_addr constant [26 x i8] c"adv7842_prim_mode_hdmi_gr\00", align 1
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 223, i32 45 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1056, i32 2 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1071, i32 4 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1094, i32 3 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 897, i32 3 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 841, i32 2 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 842, i32 2 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 843, i32 2 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 844, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 845, i32 2 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 846, i32 2 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 847, i32 2 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 848, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 849, i32 2 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 850, i32 2 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 851, i32 2 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 852, i32 2 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 947, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2390, i32 2 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2411, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2422, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2436, i32 3 }
@___asan_gen_.1504 = private unnamed_addr constant [15 x i8] c"adv7842_ev_fmt\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 242, i32 32 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2211, i32 2 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2163, i32 3 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2168, i32 3 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2179, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2196, i32 3 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1943, i32 2 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2975, i32 2 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2952, i32 2 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2856, i32 2 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2863, i32 3 }
@___asan_gen_.1574 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1574, i32 998, i32 6 }
@___asan_gen_.1576 = private unnamed_addr constant [10 x i8] c"op_ch_sel\00", align 1
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2035, i32 28 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2548, i32 3 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 282, i32 3 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 558, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1316, i32 3 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 1317, i32 3 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3332, i32 10 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3343, i32 10 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3353, i32 10 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 960, i32 2 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3416, i32 47 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3417, i32 44 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3418, i32 50 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3419, i32 47 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3420, i32 44 }
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3421, i32 44 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3422, i32 49 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3423, i32 45 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3424, i32 45 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3425, i32 43 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3426, i32 44 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3397, i32 3 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 3403, i32 3 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 692, i32 2 }
@___asan_gen_.1693 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1699 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1700 = private constant [31 x i8] c"../drivers/media/i2c/adv7842.c\00", align 1
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1700, i32 2336, i32 3 }
@llvm.compiler.used = appending global [554 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_adv7842_driver_exit, ptr @__initcall__kmod_adv7842__301_3629_adv7842_driver_init6, ptr @__param_debug, ptr @adv7842_cec_adap_transmit._entry, ptr @adv7842_cec_adap_transmit._entry_ptr, ptr @adv7842_cec_isr._entry, ptr @adv7842_cec_isr._entry_ptr, ptr @adv7842_cec_tx_raw_status._entry, ptr @adv7842_cec_tx_raw_status._entry.383, ptr @adv7842_cec_tx_raw_status._entry.386, ptr @adv7842_cec_tx_raw_status._entry.389, ptr @adv7842_cec_tx_raw_status._entry_ptr, ptr @adv7842_cec_tx_raw_status._entry_ptr.385, ptr @adv7842_cec_tx_raw_status._entry_ptr.388, ptr @adv7842_cec_tx_raw_status._entry_ptr.391, ptr @adv7842_command_ram_test._entry, ptr @adv7842_command_ram_test._entry_ptr, ptr @adv7842_cp_log_status._entry, ptr @adv7842_cp_log_status._entry.105, ptr @adv7842_cp_log_status._entry.108, ptr @adv7842_cp_log_status._entry.113, ptr @adv7842_cp_log_status._entry.116, ptr @adv7842_cp_log_status._entry.119, ptr @adv7842_cp_log_status._entry.122, ptr @adv7842_cp_log_status._entry.125, ptr @adv7842_cp_log_status._entry.128, ptr @adv7842_cp_log_status._entry.133, ptr @adv7842_cp_log_status._entry.136, ptr @adv7842_cp_log_status._entry.139, ptr @adv7842_cp_log_status._entry.142, ptr @adv7842_cp_log_status._entry.144, ptr @adv7842_cp_log_status._entry.146, ptr @adv7842_cp_log_status._entry.149, ptr @adv7842_cp_log_status._entry.152, ptr @adv7842_cp_log_status._entry.155, ptr @adv7842_cp_log_status._entry.158, ptr @adv7842_cp_log_status._entry.163, ptr @adv7842_cp_log_status._entry.168, ptr @adv7842_cp_log_status._entry.171, ptr @adv7842_cp_log_status._entry.174, ptr @adv7842_cp_log_status._entry.177, ptr @adv7842_cp_log_status._entry.184, ptr @adv7842_cp_log_status._entry.187, ptr @adv7842_cp_log_status._entry.192, ptr @adv7842_cp_log_status._entry.195, ptr @adv7842_cp_log_status._entry.202, ptr @adv7842_cp_log_status._entry.210, ptr @adv7842_cp_log_status._entry.215, ptr @adv7842_cp_log_status._entry.218, ptr @adv7842_cp_log_status._entry.221, ptr @adv7842_cp_log_status._entry.224, ptr @adv7842_cp_log_status._entry_ptr, ptr @adv7842_cp_log_status._entry_ptr.107, ptr @adv7842_cp_log_status._entry_ptr.110, ptr @adv7842_cp_log_status._entry_ptr.115, ptr @adv7842_cp_log_status._entry_ptr.118, ptr @adv7842_cp_log_status._entry_ptr.121, ptr @adv7842_cp_log_status._entry_ptr.124, ptr @adv7842_cp_log_status._entry_ptr.127, ptr @adv7842_cp_log_status._entry_ptr.130, ptr @adv7842_cp_log_status._entry_ptr.135, ptr @adv7842_cp_log_status._entry_ptr.138, ptr @adv7842_cp_log_status._entry_ptr.141, ptr @adv7842_cp_log_status._entry_ptr.143, ptr @adv7842_cp_log_status._entry_ptr.145, ptr @adv7842_cp_log_status._entry_ptr.148, ptr @adv7842_cp_log_status._entry_ptr.151, ptr @adv7842_cp_log_status._entry_ptr.154, ptr @adv7842_cp_log_status._entry_ptr.157, ptr @adv7842_cp_log_status._entry_ptr.160, ptr @adv7842_cp_log_status._entry_ptr.165, ptr @adv7842_cp_log_status._entry_ptr.170, ptr @adv7842_cp_log_status._entry_ptr.173, ptr @adv7842_cp_log_status._entry_ptr.176, ptr @adv7842_cp_log_status._entry_ptr.179, ptr @adv7842_cp_log_status._entry_ptr.186, ptr @adv7842_cp_log_status._entry_ptr.189, ptr @adv7842_cp_log_status._entry_ptr.194, ptr @adv7842_cp_log_status._entry_ptr.197, ptr @adv7842_cp_log_status._entry_ptr.204, ptr @adv7842_cp_log_status._entry_ptr.212, ptr @adv7842_cp_log_status._entry_ptr.217, ptr @adv7842_cp_log_status._entry_ptr.220, ptr @adv7842_cp_log_status._entry_ptr.223, ptr @adv7842_cp_log_status._entry_ptr.226, ptr @adv7842_ddr_ram_test._entry, ptr @adv7842_ddr_ram_test._entry_ptr, ptr @adv7842_delayed_work_enable_hotplug._entry, ptr @adv7842_delayed_work_enable_hotplug._entry_ptr, ptr @adv7842_driver_exit, ptr @adv7842_dummy_client._entry, ptr @adv7842_dummy_client._entry.428, ptr @adv7842_dummy_client._entry_ptr, ptr @adv7842_dummy_client._entry_ptr.430, ptr @adv7842_g_input_status._entry, ptr @adv7842_g_input_status._entry.255, ptr @adv7842_g_input_status._entry_ptr, ptr @adv7842_g_input_status._entry_ptr.257, ptr @adv7842_g_register._entry, ptr @adv7842_g_register._entry_ptr, ptr @adv7842_g_std._entry, ptr @adv7842_g_std._entry_ptr, ptr @adv7842_inv_register._entry, ptr @adv7842_inv_register._entry.332, ptr @adv7842_inv_register._entry.335, ptr @adv7842_inv_register._entry.338, ptr @adv7842_inv_register._entry.341, ptr @adv7842_inv_register._entry.344, ptr @adv7842_inv_register._entry.347, ptr @adv7842_inv_register._entry.350, ptr @adv7842_inv_register._entry.353, ptr @adv7842_inv_register._entry.356, ptr @adv7842_inv_register._entry.359, ptr @adv7842_inv_register._entry.362, ptr @adv7842_inv_register._entry_ptr, ptr @adv7842_inv_register._entry_ptr.334, ptr @adv7842_inv_register._entry_ptr.337, ptr @adv7842_inv_register._entry_ptr.340, ptr @adv7842_inv_register._entry_ptr.343, ptr @adv7842_inv_register._entry_ptr.346, ptr @adv7842_inv_register._entry_ptr.349, ptr @adv7842_inv_register._entry_ptr.352, ptr @adv7842_inv_register._entry_ptr.355, ptr @adv7842_inv_register._entry_ptr.358, ptr @adv7842_inv_register._entry_ptr.361, ptr @adv7842_inv_register._entry_ptr.364, ptr @adv7842_isr._entry, ptr @adv7842_isr._entry.368, ptr @adv7842_isr._entry.371, ptr @adv7842_isr._entry.375, ptr @adv7842_isr._entry_ptr, ptr @adv7842_isr._entry_ptr.370, ptr @adv7842_isr._entry_ptr.373, ptr @adv7842_isr._entry_ptr.377, ptr @adv7842_log_infoframes._entry, ptr @adv7842_log_infoframes._entry_ptr, ptr @adv7842_probe._entry, ptr @adv7842_probe._entry.10, ptr @adv7842_probe._entry.14, ptr @adv7842_probe._entry.20, ptr @adv7842_probe._entry.4, ptr @adv7842_probe._entry.7, ptr @adv7842_probe._entry_ptr, ptr @adv7842_probe._entry_ptr.12, ptr @adv7842_probe._entry_ptr.16, ptr @adv7842_probe._entry_ptr.22, ptr @adv7842_probe._entry_ptr.6, ptr @adv7842_probe._entry_ptr.9, ptr @adv7842_query_dv_timings._entry, ptr @adv7842_query_dv_timings._entry.229, ptr @adv7842_query_dv_timings._entry.232, ptr @adv7842_query_dv_timings._entry.235, ptr @adv7842_query_dv_timings._entry.238, ptr @adv7842_query_dv_timings._entry.241, ptr @adv7842_query_dv_timings._entry_ptr, ptr @adv7842_query_dv_timings._entry_ptr.231, ptr @adv7842_query_dv_timings._entry_ptr.234, ptr @adv7842_query_dv_timings._entry_ptr.237, ptr @adv7842_query_dv_timings._entry_ptr.240, ptr @adv7842_query_dv_timings._entry_ptr.243, ptr @adv7842_querystd._entry, ptr @adv7842_querystd._entry.397, ptr @adv7842_querystd._entry_ptr, ptr @adv7842_querystd._entry_ptr.398, ptr @adv7842_s_ctrl._entry, ptr @adv7842_s_ctrl._entry.407, ptr @adv7842_s_ctrl._entry_ptr, ptr @adv7842_s_ctrl._entry_ptr.409, ptr @adv7842_s_detect_tx_5v_ctrl._entry, ptr @adv7842_s_detect_tx_5v_ctrl._entry_ptr, ptr @adv7842_s_dv_timings._entry, ptr @adv7842_s_dv_timings._entry.310, ptr @adv7842_s_dv_timings._entry_ptr, ptr @adv7842_s_dv_timings._entry_ptr.312, ptr @adv7842_s_register._entry, ptr @adv7842_s_register._entry_ptr, ptr @adv7842_s_routing._entry, ptr @adv7842_s_routing._entry_ptr, ptr @adv7842_s_std._entry, ptr @adv7842_s_std._entry_ptr, ptr @adv7842_sdp_log_status._entry, ptr @adv7842_sdp_log_status._entry.27, ptr @adv7842_sdp_log_status._entry.30, ptr @adv7842_sdp_log_status._entry.33, ptr @adv7842_sdp_log_status._entry.54, ptr @adv7842_sdp_log_status._entry.57, ptr @adv7842_sdp_log_status._entry.61, ptr @adv7842_sdp_log_status._entry.65, ptr @adv7842_sdp_log_status._entry.70, ptr @adv7842_sdp_log_status._entry_ptr, ptr @adv7842_sdp_log_status._entry_ptr.29, ptr @adv7842_sdp_log_status._entry_ptr.32, ptr @adv7842_sdp_log_status._entry_ptr.35, ptr @adv7842_sdp_log_status._entry_ptr.56, ptr @adv7842_sdp_log_status._entry_ptr.58, ptr @adv7842_sdp_log_status._entry_ptr.62, ptr @adv7842_sdp_log_status._entry_ptr.67, ptr @adv7842_sdp_log_status._entry_ptr.72, ptr @adv7842_set_edid._entry, ptr @adv7842_set_edid._entry_ptr, ptr @adv7842_set_gain._entry, ptr @adv7842_set_gain._entry.291, ptr @adv7842_set_gain._entry_ptr, ptr @adv7842_set_gain._entry_ptr.293, ptr @adv7842_set_offset._entry, ptr @adv7842_set_offset._entry.296, ptr @adv7842_set_offset._entry_ptr, ptr @adv7842_set_offset._entry_ptr.298, ptr @adv_smbus_read_byte_data._entry, ptr @adv_smbus_read_byte_data._entry.77, ptr @adv_smbus_read_byte_data._entry_ptr, ptr @adv_smbus_read_byte_data._entry_ptr.79, ptr @adv_smbus_read_byte_data_check._entry, ptr @adv_smbus_read_byte_data_check._entry_ptr, ptr @adv_smbus_write_byte_data._entry, ptr @adv_smbus_write_byte_data._entry_ptr, ptr @configure_custom_video_timings._entry, ptr @configure_custom_video_timings._entry.323, ptr @configure_custom_video_timings._entry.326, ptr @configure_custom_video_timings._entry_ptr, ptr @configure_custom_video_timings._entry_ptr.325, ptr @configure_custom_video_timings._entry_ptr.327, ptr @configure_predefined_video_timings._entry, ptr @configure_predefined_video_timings._entry.316, ptr @configure_predefined_video_timings._entry_ptr, ptr @configure_predefined_video_timings._entry_ptr.317, ptr @edid_write_hdmi_segment._entry, ptr @edid_write_hdmi_segment._entry.306, ptr @edid_write_hdmi_segment._entry_ptr, ptr @edid_write_hdmi_segment._entry_ptr.308, ptr @edid_write_vga_segment._entry, ptr @edid_write_vga_segment._entry.301, ptr @edid_write_vga_segment._entry_ptr, ptr @edid_write_vga_segment._entry_ptr.303, ptr @enable_input._entry, ptr @enable_input._entry_ptr, ptr @log_infoframe._entry, ptr @log_infoframe._entry.271, ptr @log_infoframe._entry.274, ptr @log_infoframe._entry_ptr, ptr @log_infoframe._entry_ptr.273, ptr @log_infoframe._entry_ptr.276, ptr @main_reset._entry, ptr @main_reset._entry_ptr, ptr @read_stdi._entry, ptr @read_stdi._entry.247, ptr @read_stdi._entry.250, ptr @read_stdi._entry_ptr, ptr @read_stdi._entry_ptr.249, ptr @read_stdi._entry_ptr.252, ptr @select_input._entry, ptr @select_input._entry_ptr, ptr @set_rgb_quantization_range._entry, ptr @set_rgb_quantization_range._entry_ptr, ptr @stdi2dv_timings._entry, ptr @stdi2dv_timings._entry_ptr, ptr @debug, ptr @adv7842_driver, ptr @.str, ptr @adv7842_id, ptr @adv7842_probe.cea640x480, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @adv7842_ops, ptr @adv7842_int_ops, ptr @.str.8, ptr @.str.11, ptr @adv7842_probe._key, ptr @.str.13, ptr @adv7842_ctrl_ops, ptr @adv7842_ctrl_analog_sampling_phase, ptr @adv7842_ctrl_free_run_color_manual, ptr @adv7842_ctrl_free_run_color, ptr @.str.15, ptr @adv7842_probe.__key, ptr @.str.17, ptr @adv7842_probe.__key.18, ptr @.str.19, ptr @adv7842_cec_adap_ops, ptr @.str.21, ptr @adv7842_formats, ptr @adv7842_core_ops, ptr @adv7842_video_ops, ptr @adv7842_pad_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @adv7842_sdp_log_status.sdp_std_txt, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @adv7842_cp_log_status.csc_coeff_sel_rb, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @adv7842_cp_log_status.input_color_space_txt, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @adv7842_cp_log_status.rgb_quantization_range_txt, ptr @.str.98, ptr @adv7842_cp_log_status.deep_color_mode_txt, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.251, ptr @.str.253, ptr @.str.254, ptr @.str.256, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog, ptr @adv7842_timings_exceptions, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @adv7842_log_infoframes.cri, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.275, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.292, ptr @.str.294, ptr @.str.295, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.302, ptr @.str.304, ptr @.str.305, ptr @.str.307, ptr @.str.309, ptr @.str.311, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @adv7842_prim_mode_comp, ptr @adv7842_prim_mode_gr, ptr @adv7842_prim_mode_hdmi_comp, ptr @adv7842_prim_mode_hdmi_gr, ptr @.str.322, ptr @.str.324, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.333, ptr @.str.336, ptr @.str.339, ptr @.str.342, ptr @.str.345, ptr @.str.348, ptr @.str.351, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.369, ptr @.str.372, ptr @.str.374, ptr @.str.376, ptr @adv7842_ev_fmt, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.399, ptr @adv7842_op_ch_sel.op_ch_sel, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.408, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.429, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434], section "llvm.metadata"
@0 = internal global [417 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe.cea640x480 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ctrl_analog_sampling_phase to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ctrl_free_run_color_manual to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ctrl_free_run_color to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_formats to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status.sdp_std_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_sdp_log_status._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status.csc_coeff_sel_rb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status.input_color_space_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status.rgb_quantization_range_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status.deep_color_mode_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cp_log_status._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_query_dv_timings._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_stdi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_stdi._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_stdi._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_g_input_status._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_timings_cap_digital to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_timings_cap_analog to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_timings_exceptions to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdi2dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_write_byte_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_log_infoframes.cri to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_log_infoframes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_infoframe._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_command_ram_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ddr_ram_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rgb_quantization_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_set_gain._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_set_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_set_offset._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_write_vga_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_write_vga_segment._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_write_hdmi_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_write_hdmi_segment._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_dv_timings._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_predefined_video_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_predefined_video_timings._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_prim_mode_comp to i32), i32 1206, i32 1504, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_prim_mode_gr to i32), i32 3082, i32 3872, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_prim_mode_hdmi_comp to i32), i32 1340, i32 1664, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_prim_mode_hdmi_gr to i32), i32 2144, i32 2656, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_custom_video_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_custom_video_timings._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_custom_video_timings._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_g_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_inv_register._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_isr._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_isr._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_isr._entry.375 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_ev_fmt to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_tx_raw_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_tx_raw_status._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_tx_raw_status._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_tx_raw_status._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_querystd._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_op_ch_sel.op_ch_sel to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_set_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_smbus_read_byte_data_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_ctrl._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_s_detect_tx_5v_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_dummy_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_dummy_client._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_delayed_work_enable_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7842_cec_adap_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7842_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7842_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7842_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data.i.i = alloca %union.i2c_smbus_data, align 2
  %data.i298 = alloca %union.i2c_smbus_data, align 2
  %data.i288 = alloca %union.i2c_smbus_data, align 2
  %data.i278 = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
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
  br i1 %cmp.i.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %16, i32 noundef %conv, i32 noundef %shl) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.end16, label %if.end26

do.end16:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %driver19 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %driver19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver19, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %nr.i275 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i275 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i275, align 4
  %addr23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %27 = ptrtoint ptr %addr23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr23, align 2
  %conv24 = zext i16 %28 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %22, i32 noundef %26, i32 noundef %conv24) #14
  br label %cleanup

if.end26:                                         ; preds = %do.end11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1648, i32 noundef 3520) #11
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %29 = call ptr @memcpy(ptr %call.i, ptr %1, i32 132)
  %timings = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 5
  %30 = call ptr @memcpy(ptr %timings, ptr @adv7842_probe.cea640x480, i32 132)
  %format = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 1), ptr %format, align 4
  %sd34 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd34, ptr noundef %client, ptr noundef nonnull @adv7842_ops) #11
  %flags = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or = or i32 %33, 12
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 7
  %34 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @adv7842_int_ops, ptr %internal_ops, align 4
  %mode = getelementptr inbounds %struct.adv7842_platform_data, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode, align 4
  %mode35 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %mode35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %mode35, align 8
  %input = getelementptr inbounds %struct.adv7842_platform_data, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp36 = icmp eq i32 %39, 0
  %hdmi_port_a = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 16
  %frombool = zext i1 %cmp36 to i8
  %40 = ptrtoint ptr %hdmi_port_a to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %hdmi_port_a, align 1
  %restart_stdi_once = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 15
  %41 = ptrtoint ptr %restart_stdi_once to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %restart_stdi_once, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #11
  %42 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i, align 2
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %client, align 8
  %call.i276 = call i32 @i2c_smbus_xfer(ptr noundef %44, i16 noundef zeroext %46, i16 noundef zeroext %48, i8 noundef zeroext 1, i8 noundef zeroext -22, i32 noundef 2, ptr noundef nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end31.adv_smbus_read_byte_data_check.exit_crit_edge

if.end31.adv_smbus_read_byte_data_check.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv_smbus_read_byte_data_check.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data.i, align 2
  %conv.i277 = zext i8 %50 to i32
  br label %adv_smbus_read_byte_data_check.exit

adv_smbus_read_byte_data_check.exit:              ; preds = %if.then.i, %if.end31.adv_smbus_read_byte_data_check.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i277, %if.then.i ], [ -5, %if.end31.adv_smbus_read_byte_data_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #11
  %shl39 = shl nsw i32 %retval.0.i, 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i278) #11
  %51 = call ptr @memset(ptr %data.i278, i32 255, i32 34)
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr.i, align 2
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %client, align 8
  %call.i281 = call i32 @i2c_smbus_xfer(ptr noundef %53, i16 noundef zeroext %55, i16 noundef zeroext %57, i8 noundef zeroext 1, i8 noundef zeroext -21, i32 noundef 2, ptr noundef nonnull %data.i278) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  br i1 %tobool.not.i282, label %if.then.i284, label %adv_smbus_read_byte_data_check.exit.adv_smbus_read_byte_data_check.exit287_crit_edge

adv_smbus_read_byte_data_check.exit.adv_smbus_read_byte_data_check.exit287_crit_edge: ; preds = %adv_smbus_read_byte_data_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv_smbus_read_byte_data_check.exit287

if.then.i284:                                     ; preds = %adv_smbus_read_byte_data_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %data.i278 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data.i278, align 2
  %conv.i283 = zext i8 %59 to i32
  br label %adv_smbus_read_byte_data_check.exit287

adv_smbus_read_byte_data_check.exit287:           ; preds = %if.then.i284, %adv_smbus_read_byte_data_check.exit.adv_smbus_read_byte_data_check.exit287_crit_edge
  %retval.0.i286 = phi i32 [ %conv.i283, %if.then.i284 ], [ -5, %adv_smbus_read_byte_data_check.exit.adv_smbus_read_byte_data_check.exit287_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i278) #11
  %or41 = or i32 %retval.0.i286, %shl39
  %conv43 = and i32 %or41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8210, i32 %conv43)
  %cmp44.not = icmp eq i32 %conv43, 8210
  br i1 %cmp44.not, label %adv_smbus_read_byte_data_check.exit287.if.end59_crit_edge, label %do.end49

adv_smbus_read_byte_data_check.exit287.if.end59_crit_edge: ; preds = %adv_smbus_read_byte_data_check.exit287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end49:                                         ; preds = %adv_smbus_read_byte_data_check.exit287
  %name51 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 9
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name51, i32 noundef %conv43) #14
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i288) #11
  %60 = call ptr @memset(ptr %data.i288, i32 255, i32 34)
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr.i, align 2
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %client, align 8
  %call.i291 = call i32 @i2c_smbus_xfer(ptr noundef %62, i16 noundef zeroext %64, i16 noundef zeroext %66, i8 noundef zeroext 1, i8 noundef zeroext -22, i32 noundef 2, ptr noundef nonnull %data.i288) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool.not.i292 = icmp eq i32 %call.i291, 0
  br i1 %tobool.not.i292, label %if.then.i294, label %do.end49.adv_smbus_read_byte_data_check.exit297_crit_edge

do.end49.adv_smbus_read_byte_data_check.exit297_crit_edge: ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv_smbus_read_byte_data_check.exit297

if.then.i294:                                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %data.i288 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i288, align 2
  %conv.i293 = zext i8 %68 to i32
  br label %adv_smbus_read_byte_data_check.exit297

adv_smbus_read_byte_data_check.exit297:           ; preds = %if.then.i294, %do.end49.adv_smbus_read_byte_data_check.exit297_crit_edge
  %retval.0.i296 = phi i32 [ %conv.i293, %if.then.i294 ], [ -5, %do.end49.adv_smbus_read_byte_data_check.exit297_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i288) #11
  %shl55 = shl nsw i32 %retval.0.i296, 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i298) #11
  %69 = call ptr @memset(ptr %data.i298, i32 255, i32 34)
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 8
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr.i, align 2
  %74 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %client, align 8
  %call.i301 = call i32 @i2c_smbus_xfer(ptr noundef %71, i16 noundef zeroext %73, i16 noundef zeroext %75, i8 noundef zeroext 1, i8 noundef zeroext -21, i32 noundef 2, ptr noundef nonnull %data.i298) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool.not.i302 = icmp eq i32 %call.i301, 0
  br i1 %tobool.not.i302, label %if.then.i304, label %adv_smbus_read_byte_data_check.exit297.adv_smbus_read_byte_data_check.exit307_crit_edge

adv_smbus_read_byte_data_check.exit297.adv_smbus_read_byte_data_check.exit307_crit_edge: ; preds = %adv_smbus_read_byte_data_check.exit297
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv_smbus_read_byte_data_check.exit307

if.then.i304:                                     ; preds = %adv_smbus_read_byte_data_check.exit297
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %data.i298 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data.i298, align 2
  %conv.i303 = zext i8 %77 to i32
  br label %adv_smbus_read_byte_data_check.exit307

adv_smbus_read_byte_data_check.exit307:           ; preds = %if.then.i304, %adv_smbus_read_byte_data_check.exit297.adv_smbus_read_byte_data_check.exit307_crit_edge
  %retval.0.i306 = phi i32 [ %conv.i303, %if.then.i304 ], [ -5, %adv_smbus_read_byte_data_check.exit297.adv_smbus_read_byte_data_check.exit307_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i298) #11
  %or57 = or i32 %retval.0.i306, %shl55
  br label %if.end59

if.end59:                                         ; preds = %adv_smbus_read_byte_data_check.exit307, %adv_smbus_read_byte_data_check.exit287.if.end59_crit_edge
  %rev.0.in = phi i32 [ %or57, %adv_smbus_read_byte_data_check.exit307 ], [ %or41, %adv_smbus_read_byte_data_check.exit287.if.end59_crit_edge ]
  %conv60 = and i32 %rev.0.in, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8210, i32 %conv60)
  %cmp61.not = icmp eq i32 %conv60, 8210
  br i1 %cmp61.not, label %if.end75, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %name68 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 9
  %78 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %addr.i, align 2
  %conv71 = zext i16 %79 to i32
  %shl72 = shl nuw nsw i32 %conv71, 1
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name68, i32 noundef %shl72, i32 noundef %conv60) #14
  br label %cleanup

if.end75:                                         ; preds = %if.end59
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool76.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool76.not, label %if.end75.if.end78_crit_edge, label %if.then77

if.end75.if.end78_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %if.end75
  %dev_priv.i.i = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 11
  %81 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_priv.i.i, align 4
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i308 = icmp sgt i32 %83, 0
  br i1 %cmp.i308, label %do.end.i, label %if.then77.main_reset.exit_crit_edge

if.then77.main_reset.exit_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %main_reset.exit

do.end.i:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 9
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name.i, ptr noundef nonnull @.str.404) #14
  br label %main_reset.exit

main_reset.exit:                                  ; preds = %do.end.i, %if.then77.main_reset.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i) #11
  %84 = call ptr @memset(ptr %data.i.i, i32 255, i32 34)
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -128, ptr %data.i.i, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 3
  %86 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 1
  %88 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i.i, align 2
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %82, align 8
  %call.i.i309 = call i32 @i2c_smbus_xfer(ptr noundef %87, i16 noundef zeroext %89, i16 noundef zeroext %91, i8 noundef zeroext 0, i8 noundef zeroext -1, i32 noundef 2, ptr noundef nonnull %data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #11
  br label %if.end78

if.end78:                                         ; preds = %main_reset.exit, %if.end75.if.end78_crit_edge
  %hdl79 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 3
  %call81 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl79, i32 noundef 6, ptr noundef nonnull @adv7842_probe._key, ptr noundef nonnull @.str.13) #11
  %call82 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #11
  %call83 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call84 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call85 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 128, i64 noundef 1, i64 noundef 0) #11
  %call86 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 10488166, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #11
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end78.if.end91_crit_edge, label %if.then88

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %flags89 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call86, i32 0, i32 20
  %97 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags89, align 4
  %or90 = or i32 %98, 128
  store i32 %or90, ptr %flags89, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end78.if.end91_crit_edge
  %call92 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl79, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef 3, i64 noundef 0, i64 noundef 0) #11
  %detect_tx_5v_ctrl = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 28
  %99 = ptrtoint ptr %detect_tx_5v_ctrl to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call92, ptr %detect_tx_5v_ctrl, align 4
  %call93 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_analog_sampling_phase, ptr noundef null) #11
  %analog_sampling_phase_ctrl = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 29
  %100 = ptrtoint ptr %analog_sampling_phase_ctrl to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call93, ptr %analog_sampling_phase_ctrl, align 8
  %call94 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_free_run_color_manual, ptr noundef null) #11
  %free_run_color_ctrl_manual = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 30
  %101 = ptrtoint ptr %free_run_color_ctrl_manual to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call94, ptr %free_run_color_ctrl_manual, align 4
  %call95 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_free_run_color, ptr noundef null) #11
  %free_run_color_ctrl = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 31
  %102 = ptrtoint ptr %free_run_color_ctrl to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call95, ptr %free_run_color_ctrl, align 8
  %call96 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl79, ptr noundef nonnull @adv7842_ctrl_ops, i32 noundef 10488165, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #11
  %rgb_quantization_range_ctrl = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 32
  %103 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call96, ptr %rgb_quantization_range_ctrl, align 4
  %ctrl_handler = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 8
  %104 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %hdl79, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 3, i32 9
  %105 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool97.not = icmp eq i32 %106, 0
  br i1 %tobool97.not, label %if.end100, label %if.end91.err_hdl_crit_edge

if.end91.err_hdl_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hdl

if.end100:                                        ; preds = %if.end91
  %call101 = call fastcc i32 @adv7842_s_detect_tx_5v_ctrl(ptr noundef %sd34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end100.err_hdl_crit_edge

if.end100.err_hdl_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hdl

if.end104:                                        ; preds = %if.end100
  %i2c_avlink.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 27
  %107 = ptrtoint ptr %i2c_avlink.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %i2c_avlink.i, align 4
  %call2.i310 = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.415, i8 noundef zeroext %108, i8 noundef zeroext -13) #11
  %i2c_avlink3.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 27
  %109 = ptrtoint ptr %i2c_avlink3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call2.i310, ptr %i2c_avlink3.i, align 8
  %i2c_cec.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 26
  %110 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %i2c_cec.i, align 1
  %call4.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.416, i8 noundef zeroext %111, i8 noundef zeroext -12) #11
  %i2c_cec5.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 26
  %112 = ptrtoint ptr %i2c_cec5.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call4.i, ptr %i2c_cec5.i, align 4
  %i2c_infoframe.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 25
  %113 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %i2c_infoframe.i, align 2
  %call6.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.417, i8 noundef zeroext %114, i8 noundef zeroext -11) #11
  %i2c_infoframe7.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 25
  %115 = ptrtoint ptr %i2c_infoframe7.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call6.i, ptr %i2c_infoframe7.i, align 8
  %i2c_sdp_io.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 17
  %116 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %i2c_sdp_io.i, align 2
  %call8.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.418, i8 noundef zeroext %117, i8 noundef zeroext -14) #11
  %i2c_sdp_io9.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 17
  %118 = ptrtoint ptr %i2c_sdp_io9.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call8.i, ptr %i2c_sdp_io9.i, align 8
  %i2c_sdp.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 18
  %119 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %i2c_sdp.i, align 1
  %call10.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.419, i8 noundef zeroext %120, i8 noundef zeroext -15) #11
  %i2c_sdp11.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 18
  %121 = ptrtoint ptr %i2c_sdp11.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call10.i, ptr %i2c_sdp11.i, align 4
  %i2c_afe.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 21
  %122 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %i2c_afe.i, align 2
  %call12.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.420, i8 noundef zeroext %123, i8 noundef zeroext -8) #11
  %i2c_afe13.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 21
  %124 = ptrtoint ptr %i2c_afe13.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call12.i, ptr %i2c_afe13.i, align 8
  %i2c_repeater.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 23
  %125 = ptrtoint ptr %i2c_repeater.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %i2c_repeater.i, align 4
  %call14.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.421, i8 noundef zeroext %126, i8 noundef zeroext -7) #11
  %i2c_repeater15.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 23
  %127 = ptrtoint ptr %i2c_repeater15.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call14.i, ptr %i2c_repeater15.i, align 8
  %i2c_edid.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 24
  %128 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %i2c_edid.i, align 1
  %call16.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.422, i8 noundef zeroext %129, i8 noundef zeroext -6) #11
  %i2c_edid17.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 24
  %130 = ptrtoint ptr %i2c_edid17.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call16.i, ptr %i2c_edid17.i, align 4
  %i2c_hdmi.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 22
  %131 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %i2c_hdmi.i, align 1
  %call18.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.423, i8 noundef zeroext %132, i8 noundef zeroext -5) #11
  %i2c_hdmi19.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 22
  %133 = ptrtoint ptr %i2c_hdmi19.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call18.i, ptr %i2c_hdmi19.i, align 4
  %i2c_cp.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 19
  %134 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i2c_cp.i, align 4
  %call20.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.424, i8 noundef zeroext %135, i8 noundef zeroext -3) #11
  %i2c_cp21.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 19
  %136 = ptrtoint ptr %i2c_cp21.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call20.i, ptr %i2c_cp21.i, align 8
  %i2c_vdp.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 0, i32 20
  %137 = ptrtoint ptr %i2c_vdp.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %i2c_vdp.i, align 1
  %call22.i = call fastcc ptr @adv7842_dummy_client(ptr noundef %sd34, ptr noundef nonnull @.str.425, i8 noundef zeroext %138, i8 noundef zeroext -2) #11
  %i2c_vdp23.i = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 20
  %139 = ptrtoint ptr %i2c_vdp23.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call22.i, ptr %i2c_vdp23.i, align 4
  %140 = ptrtoint ptr %i2c_avlink3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i2c_avlink3.i, align 8
  %tobool.not.i311 = icmp eq ptr %141, null
  br i1 %tobool.not.i311, label %if.end104.if.then108_crit_edge, label %lor.lhs.false.i

if.end104.if.then108_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false.i:                                  ; preds = %if.end104
  %142 = ptrtoint ptr %i2c_cec5.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i2c_cec5.i, align 4
  %tobool26.not.i = icmp eq ptr %143, null
  br i1 %tobool26.not.i, label %lor.lhs.false.i.if.then108_crit_edge, label %lor.lhs.false27.i

lor.lhs.false.i.if.then108_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %144 = ptrtoint ptr %i2c_infoframe7.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i2c_infoframe7.i, align 8
  %tobool29.not.i = icmp eq ptr %145, null
  br i1 %tobool29.not.i, label %lor.lhs.false27.i.if.then108_crit_edge, label %lor.lhs.false30.i

lor.lhs.false27.i.if.then108_crit_edge:           ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false30.i:                                ; preds = %lor.lhs.false27.i
  %146 = ptrtoint ptr %i2c_sdp_io9.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i2c_sdp_io9.i, align 8
  %tobool32.not.i = icmp eq ptr %147, null
  br i1 %tobool32.not.i, label %lor.lhs.false30.i.if.then108_crit_edge, label %lor.lhs.false33.i

lor.lhs.false30.i.if.then108_crit_edge:           ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false33.i:                                ; preds = %lor.lhs.false30.i
  %148 = ptrtoint ptr %i2c_sdp11.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c_sdp11.i, align 4
  %tobool35.not.i = icmp eq ptr %149, null
  br i1 %tobool35.not.i, label %lor.lhs.false33.i.if.then108_crit_edge, label %lor.lhs.false36.i

lor.lhs.false33.i.if.then108_crit_edge:           ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false36.i:                                ; preds = %lor.lhs.false33.i
  %150 = ptrtoint ptr %i2c_afe13.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2c_afe13.i, align 8
  %tobool38.not.i = icmp eq ptr %151, null
  br i1 %tobool38.not.i, label %lor.lhs.false36.i.if.then108_crit_edge, label %lor.lhs.false39.i

lor.lhs.false36.i.if.then108_crit_edge:           ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false39.i:                                ; preds = %lor.lhs.false36.i
  %152 = ptrtoint ptr %i2c_repeater15.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i2c_repeater15.i, align 8
  %tobool41.not.i = icmp eq ptr %153, null
  br i1 %tobool41.not.i, label %lor.lhs.false39.i.if.then108_crit_edge, label %lor.lhs.false42.i

lor.lhs.false39.i.if.then108_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false42.i:                                ; preds = %lor.lhs.false39.i
  %154 = ptrtoint ptr %i2c_edid17.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i2c_edid17.i, align 4
  %tobool44.not.i = icmp eq ptr %155, null
  br i1 %tobool44.not.i, label %lor.lhs.false42.i.if.then108_crit_edge, label %lor.lhs.false45.i

lor.lhs.false42.i.if.then108_crit_edge:           ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

lor.lhs.false45.i:                                ; preds = %lor.lhs.false42.i
  %156 = ptrtoint ptr %i2c_hdmi19.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i2c_hdmi19.i, align 4
  %tobool47.not.i = icmp eq ptr %157, null
  br i1 %tobool47.not.i, label %lor.lhs.false45.i.if.then108_crit_edge, label %adv7842_register_clients.exit

lor.lhs.false45.i.if.then108_crit_edge:           ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

adv7842_register_clients.exit:                    ; preds = %lor.lhs.false45.i
  %158 = ptrtoint ptr %i2c_cp21.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i2c_cp21.i, align 8
  %tobool50.not.i = icmp eq ptr %159, null
  %tobool53.not.i = icmp eq ptr %call22.i, null
  %or.cond.i = select i1 %tobool50.not.i, i1 true, i1 %tobool53.not.i
  br i1 %or.cond.i, label %adv7842_register_clients.exit.if.then108_crit_edge, label %do.body118

adv7842_register_clients.exit.if.then108_crit_edge: ; preds = %adv7842_register_clients.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.then108:                                       ; preds = %adv7842_register_clients.exit.if.then108_crit_edge, %lor.lhs.false45.i.if.then108_crit_edge, %lor.lhs.false42.i.if.then108_crit_edge, %lor.lhs.false39.i.if.then108_crit_edge, %lor.lhs.false36.i.if.then108_crit_edge, %lor.lhs.false33.i.if.then108_crit_edge, %lor.lhs.false30.i.if.then108_crit_edge, %lor.lhs.false27.i.if.then108_crit_edge, %lor.lhs.false.i.if.then108_crit_edge, %if.end104.if.then108_crit_edge
  %name113 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 9
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name113) #14
  br label %err_i2c

do.body118:                                       ; preds = %adv7842_register_clients.exit
  %delayed_work_enable_hotplug = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14
  call void @__init_work(ptr noundef %delayed_work_enable_hotplug, i32 noundef 0) #11
  %160 = ptrtoint ptr %delayed_work_enable_hotplug to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -64, ptr %delayed_work_enable_hotplug, align 8
  %lockdep_map = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @adv7842_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry125 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %161 = ptrtoint ptr %entry125 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %entry125, ptr %entry125, align 4
  %prev.i = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14, i32 0, i32 1, i32 1
  %162 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %entry125, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14, i32 0, i32 2
  %163 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @adv7842_delayed_work_enable_hotplug, ptr %func, align 4
  %timer = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 14, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @adv7842_probe.__key.18) #11
  %function = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %164 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 24577, ptr %function, align 4
  %flags138 = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %165 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %flags138, align 4
  %flags138.1 = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %166 = ptrtoint ptr %flags138.1 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %flags138.1, align 4
  %flags138.2 = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 2, i32 2, i32 4
  %167 = ptrtoint ptr %flags138.2 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %flags138.2, align 4
  %pads139 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 2
  %flags141 = getelementptr %struct.adv7842_state, ptr %call.i, i32 0, i32 2, i32 3, i32 4
  %168 = ptrtoint ptr %flags141 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 2, ptr %flags141, align 4
  %call145 = call i32 @media_entity_pads_init(ptr noundef %sd34, i16 noundef zeroext 4, ptr noundef %pads139) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %do.body118.err_work_queues_crit_edge

do.body118.err_work_queues_crit_edge:             ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_work_queues

if.end148:                                        ; preds = %do.body118
  %call149 = call fastcc i32 @adv7842_core_init(ptr noundef %sd34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end148.err_work_queues_crit_edge

if.end148.err_work_queues_crit_edge:              ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_work_queues

if.end152:                                        ; preds = %if.end148
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %169 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i313 = icmp eq ptr %170, null
  br i1 %tobool.not.i313, label %if.end.i314, label %if.end152.dev_name.exit_crit_edge

if.end152.dev_name.exit_crit_edge:                ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i314:                                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i314, %if.end152.dev_name.exit_crit_edge
  %retval.0.i315 = phi ptr [ %172, %if.end.i314 ], [ %170, %if.end152.dev_name.exit_crit_edge ]
  %call155 = call ptr @cec_allocate_adapter(ptr noundef nonnull @adv7842_cec_adap_ops, ptr noundef nonnull %call.i, ptr noundef %retval.0.i315, i32 noundef 30, i8 noundef zeroext 3) #11
  %cec_adap = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 33
  %173 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call155, ptr %cec_adap, align 8
  %cmp.i.i.not = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  %174 = ptrtoint ptr %call155 to i32
  br i1 %cmp.i.i.not, label %dev_name.exit.err_work_queues_crit_edge, label %do.end163

dev_name.exit.err_work_queues_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_work_queues

do.end163:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name165 = getelementptr inbounds %struct.adv7842_state, ptr %call.i, i32 0, i32 1, i32 9
  %name167 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %175 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %addr.i, align 2
  %conv170 = zext i16 %176 to i32
  %shl171 = shl nuw nsw i32 %conv170, 1
  %177 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %adapter, align 8
  %name173 = getelementptr inbounds %struct.i2c_adapter, ptr %178, i32 0, i32 12
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name165, ptr noundef %name167, i32 noundef %shl171, ptr noundef %name173) #14
  br label %cleanup

err_work_queues:                                  ; preds = %dev_name.exit.err_work_queues_crit_edge, %if.end148.err_work_queues_crit_edge, %do.body118.err_work_queues_crit_edge
  %err.1 = phi i32 [ %call145, %do.body118.err_work_queues_crit_edge ], [ %call149, %if.end148.err_work_queues_crit_edge ], [ %174, %dev_name.exit.err_work_queues_crit_edge ]
  %call178 = call zeroext i1 @cancel_delayed_work(ptr noundef %delayed_work_enable_hotplug) #11
  br label %err_i2c

err_i2c:                                          ; preds = %err_work_queues, %if.then108
  %err.2 = phi i32 [ -12, %if.then108 ], [ %err.1, %err_work_queues ]
  call fastcc void @adv7842_unregister_clients(ptr noundef %sd34)
  br label %err_hdl

err_hdl:                                          ; preds = %err_i2c, %if.end100.err_hdl_crit_edge, %if.end91.err_hdl_crit_edge
  %err.3 = phi i32 [ %err.2, %err_i2c ], [ %106, %if.end91.err_hdl_crit_edge ], [ -19, %if.end100.err_hdl_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl79) #11
  br label %cleanup

cleanup:                                          ; preds = %err_hdl, %do.end163, %do.end66, %if.end26.cleanup_crit_edge, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end66 ], [ %err.3, %err_hdl ], [ 0, %do.end163 ], [ -19, %do.end16 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 70, i8 noundef zeroext 0) #11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 90, i8 noundef zeroext 0) #11
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 115, i8 noundef zeroext 0) #11
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 120, i8 noundef zeroext 0) #11
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -96, i8 noundef zeroext 0) #11
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 105, i8 noundef zeroext 0) #11
  %delayed_work_enable_hotplug = getelementptr i8, ptr %1, i32 1332
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hotplug) #11
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #11
  tail call fastcc void @adv7842_unregister_clients(ptr noundef %1)
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %15) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adv7842_format_info(i32 noundef %code) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %for.cond.18 [
    i32 4106, label %entry.cleanup_crit_edge
    i32 8200, label %cleanup.fold.split
    i32 8201, label %cleanup.fold.split2
    i32 8203, label %cleanup.fold.split3
    i32 8204, label %cleanup.fold.split4
    i32 8222, label %cleanup.fold.split5
    i32 8223, label %cleanup.fold.split6
    i32 8207, label %cleanup.fold.split7
    i32 8208, label %cleanup.fold.split8
    i32 8209, label %cleanup.fold.split9
    i32 8210, label %cleanup.fold.split10
    i32 8218, label %cleanup.fold.split11
    i32 8219, label %cleanup.fold.split12
    i32 8205, label %cleanup.fold.split13
    i32 8206, label %cleanup.fold.split14
    i32 8224, label %cleanup.fold.split15
    i32 8225, label %cleanup.fold.split16
    i32 8226, label %cleanup.fold.split17
    i32 8227, label %cleanup.fold.split18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.18:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split2:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split3:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split4:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split5:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split6:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split7, %cleanup.fold.split6, %cleanup.fold.split5, %cleanup.fold.split4, %cleanup.fold.split3, %cleanup.fold.split2, %cleanup.fold.split, %for.cond.18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @adv7842_formats, %entry.cleanup_crit_edge ], [ null, %for.cond.18 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 2), %cleanup.fold.split2 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 3), %cleanup.fold.split3 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 4), %cleanup.fold.split4 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 5), %cleanup.fold.split5 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 6), %cleanup.fold.split6 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 7), %cleanup.fold.split7 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 8), %cleanup.fold.split8 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 9), %cleanup.fold.split9 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 10), %cleanup.fold.split10 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 11), %cleanup.fold.split11 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 12), %cleanup.fold.split12 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 13), %cleanup.fold.split13 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 14), %cleanup.fold.split14 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 15), %cleanup.fold.split15 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 16), %cleanup.fold.split16 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 17), %cleanup.fold.split17 ], [ getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 18), %cleanup.fold.split18 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7842_s_detect_tx_5v_ctrl(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 111) #11
  %trunc.i = trunc i32 %call1.i.i to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #11
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i2 %rev.i to i32
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv = zext i2 %rev.i to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, ptr noundef %name, ptr noundef nonnull @.str.414, i32 noundef %conv) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %conv6.pre-phi = phi i32 [ %.pre, %entry.do.end5_crit_edge ], [ %conv, %do.end ]
  %detect_tx_5v_ctrl = getelementptr i8, ptr %sd, i32 1480
  %3 = ptrtoint ptr %detect_tx_5v_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %detect_tx_5v_ctrl, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %8, i32 noundef 0) #11
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %4, i32 noundef %conv6.pre-phi) #11
  %9 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %12) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7842_delayed_work_enable_hotplug(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %present2 = getelementptr i8, ptr %work, i32 -156
  %0 = ptrtoint ptr %present2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present2, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %work, i32 -1216
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.431, ptr noundef %name, ptr noundef nonnull @.str.432, i32 noundef %1) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %3 = trunc i32 %1 to i8
  %4 = shl i8 %3, 3
  %5 = and i8 %4, 32
  %6 = shl i8 %3, 1
  %7 = and i8 %6, 16
  %8 = or i8 %7, %5
  %dev_priv.i.i.i = getelementptr i8, ptr %work, i32 -1180
  %9 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 32) #11
  %11 = trunc i32 %call1.i.i to i8
  %12 = and i8 %11, -49
  %conv2.i = or i8 %8, %12
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 32, i8 noundef zeroext %conv2.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7842_core_init(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -132
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %add.ptr.i, align 4
  %1 = shl i8 %bf.load, 1
  %or199 = and i8 %1, -64
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %2 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 72, i8 noundef zeroext %or199) #11
  %4 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 26) #11
  %6 = trunc i32 %call1.i.i.i to i8
  %conv2.i.i = or i8 %6, 16
  %7 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 26, i8 noundef zeroext %conv2.i.i) #11
  tail call void @msleep(i32 noundef 16) #11
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 21, i8 noundef zeroext -66) #11
  %11 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 120) #11
  %i2c_repeater.i.i = getelementptr i8, ptr %sd, i32 1460
  %13 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 119) #11
  %15 = trunc i32 %call1.i.i to i8
  %16 = and i8 %15, -45
  %conv2.i = or i8 %16, 32
  %17 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_repeater.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 119, i8 noundef zeroext %conv2.i) #11
  %19 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 12, i8 noundef zeroext 66) #11
  %21 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 21, i8 noundef zeroext -128) #11
  %alt_gamma = getelementptr i8, ptr %sd, i32 -104
  %23 = ptrtoint ptr %alt_gamma to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load12 = load i8, ptr %alt_gamma, align 4
  %24 = lshr i8 %bf.load12, 4
  %25 = and i8 %24, 8
  %26 = or i8 %25, -16
  %27 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext %26) #11
  %29 = ptrtoint ptr %alt_gamma to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load18 = load i8, ptr %alt_gamma, align 4
  %30 = lshr i8 %bf.load18, 3
  %or34201 = and i8 %30, 14
  %31 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i209 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 5) #11
  %33 = trunc i32 %call1.i.i209 to i8
  %34 = and i8 %33, -16
  %conv2.i210 = or i8 %34, %or34201
  %35 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 5, i8 noundef zeroext %conv2.i210) #11
  tail call fastcc void @adv7842_setup_format(ptr noundef %add.ptr.i)
  %37 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i.i211 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext 26) #11
  %39 = trunc i32 %call1.i.i211 to i8
  %40 = and i8 %39, -15
  %conv2.i212 = or i8 %40, 8
  %41 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 26, i8 noundef zeroext %conv2.i212) #11
  %dr_str_data = getelementptr i8, ptr %sd, i32 -100
  %43 = ptrtoint ptr %dr_str_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dr_str_data, align 4
  %shl38 = shl i32 %44, 4
  %dr_str_clk = getelementptr i8, ptr %sd, i32 -96
  %45 = ptrtoint ptr %dr_str_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dr_str_clk, align 4
  %shl39 = shl i32 %46, 2
  %or40 = or i32 %shl39, %shl38
  %dr_str_sync = getelementptr i8, ptr %sd, i32 -92
  %47 = ptrtoint ptr %dr_str_sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dr_str_sync, align 4
  %or41 = or i32 %or40, %48
  %conv42 = trunc i32 %or41 to i8
  %49 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i214 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %50, i8 noundef zeroext 20) #11
  %51 = trunc i32 %call1.i.i214 to i8
  %52 = and i8 %51, -64
  %conv2.i215 = or i8 %52, %conv42
  %53 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i215) #11
  %hdmi_free_run_enable = getelementptr i8, ptr %sd, i32 -80
  %55 = ptrtoint ptr %hdmi_free_run_enable to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load44 = load i8, ptr %hdmi_free_run_enable, align 4
  %bf.lshr45 = lshr i8 %bf.load44, 6
  %bf.clear46 = and i8 %bf.lshr45, 1
  %56 = lshr i8 %bf.load44, 4
  %57 = and i8 %56, 2
  %or53202 = or i8 %bf.clear46, %57
  %i2c_cp.i.i = getelementptr i8, ptr %sd, i32 1444
  %58 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i216 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext -70) #11
  %60 = trunc i32 %call1.i.i216 to i8
  %61 = and i8 %60, -4
  %conv2.i217 = or i8 %or53202, %61
  %62 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_cp.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i217) #11
  %64 = ptrtoint ptr %hdmi_free_run_enable to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load56 = load i8, ptr %hdmi_free_run_enable, align 4
  %bf.lshr57 = lshr i8 %bf.load56, 1
  %or77205 = and i8 %bf.lshr57, 15
  %i2c_sdp.i.i = getelementptr i8, ptr %sd, i32 1440
  %65 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i.i218 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %66, i8 noundef zeroext -35) #11
  %67 = trunc i32 %call1.i.i218 to i8
  %68 = and i8 %67, -16
  %conv2.i219 = or i8 %68, %or77205
  %69 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_sdp.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext -35, i8 noundef zeroext %conv2.i219) #11
  %71 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_cp.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %72, i8 noundef zeroext 105, i8 noundef zeroext 20) #11
  %73 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 6, i8 noundef zeroext -90) #11
  %75 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_cp.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %76, i8 noundef zeroext -13, i8 noundef zeroext -36) #11
  %i2c_afe.i = getelementptr i8, ptr %sd, i32 1452
  %77 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext -75, i8 noundef zeroext 1) #11
  %ain_sel = getelementptr i8, ptr %sd, i32 -128
  %79 = ptrtoint ptr %ain_sel to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ain_sel, align 4
  %conv84 = trunc i32 %80 to i8
  %81 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext 2, i8 noundef zeroext %conv84) #11
  %83 = ptrtoint ptr %alt_gamma to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load86 = load i8, ptr %alt_gamma, align 4
  %84 = shl i8 %bf.load86, 1
  %85 = and i8 %84, 16
  %86 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i224 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 48) #11
  %88 = trunc i32 %call1.i.i224 to i8
  %89 = and i8 %88, -17
  %conv2.i225 = or i8 %89, %85
  %90 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 48, i8 noundef zeroext %conv2.i225) #11
  %sdp_csc_coeff = getelementptr i8, ptr %sd, i32 -78
  %92 = ptrtoint ptr %sdp_csc_coeff to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sdp_csc_coeff, align 2, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i = icmp eq i8 %93, 0
  %conv.i = select i1 %tobool.not.i, i8 64, i8 0
  %i2c_sdp_io.i.i.i = getelementptr i8, ptr %sd, i32 1436
  %94 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i.i226 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext -32) #11
  %96 = trunc i32 %call1.i.i.i226 to i8
  %97 = and i8 %96, -65
  %conv2.i.i227 = or i8 %97, %conv.i
  %98 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext -32, i8 noundef zeroext %conv2.i.i227) #11
  %100 = ptrtoint ptr %sdp_csc_coeff to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sdp_csc_coeff, align 2, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool2.not.i = icmp eq i8 %101, 0
  br i1 %tobool2.not.i, label %entry.sdp_csc_coeff.exit_crit_edge, label %if.end.i

entry.sdp_csc_coeff.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdp_csc_coeff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %scaling.i = getelementptr i8, ptr %sd, i32 -76
  %102 = ptrtoint ptr %scaling.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %scaling.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %103)
  %cmp.i = icmp eq i16 %103, 2
  %conv6.i = select i1 %cmp.i, i8 -128, i8 0
  %104 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i143.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext -32) #11
  %106 = trunc i32 %call1.i.i143.i to i8
  %107 = and i8 %106, 127
  %conv2.i144.i = or i8 %107, %conv6.i
  %108 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %109, i8 noundef zeroext -32, i8 noundef zeroext %conv2.i144.i) #11
  %A1.i = getelementptr i8, ptr %sd, i32 -74
  %110 = ptrtoint ptr %A1.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %A1.i, align 2
  %112 = lshr i16 %111, 8
  %conv9.i = trunc i16 %112 to i8
  %113 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i146.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %114, i8 noundef zeroext -32) #11
  %115 = trunc i32 %call1.i.i146.i to i8
  %116 = and i8 %115, -32
  %conv2.i147.i = or i8 %116, %conv9.i
  %117 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext -32, i8 noundef zeroext %conv2.i147.i) #11
  %119 = ptrtoint ptr %A1.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %A1.i, align 2
  %conv12.i = trunc i16 %120 to i8
  %121 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %122, i8 noundef zeroext -31, i8 noundef zeroext %conv12.i) #11
  %A2.i = getelementptr i8, ptr %sd, i32 -72
  %123 = ptrtoint ptr %A2.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %A2.i, align 2
  %125 = lshr i16 %124, 8
  %conv16.i = trunc i16 %125 to i8
  %126 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i149.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %127, i8 noundef zeroext -30) #11
  %128 = trunc i32 %call1.i.i149.i to i8
  %129 = and i8 %128, -32
  %conv2.i150.i = or i8 %129, %conv16.i
  %130 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext -30, i8 noundef zeroext %conv2.i150.i) #11
  %132 = ptrtoint ptr %A2.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %A2.i, align 2
  %conv19.i = trunc i16 %133 to i8
  %134 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext -29, i8 noundef zeroext %conv19.i) #11
  %A3.i = getelementptr i8, ptr %sd, i32 -70
  %136 = ptrtoint ptr %A3.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %A3.i, align 2
  %138 = lshr i16 %137, 8
  %conv23.i = trunc i16 %138 to i8
  %139 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i153.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %140, i8 noundef zeroext -28) #11
  %141 = trunc i32 %call1.i.i153.i to i8
  %142 = and i8 %141, -32
  %conv2.i154.i = or i8 %142, %conv23.i
  %143 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %144, i8 noundef zeroext -28, i8 noundef zeroext %conv2.i154.i) #11
  %145 = ptrtoint ptr %A3.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %A3.i, align 2
  %conv26.i = trunc i16 %146 to i8
  %147 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %148, i8 noundef zeroext -27, i8 noundef zeroext %conv26.i) #11
  %A4.i = getelementptr i8, ptr %sd, i32 -68
  %149 = ptrtoint ptr %A4.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %A4.i, align 2
  %151 = lshr i16 %150, 8
  %conv30.i = trunc i16 %151 to i8
  %152 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i157.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %153, i8 noundef zeroext -26) #11
  %154 = trunc i32 %call1.i.i157.i to i8
  %155 = and i8 %154, -128
  %conv2.i158.i = or i8 %155, %conv30.i
  %156 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext -26, i8 noundef zeroext %conv2.i158.i) #11
  %158 = ptrtoint ptr %A4.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %A4.i, align 2
  %conv33.i = trunc i16 %159 to i8
  %160 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext -25, i8 noundef zeroext %conv33.i) #11
  %B1.i = getelementptr i8, ptr %sd, i32 -66
  %162 = ptrtoint ptr %B1.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %B1.i, align 2
  %164 = lshr i16 %163, 8
  %conv37.i = trunc i16 %164 to i8
  %165 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i161.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %166, i8 noundef zeroext -24) #11
  %167 = trunc i32 %call1.i.i161.i to i8
  %168 = and i8 %167, -32
  %conv2.i162.i = or i8 %168, %conv37.i
  %169 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %170, i8 noundef zeroext -24, i8 noundef zeroext %conv2.i162.i) #11
  %171 = ptrtoint ptr %B1.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %B1.i, align 2
  %conv40.i = trunc i16 %172 to i8
  %173 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %174, i8 noundef zeroext -23, i8 noundef zeroext %conv40.i) #11
  %B2.i = getelementptr i8, ptr %sd, i32 -64
  %175 = ptrtoint ptr %B2.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %B2.i, align 2
  %177 = lshr i16 %176, 8
  %conv44.i = trunc i16 %177 to i8
  %178 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i165.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %179, i8 noundef zeroext -22) #11
  %180 = trunc i32 %call1.i.i165.i to i8
  %181 = and i8 %180, -32
  %conv2.i166.i = or i8 %181, %conv44.i
  %182 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %183, i8 noundef zeroext -22, i8 noundef zeroext %conv2.i166.i) #11
  %184 = ptrtoint ptr %B2.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %B2.i, align 2
  %conv47.i = trunc i16 %185 to i8
  %186 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %187, i8 noundef zeroext -21, i8 noundef zeroext %conv47.i) #11
  %B3.i = getelementptr i8, ptr %sd, i32 -62
  %188 = ptrtoint ptr %B3.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %B3.i, align 2
  %190 = lshr i16 %189, 8
  %conv51.i = trunc i16 %190 to i8
  %191 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i169.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %192, i8 noundef zeroext -20) #11
  %193 = trunc i32 %call1.i.i169.i to i8
  %194 = and i8 %193, -32
  %conv2.i170.i = or i8 %194, %conv51.i
  %195 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %196, i8 noundef zeroext -20, i8 noundef zeroext %conv2.i170.i) #11
  %197 = ptrtoint ptr %B3.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %B3.i, align 2
  %conv54.i = trunc i16 %198 to i8
  %199 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %200, i8 noundef zeroext -19, i8 noundef zeroext %conv54.i) #11
  %B4.i = getelementptr i8, ptr %sd, i32 -60
  %201 = ptrtoint ptr %B4.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %B4.i, align 2
  %203 = lshr i16 %202, 8
  %conv58.i = trunc i16 %203 to i8
  %204 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i173.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %205, i8 noundef zeroext -18) #11
  %206 = trunc i32 %call1.i.i173.i to i8
  %207 = and i8 %206, -128
  %conv2.i174.i = or i8 %207, %conv58.i
  %208 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %209, i8 noundef zeroext -18, i8 noundef zeroext %conv2.i174.i) #11
  %210 = ptrtoint ptr %B4.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %B4.i, align 2
  %conv61.i = trunc i16 %211 to i8
  %212 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %213, i8 noundef zeroext -17, i8 noundef zeroext %conv61.i) #11
  %C1.i = getelementptr i8, ptr %sd, i32 -58
  %214 = ptrtoint ptr %C1.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %C1.i, align 2
  %216 = lshr i16 %215, 8
  %conv65.i = trunc i16 %216 to i8
  %217 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i177.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %218, i8 noundef zeroext -16) #11
  %219 = trunc i32 %call1.i.i177.i to i8
  %220 = and i8 %219, -32
  %conv2.i178.i = or i8 %220, %conv65.i
  %221 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %222, i8 noundef zeroext -16, i8 noundef zeroext %conv2.i178.i) #11
  %223 = ptrtoint ptr %C1.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %C1.i, align 2
  %conv68.i = trunc i16 %224 to i8
  %225 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %226, i8 noundef zeroext -15, i8 noundef zeroext %conv68.i) #11
  %C2.i = getelementptr i8, ptr %sd, i32 -56
  %227 = ptrtoint ptr %C2.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %C2.i, align 2
  %229 = lshr i16 %228, 8
  %conv72.i = trunc i16 %229 to i8
  %230 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i181.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %231, i8 noundef zeroext -14) #11
  %232 = trunc i32 %call1.i.i181.i to i8
  %233 = and i8 %232, -32
  %conv2.i182.i = or i8 %233, %conv72.i
  %234 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %235, i8 noundef zeroext -14, i8 noundef zeroext %conv2.i182.i) #11
  %236 = ptrtoint ptr %C2.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %C2.i, align 2
  %conv75.i = trunc i16 %237 to i8
  %238 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %239, i8 noundef zeroext -13, i8 noundef zeroext %conv75.i) #11
  %C3.i = getelementptr i8, ptr %sd, i32 -54
  %240 = ptrtoint ptr %C3.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %C3.i, align 2
  %242 = lshr i16 %241, 8
  %conv79.i = trunc i16 %242 to i8
  %243 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i185.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %244, i8 noundef zeroext -12) #11
  %245 = trunc i32 %call1.i.i185.i to i8
  %246 = and i8 %245, -32
  %conv2.i186.i = or i8 %246, %conv79.i
  %247 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %248, i8 noundef zeroext -12, i8 noundef zeroext %conv2.i186.i) #11
  %249 = ptrtoint ptr %C3.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %C3.i, align 2
  %conv82.i = trunc i16 %250 to i8
  %251 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %252, i8 noundef zeroext -11, i8 noundef zeroext %conv82.i) #11
  %C4.i = getelementptr i8, ptr %sd, i32 -52
  %253 = ptrtoint ptr %C4.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %C4.i, align 2
  %255 = lshr i16 %254, 8
  %conv86.i = trunc i16 %255 to i8
  %256 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i189.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %257, i8 noundef zeroext -10) #11
  %258 = trunc i32 %call1.i.i189.i to i8
  %259 = and i8 %258, -128
  %conv2.i190.i = or i8 %259, %conv86.i
  %260 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %261, i8 noundef zeroext -10, i8 noundef zeroext %conv2.i190.i) #11
  %262 = ptrtoint ptr %C4.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %C4.i, align 2
  %conv89.i = trunc i16 %263 to i8
  %264 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %265, i8 noundef zeroext -9, i8 noundef zeroext %conv89.i) #11
  br label %sdp_csc_coeff.exit

sdp_csc_coeff.exit:                               ; preds = %if.end.i, %entry.sdp_csc_coeff.exit_crit_edge
  %sd_ram_size = getelementptr i8, ptr %sd, i32 -84
  %266 = ptrtoint ptr %sd_ram_size to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %sd_ram_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %267)
  %cmp = icmp ugt i32 %267, 127
  br i1 %cmp, label %if.then, label %if.else112

if.then:                                          ; preds = %sdp_csc_coeff.exit
  %268 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %i2c_sdp.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %269, i8 noundef zeroext 18, i8 noundef zeroext 13) #11
  %270 = ptrtoint ptr %hdmi_free_run_enable to i32
  call void @__asan_load1_noabort(i32 %270)
  %bf.load95 = load i8, ptr %hdmi_free_run_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load95)
  %tobool98.not = icmp sgt i8 %bf.load95, -1
  %271 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  br i1 %tobool98.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %272, i8 noundef zeroext 111, i8 noundef zeroext 0) #11
  %273 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %274, i8 noundef zeroext 117, i8 noundef zeroext 10) #11
  %275 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %276, i8 noundef zeroext 122, i8 noundef zeroext -91) #11
  %277 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %278, i8 noundef zeroext 123, i8 noundef zeroext -113) #11
  %279 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %280, i8 noundef zeroext 96, i8 noundef zeroext 1) #11
  br label %if.end114

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %272, i8 noundef zeroext 117, i8 noundef zeroext 10) #11
  %281 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %282, i8 noundef zeroext 116, i8 noundef zeroext 0) #11
  %283 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %284, i8 noundef zeroext 121, i8 noundef zeroext 51) #11
  %285 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %286, i8 noundef zeroext 111, i8 noundef zeroext 1) #11
  %287 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %288, i8 noundef zeroext 122, i8 noundef zeroext -91) #11
  %289 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %290, i8 noundef zeroext 123, i8 noundef zeroext -113) #11
  %291 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %292, i8 noundef zeroext 96, i8 noundef zeroext 1) #11
  br label %if.end114

if.else112:                                       ; preds = %sdp_csc_coeff.exit
  call void @__sanitizer_cov_trace_pc() #13
  %293 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %294, i8 noundef zeroext 41, i8 noundef zeroext 16) #11
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.else, %if.then99
  %vid_std_select = getelementptr i8, ptr %sd, i32 -108
  %295 = ptrtoint ptr %vid_std_select to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %vid_std_select, align 4
  tail call fastcc void @select_input(ptr noundef %sd, i32 noundef %296)
  tail call fastcc void @enable_input(ptr noundef %sd)
  %297 = ptrtoint ptr %hdmi_free_run_enable to i32
  call void @__asan_load1_noabort(i32 %297)
  %bf.load115 = load i8, ptr %hdmi_free_run_enable, align 4
  %bf.clear116 = and i8 %bf.load115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear116)
  %tobool118.not = icmp eq i8 %bf.clear116, 0
  %298 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %i2c_hdmi.i, align 4
  br i1 %tobool118.not, label %if.else121, label %if.then119

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %299, i8 noundef zeroext 105, i8 noundef zeroext 92) #11
  br label %if.end124

if.else121:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %299, i8 noundef zeroext 105, i8 noundef zeroext -93) #11
  %300 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i243 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %301, i8 noundef zeroext 32) #11
  %302 = trunc i32 %call1.i.i243 to i8
  %303 = and i8 %302, -49
  %304 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %305, i8 noundef zeroext 32, i8 noundef zeroext %303) #11
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then119
  %llc_dll_phase = getelementptr i8, ptr %sd, i32 -88
  %306 = ptrtoint ptr %llc_dll_phase to i32
  call void @__asan_load1_noabort(i32 %306)
  %bf.load125 = load i8, ptr %llc_dll_phase, align 4
  %bf.lshr126 = lshr i8 %bf.load125, 3
  %307 = or i8 %bf.lshr126, -128
  %308 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %309, i8 noundef zeroext 25, i8 noundef zeroext %307) #11
  %310 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %311, i8 noundef zeroext 51, i8 noundef zeroext 64) #11
  %312 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %313, i8 noundef zeroext 64, i8 noundef zeroext -14) #11
  %314 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %315, i8 noundef zeroext 70, i8 noundef zeroext -100) #11
  %316 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %317, i8 noundef zeroext 90, i8 noundef zeroext 16) #11
  %318 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %319, i8 noundef zeroext 115, i8 noundef zeroext 3) #11
  %320 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %321, i8 noundef zeroext 120, i8 noundef zeroext 3) #11
  %322 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %323, i8 noundef zeroext -96, i8 noundef zeroext 9) #11
  %324 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %325, i8 noundef zeroext 105, i8 noundef zeroext 8) #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %326 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ctrl_handler, align 4
  %call133 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %327) #11
  ret i32 %call133
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_unregister_clients(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_avlink = getelementptr i8, ptr %sd, i32 1476
  %0 = ptrtoint ptr %i2c_avlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_avlink, align 8
  tail call void @i2c_unregister_device(ptr noundef %1) #11
  %i2c_cec = getelementptr i8, ptr %sd, i32 1472
  %2 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_cec, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #11
  %i2c_infoframe = getelementptr i8, ptr %sd, i32 1468
  %4 = ptrtoint ptr %i2c_infoframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_infoframe, align 8
  tail call void @i2c_unregister_device(ptr noundef %5) #11
  %i2c_sdp_io = getelementptr i8, ptr %sd, i32 1436
  %6 = ptrtoint ptr %i2c_sdp_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_sdp_io, align 8
  tail call void @i2c_unregister_device(ptr noundef %7) #11
  %i2c_sdp = getelementptr i8, ptr %sd, i32 1440
  %8 = ptrtoint ptr %i2c_sdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_sdp, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #11
  %i2c_afe = getelementptr i8, ptr %sd, i32 1452
  %10 = ptrtoint ptr %i2c_afe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_afe, align 8
  tail call void @i2c_unregister_device(ptr noundef %11) #11
  %i2c_repeater = getelementptr i8, ptr %sd, i32 1460
  %12 = ptrtoint ptr %i2c_repeater to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_repeater, align 8
  tail call void @i2c_unregister_device(ptr noundef %13) #11
  %i2c_edid = getelementptr i8, ptr %sd, i32 1464
  %14 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_edid, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #11
  %i2c_hdmi = getelementptr i8, ptr %sd, i32 1456
  %16 = ptrtoint ptr %i2c_hdmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_hdmi, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #11
  %i2c_cp = getelementptr i8, ptr %sd, i32 1444
  %18 = ptrtoint ptr %i2c_cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_cp, align 8
  tail call void @i2c_unregister_device(ptr noundef %19) #11
  %i2c_vdp = getelementptr i8, ptr %sd, i32 1448
  %20 = ptrtoint ptr %i2c_vdp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_vdp, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #11
  %22 = call ptr @memset(ptr %i2c_sdp_io, i32 0, i32 44)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %buffer.i.i = alloca [32 x i8], align 1
  %frame.i.i = alloca %union.hdmi_infoframe, align 4
  %timings.i = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i2c_sdp.i.i = getelementptr i8, ptr %sd, i32 1440
  %2 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 90) #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %dev_priv.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 12) #11
  %and.i.i = and i32 %call1.i.i.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, ptr @.str.26, ptr @.str.25
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i, ptr noundef nonnull %cond.i) #14
  %6 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 1) #11
  %and11.i = and i32 %call1.i1.i, 15
  %8 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i3.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 0) #11
  %and13.i = and i32 %call1.i3.i, 63
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, i32 noundef %and11.i, i32 noundef %and13.i) #14
  %10 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i5.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 86) #11
  %and22.i = and i32 %call1.i5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  %cond23.i = select i1 %tobool.not.i, ptr @.str.25, ptr @.str.26
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i, ptr noundef nonnull %cond23.i) #14
  %conv15.i = and i32 %call1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %tobool32.not.i = icmp eq i32 %conv15.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.37, ptr @.str.36
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef nonnull %cond33.i) #14
  br i1 %tobool32.not.i, label %if.then.cleanup_crit_edge, label %do.end38.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i7.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 82) #11
  %and43.i = and i32 %call1.i7.i, 15
  %arrayidx.i = getelementptr [16 x ptr], ptr @adv7842_sdp_log_status.sdp_std_txt, i32 0, i32 %and43.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name.i, ptr noundef %15) #14
  %16 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i9.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 89) #11
  %and52.i = and i32 %call1.i9.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %cond54.i = select i1 %tobool53.not.i, ptr @.str.60, ptr @.str.59
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef nonnull %cond54.i) #14
  %18 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i11.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 87) #11
  %and63.i = and i32 %call1.i11.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %cond65.i = select i1 %tobool64.not.i, ptr @.str.64, ptr @.str.63
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef nonnull %cond65.i) #14
  %20 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i13.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 18) #11
  %and74.i = and i32 %call1.i13.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %cond76.i = select i1 %tobool75.not.i, ptr @.str.69, ptr @.str.68
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name.i, ptr noundef nonnull %cond76.i) #14
  %i2c_sdp_io.i.i = getelementptr i8, ptr %sd, i32 1436
  %22 = ptrtoint ptr %i2c_sdp_io.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_sdp_io.i.i, align 8
  %call1.i14.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext -32) #11
  %and85.i = and i32 %call1.i14.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  %cond87.i = select i1 %tobool86.not.i, ptr @.str.74, ptr @.str.73
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, ptr noundef nonnull %cond87.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings.i) #11
  %24 = call ptr @memset(ptr %timings.i, i32 255, i32 132)
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i5 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 2) #11
  %27 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i5.i6 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 33) #11
  %i2c_repeater.i.i = getelementptr i8, ptr %sd, i32 1460
  %29 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i6.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 119) #11
  %31 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i8.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 125) #11
  %i2c_hdmi.i.i = getelementptr i8, ptr %sd, i32 1456
  %33 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i9.i7 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 4) #11
  %and.i = and i32 %call1.i9.i7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  %35 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i11.i9 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 24) #11
  %and10.i = and i32 %call1.i11.i9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %37 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i13.i10 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext 101) #11
  %and14.i = and i32 %call1.i13.i10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %name.i11 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name.i11) #14
  %39 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i.i12 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 12) #11
  %and.i.i13 = and i32 %call1.i.i.i12, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.i.not.i14 = icmp eq i32 %and.i.i13, 0
  %cond.i15 = select i1 %tobool.i.not.i14, ptr @.str.26, ptr @.str.25
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name.i11, ptr noundef nonnull %cond.i15) #14
  %hdmi_port_a.i = getelementptr i8, ptr %sd, i32 1433
  %41 = ptrtoint ptr %hdmi_port_a.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hdmi_port_a.i, align 1, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not.i = icmp eq i8 %42, 0
  %cond35.i = select i1 %tobool33.not.i, ptr @.str.112, ptr @.str.111
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name.i11, ptr noundef nonnull %cond35.i) #14
  %and44.i = and i32 %call1.i8.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp ne i32 %and44.i, 0
  %and47.i = and i32 %call1.i6.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.i = icmp ne i32 %and47.i, 0
  %43 = select i1 %tobool45.not.i, i1 %tobool48.i, i1 false
  %cond49.i = select i1 %43, ptr @.str.68, ptr @.str.69
  %and51.i = and i32 %call1.i8.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %and55.i = and i32 %call1.i6.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %44 = select i1 %tobool52.not.i, i1 true, i1 %tobool56.not.i
  %45 = select i1 %44, ptr @.str.69, ptr @.str.68
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name.i11, ptr noundef nonnull %cond49.i, ptr noundef nonnull %45) #14
  %and67.i = and i32 %call1.i5.i6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  %cond69.i = select i1 %tobool68.not.i, ptr @.str.69, ptr @.str.68
  %and71.i = and i32 %call1.i5.i6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  %cond73.i = select i1 %tobool72.not.i, ptr @.str.69, ptr @.str.68
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name.i11, ptr noundef nonnull %cond69.i, ptr noundef nonnull %cond73.i) #14
  %cec_enabled_adap.i = getelementptr i8, ptr %sd, i32 1508
  %46 = ptrtoint ptr %cec_enabled_adap.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cec_enabled_adap.i, align 8, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool81.not.i = icmp eq i8 %47, 0
  %cond83.i = select i1 %tobool81.not.i, ptr @.str.69, ptr @.str.68
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name.i11, ptr noundef nonnull %cond83.i) #14
  %48 = ptrtoint ptr %cec_enabled_adap.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cec_enabled_adap.i, align 8, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool86.not.i16 = icmp eq i8 %49, 0
  br i1 %tobool86.not.i16, label %if.end.do.end105.i_crit_edge, label %for.cond.preheader.i

if.end.do.end105.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105.i

for.cond.preheader.i:                             ; preds = %if.end
  %cec_valid_addrs.i = getelementptr i8, ptr %sd, i32 1507
  %50 = ptrtoint ptr %cec_valid_addrs.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cec_valid_addrs.i, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool90.not.i = icmp eq i8 %52, 0
  br i1 %tobool90.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %do.end96.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end96.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i17 = getelementptr i8, ptr %sd, i32 1504
  %53 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i17, align 1
  %conv100.i = zext i8 %54 to i32
  %call101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name.i11, i32 noundef %conv100.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end96.i, %for.cond.preheader.i.if.end.i_crit_edge
  %55 = ptrtoint ptr %cec_valid_addrs.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cec_valid_addrs.i, align 1
  %57 = and i8 %56, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool90.not.1.i = icmp eq i8 %57, 0
  br i1 %tobool90.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end96.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i

do.end96.1.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1.i = getelementptr i8, ptr %sd, i32 1505
  %58 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.1.i, align 1
  %conv100.1.i = zext i8 %59 to i32
  %call101.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name.i11, i32 noundef %conv100.1.i) #14
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end96.1.i, %if.end.i.if.end.1.i_crit_edge
  %60 = ptrtoint ptr %cec_valid_addrs.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cec_valid_addrs.i, align 1
  %62 = and i8 %61, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool90.not.2.i = icmp eq i8 %62, 0
  br i1 %tobool90.not.2.i, label %if.end.1.i.do.end105.i_crit_edge, label %do.end96.2.i

if.end.1.i.do.end105.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105.i

do.end96.2.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2.i = getelementptr i8, ptr %sd, i32 1506
  %63 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.2.i, align 1
  %conv100.2.i = zext i8 %64 to i32
  %call101.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name.i11, i32 noundef %conv100.2.i) #14
  br label %do.end105.i

do.end105.i:                                      ; preds = %do.end96.2.i, %if.end.1.i.do.end105.i_crit_edge, %if.end.do.end105.i_crit_edge
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name.i11) #14
  %65 = ptrtoint ptr %hdmi_port_a.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hdmi_port_a.i, align 1, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool111.not.i = icmp eq i8 %66, 0
  %67 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i21.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %68, i8 noundef zeroext 111) #11
  %..i = select i1 %tobool111.not.i, i32 1, i32 2
  %.str.140..str.129.i = select i1 %tobool111.not.i, ptr @.str.140, ptr @.str.129
  %.107.i = select i1 %tobool111.not.i, i32 16, i32 32
  %and120.i = and i32 %call1.i21.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  %cond122.i = select i1 %tobool121.not.i, ptr @.str.132, ptr @.str.131
  %call123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.140..str.129.i, ptr noundef %name.i11, ptr noundef nonnull %cond122.i) #14
  %69 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i17.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext 106) #11
  %and131.i = and i32 %call1.i17.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  %cond133.i = select i1 %tobool132.not.i, ptr @.str.132, ptr @.str.131
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name.i11, ptr noundef nonnull %cond133.i) #14
  %71 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i19.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 106) #11
  %and142.i = and i32 %call1.i19.i, %.107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %cond144.i = select i1 %tobool143.not.i, ptr @.str.132, ptr @.str.131
  %call145.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name.i11, ptr noundef nonnull %cond144.i) #14
  %i2c_cp.i.i = getelementptr i8, ptr %sd, i32 1444
  %73 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i26.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %74, i8 noundef zeroext -1) #11
  %and187.i = and i32 %call1.i26.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  %cond190.i = select i1 %tobool188.not.i, ptr @.str.25, ptr @.str.26
  %call191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name.i11, ptr noundef nonnull %cond190.i) #14
  %75 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i28.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext 1) #11
  %and199.i = and i32 %call1.i28.i, 15
  %77 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i30.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %78, i8 noundef zeroext 0) #11
  %and201.i = and i32 %call1.i30.i, 63
  %79 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i32.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %80, i8 noundef zeroext 1) #11
  %and203.i = lshr i32 %call1.i32.i, 4
  %81 = and i32 %and203.i, 7
  %call204.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name.i11, i32 noundef %and199.i, i32 noundef %and201.i, i32 noundef %81) #14
  %call211.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name.i11) #14
  %82 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i33.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext -75) #11
  %and.i34.i = and i32 %call1.i.i33.i, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %and.i34.i)
  %cmp.not.i.i = icmp eq i32 %and.i34.i, 208
  br i1 %cmp.not.i.i, label %no_cp_signal.exit.i, label %do.end105.i.do.end216.i_crit_edge

do.end105.i.do.end216.i_crit_edge:                ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end216.i

no_cp_signal.exit.i:                              ; preds = %do.end105.i
  %84 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i5.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext -79) #11
  %and2.i.i = and i32 %call1.i5.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %no_cp_signal.exit.i.do.end216.i_crit_edge, label %if.else221.i

no_cp_signal.exit.i.do.end216.i_crit_edge:        ; preds = %no_cp_signal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end216.i

do.end216.i:                                      ; preds = %no_cp_signal.exit.i.do.end216.i_crit_edge, %do.end105.i.do.end216.i_crit_edge
  %call220.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name.i11) #14
  br label %if.end272.i

if.else221.i:                                     ; preds = %no_cp_signal.exit.i
  %86 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i36.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext -79) #11
  %and223.i = shl i32 %call1.i36.i, 8
  %shl224.i = and i32 %and223.i, 16128
  %88 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i38.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext -78) #11
  %or.i = or i32 %shl224.i, %call1.i38.i
  %90 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i40.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext -77) #11
  %and227.i = shl i32 %call1.i40.i, 8
  %shl228.i = and i32 %and227.i, 1792
  %92 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i42.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext -76) #11
  %or230.i = or i32 %shl228.i, %call1.i42.i
  %94 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i44.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext -77) #11
  %shr232.i = ashr i32 %call1.i44.i, 3
  %96 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i46.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext -72) #11
  %and234.i = shl i32 %call1.i46.i, 8
  %shl235.i = and i32 %and234.i, 7936
  %98 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i48.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext -71) #11
  %or237.i = or i32 %shl235.i, %call1.i48.i
  %100 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i50.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext -75) #11
  %and239.i = and i32 %call1.i50.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i)
  %tobool240.not.i = icmp eq i32 %and239.i, 0
  br i1 %tobool240.not.i, label %if.else221.i.cond.end.i_crit_edge, label %cond.true.i

if.else221.i.cond.end.i_crit_edge:                ; preds = %if.else221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else221.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i52.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext -75) #11
  %and242.i = and i32 %call1.i52.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242.i)
  %tobool243.not.i = icmp eq i32 %and242.i, 0
  %phi.cast2.i = select i1 %tobool243.not.i, i32 45, i32 43
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else221.i.cond.end.i_crit_edge
  %cond245.i = phi i32 [ %phi.cast2.i, %cond.true.i ], [ 120, %if.else221.i.cond.end.i_crit_edge ]
  %104 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i54.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext -75) #11
  %and248.i = and i32 %call1.i54.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i)
  %tobool249.not.i = icmp eq i32 %and248.i, 0
  br i1 %tobool249.not.i, label %cond.end.i.cond.end256.i_crit_edge, label %cond.true250.i

cond.end.i.cond.end256.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end256.i

cond.true250.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i56.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %107, i8 noundef zeroext -75) #11
  %and252.i = and i32 %call1.i56.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252.i)
  %tobool253.not.i = icmp eq i32 %and252.i, 0
  %phi.cast.i = select i1 %tobool253.not.i, i32 45, i32 43
  br label %cond.end256.i

cond.end256.i:                                    ; preds = %cond.true250.i, %cond.end.i.cond.end256.i_crit_edge
  %cond257.i = phi i32 [ %phi.cast.i, %cond.true250.i ], [ 120, %cond.end.i.cond.end256.i_crit_edge ]
  %108 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i58.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext -79) #11
  %and266.i = and i32 %call1.i58.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  %cond268.i = select i1 %tobool267.not.i, ptr @.str.162, ptr @.str.161
  %call271.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name.i11, i32 noundef %or230.i, i32 noundef %or.i, i32 noundef %shr232.i, i32 noundef %or237.i, ptr noundef nonnull %cond268.i, i32 noundef %cond245.i, i32 noundef %cond257.i) #14
  br label %if.end272.i

if.end272.i:                                      ; preds = %cond.end256.i, %do.end216.i
  %call273.i = call i32 @adv7842_query_dv_timings(ptr noundef %sd, ptr noundef nonnull %timings.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %tobool274.not.i = icmp eq i32 %call273.i, 0
  br i1 %tobool274.not.i, label %if.else283.i, label %do.end278.i

do.end278.i:                                      ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #13
  %call282.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name.i11) #14
  br label %if.end286.i

if.else283.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @v4l2_print_dv_timings(ptr noundef %name.i11, ptr noundef nonnull @.str.166, ptr noundef nonnull %timings.i, i1 noundef zeroext true) #11
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.else283.i, %do.end278.i
  %timings289.i = getelementptr i8, ptr %sd, i32 512
  call void @v4l2_print_dv_timings(ptr noundef %name.i11, ptr noundef nonnull @.str.167, ptr noundef %timings289.i, i1 noundef zeroext true) #11
  %110 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i60.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %111, i8 noundef zeroext -75) #11
  %and.i61.i = and i32 %call1.i.i60.i, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %and.i61.i)
  %cmp.not.i62.i = icmp eq i32 %and.i61.i, 208
  br i1 %cmp.not.i62.i, label %no_cp_signal.exit67.i, label %if.end286.i.adv7842_cp_log_status.exit_crit_edge

if.end286.i.adv7842_cp_log_status.exit_crit_edge: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cp_log_status.exit

no_cp_signal.exit67.i:                            ; preds = %if.end286.i
  %112 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i5.i63.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %113, i8 noundef zeroext -79) #11
  %and2.i64.i = and i32 %call1.i5.i63.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i64.i)
  %tobool.not.i65.i = icmp eq i32 %and2.i64.i, 0
  br i1 %tobool.not.i65.i, label %no_cp_signal.exit67.i.adv7842_cp_log_status.exit_crit_edge, label %do.end295.i

no_cp_signal.exit67.i.adv7842_cp_log_status.exit_crit_edge: ; preds = %no_cp_signal.exit67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cp_log_status.exit

do.end295.i:                                      ; preds = %no_cp_signal.exit67.i
  %call299.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name.i11) #14
  %rgb_quantization_range.i = getelementptr i8, ptr %sd, i32 1324
  %114 = ptrtoint ptr %rgb_quantization_range.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rgb_quantization_range.i, align 8
  %arrayidx306.i = getelementptr [3 x ptr], ptr @adv7842_cp_log_status.rgb_quantization_range_txt, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx306.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx306.i, align 4
  %call307.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name.i11, ptr noundef %117) #14
  %conv314.i = lshr i32 %call1.i.i5, 4
  %118 = and i32 %conv314.i, 15
  %arrayidx316.i = getelementptr [16 x ptr], ptr @adv7842_cp_log_status.input_color_space_txt, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx316.i, align 4
  %call317.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name.i11, ptr noundef %120) #14
  %and325.i = and i32 %call1.i.i5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325.i)
  %tobool326.not.i = icmp eq i32 %and325.i, 0
  %cond327.i = select i1 %tobool326.not.i, ptr @.str.181, ptr @.str.180
  %121 = lshr i32 %call1.i.i5, 2
  %and3303.i = xor i32 %121, %call1.i.i5
  %xor.i = and i32 %and3303.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool333.not.i = icmp eq i32 %xor.i, 0
  %cond334.i = select i1 %tobool333.not.i, ptr @.str.183, ptr @.str.182
  %and336.i = and i32 %call1.i.i5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336.i)
  %tobool337.not.i = icmp eq i32 %and336.i, 0
  %cond338.i = select i1 %tobool337.not.i, ptr @.str.69, ptr @.str.68
  %call339.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name.i11, ptr noundef nonnull %cond327.i, ptr noundef nonnull %cond334.i, ptr noundef nonnull %cond338.i) #14
  %122 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i69.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %123, i8 noundef zeroext -12) #11
  %shr347.i = ashr i32 %call1.i69.i, 4
  %arrayidx348.i = getelementptr [16 x ptr], ptr @adv7842_cp_log_status.csc_coeff_sel_rb, i32 0, i32 %shr347.i
  %124 = ptrtoint ptr %arrayidx348.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx348.i, align 4
  %call349.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %name.i11, ptr noundef %125) #14
  %126 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %127)
  %cmp.i.i = icmp eq i32 %127, 3
  br i1 %cmp.i.i, label %do.end355.i, label %do.end295.i.adv7842_cp_log_status.exit_crit_edge

do.end295.i.adv7842_cp_log_status.exit_crit_edge: ; preds = %do.end295.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cp_log_status.exit

do.end355.i:                                      ; preds = %do.end295.i
  %128 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i.i70.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %129, i8 noundef zeroext 5) #11
  %and.i71.i = and i32 %call1.i.i70.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i)
  %tobool.i72.not.i = icmp eq i32 %and.i71.i, 0
  %cond361.i = select i1 %tobool.i72.not.i, ptr @.str.191, ptr @.str.190
  %call362.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name.i11, ptr noundef nonnull %cond361.i) #14
  %130 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i74.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %131, i8 noundef zeroext 5) #11
  %and370.i = and i32 %call1.i74.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370.i)
  %tobool371.not.i = icmp eq i32 %and370.i, 0
  %cond372.i = select i1 %tobool371.not.i, ptr @.str.132, ptr @.str.131
  %call373.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name.i11, ptr noundef nonnull %cond372.i) #14
  %132 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i76.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %133, i8 noundef zeroext 4) #11
  %and381.i = and i32 %call1.i76.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and381.i)
  %tobool382.not.i = icmp eq i32 %and381.i, 0
  %cond383.i = select i1 %tobool382.not.i, ptr @.str.199, ptr @.str.198
  %134 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i78.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %135, i8 noundef zeroext 4) #11
  %and385.i = and i32 %call1.i78.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and385.i)
  %tobool386.not.i = icmp eq i32 %and385.i, 0
  %cond387.i = select i1 %tobool386.not.i, ptr @.str.201, ptr @.str.200
  %call388.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name.i11, ptr noundef nonnull %cond383.i, ptr noundef nonnull %cond387.i) #14
  %136 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i.i80.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %137, i8 noundef zeroext 5) #11
  %and.i81.i = and i32 %call1.i.i80.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81.i)
  %tobool.i82.not.i = icmp eq i32 %and.i81.i, 0
  br i1 %tobool.i82.not.i, label %do.end355.i.adv7842_cp_log_status.exit_crit_edge, label %do.end394.i

do.end355.i.adv7842_cp_log_status.exit_crit_edge: ; preds = %do.end355.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cp_log_status.exit

do.end394.i:                                      ; preds = %do.end355.i
  %cond400.i = select i1 %tobool.not.i8, ptr @.str.206, ptr @.str.205
  %cond403.i = select i1 %tobool11.not.i, ptr @.str.208, ptr @.str.207
  %cond406.i = select i1 %tobool15.not.i, ptr @.str.68, ptr @.str.209
  %call407.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %name.i11, ptr noundef nonnull %cond400.i, ptr noundef nonnull %cond403.i, ptr noundef nonnull %cond406.i) #14
  %brmerge.i = select i1 %tobool.not.i8, i1 true, i1 %tobool11.not.i
  br i1 %brmerge.i, label %do.end394.i.do.end427.i_crit_edge, label %do.end415.i

do.end394.i.do.end427.i_crit_edge:                ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end427.i

do.end415.i:                                      ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i84.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %139, i8 noundef zeroext 7) #11
  %and420.i = and i32 %call1.i84.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420.i)
  %tobool421.not.i = icmp eq i32 %and420.i, 0
  %cond422.i = select i1 %tobool421.not.i, ptr @.str.214, ptr @.str.213
  %call423.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name.i11, ptr noundef nonnull %cond422.i) #14
  br label %do.end427.i

do.end427.i:                                      ; preds = %do.end415.i, %do.end394.i.do.end427.i_crit_edge
  %140 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i86.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %141, i8 noundef zeroext 91) #11
  %shl432.i = shl i32 %call1.i86.i, 12
  %142 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i88.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %143, i8 noundef zeroext 92) #11
  %shl434.i = shl i32 %call1.i88.i, 8
  %add.i = add i32 %shl434.i, %shl432.i
  %144 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i90.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %145, i8 noundef zeroext 93) #11
  %and436.i = and i32 %call1.i90.i, 240
  %add437.i = or i32 %and436.i, %add.i
  %call438.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name.i11, i32 noundef %add437.i) #14
  %146 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i92.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %147, i8 noundef zeroext 93) #11
  %and446.i = shl i32 %call1.i92.i, 16
  %shl447.i = and i32 %and446.i, 983040
  %148 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i94.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %149, i8 noundef zeroext 94) #11
  %shl449.i = shl i32 %call1.i94.i, 8
  %add450.i = add i32 %shl449.i, %shl447.i
  %150 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i96.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %151, i8 noundef zeroext 95) #11
  %add452.i = add i32 %add450.i, %call1.i96.i
  %call453.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %name.i11, i32 noundef %add452.i) #14
  %152 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i98.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %153, i8 noundef zeroext 4) #11
  %and461.i = and i32 %call1.i98.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461.i)
  %tobool462.not.i = icmp eq i32 %and461.i, 0
  %cond463.i = select i1 %tobool462.not.i, ptr @.str.25, ptr @.str.26
  %call464.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name.i11, ptr noundef nonnull %cond463.i) #14
  %154 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i100.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %155, i8 noundef zeroext 11) #11
  %shr472.i = ashr i32 %call1.i100.i, 6
  %arrayidx473.i = getelementptr [4 x ptr], ptr @adv7842_cp_log_status.deep_color_mode_txt, i32 0, i32 %shr472.i
  %156 = ptrtoint ptr %arrayidx473.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx473.i, align 4
  %call474.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %name.i11, ptr noundef %157) #14
  %158 = ptrtoint ptr %i2c_hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i2c_hdmi.i.i, align 4
  %call1.i.i19 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %159, i8 noundef zeroext 5) #11
  %and.i20 = and i32 %call1.i.i19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %do.end.i, label %for.cond.preheader.i23

for.cond.preheader.i23:                           ; preds = %do.end427.i
  %160 = getelementptr inbounds i8, ptr %buffer.i.i, i32 3
  %161 = getelementptr inbounds [32 x i8], ptr %buffer.i.i, i32 0, i32 2
  %162 = getelementptr inbounds [32 x i8], ptr %buffer.i.i, i32 0, i32 1
  %i2c_infoframe.i.i.i = getelementptr i8, ptr %sd, i32 1468
  br label %for.body.i

do.end.i:                                         ; preds = %do.end427.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %name.i11) #14
  br label %adv7842_cp_log_status.exit

for.body.i:                                       ; preds = %log_infoframe.exit.i.for.body.i_crit_edge, %for.cond.preheader.i23
  %i.06.i = phi i32 [ 0, %for.cond.preheader.i23 ], [ %inc.i, %log_infoframe.exit.i.for.body.i_crit_edge ]
  %arrayidx.i25 = getelementptr [4 x %struct.adv7842_cfg_read_infoframe], ptr @adv7842_log_infoframes.cri, i32 0, i32 %i.06.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer.i.i) #11
  %163 = call ptr @memset(ptr %160, i32 255, i32 29)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #11
  %164 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  %165 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_priv.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 4
  %call1.i.i.i26 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %166, i8 noundef zeroext 96) #11
  %present_mask.i.i = getelementptr [4 x %struct.adv7842_cfg_read_infoframe], ptr @adv7842_log_infoframes.cri, i32 0, i32 %i.06.i, i32 1
  %167 = ptrtoint ptr %present_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %present_mask.i.i, align 4
  %conv.i.i = zext i8 %168 to i32
  %and.i.i27 = and i32 %call1.i.i.i26, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %do.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %head_addr.i.i = getelementptr [4 x %struct.adv7842_cfg_read_infoframe], ptr @adv7842_log_infoframes.cri, i32 0, i32 %i.06.i, i32 2
  %169 = ptrtoint ptr %head_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %head_addr.i.i, align 1
  %171 = ptrtoint ptr %i2c_infoframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i2c_infoframe.i.i.i, align 8
  %call1.i82.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %172, i8 noundef zeroext %170) #11
  %conv8.i.i = trunc i32 %call1.i82.i.i to i8
  %173 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv8.i.i, ptr %buffer.i.i, align 1
  %conv6.1.i.i = add i8 %170, 1
  %174 = ptrtoint ptr %i2c_infoframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i2c_infoframe.i.i.i, align 8
  %call1.i82.1.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %175, i8 noundef zeroext %conv6.1.i.i) #11
  %conv8.1.i.i = trunc i32 %call1.i82.1.i.i to i8
  %176 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv8.1.i.i, ptr %162, align 1
  %conv6.2.i.i = add i8 %170, 2
  %177 = ptrtoint ptr %i2c_infoframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c_infoframe.i.i.i, align 8
  %call1.i82.2.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %178, i8 noundef zeroext %conv6.2.i.i) #11
  %conv8.2.i.i = trunc i32 %call1.i82.2.i.i to i8
  %179 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv8.2.i.i, ptr %161, align 1
  %add11.i.i = add i8 %conv8.2.i.i, 1
  %conv13.i.i = zext i8 %add11.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %add11.i.i)
  %cmp15.i.i = icmp ugt i8 %add11.i.i, 29
  br i1 %cmp15.i.i, label %do.end20.i.i, label %for.cond28.preheader.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i25, align 4
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name.i11, ptr noundef %181) #14
  br label %log_infoframe.exit.i

for.cond28.preheader.i.i:                         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add11.i.i)
  %cmp3086.not.i.i = icmp eq i8 %add11.i.i, 0
  br i1 %cmp3086.not.i.i, label %for.cond28.preheader.i.i.for.end42.i.i_crit_edge, label %for.body32.lr.ph.i.i

for.cond28.preheader.i.i.for.end42.i.i_crit_edge: ; preds = %for.cond28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i.i

for.body32.lr.ph.i.i:                             ; preds = %for.cond28.preheader.i.i
  %payload_addr.i.i = getelementptr [4 x %struct.adv7842_cfg_read_infoframe], ptr @adv7842_log_infoframes.cri, i32 0, i32 %i.06.i, i32 3
  %182 = ptrtoint ptr %payload_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %payload_addr.i.i, align 2
  br label %for.body32.i.i

do.end20.i.i:                                     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i25, align 4
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %name.i11, ptr noundef nonnull @.str.270, ptr noundef %185, i32 noundef %conv13.i.i) #14
  br label %log_infoframe.exit.i

for.body32.i.i:                                   ; preds = %for.body32.i.i.for.body32.i.i_crit_edge, %for.body32.lr.ph.i.i
  %i.187.i.i = phi i32 [ 0, %for.body32.lr.ph.i.i ], [ %inc41.i.i, %for.body32.i.i.for.body32.i.i_crit_edge ]
  %186 = trunc i32 %i.187.i.i to i8
  %conv35.i.i = add i8 %183, %186
  %187 = ptrtoint ptr %i2c_infoframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i2c_infoframe.i.i.i, align 8
  %call1.i84.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %188, i8 noundef zeroext %conv35.i.i) #11
  %conv37.i.i = trunc i32 %call1.i84.i.i to i8
  %add38.i.i = add nuw nsw i32 %i.187.i.i, 3
  %arrayidx39.i.i = getelementptr [32 x i8], ptr %buffer.i.i, i32 0, i32 %add38.i.i
  %189 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv37.i.i, ptr %arrayidx39.i.i, align 1
  %inc41.i.i = add nuw nsw i32 %i.187.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc41.i.i, %conv13.i.i
  br i1 %exitcond.not.i.i, label %for.body32.i.i.for.end42.i.i_crit_edge, label %for.body32.i.i.for.body32.i.i_crit_edge

for.body32.i.i.for.body32.i.i_crit_edge:          ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32.i.i

for.body32.i.i.for.end42.i.i_crit_edge:           ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i.i

for.end42.i.i:                                    ; preds = %for.body32.i.i.for.end42.i.i_crit_edge, %for.cond28.preheader.i.i.for.end42.i.i_crit_edge
  %call44.i.i = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %frame.i.i, ptr noundef nonnull %buffer.i.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %cmp45.i.i = icmp slt i32 %call44.i.i, 0
  br i1 %cmp45.i.i, label %do.end50.i.i, label %if.end56.i.i

do.end50.i.i:                                     ; preds = %for.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i25, align 4
  %call55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %name.i11, ptr noundef nonnull @.str.270, ptr noundef %191) #14
  br label %log_infoframe.exit.i

if.end56.i.i:                                     ; preds = %for.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.277, ptr noundef %dev1.i.i, ptr noundef nonnull %frame.i.i) #11
  br label %log_infoframe.exit.i

log_infoframe.exit.i:                             ; preds = %if.end56.i.i, %do.end50.i.i, %do.end20.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer.i.i) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %log_infoframe.exit.i.adv7842_cp_log_status.exit_crit_edge, label %log_infoframe.exit.i.for.body.i_crit_edge

log_infoframe.exit.i.for.body.i_crit_edge:        ; preds = %log_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

log_infoframe.exit.i.adv7842_cp_log_status.exit_crit_edge: ; preds = %log_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cp_log_status.exit

adv7842_cp_log_status.exit:                       ; preds = %log_infoframe.exit.i.adv7842_cp_log_status.exit_crit_edge, %do.end.i, %do.end355.i.adv7842_cp_log_status.exit_crit_edge, %do.end295.i.adv7842_cp_log_status.exit_crit_edge, %no_cp_signal.exit67.i.adv7842_cp_log_status.exit_crit_edge, %if.end286.i.adv7842_cp_log_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings.i) #11
  br label %cleanup

cleanup:                                          ; preds = %adv7842_cp_log_status.exit, %do.end38.i, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_ioctl(ptr noundef %sd, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  %data.i.i42.i = alloca %union.i2c_smbus_data, align 2
  %data.i.i.i = alloca %union.i2c_smbus_data, align 2
  %timings.i = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22208, i32 %cmd)
  %cond = icmp eq i32 %cmd, 22208
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings.i) #11
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.adv7842_command_ram_test.exit_crit_edge, label %if.end.i

sw.bb.adv7842_command_ram_test.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_command_ram_test.exit

if.end.i:                                         ; preds = %sw.bb
  %sd_ram_size.i = getelementptr inbounds %struct.adv7842_platform_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sd_ram_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_ram_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sd_ram_ddr.i = getelementptr inbounds %struct.adv7842_platform_data, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %sd_ram_ddr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %sd_ram_ddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end6.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef %name.i) #14
  br label %adv7842_command_ram_test.exit

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp sgt i32 %7, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end6.i.main_reset.exit.i_crit_edge

if.end6.i.main_reset.exit.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %main_reset.exit.i

do.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name.i.i, ptr noundef nonnull @.str.404) #14
  br label %main_reset.exit.i

main_reset.exit.i:                                ; preds = %do.end.i.i, %if.end6.i.main_reset.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i.i) #11
  %8 = call ptr @memset(ptr %data.i.i.i, i32 255, i32 34)
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %data.i.i.i, align 2
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i.i.i, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 8
  %call.i.i.i = call i32 @i2c_smbus_xfer(ptr noundef %11, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext -1, i32 noundef 2, ptr noundef nonnull %data.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #11
  call fastcc void @adv7842_rewrite_i2c_addresses(ptr noundef %sd, ptr noundef nonnull %3) #11
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %i2c_afe.i.i.i = getelementptr i8, ptr %sd, i32 1452
  %25 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -128, i8 noundef zeroext -110) #11
  %27 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext -101, i8 noundef zeroext 1) #11
  %29 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext -100, i8 noundef zeroext 96) #11
  %31 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -98, i8 noundef zeroext 2) #11
  %33 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -96, i8 noundef zeroext 11) #11
  %35 = ptrtoint ptr %i2c_afe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_afe.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -61, i8 noundef zeroext 2) #11
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 12, i8 noundef zeroext 64) #11
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 21, i8 noundef zeroext -70) #11
  %i2c_sdp.i.i.i = getelementptr i8, ptr %sd, i32 1440
  %41 = ptrtoint ptr %i2c_sdp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_sdp.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 18, i8 noundef zeroext 0) #11
  %43 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -1, i8 noundef zeroext 4) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  %45 = ptrtoint ptr %i2c_sdp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_sdp.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 18, i8 noundef zeroext 0) #11
  %i2c_sdp_io.i.i.i = getelementptr i8, ptr %sd, i32 1436
  %47 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 42, i8 noundef zeroext 1) #11
  %49 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 124, i8 noundef zeroext 25) #11
  %51 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -128, i8 noundef zeroext -121) #11
  %53 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -127, i8 noundef zeroext 74) #11
  %55 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext -126, i8 noundef zeroext 44) #11
  %57 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext -125, i8 noundef zeroext 14) #11
  %59 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext -124, i8 noundef zeroext -108) #11
  %61 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext -123, i8 noundef zeroext 98) #11
  %63 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 125, i8 noundef zeroext 0) #11
  %65 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 126, i8 noundef zeroext 26) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  %67 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext -39, i8 noundef zeroext -43) #11
  %69 = ptrtoint ptr %i2c_sdp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_sdp.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext 18, i8 noundef zeroext 5) #11
  call void @msleep(i32 noundef 20) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end33.i.i.for.body.i.i_crit_edge, %main_reset.exit.i
  %complete.0109.i.i = phi i32 [ 0, %main_reset.exit.i ], [ %complete.1.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %fail.0108.i.i = phi i32 [ 0, %main_reset.exit.i ], [ %fail.1.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %pass.0107.i.i = phi i32 [ 0, %main_reset.exit.i ], [ %pass.1.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %i.0106.i.i = phi i32 [ 0, %main_reset.exit.i ], [ %inc34.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %i2c_sdp_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_sdp_io.i.i.i, align 8
  %call1.i.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext -37) #11
  %and.i.i = and i32 %call1.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end33.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end33.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %complete.0109.i.i, 1
  %and28.i.i = and i32 %call1.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc31.i.i = add i32 %fail.0108.i.i, 1
  br label %if.end33.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc32.i.i = add i32 %pass.0107.i.i, 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else.i.i, %if.then30.i.i, %for.body.i.i.if.end33.i.i_crit_edge
  %pass.1.i.i = phi i32 [ %pass.0107.i.i, %if.then30.i.i ], [ %inc32.i.i, %if.else.i.i ], [ %pass.0107.i.i, %for.body.i.i.if.end33.i.i_crit_edge ]
  %fail.1.i.i = phi i32 [ %inc31.i.i, %if.then30.i.i ], [ %fail.0108.i.i, %if.else.i.i ], [ %fail.0108.i.i, %for.body.i.i.if.end33.i.i_crit_edge ]
  %complete.1.i.i = phi i32 [ %inc.i.i, %if.then30.i.i ], [ %inc.i.i, %if.else.i.i ], [ %complete.0109.i.i, %for.body.i.i.if.end33.i.i_crit_edge ]
  call void @msleep(i32 noundef 20) #11
  %inc34.i.i = add nuw nsw i32 %i.0106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, 10
  br i1 %exitcond.not.i.i, label %do.body.i.i, label %if.end33.i.i.for.body.i.i_crit_edge

if.end33.i.i.for.body.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %if.end33.i.i
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp35.i.i = icmp sgt i32 %73, 0
  br i1 %cmp35.i.i, label %adv7842_ddr_ram_test.exit.i, label %adv7842_ddr_ram_test.exit.thread.i

adv7842_ddr_ram_test.exit.thread.i:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete.1.i.i)
  %tobool43.not.i53.i = icmp ne i32 %complete.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail.1.i.i)
  %tobool44.not.i54.i = icmp eq i32 %fail.1.i.i, 0
  %or.cond.i55.i = select i1 %tobool43.not.i53.i, i1 %tobool44.not.i54.i, i1 false
  %retval.0.i56.i = select i1 %or.cond.i55.i, i32 0, i32 -5
  %74 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i, align 4
  br label %main_reset.exit51.i

adv7842_ddr_ram_test.exit.i:                      ; preds = %do.body.i.i
  %name.i40.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef %name.i40.i, i32 noundef %complete.1.i.i, i32 noundef 10, i32 noundef %pass.1.i.i, i32 noundef %fail.1.i.i) #14
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete.1.i.i)
  %tobool43.not.i.i = icmp ne i32 %complete.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail.1.i.i)
  %tobool44.not.i.i = icmp eq i32 %fail.1.i.i, 0
  %or.cond.i.i = select i1 %tobool43.not.i.i, i1 %tobool44.not.i.i, i1 false
  %retval.0.i.i = select i1 %or.cond.i.i, i32 0, i32 -5
  %76 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i44.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp.i44.i, label %do.end.i47.i, label %adv7842_ddr_ram_test.exit.i.main_reset.exit51.i_crit_edge

adv7842_ddr_ram_test.exit.i.main_reset.exit51.i_crit_edge: ; preds = %adv7842_ddr_ram_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %main_reset.exit51.i

do.end.i47.i:                                     ; preds = %adv7842_ddr_ram_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name.i40.i, ptr noundef nonnull @.str.404) #14
  br label %main_reset.exit51.i

main_reset.exit51.i:                              ; preds = %do.end.i47.i, %adv7842_ddr_ram_test.exit.i.main_reset.exit51.i_crit_edge, %adv7842_ddr_ram_test.exit.thread.i
  %78 = phi ptr [ %75, %adv7842_ddr_ram_test.exit.thread.i ], [ %77, %adv7842_ddr_ram_test.exit.i.main_reset.exit51.i_crit_edge ], [ %77, %do.end.i47.i ]
  %retval.0.i58.i = phi i32 [ %retval.0.i56.i, %adv7842_ddr_ram_test.exit.thread.i ], [ %retval.0.i.i, %adv7842_ddr_ram_test.exit.i.main_reset.exit51.i_crit_edge ], [ %retval.0.i.i, %do.end.i47.i ]
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i42.i) #11
  %79 = call ptr @memset(ptr %data.i.i42.i, i32 255, i32 34)
  %80 = ptrtoint ptr %data.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -128, ptr %data.i.i42.i, align 2
  %adapter.i.i48.i = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %81 = ptrtoint ptr %adapter.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter.i.i48.i, align 8
  %addr.i.i49.i = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %addr.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %addr.i.i49.i, align 2
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %78, align 8
  %call.i.i50.i = call i32 @i2c_smbus_xfer(ptr noundef %82, i16 noundef zeroext %84, i16 noundef zeroext %86, i8 noundef zeroext 0, i8 noundef zeroext -1, i32 noundef 2, ptr noundef nonnull %data.i.i42.i) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i42.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #11
  call fastcc void @adv7842_rewrite_i2c_addresses(ptr noundef %sd, ptr noundef nonnull %3) #11
  %call8.i = call fastcc i32 @adv7842_core_init(ptr noundef %sd) #11
  %i2c_hdmi.i.i.i.i = getelementptr i8, ptr %sd, i32 1456
  %92 = ptrtoint ptr %i2c_hdmi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_hdmi.i.i.i.i, align 4
  %call1.i.i.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 26) #11
  %94 = trunc i32 %call1.i.i.i.i to i8
  %conv2.i.i.i = or i8 %94, 16
  %95 = ptrtoint ptr %i2c_hdmi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_hdmi.i.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %96, i8 noundef zeroext 26, i8 noundef zeroext %conv2.i.i.i) #11
  call void @msleep(i32 noundef 16) #11
  %97 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %98, i8 noundef zeroext 21, i8 noundef zeroext -66) #11
  %99 = ptrtoint ptr %i2c_hdmi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c_hdmi.i.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext 1, i8 noundef zeroext 120) #11
  %vid_std_select.i = getelementptr i8, ptr %sd, i32 644
  %101 = ptrtoint ptr %vid_std_select.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vid_std_select.i, align 8
  call fastcc void @select_input(ptr noundef %sd, i32 noundef %102) #11
  call fastcc void @enable_input(ptr noundef %sd) #11
  %call9.i = call fastcc i32 @edid_write_vga_segment(ptr noundef %sd) #11
  %call10.i = call fastcc i32 @edid_write_hdmi_segment(ptr noundef %sd, i8 noundef zeroext 0) #11
  %call11.i = call fastcc i32 @edid_write_hdmi_segment(ptr noundef %sd, i8 noundef zeroext 1) #11
  %timings12.i = getelementptr i8, ptr %sd, i32 512
  %103 = call ptr @memcpy(ptr %timings.i, ptr %timings12.i, i32 132)
  %104 = call ptr @memset(ptr %timings12.i, i32 0, i32 132)
  %call14.i = call i32 @adv7842_s_dv_timings(ptr noundef %sd, ptr noundef nonnull %timings.i) #11
  br label %adv7842_command_ram_test.exit

adv7842_command_ram_test.exit:                    ; preds = %main_reset.exit51.i, %do.end.i, %sw.bb.adv7842_command_ram_test.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i58.i, %main_reset.exit51.i ], [ -22, %do.end.i ], [ -19, %sw.bb.adv7842_command_ram_test.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings.i) #11
  br label %return

return:                                           ; preds = %adv7842_command_ram_test.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %adv7842_command_ram_test.exit ], [ -25, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.435)
  switch i56 %trunc, label %do.end [
    i56 0, label %sw.bb
    i56 1, label %sw.bb4
    i56 2, label %sw.bb11
    i56 3, label %sw.bb18
    i56 4, label %sw.bb25
    i56 5, label %sw.bb32
    i56 6, label %sw.bb39
    i56 7, label %sw.bb46
    i56 8, label %sw.bb53
    i56 9, label %sw.bb60
    i56 10, label %sw.bb67
    i56 11, label %sw.bb74
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %2 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv) #11
  %conv3 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv3, ptr %val, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = trunc i64 %2 to i8
  %i2c_avlink.i = getelementptr i8, ptr %sd, i32 1476
  %7 = ptrtoint ptr %i2c_avlink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_avlink.i, align 8
  %call1.i122 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext %conv7) #11
  %conv9 = sext i32 %call1.i122 to i64
  %val10 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val10 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %conv9, ptr %val10, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = trunc i64 %2 to i8
  %i2c_cec.i = getelementptr i8, ptr %sd, i32 1472
  %10 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cec.i, align 4
  %call1.i123 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %conv14) #11
  %conv16 = sext i32 %call1.i123 to i64
  %val17 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %12 = ptrtoint ptr %val17 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv16, ptr %val17, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv21 = trunc i64 %2 to i8
  %i2c_infoframe.i = getelementptr i8, ptr %sd, i32 1468
  %13 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_infoframe.i, align 8
  %call1.i124 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext %conv21) #11
  %conv23 = sext i32 %call1.i124 to i64
  %val24 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %15 = ptrtoint ptr %val24 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %conv23, ptr %val24, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv28 = trunc i64 %2 to i8
  %i2c_sdp_io.i = getelementptr i8, ptr %sd, i32 1436
  %16 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_sdp_io.i, align 8
  %call1.i125 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %conv28) #11
  %conv30 = sext i32 %call1.i125 to i64
  %val31 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %18 = ptrtoint ptr %val31 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %conv30, ptr %val31, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv35 = trunc i64 %2 to i8
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %19 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i126 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext %conv35) #11
  %conv37 = sext i32 %call1.i126 to i64
  %val38 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %21 = ptrtoint ptr %val38 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %conv37, ptr %val38, align 1
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv42 = trunc i64 %2 to i8
  %i2c_afe.i = getelementptr i8, ptr %sd, i32 1452
  %22 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_afe.i, align 8
  %call1.i127 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext %conv42) #11
  %conv44 = sext i32 %call1.i127 to i64
  %val45 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %24 = ptrtoint ptr %val45 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %conv44, ptr %val45, align 1
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv49 = trunc i64 %2 to i8
  %i2c_repeater.i = getelementptr i8, ptr %sd, i32 1460
  %25 = ptrtoint ptr %i2c_repeater.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_repeater.i, align 8
  %call1.i128 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext %conv49) #11
  %conv51 = sext i32 %call1.i128 to i64
  %val52 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %27 = ptrtoint ptr %val52 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %conv51, ptr %val52, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = trunc i64 %2 to i8
  %i2c_edid.i = getelementptr i8, ptr %sd, i32 1464
  %28 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_edid.i, align 4
  %call1.i129 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext %conv56) #11
  %conv58 = sext i32 %call1.i129 to i64
  %val59 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %30 = ptrtoint ptr %val59 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %conv58, ptr %val59, align 1
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv63 = trunc i64 %2 to i8
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %31 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i130 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext %conv63) #11
  %conv65 = sext i32 %call1.i130 to i64
  %val66 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %33 = ptrtoint ptr %val66 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %conv65, ptr %val66, align 1
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv70 = trunc i64 %2 to i8
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %34 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i131 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext %conv70) #11
  %conv72 = sext i32 %call1.i131 to i64
  %val73 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %36 = ptrtoint ptr %val73 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %conv72, ptr %val73, align 1
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv77 = trunc i64 %2 to i8
  %i2c_vdp.i = getelementptr i8, ptr %sd, i32 1448
  %37 = ptrtoint ptr %i2c_vdp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_vdp.i, align 4
  %call1.i132 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext %conv77) #11
  %conv79 = sext i32 %call1.i132 to i64
  %val80 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %39 = ptrtoint ptr %val80 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %conv79, ptr %val80, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef %name, i64 noundef %2) #14
  tail call fastcc void @adv7842_inv_register(ptr noundef %sd)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb74, %sw.bb67, %sw.bb60, %sw.bb53, %sw.bb46, %sw.bb39, %sw.bb32, %sw.bb25, %sw.bb18, %sw.bb11, %sw.bb4, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %val1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %0 = ptrtoint ptr %val1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %val1, align 1
  %conv = trunc i64 %1 to i8
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg2, align 1
  %shr = lshr i64 %3, 8
  %trunc = trunc i64 %shr to i56
  %4 = zext i56 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.436)
  switch i56 %trunc, label %do.end [
    i56 0, label %sw.bb
    i56 1, label %sw.bb6
    i56 2, label %sw.bb11
    i56 3, label %sw.bb16
    i56 4, label %sw.bb21
    i56 5, label %sw.bb26
    i56 6, label %sw.bb31
    i56 7, label %sw.bb36
    i56 8, label %sw.bb41
    i56 9, label %sw.bb46
    i56 10, label %sw.bb51
    i56 11, label %sw.bb56
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv5, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = trunc i64 %3 to i8
  %i2c_avlink.i = getelementptr i8, ptr %sd, i32 1476
  %7 = ptrtoint ptr %i2c_avlink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_avlink.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %conv9, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = trunc i64 %3 to i8
  %i2c_cec.i = getelementptr i8, ptr %sd, i32 1472
  %9 = ptrtoint ptr %i2c_cec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_cec.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %conv14, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv19 = trunc i64 %3 to i8
  %i2c_infoframe.i = getelementptr i8, ptr %sd, i32 1468
  %11 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_infoframe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext %conv19, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv24 = trunc i64 %3 to i8
  %i2c_sdp_io.i = getelementptr i8, ptr %sd, i32 1436
  %13 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %conv24, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv29 = trunc i64 %3 to i8
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %15 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext %conv29, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv34 = trunc i64 %3 to i8
  %i2c_afe.i = getelementptr i8, ptr %sd, i32 1452
  %17 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext %conv34, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv39 = trunc i64 %3 to i8
  %i2c_repeater.i = getelementptr i8, ptr %sd, i32 1460
  %19 = ptrtoint ptr %i2c_repeater.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_repeater.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext %conv39, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv44 = trunc i64 %3 to i8
  %i2c_edid.i = getelementptr i8, ptr %sd, i32 1464
  %21 = ptrtoint ptr %i2c_edid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_edid.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext %conv44, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv49 = trunc i64 %3 to i8
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %23 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext %conv49, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv54 = trunc i64 %3 to i8
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %25 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext %conv54, i8 noundef zeroext %conv) #11
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv59 = trunc i64 %3 to i8
  %i2c_vdp.i = getelementptr i8, ptr %sd, i32 1448
  %27 = ptrtoint ptr %i2c_vdp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_vdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext %conv59, i8 noundef zeroext %conv) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef %name, i64 noundef %3) #14
  tail call fastcc void @adv7842_inv_register(ptr noundef %sd)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb56, %sw.bb51, %sw.bb46, %sw.bb41, %sw.bb36, %sw.bb31, %sw.bb26, %sw.bb21, %sw.bb16, %sw.bb11, %sw.bb6, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_isr(ptr noundef %sd, i32 noundef %status, ptr noundef writeonly %handled) #2 align 64 {
entry:
  %msg.i = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 70, i8 noundef zeroext 0) #11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 90, i8 noundef zeroext 0) #11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 115, i8 noundef zeroext 0) #11
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 120, i8 noundef zeroext 0) #11
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -96, i8 noundef zeroext 0) #11
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 105, i8 noundef zeroext 0) #11
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 67) #11
  %conv = trunc i32 %call1.i to i8
  %14 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i223 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 87) #11
  %conv3 = trunc i32 %call1.i223 to i8
  %16 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i225 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 112) #11
  %conv6 = trunc i32 %call1.i225 to i8
  %18 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i227 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 117) #11
  %conv9 = trunc i32 %call1.i227 to i8
  %20 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i229 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext -99) #11
  %conv12 = trunc i32 %call1.i229 to i8
  %22 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i231 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 102) #11
  %conv15 = trunc i32 %call1.i231 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 68, i8 noundef zeroext %conv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool21.not = icmp eq i8 %conv3, 0
  br i1 %tobool21.not, label %if.end.if.end25_crit_edge, label %if.then22

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 88, i8 noundef zeroext %conv3) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool27.not = icmp eq i8 %conv6, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 113, i8 noundef zeroext %conv6) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv9)
  %tobool33.not = icmp eq i8 %conv9, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 118, i8 noundef zeroext %conv9) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %tobool39.not = icmp eq i8 %conv12, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext -98, i8 noundef zeroext %conv12) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv15)
  %tobool45.not = icmp eq i8 %conv15, 0
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %if.then46

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 103, i8 noundef zeroext %conv15) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %36 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 70, i8 noundef zeroext -100) #11
  %38 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 90, i8 noundef zeroext 16) #11
  %40 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 115, i8 noundef zeroext 3) #11
  %42 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 120, i8 noundef zeroext 3) #11
  %44 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -96, i8 noundef zeroext 9) #11
  %46 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 105, i8 noundef zeroext 8) #11
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp = icmp sgt i32 %48, 0
  br i1 %cmp, label %do.end, label %if.end49.do.end68_crit_edge

if.end49.do.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

do.end:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv54 = and i32 %call1.i, 255
  %conv56 = and i32 %call1.i223, 255
  %conv58 = and i32 %call1.i225, 255
  %conv60 = and i32 %call1.i227, 255
  %conv62 = and i32 %call1.i229, 255
  %conv64 = and i32 %call1.i231, 255
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.366, ptr noundef %name, ptr noundef nonnull @.str.367, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv64) #14
  br label %do.end68

do.end68:                                         ; preds = %do.end, %if.end49.do.end68_crit_edge
  %conv71 = and i32 %call1.i, 156
  %mode = getelementptr i8, ptr %sd, i32 508
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp72 = icmp eq i32 %50, 0
  %and77 = and i32 %call1.i223, 48
  %and80 = and i32 %call1.i229, 9
  %or = or i32 %and80, %and77
  %fmt_change_sdp.0 = select i1 %cmp72, i32 %or, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp.i = icmp eq i32 %50, 3
  %and87 = and i32 %call1.i227, 3
  %fmt_change_digital.0 = select i1 %cmp.i, i32 %and87, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv71)
  %tobool92.not = icmp eq i32 %conv71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fmt_change_digital.0)
  %tobool94.not = icmp eq i32 %fmt_change_digital.0, 0
  %or.cond = select i1 %tobool92.not, i1 %tobool94.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fmt_change_sdp.0)
  %tobool97.not = icmp eq i32 %fmt_change_sdp.0, 0
  %or.cond221 = select i1 %or.cond, i1 %tobool97.not, i1 false
  br i1 %or.cond221, label %do.end68.if.end119_crit_edge, label %do.body99

do.end68.if.end119_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

do.body99:                                        ; preds = %do.end68
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp100 = icmp sgt i32 %51, 0
  br i1 %cmp100, label %do.end105, label %do.body99.do.end115_crit_edge

do.body99.do.end115_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %name107 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369, ptr noundef %name107, ptr noundef nonnull @.str.367, i32 noundef %conv71, i32 noundef %fmt_change_digital.0, i32 noundef %fmt_change_sdp.0) #14
  br label %do.end115

do.end115:                                        ; preds = %do.end105, %do.body99.do.end115_crit_edge
  tail call void @v4l2_subdev_notify_event(ptr noundef %sd, ptr noundef nonnull @adv7842_ev_fmt) #11
  %tobool116.not = icmp eq ptr %handled, null
  br i1 %tobool116.not, label %do.end115.if.end119_crit_edge, label %if.then117

do.end115.if.end119_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then117:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %handled, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %do.end115.if.end119_crit_edge, %do.end68.if.end119_crit_edge
  %and122 = and i32 %call1.i231, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end119.if.end145_crit_edge, label %do.body125

if.end119.if.end145_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

do.body125:                                       ; preds = %if.end119
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp126 = icmp sgt i32 %53, 0
  br i1 %cmp126, label %do.end131, label %do.body125.do.end141_crit_edge

do.body125.do.end141_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  %name133 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %54 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i240 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 101) #11
  %and136 = and i32 %call1.i240, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %cond = select i1 %tobool137.not, ptr @.str.374, ptr @.str.190
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, ptr noundef %name133, ptr noundef nonnull @.str.367, ptr noundef nonnull %cond) #14
  br label %do.end141

do.end141:                                        ; preds = %do.end131, %do.body125.do.end141_crit_edge
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %sd)
  %tobool142.not = icmp eq ptr %handled, null
  br i1 %tobool142.not, label %do.end141.if.end145_crit_edge, label %if.then143

do.end141.if.end145_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then143:                                       ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %handled, align 1
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %do.end141.if.end145_crit_edge, %if.end119.if.end145_crit_edge
  %57 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext -109) #11
  %59 = trunc i32 %call1.i.i to i8
  %conv.i = and i8 %59, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.not.i, label %if.end145.adv7842_cec_isr.exit_crit_edge, label %do.body.i

if.end145.adv7842_cec_isr.exit_crit_edge:         ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cec_isr.exit

do.body.i:                                        ; preds = %if.end145
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i242 = icmp sgt i32 %60, 0
  br i1 %cmp.i242, label %do.end.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv4.i = zext i8 %conv.i to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, ptr noundef %name.i, ptr noundef nonnull @.str.380, i32 noundef %conv4.i) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %i2c_cec.i.i.i = getelementptr i8, ptr %sd, i32 1472
  %61 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_cec.i.i.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %62, i8 noundef zeroext 17) #11
  %and.i.i = and i32 %call1.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end8.i.i

do.body.i.i:                                      ; preds = %do.end8.i
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp2.i.i = icmp sgt i32 %63, 0
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge

do.body.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cec_tx_raw_status.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.381, ptr noundef %name.i.i, ptr noundef nonnull @.str.382) #14
  br label %adv7842_cec_tx_raw_status.exit.i

if.end8.i.i:                                      ; preds = %do.end8.i
  %conv.i.i = zext i8 %conv.i to i32
  %and9.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.i, label %do.body11.i.i

do.body11.i.i:                                    ; preds = %if.end8.i.i
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp12.i.i = icmp sgt i32 %64, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %do.body11.i.i.do.end24.i.i_crit_edge

do.body11.i.i.do.end24.i.i_crit_edge:             ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i.i

do.end17.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name19.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.384, ptr noundef %name19.i.i, ptr noundef nonnull @.str.382) #14
  br label %do.end24.i.i

do.end24.i.i:                                     ; preds = %do.end17.i.i, %do.body11.i.i.do.end24.i.i_crit_edge
  %cec_adap.i.i = getelementptr i8, ptr %sd, i32 1500
  %65 = ptrtoint ptr %cec_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cec_adap.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %66, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i.i.i) #11
  br label %adv7842_cec_tx_raw_status.exit.i

if.end25.i.i:                                     ; preds = %if.end8.i.i
  %and27.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end61.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp31.i.i = icmp sgt i32 %67, 0
  br i1 %cmp31.i.i, label %do.end36.i.i, label %if.then29.i.i.do.end43.i.i_crit_edge

if.then29.i.i.do.end43.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i.i

do.end36.i.i:                                     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name38.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, ptr noundef %name38.i.i, ptr noundef nonnull @.str.382) #14
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %do.end36.i.i, %if.then29.i.i.do.end43.i.i_crit_edge
  %68 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_cec.i.i.i, align 4
  %call1.i98.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 20) #11
  %70 = trunc i32 %call1.i98.i.i to i8
  %conv46.i.i = and i8 %70, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv46.i.i)
  %tobool47.not.i.i = icmp eq i8 %conv46.i.i, 0
  %spec.select.i.i = select i1 %tobool47.not.i.i, i8 32, i8 36
  %71 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_cec.i.i.i, align 4
  %call1.i100.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 20) #11
  %73 = lshr i32 %call1.i100.i.i, 4
  %conv53.i.i = trunc i32 %73 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv53.i.i)
  %tobool54.not.i.i = icmp eq i8 %conv53.i.i, 0
  %74 = or i8 %spec.select.i.i, 8
  %status.1.i.i = select i1 %tobool54.not.i.i, i8 %spec.select.i.i, i8 %74
  %cec_adap60.i.i = getelementptr i8, ptr %sd, i32 1500
  %75 = ptrtoint ptr %cec_adap60.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cec_adap60.i.i, align 8
  %call.i101.i.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %76, i8 noundef zeroext %status.1.i.i, i8 noundef zeroext 0, i8 noundef zeroext %conv46.i.i, i8 noundef zeroext %conv53.i.i, i8 noundef zeroext 0, i64 noundef %call.i101.i.i) #11
  br label %adv7842_cec_tx_raw_status.exit.i

if.end61.i.i:                                     ; preds = %if.end25.i.i
  %and63.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end61.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge, label %do.body66.i.i

if.end61.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cec_tx_raw_status.exit.i

do.body66.i.i:                                    ; preds = %if.end61.i.i
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp67.i.i = icmp sgt i32 %77, 0
  br i1 %cmp67.i.i, label %do.end72.i.i, label %do.body66.i.i.do.end79.i.i_crit_edge

do.body66.i.i.do.end79.i.i_crit_edge:             ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79.i.i

do.end72.i.i:                                     ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name74.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call76.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, ptr noundef %name74.i.i, ptr noundef nonnull @.str.382) #14
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %do.end72.i.i, %do.body66.i.i.do.end79.i.i_crit_edge
  %cec_adap80.i.i = getelementptr i8, ptr %sd, i32 1500
  %78 = ptrtoint ptr %cec_adap80.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cec_adap80.i.i, align 8
  %call.i102.i.i = tail call i64 @ktime_get() #11
  tail call void @cec_transmit_done_ts(ptr noundef %79, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i102.i.i) #11
  br label %adv7842_cec_tx_raw_status.exit.i

adv7842_cec_tx_raw_status.exit.i:                 ; preds = %do.end79.i.i, %if.end61.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge, %do.end43.i.i, %do.end24.i.i, %do.end.i.i, %do.body.i.i.adv7842_cec_tx_raw_status.exit.i_crit_edge
  %and10.i = and i32 %call1.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %adv7842_cec_tx_raw_status.exit.i.if.end36.i_crit_edge, label %if.then12.i

adv7842_cec_tx_raw_status.exit.i.if.end36.i_crit_edge: ; preds = %adv7842_cec_tx_raw_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then12.i:                                      ; preds = %adv7842_cec_tx_raw_status.exit.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %80 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  %81 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_cec.i.i.i, align 4
  %call1.i56.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %82, i8 noundef zeroext 37) #11
  %and15.i = and i32 %call1.i56.i, 31
  %len.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 2
  %83 = tail call i32 @llvm.umin.i32(i32 %and15.i, i32 16) #11
  %84 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool23.not.i = icmp eq i32 %83, 0
  br i1 %tobool23.not.i, label %if.then12.i.if.end35.i_crit_edge, label %if.then12.i.for.body.i_crit_edge

if.then12.i.for.body.i_crit_edge:                 ; preds = %if.then12.i
  br label %for.body.i

if.then12.i.if.end35.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then12.i.for.body.i_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then12.i.for.body.i_crit_edge ]
  %85 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_cec.i.i.i, align 4
  %87 = trunc i32 %indvars.iv to i8
  %88 = add i8 %87, 21
  %call1.i58.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %86, i8 noundef zeroext %88) #11
  %conv32.i = trunc i32 %call1.i58.i to i8
  %arrayidx.i = getelementptr %struct.cec_msg, ptr %msg.i, i32 0, i32 6, i32 %indvars.iv
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv32.i, ptr %arrayidx.i, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %83
  br i1 %exitcond.not, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %i2c_cec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_cec.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 38, i8 noundef zeroext 1) #11
  %cec_adap.i = getelementptr i8, ptr %sd, i32 1500
  %92 = ptrtoint ptr %cec_adap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cec_adap.i, align 8
  %call.i.i = tail call i64 @ktime_get() #11
  call void @cec_received_msg_ts(ptr noundef %93, ptr noundef nonnull %msg.i, i64 noundef %call.i.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %for.end.i, %if.then12.i.if.end35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end35.i, %adv7842_cec_tx_raw_status.exit.i.if.end36.i_crit_edge
  %94 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -108, i8 noundef zeroext %conv.i) #11
  %tobool38.not.i = icmp eq ptr %handled, null
  br i1 %tobool38.not.i, label %if.end36.i.adv7842_cec_isr.exit_crit_edge, label %if.then39.i

if.end36.i.adv7842_cec_isr.exit_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_cec_isr.exit

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %handled, align 1
  br label %adv7842_cec_isr.exit

adv7842_cec_isr.exit:                             ; preds = %if.then39.i, %if.end36.i.adv7842_cec_isr.exit_crit_edge, %if.end145.adv7842_cec_isr.exit_crit_edge
  %and148 = and i32 %call1.i225, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %adv7842_cec_isr.exit.if.end169_crit_edge, label %do.body151

adv7842_cec_isr.exit.if.end169_crit_edge:         ; preds = %adv7842_cec_isr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.body151:                                       ; preds = %adv7842_cec_isr.exit
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp152 = icmp sgt i32 %97, 0
  br i1 %cmp152, label %do.end157, label %do.body151.do.end164_crit_edge

do.body151.do.end164_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end164

do.end157:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #13
  %name159 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.376, ptr noundef %name159, ptr noundef nonnull @.str.367) #14
  br label %do.end164

do.end164:                                        ; preds = %do.end157, %do.body151.do.end164_crit_edge
  %call165 = call fastcc i32 @adv7842_s_detect_tx_5v_ctrl(ptr noundef %sd)
  %tobool166.not = icmp eq ptr %handled, null
  br i1 %tobool166.not, label %do.end164.if.end169_crit_edge, label %if.then167

do.end164.if.end169_crit_edge:                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then167:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %handled, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %do.end164.if.end169_crit_edge, %adv7842_cec_isr.exit.if.end169_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.437)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #11
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

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
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %14, i32 noundef %18, i32 noundef %conv, i32 noundef %i.038.lcssa.ph) #14
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
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef %24, i32 noundef %28, i32 noundef %conv6.i, i32 noundef %conv6.i, i32 noundef %conv9.i) #14
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
  %call10.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef %41, i32 noundef %45, i32 noundef %conv6.i.1, i32 noundef %conv6.i.1, i32 noundef %conv9.i) #14
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
  %call10.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef %58, i32 noundef %62, i32 noundef %conv6.i.2, i32 noundef %conv6.i.2, i32 noundef %conv9.i) #14
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
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %68, i32 noundef %72, i32 noundef %conv16) #14
  br label %cleanup18

cleanup18:                                        ; preds = %for.inc.2, %do.end, %if.then
  %retval.2 = phi i32 [ -5, %for.inc.2 ], [ %conv.i41, %do.end ], [ %conv.i, %if.then ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_query_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %stdi = alloca %struct.stdi_readback, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %stdi) #11
  %1 = getelementptr inbounds i8, ptr %stdi, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 2
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.228) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = call ptr @memset(ptr %timings, i32 0, i32 132)
  %mode = getelementptr i8, ptr %sd, i32 508
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #11
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %status.i, align 4, !annotation !793
  %call.i = call i32 @adv7842_g_input_status(ptr noundef %sd, ptr noundef nonnull %status.i) #11
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %do.body.i.if.then9.sink.split_crit_edge, label %do.body.i.if.then9_crit_edge

do.body.i.if.then9_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

do.body.i.if.then9.sink.split_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.sink.split

if.end6.i:                                        ; preds = %if.end7
  %i2c_cp.i.i = getelementptr i8, ptr %sd, i32 1444
  %11 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -79) #11
  %and8.i = shl i32 %call1.i.i, 8
  %shl.i = and i32 %and8.i, 16128
  %13 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i144.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext -78) #11
  %or.i = or i32 %shl.i, %call1.i144.i
  %conv.i = trunc i32 %or.i to i16
  %15 = ptrtoint ptr %stdi to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %stdi, align 2
  %16 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i146.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext -77) #11
  %and11.i = shl i32 %call1.i146.i, 8
  %shl12.i = and i32 %and11.i, 1792
  %18 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i148.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext -76) #11
  %or14.i = or i32 %shl12.i, %call1.i148.i
  %conv15.i = trunc i32 %or14.i to i16
  %lcf.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 1
  %20 = ptrtoint ptr %lcf.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv15.i, ptr %lcf.i, align 2
  %21 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i150.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext -77) #11
  %23 = lshr i32 %call1.i150.i, 3
  %conv17.i = trunc i32 %23 to i16
  %lcvs.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 2
  %24 = ptrtoint ptr %lcvs.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv17.i, ptr %lcvs.i, align 2
  %25 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i152.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext -75) #11
  %and19.i = and i32 %call1.i152.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end6.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.else.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %27 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i154.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext -75) #11
  %and22.i = and i32 %call1.i154.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 1
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %29 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i156.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext -75) #11
  %and27.i = and i32 %call1.i156.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.then25.i.cond.end.i_crit_edge, label %cond.true.i

if.then25.i.cond.end.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i158.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext -75) #11
  %and30.i = and i32 %call1.i158.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %phi.cast.i = select i1 %tobool31.not.i, i8 45, i8 43
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then25.i.cond.end.i_crit_edge
  %cond32.i = phi i8 [ %phi.cast.i, %cond.true.i ], [ 120, %if.then25.i.cond.end.i_crit_edge ]
  %hs_pol.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 3
  %33 = ptrtoint ptr %hs_pol.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %cond32.i, ptr %hs_pol.i, align 2
  %34 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i160.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext -75) #11
  %and35.i = and i32 %call1.i160.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %cond.end.i.if.end48.i_crit_edge, label %cond.true37.i

cond.end.i.if.end48.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

cond.true37.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i162.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext -75) #11
  %and39.i = and i32 %call1.i162.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %phi.cast142.i = select i1 %tobool40.not.i, i8 45, i8 43
  br label %if.end48.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end6.i.if.else.i_crit_edge
  %hs_pol46.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 3
  %38 = ptrtoint ptr %hs_pol46.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 120, ptr %hs_pol46.i, align 2
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else.i, %cond.true37.i, %cond.end.i.if.end48.i_crit_edge
  %.sink.i = phi i8 [ 120, %if.else.i ], [ %phi.cast142.i, %cond.true37.i ], [ 120, %cond.end.i.if.end48.i_crit_edge ]
  %vs_pol47.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 4
  %39 = ptrtoint ptr %vs_pol47.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink.i, ptr %vs_pol47.i, align 1
  %40 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i164.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext -79) #11
  %and50.i = and i32 %call1.i164.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %interlaced.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 5
  %and50.lobit.i = lshr exact i32 %and50.i, 6
  %42 = trunc i32 %and50.lobit.i to i8
  %43 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %interlaced.i, align 2
  %conv55.i = and i32 %or14.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 239, i16 %conv15.i)
  %cmp56.i = icmp ult i16 %conv15.i, 239
  br i1 %cmp56.i, label %if.end48.i.do.body68.i_crit_edge, label %lor.lhs.false.i

if.end48.i.do.body68.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i:                                  ; preds = %if.end48.i
  %conv59.i = and i32 %or.i, 65535
  %44 = zext i16 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.438)
  switch i16 %conv.i, label %do.body83.i [
    i16 16383, label %lor.lhs.false.i.do.body68.i_crit_edge
    i16 7, label %lor.lhs.false.i.do.body68.i_crit_edge405
    i16 6, label %lor.lhs.false.i.do.body68.i_crit_edge406
    i16 5, label %lor.lhs.false.i.do.body68.i_crit_edge407
    i16 4, label %lor.lhs.false.i.do.body68.i_crit_edge408
    i16 3, label %lor.lhs.false.i.do.body68.i_crit_edge409
    i16 2, label %lor.lhs.false.i.do.body68.i_crit_edge410
    i16 1, label %lor.lhs.false.i.do.body68.i_crit_edge411
    i16 0, label %lor.lhs.false.i.do.body68.i_crit_edge412
  ]

lor.lhs.false.i.do.body68.i_crit_edge412:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge411:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge410:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge409:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge408:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge407:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge406:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge405:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

lor.lhs.false.i.do.body68.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68.i

do.body68.i:                                      ; preds = %lor.lhs.false.i.do.body68.i_crit_edge, %lor.lhs.false.i.do.body68.i_crit_edge405, %lor.lhs.false.i.do.body68.i_crit_edge406, %lor.lhs.false.i.do.body68.i_crit_edge407, %lor.lhs.false.i.do.body68.i_crit_edge408, %lor.lhs.false.i.do.body68.i_crit_edge409, %lor.lhs.false.i.do.body68.i_crit_edge410, %lor.lhs.false.i.do.body68.i_crit_edge411, %lor.lhs.false.i.do.body68.i_crit_edge412, %if.end48.i.do.body68.i_crit_edge
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp69.i = icmp sgt i32 %45, 1
  br i1 %cmp69.i, label %do.body68.i.if.then9.sink.split_crit_edge, label %do.body68.i.if.then9_crit_edge

do.body68.i.if.then9_crit_edge:                   ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

do.body68.i.if.then9.sink.split_crit_edge:        ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.sink.split

do.body83.i:                                      ; preds = %lor.lhs.false.i
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp84.i = icmp sgt i32 %46, 1
  br i1 %cmp84.i, label %do.end89.i, label %do.body83.i.if.end23_crit_edge

do.body83.i.if.end23_crit_edge:                   ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end89.i:                                       ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  %name91.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv98.i = and i32 %23, 65535
  %hs_pol99.i = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 3
  %47 = ptrtoint ptr %hs_pol99.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hs_pol99.i, align 2
  %conv100.i = zext i8 %48 to i32
  %conv102.i = zext i8 %.sink.i to i32
  %cond106.i = select i1 %tobool51.not.i, ptr @.str.162, ptr @.str.161
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef %name91.i, ptr noundef nonnull @.str.246, i32 noundef %conv55.i, i32 noundef %conv59.i, i32 noundef %conv98.i, i32 noundef %conv100.i, i32 noundef %conv102.i, ptr noundef nonnull %cond106.i) #14
  br label %if.end23

if.then9.sink.split:                              ; preds = %do.body68.i.if.then9.sink.split_crit_edge, %do.body.i.if.then9.sink.split_crit_edge
  %.str.245.sink = phi ptr [ @.str.245, %do.body.i.if.then9.sink.split_crit_edge ], [ @.str.248, %do.body68.i.if.then9.sink.split_crit_edge ]
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.245.sink, ptr noundef %name.i, ptr noundef nonnull @.str.246) #14
  br label %if.then9

if.then9:                                         ; preds = %if.then9.sink.split, %do.body68.i.if.then9_crit_edge, %do.body.i.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #11
  %restart_stdi_once = getelementptr i8, ptr %sd, i32 1432
  %49 = ptrtoint ptr %restart_stdi_once to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %restart_stdi_once, align 4
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp11 = icmp sgt i32 %50, 0
  br i1 %cmp11, label %do.end15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %name17 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %name17, ptr noundef nonnull @.str.228) #14
  br label %cleanup

if.end23:                                         ; preds = %do.end89.i, %do.body83.i.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #11
  %51 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %interlaced.i, align 2, !range !792
  %53 = zext i8 %52 to i32
  %interlaced25 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %interlaced25 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %interlaced25, align 1
  %standards = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 15
  %55 = ptrtoint ptr %standards to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 15, ptr %standards, align 1
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp.i341 = icmp eq i32 %57, 3
  br i1 %cmp.i341, label %if.then27, label %if.else153

if.then27:                                        ; preds = %if.end23
  %58 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %timings, align 1
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %59 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %60, i8 noundef zeroext 7) #11
  %and = shl i32 %call1.i, 8
  %mul = and i32 %and, 3840
  %61 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i343 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %62, i8 noundef zeroext 8) #11
  %add = add i32 %mul, %call1.i343
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %add, ptr %0, align 1
  %64 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i345 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 9) #11
  %and31 = shl i32 %call1.i345, 8
  %mul32 = and i32 %and31, 3840
  %66 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i347 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 10) #11
  %add34 = add i32 %mul32, %call1.i347
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %add34, ptr %height, align 1
  %69 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i349 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext 81) #11
  %shl = shl i32 %call1.i349, 1
  %71 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i351 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 82) #11
  %shr = ashr i32 %call1.i351, 7
  %add37 = add i32 %shr, %shl
  %mul38 = mul i32 %add37, 1000000
  %73 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i353 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %74, i8 noundef zeroext 82) #11
  %and40 = and i32 %call1.i353, 127
  %mul41 = mul nuw nsw i32 %and40, 7813
  %add42 = add i32 %mul41, %mul38
  %75 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i.i354 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext 5) #11
  %and.i355 = and i32 %call1.i.i354, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i355)
  %tobool.i.not = icmp eq i32 %and.i355, 0
  br i1 %tobool.i.not, label %if.then27.if.end51_crit_edge, label %if.then44

if.then27.if.end51_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then44:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %mul45 = shl i32 %add42, 3
  %77 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i357 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %78, i8 noundef zeroext 11) #11
  %79 = lshr i32 %call1.i357, 5
  %mul49 = and i32 %79, 6
  %add50 = or i32 %mul49, 8
  %div = udiv i32 %mul45, %add50
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.then27.if.end51_crit_edge
  %freq.0 = phi i32 [ %div, %if.then44 ], [ %add42, %if.then27.if.end51_crit_edge ]
  %conv = zext i32 %freq.0 to i64
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %conv, ptr %pixelclock, align 1
  %81 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i359 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %82, i8 noundef zeroext 32) #11
  %and53 = shl i32 %call1.i359, 8
  %mul54 = and i32 %and53, 768
  %83 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i361 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %84, i8 noundef zeroext 33) #11
  %add56 = add i32 %mul54, %call1.i361
  %hfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %85 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %add56, ptr %hfrontporch, align 1
  %86 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i363 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 34) #11
  %and58 = shl i32 %call1.i363, 8
  %mul59 = and i32 %and58, 768
  %88 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i365 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 35) #11
  %add61 = add i32 %mul59, %call1.i365
  %hsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %90 = ptrtoint ptr %hsync to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %add61, ptr %hsync, align 1
  %91 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i367 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %92, i8 noundef zeroext 36) #11
  %and63 = shl i32 %call1.i367, 8
  %mul64 = and i32 %and63, 768
  %93 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i369 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %94, i8 noundef zeroext 37) #11
  %add66 = add i32 %mul64, %call1.i369
  %hbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %95 = ptrtoint ptr %hbackporch to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %add66, ptr %hbackporch, align 1
  %96 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i371 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 42) #11
  %and68 = shl i32 %call1.i371, 8
  %mul69 = and i32 %and68, 7936
  %98 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i373 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 43) #11
  %add71 = add i32 %mul69, %call1.i373
  %div72 = sdiv i32 %add71, 2
  %vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %100 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %div72, ptr %vfrontporch, align 1
  %101 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i375 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %102, i8 noundef zeroext 46) #11
  %and74 = shl i32 %call1.i375, 8
  %mul75 = and i32 %and74, 7936
  %103 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i377 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %104, i8 noundef zeroext 47) #11
  %add77 = add i32 %mul75, %call1.i377
  %div78 = sdiv i32 %add77, 2
  %vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %105 = ptrtoint ptr %vsync to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %div78, ptr %vsync, align 1
  %106 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i379 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %107, i8 noundef zeroext 50) #11
  %and80 = shl i32 %call1.i379, 8
  %mul81 = and i32 %and80, 7936
  %108 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i381 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext 51) #11
  %add83 = add i32 %mul81, %call1.i381
  %div84 = sdiv i32 %add83, 2
  %vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %110 = ptrtoint ptr %vbackporch to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %div84, ptr %vbackporch, align 1
  %111 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i383 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %112, i8 noundef zeroext 5) #11
  %and86 = lshr i32 %call1.i383, 4
  %and86.lobit = and i32 %and86, 1
  %113 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i385 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %114, i8 noundef zeroext 5) #11
  %and90 = lshr i32 %call1.i385, 4
  %115 = and i32 %and90, 2
  %or = or i32 %115, %and86.lobit
  %polarities = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %116 = ptrtoint ptr %polarities to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %or, ptr %polarities, align 1
  %117 = ptrtoint ptr %interlaced25 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %interlaced25, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp94 = icmp eq i32 %118, 1
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i387 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %120, i8 noundef zeroext 11) #11
  %and98 = shl i32 %call1.i387, 8
  %mul99 = and i32 %and98, 3840
  %121 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i389 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %122, i8 noundef zeroext 12) #11
  %add101 = add i32 %mul99, %call1.i389
  %123 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %height, align 1
  %add103 = add i32 %add101, %124
  store i32 %add103, ptr %height, align 1
  %125 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i391 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %126, i8 noundef zeroext 44) #11
  %and105 = shl i32 %call1.i391, 8
  %mul106 = and i32 %and105, 7936
  %127 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i393 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %128, i8 noundef zeroext 45) #11
  %add108 = add i32 %mul106, %call1.i393
  %div109 = sdiv i32 %add108, 2
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %129 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %div109, ptr %il_vfrontporch, align 1
  %130 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i395 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %131, i8 noundef zeroext 48) #11
  %and111 = shl i32 %call1.i395, 8
  %mul112 = and i32 %and111, 7936
  %132 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i397 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %133, i8 noundef zeroext 49) #11
  %add114 = add i32 %mul112, %call1.i397
  %div115 = sdiv i32 %add114, 2
  %il_vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %134 = ptrtoint ptr %il_vsync to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %div115, ptr %il_vsync, align 1
  %135 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i399 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %136, i8 noundef zeroext 52) #11
  %and117 = shl i32 %call1.i399, 8
  %mul118 = and i32 %and117, 7936
  %137 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i401 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %138, i8 noundef zeroext 53) #11
  %add120 = add i32 %mul118, %call1.i401
  %div121 = sdiv i32 %add120, 2
  br label %if.end125

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %il_vfrontporch122 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %139 = ptrtoint ptr %il_vfrontporch122 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 0, ptr %il_vfrontporch122, align 1
  %il_vsync123 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %140 = ptrtoint ptr %il_vsync123 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 0, ptr %il_vsync123, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then96
  %.sink = phi i32 [ %div121, %if.then96 ], [ 0, %if.else ]
  %141 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %.sink, ptr %141, align 1
  %143 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %144)
  %cmp.i.i.i = icmp eq i32 %144, 3
  %cond.i.i = select i1 %cmp.i.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %cond.i = select i1 %cmp.i.i.i, i32 250000, i32 1000000
  %call2.i = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull %cond.i.i, i32 noundef %cond.i, ptr noundef nonnull @adv7842_check_dv_timings, ptr noundef null) #11
  %flags.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 16
  %145 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %flags.i, align 1
  %or.i402 = or i32 %146, 512
  store i32 %or.i402, ptr %flags.i, align 1
  %and126 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.found_crit_edge, label %land.lhs.true

if.end125.found_crit_edge:                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

land.lhs.true:                                    ; preds = %if.end125
  %147 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %pixelclock, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %148, i64 %conv)
  %cmp130 = icmp ugt i64 %148, %conv
  br i1 %cmp130, label %if.then132, label %land.lhs.true.found_crit_edge

land.lhs.true.found_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then132:                                       ; preds = %land.lhs.true
  %conv134 = trunc i64 %148 to i32
  %div135 = udiv i32 %conv134, 1001
  %mul136 = mul nuw i32 %div135, 1000
  %sub = sub i32 %freq.0, %mul136
  %149 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub144 = sub i32 %conv134, %mul136
  %div145340 = lshr i32 %sub144, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %div145340)
  %cmp146 = icmp ult i32 %149, %div145340
  br i1 %cmp146, label %if.then148, label %if.then132.found_crit_edge

if.then132.found_crit_edge:                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then148:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %or150 = or i32 %146, 516
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %or150, ptr %flags.i, align 1
  br label %found

if.else153:                                       ; preds = %if.end23
  %call154 = call fastcc i32 @stdi2dv_timings(ptr noundef %sd, ptr noundef nonnull %stdi, ptr noundef %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.else153.found_crit_edge, label %if.end157

if.else153.found_crit_edge:                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.end157:                                        ; preds = %if.else153
  %151 = ptrtoint ptr %lcvs.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %lcvs.i, align 2
  %add159 = add i16 %152, 1
  store i16 %add159, ptr %lcvs.i, align 2
  %153 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp162 = icmp sgt i32 %153, 0
  br i1 %cmp162, label %do.end167, label %if.end157.do.end176_crit_edge

if.end157.do.end176_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end176

do.end167:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  %name169 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv172 = zext i16 %add159 to i32
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %name169, ptr noundef nonnull @.str.228, i32 noundef %conv172) #14
  br label %do.end176

do.end176:                                        ; preds = %do.end167, %if.end157.do.end176_crit_edge
  %call177 = call fastcc i32 @stdi2dv_timings(ptr noundef %sd, ptr noundef nonnull %stdi, ptr noundef %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %do.end176.found_crit_edge, label %if.end180

do.end176.found_crit_edge:                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.end180:                                        ; preds = %do.end176
  %sub183 = add i16 %152, -1
  %154 = ptrtoint ptr %lcvs.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %sub183, ptr %lcvs.i, align 2
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp186 = icmp sgt i32 %155, 0
  br i1 %cmp186, label %do.end191, label %if.end180.do.end200_crit_edge

if.end180.do.end200_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end200

do.end191:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %name193 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv196 = zext i16 %sub183 to i32
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %name193, ptr noundef nonnull @.str.228, i32 noundef %conv196) #14
  br label %do.end200

do.end200:                                        ; preds = %do.end191, %if.end180.do.end200_crit_edge
  %call201 = call fastcc i32 @stdi2dv_timings(ptr noundef %sd, ptr noundef nonnull %stdi, ptr noundef %timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  %restart_stdi_once241 = getelementptr i8, ptr %sd, i32 1432
  br i1 %tobool202.not, label %if.end240, label %if.then203

if.then203:                                       ; preds = %do.end200
  %156 = ptrtoint ptr %restart_stdi_once241 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %restart_stdi_once241, align 4, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool205.not = icmp eq i8 %157, 0
  %158 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp227 = icmp sgt i32 %158, 0
  br i1 %tobool205.not, label %do.body226, label %do.body207

do.body207:                                       ; preds = %if.then203
  br i1 %cmp227, label %do.end213, label %do.body207.do.end220_crit_edge

do.body207.do.end220_crit_edge:                   ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end220

do.end213:                                        ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  %name215 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef %name215, ptr noundef nonnull @.str.228) #14
  br label %do.end220

do.end220:                                        ; preds = %do.end213, %do.body207.do.end220_crit_edge
  tail call fastcc void @cp_write_and_or(ptr noundef %sd, i8 noundef zeroext -122, i8 noundef zeroext -7, i8 noundef zeroext 0)
  tail call fastcc void @cp_write_and_or(ptr noundef %sd, i8 noundef zeroext -122, i8 noundef zeroext -7, i8 noundef zeroext 4)
  tail call fastcc void @cp_write_and_or(ptr noundef %sd, i8 noundef zeroext -122, i8 noundef zeroext -7, i8 noundef zeroext 2)
  %159 = ptrtoint ptr %restart_stdi_once241 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %restart_stdi_once241, align 4
  br label %cleanup

do.body226:                                       ; preds = %if.then203
  br i1 %cmp227, label %do.end232, label %do.body226.cleanup_crit_edge

do.body226.cleanup_crit_edge:                     ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end232:                                        ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #13
  %name234 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef %name234, ptr noundef nonnull @.str.228) #14
  br label %cleanup

if.end240:                                        ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %restart_stdi_once241 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %restart_stdi_once241, align 4
  br label %found

found:                                            ; preds = %if.end240, %do.end176.found_crit_edge, %if.else153.found_crit_edge, %if.then148, %if.then132.found_crit_edge, %land.lhs.true.found_crit_edge, %if.end125.found_crit_edge
  %161 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp243 = icmp sgt i32 %161, 1
  br i1 %cmp243, label %if.then245, label %found.cleanup_crit_edge

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then245:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  %name246 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_print_dv_timings(ptr noundef %name246, ptr noundef nonnull @.str.244, ptr noundef %timings, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then245, %found.cleanup_crit_edge, %do.end232, %do.body226.cleanup_crit_edge, %do.end220, %do.end15, %if.then9.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -67, %do.end220 ], [ -61, %do.end4.cleanup_crit_edge ], [ -67, %do.end15 ], [ -67, %if.then9.cleanup_crit_edge ], [ -34, %do.end232 ], [ -34, %do.body226.cleanup_crit_edge ], [ 0, %if.then245 ], [ 0, %found.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %stdi) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stdi2dv_timings(ptr noundef %sd, ptr nocapture noundef readonly %stdi, ptr noundef %timings) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stdi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stdi, align 2
  %conv = zext i16 %1 to i32
  %div = udiv i32 229090880, %conv
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 0, i32 1) to i32), i32 4)
  %2 = load i32, ptr getelementptr inbounds ([0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not120 = icmp eq i32 %2, 0
  br i1 %tobool.not120, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mode.i.i = getelementptr i8, ptr %sd, i32 508
  %lcf = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 1
  %lcvs = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %36, %for.inc.for.body_crit_edge ]
  %4 = phi ptr [ getelementptr inbounds ([0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 0, i32 1), %for.body.lr.ph ], [ %34, %for.inc.for.body_crit_edge ]
  %arrayidx122 = phi ptr [ @v4l2_dv_timings_presets, %for.body.lr.ph ], [ %arrayidx, %for.inc.for.body_crit_edge ]
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 3
  %cond.i = select i1 %cmp.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %call4 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %arrayidx122, ptr noundef nonnull %cond.i, ptr noundef nonnull @adv7842_check_dv_timings, ptr noundef null) #11
  br i1 %call4, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %height.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %height.i, align 1
  %vfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %vfrontporch.i, align 1
  %vsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %vsync.i, align 1
  %vbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 10
  %13 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %vbackporch.i, align 1
  %il_vfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 11
  %15 = ptrtoint ptr %il_vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %il_vfrontporch.i, align 1
  %il_vsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 12
  %17 = ptrtoint ptr %il_vsync.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %il_vsync.i, align 1
  %il_vbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 13
  %19 = ptrtoint ptr %il_vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %il_vbackporch.i, align 1
  %add.i = add i32 %10, %8
  %add1.i = add i32 %add.i, %12
  %add2.i = add i32 %add1.i, %14
  %add3.i = add i32 %add2.i, %16
  %add4.i = add i32 %add3.i, %18
  %add5.i = add i32 %add4.i, %20
  %21 = ptrtoint ptr %lcf to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lcf, align 2
  %conv6 = zext i16 %22 to i32
  %add = add nuw nsw i32 %conv6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %add)
  %cmp.not = icmp eq i32 %add5.i, %add
  br i1 %cmp.not, label %if.end9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %23 = ptrtoint ptr %lcvs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lcvs, align 2
  %conv10 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv10)
  %cmp11.not = icmp eq i32 %12, %conv10
  br i1 %cmp11.not, label %if.end14, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %hfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 5
  %25 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %hfrontporch.i, align 1
  %hsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 6
  %27 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %hsync.i, align 1
  %hbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 7
  %29 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %hbackporch.i, align 1
  %add.i115 = add i32 %26, %3
  %add1.i116 = add i32 %add.i115, %28
  %add2.i117 = add i32 %add1.i116, %30
  %mul = mul i32 %add2.i117, %div
  %conv16 = zext i32 %mul to i64
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, ptr %4, i32 0, i32 4
  %31 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %pixelclock, align 1
  %add17 = add i64 %32, 1000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %conv16)
  %cmp18 = icmp ugt i64 %add17, %conv16
  %sub = add i64 %32, -1000000
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv16)
  %cmp22 = icmp ult i64 %sub, %conv16
  %or.cond = and i1 %cmp18, %cmp22
  br i1 %or.cond, label %cleanup, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %33 = call ptr @memcpy(ptr %timings, ptr %arrayidx122, i32 132)
  br label %cleanup79

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0121, 1
  %arrayidx = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %inc
  %34 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %inc, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %lcf27 = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 1
  %37 = ptrtoint ptr %lcf27 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %lcf27, align 2
  %conv28 = zext i16 %38 to i32
  %add29 = add nuw nsw i32 %conv28, 1
  %lcvs30 = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 2
  %39 = ptrtoint ptr %lcvs30 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %lcvs30, align 2
  %conv31 = zext i16 %40 to i32
  %hs_pol = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 3
  %41 = ptrtoint ptr %hs_pol to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hs_pol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %42)
  %cmp33 = icmp eq i8 %42, 43
  %cond = select i1 %cmp33, i32 2, i32 0
  %vs_pol = getelementptr inbounds %struct.stdi_readback, ptr %stdi, i32 0, i32 4
  %43 = ptrtoint ptr %vs_pol to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vs_pol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %44)
  %cmp36 = icmp eq i8 %44, 43
  %cond38 = zext i1 %cmp36 to i32
  %or = or i32 %cond, %cond38
  %call39 = tail call zeroext i1 @v4l2_detect_cvt(i32 noundef %add29, i32 noundef %div, i32 noundef %conv31, i32 noundef 0, i32 noundef %or, i1 noundef zeroext false, ptr noundef %timings) #11
  br i1 %call39, label %for.end.cleanup79_crit_edge, label %if.end41

for.end.cleanup79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

if.end41:                                         ; preds = %for.end
  %45 = ptrtoint ptr %lcf27 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %lcf27, align 2
  %conv43 = zext i16 %46 to i32
  %add44 = add nuw nsw i32 %conv43, 1
  %47 = ptrtoint ptr %lcvs30 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %lcvs30, align 2
  %conv46 = zext i16 %48 to i32
  %49 = ptrtoint ptr %hs_pol to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hs_pol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %50)
  %cmp49 = icmp eq i8 %50, 43
  %cond51 = select i1 %cmp49, i32 2, i32 0
  %51 = ptrtoint ptr %vs_pol to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vs_pol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %52)
  %cmp54 = icmp eq i8 %52, 43
  %cond56 = zext i1 %cmp54 to i32
  %or57 = or i32 %cond51, %cond56
  %aspect_ratio = getelementptr i8, ptr %sd, i32 1316
  %53 = ptrtoint ptr %aspect_ratio to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack = load i32, ptr %aspect_ratio, align 8
  %54 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt113 = getelementptr i8, ptr %sd, i32 1320
  %55 = ptrtoint ptr %.elt113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack114 = load i32, ptr %.elt113, align 4
  %56 = insertvalue [2 x i32] %54, i32 %.unpack114, 1
  %call58 = tail call zeroext i1 @v4l2_detect_gtf(i32 noundef %add44, i32 noundef %div, i32 noundef %conv46, i32 noundef %or57, i1 noundef zeroext false, [2 x i32] %56, ptr noundef %timings) #11
  br i1 %call58, label %if.end41.cleanup79_crit_edge, label %do.body

if.end41.cleanup79_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

do.body:                                          ; preds = %if.end41
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp61 = icmp sgt i32 %57, 1
  br i1 %cmp61, label %do.end, label %do.body.cleanup79_crit_edge

do.body.cleanup79_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %58 = ptrtoint ptr %lcvs30 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %lcvs30, align 2
  %conv66 = zext i16 %59 to i32
  %60 = ptrtoint ptr %lcf27 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lcf27, align 2
  %conv68 = zext i16 %61 to i32
  %62 = ptrtoint ptr %stdi to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %stdi, align 2
  %conv70 = zext i16 %63 to i32
  %64 = ptrtoint ptr %hs_pol to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hs_pol, align 2
  %conv72 = zext i8 %65 to i32
  %66 = ptrtoint ptr %vs_pol to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vs_pol, align 1
  %conv74 = zext i8 %67 to i32
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef %name, ptr noundef nonnull @.str.260, i32 noundef %conv66, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv74) #14
  br label %cleanup79

cleanup79:                                        ; preds = %do.end, %do.body.cleanup79_crit_edge, %if.end41.cleanup79_crit_edge, %for.end.cleanup79_crit_edge, %cleanup
  %retval.2 = phi i32 [ 0, %cleanup ], [ 0, %for.end.cleanup79_crit_edge ], [ 0, %if.end41.cleanup79_crit_edge ], [ -1, %do.end ], [ -1, %do.body.cleanup79_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_write_and_or(ptr nocapture noundef readonly %sd, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %0 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %reg) #11
  %2 = trunc i32 %call1.i to i8
  %3 = and i8 %2, %mask
  %conv2 = or i8 %3, %val
  %4 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %reg, i8 noundef zeroext %conv2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_g_input_status(ptr noundef %sd, ptr nocapture noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 12) #11
  %and = and i32 %call1.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr i8, ptr %sd, i32 508
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.end
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %7 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i60 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 90) #11
  %and4 = and i32 %call1.i60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.then2.do.body_crit_edge

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %or7 = or i32 %10, 2
  store i32 %or7, ptr %status, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.then2.do.body_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp sgt i32 %11, 0
  br i1 %cmp9, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %12 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i61 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -75) #11
  %and18 = and i32 %call1.i61, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 208
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end16.if.then23_crit_edge

if.end16.if.then23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end16
  %14 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i63 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -79) #11
  %and21 = and i32 %call1.i63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.end16.if.then23_crit_edge
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %or24 = or i32 %17, 2
  store i32 %or24, ptr %status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false.if.end25_crit_edge
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp eq i32 %19, 3
  br i1 %cmp.i, label %land.lhs.true, label %if.end25.do.body33_crit_edge

if.end25.do.body33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

land.lhs.true:                                    ; preds = %if.end25
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i65 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 116) #11
  %and28 = and i32 %call1.i65, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and28)
  %cmp29.not = icmp eq i32 %and28, 3
  br i1 %cmp29.not, label %land.lhs.true.do.body33_crit_edge, label %if.then30

land.lhs.true.do.body33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %or31 = or i32 %23, 2
  store i32 %or31, ptr %status, align 4
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %land.lhs.true.do.body33_crit_edge, %if.end25.do.body33_crit_edge
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp34 = icmp sgt i32 %24, 0
  br i1 %cmp34, label %do.body33.cleanup.sink.split_crit_edge, label %do.body33.cleanup_crit_edge

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body33.cleanup.sink.split_crit_edge:           ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body33.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.256.sink = phi ptr [ @.str.253, %do.body.cleanup.sink.split_crit_edge ], [ @.str.256, %do.body33.cleanup.sink.split_crit_edge ]
  %name40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.256.sink, ptr noundef %name40, ptr noundef nonnull @.str.254, i32 noundef %26) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body33.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @adv7842_check_dv_timings(ptr noundef %t, ptr nocapture noundef readnone %hdl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %t, ptr noundef nonnull @adv7842_timings_exceptions, i32 noundef 0, i1 noundef zeroext false) #11
  %0 = xor i1 %call, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_cvt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_gtf(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, [2 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv_smbus_write_byte_data(ptr nocapture noundef readonly %client, i8 noundef zeroext %command, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #11
  %0 = call ptr @memset(ptr %data, i32 255, i32 34)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %value, ptr %data, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %client, align 8
  %call = call i32 @i2c_smbus_xfer(ptr noundef %3, i16 noundef zeroext %5, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %for.cond

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.cond:                                         ; preds = %entry
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %call.1 = call i32 @i2c_smbus_xfer(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext %13, i8 noundef zeroext 0, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.if.end11_crit_edge, label %for.cond.1

for.cond.if.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.cond.1:                                       ; preds = %for.cond
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 2
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %client, align 8
  %call.2 = call i32 @i2c_smbus_xfer(ptr noundef %15, i16 noundef zeroext %17, i16 noundef zeroext %19, i8 noundef zeroext 0, i8 noundef zeroext %command, i32 noundef 2, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1 = icmp slt i32 %call.2, 0
  br i1 %cmp1, label %do.end, label %for.cond.1.if.end11_crit_edge

for.cond.1.if.end11_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i, align 4
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr, align 2
  %conv = zext i16 %29 to i32
  %conv8 = zext i8 %command to i32
  %conv9 = zext i8 %value to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef %23, i32 noundef %27, i32 noundef %conv, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv9) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end, %for.cond.1.if.end11_crit_edge, %for.cond.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_unpack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_infoframe_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_rewrite_i2c_addresses(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_sdp = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 18
  %0 = ptrtoint ptr %i2c_sdp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i2c_sdp, align 1
  %shl = shl i8 %1, 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -15, i8 noundef zeroext %shl) #11
  %i2c_sdp_io = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 17
  %4 = ptrtoint ptr %i2c_sdp_io to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_sdp_io, align 2
  %shl3 = shl i8 %5, 1
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -14, i8 noundef zeroext %shl3) #11
  %i2c_avlink = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 27
  %8 = ptrtoint ptr %i2c_avlink to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_avlink, align 4
  %shl7 = shl i8 %9, 1
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -13, i8 noundef zeroext %shl7) #11
  %i2c_cec = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 26
  %12 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_cec, align 1
  %shl11 = shl i8 %13, 1
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -12, i8 noundef zeroext %shl11) #11
  %i2c_infoframe = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 25
  %16 = ptrtoint ptr %i2c_infoframe to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_infoframe, align 2
  %shl15 = shl i8 %17, 1
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -11, i8 noundef zeroext %shl15) #11
  %i2c_afe = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 21
  %20 = ptrtoint ptr %i2c_afe to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_afe, align 2
  %shl19 = shl i8 %21, 1
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -8, i8 noundef zeroext %shl19) #11
  %i2c_repeater = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 23
  %24 = ptrtoint ptr %i2c_repeater to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i2c_repeater, align 4
  %shl23 = shl i8 %25, 1
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -7, i8 noundef zeroext %shl23) #11
  %i2c_edid = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 24
  %28 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_edid, align 1
  %shl27 = shl i8 %29, 1
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -6, i8 noundef zeroext %shl27) #11
  %i2c_hdmi = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 22
  %32 = ptrtoint ptr %i2c_hdmi to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_hdmi, align 1
  %shl31 = shl i8 %33, 1
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -5, i8 noundef zeroext %shl31) #11
  %i2c_cp = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 19
  %36 = ptrtoint ptr %i2c_cp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_cp, align 4
  %shl35 = shl i8 %37, 1
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -3, i8 noundef zeroext %shl35) #11
  %i2c_vdp = getelementptr inbounds %struct.adv7842_platform_data, ptr %pdata, i32 0, i32 20
  %40 = ptrtoint ptr %i2c_vdp to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_vdp, align 1
  %shl39 = shl i8 %41, 1
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -2, i8 noundef zeroext %shl39) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @select_input(ptr noundef %sd, i32 noundef %vid_std_select) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.439)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb27_crit_edge
    i32 2, label %entry.sw.bb27_crit_edge278
    i32 3, label %sw.bb52
  ]

entry.sw.bb27_crit_edge278:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %vid_std_select to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %conv) #11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %i2c_cp.i.i = getelementptr i8, ptr %sd, i32 1444
  %7 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -127) #11
  %9 = trunc i32 %call1.i.i to i8
  %conv2.i = or i8 %9, 16
  %10 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cp.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -127, i8 noundef zeroext %conv2.i) #11
  %i2c_afe.i = getelementptr i8, ptr %sd, i32 1452
  %12 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %14 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -56, i8 noundef zeroext 0) #11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -35, i8 noundef zeroext -112) #11
  %18 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_afe.i, align 8
  %call1.i.i192 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 2) #11
  %20 = trunc i32 %call1.i.i192 to i8
  %conv2.i193 = or i8 %20, -128
  %21 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i193) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vid_std_select)
  %cmp = icmp eq i32 %vid_std_select, 1
  %23 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 3, i8 noundef zeroext -96) #11
  %25 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_afe.i, align 8
  %. = select i1 %cmp, i8 0, i8 -64
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 4, i8 noundef zeroext %.) #11
  %27 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 12, i8 noundef zeroext 31) #11
  %29 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 18, i8 noundef zeroext 99) #11
  %i2c_sdp_io.i = getelementptr i8, ptr %sd, i32 1436
  %31 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -78, i8 noundef zeroext 96) #11
  %33 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -56, i8 noundef zeroext -29) #11
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %35 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 63) #11
  %37 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %39 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 3, i8 noundef zeroext -28) #11
  %41 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 4, i8 noundef zeroext 11) #11
  %43 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 5, i8 noundef zeroext -61) #11
  %45 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 6, i8 noundef zeroext -2) #11
  %47 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 18, i8 noundef zeroext 13) #11
  %49 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -89, i8 noundef zeroext 0) #11
  %51 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -80, i8 noundef zeroext 0) #11
  %53 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i.i209 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %54, i8 noundef zeroext 18) #11
  %55 = trunc i32 %call1.i.i209 to i8
  %conv2.i210 = or i8 %55, 9
  %56 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i210) #11
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge278
  %i2c_afe.i.i211 = getelementptr i8, ptr %sd, i32 1452
  %58 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_afe.i.i211, align 8
  %call1.i.i212 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 2) #11
  %60 = trunc i32 %call1.i.i212 to i8
  %61 = and i8 %60, 127
  %62 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_afe.i.i211, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 2, i8 noundef zeroext %61) #11
  %conv29 = trunc i32 %vid_std_select to i8
  %dev_priv.i.i213 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %64 = ptrtoint ptr %dev_priv.i.i213 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i213, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 0, i8 noundef zeroext %conv29) #11
  %66 = ptrtoint ptr %dev_priv.i.i213 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i213, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 1, i8 noundef zeroext 2) #11
  %i2c_cp.i.i215 = getelementptr i8, ptr %sd, i32 1444
  %68 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_cp.i.i215, align 8
  %call1.i.i216 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext -127) #11
  %70 = trunc i32 %call1.i.i216 to i8
  %conv2.i217 = or i8 %70, 16
  %71 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %72, i8 noundef zeroext -127, i8 noundef zeroext %conv2.i217) #11
  %73 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_afe.i.i211, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %75 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_afe.i.i211, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %76, i8 noundef zeroext -56, i8 noundef zeroext 0) #11
  %77 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp36 = icmp eq i32 %78, 1
  %79 = ptrtoint ptr %dev_priv.i.i213 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i.i213, align 4
  %call1.i.i220 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %80, i8 noundef zeroext 2) #11
  %81 = trunc i32 %call1.i.i220 to i8
  %82 = and i8 %81, 15
  %.276 = select i1 %cmp36, i8 96, i8 16
  %conv2.i224 = or i8 %82, %.276
  %83 = ptrtoint ptr %dev_priv.i.i213 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i213, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i224) #11
  %85 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_afe.i.i211, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %86, i8 noundef zeroext 12, i8 noundef zeroext 31) #11
  %87 = ptrtoint ptr %i2c_afe.i.i211 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i2c_afe.i.i211, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %88, i8 noundef zeroext 18, i8 noundef zeroext 99) #11
  %89 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %90, i8 noundef zeroext 115, i8 noundef zeroext 16) #11
  %91 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 116, i8 noundef zeroext 4) #11
  %93 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 117, i8 noundef zeroext 1) #11
  %95 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %96, i8 noundef zeroext 118, i8 noundef zeroext 0) #11
  %97 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %98, i8 noundef zeroext 62, i8 noundef zeroext 4) #11
  %99 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext -61, i8 noundef zeroext 57) #11
  %101 = ptrtoint ptr %i2c_cp.i.i215 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i2c_cp.i.i215, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %102, i8 noundef zeroext 64, i8 noundef zeroext 92) #11
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_afe.i.i233 = getelementptr i8, ptr %sd, i32 1452
  %103 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i2c_afe.i.i233, align 8
  %call1.i.i234 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %104, i8 noundef zeroext 2) #11
  %105 = trunc i32 %call1.i.i234 to i8
  %106 = and i8 %105, 127
  %107 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_afe.i.i233, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %108, i8 noundef zeroext 2, i8 noundef zeroext %106) #11
  %hdmi_port_a = getelementptr i8, ptr %sd, i32 1433
  %109 = ptrtoint ptr %hdmi_port_a to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %hdmi_port_a, align 1, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not = icmp eq i8 %110, 0
  %i2c_hdmi.i235 = getelementptr i8, ptr %sd, i32 1456
  %111 = ptrtoint ptr %i2c_hdmi.i235 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c_hdmi.i235, align 4
  %.277 = select i1 %tobool.not, i8 3, i8 2
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 0, i8 noundef zeroext %.277) #11
  %conv59 = trunc i32 %vid_std_select to i8
  %dev_priv.i.i236 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %113 = ptrtoint ptr %dev_priv.i.i236 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_priv.i.i236, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %114, i8 noundef zeroext 0, i8 noundef zeroext %conv59) #11
  %115 = ptrtoint ptr %dev_priv.i.i236 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_priv.i.i236, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 1, i8 noundef zeroext 5) #11
  %i2c_cp.i.i238 = getelementptr i8, ptr %sd, i32 1444
  %117 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i2c_cp.i.i238, align 8
  %call1.i.i239 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %118, i8 noundef zeroext -127) #11
  %119 = trunc i32 %call1.i.i239 to i8
  %120 = and i8 %119, -17
  %121 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %122, i8 noundef zeroext -127, i8 noundef zeroext %120) #11
  %i2c_hdmi.i240 = getelementptr i8, ptr %sd, i32 1456
  %123 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %124, i8 noundef zeroext -64, i8 noundef zeroext 0) #11
  %125 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %126, i8 noundef zeroext 13, i8 noundef zeroext 52) #11
  %127 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 61, i8 noundef zeroext 16) #11
  %129 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %130, i8 noundef zeroext 68, i8 noundef zeroext -123) #11
  %131 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext 70, i8 noundef zeroext 31) #11
  %133 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %134, i8 noundef zeroext 87, i8 noundef zeroext -74) #11
  %135 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext 88, i8 noundef zeroext 3) #11
  %137 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %138, i8 noundef zeroext 96, i8 noundef zeroext -120) #11
  %139 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %140, i8 noundef zeroext 97, i8 noundef zeroext -120) #11
  %141 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %142, i8 noundef zeroext 108, i8 noundef zeroext 24) #11
  %143 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %144, i8 noundef zeroext 117, i8 noundef zeroext 16) #11
  %145 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %146, i8 noundef zeroext -123, i8 noundef zeroext 31) #11
  %147 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %148, i8 noundef zeroext -121, i8 noundef zeroext 112) #11
  %149 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %150, i8 noundef zeroext -119, i8 noundef zeroext 4) #11
  %151 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %152, i8 noundef zeroext -118, i8 noundef zeroext 30) #11
  %153 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %154, i8 noundef zeroext -109, i8 noundef zeroext 4) #11
  %155 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %156, i8 noundef zeroext -108, i8 noundef zeroext 30) #11
  %157 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %158, i8 noundef zeroext -103, i8 noundef zeroext -95) #11
  %159 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %160, i8 noundef zeroext -101, i8 noundef zeroext 9) #11
  %161 = ptrtoint ptr %i2c_hdmi.i240 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i2c_hdmi.i240, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %162, i8 noundef zeroext -99, i8 noundef zeroext 2) #11
  %163 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i2c_afe.i.i233, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %164, i8 noundef zeroext 0, i8 noundef zeroext -1) #11
  %165 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i2c_afe.i.i233, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %166, i8 noundef zeroext -56, i8 noundef zeroext 64) #11
  %167 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %168, i8 noundef zeroext 115, i8 noundef zeroext 16) #11
  %169 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %170, i8 noundef zeroext 116, i8 noundef zeroext 4) #11
  %171 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %172, i8 noundef zeroext 117, i8 noundef zeroext 1) #11
  %173 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %174, i8 noundef zeroext 118, i8 noundef zeroext 0) #11
  %175 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i2c_afe.i.i233, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %176, i8 noundef zeroext 18, i8 noundef zeroext -5) #11
  %177 = ptrtoint ptr %i2c_afe.i.i233 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c_afe.i.i233, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %178, i8 noundef zeroext 12, i8 noundef zeroext 13) #11
  %179 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %180, i8 noundef zeroext 62, i8 noundef zeroext 0) #11
  %181 = ptrtoint ptr %i2c_cp.i.i238 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c_cp.i.i238, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %182, i8 noundef zeroext -61, i8 noundef zeroext 51) #11
  %183 = ptrtoint ptr %dev_priv.i.i236 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev_priv.i.i236, align 4
  %call1.i.i271 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %184, i8 noundef zeroext 2) #11
  %185 = trunc i32 %call1.i.i271 to i8
  %conv2.i272 = or i8 %185, -16
  %186 = ptrtoint ptr %dev_priv.i.i236 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev_priv.i.i236, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %187, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i272) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %188)
  %cmp94 = icmp sgt i32 %188, 1
  br i1 %cmp94, label %do.end, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name, ptr noundef nonnull @.str.283, i32 noundef %1) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb52, %sw.bb27, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_input(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %sd)
  %mode = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.440)
  switch i32 %1, label %do.body [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge19
    i32 2, label %entry.sw.bb_crit_edge20
    i32 3, label %sw.bb2
  ]

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 21, i8 noundef zeroext -80) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %5 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %dev_priv.i.i18 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i18, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 21, i8 noundef zeroext -96) #11
  %9 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 26) #11
  %11 = trunc i32 %call1.i.i to i8
  %12 = and i8 %11, -17
  %13 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_hdmi.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 26, i8 noundef zeroext %12) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp sgt i32 %15, 1
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name, ptr noundef nonnull @.str.284, i32 noundef %1) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edid_write_vga_segment(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vga_edid = getelementptr i8, ptr %sd, i32 1180
  %blocks4 = getelementptr i8, ptr %sd, i32 1308
  %2 = ptrtoint ptr %blocks4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks4, align 8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef %name, ptr noundef nonnull @.str.300) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %present = getelementptr i8, ptr %sd, i32 1312
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 32) #11
  %9 = trunc i32 %call1.i.i to i8
  %10 = and i8 %9, -49
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 32, i8 noundef zeroext %10) #11
  %i2c_repeater.i.i = getelementptr i8, ptr %sd, i32 1460
  %13 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i72 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 127) #11
  %15 = trunc i32 %call1.i.i72 to i8
  %16 = and i8 %15, 127
  %17 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_repeater.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 127, i8 noundef zeroext %16) #11
  %19 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i74 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 119) #11
  %21 = trunc i32 %call1.i.i74 to i8
  %conv2.i = or i8 %21, 16
  %22 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_repeater.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 119, i8 noundef zeroext %conv2.i) #11
  %mul = shl i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1780.not = icmp eq i32 %mul, 0
  br i1 %cmp1780.not, label %if.end12.if.end21_crit_edge, label %for.body.lr.ph

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.body.lr.ph:                                   ; preds = %if.end12
  %i2c_edid = getelementptr i8, ptr %sd, i32 1464
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_edid, align 4
  %conv = trunc i32 %i.081 to i8
  %add.ptr = getelementptr i8, ptr %vga_edid, i32 %i.081
  %call18 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %25, i8 noundef zeroext %conv, i8 noundef zeroext 32, ptr noundef %add.ptr) #11
  %add = add nuw i32 %i.081, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool16.not = icmp eq i32 %call18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp17 = icmp ult i32 %add, %mul
  %or.cond = select i1 %tobool16.not, i1 %cmp17, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool16.not, label %for.end.if.end21_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %for.end.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %26 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i76 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 127) #11
  %28 = trunc i32 %call1.i.i76 to i8
  %conv2.i77 = or i8 %28, -128
  %29 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_repeater.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 127, i8 noundef zeroext %conv2.i77) #11
  br label %for.body26

for.body26:                                       ; preds = %if.end30.for.body26_crit_edge, %if.end21
  %i.183 = phi i32 [ 0, %if.end21 ], [ %inc, %if.end30.for.body26_crit_edge ]
  %31 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 121) #11
  %and = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end30, label %if.end44

if.end30:                                         ; preds = %for.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #11
  %inc = add nuw nsw i32 %i.183, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end38, label %if.end30.for.body26_crit_edge

if.end30.for.body26_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr, align 2
  %conv42 = zext i16 %43 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef %37, i32 noundef %41, i32 noundef %conv42) #14
  br label %cleanup

if.end44:                                         ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  %delayed_work_enable_hotplug = getelementptr i8, ptr %sd, i32 1332
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %delayed_work_enable_hotplug, i32 noundef 20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end38, %for.end.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end38 ], [ 0, %if.end44 ], [ 0, %do.end9.cleanup_crit_edge ], [ %call18, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edid_write_hdmi_segment(ptr noundef %sd, i8 noundef zeroext %port) unnamed_addr #2 align 64 {
entry:
  %spa_loc = alloca i32, align 4
  %parent_pa = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %hdmi_edid = getelementptr i8, ptr %sd, i32 660
  %blocks4 = getelementptr i8, ptr %sd, i32 1172
  %2 = ptrtoint ptr %blocks4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spa_loc) #11
  %4 = ptrtoint ptr %spa_loc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %spa_loc, align 4, !annotation !793
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %parent_pa) #11
  %5 = ptrtoint ptr %parent_pa to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %parent_pa, align 2, !annotation !793
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port)
  %cmp7 = icmp eq i8 %port, 0
  %cond = select i1 %cmp7, i32 65, i32 66
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef %name, ptr noundef nonnull @.str.305, i32 noundef %cond) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 32) #11
  %9 = trunc i32 %call1.i.i to i8
  %10 = and i8 %9, -49
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 32, i8 noundef zeroext %10) #11
  %i2c_repeater.i.i = getelementptr i8, ptr %sd, i32 1460
  %13 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i166 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 119) #11
  %15 = trunc i32 %call1.i.i166 to i8
  %16 = and i8 %15, -13
  %17 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_repeater.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 119, i8 noundef zeroext %16) #11
  %present = getelementptr i8, ptr %sd, i32 1176
  %19 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %cec_adap = getelementptr i8, ptr %sd, i32 1500
  %21 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_s_phys_addr(ptr noundef %22, i16 noundef zeroext -1, i1 noundef zeroext false) #11
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %mul = shl i32 %3, 7
  %call17 = call zeroext i16 @v4l2_get_edid_phys_addr(ptr noundef %hdmi_edid, i32 noundef %mul, ptr noundef nonnull %spa_loc) #11
  %call18 = call i32 @v4l2_phys_addr_validate(i16 noundef zeroext %call17, ptr noundef nonnull %parent_pa, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %spa_loc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spa_loc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  %extract.t = trunc i16 %call17 to i8
  %extract = lshr i16 %call17, 8
  %extract.t163 = trunc i16 %extract to i8
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %spa_loc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %spa_loc, align 4
  %arrayidx = getelementptr i8, ptr %sd, i32 788
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr i8, ptr %sd, i32 789
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end21.if.end28_crit_edge
  %pa.0.off0 = phi i8 [ %extract.t, %if.end21.if.end28_crit_edge ], [ %29, %if.then23 ]
  %pa.0.off8 = phi i8 [ %extract.t163, %if.end21.if.end28_crit_edge ], [ %27, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp31182.not = icmp eq i32 %mul, 0
  br i1 %cmp31182.not, label %if.end28.if.end47_crit_edge, label %for.body.lr.ph

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.body.lr.ph:                                   ; preds = %if.end28
  %i2c_edid = getelementptr i8, ptr %sd, i32 1464
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %add44, %if.end41.for.body_crit_edge ]
  %30 = and i32 %i.0183, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp33 = icmp eq i32 %30, 0
  br i1 %cmp33, label %if.then35, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0183)
  %cmp36 = icmp sgt i32 %i.0183, 255
  %conv39 = select i1 %cmp36, i8 16, i8 0
  %31 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i168 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 119) #11
  %33 = trunc i32 %call1.i.i168 to i8
  %34 = and i8 %33, -17
  %conv2.i = or i8 %34, %conv39
  %35 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_repeater.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 119, i8 noundef zeroext %conv2.i) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %for.body.if.end41_crit_edge
  %37 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_edid, align 4
  %conv42 = trunc i32 %i.0183 to i8
  %add.ptr = getelementptr i8, ptr %hdmi_edid, i32 %i.0183
  %call43 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %38, i8 noundef zeroext %conv42, i8 noundef zeroext 32, ptr noundef %add.ptr) #11
  %add44 = add nuw i32 %i.0183, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool29.not = icmp eq i32 %call43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %mul)
  %cmp31 = icmp ult i32 %add44, %mul
  %or.cond = select i1 %tobool29.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.end41.for.body_crit_edge, label %for.end

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end41
  br i1 %tobool29.not, label %for.end.if.end47_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end47:                                         ; preds = %for.end.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port)
  %cmp49 = icmp eq i8 %port, 0
  %39 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_repeater.i.i, align 8
  %. = select i1 %cmp49, i8 114, i8 116
  %.191 = select i1 %cmp49, i8 115, i8 117
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext %., i8 noundef zeroext %pa.0.off8) #11
  %41 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_repeater.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext %.191, i8 noundef zeroext %pa.0.off0) #11
  %43 = ptrtoint ptr %spa_loc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %spa_loc, align 4
  %conv68 = trunc i32 %44 to i8
  %45 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_repeater.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 118, i8 noundef zeroext %conv68) #11
  %47 = ptrtoint ptr %spa_loc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %spa_loc, align 4
  %shr70 = lshr i32 %48, 2
  %49 = trunc i32 %shr70 to i8
  %conv72 = and i8 %49, 64
  %50 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i174 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 119) #11
  %52 = trunc i32 %call1.i.i174 to i8
  %53 = and i8 %52, -65
  %conv2.i175 = or i8 %53, %conv72
  %54 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_repeater.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext 119, i8 noundef zeroext %conv2.i175) #11
  %56 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %present, align 4
  %conv76 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i.i177 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 119) #11
  %60 = trunc i32 %call1.i.i177 to i8
  %61 = and i8 %60, -13
  %conv2.i178 = or i8 %61, %conv76
  %62 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_repeater.i.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 119, i8 noundef zeroext %conv2.i178) #11
  br label %for.body81

for.body81:                                       ; preds = %if.end88.for.body81_crit_edge, %if.end47
  %i.1186 = phi i32 [ 0, %if.end47 ], [ %inc, %if.end88.for.body81_crit_edge ]
  %64 = ptrtoint ptr %i2c_repeater.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_repeater.i.i, align 8
  %call1.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 125) #11
  %66 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %present, align 4
  %and85 = and i32 %67, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end106

if.end88:                                         ; preds = %for.body81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #11
  %inc = add nuw nsw i32 %i.1186, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end96, label %if.end88.for.body81_crit_edge

if.end88.for.body81_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %69 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr, align 2
  %conv100 = zext i16 %78 to i32
  %cond104 = select i1 %cmp49, i32 65, i32 66
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef %72, i32 noundef %76, i32 noundef %conv100, i32 noundef %cond104) #14
  br label %cleanup

if.end106:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  %cec_adap107 = getelementptr i8, ptr %sd, i32 1500
  %79 = ptrtoint ptr %cec_adap107 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cec_adap107, align 8
  %81 = ptrtoint ptr %parent_pa to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %parent_pa, align 2
  call void @cec_s_phys_addr(ptr noundef %80, i16 noundef zeroext %82, i1 noundef zeroext false) #11
  %delayed_work_enable_hotplug = getelementptr i8, ptr %sd, i32 1332
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %83 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %delayed_work_enable_hotplug, i32 noundef 20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %do.end96, %for.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then15
  %retval.0 = phi i32 [ -5, %do.end96 ], [ 0, %if.end106 ], [ 0, %if.then15 ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call43, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %parent_pa) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spa_loc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  %pll.i = alloca [2 x i8], align 1
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.309) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mode = getelementptr i8, ptr %sd, i32 508
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %timings8 = getelementptr i8, ptr %sd, i32 512
  %call9 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings8, ptr noundef %timings, i32 noundef 0, i1 noundef zeroext false) #11
  br i1 %call9, label %do.body11, label %if.end24

do.body11:                                        ; preds = %if.end7
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %do.end16, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %name18 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef %name18, ptr noundef nonnull @.str.309) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end7
  %4 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 3
  %cond.i = select i1 %cmp.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %call26 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull %cond.i, ptr noundef nonnull @adv7842_check_dv_timings, ptr noundef null) #11
  br i1 %call26, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i.i.i = icmp eq i32 %8, 3
  %cond.i.i = select i1 %cmp.i.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %cond.i61 = select i1 %cmp.i.i.i, i32 250000, i32 1000000
  %call2.i = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull %cond.i.i, i32 noundef %cond.i61, ptr noundef nonnull @adv7842_check_dv_timings, ptr noundef null) #11
  %flags.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 16
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags.i, align 1
  %or.i = or i32 %10, 512
  store i32 %or.i, ptr %flags.i, align 1
  %11 = call ptr @memcpy(ptr %timings8, ptr %timings, i32 132)
  %interlaced = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %conv = select i1 %tobool.not, i8 0, i8 64
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %14 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -111, i8 noundef zeroext %conv) #11
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp sgt i32 %16, 0
  br i1 %cmp.i, label %do.end.i, label %if.end28.do.end4.i_crit_edge

if.end28.do.end4.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef %name.i, ptr noundef nonnull @.str.315) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end28.do.end4.i_crit_edge
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %17 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 22, i8 noundef zeroext 67) #11
  %19 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 23, i8 noundef zeroext 90) #11
  %21 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext -127) #11
  %23 = trunc i32 %call1.i.i.i to i8
  %24 = and i8 %23, -17
  %25 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -127, i8 noundef zeroext %24) #11
  %27 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 38, i8 noundef zeroext 0) #11
  %29 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 39, i8 noundef zeroext 0) #11
  %31 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 40, i8 noundef zeroext 0) #11
  %33 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 41, i8 noundef zeroext 0) #11
  %35 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -113, i8 noundef zeroext 64) #11
  %37 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext -112, i8 noundef zeroext 0) #11
  %39 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -91, i8 noundef zeroext 0) #11
  %41 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -90, i8 noundef zeroext 0) #11
  %43 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -89, i8 noundef zeroext 0) #11
  %45 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext -85, i8 noundef zeroext 0) #11
  %47 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -84, i8 noundef zeroext 0) #11
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.441)
  switch i32 %50, label %do.body29.i [
    i32 1, label %do.end4.i.sw.bb.i_crit_edge
    i32 2, label %do.end4.i.sw.bb.i_crit_edge92
    i32 3, label %sw.bb23.i
  ]

do.end4.i.sw.bb.i_crit_edge92:                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.end4.i.sw.bb.i_crit_edge:                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end4.i.sw.bb.i_crit_edge, %do.end4.i.sw.bb.i_crit_edge92
  %call4.i.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef nonnull @adv7842_prim_mode_comp, i32 noundef 1000000, i1 noundef zeroext false) #11
  br i1 %call4.i.i, label %sw.bb.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.i

sw.bb.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

find_and_set_predefined_video_timings.exit.thread.i: ; preds = %for.inc.i.6.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.5.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.4.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.3.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.2.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.1.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %for.inc.i.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, %sw.bb.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge
  %i.023.i.lcssa.i = phi i32 [ 0, %sw.bb.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 1, %for.inc.i.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 2, %for.inc.i.1.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 3, %for.inc.i.2.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 4, %for.inc.i.3.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 5, %for.inc.i.4.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 6, %for.inc.i.5.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ], [ 7, %for.inc.i.6.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge ]
  %vid_std.i.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_comp, i32 %i.023.i.lcssa.i, i32 1
  %52 = ptrtoint ptr %vid_std.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vid_std.i.i, align 1
  %54 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext %53) #11
  %v_freq.i.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_comp, i32 %i.023.i.lcssa.i, i32 2
  %56 = ptrtoint ptr %v_freq.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %v_freq.i.i, align 1
  %shl.i.i = shl i8 %57, 4
  %add.i.i = or i8 %shl.i.i, 1
  %58 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 1, i8 noundef zeroext %add.i.i) #11
  br label %if.end34

for.inc.i.i:                                      ; preds = %sw.bb.i
  %60 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp.i.i.1.i = icmp eq i32 %61, 3
  %cond.i.1.i = select i1 %cmp.i.i.1.i, i32 250000, i32 1000000
  %call4.i.1.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 1, i32 0, i32 0), i32 noundef %cond.i.1.i, i1 noundef zeroext false) #11
  br i1 %call4.i.1.i, label %for.inc.i.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.1.i

for.inc.i.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  %62 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.i.i.2.i = icmp eq i32 %63, 3
  %cond.i.2.i = select i1 %cmp.i.i.2.i, i32 250000, i32 1000000
  %call4.i.2.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 2, i32 0, i32 0), i32 noundef %cond.i.2.i, i1 noundef zeroext false) #11
  br i1 %call4.i.2.i, label %for.inc.i.1.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.2.i

for.inc.i.1.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  %64 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp.i.i.3.i = icmp eq i32 %65, 3
  %cond.i.3.i = select i1 %cmp.i.i.3.i, i32 250000, i32 1000000
  %call4.i.3.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 3, i32 0, i32 0), i32 noundef %cond.i.3.i, i1 noundef zeroext false) #11
  br i1 %call4.i.3.i, label %for.inc.i.2.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.3.i

for.inc.i.2.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i.i.4.i = icmp eq i32 %67, 3
  %cond.i.4.i = select i1 %cmp.i.i.4.i, i32 250000, i32 1000000
  %call4.i.4.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 4, i32 0, i32 0), i32 noundef %cond.i.4.i, i1 noundef zeroext false) #11
  br i1 %call4.i.4.i, label %for.inc.i.3.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.4.i

for.inc.i.3.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.4.i:                                    ; preds = %for.inc.i.3.i
  %68 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp.i.i.5.i = icmp eq i32 %69, 3
  %cond.i.5.i = select i1 %cmp.i.i.5.i, i32 250000, i32 1000000
  %call4.i.5.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 5, i32 0, i32 0), i32 noundef %cond.i.5.i, i1 noundef zeroext false) #11
  br i1 %call4.i.5.i, label %for.inc.i.4.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.5.i

for.inc.i.4.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.5.i:                                    ; preds = %for.inc.i.4.i
  %70 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp.i.i.6.i = icmp eq i32 %71, 3
  %cond.i.6.i = select i1 %cmp.i.i.6.i, i32 250000, i32 1000000
  %call4.i.6.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 6, i32 0, i32 0), i32 noundef %cond.i.6.i, i1 noundef zeroext false) #11
  br i1 %call4.i.6.i, label %for.inc.i.5.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.6.i

for.inc.i.5.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.inc.i.6.i:                                    ; preds = %for.inc.i.5.i
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp.i.i.7.i = icmp eq i32 %73, 3
  %cond.i.7.i = select i1 %cmp.i.i.7.i, i32 250000, i32 1000000
  %call4.i.7.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_comp, i32 0, i32 7, i32 0, i32 0), i32 noundef %cond.i.7.i, i1 noundef zeroext false) #11
  br i1 %call4.i.7.i, label %for.inc.i.6.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge, label %for.inc.i.6.i.for.body.i86.i_crit_edge

for.inc.i.6.i.for.body.i86.i_crit_edge:           ; preds = %for.inc.i.6.i
  br label %for.body.i86.i

for.inc.i.6.i.find_and_set_predefined_video_timings.exit.thread.i_crit_edge: ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit.thread.i

for.body.i86.i:                                   ; preds = %for.inc.i96.i.for.body.i86.i_crit_edge, %for.inc.i.6.i.for.body.i86.i_crit_edge
  %arrayidx24.i81.i = phi ptr [ %arrayidx.i94.i, %for.inc.i96.i.for.body.i86.i_crit_edge ], [ @adv7842_prim_mode_gr, %for.inc.i.6.i.for.body.i86.i_crit_edge ]
  %i.023.i82.i = phi i32 [ %inc.i93.i, %for.inc.i96.i.for.body.i86.i_crit_edge ], [ 0, %for.inc.i.6.i.for.body.i86.i_crit_edge ]
  %74 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp.i.i83.i = icmp eq i32 %75, 3
  %cond.i84.i = select i1 %cmp.i.i83.i, i32 250000, i32 1000000
  %call4.i85.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %arrayidx24.i81.i, i32 noundef %cond.i84.i, i1 noundef zeroext false) #11
  br i1 %call4.i85.i, label %if.end.i92.i, label %for.inc.i96.i

if.end.i92.i:                                     ; preds = %for.body.i86.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid_std.i87.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_gr, i32 %i.023.i82.i, i32 1
  %76 = ptrtoint ptr %vid_std.i87.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %vid_std.i87.i, align 1
  %78 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %79, i8 noundef zeroext 0, i8 noundef zeroext %77) #11
  %v_freq.i89.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_gr, i32 %i.023.i82.i, i32 2
  %80 = ptrtoint ptr %v_freq.i89.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %v_freq.i89.i, align 1
  %shl.i90.i = shl i8 %81, 4
  %add.i91.i = or i8 %shl.i90.i, 2
  %82 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 1, i8 noundef zeroext %add.i91.i) #11
  br label %if.end34

for.inc.i96.i:                                    ; preds = %for.body.i86.i
  %inc.i93.i = add nuw nsw i32 %i.023.i82.i, 1
  %arrayidx.i94.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_gr, i32 %inc.i93.i
  %exitcond152.i = icmp eq i32 %inc.i93.i, 22
  br i1 %exitcond152.i, label %for.inc.i96.i.if.then33_crit_edge, label %for.inc.i96.i.for.body.i86.i_crit_edge

for.inc.i96.i.for.body.i86.i_crit_edge:           ; preds = %for.inc.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i86.i

for.inc.i96.i.if.then33_crit_edge:                ; preds = %for.inc.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

sw.bb23.i:                                        ; preds = %do.end4.i
  %call4.i104.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef nonnull @adv7842_prim_mode_hdmi_comp, i32 noundef 250000, i1 noundef zeroext false) #11
  br i1 %call4.i104.i, label %sw.bb23.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.i

sw.bb23.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

find_and_set_predefined_video_timings.exit117.thread.i: ; preds = %for.inc.i115.7.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.6.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.5.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.4.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.3.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.2.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.1.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %for.inc.i115.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, %sw.bb23.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge
  %i.023.i101.lcssa.i = phi i32 [ 0, %sw.bb23.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 1, %for.inc.i115.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 2, %for.inc.i115.1.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 3, %for.inc.i115.2.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 4, %for.inc.i115.3.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 5, %for.inc.i115.4.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 6, %for.inc.i115.5.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 7, %for.inc.i115.6.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ], [ 8, %for.inc.i115.7.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge ]
  %vid_std.i106.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_hdmi_comp, i32 %i.023.i101.lcssa.i, i32 1
  %84 = ptrtoint ptr %vid_std.i106.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vid_std.i106.i, align 1
  %86 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %87, i8 noundef zeroext 0, i8 noundef zeroext %85) #11
  %v_freq.i108.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_hdmi_comp, i32 %i.023.i101.lcssa.i, i32 2
  %88 = ptrtoint ptr %v_freq.i108.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %v_freq.i108.i, align 1
  %shl.i109.i = shl i8 %89, 4
  %add.i110.i = or i8 %shl.i109.i, 5
  %90 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 1, i8 noundef zeroext %add.i110.i) #11
  br label %if.end34

for.inc.i115.i:                                   ; preds = %sw.bb23.i
  %92 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp.i.i102.1.i = icmp eq i32 %93, 3
  %cond.i103.1.i = select i1 %cmp.i.i102.1.i, i32 250000, i32 1000000
  %call4.i104.1.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 1, i32 0, i32 0), i32 noundef %cond.i103.1.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.1.i, label %for.inc.i115.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.1.i

for.inc.i115.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.1.i:                                 ; preds = %for.inc.i115.i
  %94 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp.i.i102.2.i = icmp eq i32 %95, 3
  %cond.i103.2.i = select i1 %cmp.i.i102.2.i, i32 250000, i32 1000000
  %call4.i104.2.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 2, i32 0, i32 0), i32 noundef %cond.i103.2.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.2.i, label %for.inc.i115.1.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.2.i

for.inc.i115.1.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.2.i:                                 ; preds = %for.inc.i115.1.i
  %96 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp.i.i102.3.i = icmp eq i32 %97, 3
  %cond.i103.3.i = select i1 %cmp.i.i102.3.i, i32 250000, i32 1000000
  %call4.i104.3.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 3, i32 0, i32 0), i32 noundef %cond.i103.3.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.3.i, label %for.inc.i115.2.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.3.i

for.inc.i115.2.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.3.i:                                 ; preds = %for.inc.i115.2.i
  %98 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %99)
  %cmp.i.i102.4.i = icmp eq i32 %99, 3
  %cond.i103.4.i = select i1 %cmp.i.i102.4.i, i32 250000, i32 1000000
  %call4.i104.4.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 4, i32 0, i32 0), i32 noundef %cond.i103.4.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.4.i, label %for.inc.i115.3.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.4.i

for.inc.i115.3.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.4.i:                                 ; preds = %for.inc.i115.3.i
  %100 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i.i102.5.i = icmp eq i32 %101, 3
  %cond.i103.5.i = select i1 %cmp.i.i102.5.i, i32 250000, i32 1000000
  %call4.i104.5.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 5, i32 0, i32 0), i32 noundef %cond.i103.5.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.5.i, label %for.inc.i115.4.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.5.i

for.inc.i115.4.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.5.i:                                 ; preds = %for.inc.i115.4.i
  %102 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %cmp.i.i102.6.i = icmp eq i32 %103, 3
  %cond.i103.6.i = select i1 %cmp.i.i102.6.i, i32 250000, i32 1000000
  %call4.i104.6.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 6, i32 0, i32 0), i32 noundef %cond.i103.6.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.6.i, label %for.inc.i115.5.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.6.i

for.inc.i115.5.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.6.i:                                 ; preds = %for.inc.i115.5.i
  %104 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp.i.i102.7.i = icmp eq i32 %105, 3
  %cond.i103.7.i = select i1 %cmp.i.i102.7.i, i32 250000, i32 1000000
  %call4.i104.7.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 7, i32 0, i32 0), i32 noundef %cond.i103.7.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.7.i, label %for.inc.i115.6.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.7.i

for.inc.i115.6.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.inc.i115.7.i:                                 ; preds = %for.inc.i115.6.i
  %106 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp.i.i102.8.i = icmp eq i32 %107, 3
  %cond.i103.8.i = select i1 %cmp.i.i102.8.i, i32 250000, i32 1000000
  %call4.i104.8.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv7842_video_standards }>, ptr @adv7842_prim_mode_hdmi_comp, i32 0, i32 8, i32 0, i32 0), i32 noundef %cond.i103.8.i, i1 noundef zeroext false) #11
  br i1 %call4.i104.8.i, label %for.inc.i115.7.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge, label %for.inc.i115.7.i.for.body.i124.i_crit_edge

for.inc.i115.7.i.for.body.i124.i_crit_edge:       ; preds = %for.inc.i115.7.i
  br label %for.body.i124.i

for.inc.i115.7.i.find_and_set_predefined_video_timings.exit117.thread.i_crit_edge: ; preds = %for.inc.i115.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_and_set_predefined_video_timings.exit117.thread.i

for.body.i124.i:                                  ; preds = %for.inc.i134.i.for.body.i124.i_crit_edge, %for.inc.i115.7.i.for.body.i124.i_crit_edge
  %arrayidx24.i119.i = phi ptr [ %arrayidx.i132.i, %for.inc.i134.i.for.body.i124.i_crit_edge ], [ @adv7842_prim_mode_hdmi_gr, %for.inc.i115.7.i.for.body.i124.i_crit_edge ]
  %i.023.i120.i = phi i32 [ %inc.i131.i, %for.inc.i134.i.for.body.i124.i_crit_edge ], [ 0, %for.inc.i115.7.i.for.body.i124.i_crit_edge ]
  %108 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp.i.i121.i = icmp eq i32 %109, 3
  %cond.i122.i = select i1 %cmp.i.i121.i, i32 250000, i32 1000000
  %call4.i123.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %arrayidx24.i119.i, i32 noundef %cond.i122.i, i1 noundef zeroext false) #11
  br i1 %call4.i123.i, label %if.end.i130.i, label %for.inc.i134.i

if.end.i130.i:                                    ; preds = %for.body.i124.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid_std.i125.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_hdmi_gr, i32 %i.023.i120.i, i32 1
  %110 = ptrtoint ptr %vid_std.i125.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %vid_std.i125.i, align 1
  %112 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 0, i8 noundef zeroext %111) #11
  %v_freq.i127.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_hdmi_gr, i32 %i.023.i120.i, i32 2
  %114 = ptrtoint ptr %v_freq.i127.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %v_freq.i127.i, align 1
  %shl.i128.i = shl i8 %115, 4
  %add.i129.i = or i8 %shl.i128.i, 6
  %116 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %117, i8 noundef zeroext 1, i8 noundef zeroext %add.i129.i) #11
  br label %if.end34

for.inc.i134.i:                                   ; preds = %for.body.i124.i
  %inc.i131.i = add nuw nsw i32 %i.023.i120.i, 1
  %arrayidx.i132.i = getelementptr %struct.adv7842_video_standards, ptr @adv7842_prim_mode_hdmi_gr, i32 %inc.i131.i
  %exitcond.i = icmp eq i32 %inc.i131.i, 15
  br i1 %exitcond.i, label %for.inc.i134.i.if.then33_crit_edge, label %for.inc.i134.i.for.body.i124.i_crit_edge

for.inc.i134.i.for.body.i124.i_crit_edge:         ; preds = %for.inc.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i124.i

for.inc.i134.i.if.then33_crit_edge:               ; preds = %for.inc.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

do.body29.i:                                      ; preds = %do.end4.i
  %118 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp30.i = icmp sgt i32 %118, 1
  br i1 %cmp30.i, label %do.end34.i, label %do.body29.i.if.then33_crit_edge

do.body29.i.if.then33_crit_edge:                  ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  %name36.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name36.i, ptr noundef nonnull @.str.315, i32 noundef %50) #14
  br label %if.then33

if.then33:                                        ; preds = %do.end34.i, %do.body29.i.if.then33_crit_edge, %for.inc.i134.i.if.then33_crit_edge, %for.inc.i96.i.if.then33_crit_edge
  %119 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_priv.i.i.i, align 4
  %121 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %4, align 1
  %hfrontporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %123 = ptrtoint ptr %hfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %hfrontporch.i.i, align 1
  %hsync.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %125 = ptrtoint ptr %hsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %hsync.i.i, align 1
  %hbackporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %127 = ptrtoint ptr %hbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %hbackporch.i.i, align 1
  %add.i.i65 = add i32 %128, %126
  %add1.i.i = add i32 %add.i.i65, %122
  %add2.i.i = add i32 %add1.i.i, %124
  %height.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %129 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %height.i.i, align 1
  %vfrontporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %131 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %vfrontporch.i.i, align 1
  %vsync.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %133 = ptrtoint ptr %vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %vsync.i.i, align 1
  %vbackporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %135 = ptrtoint ptr %vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %vbackporch.i.i, align 1
  %il_vfrontporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %137 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %il_vfrontporch.i.i, align 1
  %il_vsync.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %139 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %il_vsync.i.i, align 1
  %il_vbackporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %141 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i153.i = add i32 %136, %134
  %add1.i154.i = add i32 %132, %130
  %add2.i155.i = add i32 %add1.i154.i, %add.i153.i
  %add3.i.i = add i32 %add2.i155.i, %138
  %add4.i.i = add i32 %add3.i.i, %140
  %add5.i.i = add i32 %add4.i.i, %142
  %conv.i = add i32 %add.i.i65, 65532
  %sub6.i = sub i32 %add5.i.i, %132
  %conv8.i = add i32 %sub6.i, 1
  %conv11.i = add i32 %add.i153.i, 1
  %pixelclock.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %143 = ptrtoint ptr %pixelclock.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 8)
  %144 = load i64, ptr %pixelclock.i, align 1
  %conv12.i = trunc i64 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv12.i)
  %145 = icmp ult i32 %conv12.i, 100
  br i1 %145, label %if.then33.cond.end.i_crit_edge, label %cond.true.i

if.then33.cond.end.i_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %div.i = udiv i32 %conv12.i, 100
  %mul.i = mul i32 %add2.i.i, 286363
  %div17.i = udiv i32 %mul.i, %div.i
  %phi.cast152.i = and i32 %div17.i, 65535
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then33.cond.end.i_crit_edge
  %cond.i66 = phi i32 [ %phi.cast152.i, %cond.true.i ], [ 0, %if.then33.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pll.i) #11
  %146 = getelementptr inbounds [2 x i8], ptr %pll.i, i32 0, i32 1
  %shr.i = lshr i32 %add2.i.i, 8
  %147 = trunc i32 %shr.i to i8
  %148 = and i8 %147, 31
  %conv19.i = or i8 %148, -64
  %149 = ptrtoint ptr %pll.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv19.i, ptr %pll.i, align 1
  %conv21.i = trunc i32 %add2.i.i to i8
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv21.i, ptr %146, align 1
  %151 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp22.i = icmp sgt i32 %151, 1
  br i1 %cmp22.i, label %do.end.i68, label %cond.end.i.do.end27.i_crit_edge

cond.end.i.do.end27.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i

do.end.i68:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i67 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef %name.i67, ptr noundef nonnull @.str.322) #14
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end.i68, %cond.end.i.do.end27.i_crit_edge
  %152 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mode, align 8
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.442)
  switch i32 %153, label %do.body80.i [
    i32 1, label %do.end27.i.sw.bb.i72_crit_edge
    i32 2, label %do.end27.i.sw.bb.i72_crit_edge93
    i32 3, label %sw.bb77.i
  ]

do.end27.i.sw.bb.i72_crit_edge93:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i72

do.end27.i.sw.bb.i72_crit_edge:                   ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i72

sw.bb.i72:                                        ; preds = %do.end27.i.sw.bb.i72_crit_edge, %do.end27.i.sw.bb.i72_crit_edge93
  %155 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %156, i8 noundef zeroext 0, i8 noundef zeroext 7) #11
  %157 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %158, i8 noundef zeroext 1, i8 noundef zeroext 2) #11
  %159 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i.i.i71 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %160, i8 noundef zeroext -127) #11
  %161 = trunc i32 %call1.i.i.i71 to i8
  %conv2.i.i = or i8 %161, 16
  %162 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %163, i8 noundef zeroext -127, i8 noundef zeroext %conv2.i.i) #11
  %call32.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %120, i8 noundef zeroext 22, i8 noundef zeroext 2, ptr noundef nonnull %pll.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool.not.i, label %if.end41.i, label %do.end36.i

do.end36.i:                                       ; preds = %sw.bb.i72
  call void @__sanitizer_cov_trace_pc() #13
  %name38.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name38.i) #14
  br label %configure_custom_video_timings.exit

if.end41.i:                                       ; preds = %sw.bb.i72
  call void @__sanitizer_cov_trace_pc() #13
  %164 = lshr i32 %conv.i, 8
  %165 = trunc i32 %164 to i8
  %conv45.i = and i8 %165, 15
  %166 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %167, i8 noundef zeroext 38, i8 noundef zeroext %conv45.i) #11
  %conv49.i = trunc i32 %conv.i to i8
  %168 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %169, i8 noundef zeroext 39, i8 noundef zeroext %conv49.i) #11
  %170 = lshr i32 %add1.i.i, 8
  %171 = trunc i32 %170 to i8
  %conv54.i = and i8 %171, 15
  %172 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %173, i8 noundef zeroext 40, i8 noundef zeroext %conv54.i) #11
  %conv58.i = trunc i32 %add1.i.i to i8
  %174 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %175, i8 noundef zeroext 41, i8 noundef zeroext %conv58.i) #11
  %176 = lshr i32 %conv8.i, 4
  %conv63.i = trunc i32 %176 to i8
  %177 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %178, i8 noundef zeroext -91, i8 noundef zeroext %conv63.i) #11
  %and66.i = shl i32 %conv8.i, 4
  %179 = lshr i32 %conv11.i, 8
  %and69.i = and i32 %179, 15
  %or70.i = or i32 %and66.i, %and69.i
  %conv71.i = trunc i32 %or70.i to i8
  %180 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %181, i8 noundef zeroext -90, i8 noundef zeroext %conv71.i) #11
  %conv75.i = trunc i32 %conv11.i to i8
  %182 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %183, i8 noundef zeroext -89, i8 noundef zeroext %conv75.i) #11
  br label %configure_custom_video_timings.exit

sw.bb77.i:                                        ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %185, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  %186 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %187, i8 noundef zeroext 1, i8 noundef zeroext 6) #11
  br label %configure_custom_video_timings.exit

do.body80.i:                                      ; preds = %do.end27.i
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %188)
  %cmp81.i = icmp sgt i32 %188, 1
  br i1 %cmp81.i, label %do.end86.i, label %do.body80.i.configure_custom_video_timings.exit_crit_edge

do.body80.i.configure_custom_video_timings.exit_crit_edge: ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %configure_custom_video_timings.exit

do.end86.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #13
  %name88.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name88.i, ptr noundef nonnull @.str.322, i32 noundef %153) #14
  br label %configure_custom_video_timings.exit

configure_custom_video_timings.exit:              ; preds = %do.end86.i, %do.body80.i.configure_custom_video_timings.exit_crit_edge, %sw.bb77.i, %if.end41.i, %do.end36.i
  %189 = lshr i32 %cond.i66, 8
  %190 = trunc i32 %189 to i8
  %conv98.i = and i8 %190, 7
  %191 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %192, i8 noundef zeroext -113, i8 noundef zeroext %conv98.i) #11
  %conv102.i = trunc i32 %cond.i66 to i8
  %193 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext -112, i8 noundef zeroext %conv102.i) #11
  %shr104.i = lshr i32 %add5.i.i, 4
  %conv106.i = trunc i32 %shr104.i to i8
  %195 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %196, i8 noundef zeroext -85, i8 noundef zeroext %conv106.i) #11
  %call3.tr.i = trunc i32 %add5.i.i to i8
  %conv110.i = shl i8 %call3.tr.i, 4
  %197 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %i2c_cp.i, align 8
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %198, i8 noundef zeroext -84, i8 noundef zeroext %conv110.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pll.i) #11
  br label %if.end34

if.end34:                                         ; preds = %configure_custom_video_timings.exit, %if.end.i130.i, %find_and_set_predefined_video_timings.exit117.thread.i, %if.end.i92.i, %find_and_set_predefined_video_timings.exit.thread.i
  call fastcc void @set_rgb_quantization_range(ptr noundef %sd)
  %199 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp35 = icmp sgt i32 %199, 1
  br i1 %cmp35, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %name38 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @v4l2_print_dv_timings(ptr noundef %name38, ptr noundef nonnull @.str.313, ptr noundef %timings, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end16, %do.body11.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %do.end4.cleanup_crit_edge ], [ 0, %do.end16 ], [ 0, %do.body11.cleanup_crit_edge ], [ -34, %if.end24.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_rgb_quantization_range(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %offset_buf.i = alloca [4 x i8], align 1
  %gain_buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #11
  %and = and i32 %call1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %i2c_hdmi.i = getelementptr i8, ptr %sd, i32 1456
  %2 = ptrtoint ptr %i2c_hdmi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_hdmi.i, align 4
  %call1.i131 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #11
  %and3 = and i32 %call1.i131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i133 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 96) #11
  %and8 = and i32 %call1.i133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_infoframe.i = getelementptr i8, ptr %sd, i32 1468
  %6 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_infoframe.i, align 8
  %call1.i134 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 1) #11
  %8 = lshr i32 %call1.i134, 5
  %phi.cast = and i32 %8, 255
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %y.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %land.lhs.true.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %do.end21, label %do.end21.thread

do.end21.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_buf.i) #11
  %10 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 3
  br label %do.end9.i

do.end21:                                         ; preds = %do.body
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %rgb_quantization_range = getelementptr i8, ptr %sd, i32 1324
  %13 = ptrtoint ptr %rgb_quantization_range to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rgb_quantization_range, align 8
  %and.lobit = lshr exact i32 %and, 1
  %and3.lobit = lshr exact i32 %and3, 7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %name, ptr noundef nonnull @.str.286, i32 noundef %14, i32 noundef %and.lobit, i32 noundef %and3.lobit) #14
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_buf.i) #11
  %15 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 2
  %17 = getelementptr inbounds [4 x i8], ptr %gain_buf.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 1
  br i1 %cmp.i, label %do.end.i, label %do.end21.do.end9.i_crit_edge

do.end21.do.end9.i_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

do.end.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef %name, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.289, i32 noundef 256, i32 noundef 256, i32 noundef 256) #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.end21.do.end9.i_crit_edge, %do.end21.thread
  %18 = phi ptr [ %12, %do.end21.thread ], [ %17, %do.end.i ], [ %17, %do.end21.do.end9.i_crit_edge ]
  %19 = phi ptr [ %11, %do.end21.thread ], [ %16, %do.end.i ], [ %16, %do.end21.do.end9.i_crit_edge ]
  %20 = phi ptr [ %10, %do.end21.thread ], [ %15, %do.end.i ], [ %15, %do.end21.do.end9.i_crit_edge ]
  %21 = ptrtoint ptr %gain_buf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %gain_buf.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %20, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %19, align 1
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %18, align 1
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %25 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cp.i, align 8
  %call39.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %26, i8 noundef zeroext 115, i8 noundef zeroext 4, ptr noundef nonnull %gain_buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.end9.i.adv7842_set_gain.exit_crit_edge, label %do.end44.i

do.end9.i.adv7842_set_gain.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_set_gain.exit

do.end44.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef %name46.i, ptr noundef nonnull @.str.288) #14
  br label %adv7842_set_gain.exit

adv7842_set_gain.exit:                            ; preds = %do.end44.i, %do.end9.i.adv7842_set_gain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_buf.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset_buf.i) #11
  %27 = getelementptr inbounds [4 x i8], ptr %offset_buf.i, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i8], ptr %offset_buf.i, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i8], ptr %offset_buf.i, i32 0, i32 3
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i135 = icmp sgt i32 %30, 1
  br i1 %cmp.i135, label %do.end.i138, label %adv7842_set_gain.exit.do.end9.i139_crit_edge

adv7842_set_gain.exit.do.end9.i139_crit_edge:     ; preds = %adv7842_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i139

do.end.i138:                                      ; preds = %adv7842_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name.i136 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name.i136, ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.289, i32 noundef 1023, i32 noundef 1023, i32 noundef 1023) #14
  br label %do.end9.i139

do.end9.i139:                                     ; preds = %do.end.i138, %adv7842_set_gain.exit.do.end9.i139_crit_edge
  %31 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i.i = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 119) #11
  %33 = trunc i32 %call1.i.i to i8
  %conv13.i = or i8 %33, 63
  %34 = ptrtoint ptr %offset_buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv13.i, ptr %offset_buf.i, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %27, align 1
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %28, align 1
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %29, align 1
  %38 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_cp.i, align 8
  %call36.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %39, i8 noundef zeroext 119, i8 noundef zeroext 4, ptr noundef nonnull %offset_buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.end9.i139.adv7842_set_offset.exit_crit_edge, label %do.end41.i

do.end9.i139.adv7842_set_offset.exit_crit_edge:   ; preds = %do.end9.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_set_offset.exit

do.end41.i:                                       ; preds = %do.end9.i139
  call void @__sanitizer_cov_trace_pc() #13
  %name43.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name43.i, ptr noundef nonnull @.str.295) #14
  br label %adv7842_set_offset.exit

adv7842_set_offset.exit:                          ; preds = %do.end41.i, %do.end9.i139.adv7842_set_offset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset_buf.i) #11
  %and.tr = trunc i32 %and to i8
  %40 = shl nuw nsw i8 %and.tr, 1
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i140 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 2) #11
  %43 = trunc i32 %call1.i.i140 to i8
  %44 = and i8 %43, -5
  %45 = or i8 %44, %40
  %conv2.i = xor i8 %45, 4
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i) #11
  %rgb_quantization_range26 = getelementptr i8, ptr %sd, i32 1324
  %48 = ptrtoint ptr %rgb_quantization_range26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rgb_quantization_range26, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.443)
  switch i32 %49, label %adv7842_set_offset.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb56
    i32 2, label %sw.bb69
  ]

adv7842_set_offset.exit.sw.epilog_crit_edge:      ; preds = %adv7842_set_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %adv7842_set_offset.exit
  %mode = getelementptr i8, ptr %sd, i32 508
  %51 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode, align 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.444)
  switch i32 %52, label %if.end37 [
    i32 2, label %if.then29
    i32 1, label %if.then35
  ]

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i143 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 2) #11
  %56 = trunc i32 %call1.i.i143 to i8
  %57 = and i8 %56, 15
  %conv2.i144 = or i8 %57, 16
  %58 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i144) #11
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i146 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 2) #11
  %62 = trunc i32 %call1.i.i146 to i8
  %conv2.i147 = or i8 %62, -16
  %63 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i147) #11
  br label %sw.epilog

if.end37:                                         ; preds = %sw.bb
  br i1 %tobool4.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i149 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %66, i8 noundef zeroext 2) #11
  %67 = trunc i32 %call1.i.i149 to i8
  %conv2.i150 = or i8 %67, -16
  %68 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i150) #11
  br label %sw.epilog

if.end41:                                         ; preds = %if.end37
  %flags = getelementptr i8, ptr %sd, i32 580
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and42 = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %72 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i154 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 2) #11
  %74 = trunc i32 %call1.i.i154 to i8
  %75 = and i8 %74, 15
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 2, i8 noundef zeroext %75) #11
  br label %sw.epilog

if.else:                                          ; preds = %if.end41
  %conv2.i155 = or i8 %75, 16
  %78 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %79, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i155) #11
  %80 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp.i156 = icmp ne i32 %81, 3
  %brmerge = select i1 %cmp.i156, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @adv7842_set_offset(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 64)
  br label %sw.epilog

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @adv7842_set_gain(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 224, i16 noundef zeroext 224, i16 noundef zeroext 224)
  call fastcc void @adv7842_set_offset(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 112, i16 noundef zeroext 112, i16 noundef zeroext 112)
  br label %sw.epilog

sw.bb56:                                          ; preds = %adv7842_set_offset.exit
  %mode57 = getelementptr i8, ptr %sd, i32 508
  %82 = ptrtoint ptr %mode57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mode57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp58 = icmp eq i32 %83, 1
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i158 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 2) #11
  %86 = trunc i32 %call1.i.i158 to i8
  %87 = and i8 %86, 15
  %conv2.i159 = or i8 %87, 32
  %88 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i159) #11
  br label %sw.epilog

if.end62:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.0)
  %cmp64.not = icmp eq i32 %y.0, 0
  br i1 %cmp64.not, label %if.end67, label %if.end62.sw.epilog_crit_edge

if.end62.sw.epilog_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i161 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 2) #11
  %92 = trunc i32 %call1.i.i161 to i8
  %93 = and i8 %92, 15
  %94 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 2, i8 noundef zeroext %93) #11
  br label %sw.epilog

sw.bb69:                                          ; preds = %adv7842_set_offset.exit
  %mode70 = getelementptr i8, ptr %sd, i32 508
  %96 = ptrtoint ptr %mode70 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp71 = icmp eq i32 %97, 1
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i163 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %99, i8 noundef zeroext 2) #11
  %100 = trunc i32 %call1.i.i163 to i8
  %101 = and i8 %100, 15
  %conv2.i164 = or i8 %101, 96
  %102 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %103, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i164) #11
  br label %sw.epilog

if.end75:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.0)
  %cmp77.not = icmp eq i32 %y.0, 0
  br i1 %cmp77.not, label %if.end80, label %if.end75.sw.epilog_crit_edge

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end80:                                         ; preds = %if.end75
  %104 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i166 = call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 2) #11
  %106 = trunc i32 %call1.i.i166 to i8
  %107 = and i8 %106, 15
  %conv2.i167 = or i8 %107, 16
  %108 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_priv.i.i, align 4
  call fastcc void @adv_smbus_write_byte_data(ptr noundef %109, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i167) #11
  %110 = ptrtoint ptr %mode70 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mode70, align 8
  %112 = add i32 %111, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %113 = icmp ult i32 %112, 2
  %tobool4.not.not = xor i1 %tobool4.not, true
  %brmerge130 = select i1 %113, i1 true, i1 %tobool4.not.not
  br i1 %brmerge130, label %if.end80.sw.epilog_crit_edge, label %if.end87

if.end80.sw.epilog_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end87:                                         ; preds = %if.end80
  br i1 %tobool.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @adv7842_set_offset(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 64)
  br label %sw.epilog

if.else90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @adv7842_set_gain(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 224, i16 noundef zeroext 224, i16 noundef zeroext 224)
  call fastcc void @adv7842_set_offset(ptr noundef %sd, i1 noundef zeroext false, i16 noundef zeroext 112, i16 noundef zeroext 112, i16 noundef zeroext 112)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else90, %if.then89, %if.end80.sw.epilog_crit_edge, %if.end75.sw.epilog_crit_edge, %if.then73, %if.end67, %if.end62.sw.epilog_crit_edge, %if.then60, %if.else53, %if.then52, %if.then44, %if.then39, %if.then35, %if.then29, %adv7842_set_offset.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_set_gain(ptr noundef %sd, i1 noundef zeroext %auto_gain, i16 noundef zeroext %gain_a, i16 noundef zeroext %gain_b, i16 noundef zeroext %gain_c) unnamed_addr #2 align 64 {
entry:
  %gain_buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_buf) #11
  %0 = getelementptr inbounds [4 x i8], ptr %gain_buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %gain_buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %gain_buf, i32 0, i32 3
  br i1 %auto_gain, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %gain_c.addr.0 = phi i16 [ 256, %if.then ], [ %gain_c, %entry.do.body_crit_edge ]
  %agc_mode_man.0 = phi i8 [ 0, %if.then ], [ -64, %entry.do.body_crit_edge ]
  %gain_b.addr.0 = phi i16 [ 256, %if.then ], [ %gain_b, %entry.do.body_crit_edge ]
  %gain_a.addr.0 = phi i16 [ 256, %if.then ], [ %gain_a, %entry.do.body_crit_edge ]
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %auto_gain, ptr @.str.289, ptr @.str.290
  %conv = zext i16 %gain_a.addr.0 to i32
  %conv4 = zext i16 %gain_b.addr.0 to i32
  %conv5 = zext i16 %gain_c.addr.0 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef %name, ptr noundef nonnull @.str.288, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %4 = lshr i16 %gain_a.addr.0, 4
  %5 = trunc i16 %4 to i8
  %6 = and i8 %5, 63
  %or14 = or i8 %agc_mode_man.0, %6
  %7 = ptrtoint ptr %gain_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or14, ptr %gain_buf, align 1
  %and17 = shl i16 %gain_a.addr.0, 4
  %and20 = lshr i16 %gain_b.addr.0, 6
  %8 = and i16 %and20, 15
  %or22 = or i16 %and17, %8
  %conv23 = trunc i16 %or22 to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %0, align 1
  %10 = shl i16 %gain_b.addr.0, 2
  %and29 = lshr i16 %gain_c.addr.0, 8
  %11 = and i16 %and29, 3
  %or31 = or i16 %10, %11
  %conv32 = trunc i16 %or31 to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv32, ptr %1, align 1
  %conv36 = trunc i16 %gain_c.addr.0 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv36, ptr %2, align 1
  %i2c_cp = getelementptr i8, ptr %sd, i32 1444
  %14 = ptrtoint ptr %i2c_cp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cp, align 8
  %call39 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %15, i8 noundef zeroext 115, i8 noundef zeroext 4, ptr noundef nonnull %gain_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end9.if.end49_crit_edge, label %do.end44

do.end9.if.end49_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end44:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %name46 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef %name46, ptr noundef nonnull @.str.288) #14
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %do.end9.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_set_offset(ptr noundef %sd, i1 noundef zeroext %auto_offset, i16 noundef zeroext %offset_a, i16 noundef zeroext %offset_b, i16 noundef zeroext %offset_c) unnamed_addr #2 align 64 {
entry:
  %offset_buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset_buf) #11
  %0 = getelementptr inbounds [4 x i8], ptr %offset_buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %offset_buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %offset_buf, i32 0, i32 3
  %offset_c.addr.0 = select i1 %auto_offset, i16 1023, i16 %offset_c
  %offset_b.addr.0 = select i1 %auto_offset, i16 1023, i16 %offset_b
  %offset_a.addr.0 = select i1 %auto_offset, i16 1023, i16 %offset_a
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %auto_offset, ptr @.str.289, ptr @.str.290
  %conv = zext i16 %offset_a.addr.0 to i32
  %conv4 = zext i16 %offset_b.addr.0 to i32
  %conv5 = zext i16 %offset_c.addr.0 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name, ptr noundef nonnull @.str.295, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %i2c_cp.i = getelementptr i8, ptr %sd, i32 1444
  %4 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_cp.i, align 8
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 119) #11
  %and = and i32 %call1.i, 192
  %6 = lshr i16 %offset_a.addr.0, 4
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  %or = or i32 %and, %8
  %conv13 = trunc i32 %or to i8
  %9 = ptrtoint ptr %offset_buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv13, ptr %offset_buf, align 1
  %and15 = shl i16 %offset_a.addr.0, 4
  %and17 = lshr i16 %offset_b.addr.0, 6
  %10 = and i16 %and17, 15
  %or19 = or i16 %10, %and15
  %conv20 = trunc i16 %or19 to i8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %0, align 1
  %12 = shl i16 %offset_b.addr.0, 2
  %and26 = lshr i16 %offset_c.addr.0, 8
  %13 = and i16 %and26, 3
  %or28 = or i16 %13, %12
  %conv29 = trunc i16 %or28 to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %1, align 1
  %conv33 = trunc i16 %offset_c.addr.0 to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv33, ptr %2, align 1
  %16 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_cp.i, align 8
  %call36 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %17, i8 noundef zeroext 119, i8 noundef zeroext 4, ptr noundef nonnull %offset_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end9.if.end46_crit_edge, label %do.end41

do.end9.if.end46_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end41:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %name43 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name43, ptr noundef nonnull @.str.295) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %do.end9.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset_buf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_phys_addr_validate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_inv_register(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef %name) #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333, ptr noundef %name) #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.336, ptr noundef %name) #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef %name) #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342, ptr noundef %name) #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef %name) #14
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, ptr noundef %name) #14
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef %name) #14
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef %name) #14
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, ptr noundef %name) #14
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, ptr noundef %name) #14
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef %name) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, ptr noundef %name, ptr noundef nonnull @.str.393, i32 noundef %input) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.445)
  switch i32 %input, label %do.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 3, label %sw.bb9
    i32 2, label %sw.bb12
    i32 4, label %sw.bb15
    i32 5, label %sw.bb18
  ]

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr i8, ptr %sd, i32 508
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %mode, align 8
  %vid_std_select = getelementptr i8, ptr %sd, i32 644
  %3 = ptrtoint ptr %vid_std_select to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %vid_std_select, align 8
  %hdmi_port_a = getelementptr i8, ptr %sd, i32 1433
  %4 = ptrtoint ptr %hdmi_port_a to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hdmi_port_a, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode6 = getelementptr i8, ptr %sd, i32 508
  %5 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %mode6, align 8
  %vid_std_select7 = getelementptr i8, ptr %sd, i32 644
  %6 = ptrtoint ptr %vid_std_select7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %vid_std_select7, align 8
  %hdmi_port_a8 = getelementptr i8, ptr %sd, i32 1433
  %7 = ptrtoint ptr %hdmi_port_a8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %hdmi_port_a8, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode10 = getelementptr i8, ptr %sd, i32 508
  %8 = ptrtoint ptr %mode10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mode10, align 8
  %vid_std_select11 = getelementptr i8, ptr %sd, i32 644
  %9 = ptrtoint ptr %vid_std_select11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %vid_std_select11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode13 = getelementptr i8, ptr %sd, i32 508
  %10 = ptrtoint ptr %mode13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %mode13, align 8
  %vid_std_select14 = getelementptr i8, ptr %sd, i32 644
  %11 = ptrtoint ptr %vid_std_select14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %vid_std_select14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode16 = getelementptr i8, ptr %sd, i32 508
  %12 = ptrtoint ptr %mode16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode16, align 8
  %vid_std_select17 = getelementptr i8, ptr %sd, i32 644
  %13 = ptrtoint ptr %vid_std_select17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %vid_std_select17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %mode19 = getelementptr i8, ptr %sd, i32 508
  %14 = ptrtoint ptr %mode19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mode19, align 8
  %vid_std_select20 = getelementptr i8, ptr %sd, i32 644
  %15 = ptrtoint ptr %vid_std_select20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %vid_std_select20, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb5, %sw.bb
  %i2c_hdmi.i.i.i = getelementptr i8, ptr %sd, i32 1456
  %16 = ptrtoint ptr %i2c_hdmi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_hdmi.i.i.i, align 4
  %call1.i.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 26) #11
  %18 = trunc i32 %call1.i.i.i to i8
  %conv2.i.i = or i8 %18, 16
  %19 = ptrtoint ptr %i2c_hdmi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_hdmi.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 26, i8 noundef zeroext %conv2.i.i) #11
  tail call void @msleep(i32 noundef 16) #11
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %21 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 21, i8 noundef zeroext -66) #11
  %23 = ptrtoint ptr %i2c_hdmi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_hdmi.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 120) #11
  %vid_std_select21 = getelementptr i8, ptr %sd, i32 644
  %25 = ptrtoint ptr %vid_std_select21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vid_std_select21, align 8
  tail call fastcc void @select_input(ptr noundef %sd, i32 noundef %26)
  tail call fastcc void @enable_input(ptr noundef %sd)
  tail call void @v4l2_subdev_notify_event(ptr noundef %sd, ptr noundef nonnull @adv7842_ev_fmt) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_g_std(ptr noundef %sd, ptr nocapture noundef writeonly %norm) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.394) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mode = getelementptr i8, ptr %sd, i32 508
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not = icmp eq i32 %2, 0
  br i1 %cmp5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %norm8 = getelementptr i8, ptr %sd, i32 652
  %3 = ptrtoint ptr %norm8 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %norm8, align 8
  %5 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %norm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -61, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_s_std(ptr noundef %sd, i64 noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.395) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %mode = getelementptr i8, ptr %sd, i32 508
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6.not = icmp eq i32 %2, 0
  br i1 %cmp6.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %and = and i64 %norm, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %sdp_io_sync_625 = getelementptr i8, ptr %sd, i32 -50
  %and10 = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %sdp_io_sync_525 = getelementptr i8, ptr %sd, i32 -32
  %spec.select = select i1 %tobool11.not, ptr null, ptr %sdp_io_sync_525
  %sdp_io_sync_525.sink = select i1 %tobool.not, ptr %spec.select, ptr %sdp_io_sync_625
  tail call fastcc void @adv7842_s_sdp_io(ptr noundef %sd, ptr noundef %sdp_io_sync_525.sink)
  %and16 = and i64 %norm, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end8.cleanup_crit_edge, label %if.then18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %norm19 = getelementptr i8, ptr %sd, i32 652
  %3 = ptrtoint ptr %norm19 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %norm, ptr %norm19, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ -61, %do.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_querystd(ptr noundef %sd, ptr nocapture noundef %std) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.396) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mode = getelementptr i8, ptr %sd, i32 508
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not = icmp eq i32 %2, 0
  br i1 %cmp5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %3 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 90) #11
  %and = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %std, align 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp sgt i32 %6, 0
  br i1 %cmp11, label %do.end15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %name17 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %name17, ptr noundef nonnull @.str.396) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i56 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 82) #11
  %and25 = and i32 %call1.i56, 15
  %9 = zext i32 %and25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.446)
  switch i32 %and25, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb29
    i32 4, label %sw.bb31
    i32 6, label %sw.bb33
    i32 12, label %sw.bb35
    i32 14, label %sw.bb37
    i32 15, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std, align 8
  %and26 = and i64 %11, 45056
  store i64 %and26, ptr %std, align 8
  br label %cleanup

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %std, align 8
  %and28 = and i64 %13, 16384
  store i64 %and28, ptr %std, align 8
  br label %cleanup

sw.bb29:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %std, align 8
  %and30 = and i64 %15, 16711680
  store i64 %and30, ptr %std, align 8
  br label %cleanup

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std, align 8
  %and32 = and i64 %17, 256
  store i64 %and32, ptr %std, align 8
  br label %cleanup

sw.bb33:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %std, align 8
  %and34 = and i64 %19, 2048
  store i64 %and34, ptr %std, align 8
  br label %cleanup

sw.bb35:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %std, align 8
  %and36 = and i64 %21, 1024
  store i64 %and36, ptr %std, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %std, align 8
  %and38 = and i64 %23, 255
  store i64 %and38, ptr %std, align 8
  br label %cleanup

sw.bb39:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %std, align 8
  %and40 = and i64 %25, 16711680
  store i64 %and40, ptr %std, align 8
  br label %cleanup

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %std, align 8
  %and41 = and i64 %27, 16777215
  store i64 %and41, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb, %do.end15, %if.then9.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %do.end4.cleanup_crit_edge ], [ 0, %do.end15 ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb39 ], [ 0, %sw.bb37 ], [ 0, %sw.bb35 ], [ 0, %sw.bb33 ], [ 0, %sw.bb31 ], [ 0, %sw.bb29 ], [ 0, %sw.bb27 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7842_g_dv_timings(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %timings) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %timings1 = getelementptr i8, ptr %sd, i32 512
  %2 = call ptr @memcpy(ptr %timings, ptr %timings1, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_s_sdp_io(ptr noundef readonly %sd, ptr noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 2, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %hs_beg = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %hs_beg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hs_beg, align 2
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %conv2 = and i8 %5, 15
  %i2c_sdp_io.i = getelementptr i8, ptr %sd, i32 1436
  %6 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -108, i8 noundef zeroext %conv2) #11
  %8 = ptrtoint ptr %hs_beg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hs_beg, align 2
  %conv6 = trunc i16 %9 to i8
  %10 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -107, i8 noundef zeroext %conv6) #11
  %hs_width = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 2
  %12 = ptrtoint ptr %hs_width to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hs_width, align 2
  %14 = lshr i16 %13, 8
  %15 = trunc i16 %14 to i8
  %conv11 = and i8 %15, 15
  %16 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -106, i8 noundef zeroext %conv11) #11
  %18 = ptrtoint ptr %hs_width to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hs_width, align 2
  %conv16 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -105, i8 noundef zeroext %conv16) #11
  %de_beg = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 3
  %22 = ptrtoint ptr %de_beg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %de_beg, align 2
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  %conv21 = and i8 %25, 15
  %26 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -104, i8 noundef zeroext %conv21) #11
  %28 = ptrtoint ptr %de_beg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %de_beg, align 2
  %conv26 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -103, i8 noundef zeroext %conv26) #11
  %de_end = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 4
  %32 = ptrtoint ptr %de_end to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %de_end, align 2
  %34 = lshr i16 %33, 8
  %35 = trunc i16 %34 to i8
  %conv31 = and i8 %35, 15
  %36 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -102, i8 noundef zeroext %conv31) #11
  %38 = ptrtoint ptr %de_end to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %de_end, align 2
  %conv36 = trunc i16 %39 to i8
  %40 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -101, i8 noundef zeroext %conv36) #11
  %vs_beg_o = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 5
  %42 = ptrtoint ptr %vs_beg_o to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vs_beg_o, align 2
  %44 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -88, i8 noundef zeroext %43) #11
  %vs_beg_e = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 6
  %46 = ptrtoint ptr %vs_beg_e to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vs_beg_e, align 1
  %48 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext -87, i8 noundef zeroext %47) #11
  %vs_end_o = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 7
  %50 = ptrtoint ptr %vs_end_o to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vs_end_o, align 2
  %52 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -86, i8 noundef zeroext %51) #11
  %vs_end_e = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 8
  %54 = ptrtoint ptr %vs_end_e to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %vs_end_e, align 1
  %56 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext -85, i8 noundef zeroext %55) #11
  %de_v_beg_o = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 9
  %58 = ptrtoint ptr %de_v_beg_o to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %de_v_beg_o, align 2
  %60 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext -84, i8 noundef zeroext %59) #11
  %de_v_beg_e = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 10
  %62 = ptrtoint ptr %de_v_beg_e to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %de_v_beg_e, align 1
  %64 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext -83, i8 noundef zeroext %63) #11
  %de_v_end_o = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 11
  %66 = ptrtoint ptr %de_v_end_o to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %de_v_end_o, align 2
  %68 = ptrtoint ptr %i2c_sdp_io.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_sdp_io.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext -82, i8 noundef zeroext %67) #11
  %de_v_end_e = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, ptr %s, i32 0, i32 12
  %70 = ptrtoint ptr %de_v_end_e to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %de_v_end_e, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %i2c_sdp_io.i125 = getelementptr i8, ptr %sd, i32 1436
  %72 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext -108, i8 noundef zeroext 0) #11
  %74 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext -107, i8 noundef zeroext 0) #11
  %76 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext -106, i8 noundef zeroext 0) #11
  %78 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %79, i8 noundef zeroext -105, i8 noundef zeroext 32) #11
  %80 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext -104, i8 noundef zeroext 0) #11
  %82 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext -103, i8 noundef zeroext 0) #11
  %84 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext -102, i8 noundef zeroext 0) #11
  %86 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %87, i8 noundef zeroext -101, i8 noundef zeroext 0) #11
  %88 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext -88, i8 noundef zeroext 4) #11
  %90 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext -87, i8 noundef zeroext 4) #11
  %92 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext -86, i8 noundef zeroext 4) #11
  %94 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -85, i8 noundef zeroext 4) #11
  %96 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext -84, i8 noundef zeroext 4) #11
  %98 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext -83, i8 noundef zeroext 4) #11
  %100 = ptrtoint ptr %i2c_sdp_io.i125 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_sdp_io.i125, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext -82, i8 noundef zeroext 4) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i2c_sdp_io.i125.sink = phi ptr [ %i2c_sdp_io.i125, %if.else ], [ %i2c_sdp_io.i, %if.then ]
  %.sink141 = phi i8 [ 4, %if.else ], [ %71, %if.then ]
  %102 = ptrtoint ptr %i2c_sdp_io.i125.sink to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i2c_sdp_io.i125.sink, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %103, i8 noundef zeroext -81, i8 noundef zeroext %.sink141) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7842_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp = icmp ugt i32 %1, 18
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr i8, ptr %sd, i32 508
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.end
  %i2c_sdp.i = getelementptr i8, ptr %sd, i32 1440
  %4 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_sdp.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 90) #11
  %and = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %format6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8200, ptr %code, align 4
  %7 = ptrtoint ptr %format6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %format6, align 4
  %norm = getelementptr i8, ptr %sd, i32 652
  %8 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %norm, align 8
  %and8 = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  %spec.select = select i1 %tobool9.not, i32 576, i32 480
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %format17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %13 = call ptr @memset(ptr %format17, i32 0, i32 48)
  %14 = getelementptr i8, ptr %sd, i32 516
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format17, align 4
  %height.i = getelementptr i8, ptr %sd, i32 520
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height3.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %colorspace.i, align 4
  %flags.i = getelementptr i8, ptr %sd, i32 580
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end16.adv7842_fill_format.exit_crit_edge, label %if.then.i

if.end16.adv7842_fill_format.exit_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_fill_format.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %26)
  %cmp.i = icmp ult i32 %26, 577
  %cond.i = select i1 %cmp.i, i32 1, i32 3
  %27 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %colorspace.i, align 4
  br label %adv7842_fill_format.exit

adv7842_fill_format.exit:                         ; preds = %if.then.i, %if.end16.adv7842_fill_format.exit_crit_edge
  %28 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp18 = icmp eq i32 %29, 0
  br i1 %cmp18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %adv7842_fill_format.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %30 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp.not.i = icmp ugt i16 %31, 3
  br i1 %cmp.not.i, label %if.then19.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !794

if.then19.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.399, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then19.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ 3, %if.then19.v4l2_subdev_get_try_format.exit_crit_edge ]
  %32 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_state, align 4
  %code22 = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %spec.select.i, i32 0, i32 2
  %34 = ptrtoint ptr %code22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code22, align 4
  %code24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %code24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %code24, align 4
  br label %cleanup

if.else25:                                        ; preds = %adv7842_fill_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %format26 = getelementptr i8, ptr %sd, i32 648
  %37 = ptrtoint ptr %format26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %format26, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %code29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %code29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %code29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %v4l2_subdev_get_try_format.exit, %if.end5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ 0, %if.else25 ], [ 0, %v4l2_subdev_get_try_format.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -132
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr i8, ptr %sd, i32 508
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @adv7842_get_format(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %format)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %format5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %call6 = tail call fastcc ptr @adv7842_format_info(i32 noundef %5)
  %cmp7 = icmp eq ptr %call6, null
  %spec.select = select i1 %cmp7, ptr getelementptr inbounds ([19 x %struct.adv7842_format_info], ptr @adv7842_formats, i32 0, i32 1), ptr %call6
  %6 = call ptr @memset(ptr %format5, i32 0, i32 48)
  %7 = getelementptr i8, ptr %sd, i32 516
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %format5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format5, align 4
  %height.i = getelementptr i8, ptr %sd, i32 520
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
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %colorspace.i, align 4
  %flags.i = getelementptr i8, ptr %sd, i32 580
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.adv7842_fill_format.exit_crit_edge, label %if.then.i

if.end4.adv7842_fill_format.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %adv7842_fill_format.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %19)
  %cmp.i = icmp ult i32 %19, 577
  %cond.i = select i1 %cmp.i, i32 1, i32 3
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %colorspace.i, align 4
  br label %adv7842_fill_format.exit

adv7842_fill_format.exit:                         ; preds = %if.then.i, %if.end4.adv7842_fill_format.exit_crit_edge
  %21 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spec.select, align 4
  %23 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code, align 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %adv7842_fill_format.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %26 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %27)
  %cmp.not.i = icmp ugt i16 %27, 3
  br i1 %cmp.not.i, label %if.then16.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !794

if.then16.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.399, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ 3, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge ]
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %30 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code, align 4
  %code21 = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i, i32 0, i32 2
  %32 = ptrtoint ptr %code21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %code21, align 4
  br label %cleanup

if.else:                                          ; preds = %adv7842_fill_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %format22 = getelementptr i8, ptr %sd, i32 648
  %33 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spec.select, ptr %format22, align 4
  tail call fastcc void @adv7842_setup_format(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %v4l2_subdev_get_try_format.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7842_get_edid(ptr noundef readonly %sd, ptr nocapture noundef %edid) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %1 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %edid, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.447)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge65
    i32 2, label %sw.bb7
  ]

entry.sw.bb_crit_edge65:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge65
  %present = getelementptr i8, ptr %sd, i32 1176
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present, align 4
  %shl = shl nuw nsw i32 4, %2
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %present8 = getelementptr i8, ptr %sd, i32 1312
  %6 = ptrtoint ptr %present8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.sw.epilog.sink.split_crit_edge

sw.bb7.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb7.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink64 = phi i32 [ 660, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 1180, %sw.bb7.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 1172, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 1308, %sw.bb7.sw.epilog.sink.split_crit_edge ]
  %vga_edid = getelementptr i8, ptr %sd, i32 %.sink64
  %blocks15 = getelementptr i8, ptr %sd, i32 %.sink
  %8 = ptrtoint ptr %blocks15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks15, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %blocks.0 = phi i32 [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %9, %sw.epilog.sink.split ]
  %data.0 = phi ptr [ null, %sw.bb7.sw.epilog_crit_edge ], [ null, %sw.bb.sw.epilog_crit_edge ], [ %vga_edid, %sw.epilog.sink.split ]
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %10 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end21_crit_edge

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.epilog
  %blocks17 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %12 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18 = icmp eq i32 %13, 0
  br i1 %cmp18, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %blocks17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %blocks.0, ptr %blocks17, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %sw.epilog.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %data.0, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.0, i32 %11)
  %cmp26.not = icmp ugt i32 %blocks.0, %11
  br i1 %cmp26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %blocks30 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %15 = ptrtoint ptr %blocks30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks30, align 4
  %add = add i32 %16, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %blocks.0)
  %cmp31 = icmp ugt i32 %add, %blocks.0
  br i1 %cmp31, label %if.then32, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %blocks.0, %11
  %17 = ptrtoint ptr %blocks30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %blocks30, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %edid36 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %18 = ptrtoint ptr %edid36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edid36, align 4
  %mul = shl i32 %11, 7
  %add.ptr = getelementptr i8, ptr %data.0, i32 %mul
  %20 = ptrtoint ptr %blocks30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blocks30, align 4
  %mul39 = shl i32 %21, 7
  %22 = call ptr @memcpy(ptr %19, ptr %add.ptr, i32 %mul39)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -61, %if.end21.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_set_edid(ptr noundef %sd, ptr nocapture noundef %e) #2 align 64 {
entry:
  %tmp = alloca %struct.v4l2_fract, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %cond = select i1 %cmp, i32 1, i32 4
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 3
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp ugt i32 %1, 2
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not = icmp eq i32 %4, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7 = icmp ult i32 %1, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %blocks = getelementptr i8, ptr %sd, i32 1308
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 %cond, i32 2
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end5.if.end9_crit_edge
  %max_blocks.0 = phi i32 [ %cond, %if.end5.if.end9_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %cmp, label %land.lhs.true12, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true12:                                  ; preds = %if.end9
  %blocks13 = getelementptr i8, ptr %sd, i32 1172
  %7 = ptrtoint ptr %blocks13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blocks13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp14 = icmp ugt i32 %8, 2
  br i1 %cmp14, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %blocks17 = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 2
  %9 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max_blocks.0)
  %cmp18 = icmp ugt i32 %10, %max_blocks.0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %blocks17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %max_blocks.0, ptr %blocks17, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %aspect_ratio = getelementptr i8, ptr %sd, i32 1316
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  %edid = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 4
  %12 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 21
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %arrayidx26 = getelementptr i8, ptr %13, i32 22
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  call void @v4l2_calc_aspect_ratio(ptr nonnull sret(%struct.v4l2_fract) align 4 %tmp, i8 noundef zeroext %15, i8 noundef zeroext %17) #11
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp, align 8
  %20 = ptrtoint ptr %aspect_ratio to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %aspect_ratio, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %21 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %e, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.448)
  switch i32 %22, label %if.end27.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %if.end27.sw.bb48_crit_edge
    i32 1, label %if.end27.sw.bb48_crit_edge126
  ]

if.end27.sw.bb48_crit_edge126:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end27.sw.bb48_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end27
  %vga_edid29 = getelementptr i8, ptr %sd, i32 1180
  %24 = call ptr @memset(ptr %vga_edid29, i32 0, i32 128)
  %25 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks17, align 4
  %blocks34 = getelementptr i8, ptr %sd, i32 1308
  %27 = ptrtoint ptr %blocks34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %blocks34, align 8
  %28 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp ne i32 %28, 0
  %cond37 = zext i1 %tobool36.not to i32
  %present = getelementptr i8, ptr %sd, i32 1312
  %29 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond37, ptr %present, align 4
  %30 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not = icmp eq i32 %31, 0
  br i1 %tobool40.not, label %sw.bb.if.end46_crit_edge, label %if.then41

sw.bb.if.end46_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then41:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %edid45 = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 4
  %32 = ptrtoint ptr %edid45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edid45, align 4
  %34 = call ptr @memcpy(ptr %vga_edid29, ptr %33, i32 128)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %sw.bb.if.end46_crit_edge
  %call47 = call fastcc i32 @edid_write_vga_segment(ptr noundef %sd)
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end27.sw.bb48_crit_edge, %if.end27.sw.bb48_crit_edge126
  %hdmi_edid49 = getelementptr i8, ptr %sd, i32 660
  %35 = call ptr @memset(ptr %hdmi_edid49, i32 0, i32 512)
  %36 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blocks17, align 4
  %blocks54 = getelementptr i8, ptr %sd, i32 1172
  %38 = ptrtoint ptr %blocks54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %blocks54, align 8
  %39 = load i32, ptr %blocks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool56.not = icmp eq i32 %39, 0
  %40 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %e, align 4
  %shl67 = shl i32 4, %41
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  %present60 = getelementptr i8, ptr %sd, i32 1176
  %42 = ptrtoint ptr %present60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %present60, align 4
  %or = or i32 %43, %shl67
  store i32 %or, ptr %present60, align 4
  %edid64 = getelementptr inbounds %struct.v4l2_edid, ptr %e, i32 0, i32 4
  %44 = ptrtoint ptr %edid64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %edid64, align 4
  %46 = ptrtoint ptr %blocks17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocks17, align 4
  %mul = shl i32 %47, 7
  %48 = call ptr @memcpy(ptr %hdmi_edid49, ptr %45, i32 %mul)
  br label %if.end71

if.else:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %shl67, -1
  %present69 = getelementptr i8, ptr %sd, i32 1176
  %49 = ptrtoint ptr %present69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %present69, align 4
  %and = and i32 %50, %neg
  store i32 %and, ptr %present69, align 4
  %call70 = call fastcc i32 @adv7842_s_detect_tx_5v_ctrl(ptr noundef %sd)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then57
  %51 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %e, align 4
  %conv = trunc i32 %52 to i8
  %call73 = call fastcc i32 @edid_write_hdmi_segment(ptr noundef %sd, i8 noundef zeroext %conv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end71, %if.end46
  %err.0 = phi i32 [ %call73, %if.end71 ], [ %call47, %if.end46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp74 = icmp slt i32 %err.0, 0
  br i1 %cmp74, label %do.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %53 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %e, align 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.400, ptr noundef %name, i32 noundef %err.0, i32 noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then19, %land.lhs.true12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %land.lhs.true12.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ %err.0, %do.end ], [ %err.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7842_dv_timings_cap(ptr nocapture noundef readonly %sd, ptr nocapture noundef %cap) #7 align 64 {
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
  %mode.i.i = getelementptr i8, ptr %sd, i32 508
  %2 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 3
  %cond.i = select i1 %cmp.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %4 = call ptr @memcpy(ptr %cap, ptr %cond.i, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_enum_dv_timings(ptr nocapture noundef readonly %sd, ptr noundef %timings) #2 align 64 {
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
  %mode.i.i = getelementptr i8, ptr %sd, i32 508
  %2 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 3
  %cond.i = select i1 %cmp.i.i, ptr @adv7842_timings_cap_digital, ptr @adv7842_timings_cap_analog
  %call1 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull %cond.i, ptr noundef nonnull @adv7842_check_dv_timings, ptr noundef null) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7842_setup_format(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.adv7842_state, ptr %state, i32 0, i32 1
  %format = getelementptr inbounds %struct.adv7842_state, ptr %state, i32 0, i32 7
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 4
  %rgb_out = getelementptr inbounds %struct.adv7842_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rgb_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rgb_out, align 1, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %dev_priv.i.i.i = getelementptr inbounds %struct.adv7842_state, ptr %state, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 2) #11
  %6 = trunc i32 %call1.i.i to i8
  %7 = and i8 %6, -3
  %conv2.i = or i8 %7, %conv
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext %conv2.i) #11
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 4
  %op_format_sel = getelementptr inbounds %struct.adv7842_format_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %op_format_sel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op_format_sel, align 1
  %op_format_mode_sel = getelementptr inbounds %struct.adv7842_platform_data, ptr %state, i32 0, i32 3
  %14 = ptrtoint ptr %op_format_mode_sel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_format_mode_sel, align 4
  %16 = trunc i32 %15 to i8
  %conv4 = or i8 %13, %16
  %17 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 3, i8 noundef zeroext %conv4) #11
  %bus_order.i = getelementptr inbounds %struct.adv7842_platform_data, ptr %state, i32 0, i32 2
  %19 = ptrtoint ptr %bus_order.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_order.i, align 8
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %format, align 4
  %op_ch_sel.i = getelementptr inbounds %struct.adv7842_format_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %op_ch_sel.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %op_ch_sel.i, align 4
  %25 = lshr i8 %24, 5
  %26 = zext i8 %25 to i32
  %arrayidx1.i = getelementptr [6 x [6 x i32]], ptr @adv7842_op_ch_sel.op_ch_sel, i32 0, i32 %20, i32 %26
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.i, align 4
  %conv7 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i25 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 4) #11
  %31 = trunc i32 %call1.i.i25 to i8
  %32 = and i8 %31, 31
  %conv2.i27 = or i8 %32, %conv7
  %33 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext %conv2.i27) #11
  %35 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %format, align 4
  %swap_cb_cr = getelementptr inbounds %struct.adv7842_format_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %swap_cb_cr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %swap_cb_cr, align 2, !range !792
  %39 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i29 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 5) #11
  %41 = trunc i32 %call1.i.i29 to i8
  %42 = and i8 %41, -2
  %conv2.i31 = or i8 %42, %38
  %43 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 5, i8 noundef zeroext %conv2.i31) #11
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %sd1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_calc_aspect_ratio(ptr sret(%struct.v4l2_fract) align 4, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cec_adap = getelementptr i8, ptr %sd, i32 1500
  %2 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap, align 8
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
  %5 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_delete_adapter(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7842_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_adap = getelementptr i8, ptr %sd, i32 1500
  %0 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_adap, align 8
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
define internal i32 @adv7842_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10488166, i32 %3)
  %cmp = icmp eq i32 %3, 10488166
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %val, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -172
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 96) #11
  %and = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %i2c_infoframe.i = getelementptr i8, ptr %1, i32 1144
  %7 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_infoframe.i, align 8
  %call1.i15 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 3) #11
  %and3 = and i32 %call1.i15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %i2c_infoframe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_infoframe.i, align 8
  %call1.i17 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 5) #11
  %11 = lshr i32 %call1.i17, 4
  %and7 = and i32 %11, 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and7, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.449)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb6
    i32 9963778, label %sw.bb13
    i32 9963779, label %sw.bb20
    i32 10492160, label %sw.bb27
    i32 10492161, label %sw.bb31
    i32 10492162, label %sw.bb39
    i32 10488165, label %sw.bb111
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %i2c_cp.i = getelementptr i8, ptr %1, i32 1120
  %7 = ptrtoint ptr %i2c_cp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_cp.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 60, i8 noundef zeroext %conv) #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv4 = trunc i32 %10 to i8
  %i2c_sdp.i = getelementptr i8, ptr %1, i32 1116
  %11 = ptrtoint ptr %i2c_sdp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_sdp.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 20, i8 noundef zeroext %conv4) #11
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %14 to i8
  %i2c_cp.i171 = getelementptr i8, ptr %1, i32 1120
  %15 = ptrtoint ptr %i2c_cp.i171 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_cp.i171, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 58, i8 noundef zeroext %conv8) #11
  %17 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val7, align 4
  %conv11 = trunc i32 %18 to i8
  %i2c_sdp.i172 = getelementptr i8, ptr %1, i32 1116
  %19 = ptrtoint ptr %i2c_sdp.i172 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_sdp.i172, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 19, i8 noundef zeroext %conv11) #11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %22 to i8
  %i2c_cp.i173 = getelementptr i8, ptr %1, i32 1120
  %23 = ptrtoint ptr %i2c_cp.i173 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_cp.i173, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 59, i8 noundef zeroext %conv15) #11
  %25 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val14, align 4
  %conv18 = trunc i32 %26 to i8
  %i2c_sdp.i174 = getelementptr i8, ptr %1, i32 1116
  %27 = ptrtoint ptr %i2c_sdp.i174 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_sdp.i174, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 21, i8 noundef zeroext %conv18) #11
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %30 to i8
  %i2c_cp.i175 = getelementptr i8, ptr %1, i32 1120
  %31 = ptrtoint ptr %i2c_cp.i175 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_cp.i175, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 61, i8 noundef zeroext %conv22) #11
  %33 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val21, align 4
  %conv25 = trunc i32 %34 to i8
  %i2c_sdp.i176 = getelementptr i8, ptr %1, i32 1116
  %35 = ptrtoint ptr %i2c_sdp.i176 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_sdp.i176, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 22, i8 noundef zeroext %conv25) #11
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val28, align 4
  %conv29 = trunc i32 %38 to i8
  %i2c_afe.i = getelementptr i8, ptr %1, i32 1128
  %39 = ptrtoint ptr %i2c_afe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_afe.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -56, i8 noundef zeroext %conv29) #11
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val32, align 4
  %.tr = trunc i32 %42 to i8
  %conv33 = shl i8 %.tr, 2
  %i2c_cp.i.i = getelementptr i8, ptr %1, i32 1120
  %43 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_cp.i.i, align 8
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext -65) #11
  %45 = trunc i32 %call1.i.i to i8
  %46 = and i8 %45, -5
  %conv2.i = or i8 %46, %conv33
  %47 = ptrtoint ptr %i2c_cp.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_cp.i.i, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -65, i8 noundef zeroext %conv2.i) #11
  %49 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val32, align 4
  %.tr170 = trunc i32 %50 to i8
  %conv37 = shl i8 %.tr170, 2
  %i2c_sdp.i.i = getelementptr i8, ptr %1, i32 1116
  %51 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_sdp.i.i, align 4
  %call1.i.i177 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext -35) #11
  %53 = trunc i32 %call1.i.i177 to i8
  %54 = and i8 %53, -5
  %conv2.i178 = or i8 %54, %conv37
  %55 = ptrtoint ptr %i2c_sdp.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_sdp.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext -35, i8 noundef zeroext %conv2.i178) #11
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val40, align 4
  %and = lshr i32 %58, 16
  %conv41 = trunc i32 %and to i8
  %and43 = lshr i32 %58, 8
  %conv45 = trunc i32 %and43 to i8
  %conv48 = trunc i32 %58 to i8
  %conv49 = and i32 %and, 255
  %mul = mul nuw nsw i32 %conv49, 66
  %conv50 = and i32 %and43, 255
  %mul51 = mul nuw nsw i32 %conv50, 129
  %conv52 = and i32 %58, 255
  %mul53 = mul nuw nsw i32 %conv52, 25
  %mul56 = mul nsw i32 %conv49, -38
  %mul58.neg = mul nsw i32 %conv50, -74
  %mul60 = mul nuw nsw i32 %conv52, 112
  %mul63 = mul nuw nsw i32 %conv49, 112
  %mul65.neg = mul nsw i32 %conv50, -94
  %mul68.neg = mul nsw i32 %conv52, -18
  %add = add nuw nsw i32 %mul53, 128
  %add54 = add nuw nsw i32 %add, %mul51
  %add70 = add nuw nsw i32 %add54, %mul
  %59 = lshr i32 %add70, 8
  %sub = add nuw nsw i32 %mul60, 128
  %add61 = add nsw i32 %sub, %mul56
  %add72 = add nsw i32 %add61, %mul58.neg
  %shr73 = ashr i32 %add72, 8
  %sub66 = add nsw i32 %mul68.neg, 128
  %sub69 = add nsw i32 %sub66, %mul63
  %add74 = add nsw i32 %sub69, %mul65.neg
  %shr75 = ashr i32 %add74, 8
  %add76 = add nuw nsw i32 %59, 16
  %add77 = add nsw i32 %shr73, 128
  %add78 = add nsw i32 %shr75, 128
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp = icmp sgt i32 %60, 0
  br i1 %cmp, label %do.body87, label %sw.bb39.do.end100_crit_edge

sw.bb39.do.end100_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

do.body87:                                        ; preds = %sw.bb39
  %name = getelementptr i8, ptr %1, i32 -208
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.405, ptr noundef %name, i32 noundef %conv49, i32 noundef %conv50, i32 noundef %conv52) #14
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp88 = icmp sgt i32 %.pr, 0
  br i1 %cmp88, label %do.end93, label %do.body87.do.end100_crit_edge

do.body87.do.end100_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.408, ptr noundef %name, i32 noundef %add76, i32 noundef %add77, i32 noundef %add78) #14
  br label %do.end100

do.end100:                                        ; preds = %do.end93, %do.body87.do.end100_crit_edge, %sw.bb39.do.end100_crit_edge
  %i2c_cp.i179 = getelementptr i8, ptr %1, i32 1120
  %61 = ptrtoint ptr %i2c_cp.i179 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_cp.i179, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext -63, i8 noundef zeroext %conv41) #11
  %63 = ptrtoint ptr %i2c_cp.i179 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_cp.i179, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext -64, i8 noundef zeroext %conv45) #11
  %65 = ptrtoint ptr %i2c_cp.i179 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_cp.i179, align 8
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext -62, i8 noundef zeroext %conv48) #11
  %conv104 = trunc i32 %add76 to i8
  %i2c_sdp.i182 = getelementptr i8, ptr %1, i32 1116
  %67 = ptrtoint ptr %i2c_sdp.i182 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_sdp.i182, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext -34, i8 noundef zeroext %conv104) #11
  %and106 = and i32 %add78, 240
  %69 = lshr i32 %add77, 4
  %or = or i32 %and106, %69
  %conv109 = trunc i32 %or to i8
  %70 = ptrtoint ptr %i2c_sdp.i182 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_sdp.i182, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %71, i8 noundef zeroext -33, i8 noundef zeroext %conv109) #11
  br label %cleanup

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sd.i = getelementptr i8, ptr %1, i32 -324
  %val112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val112, align 4
  %rgb_quantization_range = getelementptr i8, ptr %1, i32 1000
  %74 = ptrtoint ptr %rgb_quantization_range to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rgb_quantization_range, align 8
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %sd.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb111, %do.end100, %sw.bb31, %sw.bb27, %sw.bb20, %sw.bb13, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb111 ], [ 0, %do.end100 ], [ 0, %sw.bb31 ], [ 0, %sw.bb27 ], [ 0, %sw.bb20 ], [ 0, %sw.bb13 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adv7842_dummy_client(ptr noundef %sd, ptr noundef %desc, i8 noundef zeroext %addr, i8 noundef zeroext %io_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %conv = zext i8 %addr to i32
  %shl = shl i8 %addr, 1
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %io_reg, i8 noundef zeroext %shl) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr)
  %cmp = icmp eq i8 %addr, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, ptr noundef %name, ptr noundef %desc) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %io_reg) #11
  %6 = lshr i32 %call1.i, 1
  %conv7 = trunc i32 %6 to i16
  %call8 = tail call ptr @i2c_new_dummy_device(ptr noundef %3, i16 noundef zeroext %conv7) #11
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %7 = ptrtoint ptr %call8 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.429, ptr noundef %name15, ptr noundef %desc, i32 noundef %conv, i32 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end13 ], [ %call8, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_enabled_adap = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_enabled_adap, align 8, !range !792
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %brmerge.demorgan = and i1 %tobool.not, %enable
  br i1 %brmerge.demorgan, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cec.i.i = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 42) #11
  %6 = trunc i32 %call1.i.i to i8
  %conv2.i = or i8 %6, 1
  %7 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 42, i8 noundef zeroext %conv2.i) #11
  %9 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 44, i8 noundef zeroext 1) #11
  %11 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i35 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 17) #11
  %13 = trunc i32 %call1.i.i35 to i8
  %14 = and i8 %13, -2
  %15 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 17, i8 noundef zeroext %14) #11
  %dev_priv.i.i.i = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i37 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext -106) #11
  %19 = trunc i32 %call1.i.i37 to i8
  %conv2.i39 = or i8 %19, 15
  %20 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -106, i8 noundef zeroext %conv2.i39) #11
  %22 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 38, i8 noundef zeroext 1) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  %brmerge33 = or i1 %tobool.not, %enable
  br i1 %brmerge33, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.i.i41 = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %dev_priv.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i41, align 4
  %call1.i.i42 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext -106) #11
  %26 = trunc i32 %call1.i.i42 to i8
  %27 = and i8 %26, -16
  %28 = ptrtoint ptr %dev_priv.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i41, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -106, i8 noundef zeroext %27) #11
  %i2c_cec.i.i44 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %30 = ptrtoint ptr %i2c_cec.i.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_cec.i.i44, align 4
  %call1.i.i45 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 39) #11
  %32 = trunc i32 %call1.i.i45 to i8
  %33 = and i8 %32, -113
  %34 = ptrtoint ptr %i2c_cec.i.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cec.i.i44, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 39, i8 noundef zeroext %33) #11
  %36 = ptrtoint ptr %i2c_cec.i.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_cec.i.i44, align 4
  %call1.i.i48 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 42) #11
  %38 = trunc i32 %call1.i.i48 to i8
  %39 = and i8 %38, -2
  %40 = ptrtoint ptr %i2c_cec.i.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_cec.i.i44, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 42, i8 noundef zeroext %39) #11
  %cec_valid_addrs = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 35
  %42 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge, %if.then
  %frombool = zext i1 %enable to i8
  %43 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %cec_enabled_adap, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_enabled_adap = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_enabled_adap, align 8, !range !792
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
  %cec_valid_addrs11 = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 35
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
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cec.i.i = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 39) #11
  %8 = trunc i32 %call1.i.i to i8
  %9 = and i8 %8, -113
  %10 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 39, i8 noundef zeroext %9) #11
  %cec_valid_addrs = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 35
  %12 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %cleanup53

land.lhs.true21:                                  ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 34, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %addr)
  %cmp24 = icmp eq i8 %14, %addr
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
  %15 = or i32 %and.1, 1
  %free_idx.1.1 = select i1 %tobool13.not, i32 0, i32 %15
  br i1 %tobool13.not.1, label %for.inc.critedge.for.inc.critedge.1_crit_edge, label %land.lhs.true21.1

for.inc.critedge.for.inc.critedge.1_crit_edge:    ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.1

land.lhs.true21.1:                                ; preds = %for.inc.critedge
  %arrayidx.1 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 34, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %addr)
  %cmp24.1 = icmp eq i8 %17, %addr
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
  %arrayidx.2 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 34, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %addr)
  %cmp24.2 = icmp eq i8 %19, %addr
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
  %arrayidx37 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 34, i32 %free_idx.1.2
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %addr, ptr %arrayidx37, align 1
  %shl38 = shl nuw i32 1, %free_idx.1.2
  %21 = ptrtoint ptr %cec_valid_addrs11 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cec_valid_addrs11, align 1
  %23 = trunc i32 %shl38 to i8
  %conv41 = or i8 %22, %23
  store i8 %conv41, ptr %cec_valid_addrs11, align 1
  %24 = zext i32 %free_idx.1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.450)
  switch i32 %free_idx.1.2, label %if.end35.cleanup53_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
    i32 2, label %sw.bb50
  ]

if.end35.cleanup53_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cec.i.i87 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %25 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i.i88 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 39) #11
  %27 = trunc i32 %call1.i.i88 to i8
  %conv2.i = or i8 %27, 16
  %28 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_cec.i.i87, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 39, i8 noundef zeroext %conv2.i) #11
  %30 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_cec.i.i87, align 4
  %call1.i.i91 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 40) #11
  %32 = trunc i32 %call1.i.i91 to i8
  %33 = and i8 %32, -16
  %conv2.i93 = or i8 %33, %addr
  %34 = ptrtoint ptr %i2c_cec.i.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_cec.i.i87, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 40, i8 noundef zeroext %conv2.i93) #11
  br label %cleanup53

sw.bb44:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cec.i.i94 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %36 = ptrtoint ptr %i2c_cec.i.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_cec.i.i94, align 4
  %call1.i.i95 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 39) #11
  %38 = trunc i32 %call1.i.i95 to i8
  %conv2.i97 = or i8 %38, 32
  %39 = ptrtoint ptr %i2c_cec.i.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_cec.i.i94, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 39, i8 noundef zeroext %conv2.i97) #11
  %shl47 = shl i8 %addr, 4
  %41 = ptrtoint ptr %i2c_cec.i.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_cec.i.i94, align 4
  %call1.i.i99 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 40) #11
  %43 = trunc i32 %call1.i.i99 to i8
  %44 = and i8 %43, 15
  %conv2.i101 = or i8 %44, %shl47
  %45 = ptrtoint ptr %i2c_cec.i.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_cec.i.i94, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 40, i8 noundef zeroext %conv2.i101) #11
  br label %cleanup53

sw.bb50:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_cec.i.i102 = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %47 = ptrtoint ptr %i2c_cec.i.i102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_cec.i.i102, align 4
  %call1.i.i103 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %48, i8 noundef zeroext 39) #11
  %49 = trunc i32 %call1.i.i103 to i8
  %conv2.i105 = or i8 %49, 64
  %50 = ptrtoint ptr %i2c_cec.i.i102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_cec.i.i102, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 39, i8 noundef zeroext %conv2.i105) #11
  %52 = ptrtoint ptr %i2c_cec.i.i102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_cec.i.i102, align 4
  %call1.i.i107 = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 41) #11
  %54 = trunc i32 %call1.i.i107 to i8
  %55 = and i8 %54, -16
  %conv2.i109 = or i8 %55, %addr
  %56 = ptrtoint ptr %i2c_cec.i.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_cec.i.i102, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 41, i8 noundef zeroext %conv2.i109) #11
  br label %cleanup53

cleanup53:                                        ; preds = %sw.bb50, %sw.bb44, %sw.bb, %if.end35.cleanup53_crit_edge, %if.then30.cleanup53_crit_edge, %land.lhs.true21.2.cleanup53_crit_edge, %land.lhs.true21.1.cleanup53_crit_edge, %land.lhs.true21.cleanup53_crit_edge, %if.then6, %if.then
  %retval.2 = phi i32 [ 0, %if.then6 ], [ %cond, %if.then ], [ -6, %if.then30.cleanup53_crit_edge ], [ 0, %if.end35.cleanup53_crit_edge ], [ 0, %sw.bb50 ], [ 0, %sw.bb44 ], [ 0, %sw.bb ], [ 0, %land.lhs.true21.2.cleanup53_crit_edge ], [ 0, %land.lhs.true21.1.cleanup53_crit_edge ], [ 0, %land.lhs.true21.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7842_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %attempts)
  %cmp = icmp ult i8 %attempts, 2
  %sub = shl i8 %attempts, 4
  %phi.bo = add i8 %sub, -16
  %cond = select i1 %cmp, i8 16, i8 %phi.bo
  %i2c_cec.i.i = getelementptr %struct.adv7842_state, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_cec.i.i, align 4
  %call1.i.i = tail call fastcc i32 @adv_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 18) #11
  %6 = trunc i32 %call1.i.i to i8
  %7 = and i8 %6, -113
  %conv2.i = or i8 %7, %cond
  %8 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i) #11
  %conv7 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv7)
  %cmp8 = icmp ugt i32 %conv7, 16
  br i1 %cmp8, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7)
  %cmp1439.not = icmp eq i32 %conv7, 0
  br i1 %cmp1439.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.adv7842_state, ptr %1, i32 0, i32 1, i32 9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, ptr noundef %name, ptr noundef nonnull @.str.434, i32 noundef %conv7) #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv16 = trunc i32 %i.040 to i8
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.040
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %conv16, i8 noundef zeroext %11) #11
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 16, i8 noundef zeroext %conv) #11
  %16 = ptrtoint ptr %i2c_cec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_cec.i.i, align 4
  tail call fastcc void @adv_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 17, i8 noundef zeroext 1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 417)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 417)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !291, !293, !294, !295, !297, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !316, !317, !318, !319, !321, !322, !323, !325, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !339, !340, !341, !343, !344, !345, !346, !347, !348, !349, !350, !352, !353, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !417, !419, !420, !421, !423, !425, !427, !429, !430, !431, !432, !434, !435, !436, !437, !439, !441, !443, !445, !447, !449, !450, !451, !452, !454, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !469, !470, !471, !472, !474, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !488, !489, !490, !491, !493, !494, !495, !496, !497, !498, !500, !501, !502, !504, !505, !506, !507, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !524, !525, !527, !528, !529, !531, !532, !533, !535, !536, !537, !539, !541, !542, !543, !544, !546, !547, !549, !551, !553, !555, !557, !558, !559, !561, !562, !563, !565, !566, !568, !569, !570, !571, !573, !574, !575, !576, !578, !579, !580, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !595, !596, !598, !599, !600, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !615, !616, !618, !619, !620, !622, !623, !624, !626, !627, !628, !629, !631, !632, !633, !635, !636, !637, !638, !640, !641, !642, !644, !646, !647, !648, !649, !651, !652, !653, !654, !656, !657, !658, !660, !661, !662, !664, !665, !666, !668, !670, !671, !672, !673, !675, !676, !677, !679, !680, !681, !683, !684, !685, !687, !688, !690, !692, !694, !696, !697, !698, !699, !701, !703, !704, !705, !706, !708, !709, !710, !712, !714, !715, !716, !717, !719, !720, !721, !723, !725, !727, !729, !731, !733, !735, !736, !737, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !763, !764, !765, !767, !768, !769, !771, !772, !773, !774, !776, !778, !779, !780, !781}
!llvm.module.flags = !{!783, !784, !785, !786, !787, !788, !789, !790}
!llvm.ident = !{!791}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7842.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/adv7842.c", i32 38, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7842.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7842.c", i32 41, i32 1}
!9 = !{ptr @__UNIQUE_ID_author296, !10, !"__UNIQUE_ID_author296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/adv7842.c", i32 42, i32 1}
!11 = !{ptr @__UNIQUE_ID_file297, !12, !"__UNIQUE_ID_file297", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/adv7842.c", i32 43, i32 1}
!13 = !{ptr @__UNIQUE_ID_license298, !12, !"__UNIQUE_ID_license298", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_adv7842__301_3629_adv7842_driver_init6, !15, !"__initcall__kmod_adv7842__301_3629_adv7842_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adv7842.c", i32 3629, i32 1}
!16 = !{ptr @__exitcall_adv7842_driver_exit, !15, !"__exitcall_adv7842_driver_exit", i1 false, i1 false}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/adv7842.c", i32 36, i32 12}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7842.c", i32 3622, i32 11}
!22 = !{ptr @adv7842_driver, !23, !"adv7842_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7842.c", i32 3620, i32 26}
!24 = !{ptr @adv7842_probe.cea640x480, !25, !"cea640x480", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/adv7842.c", i32 3448, i32 38}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/adv7842.c", i32 3462, i32 2}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @adv7842_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @adv7842_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/adv7842.c", i32 3466, i32 3}
!34 = !{ptr @adv7842_probe._entry.4, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adv7842_probe._entry_ptr.6, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/adv7842.c", i32 3492, i32 3}
!38 = !{ptr @adv7842_probe._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @adv7842_probe._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/adv7842.c", i32 3497, i32 3}
!42 = !{ptr @adv7842_probe._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @adv7842_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @adv7842_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/adv7842.c", i32 3507, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7842.c", i32 3549, i32 3}
!49 = !{ptr @adv7842_probe._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv7842_probe._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @adv7842_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv7842.c", i32 3554, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adv7842_probe.__key.18, !52, !"__key", i1 false, i1 false}
!55 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/adv7842.c", i32 3579, i32 2}
!58 = !{ptr @adv7842_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @adv7842_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @adv7842_formats, !61, !"adv7842_formats", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/adv7842.c", i32 569, i32 41}
!62 = !{ptr @adv7842_ops, !63, !"adv7842_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/adv7842.c", i32 3316, i32 37}
!64 = !{ptr @adv7842_core_ops, !65, !"adv7842_core_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/adv7842.c", i32 3283, i32 42}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/adv7842.c", i32 2640, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @adv7842_sdp_log_status._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @adv7842_sdp_log_status._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/adv7842.c", i32 2641, i32 2}
!75 = !{ptr @adv7842_sdp_log_status._entry.27, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @adv7842_sdp_log_status._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/adv7842.c", i32 2644, i32 2}
!79 = !{ptr @adv7842_sdp_log_status._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @adv7842_sdp_log_status._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/adv7842.c", i32 2646, i32 2}
!83 = !{ptr @adv7842_sdp_log_status._entry.33, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @adv7842_sdp_log_status._entry_ptr.35, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/adv7842.c", i32 2650, i32 4}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/adv7842.c", i32 2651, i32 4}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/adv7842.c", i32 2652, i32 4}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/adv7842.c", i32 2653, i32 4}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/adv7842.c", i32 2654, i32 4}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/adv7842.c", i32 2655, i32 4}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/adv7842.c", i32 2656, i32 4}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/adv7842.c", i32 2657, i32 4}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/adv7842.c", i32 2657, i32 10}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/adv7842.c", i32 2657, i32 16}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/adv7842.c", i32 2657, i32 22}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/adv7842.c", i32 2657, i32 28}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/adv7842.c", i32 2658, i32 4}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/adv7842.c", i32 2659, i32 4}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/adv7842.c", i32 2660, i32 4}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/adv7842.c", i32 2661, i32 4}
!119 = !{ptr @adv7842_sdp_log_status.sdp_std_txt, !120, !"sdp_std_txt", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/adv7842.c", i32 2649, i32 29}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/adv7842.c", i32 2663, i32 3}
!123 = !{ptr @adv7842_sdp_log_status._entry.54, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @adv7842_sdp_log_status._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @adv7842_sdp_log_status._entry.57, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/adv7842.c", i32 2665, i32 3}
!127 = !{ptr @adv7842_sdp_log_status._entry_ptr.58, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @adv7842_sdp_log_status._entry.61, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/adv7842.c", i32 2667, i32 3}
!132 = !{ptr @adv7842_sdp_log_status._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/adv7842.c", i32 2669, i32 3}
!137 = !{ptr @adv7842_sdp_log_status._entry.65, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @adv7842_sdp_log_status._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/adv7842.c", i32 2671, i32 3}
!143 = !{ptr @adv7842_sdp_log_status._entry.70, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @adv7842_sdp_log_status._entry_ptr.72, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/adv7842.c", i32 296, i32 5}
!149 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @adv_smbus_read_byte_data._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @adv_smbus_read_byte_data._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/adv7842.c", i32 300, i32 2}
!154 = !{ptr @adv_smbus_read_byte_data._entry.77, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @adv_smbus_read_byte_data._entry_ptr.79, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/adv7842.c", i32 2691, i32 3}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/adv7842.c", i32 2691, i32 15}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/adv7842.c", i32 2691, i32 34}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/adv7842.c", i32 2691, i32 46}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/adv7842.c", i32 2692, i32 15}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/adv7842.c", i32 2692, i32 46}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/adv7842.c", i32 2693, i32 15}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/adv7842.c", i32 2693, i32 39}
!172 = !{ptr @adv7842_cp_log_status.csc_coeff_sel_rb, !173, !"csc_coeff_sel_rb", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/adv7842.c", i32 2690, i32 28}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/adv7842.c", i32 2697, i32 3}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/adv7842.c", i32 2697, i32 33}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/adv7842.c", i32 2698, i32 3}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/adv7842.c", i32 2698, i32 28}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/adv7842.c", i32 2699, i32 3}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/adv7842.c", i32 2699, i32 19}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/adv7842.c", i32 2700, i32 3}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/adv7842.c", i32 2700, i32 27}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/adv7842.c", i32 2701, i32 3}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/adv7842.c", i32 2702, i32 25}
!194 = !{ptr @adv7842_cp_log_status.input_color_space_txt, !195, !"input_color_space_txt", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/adv7842.c", i32 2696, i32 28}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/adv7842.c", i32 2705, i32 3}
!198 = !{ptr @adv7842_cp_log_status.rgb_quantization_range_txt, !199, !"rgb_quantization_range_txt", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/adv7842.c", i32 2704, i32 28}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/adv7842.c", i32 2710, i32 3}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/adv7842.c", i32 2711, i32 3}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/adv7842.c", i32 2712, i32 3}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/adv7842.c", i32 2713, i32 3}
!208 = !{ptr @adv7842_cp_log_status.deep_color_mode_txt, !209, !"deep_color_mode_txt", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/adv7842.c", i32 2709, i32 28}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/adv7842.c", i32 2716, i32 2}
!212 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @adv7842_cp_log_status._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @adv7842_cp_log_status._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/adv7842.c", i32 2717, i32 2}
!217 = !{ptr @adv7842_cp_log_status._entry.105, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @adv7842_cp_log_status._entry_ptr.107, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/adv7842.c", i32 2718, i32 2}
!221 = !{ptr @adv7842_cp_log_status._entry.108, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @adv7842_cp_log_status._entry_ptr.110, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/i2c/adv7842.c", i32 2720, i32 2}
!227 = !{ptr @adv7842_cp_log_status._entry.113, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @adv7842_cp_log_status._entry_ptr.115, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/i2c/adv7842.c", i32 2725, i32 2}
!231 = !{ptr @adv7842_cp_log_status._entry.116, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @adv7842_cp_log_status._entry_ptr.118, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/i2c/adv7842.c", i32 2728, i32 2}
!235 = !{ptr @adv7842_cp_log_status._entry.119, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @adv7842_cp_log_status._entry_ptr.121, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/i2c/adv7842.c", i32 2737, i32 5}
!239 = !{ptr @adv7842_cp_log_status._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @adv7842_cp_log_status._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/i2c/adv7842.c", i32 2742, i32 2}
!243 = !{ptr @adv7842_cp_log_status._entry.125, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @adv7842_cp_log_status._entry_ptr.127, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.129, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/adv7842.c", i32 2744, i32 3}
!247 = !{ptr @adv7842_cp_log_status._entry.128, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @adv7842_cp_log_status._entry_ptr.130, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.131, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.134, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/adv7842.c", i32 2746, i32 3}
!253 = !{ptr @adv7842_cp_log_status._entry.133, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @adv7842_cp_log_status._entry_ptr.135, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/adv7842.c", i32 2748, i32 3}
!257 = !{ptr @adv7842_cp_log_status._entry.136, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @adv7842_cp_log_status._entry_ptr.138, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.140, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/adv7842.c", i32 2751, i32 3}
!261 = !{ptr @adv7842_cp_log_status._entry.139, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @adv7842_cp_log_status._entry_ptr.141, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @adv7842_cp_log_status._entry.142, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/adv7842.c", i32 2753, i32 3}
!265 = !{ptr @adv7842_cp_log_status._entry_ptr.143, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @adv7842_cp_log_status._entry.144, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/media/i2c/adv7842.c", i32 2755, i32 3}
!268 = !{ptr @adv7842_cp_log_status._entry_ptr.145, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/adv7842.c", i32 2758, i32 2}
!271 = !{ptr @adv7842_cp_log_status._entry.146, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @adv7842_cp_log_status._entry_ptr.148, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.150, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/adv7842.c", i32 2760, i32 2}
!275 = !{ptr @adv7842_cp_log_status._entry.149, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @adv7842_cp_log_status._entry_ptr.151, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.153, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/i2c/adv7842.c", i32 2764, i32 2}
!279 = !{ptr @adv7842_cp_log_status._entry.152, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @adv7842_cp_log_status._entry_ptr.154, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.156, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/i2c/adv7842.c", i32 2766, i32 3}
!283 = !{ptr @adv7842_cp_log_status._entry.155, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @adv7842_cp_log_status._entry_ptr.157, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.159, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/adv7842.c", i32 2776, i32 3}
!287 = !{ptr @adv7842_cp_log_status._entry.158, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @adv7842_cp_log_status._entry_ptr.160, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.161, !286, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.162, !286, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.164, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/i2c/adv7842.c", i32 2784, i32 3}
!293 = !{ptr @adv7842_cp_log_status._entry.163, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @adv7842_cp_log_status._entry_ptr.165, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.166, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/i2c/adv7842.c", i32 2786, i32 35}
!297 = !{ptr @.str.167, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/i2c/adv7842.c", i32 2788, i32 34}
!299 = !{ptr @.str.169, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/adv7842.c", i32 2794, i32 2}
!301 = !{ptr @adv7842_cp_log_status._entry.168, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @adv7842_cp_log_status._entry_ptr.170, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.172, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/i2c/adv7842.c", i32 2795, i32 2}
!305 = !{ptr @adv7842_cp_log_status._entry.171, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @adv7842_cp_log_status._entry_ptr.173, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.175, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/adv7842.c", i32 2797, i32 2}
!309 = !{ptr @adv7842_cp_log_status._entry.174, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @adv7842_cp_log_status._entry_ptr.176, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.178, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/i2c/adv7842.c", i32 2799, i32 2}
!313 = !{ptr @adv7842_cp_log_status._entry.177, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @adv7842_cp_log_status._entry_ptr.179, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.182, !312, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.183, !312, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/i2c/adv7842.c", i32 2804, i32 2}
!321 = !{ptr @adv7842_cp_log_status._entry.184, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @adv7842_cp_log_status._entry_ptr.186, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.188, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/i2c/adv7842.c", i32 2810, i32 2}
!325 = !{ptr @adv7842_cp_log_status._entry.187, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @adv7842_cp_log_status._entry_ptr.189, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.190, !324, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.191, !324, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.193, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/i2c/adv7842.c", i32 2811, i32 2}
!331 = !{ptr @adv7842_cp_log_status._entry.192, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @adv7842_cp_log_status._entry_ptr.194, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.196, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/i2c/adv7842.c", i32 2813, i32 2}
!335 = !{ptr @adv7842_cp_log_status._entry.195, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @adv7842_cp_log_status._entry_ptr.197, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.198, !334, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.199, !334, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.200, !334, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.201, !334, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.203, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/i2c/adv7842.c", i32 2819, i32 2}
!343 = !{ptr @adv7842_cp_log_status._entry.202, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @adv7842_cp_log_status._entry_ptr.204, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.205, !342, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.206, !342, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.207, !342, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.208, !342, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.209, !342, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.211, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/i2c/adv7842.c", i32 2824, i32 3}
!352 = !{ptr @adv7842_cp_log_status._entry.210, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @adv7842_cp_log_status._entry_ptr.212, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.213, !351, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.214, !351, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.216, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/i2c/adv7842.c", i32 2827, i32 2}
!358 = !{ptr @adv7842_cp_log_status._entry.215, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @adv7842_cp_log_status._entry_ptr.217, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.219, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/i2c/adv7842.c", i32 2830, i32 2}
!362 = !{ptr @adv7842_cp_log_status._entry.218, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @adv7842_cp_log_status._entry_ptr.220, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.222, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/i2c/adv7842.c", i32 2833, i32 2}
!366 = !{ptr @adv7842_cp_log_status._entry.221, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @adv7842_cp_log_status._entry_ptr.223, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.225, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/i2c/adv7842.c", i32 2835, i32 2}
!370 = !{ptr @adv7842_cp_log_status._entry.224, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @adv7842_cp_log_status._entry_ptr.226, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.227, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/i2c/adv7842.c", i32 1528, i32 2}
!374 = !{ptr @.str.228, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @adv7842_query_dv_timings._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @adv7842_query_dv_timings._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.230, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/i2c/adv7842.c", i32 1539, i32 3}
!379 = !{ptr @adv7842_query_dv_timings._entry.229, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @adv7842_query_dv_timings._entry_ptr.231, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.233, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/i2c/adv7842.c", i32 1606, i32 3}
!383 = !{ptr @adv7842_query_dv_timings._entry.232, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @adv7842_query_dv_timings._entry_ptr.234, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.236, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/i2c/adv7842.c", i32 1610, i32 3}
!387 = !{ptr @adv7842_query_dv_timings._entry.235, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @adv7842_query_dv_timings._entry_ptr.237, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.239, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/i2c/adv7842.c", i32 1622, i32 5}
!391 = !{ptr @adv7842_query_dv_timings._entry.238, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @adv7842_query_dv_timings._entry_ptr.240, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.242, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/i2c/adv7842.c", i32 1633, i32 4}
!395 = !{ptr @adv7842_query_dv_timings._entry.241, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @adv7842_query_dv_timings._entry_ptr.243, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.244, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/i2c/adv7842.c", i32 1641, i32 35}
!399 = !{ptr @.str.245, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/i2c/adv7842.c", i32 1457, i32 3}
!401 = !{ptr @.str.246, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @read_stdi._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @read_stdi._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.248, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/i2c/adv7842.c", i32 1477, i32 3}
!406 = !{ptr @read_stdi._entry.247, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @read_stdi._entry_ptr.249, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.251, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/i2c/adv7842.c", i32 1481, i32 2}
!410 = !{ptr @read_stdi._entry.250, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @read_stdi._entry_ptr.252, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.253, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/i2c/adv7842.c", i32 1378, i32 3}
!414 = !{ptr @.str.254, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @adv7842_g_input_status._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @adv7842_g_input_status._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.256, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/i2c/adv7842.c", i32 1391, i32 2}
!419 = !{ptr @adv7842_g_input_status._entry.255, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @adv7842_g_input_status._entry_ptr.257, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @adv7842_timings_cap_digital, !422, !"adv7842_timings_cap_digital", i1 false, i1 false}
!422 = !{!"../drivers/media/i2c/adv7842.c", i32 651, i32 41}
!423 = !{ptr @adv7842_timings_cap_analog, !424, !"adv7842_timings_cap_analog", i1 false, i1 false}
!424 = !{!"../drivers/media/i2c/adv7842.c", i32 640, i32 41}
!425 = !{ptr @adv7842_timings_exceptions, !426, !"adv7842_timings_exceptions", i1 false, i1 false}
!426 = !{!"../drivers/media/i2c/adv7842.c", i32 144, i32 37}
!427 = !{ptr @.str.259, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/i2c/adv7842.c", i32 1444, i32 2}
!429 = !{ptr @.str.260, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @stdi2dv_timings._entry, !428, !"_entry", i1 false, i1 false}
!431 = !{ptr @stdi2dv_timings._entry_ptr, !428, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.261, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/i2c/adv7842.c", i32 321, i32 3}
!434 = !{ptr @.str.262, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @adv_smbus_write_byte_data._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @adv_smbus_write_byte_data._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.263, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/i2c/adv7842.c", i32 2598, i32 5}
!439 = !{ptr @.str.264, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/i2c/adv7842.c", i32 2599, i32 5}
!441 = !{ptr @.str.265, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/i2c/adv7842.c", i32 2600, i32 5}
!443 = !{ptr @.str.266, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/i2c/adv7842.c", i32 2601, i32 5}
!445 = !{ptr @adv7842_log_infoframes.cri, !446, !"cri", i1 false, i1 false}
!446 = !{!"../drivers/media/i2c/adv7842.c", i32 2597, i32 49}
!447 = !{ptr @.str.267, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/i2c/adv7842.c", i32 2605, i32 3}
!449 = !{ptr @.str.268, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @adv7842_log_infoframes._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @adv7842_log_infoframes._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.269, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/i2c/adv7842.c", i32 2569, i32 3}
!454 = !{ptr @.str.270, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @log_infoframe._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @log_infoframe._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.272, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/i2c/adv7842.c", i32 2579, i32 3}
!459 = !{ptr @log_infoframe._entry.271, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @log_infoframe._entry_ptr.273, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.275, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/i2c/adv7842.c", i32 2587, i32 3}
!463 = !{ptr @log_infoframe._entry.274, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @log_infoframe._entry_ptr.276, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.277, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/i2c/adv7842.c", i32 2591, i32 21}
!467 = !{ptr @.str.278, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/i2c/adv7842.c", i32 3197, i32 3}
!469 = !{ptr @.str.279, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @adv7842_command_ram_test._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @adv7842_command_ram_test._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.280, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/media/i2c/adv7842.c", i32 3158, i32 2}
!474 = !{ptr @.str.281, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @adv7842_ddr_ram_test._entry, !473, !"_entry", i1 false, i1 false}
!476 = !{ptr @adv7842_ddr_ram_test._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.282, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/i2c/adv7842.c", i32 1932, i32 3}
!479 = !{ptr @.str.283, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @select_input._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @select_input._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.284, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/i2c/adv7842.c", i32 1720, i32 3}
!484 = !{ptr @enable_input._entry, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @enable_input._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.285, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/media/i2c/adv7842.c", i32 1169, i32 2}
!488 = !{ptr @.str.286, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @set_rgb_quantization_range._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @set_rgb_quantization_range._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.287, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/i2c/adv7842.c", i32 1145, i32 2}
!493 = !{ptr @.str.288, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @adv7842_set_gain._entry, !492, !"_entry", i1 false, i1 false}
!495 = !{ptr @adv7842_set_gain._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.289, !492, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.290, !492, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.292, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/media/i2c/adv7842.c", i32 1156, i32 3}
!500 = !{ptr @adv7842_set_gain._entry.291, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @adv7842_set_gain._entry_ptr.293, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.294, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/media/i2c/adv7842.c", i32 1116, i32 2}
!504 = !{ptr @.str.295, !503, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @adv7842_set_offset._entry, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @adv7842_set_offset._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.297, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/i2c/adv7842.c", i32 1127, i32 3}
!509 = !{ptr @adv7842_set_offset._entry.296, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @adv7842_set_offset._entry_ptr.298, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.299, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/i2c/adv7842.c", i32 711, i32 2}
!513 = !{ptr @.str.300, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @edid_write_vga_segment._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @edid_write_vga_segment._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.302, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/i2c/adv7842.c", i32 743, i32 3}
!518 = !{ptr @edid_write_vga_segment._entry.301, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @edid_write_vga_segment._entry_ptr.303, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.304, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/i2c/adv7842.c", i32 764, i32 2}
!522 = !{ptr @.str.305, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @edid_write_hdmi_segment._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @edid_write_hdmi_segment._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.307, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/i2c/adv7842.c", i32 824, i32 3}
!527 = !{ptr @edid_write_hdmi_segment._entry.306, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @edid_write_hdmi_segment._entry_ptr.308, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.309, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/i2c/adv7842.c", i32 1653, i32 2}
!531 = !{ptr @adv7842_s_dv_timings._entry, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @adv7842_s_dv_timings._entry_ptr, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.311, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/media/i2c/adv7842.c", i32 1659, i32 3}
!535 = !{ptr @adv7842_s_dv_timings._entry.310, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @adv7842_s_dv_timings._entry_ptr.312, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.313, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/media/i2c/adv7842.c", i32 1687, i32 35}
!539 = !{ptr @.str.314, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/i2c/adv7842.c", i32 992, i32 2}
!541 = !{ptr @.str.315, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @configure_predefined_video_timings._entry, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @configure_predefined_video_timings._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @configure_predefined_video_timings._entry.316, !545, !"_entry", i1 false, i1 false}
!545 = !{!"../drivers/media/i2c/adv7842.c", i32 1028, i32 3}
!546 = !{ptr @configure_predefined_video_timings._entry_ptr.317, !545, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @adv7842_prim_mode_comp, !548, !"adv7842_prim_mode_comp", i1 false, i1 false}
!548 = !{!"../drivers/media/i2c/adv7842.c", i32 166, i32 45}
!549 = !{ptr @adv7842_prim_mode_gr, !550, !"adv7842_prim_mode_gr", i1 false, i1 false}
!550 = !{!"../drivers/media/i2c/adv7842.c", i32 181, i32 45}
!551 = !{ptr @adv7842_prim_mode_hdmi_comp, !552, !"adv7842_prim_mode_hdmi_comp", i1 false, i1 false}
!552 = !{!"../drivers/media/i2c/adv7842.c", i32 209, i32 45}
!553 = !{ptr @adv7842_prim_mode_hdmi_gr, !554, !"adv7842_prim_mode_hdmi_gr", i1 false, i1 false}
!554 = !{!"../drivers/media/i2c/adv7842.c", i32 223, i32 45}
!555 = !{ptr @.str.322, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/i2c/adv7842.c", i32 1056, i32 2}
!557 = !{ptr @configure_custom_video_timings._entry, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @configure_custom_video_timings._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.324, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/media/i2c/adv7842.c", i32 1071, i32 4}
!561 = !{ptr @configure_custom_video_timings._entry.323, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @configure_custom_video_timings._entry_ptr.325, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @configure_custom_video_timings._entry.326, !564, !"_entry", i1 false, i1 false}
!564 = !{!"../drivers/media/i2c/adv7842.c", i32 1094, i32 3}
!565 = !{ptr @configure_custom_video_timings._entry_ptr.327, !564, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.328, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/media/i2c/adv7842.c", i32 897, i32 3}
!568 = !{ptr @.str.329, !567, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @adv7842_g_register._entry, !567, !"_entry", i1 false, i1 false}
!570 = !{ptr @adv7842_g_register._entry_ptr, !567, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.330, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/i2c/adv7842.c", i32 841, i32 2}
!573 = !{ptr @.str.331, !572, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @adv7842_inv_register._entry, !572, !"_entry", i1 false, i1 false}
!575 = !{ptr @adv7842_inv_register._entry_ptr, !572, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.333, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/media/i2c/adv7842.c", i32 842, i32 2}
!578 = !{ptr @adv7842_inv_register._entry.332, !577, !"_entry", i1 false, i1 false}
!579 = !{ptr @adv7842_inv_register._entry_ptr.334, !577, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.336, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/media/i2c/adv7842.c", i32 843, i32 2}
!582 = !{ptr @adv7842_inv_register._entry.335, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @adv7842_inv_register._entry_ptr.337, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.339, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/media/i2c/adv7842.c", i32 844, i32 2}
!586 = !{ptr @adv7842_inv_register._entry.338, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @adv7842_inv_register._entry_ptr.340, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.342, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/media/i2c/adv7842.c", i32 845, i32 2}
!590 = !{ptr @adv7842_inv_register._entry.341, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @adv7842_inv_register._entry_ptr.343, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.345, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/media/i2c/adv7842.c", i32 846, i32 2}
!594 = !{ptr @adv7842_inv_register._entry.344, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @adv7842_inv_register._entry_ptr.346, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.348, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/i2c/adv7842.c", i32 847, i32 2}
!598 = !{ptr @adv7842_inv_register._entry.347, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @adv7842_inv_register._entry_ptr.349, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.351, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/media/i2c/adv7842.c", i32 848, i32 2}
!602 = !{ptr @adv7842_inv_register._entry.350, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @adv7842_inv_register._entry_ptr.352, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.354, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/media/i2c/adv7842.c", i32 849, i32 2}
!606 = !{ptr @adv7842_inv_register._entry.353, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @adv7842_inv_register._entry_ptr.355, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.357, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/media/i2c/adv7842.c", i32 850, i32 2}
!610 = !{ptr @adv7842_inv_register._entry.356, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @adv7842_inv_register._entry_ptr.358, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.360, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/media/i2c/adv7842.c", i32 851, i32 2}
!614 = !{ptr @adv7842_inv_register._entry.359, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @adv7842_inv_register._entry_ptr.361, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.363, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/media/i2c/adv7842.c", i32 852, i32 2}
!618 = !{ptr @adv7842_inv_register._entry.362, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @adv7842_inv_register._entry_ptr.364, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.365, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/media/i2c/adv7842.c", i32 947, i32 3}
!622 = !{ptr @adv7842_s_register._entry, !621, !"_entry", i1 false, i1 false}
!623 = !{ptr @adv7842_s_register._entry_ptr, !621, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @.str.366, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/media/i2c/adv7842.c", i32 2390, i32 2}
!626 = !{ptr @.str.367, !625, !"<string literal>", i1 false, i1 false}
!627 = !{ptr @adv7842_isr._entry, !625, !"_entry", i1 false, i1 false}
!628 = !{ptr @adv7842_isr._entry_ptr, !625, !"_entry_ptr", i1 false, i1 false}
!629 = !{ptr @.str.369, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/media/i2c/adv7842.c", i32 2411, i32 3}
!631 = !{ptr @adv7842_isr._entry.368, !630, !"_entry", i1 false, i1 false}
!632 = !{ptr @adv7842_isr._entry_ptr.370, !630, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.372, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/media/i2c/adv7842.c", i32 2422, i32 3}
!635 = !{ptr @adv7842_isr._entry.371, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @adv7842_isr._entry_ptr.373, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.374, !634, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @.str.376, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/media/i2c/adv7842.c", i32 2436, i32 3}
!640 = !{ptr @adv7842_isr._entry.375, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @adv7842_isr._entry_ptr.377, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @adv7842_ev_fmt, !643, !"adv7842_ev_fmt", i1 false, i1 false}
!643 = !{!"../drivers/media/i2c/adv7842.c", i32 242, i32 32}
!644 = !{ptr @.str.379, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/media/i2c/adv7842.c", i32 2211, i32 2}
!646 = !{ptr @.str.380, !645, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @adv7842_cec_isr._entry, !645, !"_entry", i1 false, i1 false}
!648 = !{ptr @adv7842_cec_isr._entry_ptr, !645, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.381, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/media/i2c/adv7842.c", i32 2163, i32 3}
!651 = !{ptr @.str.382, !650, !"<string literal>", i1 false, i1 false}
!652 = !{ptr @adv7842_cec_tx_raw_status._entry, !650, !"_entry", i1 false, i1 false}
!653 = !{ptr @adv7842_cec_tx_raw_status._entry_ptr, !650, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.384, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/media/i2c/adv7842.c", i32 2168, i32 3}
!656 = !{ptr @adv7842_cec_tx_raw_status._entry.383, !655, !"_entry", i1 false, i1 false}
!657 = !{ptr @adv7842_cec_tx_raw_status._entry_ptr.385, !655, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @.str.387, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/media/i2c/adv7842.c", i32 2179, i32 3}
!660 = !{ptr @adv7842_cec_tx_raw_status._entry.386, !659, !"_entry", i1 false, i1 false}
!661 = !{ptr @adv7842_cec_tx_raw_status._entry_ptr.388, !659, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @.str.390, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/media/i2c/adv7842.c", i32 2196, i32 3}
!664 = !{ptr @adv7842_cec_tx_raw_status._entry.389, !663, !"_entry", i1 false, i1 false}
!665 = !{ptr @adv7842_cec_tx_raw_status._entry_ptr.391, !663, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @adv7842_video_ops, !667, !"adv7842_video_ops", i1 false, i1 false}
!667 = !{!"../drivers/media/i2c/adv7842.c", i32 3295, i32 43}
!668 = !{ptr @.str.392, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/media/i2c/adv7842.c", i32 1943, i32 2}
!670 = !{ptr @.str.393, !669, !"<string literal>", i1 false, i1 false}
!671 = !{ptr @adv7842_s_routing._entry, !669, !"_entry", i1 false, i1 false}
!672 = !{ptr @adv7842_s_routing._entry_ptr, !669, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.394, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/media/i2c/adv7842.c", i32 2975, i32 2}
!675 = !{ptr @adv7842_g_std._entry, !674, !"_entry", i1 false, i1 false}
!676 = !{ptr @adv7842_g_std._entry_ptr, !674, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @.str.395, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/media/i2c/adv7842.c", i32 2952, i32 2}
!679 = !{ptr @adv7842_s_std._entry, !678, !"_entry", i1 false, i1 false}
!680 = !{ptr @adv7842_s_std._entry_ptr, !678, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @.str.396, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/media/i2c/adv7842.c", i32 2856, i32 2}
!683 = !{ptr @adv7842_querystd._entry, !682, !"_entry", i1 false, i1 false}
!684 = !{ptr @adv7842_querystd._entry_ptr, !682, !"_entry_ptr", i1 false, i1 false}
!685 = !{ptr @adv7842_querystd._entry.397, !686, !"_entry", i1 false, i1 false}
!686 = !{!"../drivers/media/i2c/adv7842.c", i32 2863, i32 3}
!687 = !{ptr @adv7842_querystd._entry_ptr.398, !686, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @adv7842_pad_ops, !689, !"adv7842_pad_ops", i1 false, i1 false}
!689 = !{!"../drivers/media/i2c/adv7842.c", i32 3306, i32 41}
!690 = !{ptr @.str.399, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!692 = !{ptr @adv7842_op_ch_sel.op_ch_sel, !693, !"op_ch_sel", i1 false, i1 false}
!693 = !{!"../drivers/media/i2c/adv7842.c", i32 2035, i32 28}
!694 = !{ptr @.str.400, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/media/i2c/adv7842.c", i32 2548, i32 3}
!696 = !{ptr @.str.401, !695, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @adv7842_set_edid._entry, !695, !"_entry", i1 false, i1 false}
!698 = !{ptr @adv7842_set_edid._entry_ptr, !695, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @adv7842_int_ops, !700, !"adv7842_int_ops", i1 false, i1 false}
!700 = !{!"../drivers/media/i2c/adv7842.c", i32 3322, i32 46}
!701 = !{ptr @.str.402, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/media/i2c/adv7842.c", i32 282, i32 3}
!703 = !{ptr @.str.403, !702, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @adv_smbus_read_byte_data_check._entry, !702, !"_entry", i1 false, i1 false}
!705 = !{ptr @adv_smbus_read_byte_data_check._entry_ptr, !702, !"_entry_ptr", i1 false, i1 false}
!706 = !{ptr @.str.404, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/media/i2c/adv7842.c", i32 558, i32 2}
!708 = !{ptr @main_reset._entry, !707, !"_entry", i1 false, i1 false}
!709 = !{ptr @main_reset._entry_ptr, !707, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @adv7842_ctrl_ops, !711, !"adv7842_ctrl_ops", i1 false, i1 false}
!711 = !{!"../drivers/media/i2c/adv7842.c", i32 3278, i32 35}
!712 = !{ptr @.str.405, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/media/i2c/adv7842.c", i32 1316, i32 3}
!714 = !{ptr @.str.406, !713, !"<string literal>", i1 false, i1 false}
!715 = !{ptr @adv7842_s_ctrl._entry, !713, !"_entry", i1 false, i1 false}
!716 = !{ptr @adv7842_s_ctrl._entry_ptr, !713, !"_entry_ptr", i1 false, i1 false}
!717 = !{ptr @.str.408, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/media/i2c/adv7842.c", i32 1317, i32 3}
!719 = !{ptr @adv7842_s_ctrl._entry.407, !718, !"_entry", i1 false, i1 false}
!720 = !{ptr @adv7842_s_ctrl._entry_ptr.409, !718, !"_entry_ptr", i1 false, i1 false}
!721 = !{ptr @.str.410, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/media/i2c/adv7842.c", i32 3332, i32 10}
!723 = !{ptr @adv7842_ctrl_analog_sampling_phase, !724, !"adv7842_ctrl_analog_sampling_phase", i1 false, i1 false}
!724 = !{!"../drivers/media/i2c/adv7842.c", i32 3329, i32 38}
!725 = !{ptr @.str.411, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/media/i2c/adv7842.c", i32 3343, i32 10}
!727 = !{ptr @adv7842_ctrl_free_run_color_manual, !728, !"adv7842_ctrl_free_run_color_manual", i1 false, i1 false}
!728 = !{!"../drivers/media/i2c/adv7842.c", i32 3340, i32 38}
!729 = !{ptr @.str.412, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/media/i2c/adv7842.c", i32 3353, i32 10}
!731 = !{ptr @adv7842_ctrl_free_run_color, !732, !"adv7842_ctrl_free_run_color", i1 false, i1 false}
!732 = !{!"../drivers/media/i2c/adv7842.c", i32 3350, i32 38}
!733 = !{ptr @.str.413, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/media/i2c/adv7842.c", i32 960, i32 2}
!735 = !{ptr @.str.414, !734, !"<string literal>", i1 false, i1 false}
!736 = !{ptr @adv7842_s_detect_tx_5v_ctrl._entry, !734, !"_entry", i1 false, i1 false}
!737 = !{ptr @adv7842_s_detect_tx_5v_ctrl._entry_ptr, !734, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.415, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/media/i2c/adv7842.c", i32 3416, i32 47}
!740 = !{ptr @.str.416, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/media/i2c/adv7842.c", i32 3417, i32 44}
!742 = !{ptr @.str.417, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/media/i2c/adv7842.c", i32 3418, i32 50}
!744 = !{ptr @.str.418, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/media/i2c/adv7842.c", i32 3419, i32 47}
!746 = !{ptr @.str.419, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/media/i2c/adv7842.c", i32 3420, i32 44}
!748 = !{ptr @.str.420, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/media/i2c/adv7842.c", i32 3421, i32 44}
!750 = !{ptr @.str.421, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/media/i2c/adv7842.c", i32 3422, i32 49}
!752 = !{ptr @.str.422, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/media/i2c/adv7842.c", i32 3423, i32 45}
!754 = !{ptr @.str.423, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/media/i2c/adv7842.c", i32 3424, i32 45}
!756 = !{ptr @.str.424, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/media/i2c/adv7842.c", i32 3425, i32 43}
!758 = !{ptr @.str.425, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/media/i2c/adv7842.c", i32 3426, i32 44}
!760 = !{ptr @.str.426, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/media/i2c/adv7842.c", i32 3397, i32 3}
!762 = !{ptr @.str.427, !761, !"<string literal>", i1 false, i1 false}
!763 = !{ptr @adv7842_dummy_client._entry, !761, !"_entry", i1 false, i1 false}
!764 = !{ptr @adv7842_dummy_client._entry_ptr, !761, !"_entry_ptr", i1 false, i1 false}
!765 = !{ptr @.str.429, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/media/i2c/adv7842.c", i32 3403, i32 3}
!767 = !{ptr @adv7842_dummy_client._entry.428, !766, !"_entry", i1 false, i1 false}
!768 = !{ptr @adv7842_dummy_client._entry_ptr.430, !766, !"_entry_ptr", i1 false, i1 false}
!769 = !{ptr @.str.431, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/media/i2c/adv7842.c", i32 692, i32 2}
!771 = !{ptr @.str.432, !770, !"<string literal>", i1 false, i1 false}
!772 = !{ptr @adv7842_delayed_work_enable_hotplug._entry, !770, !"_entry", i1 false, i1 false}
!773 = !{ptr @adv7842_delayed_work_enable_hotplug._entry_ptr, !770, !"_entry_ptr", i1 false, i1 false}
!774 = !{ptr @adv7842_cec_adap_ops, !775, !"adv7842_cec_adap_ops", i1 false, i1 false}
!775 = !{!"../drivers/media/i2c/adv7842.c", i32 2351, i32 34}
!776 = !{ptr @.str.433, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/media/i2c/adv7842.c", i32 2336, i32 3}
!778 = !{ptr @.str.434, !777, !"<string literal>", i1 false, i1 false}
!779 = !{ptr @adv7842_cec_adap_transmit._entry, !777, !"_entry", i1 false, i1 false}
!780 = !{ptr @adv7842_cec_adap_transmit._entry_ptr, !777, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @adv7842_id, !782, !"adv7842_id", i1 false, i1 false}
!782 = !{!"../drivers/media/i2c/adv7842.c", i32 3612, i32 35}
!783 = !{i32 1, !"wchar_size", i32 2}
!784 = !{i32 1, !"min_enum_size", i32 4}
!785 = !{i32 8, !"branch-target-enforcement", i32 0}
!786 = !{i32 8, !"sign-return-address", i32 0}
!787 = !{i32 8, !"sign-return-address-all", i32 0}
!788 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!789 = !{i32 7, !"uwtable", i32 1}
!790 = !{i32 7, !"frame-pointer", i32 2}
!791 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!792 = !{i8 0, i8 2}
!793 = !{!"auto-init"}
!794 = !{!"branch_weights", i32 2000, i32 1}
