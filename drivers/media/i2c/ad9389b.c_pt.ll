; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ad9389b.c_pt.bc'
source_filename = "../drivers/media/i2c/ad9389b.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ad9389b_state = type <{ %struct.ad9389b_platform_data, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, i32, i8, i8, %struct.v4l2_dv_timings, [2 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ad9389b_state_edid, i32, %struct.delayed_work }>
%struct.ad9389b_platform_data = type { i32, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.86 }
%union.anon.86 = type { [32 x i32] }
%struct.ad9389b_state_edid = type { i32, i32, [2048 x i8], i32 }
%struct.ad9389b_edid_detect = type { i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.95 }
%union.anon.95 = type { i32, [28 x i8] }
%struct.ad9389b_monitor_detect = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }

@__param_str_debug = internal constant [14 x i8] c"ad9389b.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"ad9389b.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [37 x i8] c"ad9389b.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [72 x i8] c"ad9389b.description=Analog Devices AD9389B/AD9889B video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [53 x i8] c"ad9389b.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [49 x i8] c"ad9389b.author=Martin Bugge <marbugge@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"ad9389b.file=drivers/media/i2c/ad9389b\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"ad9389b.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ad9389b__299_1216_ad9389b_driver_init6 = internal global ptr @ad9389b_driver_init, section ".initcall6.init", align 4
@ad9389b_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad9389b_probe, ptr @ad9389b_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad9389b_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad9389b_driver_exit = internal global ptr @ad9389b_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ad9389b\00", [24 x i8] zeroinitializer }, align 32
@ad9389b_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad9389b\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad9889b\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__const.ad9389b_probe.dv1080p60 = private unnamed_addr constant { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] c"\FF\FF\FF\FF" } }, align 1
@ad9389b_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s %d-%04x: detecting ad9389b client on address 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad9389b_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ad9389b.c\00", [36 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr = internal global ptr @ad9389b_probe._entry, section ".printk_index", align 4
@ad9389b_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s %d-%04x: No platform data!\0A\00", [63 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr.6 = internal global ptr @ad9389b_probe._entry.4, section ".printk_index", align 4
@ad9389b_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ad9389b_core_ops, ptr null, ptr @ad9389b_audio_ops, ptr @ad9389b_video_ops, ptr null, ptr null, ptr null, ptr @ad9389b_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ad9389b_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ad9389b:1115:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@ad9389b_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ad9389b_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: chip_revision %d != 2\0A\00", [35 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr.10 = internal global ptr @ad9389b_probe._entry.8, section ".printk_index", align 4
@ad9389b_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: reg 0x41 0x%x, chip version (reg 0x00) 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr.13 = internal global ptr @ad9389b_probe._entry.11, section ".printk_index", align 4
@ad9389b_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to register edid i2c client\0A\00", [54 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr.16 = internal global ptr @ad9389b_probe._entry.14, section ".printk_index", align 4
@ad9389b_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&state->edid_handler)->work)\00", [47 x i8] zeroinitializer }, align 32
@ad9389b_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&state->edid_handler)->timer\00", [33 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@ad9389b_probe._entry_ptr.22 = internal global ptr @ad9389b_probe._entry.20, section ".printk_index", align 4
@ad9389b_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @ad9389b_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad9389b_g_register, ptr @ad9389b_s_register, ptr @ad9389b_s_power, ptr @ad9389b_isr, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ad9389b_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @ad9389b_s_clock_freq, ptr @ad9389b_s_i2s_clock_freq, ptr @ad9389b_s_routing, ptr @ad9389b_s_audio_stream }, [16 x i8] zeroinitializer }, align 32
@ad9389b_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad9389b_s_stream, ptr null, ptr null, ptr null, ptr @ad9389b_s_dv_timings, ptr @ad9389b_g_dv_timings, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ad9389b_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad9389b_get_edid, ptr null, ptr @ad9389b_dv_timings_cap, ptr @ad9389b_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ad9389b_log_status.states = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in reset\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reading EDID\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initializing HDCP\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDCP enabled\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"initializing HDCP repeater\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@ad9389b_log_status.errors = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no error\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad receiver BKSV\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ri mismatch\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Pj mismatch\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c error\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed out\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max repeater cascade exceeded\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash check failed\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"too many devices\00", [47 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: chip revision %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ad9389b_log_status\00", [45 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr = internal global ptr @ad9389b_log_status._entry, section ".printk_index", align 4
@ad9389b_log_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: power %s\0A\00", [16 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.52 = internal global ptr @ad9389b_log_status._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: %s hotplug, %s Rx Sense, %s EDID (%d block(s))\0A\00", [42 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.57 = internal global ptr @ad9389b_log_status._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detected\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.3, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %s output %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.63 = internal global ptr @ad9389b_log_status._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-D\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: ad9389b: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.70 = internal global ptr @ad9389b_log_status._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encrypted\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no encryption\00", [18 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.49, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: state: %s, error: %s, detect count: %u, msk/irq: %02x/%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.75 = internal global ptr @ad9389b_log_status._entry.73, section ".printk_index", align 4
@ad9389b_log_status._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.49, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: ad9389b: RGB quantization: %s range\0A\00", [53 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.78 = internal global ptr @ad9389b_log_status._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"limited\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.49, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: ad9389b: %s gear %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.83 = internal global ptr @ad9389b_log_status._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"automatic\00", [22 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.49, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: ad9389b: CTS %s mode: N %d, CTS %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.88 = internal global ptr @ad9389b_log_status._entry.86, section ".printk_index", align 4
@ad9389b_log_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.49, ptr @.str.3, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: ad9389b: VIC: detected %d, sent %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.91 = internal global ptr @ad9389b_log_status._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timings: \00", [22 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.49, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: no timings set\0A\00", [42 x i8] zeroinitializer }, align 32
@ad9389b_log_status._entry_ptr.95 = internal global ptr @ad9389b_log_status._entry.93, section ".printk_index", align 4
@ad9389b_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: %s: failed reg 0x%x, val 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ad9389b_wr\00", [21 x i8] zeroinitializer }, align 32
@ad9389b_wr._entry_ptr = internal global ptr @ad9389b_wr._entry, section ".printk_index", align 4
@ad9389b_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: power %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad9389b_s_power\00", [16 x i8] zeroinitializer }, align 32
@ad9389b_s_power._entry_ptr = internal global ptr @ad9389b_s_power._entry, section ".printk_index", align 4
@ad9389b_s_power._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: failed to powerup the ad9389b\0A\00", [59 x i8] zeroinitializer }, align 32
@ad9389b_s_power._entry_ptr.102 = internal global ptr @ad9389b_s_power._entry.100, section ".printk_index", align 4
@ad9389b_s_power._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: needed %d retries to powerup the ad9389b\0A\00", [48 x i8] zeroinitializer }, align 32
@ad9389b_s_power._entry_ptr.105 = internal global ptr @ad9389b_s_power._entry.103, section ".printk_index", align 4
@ad9389b_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: irq_status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad9389b_isr\00", [20 x i8] zeroinitializer }, align 32
@ad9389b_isr._entry_ptr = internal global ptr @ad9389b_isr._entry, section ".printk_index", align 4
@ad9389b_check_monitor_present_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: retried %d times, give up\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ad9389b_check_monitor_present_status\00", [59 x i8] zeroinitializer }, align 32
@ad9389b_check_monitor_present_status._entry_ptr = internal global ptr @ad9389b_check_monitor_present_status._entry, section ".printk_index", align 4
@ad9389b_check_monitor_present_status._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %s: reset and re-check status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ad9389b_check_monitor_present_status._entry_ptr.112 = internal global ptr @ad9389b_check_monitor_present_status._entry.110, section ".printk_index", align 4
@ad9389b_update_monitor_present_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: status: 0x%x%s%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ad9389b_update_monitor_present_status\00", [58 x i8] zeroinitializer }, align 32
@ad9389b_update_monitor_present_status._entry_ptr = internal global ptr @ad9389b_update_monitor_present_status._entry, section ".printk_index", align 4
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", hotplug\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", rx-sense\00", [21 x i8] zeroinitializer }, align 32
@ad9389b_update_monitor_present_status._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.3, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: hotplug detected\0A\00", [36 x i8] zeroinitializer }, align 32
@ad9389b_update_monitor_present_status._entry_ptr.120 = internal global ptr @ad9389b_update_monitor_present_status._entry.118, section ".printk_index", align 4
@ad9389b_update_monitor_present_status._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.3, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: monitor detected, powerup failed\0A\00", [52 x i8] zeroinitializer }, align 32
@ad9389b_update_monitor_present_status._entry_ptr.123 = internal global ptr @ad9389b_update_monitor_present_status._entry.121, section ".printk_index", align 4
@ad9389b_update_monitor_present_status._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.3, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: hotplug not detected\0A\00", [32 x i8] zeroinitializer }, align 32
@ad9389b_update_monitor_present_status._entry_ptr.126 = internal global ptr @ad9389b_update_monitor_present_status._entry.124, section ".printk_index", align 4
@ad9389b_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad9389b_setup\00", [18 x i8] zeroinitializer }, align 32
@ad9389b_setup._entry_ptr = internal global ptr @ad9389b_setup._entry, section ".printk_index", align 4
@ad9389b_audio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.129, ptr @.str.3, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad9389b_audio_setup\00", [44 x i8] zeroinitializer }, align 32
@ad9389b_audio_setup._entry_ptr = internal global ptr @ad9389b_audio_setup._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ad9389b_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: ctrl id: %d, ctrl->val %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ad9389b_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@ad9389b_s_ctrl._entry_ptr = internal global ptr @ad9389b_s_ctrl._entry, section ".printk_index", align 4
@ad9389b_check_edid_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: edid ready (retries: %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ad9389b_check_edid_status\00", [38 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr = internal global ptr @ad9389b_check_edid_status._entry, section ".printk_index", align 4
@ad9389b_check_edid_status._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: edid segment number too big\0A\00", [61 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr.136 = internal global ptr @ad9389b_check_edid_status._entry.134, section ".printk_index", align 4
@ad9389b_check_edid_status._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.3, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: got segment %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr.139 = internal global ptr @ad9389b_check_edid_status._entry.137, section ".printk_index", align 4
@ad9389b_check_edid_status._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.133, ptr @.str.3, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: %d blocks in total\0A\00", [34 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr.142 = internal global ptr @ad9389b_check_edid_status._entry.140, section ".printk_index", align 4
@ad9389b_check_edid_status._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.133, ptr @.str.3, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: %s: edid crc or header error\0A\00", [60 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr.145 = internal global ptr @ad9389b_check_edid_status._entry.143, section ".printk_index", align 4
@ad9389b_check_edid_status._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.133, ptr @.str.3, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: request segment %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ad9389b_check_edid_status._entry_ptr.148 = internal global ptr @ad9389b_check_edid_status._entry.146, section ".printk_index", align 4
@ad9389b_edid_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad9389b_edid_rd\00", [16 x i8] zeroinitializer }, align 32
@ad9389b_edid_rd._entry_ptr = internal global ptr @ad9389b_edid_rd._entry, section ".printk_index", align 4
@ad9389b_dbg_dump_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: edid segment %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad9389b_dbg_dump_edid\00", [42 x i8] zeroinitializer }, align 32
@ad9389b_dbg_dump_edid._entry_ptr = internal global ptr @ad9389b_dbg_dump_edid._entry, section ".printk_index", align 4
@ad9389b_dbg_dump_edid._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s: \0A\00", [24 x i8] zeroinitializer }, align 32
@ad9389b_dbg_dump_edid._entry_ptr.155 = internal global ptr @ad9389b_dbg_dump_edid._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@ad9389b_dbg_dump_edid._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.152, ptr @.str.3, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ad9389b_dbg_dump_edid._entry_ptr.158 = internal global ptr @ad9389b_dbg_dump_edid._entry.157, section ".printk_index", align 4
@ad9389b_s_audio_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: %sable\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ad9389b_s_audio_stream\00", [41 x i8] zeroinitializer }, align 32
@ad9389b_s_audio_stream._entry_ptr = internal global ptr @ad9389b_s_audio_stream._entry, section ".printk_index", align 4
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@ad9389b_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.163, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad9389b_s_stream\00", [47 x i8] zeroinitializer }, align 32
@ad9389b_s_stream._entry_ptr = internal global ptr @ad9389b_s_stream._entry, section ".printk_index", align 4
@ad9389b_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.164, ptr @.str.3, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad9389b_s_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@ad9389b_s_dv_timings._entry_ptr = internal global ptr @ad9389b_s_dv_timings._entry, section ".printk_index", align 4
@ad9389b_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.97 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 25000000, i64 170000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@ad9389b_g_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.165, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad9389b_g_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@ad9389b_g_dv_timings._entry_ptr = internal global ptr @ad9389b_g_dv_timings._entry, section ".printk_index", align 4
@ad9389b_get_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: EDID segment 0 not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad9389b_get_edid\00", [47 x i8] zeroinitializer }, align 32
@ad9389b_get_edid._entry_ptr = internal global ptr @ad9389b_get_edid._entry, section ".printk_index", align 4
@ad9389b_edid_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.168, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad9389b_edid_handler\00", [43 x i8] zeroinitializer }, align 32
@ad9389b_edid_handler._entry_ptr = internal global ptr @ad9389b_edid_handler._entry, section ".printk_index", align 4
@ad9389b_edid_handler._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: edid read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ad9389b_edid_handler._entry_ptr.171 = internal global ptr @ad9389b_edid_handler._entry.169, section ".printk_index", align 4
@ad9389b_edid_handler._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.3, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: no edid found\0A\00", [39 x i8] zeroinitializer }, align 32
@ad9389b_edid_handler._entry_ptr.174 = internal global ptr @ad9389b_edid_handler._entry.172, section ".printk_index", align 4
@ad9389b_init_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.175, ptr @.str.3, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ad9389b_init_setup\00", [45 x i8] zeroinitializer }, align 32
@ad9389b_init_setup._entry_ptr = internal global ptr @ad9389b_init_setup._entry, section ".printk_index", align 4
@ad9389b_set_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Could not set interrupts: hw failure?\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad9389b_set_isr\00", [16 x i8] zeroinitializer }, align 32
@ad9389b_set_isr._entry_ptr = internal global ptr @ad9389b_set_isr._entry, section ".printk_index", align 4
@ad9389b_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s removed @ 0x%x (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ad9389b_remove\00", [17 x i8] zeroinitializer }, align 32
@ad9389b_remove._entry_ptr = internal global ptr @ad9389b_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.181 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 28, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"ad9389b_driver\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1207, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1209, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"ad9389b_id\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1200, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1096, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1105, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"ad9389b_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 777, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1115, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"ad9389b_ctrl_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 319, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1144, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1148, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1153, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1158, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1164, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"ad9389b_core_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 551, i32 42 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"ad9389b_audio_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 768, i32 43 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"ad9389b_video_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 656, i32 43 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"ad9389b_pad_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 685, i32 41 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 345, i32 28 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 346, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 347, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 348, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 349, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 350, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 351, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 23 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 43 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 352, i32 48 }
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 354, i32 28 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 355, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 356, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 357, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 358, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 359, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 360, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 361, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 362, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 363, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 369, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 370, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 371, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 377, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 382, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 384, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 390, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 392, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 418, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 421, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 425, i32 35 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 428, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 128, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 440, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 461, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 466, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 540, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 954, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 957, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 905, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 912, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 915, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 924, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 861, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 847, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 305, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1016, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1024, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1027, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1033, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1039, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1048, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 145, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 793, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 799, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 801, i32 16 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 805, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 695, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 566, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 593, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant [20 x i8] c"ad9389b_timings_cap\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 577, i32 41 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 626, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 673, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 817, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 830, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 842, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1073, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 524, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.739 = private constant [31 x i8] c"../drivers/media/i2c/ad9389b.c\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1184, i32 2 }
@llvm.compiler.used = appending global [249 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ad9389b_driver_exit, ptr @__initcall__kmod_ad9389b__299_1216_ad9389b_driver_init6, ptr @__param_debug, ptr @ad9389b_audio_setup._entry, ptr @ad9389b_audio_setup._entry_ptr, ptr @ad9389b_check_edid_status._entry, ptr @ad9389b_check_edid_status._entry.134, ptr @ad9389b_check_edid_status._entry.137, ptr @ad9389b_check_edid_status._entry.140, ptr @ad9389b_check_edid_status._entry.143, ptr @ad9389b_check_edid_status._entry.146, ptr @ad9389b_check_edid_status._entry_ptr, ptr @ad9389b_check_edid_status._entry_ptr.136, ptr @ad9389b_check_edid_status._entry_ptr.139, ptr @ad9389b_check_edid_status._entry_ptr.142, ptr @ad9389b_check_edid_status._entry_ptr.145, ptr @ad9389b_check_edid_status._entry_ptr.148, ptr @ad9389b_check_monitor_present_status._entry, ptr @ad9389b_check_monitor_present_status._entry.110, ptr @ad9389b_check_monitor_present_status._entry_ptr, ptr @ad9389b_check_monitor_present_status._entry_ptr.112, ptr @ad9389b_dbg_dump_edid._entry, ptr @ad9389b_dbg_dump_edid._entry.153, ptr @ad9389b_dbg_dump_edid._entry.157, ptr @ad9389b_dbg_dump_edid._entry_ptr, ptr @ad9389b_dbg_dump_edid._entry_ptr.155, ptr @ad9389b_dbg_dump_edid._entry_ptr.158, ptr @ad9389b_driver_exit, ptr @ad9389b_edid_handler._entry, ptr @ad9389b_edid_handler._entry.169, ptr @ad9389b_edid_handler._entry.172, ptr @ad9389b_edid_handler._entry_ptr, ptr @ad9389b_edid_handler._entry_ptr.171, ptr @ad9389b_edid_handler._entry_ptr.174, ptr @ad9389b_edid_rd._entry, ptr @ad9389b_edid_rd._entry_ptr, ptr @ad9389b_g_dv_timings._entry, ptr @ad9389b_g_dv_timings._entry_ptr, ptr @ad9389b_get_edid._entry, ptr @ad9389b_get_edid._entry_ptr, ptr @ad9389b_init_setup._entry, ptr @ad9389b_init_setup._entry_ptr, ptr @ad9389b_isr._entry, ptr @ad9389b_isr._entry_ptr, ptr @ad9389b_log_status._entry, ptr @ad9389b_log_status._entry.50, ptr @ad9389b_log_status._entry.55, ptr @ad9389b_log_status._entry.61, ptr @ad9389b_log_status._entry.68, ptr @ad9389b_log_status._entry.73, ptr @ad9389b_log_status._entry.76, ptr @ad9389b_log_status._entry.81, ptr @ad9389b_log_status._entry.86, ptr @ad9389b_log_status._entry.89, ptr @ad9389b_log_status._entry.93, ptr @ad9389b_log_status._entry_ptr, ptr @ad9389b_log_status._entry_ptr.52, ptr @ad9389b_log_status._entry_ptr.57, ptr @ad9389b_log_status._entry_ptr.63, ptr @ad9389b_log_status._entry_ptr.70, ptr @ad9389b_log_status._entry_ptr.75, ptr @ad9389b_log_status._entry_ptr.78, ptr @ad9389b_log_status._entry_ptr.83, ptr @ad9389b_log_status._entry_ptr.88, ptr @ad9389b_log_status._entry_ptr.91, ptr @ad9389b_log_status._entry_ptr.95, ptr @ad9389b_probe._entry, ptr @ad9389b_probe._entry.11, ptr @ad9389b_probe._entry.14, ptr @ad9389b_probe._entry.20, ptr @ad9389b_probe._entry.4, ptr @ad9389b_probe._entry.8, ptr @ad9389b_probe._entry_ptr, ptr @ad9389b_probe._entry_ptr.10, ptr @ad9389b_probe._entry_ptr.13, ptr @ad9389b_probe._entry_ptr.16, ptr @ad9389b_probe._entry_ptr.22, ptr @ad9389b_probe._entry_ptr.6, ptr @ad9389b_remove._entry, ptr @ad9389b_remove._entry_ptr, ptr @ad9389b_s_audio_stream._entry, ptr @ad9389b_s_audio_stream._entry_ptr, ptr @ad9389b_s_ctrl._entry, ptr @ad9389b_s_ctrl._entry_ptr, ptr @ad9389b_s_dv_timings._entry, ptr @ad9389b_s_dv_timings._entry_ptr, ptr @ad9389b_s_power._entry, ptr @ad9389b_s_power._entry.100, ptr @ad9389b_s_power._entry.103, ptr @ad9389b_s_power._entry_ptr, ptr @ad9389b_s_power._entry_ptr.102, ptr @ad9389b_s_power._entry_ptr.105, ptr @ad9389b_s_stream._entry, ptr @ad9389b_s_stream._entry_ptr, ptr @ad9389b_set_isr._entry, ptr @ad9389b_set_isr._entry_ptr, ptr @ad9389b_setup._entry, ptr @ad9389b_setup._entry_ptr, ptr @ad9389b_update_monitor_present_status._entry, ptr @ad9389b_update_monitor_present_status._entry.118, ptr @ad9389b_update_monitor_present_status._entry.121, ptr @ad9389b_update_monitor_present_status._entry.124, ptr @ad9389b_update_monitor_present_status._entry_ptr, ptr @ad9389b_update_monitor_present_status._entry_ptr.120, ptr @ad9389b_update_monitor_present_status._entry_ptr.123, ptr @ad9389b_update_monitor_present_status._entry_ptr.126, ptr @ad9389b_wr._entry, ptr @ad9389b_wr._entry_ptr, ptr @debug, ptr @ad9389b_driver, ptr @.str, ptr @ad9389b_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @ad9389b_ops, ptr @ad9389b_probe._key, ptr @.str.7, ptr @ad9389b_ctrl_ops, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @ad9389b_probe.__key, ptr @.str.17, ptr @ad9389b_probe.__key.18, ptr @.str.19, ptr @.str.21, ptr @ad9389b_core_ops, ptr @ad9389b_audio_ops, ptr @ad9389b_video_ops, ptr @ad9389b_pad_ops, ptr @ad9389b_log_status.states, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @ad9389b_log_status.errors, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @ad9389b_timings_cap, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status.states to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status.errors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_log_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_power._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_power._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_monitor_present_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_monitor_present_status._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_update_monitor_present_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_update_monitor_present_status._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_update_monitor_present_status._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_update_monitor_present_status._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_audio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_check_edid_status._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_edid_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_dbg_dump_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_dbg_dump_edid._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_dbg_dump_edid._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_audio_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_g_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_get_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_edid_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_edid_handler._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_edid_handler._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_init_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_set_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9389b_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad9389b_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad9389b_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ad9389b_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %16, i32 noundef %conv, i32 noundef %shl) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2748, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end11.cleanup_crit_edge, label %if.end16

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %cmp17 = icmp eq ptr %1, null
  br i1 %cmp17, label %do.end22, label %if.end32

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %driver25 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %driver25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver25, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %nr.i202 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i202 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i202, align 4
  %addr29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %27 = ptrtoint ptr %addr29 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr29, align 2
  %conv30 = zext i16 %28 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %22, i32 noundef %26, i32 noundef %conv30) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %1, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %call.i, align 4
  %sd34 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd34, ptr noundef %client, ptr noundef nonnull @ad9389b_ops) #7
  %flags = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or = or i32 %33, 4
  store i32 %or, ptr %flags, align 4
  %hdl35 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 3
  %call37 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl35, i32 noundef 5, ptr noundef nonnull @ad9389b_probe._key, ptr noundef nonnull @.str.7) #7
  %call38 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl35, ptr noundef nonnull @ad9389b_ctrl_ops, i32 noundef 10488068, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %hdmi_mode_ctrl = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %hdmi_mode_ctrl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call38, ptr %hdmi_mode_ctrl, align 4
  %call39 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl35, ptr noundef null, i32 noundef 10488065, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #7
  %hotplug_ctrl = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 10
  %35 = ptrtoint ptr %hotplug_ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call39, ptr %hotplug_ctrl, align 4
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl35, ptr noundef null, i32 noundef 10488066, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #7
  %rx_sense_ctrl = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %rx_sense_ctrl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call40, ptr %rx_sense_ctrl, align 4
  %call41 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl35, ptr noundef null, i32 noundef 10488067, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #7
  %have_edid0_ctrl = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call41, ptr %have_edid0_ctrl, align 4
  %call42 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl35, ptr noundef nonnull @ad9389b_ctrl_ops, i32 noundef 10488069, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %rgb_quantization_range_ctrl = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 13
  %38 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call42, ptr %rgb_quantization_range_ctrl, align 4
  %ctrl_handler = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hdl35, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 3, i32 9
  %40 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool43.not = icmp eq i32 %41, 0
  br i1 %tobool43.not, label %if.end46, label %if.end32.err_hdl_crit_edge

if.end32.err_hdl_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hdl

if.end46:                                         ; preds = %if.end32
  %pad = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 2
  %flags47 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %flags47, align 4
  %function = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 24578, ptr %function, align 4
  %call50 = tail call i32 @media_entity_pads_init(ptr noundef %sd34, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.err_hdl_crit_edge

if.end46.err_hdl_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hdl

if.end53:                                         ; preds = %if.end46
  %dev_priv.i.i = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 11
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 0) #7
  %chip_revision = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call1.i, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp56.not = icmp eq i32 %call1.i, 2
  br i1 %cmp56.not, label %do.body67, label %do.end61

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %name63 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name63, i32 noundef %call1.i) #10
  br label %err_hdl

do.body67:                                        ; preds = %if.end53
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp68 = icmp sgt i32 %47, 0
  br i1 %cmp68, label %do.end73, label %do.body67.do.end82_crit_edge

do.body67.do.end82_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %name75 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 9
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i204 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 65) #7
  %50 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip_revision, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name75, i32 noundef %call1.i204, i32 noundef %51) #10
  br label %do.end82

do.end82:                                         ; preds = %do.end73, %do.body67.do.end82_crit_edge
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %call84 = tail call ptr @i2c_new_dummy_device(ptr noundef %53, i16 noundef zeroext 63) #7
  %edid_i2c_client = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 14
  %54 = ptrtoint ptr %edid_i2c_client to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call84, ptr %edid_i2c_client, align 4
  %cmp.i205 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end90, label %do.body99

do.end90:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %name92 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 9
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name92) #10
  %55 = ptrtoint ptr %edid_i2c_client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %edid_i2c_client, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %err_hdl

do.body99:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %edid_handler = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %edid_handler, i32 noundef 0) #7
  %58 = ptrtoint ptr %edid_handler to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %edid_handler, align 4
  %lockdep_map = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @ad9389b_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry106 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17, i32 0, i32 1
  %59 = ptrtoint ptr %entry106 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry106, ptr %entry106, align 4
  %prev.i = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry106, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17, i32 0, i32 2
  %61 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ad9389b_edid_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @ad9389b_probe.__key.18) #7
  %dv_timings = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 7
  %62 = call ptr @memcpy(ptr %dv_timings, ptr @__const.ad9389b_probe.dv1080p60, i32 132)
  tail call fastcc void @ad9389b_init_setup(ptr noundef %sd34)
  tail call fastcc void @ad9389b_set_isr(ptr noundef %sd34, i1 noundef zeroext true)
  %name121 = getelementptr inbounds %struct.ad9389b_state, ptr %call.i, i32 0, i32 1, i32 9
  %name123 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr125 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %63 = ptrtoint ptr %addr125 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr125, align 2
  %conv126 = zext i16 %64 to i32
  %shl127 = shl nuw nsw i32 %conv126, 1
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 8
  %name129 = getelementptr inbounds %struct.i2c_adapter, ptr %66, i32 0, i32 12
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name121, ptr noundef %name123, i32 noundef %shl127, ptr noundef %name129) #10
  br label %cleanup

err_hdl:                                          ; preds = %do.end90, %do.end61, %if.end46.err_hdl_crit_edge, %if.end32.err_hdl_crit_edge
  %err.1 = phi i32 [ %call50, %if.end46.err_hdl_crit_edge ], [ %41, %if.end32.err_hdl_crit_edge ], [ -5, %do.end61 ], [ %57, %do.end90 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl35) #7
  br label %cleanup

cleanup:                                          ; preds = %err_hdl, %do.body99, %do.end22, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end22 ], [ %err.1, %err_hdl ], [ 0, %do.body99 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name, ptr noundef %name3, i32 noundef %shl, ptr noundef %name5) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call10 = tail call i32 @ad9389b_s_stream(ptr noundef %1, i32 noundef 0)
  %call11 = tail call i32 @ad9389b_s_audio_stream(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @ad9389b_init_setup(ptr noundef %1)
  %edid_handler = getelementptr i8, ptr %1, i32 2640
  %call12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %edid_handler) #7
  %edid_i2c_client = getelementptr i8, ptr %1, i32 572
  %8 = ptrtoint ptr %edid_i2c_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edid_i2c_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #7
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %11) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9389b_edid_handler(ptr noundef %work) #2 align 64 {
entry:
  %ed = alloca %struct.ad9389b_edid_detect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr i8, ptr %work, i32 -2640
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ed) #7
  %0 = getelementptr inbounds %struct.ad9389b_edid_detect, ptr %ed, i32 0, i32 1
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %work, i32 -2524
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name, ptr noundef nonnull @.str.168) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call fastcc zeroext i1 @ad9389b_check_edid_status(ptr noundef %sd1)
  br i1 %call7, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %dev_priv.i.i.i = getelementptr i8, ptr %work, i32 -2488
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #7
  %and.i = and i32 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9.if.end32_crit_edge, label %if.then11

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then11:                                        ; preds = %if.end9
  %read_retries = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %read_retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then11.if.end32_crit_edge, label %if.then12

if.then11.if.end32_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then12:                                        ; preds = %if.then11
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %read_retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %read_retries, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %do.end20, label %if.then12.do.end27_crit_edge

if.then12.do.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %name22 = getelementptr i8, ptr %work, i32 -2524
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name22, ptr noundef nonnull @.str.168) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end20, %if.then12.do.end27_crit_edge
  %call28 = tail call i32 @ad9389b_s_power(ptr noundef %sd1, i32 noundef 0)
  %call29 = tail call i32 @ad9389b_s_power(ptr noundef %sd1, i32 noundef 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 250) #7
  br label %cleanup

if.end32:                                         ; preds = %if.then11.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  %9 = ptrtoint ptr %ed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ed, align 4
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -60) #7
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1.i, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %sd1, null
  br i1 %tobool.not.i, label %if.end32.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.end32.v4l2_subdev_notify.exit_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.end32
  %v4l2_dev.i = getelementptr i8, ptr %work, i32 -2540
  %13 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %16(ptr noundef nonnull %sd1, i32 noundef 1, ptr noundef nonnull %ed) #7
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.end32.v4l2_subdev_notify.exit_crit_edge
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp35 = icmp sgt i32 %17, 0
  br i1 %cmp35, label %do.end39, label %v4l2_subdev_notify.exit.cleanup_crit_edge

v4l2_subdev_notify.exit.cleanup_crit_edge:        ; preds = %v4l2_subdev_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %v4l2_subdev_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name41 = getelementptr i8, ptr %work, i32 -2524
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name41, ptr noundef nonnull @.str.168) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %v4l2_subdev_notify.exit.cleanup_crit_edge, %do.end27, %do.end6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ed) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_init_setup(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name, ptr noundef nonnull @.str.175) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -106, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end5.ad9389b_wr.exit_crit_edge, label %for.cond.i

do.end5.ad9389b_wr.exit_crit_edge:                ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %do.end5
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -106, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -106, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef 150, i32 noundef 255) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %do.end5.ad9389b_wr.exit_crit_edge
  %edid1 = getelementptr i8, ptr %sd, i32 576
  %3 = call ptr @memset(ptr %edid1, i32 0, i32 2060)
  %have_monitor = getelementptr i8, ptr %sd, i32 417
  %4 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %have_monitor, align 1
  tail call fastcc void @ad9389b_set_isr(ptr noundef %sd, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_set_isr(ptr noundef %sd, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.else, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #7
  %and.i = and i32 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i8 -64, i8 -60
  br label %if.end3

if.end3:                                          ; preds = %if.else, %entry.if.end3_crit_edge
  %irqs.0 = phi i8 [ 0, %entry.if.end3_crit_edge ], [ %spec.select, %if.else ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = zext i8 %irqs.0 to i32
  br label %do.body

do.body:                                          ; preds = %ad9389b_wr.exit.do.body_crit_edge, %if.end3
  %retries.0 = phi i32 [ 100, %if.end3 ], [ %dec, %ad9389b_wr.exit.do.body_crit_edge ]
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.body.ad9389b_wr.exit_crit_edge, label %for.cond.i

do.body.ad9389b_wr.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %do.body
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -108, i8 noundef zeroext %irqs.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef 148, i32 noundef %conv3.i) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %do.body.ad9389b_wr.exit_crit_edge
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool7.not = icmp eq i32 %retries.0, 0
  %dec = add nsw i32 %retries.0, -1
  %6 = trunc i32 %call1.i29 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %irqs.0, i8 %6)
  %cmp.not = icmp eq i8 %irqs.0, %6
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.end, label %ad9389b_wr.exit.do.body_crit_edge

ad9389b_wr.exit.do.body_crit_edge:                ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %ad9389b_wr.exit
  br i1 %cmp.not, label %do.end.if.end20_crit_edge, label %do.end18

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name.i) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %do.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %edid1 = getelementptr i8, ptr %sd, i32 576
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %chip_revision = getelementptr i8, ptr %sd, i32 412
  %0 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_revision, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %1) #10
  %power_on = getelementptr i8, ptr %sd, i32 416
  %2 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_on, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.54, ptr @.str.53
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, ptr noundef nonnull %cond) #10
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 66) #7
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.59, ptr @.str.58
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i225 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 66) #7
  %and20 = and i32 %call1.i225, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.59, ptr @.str.58
  %segments = getelementptr i8, ptr %sd, i32 580
  %8 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.59, ptr @.str.60
  %10 = ptrtoint ptr %edid1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edid1, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name, ptr noundef nonnull %cond18, ptr noundef nonnull %cond22, ptr noundef nonnull %cond24, i32 noundef %11) #10
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i227 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -81) #7
  %and33 = and i32 %call1.i227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.65, ptr @.str.64
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i229 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -95) #7
  %and37 = and i32 %call1.i229, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.67, ptr @.str.66
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef nonnull %cond35, ptr noundef nonnull %cond39) #10
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i231 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext -72) #7
  %and48 = and i32 %call1.i231, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.72, ptr @.str.71
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, ptr noundef nonnull %cond50) #10
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i233 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext -56) #7
  %and59 = and i32 %call1.i233, 15
  %arrayidx = getelementptr [16 x ptr], ptr @ad9389b_log_status.states, i32 0, i32 %and59
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i235 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext -56) #7
  %shr = ashr i32 %call1.i235, 4
  %arrayidx61 = getelementptr [16 x ptr], ptr @ad9389b_log_status.errors, i32 0, i32 %shr
  %24 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx61, align 4
  %edid_detect_counter = getelementptr i8, ptr %sd, i32 2636
  %26 = ptrtoint ptr %edid_detect_counter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %edid_detect_counter, align 4
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i237 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext -108) #7
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i239 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext -106) #7
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef %21, ptr noundef %25, i32 noundef %27, i32 noundef %call1.i237, i32 noundef %call1.i239) #10
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i241 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext -104) #7
  %conv = and i32 %call1.i241, 128
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i243 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 59) #7
  %and74 = and i32 %call1.i243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.80, ptr @.str.79
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, ptr noundef nonnull %cond76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool85.not = icmp eq i32 %conv, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.85, ptr @.str.84
  %36 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i, align 4
  %. = select i1 %tobool85.not, i8 -98, i8 -104
  %.286 = select i1 %tobool85.not, i32 1, i32 4
  %call1.i247 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext %.) #7
  %and93 = lshr i32 %call1.i247, %.286
  %cond95 = and i32 %and93, 7
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, ptr noundef nonnull %cond86, i32 noundef %cond95) #10
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i249 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext -81) #7
  %and98 = and i32 %call1.i249, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %entry.if.end160_crit_edge, label %if.then

entry.if.end160_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i251 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #7
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i253 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 1) #7
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i255 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 2) #7
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i257 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 3) #7
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i259 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 62) #7
  %50 = lshr i32 %call1.i259, 2
  %51 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i261 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext 61) #7
  %conv114 = and i32 %call1.i261, 63
  %53 = and i32 %call1.i251, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool115.not = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %.287 = select i1 %tobool115.not, i8 4, i8 7
  %.288 = select i1 %tobool115.not, i8 5, i8 8
  %.289 = select i1 %tobool115.not, i8 6, i8 9
  %.str.85..str.84 = select i1 %tobool115.not, ptr @.str.85, ptr @.str.84
  %call1.i269 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext %.287) #7
  %and126 = shl i32 %call1.i269, 16
  %shl127 = and i32 %and126, 983040
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i271 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext %.288) #7
  %shl129 = shl i32 %call1.i271, 8
  %or130 = or i32 %shl129, %shl127
  %58 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i273 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext %.289) #7
  %or132 = or i32 %or130, %call1.i273
  %60 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i275 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 1) #7
  %and134 = shl i32 %call1.i275, 16
  %shl135 = and i32 %and134, 983040
  %62 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i277 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 2) #7
  %shl137 = shl i32 %call1.i277, 8
  %or138 = or i32 %shl137, %shl135
  %64 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i279 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 3) #7
  %or140 = or i32 %or138, %call1.i279
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, ptr noundef nonnull %.str.85..str.84, i32 noundef %or140, i32 noundef %or132) #10
  %conv157 = and i32 %50, 255
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name, i32 noundef %conv157, i32 noundef %conv114) #10
  br label %if.end160

if.end160:                                        ; preds = %if.then, %entry.if.end160_crit_edge
  %dv_timings = getelementptr i8, ptr %sd, i32 418
  %66 = ptrtoint ptr %dv_timings to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %dv_timings, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp = icmp eq i32 %67, 0
  br i1 %cmp, label %if.then162, label %do.end169

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.92, ptr noundef %dv_timings, i1 noundef zeroext false) #7
  br label %if.end174

do.end169:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name) #10
  br label %if.end174

if.end174:                                        ; preds = %do.end169, %if.then162
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #7
  %conv2 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.ad9389b_wr.exit_crit_edge, label %for.cond.i

entry.ad9389b_wr.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %6 = trunc i64 %1 to i32
  %conv.i = and i32 %6, 255
  %7 = trunc i64 %3 to i32
  %conv3.i = and i32 %7, 255
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef %conv.i, i32 noundef %conv3.i) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %entry.ad9389b_wr.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %power_on = getelementptr i8, ptr %sd, i32 416
  %dev_priv.i.i.i100 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %on.tr = phi i32 [ %on, %entry ], [ 0, %tailrecurse.backedge ]
  %ret.known.tr = phi i32 [ 1, %entry ], [ 0, %tailrecurse.backedge ]
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %tailrecurse.do.end5_crit_edge

tailrecurse.do.end5_crit_edge:                    ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on.tr)
  %tobool.not = icmp eq i32 %on.tr, 0
  %cond = select i1 %tobool.not, ptr @.str.54, ptr @.str.53
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name, ptr noundef nonnull @.str.99, ptr noundef nonnull %cond) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %tailrecurse.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on.tr)
  %tobool6 = icmp ne i32 %on.tr, 0
  %frombool = zext i1 %tobool6 to i8
  %1 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %power_on, align 4
  br i1 %tobool6, label %do.end5.for.body_crit_edge, label %if.then8

do.end5.for.body_crit_edge:                       ; preds = %do.end5
  br label %for.body

if.then8:                                         ; preds = %do.end5
  %2 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #7
  %4 = trunc i32 %call1.i.i to i8
  %conv2.i = or i8 %4, 64
  %5 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then8.cleanup_crit_edge, label %for.cond.i.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.then8
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 65, i32 noundef %conv3.i.i) #10
  br label %cleanup

for.body:                                         ; preds = %ad9389b_wr_and_or.exit130.for.body_crit_edge, %do.end5.for.body_crit_edge
  %i.0288 = phi i32 [ %inc, %ad9389b_wr_and_or.exit130.for.body_crit_edge ], [ 0, %do.end5.for.body_crit_edge ]
  %7 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i101 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 65) #7
  %9 = trunc i32 %call1.i.i101 to i8
  %10 = and i8 %9, -65
  %11 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i102)
  %cmp2.i.i103 = icmp eq i32 %call1.i7.i102, 0
  br i1 %cmp2.i.i103, label %for.body.ad9389b_wr_and_or.exit114_crit_edge, label %for.cond.i.i106

for.body.ad9389b_wr_and_or.exit114_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit114

for.cond.i.i106:                                  ; preds = %for.body
  %call1.1.i.i104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i104)
  %cmp2.1.i.i105 = icmp eq i32 %call1.1.i.i104, 0
  br i1 %cmp2.1.i.i105, label %for.cond.i.i106.ad9389b_wr_and_or.exit114_crit_edge, label %for.cond.1.i.i109

for.cond.i.i106.ad9389b_wr_and_or.exit114_crit_edge: ; preds = %for.cond.i.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit114

for.cond.1.i.i109:                                ; preds = %for.cond.i.i106
  %call1.2.i.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 65, i8 noundef zeroext %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i107)
  %cmp2.2.i.i108 = icmp eq i32 %call1.2.i.i107, 0
  br i1 %cmp2.2.i.i108, label %for.cond.1.i.i109.ad9389b_wr_and_or.exit114_crit_edge, label %for.cond.2.i.i113

for.cond.1.i.i109.ad9389b_wr_and_or.exit114_crit_edge: ; preds = %for.cond.1.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit114

for.cond.2.i.i113:                                ; preds = %for.cond.1.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i111 = zext i8 %10 to i32
  %call4.i.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 65, i32 noundef %conv3.i.i111) #10
  br label %ad9389b_wr_and_or.exit114

ad9389b_wr_and_or.exit114:                        ; preds = %for.cond.2.i.i113, %for.cond.1.i.i109.ad9389b_wr_and_or.exit114_crit_edge, %for.cond.i.i106.ad9389b_wr_and_or.exit114_crit_edge, %for.body.ad9389b_wr_and_or.exit114_crit_edge
  %13 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 65) #7
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.end31, label %if.end14

if.end14:                                         ; preds = %ad9389b_wr_and_or.exit114
  %15 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i116 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 65) #7
  %17 = trunc i32 %call1.i.i116 to i8
  %conv2.i117 = or i8 %17, 64
  %18 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i118 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i118)
  %cmp2.i.i119 = icmp eq i32 %call1.i7.i118, 0
  br i1 %cmp2.i.i119, label %if.end14.ad9389b_wr_and_or.exit130_crit_edge, label %for.cond.i.i122

if.end14.ad9389b_wr_and_or.exit130_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit130

for.cond.i.i122:                                  ; preds = %if.end14
  %call1.1.i.i120 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i120)
  %cmp2.1.i.i121 = icmp eq i32 %call1.1.i.i120, 0
  br i1 %cmp2.1.i.i121, label %for.cond.i.i122.ad9389b_wr_and_or.exit130_crit_edge, label %for.cond.1.i.i125

for.cond.i.i122.ad9389b_wr_and_or.exit130_crit_edge: ; preds = %for.cond.i.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit130

for.cond.1.i.i125:                                ; preds = %for.cond.i.i122
  %call1.2.i.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 65, i8 noundef zeroext %conv2.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i123)
  %cmp2.2.i.i124 = icmp eq i32 %call1.2.i.i123, 0
  br i1 %cmp2.2.i.i124, label %for.cond.1.i.i125.ad9389b_wr_and_or.exit130_crit_edge, label %for.cond.2.i.i129

for.cond.1.i.i125.ad9389b_wr_and_or.exit130_crit_edge: ; preds = %for.cond.1.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit130

for.cond.2.i.i129:                                ; preds = %for.cond.1.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i127 = zext i8 %conv2.i117 to i32
  %call4.i.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 65, i32 noundef %conv3.i.i127) #10
  br label %ad9389b_wr_and_or.exit130

ad9389b_wr_and_or.exit130:                        ; preds = %for.cond.2.i.i129, %for.cond.1.i.i125.ad9389b_wr_and_or.exit130_crit_edge, %for.cond.i.i122.ad9389b_wr_and_or.exit130_crit_edge, %if.end14.ad9389b_wr_and_or.exit130_crit_edge
  tail call void @msleep(i32 noundef 10) #7
  %inc = add nuw nsw i32 %i.0288, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body17, label %ad9389b_wr_and_or.exit130.for.body_crit_edge

ad9389b_wr_and_or.exit130.for.body_crit_edge:     ; preds = %ad9389b_wr_and_or.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body17:                                        ; preds = %ad9389b_wr_and_or.exit130
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp sgt i32 %20, 0
  br i1 %cmp18, label %do.end22, label %do.body17.tailrecurse.backedge_crit_edge

do.body17.tailrecurse.backedge_crit_edge:         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.backedge

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name) #10
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %do.end22, %do.body17.tailrecurse.backedge_crit_edge
  br label %tailrecurse

if.end31:                                         ; preds = %ad9389b_wr_and_or.exit114
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0288)
  %cmp32 = icmp ugt i32 %i.0288, 1
  br i1 %cmp32, label %do.body34, label %if.end31.if.end47_crit_edge

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body34:                                        ; preds = %if.end31
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp35 = icmp sgt i32 %21, 0
  br i1 %cmp35, label %do.end39, label %do.body34.if.end47_crit_edge

do.body34.if.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name, i32 noundef %i.0288) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end39, %do.body34.if.end47_crit_edge, %if.end31.if.end47_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i132 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext -70) #7
  %24 = trunc i32 %call1.i.i132 to i8
  %conv2.i133 = or i8 %24, 16
  %25 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i134)
  %cmp2.i.i135 = icmp eq i32 %call1.i7.i134, 0
  br i1 %cmp2.i.i135, label %if.end47.ad9389b_wr_and_or.exit146_crit_edge, label %for.cond.i.i138

if.end47.ad9389b_wr_and_or.exit146_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit146

for.cond.i.i138:                                  ; preds = %if.end47
  %call1.1.i.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i136)
  %cmp2.1.i.i137 = icmp eq i32 %call1.1.i.i136, 0
  br i1 %cmp2.1.i.i137, label %for.cond.i.i138.ad9389b_wr_and_or.exit146_crit_edge, label %for.cond.1.i.i141

for.cond.i.i138.ad9389b_wr_and_or.exit146_crit_edge: ; preds = %for.cond.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit146

for.cond.1.i.i141:                                ; preds = %for.cond.i.i138
  %call1.2.i.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i139)
  %cmp2.2.i.i140 = icmp eq i32 %call1.2.i.i139, 0
  br i1 %cmp2.2.i.i140, label %for.cond.1.i.i141.ad9389b_wr_and_or.exit146_crit_edge, label %for.cond.2.i.i145

for.cond.1.i.i141.ad9389b_wr_and_or.exit146_crit_edge: ; preds = %for.cond.1.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit146

for.cond.2.i.i145:                                ; preds = %for.cond.1.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i143 = zext i8 %conv2.i133 to i32
  %call4.i.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 186, i32 noundef %conv3.i.i143) #10
  br label %ad9389b_wr_and_or.exit146

ad9389b_wr_and_or.exit146:                        ; preds = %for.cond.2.i.i145, %for.cond.1.i.i141.ad9389b_wr_and_or.exit146_crit_edge, %for.cond.i.i138.ad9389b_wr_and_or.exit146_crit_edge, %if.end47.ad9389b_wr_and_or.exit146_crit_edge
  %27 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i148 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext -104) #7
  %29 = trunc i32 %call1.i.i148 to i8
  %30 = and i8 %29, -16
  %conv2.i149 = or i8 %30, 7
  %31 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i150 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i150)
  %cmp2.i.i151 = icmp eq i32 %call1.i7.i150, 0
  br i1 %cmp2.i.i151, label %ad9389b_wr_and_or.exit146.ad9389b_wr_and_or.exit162_crit_edge, label %for.cond.i.i154

ad9389b_wr_and_or.exit146.ad9389b_wr_and_or.exit162_crit_edge: ; preds = %ad9389b_wr_and_or.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit162

for.cond.i.i154:                                  ; preds = %ad9389b_wr_and_or.exit146
  %call1.1.i.i152 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i152)
  %cmp2.1.i.i153 = icmp eq i32 %call1.1.i.i152, 0
  br i1 %cmp2.1.i.i153, label %for.cond.i.i154.ad9389b_wr_and_or.exit162_crit_edge, label %for.cond.1.i.i157

for.cond.i.i154.ad9389b_wr_and_or.exit162_crit_edge: ; preds = %for.cond.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit162

for.cond.1.i.i157:                                ; preds = %for.cond.i.i154
  %call1.2.i.i155 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i155)
  %cmp2.2.i.i156 = icmp eq i32 %call1.2.i.i155, 0
  br i1 %cmp2.2.i.i156, label %for.cond.1.i.i157.ad9389b_wr_and_or.exit162_crit_edge, label %for.cond.2.i.i161

for.cond.1.i.i157.ad9389b_wr_and_or.exit162_crit_edge: ; preds = %for.cond.1.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit162

for.cond.2.i.i161:                                ; preds = %for.cond.1.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i159 = zext i8 %conv2.i149 to i32
  %call4.i.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 152, i32 noundef %conv3.i.i159) #10
  br label %ad9389b_wr_and_or.exit162

ad9389b_wr_and_or.exit162:                        ; preds = %for.cond.2.i.i161, %for.cond.1.i.i157.ad9389b_wr_and_or.exit162_crit_edge, %for.cond.i.i154.ad9389b_wr_and_or.exit162_crit_edge, %ad9389b_wr_and_or.exit146.ad9389b_wr_and_or.exit162_crit_edge
  %33 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i164 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -100, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i164)
  %cmp2.i = icmp eq i32 %call1.i164, 0
  br i1 %cmp2.i, label %ad9389b_wr_and_or.exit162.ad9389b_wr.exit_crit_edge, label %for.cond.i

ad9389b_wr_and_or.exit162.ad9389b_wr.exit_crit_edge: ; preds = %ad9389b_wr_and_or.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %ad9389b_wr_and_or.exit162
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -100, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -100, i8 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 156, i32 noundef 56) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %ad9389b_wr_and_or.exit162.ad9389b_wr.exit_crit_edge
  %35 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i.i166 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext -99) #7
  %37 = trunc i32 %call1.i.i166 to i8
  %38 = and i8 %37, -4
  %conv2.i167 = or i8 %38, 1
  %39 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i7.i168 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i168)
  %cmp2.i.i169 = icmp eq i32 %call1.i7.i168, 0
  br i1 %cmp2.i.i169, label %ad9389b_wr.exit.ad9389b_wr_and_or.exit180_crit_edge, label %for.cond.i.i172

ad9389b_wr.exit.ad9389b_wr_and_or.exit180_crit_edge: ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit180

for.cond.i.i172:                                  ; preds = %ad9389b_wr.exit
  %call1.1.i.i170 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i170)
  %cmp2.1.i.i171 = icmp eq i32 %call1.1.i.i170, 0
  br i1 %cmp2.1.i.i171, label %for.cond.i.i172.ad9389b_wr_and_or.exit180_crit_edge, label %for.cond.1.i.i175

for.cond.i.i172.ad9389b_wr_and_or.exit180_crit_edge: ; preds = %for.cond.i.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit180

for.cond.1.i.i175:                                ; preds = %for.cond.i.i172
  %call1.2.i.i173 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -99, i8 noundef zeroext %conv2.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i173)
  %cmp2.2.i.i174 = icmp eq i32 %call1.2.i.i173, 0
  br i1 %cmp2.2.i.i174, label %for.cond.1.i.i175.ad9389b_wr_and_or.exit180_crit_edge, label %for.cond.2.i.i179

for.cond.1.i.i175.ad9389b_wr_and_or.exit180_crit_edge: ; preds = %for.cond.1.i.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit180

for.cond.2.i.i179:                                ; preds = %for.cond.1.i.i175
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i177 = zext i8 %conv2.i167 to i32
  %call4.i.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 157, i32 noundef %conv3.i.i177) #10
  br label %ad9389b_wr_and_or.exit180

ad9389b_wr_and_or.exit180:                        ; preds = %for.cond.2.i.i179, %for.cond.1.i.i175.ad9389b_wr_and_or.exit180_crit_edge, %for.cond.i.i172.ad9389b_wr_and_or.exit180_crit_edge, %ad9389b_wr.exit.ad9389b_wr_and_or.exit180_crit_edge
  %diff_data_drive_strength = getelementptr i8, ptr %sd, i32 -4
  %41 = ptrtoint ptr %diff_data_drive_strength to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %diff_data_drive_strength, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp49.not = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i100, align 4
  br i1 %cmp49.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %ad9389b_wr_and_or.exit180
  %call1.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %cmp2.i183 = icmp eq i32 %call1.i182, 0
  br i1 %cmp2.i183, label %if.then51.if.end55_crit_edge, label %for.cond.i186

if.then51.if.end55_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.i186:                                    ; preds = %if.then51
  %call1.1.i184 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i184)
  %cmp2.1.i185 = icmp eq i32 %call1.1.i184, 0
  br i1 %cmp2.1.i185, label %for.cond.i186.if.end55_crit_edge, label %for.cond.1.i189

for.cond.i186.if.end55_crit_edge:                 ; preds = %for.cond.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.1.i189:                                  ; preds = %for.cond.i186
  %call1.2.i187 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i187)
  %cmp2.2.i188 = icmp eq i32 %call1.2.i187, 0
  br i1 %cmp2.2.i188, label %for.cond.1.i189.if.end55_crit_edge, label %for.cond.2.i192

for.cond.1.i189.if.end55_crit_edge:               ; preds = %for.cond.1.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.2.i192:                                  ; preds = %for.cond.1.i189
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %42 to i32
  br label %if.end55.sink.split

if.else:                                          ; preds = %ad9389b_wr_and_or.exit180
  %call1.i195 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i195)
  %cmp2.i196 = icmp eq i32 %call1.i195, 0
  br i1 %cmp2.i196, label %if.else.if.end55_crit_edge, label %for.cond.i199

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.i199:                                    ; preds = %if.else
  %call1.1.i197 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i197)
  %cmp2.1.i198 = icmp eq i32 %call1.1.i197, 0
  br i1 %cmp2.1.i198, label %for.cond.i199.if.end55_crit_edge, label %for.cond.1.i202

for.cond.i199.if.end55_crit_edge:                 ; preds = %for.cond.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.1.i202:                                  ; preds = %for.cond.i199
  %call1.2.i200 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -94, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i200)
  %cmp2.2.i201 = icmp eq i32 %call1.2.i200, 0
  br i1 %cmp2.2.i201, label %for.cond.1.i202.if.end55_crit_edge, label %for.cond.1.i202.if.end55.sink.split_crit_edge

for.cond.1.i202.if.end55.sink.split_crit_edge:    ; preds = %for.cond.1.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.sink.split

for.cond.1.i202.if.end55_crit_edge:               ; preds = %for.cond.1.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55.sink.split:                              ; preds = %for.cond.1.i202.if.end55.sink.split_crit_edge, %for.cond.2.i192
  %.sink = phi i32 [ %conv3.i, %for.cond.2.i192 ], [ 135, %for.cond.1.i202.if.end55.sink.split_crit_edge ]
  %call4.i204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 162, i32 noundef %.sink) #10
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %for.cond.1.i202.if.end55_crit_edge, %for.cond.i199.if.end55_crit_edge, %if.else.if.end55_crit_edge, %for.cond.1.i189.if.end55_crit_edge, %for.cond.i186.if.end55_crit_edge, %if.then51.if.end55_crit_edge
  %diff_clk_drive_strength = getelementptr i8, ptr %sd, i32 -3
  %45 = ptrtoint ptr %diff_clk_drive_strength to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %diff_clk_drive_strength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp57.not = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i100, align 4
  br i1 %cmp57.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.end55
  %call1.i208 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %cmp2.i209 = icmp eq i32 %call1.i208, 0
  br i1 %cmp2.i209, label %if.then59.if.end64_crit_edge, label %for.cond.i212

if.then59.if.end64_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.cond.i212:                                    ; preds = %if.then59
  %call1.1.i210 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i210)
  %cmp2.1.i211 = icmp eq i32 %call1.1.i210, 0
  br i1 %cmp2.1.i211, label %for.cond.i212.if.end64_crit_edge, label %for.cond.1.i215

for.cond.i212.if.end64_crit_edge:                 ; preds = %for.cond.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.cond.1.i215:                                  ; preds = %for.cond.i212
  %call1.2.i213 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i213)
  %cmp2.2.i214 = icmp eq i32 %call1.2.i213, 0
  br i1 %cmp2.2.i214, label %for.cond.1.i215.if.end64_crit_edge, label %for.cond.2.i219

for.cond.1.i215.if.end64_crit_edge:               ; preds = %for.cond.1.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.cond.2.i219:                                  ; preds = %for.cond.1.i215
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i217 = zext i8 %46 to i32
  br label %if.end64.sink.split

if.else62:                                        ; preds = %if.end55
  %call1.i222 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i222)
  %cmp2.i223 = icmp eq i32 %call1.i222, 0
  br i1 %cmp2.i223, label %if.else62.if.end64_crit_edge, label %for.cond.i226

if.else62.if.end64_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.cond.i226:                                    ; preds = %if.else62
  %call1.1.i224 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i224)
  %cmp2.1.i225 = icmp eq i32 %call1.1.i224, 0
  br i1 %cmp2.1.i225, label %for.cond.i226.if.end64_crit_edge, label %for.cond.1.i229

for.cond.i226.if.end64_crit_edge:                 ; preds = %for.cond.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.cond.1.i229:                                  ; preds = %for.cond.i226
  %call1.2.i227 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -93, i8 noundef zeroext -121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i227)
  %cmp2.2.i228 = icmp eq i32 %call1.2.i227, 0
  br i1 %cmp2.2.i228, label %for.cond.1.i229.if.end64_crit_edge, label %for.cond.1.i229.if.end64.sink.split_crit_edge

for.cond.1.i229.if.end64.sink.split_crit_edge:    ; preds = %for.cond.1.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.sink.split

for.cond.1.i229.if.end64_crit_edge:               ; preds = %for.cond.1.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64.sink.split:                              ; preds = %for.cond.1.i229.if.end64.sink.split_crit_edge, %for.cond.2.i219
  %.sink303 = phi i32 [ %conv3.i217, %for.cond.2.i219 ], [ 135, %for.cond.1.i229.if.end64.sink.split_crit_edge ]
  %call4.i231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 163, i32 noundef %.sink303) #10
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %for.cond.1.i229.if.end64_crit_edge, %for.cond.i226.if.end64_crit_edge, %if.else62.if.end64_crit_edge, %for.cond.1.i215.if.end64_crit_edge, %for.cond.i212.if.end64_crit_edge, %if.then59.if.end64_crit_edge
  %49 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i235 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 10, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i235)
  %cmp2.i236 = icmp eq i32 %call1.i235, 0
  br i1 %cmp2.i236, label %if.end64.ad9389b_wr.exit246_crit_edge, label %for.cond.i239

if.end64.ad9389b_wr.exit246_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit246

for.cond.i239:                                    ; preds = %if.end64
  %call1.1.i237 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 10, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i237)
  %cmp2.1.i238 = icmp eq i32 %call1.1.i237, 0
  br i1 %cmp2.1.i238, label %for.cond.i239.ad9389b_wr.exit246_crit_edge, label %for.cond.1.i242

for.cond.i239.ad9389b_wr.exit246_crit_edge:       ; preds = %for.cond.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit246

for.cond.1.i242:                                  ; preds = %for.cond.i239
  %call1.2.i240 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 10, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i240)
  %cmp2.2.i241 = icmp eq i32 %call1.2.i240, 0
  br i1 %cmp2.2.i241, label %for.cond.1.i242.ad9389b_wr.exit246_crit_edge, label %for.cond.2.i245

for.cond.1.i242.ad9389b_wr.exit246_crit_edge:     ; preds = %for.cond.1.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit246

for.cond.2.i245:                                  ; preds = %for.cond.1.i242
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 10, i32 noundef 1) #10
  br label %ad9389b_wr.exit246

ad9389b_wr.exit246:                               ; preds = %for.cond.2.i245, %for.cond.1.i242.ad9389b_wr.exit246_crit_edge, %for.cond.i239.ad9389b_wr.exit246_crit_edge, %if.end64.ad9389b_wr.exit246_crit_edge
  %51 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i248 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -69, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i248)
  %cmp2.i249 = icmp eq i32 %call1.i248, 0
  br i1 %cmp2.i249, label %ad9389b_wr.exit246.ad9389b_wr.exit259_crit_edge, label %for.cond.i252

ad9389b_wr.exit246.ad9389b_wr.exit259_crit_edge:  ; preds = %ad9389b_wr.exit246
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit259

for.cond.i252:                                    ; preds = %ad9389b_wr.exit246
  %call1.1.i250 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -69, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i250)
  %cmp2.1.i251 = icmp eq i32 %call1.1.i250, 0
  br i1 %cmp2.1.i251, label %for.cond.i252.ad9389b_wr.exit259_crit_edge, label %for.cond.1.i255

for.cond.i252.ad9389b_wr.exit259_crit_edge:       ; preds = %for.cond.i252
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit259

for.cond.1.i255:                                  ; preds = %for.cond.i252
  %call1.2.i253 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -69, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i253)
  %cmp2.2.i254 = icmp eq i32 %call1.2.i253, 0
  br i1 %cmp2.2.i254, label %for.cond.1.i255.ad9389b_wr.exit259_crit_edge, label %for.cond.2.i258

for.cond.1.i255.ad9389b_wr.exit259_crit_edge:     ; preds = %for.cond.1.i255
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit259

for.cond.2.i258:                                  ; preds = %for.cond.1.i255
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 187, i32 noundef 255) #10
  br label %ad9389b_wr.exit259

ad9389b_wr.exit259:                               ; preds = %for.cond.2.i258, %for.cond.1.i255.ad9389b_wr.exit259_crit_edge, %for.cond.i252.ad9389b_wr.exit259_crit_edge, %ad9389b_wr.exit246.ad9389b_wr.exit259_crit_edge
  %53 = ptrtoint ptr %dev_priv.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i.i100, align 4
  %call1.i261 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261)
  %cmp2.i262 = icmp eq i32 %call1.i261, 0
  br i1 %cmp2.i262, label %ad9389b_wr.exit259.cleanup_crit_edge, label %for.cond.i265

ad9389b_wr.exit259.cleanup_crit_edge:             ; preds = %ad9389b_wr.exit259
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i265:                                    ; preds = %ad9389b_wr.exit259
  %call1.1.i263 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i263)
  %cmp2.1.i264 = icmp eq i32 %call1.1.i263, 0
  br i1 %cmp2.1.i264, label %for.cond.i265.cleanup_crit_edge, label %for.cond.1.i268

for.cond.i265.cleanup_crit_edge:                  ; preds = %for.cond.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i268:                                  ; preds = %for.cond.i265
  %call1.2.i266 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i266)
  %cmp2.2.i267 = icmp eq i32 %call1.2.i266, 0
  br i1 %cmp2.2.i267, label %for.cond.1.i268.cleanup_crit_edge, label %for.cond.2.i271

for.cond.1.i268.cleanup_crit_edge:                ; preds = %for.cond.1.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i271:                                  ; preds = %for.cond.1.i268
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef 201, i32 noundef 15) #10
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i271, %for.cond.1.i268.cleanup_crit_edge, %for.cond.i265.cleanup_crit_edge, %ad9389b_wr.exit259.cleanup_crit_edge, %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  ret i32 %ret.known.tr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_isr(ptr noundef %sd, i32 noundef %status, ptr nocapture noundef writeonly %handled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ad9389b_set_isr(ptr noundef %sd, i1 noundef zeroext false)
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -106) #7
  %conv = trunc i32 %call1.i to i8
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -106, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %cmp2.i = icmp eq i32 %call1.i27, 0
  br i1 %cmp2.i, label %entry.ad9389b_wr.exit_crit_edge, label %for.cond.i

entry.ad9389b_wr.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -106, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -106, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = and i32 %call1.i, 255
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef 150, i32 noundef %conv3.i) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %entry.ad9389b_wr.exit_crit_edge
  tail call fastcc void @ad9389b_set_isr(ptr noundef %sd, i1 noundef zeroext true)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %ad9389b_wr.exit.do.end7_crit_edge

ad9389b_wr.exit.do.end7_crit_edge:                ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv4 = and i32 %call1.i, 255
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name, ptr noundef nonnull @.str.107, i32 noundef %conv4) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %ad9389b_wr.exit.do.end7_crit_edge
  %and = and i32 %call1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ad9389b_check_monitor_present_status(ptr noundef %sd)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end7.if.end10_crit_edge
  %and12 = and i32 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc zeroext i1 @ad9389b_check_edid_status(ptr noundef %sd)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %5 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %handled, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_check_monitor_present_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %mdt.i = alloca %struct.ad9389b_monitor_detect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ad9389b_update_monitor_present_status(ptr noundef %sd)
  %power_on = getelementptr i8, ptr %sd, i32 416
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not31 = icmp eq i8 %1, 0
  br i1 %tobool.not31, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name11 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %have_monitor.i = getelementptr i8, ptr %sd, i32 417
  %tobool.not.i.i = icmp eq ptr %sd, null
  %v4l2_dev.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %edid_handler = getelementptr i8, ptr %sd, i32 2640
  %edid = getelementptr i8, ptr %sd, i32 576
  br label %land.rhs

land.rhs:                                         ; preds = %ad9389b_notify_monitor_detect.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %retry.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %ad9389b_notify_monitor_detect.exit.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #7
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %retry.032, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retry.032)
  %exitcond = icmp eq i32 %retry.032, 5
  br i1 %exitcond, label %do.end, label %do.body4

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name11, i32 noundef 6) #10
  br label %cleanup

do.body4:                                         ; preds = %while.body
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %do.end9, label %do.body4.do.end16_crit_edge

do.body4.do.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name11, ptr noundef nonnull @.str.109, i32 noundef %inc) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end9, %do.body4.do.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i) #7
  %5 = ptrtoint ptr %have_monitor.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_monitor.i, align 1, !range !361
  %7 = zext i8 %6 to i32
  %8 = ptrtoint ptr %mdt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mdt.i, align 4
  br i1 %tobool.not.i.i, label %do.end16.ad9389b_notify_monitor_detect.exit_crit_edge, label %land.lhs.true.i.i

do.end16.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

land.lhs.true.i.i:                                ; preds = %do.end16
  %9 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %notify.i.i = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %notify.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %12(ptr noundef nonnull %sd, i32 noundef 0, ptr noundef nonnull %mdt.i) #7
  br label %ad9389b_notify_monitor_detect.exit

ad9389b_notify_monitor_detect.exit:               ; preds = %if.then.i.i, %land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, %land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, %do.end16.ad9389b_notify_monitor_detect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #7
  %call17 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %edid_handler) #7
  %13 = call ptr @memset(ptr %edid, i32 0, i32 2060)
  %call18 = call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 0)
  call fastcc void @ad9389b_update_monitor_present_status(ptr noundef %sd)
  %14 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power_on, align 4, !range !361
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %ad9389b_notify_monitor_detect.exit.cleanup_crit_edge, label %ad9389b_notify_monitor_detect.exit.land.rhs_crit_edge

ad9389b_notify_monitor_detect.exit.land.rhs_crit_edge: ; preds = %ad9389b_notify_monitor_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

ad9389b_notify_monitor_detect.exit.cleanup_crit_edge: ; preds = %ad9389b_notify_monitor_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %ad9389b_notify_monitor_detect.exit.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ad9389b_check_edid_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %b.i = alloca [128 x i8], align 1
  %ed = alloca %struct.ad9389b_edid_detect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ed) #7
  %0 = ptrtoint ptr %ed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ed, align 4, !annotation !362
  %1 = getelementptr inbounds %struct.ad9389b_edid_detect, ptr %ed, i32 0, i32 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -59) #7
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %read_retries = getelementptr i8, ptr %sd, i32 2632
  %5 = ptrtoint ptr %read_retries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_retries, align 4
  %sub = sub i32 8, %6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name, ptr noundef nonnull @.str.133, i32 noundef %sub) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %and = and i32 %call1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i167 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i167)
  %cmp11 = icmp sgt i32 %call1.i167, 7
  br i1 %cmp11, label %do.end16, label %do.body22

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %name18 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name18) #10
  br label %cleanup

do.body22:                                        ; preds = %if.end9
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23 = icmp sgt i32 %9, 0
  br i1 %cmp23, label %do.end35, label %do.end35.thread

do.end35.thread:                                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %mul200 = shl i32 %call1.i167, 8
  %arrayidx201 = getelementptr %struct.ad9389b_state, ptr %add.ptr.i, i32 0, i32 15, i32 2, i32 %mul200
  br label %do.end4.i

do.end35:                                         ; preds = %do.body22
  %name30 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name30, ptr noundef nonnull @.str.133, i32 noundef %call1.i167) #10
  %.pr = load i32, ptr @debug, align 4
  %mul = shl i32 %call1.i167, 8
  %arrayidx = getelementptr %struct.ad9389b_state, ptr %add.ptr.i, i32 0, i32 15, i32 2, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 0
  br i1 %cmp.i, label %do.end.i, label %do.end35.do.end4.i_crit_edge

do.end35.do.end4.i_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name30, ptr noundef nonnull @.str.150) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end35.do.end4.i_crit_edge, %do.end35.thread
  %arrayidx204 = phi ptr [ %arrayidx201, %do.end35.thread ], [ %arrayidx, %do.end.i ], [ %arrayidx, %do.end35.do.end4.i_crit_edge ]
  %mul203 = phi i32 [ %mul200, %do.end35.thread ], [ %mul, %do.end.i ], [ %mul, %do.end35.do.end4.i_crit_edge ]
  %edid_i2c_client.i = getelementptr i8, ptr %sd, i32 572
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end4.i
  %i.01.i = phi i32 [ 0, %do.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %edid_i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edid_i2c_client.i, align 4
  %conv7.i = trunc i32 %i.01.i to i8
  %call8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %conv7.i) #7
  %conv9.i = trunc i32 %call8.i to i8
  %arrayidx.i = getelementptr i8, ptr %arrayidx204, i32 %i.01.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %ad9389b_edid_rd.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ad9389b_edid_rd.exit:                             ; preds = %for.body.i
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i168 = icmp slt i32 %13, 2
  br i1 %cmp.i168, label %ad9389b_edid_rd.exit.ad9389b_dbg_dump_edid.exit_crit_edge, label %do.end.i170

ad9389b_edid_rd.exit.ad9389b_dbg_dump_edid.exit_crit_edge: ; preds = %ad9389b_edid_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_dbg_dump_edid.exit

do.end.i170:                                      ; preds = %ad9389b_edid_rd.exit
  %name.i169 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name.i169, i32 noundef %call1.i167) #10
  %add.ptr.i173 = getelementptr inbounds i8, ptr %b.i, i32 6
  %add.ptr.i173.1 = getelementptr inbounds i8, ptr %b.i, i32 12
  %add.ptr.i173.2 = getelementptr inbounds i8, ptr %b.i, i32 18
  %add.ptr.i173.3 = getelementptr inbounds i8, ptr %b.i, i32 24
  %add.ptr.i173.4 = getelementptr inbounds i8, ptr %b.i, i32 30
  %add.ptr.i173.5 = getelementptr inbounds i8, ptr %b.i, i32 36
  %add.ptr.i173.6 = getelementptr inbounds i8, ptr %b.i, i32 42
  %add.ptr.i173.7 = getelementptr inbounds i8, ptr %b.i, i32 48
  %add.ptr.i173.8 = getelementptr inbounds i8, ptr %b.i, i32 54
  %add.ptr.i173.9 = getelementptr inbounds i8, ptr %b.i, i32 60
  %add.ptr.i173.10 = getelementptr inbounds i8, ptr %b.i, i32 66
  %add.ptr.i173.11 = getelementptr inbounds i8, ptr %b.i, i32 72
  %add.ptr.i173.12 = getelementptr inbounds i8, ptr %b.i, i32 78
  %add.ptr.i173.13 = getelementptr inbounds i8, ptr %b.i, i32 84
  %add.ptr.i173.14 = getelementptr inbounds i8, ptr %b.i, i32 90
  %add.ptr.i173.15 = getelementptr inbounds i8, ptr %b.i, i32 96
  br label %for.body.i171

for.body.i171:                                    ; preds = %for.body27.preheader.i.for.body.i171_crit_edge, %do.end.i170
  %i.05.i = phi i32 [ 0, %do.end.i170 ], [ %add.i, %for.body27.preheader.i.for.body.i171_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %b.i) #7
  %14 = call ptr @memset(ptr %b.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.05.i)
  %cmp9.i = icmp eq i32 %i.05.i, 128
  br i1 %cmp9.i, label %do.end16.i, label %for.body.i171.for.body27.preheader.i_crit_edge

for.body.i171.for.body27.preheader.i_crit_edge:   ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27.preheader.i

do.end16.i:                                       ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name.i169) #10
  br label %for.body27.preheader.i

for.body27.preheader.i:                           ; preds = %do.end16.i, %for.body.i171.for.body27.preheader.i_crit_edge
  %arrayidx.i172 = getelementptr i8, ptr %arrayidx204, i32 %i.05.i
  %15 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i172, align 1
  %conv.i = zext i8 %16 to i32
  %call28.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %b.i, ptr noundef nonnull @.str.156, i32 noundef %conv.i) #7
  %inc.i174 = or i32 %i.05.i, 1
  %arrayidx.i172.1 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174
  %17 = ptrtoint ptr %arrayidx.i172.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i172.1, align 1
  %conv.i.1 = zext i8 %18 to i32
  %call28.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173, ptr noundef nonnull @.str.156, i32 noundef %conv.i.1) #7
  %inc.i174.1 = or i32 %i.05.i, 2
  %arrayidx.i172.2 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.1
  %19 = ptrtoint ptr %arrayidx.i172.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i172.2, align 1
  %conv.i.2 = zext i8 %20 to i32
  %call28.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.1, ptr noundef nonnull @.str.156, i32 noundef %conv.i.2) #7
  %inc.i174.2 = or i32 %i.05.i, 3
  %arrayidx.i172.3 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.2
  %21 = ptrtoint ptr %arrayidx.i172.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i172.3, align 1
  %conv.i.3 = zext i8 %22 to i32
  %call28.i.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.2, ptr noundef nonnull @.str.156, i32 noundef %conv.i.3) #7
  %inc.i174.3 = or i32 %i.05.i, 4
  %arrayidx.i172.4 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.3
  %23 = ptrtoint ptr %arrayidx.i172.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i172.4, align 1
  %conv.i.4 = zext i8 %24 to i32
  %call28.i.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.3, ptr noundef nonnull @.str.156, i32 noundef %conv.i.4) #7
  %inc.i174.4 = or i32 %i.05.i, 5
  %arrayidx.i172.5 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.4
  %25 = ptrtoint ptr %arrayidx.i172.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i172.5, align 1
  %conv.i.5 = zext i8 %26 to i32
  %call28.i.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.4, ptr noundef nonnull @.str.156, i32 noundef %conv.i.5) #7
  %inc.i174.5 = or i32 %i.05.i, 6
  %arrayidx.i172.6 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.5
  %27 = ptrtoint ptr %arrayidx.i172.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i172.6, align 1
  %conv.i.6 = zext i8 %28 to i32
  %call28.i.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.5, ptr noundef nonnull @.str.156, i32 noundef %conv.i.6) #7
  %inc.i174.6 = or i32 %i.05.i, 7
  %arrayidx.i172.7 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.6
  %29 = ptrtoint ptr %arrayidx.i172.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i172.7, align 1
  %conv.i.7 = zext i8 %30 to i32
  %call28.i.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.6, ptr noundef nonnull @.str.156, i32 noundef %conv.i.7) #7
  %inc.i174.7 = or i32 %i.05.i, 8
  %arrayidx.i172.8 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.7
  %31 = ptrtoint ptr %arrayidx.i172.8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i172.8, align 1
  %conv.i.8 = zext i8 %32 to i32
  %call28.i.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.7, ptr noundef nonnull @.str.156, i32 noundef %conv.i.8) #7
  %inc.i174.8 = or i32 %i.05.i, 9
  %arrayidx.i172.9 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.8
  %33 = ptrtoint ptr %arrayidx.i172.9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i172.9, align 1
  %conv.i.9 = zext i8 %34 to i32
  %call28.i.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.8, ptr noundef nonnull @.str.156, i32 noundef %conv.i.9) #7
  %inc.i174.9 = or i32 %i.05.i, 10
  %arrayidx.i172.10 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.9
  %35 = ptrtoint ptr %arrayidx.i172.10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i172.10, align 1
  %conv.i.10 = zext i8 %36 to i32
  %call28.i.10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.9, ptr noundef nonnull @.str.156, i32 noundef %conv.i.10) #7
  %inc.i174.10 = or i32 %i.05.i, 11
  %arrayidx.i172.11 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.10
  %37 = ptrtoint ptr %arrayidx.i172.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i172.11, align 1
  %conv.i.11 = zext i8 %38 to i32
  %call28.i.11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.10, ptr noundef nonnull @.str.156, i32 noundef %conv.i.11) #7
  %inc.i174.11 = or i32 %i.05.i, 12
  %arrayidx.i172.12 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.11
  %39 = ptrtoint ptr %arrayidx.i172.12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i172.12, align 1
  %conv.i.12 = zext i8 %40 to i32
  %call28.i.12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.11, ptr noundef nonnull @.str.156, i32 noundef %conv.i.12) #7
  %inc.i174.12 = or i32 %i.05.i, 13
  %arrayidx.i172.13 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.12
  %41 = ptrtoint ptr %arrayidx.i172.13 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i172.13, align 1
  %conv.i.13 = zext i8 %42 to i32
  %call28.i.13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.12, ptr noundef nonnull @.str.156, i32 noundef %conv.i.13) #7
  %inc.i174.13 = or i32 %i.05.i, 14
  %arrayidx.i172.14 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.13
  %43 = ptrtoint ptr %arrayidx.i172.14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i172.14, align 1
  %conv.i.14 = zext i8 %44 to i32
  %call28.i.14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.13, ptr noundef nonnull @.str.156, i32 noundef %conv.i.14) #7
  %inc.i174.14 = or i32 %i.05.i, 15
  %arrayidx.i172.15 = getelementptr i8, ptr %arrayidx204, i32 %inc.i174.14
  %45 = ptrtoint ptr %arrayidx.i172.15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i172.15, align 1
  %conv.i.15 = zext i8 %46 to i32
  %call28.i.15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i173.14, ptr noundef nonnull @.str.156, i32 noundef %conv.i.15) #7
  %add.i = add nuw nsw i32 %i.05.i, 16
  %47 = ptrtoint ptr %add.ptr.i173.15 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %add.ptr.i173.15, align 1
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name.i169, ptr noundef nonnull %b.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %b.i) #7
  %cmp7.i = icmp ult i32 %i.05.i, 240
  br i1 %cmp7.i, label %for.body27.preheader.i.for.body.i171_crit_edge, label %for.body27.preheader.i.ad9389b_dbg_dump_edid.exit_crit_edge

for.body27.preheader.i.ad9389b_dbg_dump_edid.exit_crit_edge: ; preds = %for.body27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_dbg_dump_edid.exit

for.body27.preheader.i.for.body.i171_crit_edge:   ; preds = %for.body27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i171

ad9389b_dbg_dump_edid.exit:                       ; preds = %for.body27.preheader.i.ad9389b_dbg_dump_edid.exit_crit_edge, %ad9389b_edid_rd.exit.ad9389b_dbg_dump_edid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %cmp41 = icmp eq i32 %call1.i167, 0
  br i1 %cmp41, label %if.then43, label %ad9389b_dbg_dump_edid.exit.if.end65_crit_edge

ad9389b_dbg_dump_edid.exit.if.end65_crit_edge:    ; preds = %ad9389b_dbg_dump_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then43:                                        ; preds = %ad9389b_dbg_dump_edid.exit
  %edid36 = getelementptr i8, ptr %sd, i32 576
  %arrayidx46 = getelementptr i8, ptr %sd, i32 710
  %48 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx46, align 2
  %conv47 = zext i8 %49 to i32
  %add = add nuw nsw i32 %conv47, 1
  %50 = ptrtoint ptr %edid36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %edid36, align 4
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp50 = icmp sgt i32 %51, 0
  br i1 %cmp50, label %do.end55, label %if.then43.if.end65_crit_edge

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end55:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %name57 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name57, ptr noundef nonnull @.str.133, i32 noundef %add) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end55, %if.then43.if.end65_crit_edge, %ad9389b_dbg_dump_edid.exit.if.end65_crit_edge
  %edid.i = getelementptr i8, ptr %sd, i32 576
  %52 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %edid.i, align 4
  %data3.i = getelementptr i8, ptr %sd, i32 584
  %arrayidx.i175 = getelementptr i8, ptr %data3.i, i32 %mul203
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end65
  %i.010.i.i = phi i32 [ 0, %if.end65 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sum.09.i.i = phi i32 [ 0, %if.end65 ], [ %phi.cast.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i175, i32 %i.010.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %55 to i32
  %add.i.i = add nuw nsw i32 %sum.09.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %phi.cast.i.i = and i32 %add.i.i, 255
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %edid_block_verify_crc.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

edid_block_verify_crc.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i.i)
  %cmp4.i.i = icmp eq i32 %phi.cast.i.i, 0
  br i1 %cmp4.i.i, label %if.then.i, label %edid_block_verify_crc.exit.i.do.end71_crit_edge

edid_block_verify_crc.exit.i.do.end71_crit_edge:  ; preds = %edid_block_verify_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.then.i:                                        ; preds = %edid_block_verify_crc.exit.i
  %add.i176 = shl i32 %call1.i167, 1
  %mul5.i = add i32 %add.i176, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.i, i32 %53)
  %cmp.not.i = icmp ugt i32 %mul5.i, %53
  br i1 %cmp.not.i, label %if.then.i.lor.lhs.false_crit_edge, label %if.then6.i

if.then.i.lor.lhs.false_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then6.i:                                       ; preds = %if.then.i
  %add8.i = or i32 %mul203, 128
  %arrayidx9.i = getelementptr i8, ptr %data3.i, i32 %add8.i
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %if.then6.i
  %i.010.i18.i = phi i32 [ 0, %if.then6.i ], [ %inc.i23.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %sum.09.i19.i = phi i32 [ 0, %if.then6.i ], [ %phi.cast.i24.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %arrayidx.i20.i = getelementptr i8, ptr %arrayidx9.i, i32 %i.010.i18.i
  %56 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i20.i, align 1
  %conv.i21.i = zext i8 %57 to i32
  %add.i22.i = add nuw nsw i32 %sum.09.i19.i, %conv.i21.i
  %inc.i23.i = add nuw nsw i32 %i.010.i18.i, 1
  %phi.cast.i24.i = and i32 %add.i22.i, 255
  %exitcond.not.i25.i = icmp eq i32 %inc.i23.i, 128
  br i1 %exitcond.not.i25.i, label %edid_verify_crc.exit, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26.i

edid_verify_crc.exit:                             ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i24.i)
  %cmp4.i27.i = icmp eq i32 %phi.cast.i24.i, 0
  br i1 %cmp4.i27.i, label %edid_verify_crc.exit.lor.lhs.false_crit_edge, label %edid_verify_crc.exit.do.end71_crit_edge

edid_verify_crc.exit.do.end71_crit_edge:          ; preds = %edid_verify_crc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

edid_verify_crc.exit.lor.lhs.false_crit_edge:     ; preds = %edid_verify_crc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %edid_verify_crc.exit.lor.lhs.false_crit_edge, %if.then.i.lor.lhs.false_crit_edge
  br i1 %cmp41, label %for.body.preheader.i, label %lor.lhs.false.if.end78_crit_edge

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.body.preheader.i:                             ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %data3.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp4.not.i = icmp eq i8 %59, 0
  br i1 %cmp4.not.i, label %for.cond.i, label %for.body.preheader.i.do.end71_crit_edge

for.body.preheader.i.do.end71_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr i8, ptr %sd, i32 585
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp4.not.1.i = icmp eq i8 %61, -1
  br i1 %cmp4.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end71_crit_edge

for.cond.i.do.end71_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %sd, i32 586
  %62 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp4.not.2.i = icmp eq i8 %63, -1
  br i1 %cmp4.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end71_crit_edge

for.cond.1.i.do.end71_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %sd, i32 587
  %64 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp4.not.3.i = icmp eq i8 %65, -1
  br i1 %cmp4.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end71_crit_edge

for.cond.2.i.do.end71_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr i8, ptr %sd, i32 588
  %66 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp4.not.4.i = icmp eq i8 %67, -1
  br i1 %cmp4.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.end71_crit_edge

for.cond.3.i.do.end71_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr i8, ptr %sd, i32 589
  %68 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp4.not.5.i = icmp eq i8 %69, -1
  br i1 %cmp4.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.end71_crit_edge

for.cond.4.i.do.end71_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr i8, ptr %sd, i32 590
  %70 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp4.not.6.i = icmp eq i8 %71, -1
  br i1 %cmp4.not.6.i, label %edid_verify_header.exit, label %for.cond.5.i.do.end71_crit_edge

for.cond.5.i.do.end71_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

edid_verify_header.exit:                          ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr i8, ptr %sd, i32 591
  %72 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp4.not.7.i = icmp eq i8 %73, 0
  br i1 %cmp4.not.7.i, label %edid_verify_header.exit.if.end78_crit_edge, label %edid_verify_header.exit.do.end71_crit_edge

edid_verify_header.exit.do.end71_crit_edge:       ; preds = %edid_verify_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

edid_verify_header.exit.if.end78_crit_edge:       ; preds = %edid_verify_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end71:                                         ; preds = %edid_verify_header.exit.do.end71_crit_edge, %for.cond.5.i.do.end71_crit_edge, %for.cond.4.i.do.end71_crit_edge, %for.cond.3.i.do.end71_crit_edge, %for.cond.2.i.do.end71_crit_edge, %for.cond.1.i.do.end71_crit_edge, %for.cond.i.do.end71_crit_edge, %for.body.preheader.i.do.end71_crit_edge, %edid_verify_crc.exit.do.end71_crit_edge, %edid_block_verify_crc.exit.i.do.end71_crit_edge
  %name73 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %name73, ptr noundef nonnull @.str.133) #10
  %call76 = call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 0)
  %call77 = call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 1)
  br label %cleanup

if.end78:                                         ; preds = %edid_verify_header.exit.if.end78_crit_edge, %lor.lhs.false.if.end78_crit_edge
  %add79 = add i32 %call1.i167, 1
  %segments = getelementptr i8, ptr %sd, i32 580
  %74 = ptrtoint ptr %segments to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add79, ptr %segments, align 4
  %arrayidx83 = getelementptr i8, ptr %sd, i32 710
  %75 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx83, align 2
  %77 = lshr i8 %76, 1
  %narrow = add nuw i8 %77, 1
  %add85 = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add79, i32 %add85)
  %cmp88 = icmp ult i32 %add79, %add85
  br i1 %cmp88, label %do.body91, label %if.end115

do.body91:                                        ; preds = %if.end78
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp92 = icmp sgt i32 %78, 0
  br i1 %cmp92, label %do.end97, label %do.body91.do.end106_crit_edge

do.body91.do.end106_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %name99 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name99, ptr noundef nonnull @.str.133, i32 noundef %add79) #10
  br label %do.end106

do.end106:                                        ; preds = %do.end97, %do.body91.do.end106_crit_edge
  %79 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i179 = call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i179)
  %cmp2.i = icmp eq i32 %call1.i179, 0
  br i1 %cmp2.i, label %do.end106.ad9389b_wr.exit_crit_edge, label %for.cond.i180

do.end106.ad9389b_wr.exit_crit_edge:              ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i180:                                    ; preds = %do.end106
  %call1.1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i180.ad9389b_wr.exit_crit_edge, label %for.cond.1.i181

for.cond.i180.ad9389b_wr.exit_crit_edge:          ; preds = %for.cond.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i181:                                  ; preds = %for.cond.i180
  %call1.2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext -55, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i181.ad9389b_wr.exit_crit_edge, label %for.cond.2.i183

for.cond.1.i181.ad9389b_wr.exit_crit_edge:        ; preds = %for.cond.1.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i183:                                  ; preds = %for.cond.1.i181
  call void @__sanitizer_cov_trace_pc() #9
  %name.i182 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i182, ptr noundef nonnull @.str.97, i32 noundef 201, i32 noundef 15) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i183, %for.cond.1.i181.ad9389b_wr.exit_crit_edge, %for.cond.i180.ad9389b_wr.exit_crit_edge, %do.end106.ad9389b_wr.exit_crit_edge
  %81 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %segments, align 4
  %conv110 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i185 = call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext -60, i8 noundef zeroext %conv110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185)
  %cmp2.i186 = icmp eq i32 %call1.i185, 0
  br i1 %cmp2.i186, label %ad9389b_wr.exit.ad9389b_wr.exit196_crit_edge, label %for.cond.i189

ad9389b_wr.exit.ad9389b_wr.exit196_crit_edge:     ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit196

for.cond.i189:                                    ; preds = %ad9389b_wr.exit
  %call1.1.i187 = call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext -60, i8 noundef zeroext %conv110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i187)
  %cmp2.1.i188 = icmp eq i32 %call1.1.i187, 0
  br i1 %cmp2.1.i188, label %for.cond.i189.ad9389b_wr.exit196_crit_edge, label %for.cond.1.i192

for.cond.i189.ad9389b_wr.exit196_crit_edge:       ; preds = %for.cond.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit196

for.cond.1.i192:                                  ; preds = %for.cond.i189
  %call1.2.i190 = call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext -60, i8 noundef zeroext %conv110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i190)
  %cmp2.2.i191 = icmp eq i32 %call1.2.i190, 0
  br i1 %cmp2.2.i191, label %for.cond.1.i192.ad9389b_wr.exit196_crit_edge, label %for.cond.2.i195

for.cond.1.i192.ad9389b_wr.exit196_crit_edge:     ; preds = %for.cond.1.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit196

for.cond.2.i195:                                  ; preds = %for.cond.1.i192
  call void @__sanitizer_cov_trace_pc() #9
  %name.i193 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = and i32 %82, 255
  %call4.i194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i193, ptr noundef nonnull @.str.97, i32 noundef 196, i32 noundef %conv3.i) #10
  br label %ad9389b_wr.exit196

ad9389b_wr.exit196:                               ; preds = %for.cond.2.i195, %for.cond.1.i192.ad9389b_wr.exit196_crit_edge, %for.cond.i189.ad9389b_wr.exit196_crit_edge, %ad9389b_wr.exit.ad9389b_wr.exit196_crit_edge
  %read_retries113 = getelementptr i8, ptr %sd, i32 2632
  %85 = ptrtoint ptr %read_retries113 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8, ptr %read_retries113, align 4
  %edid_handler = getelementptr i8, ptr %sd, i32 2640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %86 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %86, ptr noundef %edid_handler, i32 noundef 250) #7
  br label %cleanup

if.end115:                                        ; preds = %if.end78
  %87 = ptrtoint ptr %ed to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %ed, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %1, align 4
  %tobool.not.i197 = icmp eq ptr %sd, null
  br i1 %tobool.not.i197, label %if.end115.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.end115.v4l2_subdev_notify.exit_crit_edge:      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.end115
  %v4l2_dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %89 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %92, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i198

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

if.then.i198:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %92(ptr noundef nonnull %sd, i32 noundef 1, ptr noundef nonnull %ed) #7
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i198, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.end115.v4l2_subdev_notify.exit_crit_edge
  %edid_detect_counter = getelementptr i8, ptr %sd, i32 2636
  %93 = ptrtoint ptr %edid_detect_counter to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %edid_detect_counter, align 4
  %inc = add i32 %94, 1
  store i32 %inc, ptr %edid_detect_counter, align 4
  %have_edid0_ctrl = getelementptr i8, ptr %sd, i32 564
  %95 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %have_edid0_ctrl, align 4
  %97 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool119.not = icmp ne i32 %98, 0
  %cond = zext i1 %tobool119.not to i32
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %102, i32 noundef 0) #7
  %call.i199 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %96, i32 noundef %cond) #7
  %103 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %106) #7
  %107 = ptrtoint ptr %ed to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool122 = icmp ne i32 %108, 0
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_notify.exit, %ad9389b_wr.exit196, %do.end71, %do.end16, %do.end6.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end16 ], [ false, %ad9389b_wr.exit196 ], [ %tobool122, %v4l2_subdev_notify.exit ], [ false, %do.end71 ], [ false, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ed) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_update_monitor_present_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %mdt.i115 = alloca %struct.ad9389b_monitor_detect, align 4
  %mdt.i = alloca %struct.ad9389b_monitor_detect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #7
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = and i32 %call1.i, 64
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv4 = and i32 %call1.i, 255
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.116, ptr @.str.115
  %and7 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.116, ptr @.str.117
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name, ptr noundef nonnull @.str.114, i32 noundef %conv4, ptr noundef nonnull %cond, ptr noundef nonnull %cond9) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %and14.pre-phi = phi i32 [ %.pre, %entry.do.end12_crit_edge ], [ %and, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.pre-phi)
  %tobool15.not = icmp eq i32 %and14.pre-phi, 0
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55 = icmp sgt i32 %3, 0
  br i1 %tobool15.not, label %do.body54, label %do.body17

do.body17:                                        ; preds = %do.end12
  br i1 %cmp55, label %do.end23, label %do.body17.do.end30_crit_edge

do.body17.do.end30_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %name25 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name25, ptr noundef nonnull @.str.114) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end23, %do.body17.do.end30_crit_edge
  %have_monitor = getelementptr i8, ptr %sd, i32 417
  %4 = ptrtoint ptr %have_monitor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %have_monitor, align 1
  %call31 = tail call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp35 = icmp sgt i32 %5, 0
  br i1 %tobool32.not, label %do.body34, label %if.end48

do.body34:                                        ; preds = %do.end30
  br i1 %cmp35, label %do.end40, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %name42 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name42, ptr noundef nonnull @.str.114) #10
  br label %cleanup

if.end48:                                         ; preds = %do.end30
  br i1 %cmp35, label %do.end.i, label %if.end48.do.end4.i_crit_edge

if.end48.do.end4.i_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name.i, ptr noundef nonnull @.str.128) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end48.do.end4.i_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 21) #7
  %8 = trunc i32 %call1.i.i.i to i8
  %9 = and i8 %8, -15
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 21, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %do.end4.i.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.i.i.i

do.end4.i.ad9389b_wr_and_or.exit.i_crit_edge:     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.i.i.i:                                   ; preds = %do.end4.i
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 21, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 21, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i.i = zext i8 %9 to i32
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.97, i32 noundef 21, i32 noundef %conv3.i.i.i) #10
  br label %ad9389b_wr_and_or.exit.i

ad9389b_wr_and_or.exit.i:                         ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, %for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, %do.end4.i.ad9389b_wr_and_or.exit.i_crit_edge
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i21.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 22) #7
  %14 = trunc i32 %call1.i.i21.i to i8
  %15 = and i8 %14, 63
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 22, i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i22.i)
  %cmp2.i.i23.i = icmp eq i32 %call1.i7.i22.i, 0
  br i1 %cmp2.i.i23.i, label %ad9389b_wr_and_or.exit.i.ad9389b_wr_and_or.exit34.i_crit_edge, label %for.cond.i.i26.i

ad9389b_wr_and_or.exit.i.ad9389b_wr_and_or.exit34.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit34.i

for.cond.i.i26.i:                                 ; preds = %ad9389b_wr_and_or.exit.i
  %call1.1.i.i24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 22, i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i24.i)
  %cmp2.1.i.i25.i = icmp eq i32 %call1.1.i.i24.i, 0
  br i1 %cmp2.1.i.i25.i, label %for.cond.i.i26.i.ad9389b_wr_and_or.exit34.i_crit_edge, label %for.cond.1.i.i29.i

for.cond.i.i26.i.ad9389b_wr_and_or.exit34.i_crit_edge: ; preds = %for.cond.i.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit34.i

for.cond.1.i.i29.i:                               ; preds = %for.cond.i.i26.i
  %call1.2.i.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 22, i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i27.i)
  %cmp2.2.i.i28.i = icmp eq i32 %call1.2.i.i27.i, 0
  br i1 %cmp2.2.i.i28.i, label %for.cond.1.i.i29.i.ad9389b_wr_and_or.exit34.i_crit_edge, label %for.cond.2.i.i33.i

for.cond.1.i.i29.i.ad9389b_wr_and_or.exit34.i_crit_edge: ; preds = %for.cond.1.i.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit34.i

for.cond.2.i.i33.i:                               ; preds = %for.cond.1.i.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i30.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i31.i = zext i8 %15 to i32
  %call4.i.i32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i30.i, ptr noundef nonnull @.str.97, i32 noundef 22, i32 noundef %conv3.i.i31.i) #10
  br label %ad9389b_wr_and_or.exit34.i

ad9389b_wr_and_or.exit34.i:                       ; preds = %for.cond.2.i.i33.i, %for.cond.1.i.i29.i.ad9389b_wr_and_or.exit34.i_crit_edge, %for.cond.i.i26.i.ad9389b_wr_and_or.exit34.i_crit_edge, %ad9389b_wr_and_or.exit.i.ad9389b_wr_and_or.exit34.i_crit_edge
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i36.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 23) #7
  %20 = trunc i32 %call1.i.i36.i to i8
  %conv2.i.i = or i8 %20, 6
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i37.i)
  %cmp2.i.i38.i = icmp eq i32 %call1.i7.i37.i, 0
  br i1 %cmp2.i.i38.i, label %ad9389b_wr_and_or.exit34.i.ad9389b_wr_and_or.exit49.i_crit_edge, label %for.cond.i.i41.i

ad9389b_wr_and_or.exit34.i.ad9389b_wr_and_or.exit49.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit49.i

for.cond.i.i41.i:                                 ; preds = %ad9389b_wr_and_or.exit34.i
  %call1.1.i.i39.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i39.i)
  %cmp2.1.i.i40.i = icmp eq i32 %call1.1.i.i39.i, 0
  br i1 %cmp2.1.i.i40.i, label %for.cond.i.i41.i.ad9389b_wr_and_or.exit49.i_crit_edge, label %for.cond.1.i.i44.i

for.cond.i.i41.i.ad9389b_wr_and_or.exit49.i_crit_edge: ; preds = %for.cond.i.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit49.i

for.cond.1.i.i44.i:                               ; preds = %for.cond.i.i41.i
  %call1.2.i.i42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 23, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i42.i)
  %cmp2.2.i.i43.i = icmp eq i32 %call1.2.i.i42.i, 0
  br i1 %cmp2.2.i.i43.i, label %for.cond.1.i.i44.i.ad9389b_wr_and_or.exit49.i_crit_edge, label %for.cond.2.i.i48.i

for.cond.1.i.i44.i.ad9389b_wr_and_or.exit49.i_crit_edge: ; preds = %for.cond.1.i.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit49.i

for.cond.2.i.i48.i:                               ; preds = %for.cond.1.i.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i45.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i46.i = zext i8 %conv2.i.i to i32
  %call4.i.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i45.i, ptr noundef nonnull @.str.97, i32 noundef 23, i32 noundef %conv3.i.i46.i) #10
  br label %ad9389b_wr_and_or.exit49.i

ad9389b_wr_and_or.exit49.i:                       ; preds = %for.cond.2.i.i48.i, %for.cond.1.i.i44.i.ad9389b_wr_and_or.exit49.i_crit_edge, %for.cond.i.i41.i.ad9389b_wr_and_or.exit49.i_crit_edge, %ad9389b_wr_and_or.exit34.i.ad9389b_wr_and_or.exit49.i_crit_edge
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i51.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 69) #7
  %25 = trunc i32 %call1.i.i51.i to i8
  %26 = and i8 %25, -57
  %conv2.i52.i = or i8 %26, 8
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i53.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i53.i)
  %cmp2.i.i54.i = icmp eq i32 %call1.i7.i53.i, 0
  br i1 %cmp2.i.i54.i, label %ad9389b_wr_and_or.exit49.i.ad9389b_wr_and_or.exit65.i_crit_edge, label %for.cond.i.i57.i

ad9389b_wr_and_or.exit49.i.ad9389b_wr_and_or.exit65.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit65.i

for.cond.i.i57.i:                                 ; preds = %ad9389b_wr_and_or.exit49.i
  %call1.1.i.i55.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i55.i)
  %cmp2.1.i.i56.i = icmp eq i32 %call1.1.i.i55.i, 0
  br i1 %cmp2.1.i.i56.i, label %for.cond.i.i57.i.ad9389b_wr_and_or.exit65.i_crit_edge, label %for.cond.1.i.i60.i

for.cond.i.i57.i.ad9389b_wr_and_or.exit65.i_crit_edge: ; preds = %for.cond.i.i57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit65.i

for.cond.1.i.i60.i:                               ; preds = %for.cond.i.i57.i
  %call1.2.i.i58.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i58.i)
  %cmp2.2.i.i59.i = icmp eq i32 %call1.2.i.i58.i, 0
  br i1 %cmp2.2.i.i59.i, label %for.cond.1.i.i60.i.ad9389b_wr_and_or.exit65.i_crit_edge, label %for.cond.2.i.i64.i

for.cond.1.i.i60.i.ad9389b_wr_and_or.exit65.i_crit_edge: ; preds = %for.cond.1.i.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit65.i

for.cond.2.i.i64.i:                               ; preds = %for.cond.1.i.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i61.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i62.i = zext i8 %conv2.i52.i to i32
  %call4.i.i63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i61.i, ptr noundef nonnull @.str.97, i32 noundef 69, i32 noundef %conv3.i.i62.i) #10
  br label %ad9389b_wr_and_or.exit65.i

ad9389b_wr_and_or.exit65.i:                       ; preds = %for.cond.2.i.i64.i, %for.cond.1.i.i60.i.ad9389b_wr_and_or.exit65.i_crit_edge, %for.cond.i.i57.i.ad9389b_wr_and_or.exit65.i_crit_edge, %ad9389b_wr_and_or.exit49.i.ad9389b_wr_and_or.exit65.i_crit_edge
  %29 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i67.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 70) #7
  %31 = trunc i32 %call1.i.i67.i to i8
  %32 = and i8 %31, 63
  %conv2.i68.i = or i8 %32, -128
  %33 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i69.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 70, i8 noundef zeroext %conv2.i68.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i69.i)
  %cmp2.i.i70.i = icmp eq i32 %call1.i7.i69.i, 0
  br i1 %cmp2.i.i70.i, label %ad9389b_wr_and_or.exit65.i.ad9389b_wr_and_or.exit81.i_crit_edge, label %for.cond.i.i73.i

ad9389b_wr_and_or.exit65.i.ad9389b_wr_and_or.exit81.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit81.i

for.cond.i.i73.i:                                 ; preds = %ad9389b_wr_and_or.exit65.i
  %call1.1.i.i71.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 70, i8 noundef zeroext %conv2.i68.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i71.i)
  %cmp2.1.i.i72.i = icmp eq i32 %call1.1.i.i71.i, 0
  br i1 %cmp2.1.i.i72.i, label %for.cond.i.i73.i.ad9389b_wr_and_or.exit81.i_crit_edge, label %for.cond.1.i.i76.i

for.cond.i.i73.i.ad9389b_wr_and_or.exit81.i_crit_edge: ; preds = %for.cond.i.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit81.i

for.cond.1.i.i76.i:                               ; preds = %for.cond.i.i73.i
  %call1.2.i.i74.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 70, i8 noundef zeroext %conv2.i68.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i74.i)
  %cmp2.2.i.i75.i = icmp eq i32 %call1.2.i.i74.i, 0
  br i1 %cmp2.2.i.i75.i, label %for.cond.1.i.i76.i.ad9389b_wr_and_or.exit81.i_crit_edge, label %for.cond.2.i.i80.i

for.cond.1.i.i76.i.ad9389b_wr_and_or.exit81.i_crit_edge: ; preds = %for.cond.1.i.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit81.i

for.cond.2.i.i80.i:                               ; preds = %for.cond.1.i.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i77.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i78.i = zext i8 %conv2.i68.i to i32
  %call4.i.i79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i77.i, ptr noundef nonnull @.str.97, i32 noundef 70, i32 noundef %conv3.i.i78.i) #10
  br label %ad9389b_wr_and_or.exit81.i

ad9389b_wr_and_or.exit81.i:                       ; preds = %for.cond.2.i.i80.i, %for.cond.1.i.i76.i.ad9389b_wr_and_or.exit81.i_crit_edge, %for.cond.i.i73.i.ad9389b_wr_and_or.exit81.i_crit_edge, %ad9389b_wr_and_or.exit65.i.ad9389b_wr_and_or.exit81.i_crit_edge
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 60, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %ad9389b_wr_and_or.exit81.i.ad9389b_wr.exit.i_crit_edge, label %for.cond.i.i

ad9389b_wr_and_or.exit81.i.ad9389b_wr.exit.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.i.i:                                     ; preds = %ad9389b_wr_and_or.exit81.i
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 60, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ad9389b_wr.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ad9389b_wr.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 60, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 60, i32 noundef 0) #10
  br label %ad9389b_wr.exit.i

ad9389b_wr.exit.i:                                ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge, %for.cond.i.i.ad9389b_wr.exit.i_crit_edge, %ad9389b_wr_and_or.exit81.i.ad9389b_wr.exit.i_crit_edge
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i83.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 71, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i)
  %cmp2.i84.i = icmp eq i32 %call1.i83.i, 0
  br i1 %cmp2.i84.i, label %ad9389b_wr.exit.i.ad9389b_wr.exit94.i_crit_edge, label %for.cond.i87.i

ad9389b_wr.exit.i.ad9389b_wr.exit94.i_crit_edge:  ; preds = %ad9389b_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit94.i

for.cond.i87.i:                                   ; preds = %ad9389b_wr.exit.i
  %call1.1.i85.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 71, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i85.i)
  %cmp2.1.i86.i = icmp eq i32 %call1.1.i85.i, 0
  br i1 %cmp2.1.i86.i, label %for.cond.i87.i.ad9389b_wr.exit94.i_crit_edge, label %for.cond.1.i90.i

for.cond.i87.i.ad9389b_wr.exit94.i_crit_edge:     ; preds = %for.cond.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit94.i

for.cond.1.i90.i:                                 ; preds = %for.cond.i87.i
  %call1.2.i88.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 71, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i88.i)
  %cmp2.2.i89.i = icmp eq i32 %call1.2.i88.i, 0
  br i1 %cmp2.2.i89.i, label %for.cond.1.i90.i.ad9389b_wr.exit94.i_crit_edge, label %for.cond.2.i93.i

for.cond.1.i90.i.ad9389b_wr.exit94.i_crit_edge:   ; preds = %for.cond.1.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit94.i

for.cond.2.i93.i:                                 ; preds = %for.cond.1.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i91.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i91.i, ptr noundef nonnull @.str.97, i32 noundef 71, i32 noundef 128) #10
  br label %ad9389b_wr.exit94.i

ad9389b_wr.exit94.i:                              ; preds = %for.cond.2.i93.i, %for.cond.1.i90.i.ad9389b_wr.exit94.i_crit_edge, %for.cond.i87.i.ad9389b_wr.exit94.i_crit_edge, %ad9389b_wr.exit.i.ad9389b_wr.exit94.i_crit_edge
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i96.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext -81) #7
  %41 = trunc i32 %call1.i.i96.i to i8
  %42 = and i8 %41, -17
  %43 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i97.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -81, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i97.i)
  %cmp2.i.i98.i = icmp eq i32 %call1.i7.i97.i, 0
  br i1 %cmp2.i.i98.i, label %ad9389b_wr.exit94.i.ad9389b_wr_and_or.exit109.i_crit_edge, label %for.cond.i.i101.i

ad9389b_wr.exit94.i.ad9389b_wr_and_or.exit109.i_crit_edge: ; preds = %ad9389b_wr.exit94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit109.i

for.cond.i.i101.i:                                ; preds = %ad9389b_wr.exit94.i
  %call1.1.i.i99.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -81, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i99.i)
  %cmp2.1.i.i100.i = icmp eq i32 %call1.1.i.i99.i, 0
  br i1 %cmp2.1.i.i100.i, label %for.cond.i.i101.i.ad9389b_wr_and_or.exit109.i_crit_edge, label %for.cond.1.i.i104.i

for.cond.i.i101.i.ad9389b_wr_and_or.exit109.i_crit_edge: ; preds = %for.cond.i.i101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit109.i

for.cond.1.i.i104.i:                              ; preds = %for.cond.i.i101.i
  %call1.2.i.i102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -81, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i102.i)
  %cmp2.2.i.i103.i = icmp eq i32 %call1.2.i.i102.i, 0
  br i1 %cmp2.2.i.i103.i, label %for.cond.1.i.i104.i.ad9389b_wr_and_or.exit109.i_crit_edge, label %for.cond.2.i.i108.i

for.cond.1.i.i104.i.ad9389b_wr_and_or.exit109.i_crit_edge: ; preds = %for.cond.1.i.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit109.i

for.cond.2.i.i108.i:                              ; preds = %for.cond.1.i.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i105.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i106.i = zext i8 %42 to i32
  %call4.i.i107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i105.i, ptr noundef nonnull @.str.97, i32 noundef 175, i32 noundef %conv3.i.i106.i) #10
  br label %ad9389b_wr_and_or.exit109.i

ad9389b_wr_and_or.exit109.i:                      ; preds = %for.cond.2.i.i108.i, %for.cond.1.i.i104.i.ad9389b_wr_and_or.exit109.i_crit_edge, %for.cond.i.i101.i.ad9389b_wr_and_or.exit109.i_crit_edge, %ad9389b_wr.exit94.i.ad9389b_wr_and_or.exit109.i_crit_edge
  %45 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i111.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %46, i8 noundef zeroext -70) #7
  %47 = trunc i32 %call1.i.i111.i to i8
  %48 = and i8 %47, 31
  %conv2.i112.i = or i8 %48, 96
  %49 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i113.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i112.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i113.i)
  %cmp2.i.i114.i = icmp eq i32 %call1.i7.i113.i, 0
  br i1 %cmp2.i.i114.i, label %ad9389b_wr_and_or.exit109.i.ad9389b_wr_and_or.exit125.i_crit_edge, label %for.cond.i.i117.i

ad9389b_wr_and_or.exit109.i.ad9389b_wr_and_or.exit125.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit125.i

for.cond.i.i117.i:                                ; preds = %ad9389b_wr_and_or.exit109.i
  %call1.1.i.i115.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i112.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i115.i)
  %cmp2.1.i.i116.i = icmp eq i32 %call1.1.i.i115.i, 0
  br i1 %cmp2.1.i.i116.i, label %for.cond.i.i117.i.ad9389b_wr_and_or.exit125.i_crit_edge, label %for.cond.1.i.i120.i

for.cond.i.i117.i.ad9389b_wr_and_or.exit125.i_crit_edge: ; preds = %for.cond.i.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit125.i

for.cond.1.i.i120.i:                              ; preds = %for.cond.i.i117.i
  %call1.2.i.i118.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -70, i8 noundef zeroext %conv2.i112.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i118.i)
  %cmp2.2.i.i119.i = icmp eq i32 %call1.2.i.i118.i, 0
  br i1 %cmp2.2.i.i119.i, label %for.cond.1.i.i120.i.ad9389b_wr_and_or.exit125.i_crit_edge, label %for.cond.2.i.i124.i

for.cond.1.i.i120.i.ad9389b_wr_and_or.exit125.i_crit_edge: ; preds = %for.cond.1.i.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit125.i

for.cond.2.i.i124.i:                              ; preds = %for.cond.1.i.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i121.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i122.i = zext i8 %conv2.i112.i to i32
  %call4.i.i123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i121.i, ptr noundef nonnull @.str.97, i32 noundef 186, i32 noundef %conv3.i.i122.i) #10
  br label %ad9389b_wr_and_or.exit125.i

ad9389b_wr_and_or.exit125.i:                      ; preds = %for.cond.2.i.i124.i, %for.cond.1.i.i120.i.ad9389b_wr_and_or.exit125.i_crit_edge, %for.cond.i.i117.i.ad9389b_wr_and_or.exit125.i_crit_edge, %ad9389b_wr_and_or.exit109.i.ad9389b_wr_and_or.exit125.i_crit_edge
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp sgt i32 %51, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %ad9389b_wr_and_or.exit125.i.ad9389b_setup.exit_crit_edge

ad9389b_wr_and_or.exit125.i.ad9389b_setup.exit_crit_edge: ; preds = %ad9389b_wr_and_or.exit125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_setup.exit

do.end.i.i:                                       ; preds = %ad9389b_wr_and_or.exit125.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i126.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name.i126.i, ptr noundef nonnull @.str.129) #10
  br label %ad9389b_setup.exit

ad9389b_setup.exit:                               ; preds = %do.end.i.i, %ad9389b_wr_and_or.exit125.i.ad9389b_setup.exit_crit_edge
  %call3.i.i = tail call i32 @ad9389b_s_i2s_clock_freq(ptr noundef %sd, i32 noundef 48000) #7
  %call4.i127.i = tail call i32 @ad9389b_s_clock_freq(ptr noundef %sd, i32 noundef 48000) #7
  %call5.i.i = tail call i32 @ad9389b_s_routing(ptr noundef %sd, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %hdl.i = getelementptr i8, ptr %sd, i32 228
  %call7.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #7
  tail call fastcc void @ad9389b_set_IT_content_AVI_InfoFrame(ptr noundef %sd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i) #7
  %52 = ptrtoint ptr %have_monitor to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %have_monitor, align 1, !range !361
  %54 = zext i8 %53 to i32
  %55 = ptrtoint ptr %mdt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mdt.i, align 4
  %tobool.not.i.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i.i, label %ad9389b_setup.exit.ad9389b_notify_monitor_detect.exit_crit_edge, label %land.lhs.true.i.i

ad9389b_setup.exit.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %ad9389b_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

land.lhs.true.i.i:                                ; preds = %ad9389b_setup.exit
  %v4l2_dev.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %56 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %v4l2_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %notify.i.i = getelementptr inbounds %struct.v4l2_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %notify.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %notify.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %59, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %59(ptr noundef nonnull %sd, i32 noundef 0, ptr noundef nonnull %mdt.i) #7
  br label %ad9389b_notify_monitor_detect.exit

ad9389b_notify_monitor_detect.exit:               ; preds = %if.then.i.i, %land.lhs.true2.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, %land.lhs.true.i.i.ad9389b_notify_monitor_detect.exit_crit_edge, %ad9389b_setup.exit.ad9389b_notify_monitor_detect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #7
  %read_retries = getelementptr i8, ptr %sd, i32 2632
  %60 = ptrtoint ptr %read_retries to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %read_retries, align 4
  %edid_handler = getelementptr i8, ptr %sd, i32 2640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %61 = load ptr, ptr @system_wq, align 4
  %call.i.i114 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %edid_handler, i32 noundef 250) #7
  br label %if.end72

do.body54:                                        ; preds = %do.end12
  br i1 %cmp55, label %do.end60, label %do.body54.do.end67_crit_edge

do.body54.do.end67_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %name62 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name62, ptr noundef nonnull @.str.114) #10
  br label %do.end67

do.end67:                                         ; preds = %do.end60, %do.body54.do.end67_crit_edge
  %have_monitor68 = getelementptr i8, ptr %sd, i32 417
  %62 = ptrtoint ptr %have_monitor68 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %have_monitor68, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i115) #7
  %63 = ptrtoint ptr %mdt.i115 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %mdt.i115, align 4
  %tobool.not.i.i117 = icmp eq ptr %sd, null
  br i1 %tobool.not.i.i117, label %do.end67.ad9389b_notify_monitor_detect.exit125_crit_edge, label %land.lhs.true.i.i120

do.end67.ad9389b_notify_monitor_detect.exit125_crit_edge: ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit125

land.lhs.true.i.i120:                             ; preds = %do.end67
  %v4l2_dev.i.i118 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %64 = ptrtoint ptr %v4l2_dev.i.i118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %v4l2_dev.i.i118, align 4
  %tobool1.not.i.i119 = icmp eq ptr %65, null
  br i1 %tobool1.not.i.i119, label %land.lhs.true.i.i120.ad9389b_notify_monitor_detect.exit125_crit_edge, label %land.lhs.true2.i.i123

land.lhs.true.i.i120.ad9389b_notify_monitor_detect.exit125_crit_edge: ; preds = %land.lhs.true.i.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit125

land.lhs.true2.i.i123:                            ; preds = %land.lhs.true.i.i120
  %notify.i.i121 = getelementptr inbounds %struct.v4l2_device, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %notify.i.i121 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %notify.i.i121, align 4
  %tobool4.not.i.i122 = icmp eq ptr %67, null
  br i1 %tobool4.not.i.i122, label %land.lhs.true2.i.i123.ad9389b_notify_monitor_detect.exit125_crit_edge, label %if.then.i.i124

land.lhs.true2.i.i123.ad9389b_notify_monitor_detect.exit125_crit_edge: ; preds = %land.lhs.true2.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_notify_monitor_detect.exit125

if.then.i.i124:                                   ; preds = %land.lhs.true2.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  call void %67(ptr noundef nonnull %sd, i32 noundef 0, ptr noundef nonnull %mdt.i115) #7
  br label %ad9389b_notify_monitor_detect.exit125

ad9389b_notify_monitor_detect.exit125:            ; preds = %if.then.i.i124, %land.lhs.true2.i.i123.ad9389b_notify_monitor_detect.exit125_crit_edge, %land.lhs.true.i.i120.ad9389b_notify_monitor_detect.exit125_crit_edge, %do.end67.ad9389b_notify_monitor_detect.exit125_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i115) #7
  %call69 = call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 0)
  %edid70 = getelementptr i8, ptr %sd, i32 576
  %68 = call ptr @memset(ptr %edid70, i32 0, i32 2060)
  br label %if.end72

if.end72:                                         ; preds = %ad9389b_notify_monitor_detect.exit125, %ad9389b_notify_monitor_detect.exit
  %hotplug_ctrl = getelementptr i8, ptr %sd, i32 556
  %69 = ptrtoint ptr %hotplug_ctrl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hotplug_ctrl, align 4
  %71 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i126 = call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 66) #7
  %and.i = lshr i32 %call1.i.i126, 6
  %and.i.lobit = and i32 %and.i, 1
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %76, i32 noundef 0) #7
  %call.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %70, i32 noundef %and.i.lobit) #7
  %77 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %80) #7
  %rx_sense_ctrl = getelementptr i8, ptr %sd, i32 560
  %81 = ptrtoint ptr %rx_sense_ctrl to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_sense_ctrl, align 4
  %83 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i128 = call i32 @i2c_smbus_read_byte_data(ptr noundef %84, i8 noundef zeroext 66) #7
  %and.i129 = lshr i32 %call1.i.i128, 5
  %and.i129.lobit = and i32 %and.i129, 1
  %handler.i.i131 = getelementptr inbounds %struct.v4l2_ctrl, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %handler.i.i131 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handler.i.i131, align 8
  %lock.i.i132 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %lock.i.i132 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lock.i.i132, align 4
  call void @mutex_lock_nested(ptr noundef %88, i32 noundef 0) #7
  %call.i133 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %82, i32 noundef %and.i129.lobit) #7
  %89 = ptrtoint ptr %handler.i.i131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handler.i.i131, align 8
  %lock.i2.i134 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %lock.i2.i134 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lock.i2.i134, align 4
  call void @mutex_unlock(ptr noundef %92) #7
  %have_edid0_ctrl = getelementptr i8, ptr %sd, i32 564
  %93 = ptrtoint ptr %have_edid0_ctrl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %have_edid0_ctrl, align 4
  %segments = getelementptr i8, ptr %sd, i32 580
  %95 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool82.not = icmp ne i32 %96, 0
  %cond83 = zext i1 %tobool82.not to i32
  %handler.i.i135 = getelementptr inbounds %struct.v4l2_ctrl, ptr %94, i32 0, i32 2
  %97 = ptrtoint ptr %handler.i.i135 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handler.i.i135, align 8
  %lock.i.i136 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %lock.i.i136 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lock.i.i136, align 4
  call void @mutex_lock_nested(ptr noundef %100, i32 noundef 0) #7
  %call.i137 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %94, i32 noundef %cond83) #7
  %101 = ptrtoint ptr %handler.i.i135 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handler.i.i135, align 8
  %lock.i2.i138 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %lock.i2.i138 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lock.i2.i138, align 4
  call void @mutex_unlock(ptr noundef %104) #7
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %sd, i32 568
  %105 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %call85 = call i32 @ad9389b_s_ctrl(ptr noundef %106)
  %hdmi_mode_ctrl = getelementptr i8, ptr %sd, i32 552
  %107 = ptrtoint ptr %hdmi_mode_ctrl to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hdmi_mode_ctrl, align 4
  %call86 = call i32 @ad9389b_s_ctrl(ptr noundef %108)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end40, %do.body34.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_ctrl(ptr noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %1, i32 -112
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name, ptr noundef nonnull @.str.131, i32 noundef %4, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hdmi_mode_ctrl = getelementptr i8, ptr %1, i32 324
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
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -81) #7
  %13 = trunc i32 %call1.i.i to i8
  %14 = and i8 %13, -3
  %conv2.i = or i8 %14, %conv
  %15 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then7.cleanup_crit_edge, label %for.cond.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.then7
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -81, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr i8, ptr %1, i32 -112
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 175, i32 noundef %conv3.i.i) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end5
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %1, i32 340
  %17 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %cmp11 = icmp eq ptr %18, %ctrl
  br i1 %cmp11, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.then13.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.then13.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb2.i
  ]

if.then13.cleanup.sink.split.i_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr i8, ptr %1, i32 258
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags.i, align 2
  %and.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb2.i, %sw.bb.i, %if.then13.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i1 [ false, %sw.bb2.i ], [ %tobool.not.i, %sw.bb.i ], [ true, %if.then13.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @ad9389b_csc_rgb_full2limit(ptr noundef %sd.i, i1 noundef zeroext %.sink.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.i.cleanup_crit_edge ], [ 0, %for.cond.2.i.i ], [ -22, %if.then13.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_set_IT_content_AVI_InfoFrame(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %sd, i32 486
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %flags, align 2
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dev_priv.i.i.i3 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i3, align 4
  %call1.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -51) #7
  %4 = trunc i32 %call1.i.i4 to i8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = and i8 %4, -65
  %6 = ptrtoint ptr %dev_priv.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i3, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -51, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then.if.end_crit_edge, label %for.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.i:                                     ; preds = %if.then
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -51, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -51, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.if.end_crit_edge, label %for.cond.1.i.i.if.end.sink.split_crit_edge

for.cond.1.i.i.if.end.sink.split_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.cond.1.i.i.if.end_crit_edge:                  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %conv2.i = or i8 %4, 64
  %8 = ptrtoint ptr %dev_priv.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i3, align 4
  %call1.i7.i5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i5)
  %cmp2.i.i6 = icmp eq i32 %call1.i7.i5, 0
  br i1 %cmp2.i.i6, label %if.else.if.end_crit_edge, label %for.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.i9:                                    ; preds = %if.else
  %call1.1.i.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i7)
  %cmp2.1.i.i8 = icmp eq i32 %call1.1.i.i7, 0
  br i1 %cmp2.1.i.i8, label %for.cond.i.i9.if.end_crit_edge, label %for.cond.1.i.i12

for.cond.i.i9.if.end_crit_edge:                   ; preds = %for.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i.i12:                                 ; preds = %for.cond.i.i9
  %call1.2.i.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i10)
  %cmp2.2.i.i11 = icmp eq i32 %call1.2.i.i10, 0
  br i1 %cmp2.2.i.i11, label %for.cond.1.i.i12.if.end_crit_edge, label %for.cond.1.i.i12.if.end.sink.split_crit_edge

for.cond.1.i.i12.if.end.sink.split_crit_edge:     ; preds = %for.cond.1.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.cond.1.i.i12.if.end_crit_edge:                ; preds = %for.cond.1.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %for.cond.1.i.i12.if.end.sink.split_crit_edge, %for.cond.1.i.i.if.end.sink.split_crit_edge
  %conv2.i.sink = phi i8 [ %5, %for.cond.1.i.i.if.end.sink.split_crit_edge ], [ %conv2.i, %for.cond.1.i.i12.if.end.sink.split_crit_edge ]
  %name.i.i13 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i14 = zext i8 %conv2.i.sink to i32
  %call4.i.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i13, ptr noundef nonnull @.str.97, i32 noundef 205, i32 noundef %conv3.i.i14) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.cond.1.i.i12.if.end_crit_edge, %for.cond.i.i9.if.end_crit_edge, %if.else.if.end_crit_edge, %for.cond.1.i.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_i2s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.180)
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %i2s_sf.0 = phi i8 [ -32, %sw.bb6 ], [ -64, %sw.bb5 ], [ -96, %sw.bb4 ], [ -128, %sw.bb3 ], [ 32, %sw.bb2 ], [ 0, %sw.bb1 ], [ 48, %entry.sw.epilog_crit_edge ]
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 21) #7
  %3 = trunc i32 %call1.i.i to i8
  %4 = and i8 %3, 15
  %conv2.i = or i8 %4, %i2s_sf.0
  %5 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %sw.epilog.cleanup_crit_edge, label %for.cond.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i:                                     ; preds = %sw.epilog
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 21, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 21, i32 noundef %conv3.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i.i, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.i.cleanup_crit_edge ], [ 0, %for.cond.2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.181)
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %N.0 = phi i32 [ 24576, %sw.bb6 ], [ 25088, %sw.bb5 ], [ 12288, %sw.bb4 ], [ 12544, %sw.bb3 ], [ 6144, %sw.bb2 ], [ 6272, %sw.bb1 ], [ 4096, %entry.sw.epilog_crit_edge ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %sw.epilog.ad9389b_wr.exit_crit_edge, label %for.cond.i

sw.epilog.ad9389b_wr.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %sw.epilog
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef 1, i32 noundef 0) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %sw.epilog.ad9389b_wr.exit_crit_edge
  %shr7 = lshr i32 %N.0, 8
  %conv9 = trunc i32 %shr7 to i8
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %cmp2.i20 = icmp eq i32 %call1.i19, 0
  br i1 %cmp2.i20, label %ad9389b_wr.exit.ad9389b_wr.exit30_crit_edge, label %for.cond.i23

ad9389b_wr.exit.ad9389b_wr.exit30_crit_edge:      ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit30

for.cond.i23:                                     ; preds = %ad9389b_wr.exit
  %call1.1.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i21)
  %cmp2.1.i22 = icmp eq i32 %call1.1.i21, 0
  br i1 %cmp2.1.i22, label %for.cond.i23.ad9389b_wr.exit30_crit_edge, label %for.cond.1.i26

for.cond.i23.ad9389b_wr.exit30_crit_edge:         ; preds = %for.cond.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit30

for.cond.1.i26:                                   ; preds = %for.cond.i23
  %call1.2.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i24)
  %cmp2.2.i25 = icmp eq i32 %call1.2.i24, 0
  br i1 %cmp2.2.i25, label %for.cond.1.i26.ad9389b_wr.exit30_crit_edge, label %for.cond.2.i29

for.cond.1.i26.ad9389b_wr.exit30_crit_edge:       ; preds = %for.cond.1.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit30

for.cond.2.i29:                                   ; preds = %for.cond.1.i26
  call void @__sanitizer_cov_trace_pc() #9
  %name.i27 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i27, ptr noundef nonnull @.str.97, i32 noundef 2, i32 noundef %shr7) #10
  br label %ad9389b_wr.exit30

ad9389b_wr.exit30:                                ; preds = %for.cond.2.i29, %for.cond.1.i26.ad9389b_wr.exit30_crit_edge, %for.cond.i23.ad9389b_wr.exit30_crit_edge, %ad9389b_wr.exit.ad9389b_wr.exit30_crit_edge
  %conv12 = trunc i32 %N.0 to i8
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %cmp2.i33 = icmp eq i32 %call1.i32, 0
  br i1 %cmp2.i33, label %ad9389b_wr.exit30.cleanup_crit_edge, label %for.cond.i36

ad9389b_wr.exit30.cleanup_crit_edge:              ; preds = %ad9389b_wr.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i36:                                     ; preds = %ad9389b_wr.exit30
  %call1.1.i34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i34)
  %cmp2.1.i35 = icmp eq i32 %call1.1.i34, 0
  br i1 %cmp2.1.i35, label %for.cond.i36.cleanup_crit_edge, label %for.cond.1.i39

for.cond.i36.cleanup_crit_edge:                   ; preds = %for.cond.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i39:                                   ; preds = %for.cond.i36
  %call1.2.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i37)
  %cmp2.2.i38 = icmp eq i32 %call1.2.i37, 0
  br i1 %cmp2.2.i38, label %for.cond.1.i39.cleanup_crit_edge, label %for.cond.2.i43

for.cond.1.i39.cleanup_crit_edge:                 ; preds = %for.cond.1.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i43:                                   ; preds = %for.cond.1.i39
  call void @__sanitizer_cov_trace_pc() #9
  %name.i40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i41 = and i32 %N.0, 128
  %call4.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i40, ptr noundef nonnull @.str.97, i32 noundef 3, i32 noundef %conv3.i41) #10
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i43, %for.cond.1.i39.cleanup_crit_edge, %for.cond.i36.cleanup_crit_edge, %ad9389b_wr.exit30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %ad9389b_wr.exit30.cleanup_crit_edge ], [ 0, %for.cond.i36.cleanup_crit_edge ], [ 0, %for.cond.1.i39.cleanup_crit_edge ], [ 0, %for.cond.2.i43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 80) #7
  %2 = trunc i32 %call1.i.i to i8
  %3 = and i8 %2, 31
  %conv2.i = or i8 %3, 32
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %entry.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.i.i

entry.ad9389b_wr_and_or.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.i.i:                                     ; preds = %entry
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 80, i32 noundef %conv3.i.i) #10
  br label %ad9389b_wr_and_or.exit

ad9389b_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge, %for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge, %entry.ad9389b_wr_and_or.exit_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 81, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %ad9389b_wr_and_or.exit.ad9389b_wr.exit_crit_edge, label %for.cond.i

ad9389b_wr_and_or.exit.ad9389b_wr.exit_crit_edge: ; preds = %ad9389b_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.i:                                       ; preds = %ad9389b_wr_and_or.exit
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 81, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ad9389b_wr.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad9389b_wr.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 81, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ad9389b_wr.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad9389b_wr.exit_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef 81, i32 noundef 0) #10
  br label %ad9389b_wr.exit

ad9389b_wr.exit:                                  ; preds = %for.cond.2.i, %for.cond.1.i.ad9389b_wr.exit_crit_edge, %for.cond.i.ad9389b_wr.exit_crit_edge, %ad9389b_wr_and_or.exit.ad9389b_wr.exit_crit_edge
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 20) #7
  %10 = trunc i32 %call1.i.i4 to i8
  %11 = and i8 %10, -16
  %conv2.i5 = or i8 %11, 2
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i6)
  %cmp2.i.i7 = icmp eq i32 %call1.i7.i6, 0
  br i1 %cmp2.i.i7, label %ad9389b_wr.exit.ad9389b_wr_and_or.exit18_crit_edge, label %for.cond.i.i10

ad9389b_wr.exit.ad9389b_wr_and_or.exit18_crit_edge: ; preds = %ad9389b_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit18

for.cond.i.i10:                                   ; preds = %ad9389b_wr.exit
  %call1.1.i.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i8)
  %cmp2.1.i.i9 = icmp eq i32 %call1.1.i.i8, 0
  br i1 %cmp2.1.i.i9, label %for.cond.i.i10.ad9389b_wr_and_or.exit18_crit_edge, label %for.cond.1.i.i13

for.cond.i.i10.ad9389b_wr_and_or.exit18_crit_edge: ; preds = %for.cond.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit18

for.cond.1.i.i13:                                 ; preds = %for.cond.i.i10
  %call1.2.i.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv2.i5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i11)
  %cmp2.2.i.i12 = icmp eq i32 %call1.2.i.i11, 0
  br i1 %cmp2.2.i.i12, label %for.cond.1.i.i13.ad9389b_wr_and_or.exit18_crit_edge, label %for.cond.2.i.i17

for.cond.1.i.i13.ad9389b_wr_and_or.exit18_crit_edge: ; preds = %for.cond.1.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit18

for.cond.2.i.i17:                                 ; preds = %for.cond.1.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i14 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i15 = zext i8 %conv2.i5 to i32
  %call4.i.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i14, ptr noundef nonnull @.str.97, i32 noundef 20, i32 noundef %conv3.i.i15) #10
  br label %ad9389b_wr_and_or.exit18

ad9389b_wr_and_or.exit18:                         ; preds = %for.cond.2.i.i17, %for.cond.1.i.i13.ad9389b_wr_and_or.exit18_crit_edge, %for.cond.i.i10.ad9389b_wr_and_or.exit18_crit_edge, %ad9389b_wr.exit.ad9389b_wr_and_or.exit18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad9389b_csc_rgb_full2limit(ptr noundef %sd, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 23) #7
  %2 = trunc i32 %call1.i.i.i to i8
  %3 = and i8 %2, -25
  %4 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 23, i8 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %if.then.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.i.i.i

if.then.ad9389b_wr_and_or.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.i.i.i:                                   ; preds = %if.then
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 23, i8 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 23, i8 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i.i = zext i8 %3 to i32
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.97, i32 noundef 23, i32 noundef %conv3.i.i.i) #10
  br label %ad9389b_wr_and_or.exit.i

ad9389b_wr_and_or.exit.i:                         ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, %for.cond.i.i.i.ad9389b_wr_and_or.exit.i_crit_edge, %if.then.ad9389b_wr_and_or.exit.i_crit_edge
  %6 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 24) #7
  %8 = trunc i32 %call1.i.i2.i to i8
  %9 = and i8 %8, -97
  %10 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i3.i)
  %cmp2.i.i4.i = icmp eq i32 %call1.i7.i3.i, 0
  br i1 %cmp2.i.i4.i, label %ad9389b_wr_and_or.exit.i.ad9389b_csc_conversion_mode.exit_crit_edge, label %for.cond.i.i7.i

ad9389b_wr_and_or.exit.i.ad9389b_csc_conversion_mode.exit_crit_edge: ; preds = %ad9389b_wr_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_conversion_mode.exit

for.cond.i.i7.i:                                  ; preds = %ad9389b_wr_and_or.exit.i
  %call1.1.i.i5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i5.i)
  %cmp2.1.i.i6.i = icmp eq i32 %call1.1.i.i5.i, 0
  br i1 %cmp2.1.i.i6.i, label %for.cond.i.i7.i.ad9389b_csc_conversion_mode.exit_crit_edge, label %for.cond.1.i.i10.i

for.cond.i.i7.i.ad9389b_csc_conversion_mode.exit_crit_edge: ; preds = %for.cond.i.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_conversion_mode.exit

for.cond.1.i.i10.i:                               ; preds = %for.cond.i.i7.i
  %call1.2.i.i8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 24, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i8.i)
  %cmp2.2.i.i9.i = icmp eq i32 %call1.2.i.i8.i, 0
  br i1 %cmp2.2.i.i9.i, label %for.cond.1.i.i10.i.ad9389b_csc_conversion_mode.exit_crit_edge, label %for.cond.2.i.i14.i

for.cond.1.i.i10.i.ad9389b_csc_conversion_mode.exit_crit_edge: ; preds = %for.cond.1.i.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_conversion_mode.exit

for.cond.2.i.i14.i:                               ; preds = %for.cond.1.i.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i12.i = zext i8 %9 to i32
  %call4.i.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i11.i, ptr noundef nonnull @.str.97, i32 noundef 24, i32 noundef %conv3.i.i12.i) #10
  br label %ad9389b_csc_conversion_mode.exit

ad9389b_csc_conversion_mode.exit:                 ; preds = %for.cond.2.i.i14.i, %for.cond.1.i.i10.i.ad9389b_csc_conversion_mode.exit_crit_edge, %for.cond.i.i7.i.ad9389b_csc_conversion_mode.exit_crit_edge, %ad9389b_wr_and_or.exit.i.ad9389b_csc_conversion_mode.exit_crit_edge
  %12 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i.i7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 24) #7
  %14 = trunc i32 %call1.i.i.i7 to i8
  %15 = and i8 %14, -32
  %conv2.i.i = or i8 %15, 13
  %16 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i8)
  %cmp2.i.i.i9 = icmp eq i32 %call1.i7.i.i8, 0
  br i1 %cmp2.i.i.i9, label %ad9389b_csc_conversion_mode.exit.ad9389b_wr_and_or.exit.i20_crit_edge, label %for.cond.i.i.i12

ad9389b_csc_conversion_mode.exit.ad9389b_wr_and_or.exit.i20_crit_edge: ; preds = %ad9389b_csc_conversion_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i20

for.cond.i.i.i12:                                 ; preds = %ad9389b_csc_conversion_mode.exit
  %call1.1.i.i.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i10)
  %cmp2.1.i.i.i11 = icmp eq i32 %call1.1.i.i.i10, 0
  br i1 %cmp2.1.i.i.i11, label %for.cond.i.i.i12.ad9389b_wr_and_or.exit.i20_crit_edge, label %for.cond.1.i.i.i15

for.cond.i.i.i12.ad9389b_wr_and_or.exit.i20_crit_edge: ; preds = %for.cond.i.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i20

for.cond.1.i.i.i15:                               ; preds = %for.cond.i.i.i12
  %call1.2.i.i.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i13)
  %cmp2.2.i.i.i14 = icmp eq i32 %call1.2.i.i.i13, 0
  br i1 %cmp2.2.i.i.i14, label %for.cond.1.i.i.i15.ad9389b_wr_and_or.exit.i20_crit_edge, label %for.cond.2.i.i.i19

for.cond.1.i.i.i15.ad9389b_wr_and_or.exit.i20_crit_edge: ; preds = %for.cond.1.i.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit.i20

for.cond.2.i.i.i19:                               ; preds = %for.cond.1.i.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i.i16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i.i17 = zext i8 %conv2.i.i to i32
  %call4.i.i.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i.i16, ptr noundef nonnull @.str.97, i32 noundef 24, i32 noundef %conv3.i.i.i17) #10
  br label %ad9389b_wr_and_or.exit.i20

ad9389b_wr_and_or.exit.i20:                       ; preds = %for.cond.2.i.i.i19, %for.cond.1.i.i.i15.ad9389b_wr_and_or.exit.i20_crit_edge, %for.cond.i.i.i12.ad9389b_wr_and_or.exit.i20_crit_edge, %ad9389b_csc_conversion_mode.exit.ad9389b_wr_and_or.exit.i20_crit_edge
  %18 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 25, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %ad9389b_wr_and_or.exit.i20.ad9389b_wr.exit.i_crit_edge, label %for.cond.i.i

ad9389b_wr_and_or.exit.i20.ad9389b_wr.exit.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.i.i:                                     ; preds = %ad9389b_wr_and_or.exit.i20
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 25, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ad9389b_wr.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ad9389b_wr.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 25, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 25, i32 noundef 204) #10
  br label %ad9389b_wr.exit.i

ad9389b_wr.exit.i:                                ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ad9389b_wr.exit.i_crit_edge, %for.cond.i.i.ad9389b_wr.exit.i_crit_edge, %ad9389b_wr_and_or.exit.i20.ad9389b_wr.exit.i_crit_edge
  %20 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i2.i21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 26) #7
  %22 = trunc i32 %call1.i.i2.i21 to i8
  %23 = and i8 %22, -32
  %24 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i3.i22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 26, i8 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i3.i22)
  %cmp2.i.i4.i23 = icmp eq i32 %call1.i7.i3.i22, 0
  br i1 %cmp2.i.i4.i23, label %ad9389b_wr.exit.i.ad9389b_wr_and_or.exit15.i_crit_edge, label %for.cond.i.i7.i26

ad9389b_wr.exit.i.ad9389b_wr_and_or.exit15.i_crit_edge: ; preds = %ad9389b_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit15.i

for.cond.i.i7.i26:                                ; preds = %ad9389b_wr.exit.i
  %call1.1.i.i5.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 26, i8 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i5.i24)
  %cmp2.1.i.i6.i25 = icmp eq i32 %call1.1.i.i5.i24, 0
  br i1 %cmp2.1.i.i6.i25, label %for.cond.i.i7.i26.ad9389b_wr_and_or.exit15.i_crit_edge, label %for.cond.1.i.i10.i29

for.cond.i.i7.i26.ad9389b_wr_and_or.exit15.i_crit_edge: ; preds = %for.cond.i.i7.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit15.i

for.cond.1.i.i10.i29:                             ; preds = %for.cond.i.i7.i26
  %call1.2.i.i8.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 26, i8 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i8.i27)
  %cmp2.2.i.i9.i28 = icmp eq i32 %call1.2.i.i8.i27, 0
  br i1 %cmp2.2.i.i9.i28, label %for.cond.1.i.i10.i29.ad9389b_wr_and_or.exit15.i_crit_edge, label %for.cond.2.i.i14.i33

for.cond.1.i.i10.i29.ad9389b_wr_and_or.exit15.i_crit_edge: ; preds = %for.cond.1.i.i10.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit15.i

for.cond.2.i.i14.i33:                             ; preds = %for.cond.1.i.i10.i29
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i11.i30 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i12.i31 = zext i8 %23 to i32
  %call4.i.i13.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i11.i30, ptr noundef nonnull @.str.97, i32 noundef 26, i32 noundef %conv3.i.i12.i31) #10
  br label %ad9389b_wr_and_or.exit15.i

ad9389b_wr_and_or.exit15.i:                       ; preds = %for.cond.2.i.i14.i33, %for.cond.1.i.i10.i29.ad9389b_wr_and_or.exit15.i_crit_edge, %for.cond.i.i7.i26.ad9389b_wr_and_or.exit15.i_crit_edge, %ad9389b_wr.exit.i.ad9389b_wr_and_or.exit15.i_crit_edge
  %26 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i17.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 27, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %cmp2.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %cmp2.i18.i, label %ad9389b_wr_and_or.exit15.i.ad9389b_wr.exit28.i_crit_edge, label %for.cond.i21.i

ad9389b_wr_and_or.exit15.i.ad9389b_wr.exit28.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit28.i

for.cond.i21.i:                                   ; preds = %ad9389b_wr_and_or.exit15.i
  %call1.1.i19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 27, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i19.i)
  %cmp2.1.i20.i = icmp eq i32 %call1.1.i19.i, 0
  br i1 %cmp2.1.i20.i, label %for.cond.i21.i.ad9389b_wr.exit28.i_crit_edge, label %for.cond.1.i24.i

for.cond.i21.i.ad9389b_wr.exit28.i_crit_edge:     ; preds = %for.cond.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit28.i

for.cond.1.i24.i:                                 ; preds = %for.cond.i21.i
  %call1.2.i22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 27, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i22.i)
  %cmp2.2.i23.i = icmp eq i32 %call1.2.i22.i, 0
  br i1 %cmp2.2.i23.i, label %for.cond.1.i24.i.ad9389b_wr.exit28.i_crit_edge, label %for.cond.2.i27.i

for.cond.1.i24.i.ad9389b_wr.exit28.i_crit_edge:   ; preds = %for.cond.1.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit28.i

for.cond.2.i27.i:                                 ; preds = %for.cond.1.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i25.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i25.i, ptr noundef nonnull @.str.97, i32 noundef 27, i32 noundef 0) #10
  br label %ad9389b_wr.exit28.i

ad9389b_wr.exit28.i:                              ; preds = %for.cond.2.i27.i, %for.cond.1.i24.i.ad9389b_wr.exit28.i_crit_edge, %for.cond.i21.i.ad9389b_wr.exit28.i_crit_edge, %ad9389b_wr_and_or.exit15.i.ad9389b_wr.exit28.i_crit_edge
  %28 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i30.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 28) #7
  %30 = trunc i32 %call1.i.i30.i to i8
  %31 = and i8 %30, -32
  %32 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 28, i8 noundef zeroext %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i31.i)
  %cmp2.i.i32.i = icmp eq i32 %call1.i7.i31.i, 0
  br i1 %cmp2.i.i32.i, label %ad9389b_wr.exit28.i.ad9389b_wr_and_or.exit43.i_crit_edge, label %for.cond.i.i35.i

ad9389b_wr.exit28.i.ad9389b_wr_and_or.exit43.i_crit_edge: ; preds = %ad9389b_wr.exit28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit43.i

for.cond.i.i35.i:                                 ; preds = %ad9389b_wr.exit28.i
  %call1.1.i.i33.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 28, i8 noundef zeroext %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i33.i)
  %cmp2.1.i.i34.i = icmp eq i32 %call1.1.i.i33.i, 0
  br i1 %cmp2.1.i.i34.i, label %for.cond.i.i35.i.ad9389b_wr_and_or.exit43.i_crit_edge, label %for.cond.1.i.i38.i

for.cond.i.i35.i.ad9389b_wr_and_or.exit43.i_crit_edge: ; preds = %for.cond.i.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit43.i

for.cond.1.i.i38.i:                               ; preds = %for.cond.i.i35.i
  %call1.2.i.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 28, i8 noundef zeroext %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i36.i)
  %cmp2.2.i.i37.i = icmp eq i32 %call1.2.i.i36.i, 0
  br i1 %cmp2.2.i.i37.i, label %for.cond.1.i.i38.i.ad9389b_wr_and_or.exit43.i_crit_edge, label %for.cond.2.i.i42.i

for.cond.1.i.i38.i.ad9389b_wr_and_or.exit43.i_crit_edge: ; preds = %for.cond.1.i.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit43.i

for.cond.2.i.i42.i:                               ; preds = %for.cond.1.i.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i39.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i40.i = zext i8 %31 to i32
  %call4.i.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i39.i, ptr noundef nonnull @.str.97, i32 noundef 28, i32 noundef %conv3.i.i40.i) #10
  br label %ad9389b_wr_and_or.exit43.i

ad9389b_wr_and_or.exit43.i:                       ; preds = %for.cond.2.i.i42.i, %for.cond.1.i.i38.i.ad9389b_wr_and_or.exit43.i_crit_edge, %for.cond.i.i35.i.ad9389b_wr_and_or.exit43.i_crit_edge, %ad9389b_wr.exit28.i.ad9389b_wr_and_or.exit43.i_crit_edge
  %34 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i45.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 29, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %cmp2.i46.i = icmp eq i32 %call1.i45.i, 0
  br i1 %cmp2.i46.i, label %ad9389b_wr_and_or.exit43.i.ad9389b_wr.exit56.i_crit_edge, label %for.cond.i49.i

ad9389b_wr_and_or.exit43.i.ad9389b_wr.exit56.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit56.i

for.cond.i49.i:                                   ; preds = %ad9389b_wr_and_or.exit43.i
  %call1.1.i47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 29, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i47.i)
  %cmp2.1.i48.i = icmp eq i32 %call1.1.i47.i, 0
  br i1 %cmp2.1.i48.i, label %for.cond.i49.i.ad9389b_wr.exit56.i_crit_edge, label %for.cond.1.i52.i

for.cond.i49.i.ad9389b_wr.exit56.i_crit_edge:     ; preds = %for.cond.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit56.i

for.cond.1.i52.i:                                 ; preds = %for.cond.i49.i
  %call1.2.i50.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 29, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i50.i)
  %cmp2.2.i51.i = icmp eq i32 %call1.2.i50.i, 0
  br i1 %cmp2.2.i51.i, label %for.cond.1.i52.i.ad9389b_wr.exit56.i_crit_edge, label %for.cond.2.i55.i

for.cond.1.i52.i.ad9389b_wr.exit56.i_crit_edge:   ; preds = %for.cond.1.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit56.i

for.cond.2.i55.i:                                 ; preds = %for.cond.1.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i53.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i53.i, ptr noundef nonnull @.str.97, i32 noundef 29, i32 noundef 0) #10
  br label %ad9389b_wr.exit56.i

ad9389b_wr.exit56.i:                              ; preds = %for.cond.2.i55.i, %for.cond.1.i52.i.ad9389b_wr.exit56.i_crit_edge, %for.cond.i49.i.ad9389b_wr.exit56.i_crit_edge, %ad9389b_wr_and_or.exit43.i.ad9389b_wr.exit56.i_crit_edge
  %36 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i58.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 30) #7
  %38 = trunc i32 %call1.i.i58.i to i8
  %39 = and i8 %38, -32
  %conv2.i59.i = or i8 %39, 1
  %40 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i60.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i59.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i60.i)
  %cmp2.i.i61.i = icmp eq i32 %call1.i7.i60.i, 0
  br i1 %cmp2.i.i61.i, label %ad9389b_wr.exit56.i.ad9389b_wr_and_or.exit72.i_crit_edge, label %for.cond.i.i64.i

ad9389b_wr.exit56.i.ad9389b_wr_and_or.exit72.i_crit_edge: ; preds = %ad9389b_wr.exit56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit72.i

for.cond.i.i64.i:                                 ; preds = %ad9389b_wr.exit56.i
  %call1.1.i.i62.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i59.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i62.i)
  %cmp2.1.i.i63.i = icmp eq i32 %call1.1.i.i62.i, 0
  br i1 %cmp2.1.i.i63.i, label %for.cond.i.i64.i.ad9389b_wr_and_or.exit72.i_crit_edge, label %for.cond.1.i.i67.i

for.cond.i.i64.i.ad9389b_wr_and_or.exit72.i_crit_edge: ; preds = %for.cond.i.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit72.i

for.cond.1.i.i67.i:                               ; preds = %for.cond.i.i64.i
  %call1.2.i.i65.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 30, i8 noundef zeroext %conv2.i59.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i65.i)
  %cmp2.2.i.i66.i = icmp eq i32 %call1.2.i.i65.i, 0
  br i1 %cmp2.2.i.i66.i, label %for.cond.1.i.i67.i.ad9389b_wr_and_or.exit72.i_crit_edge, label %for.cond.2.i.i71.i

for.cond.1.i.i67.i.ad9389b_wr_and_or.exit72.i_crit_edge: ; preds = %for.cond.1.i.i67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit72.i

for.cond.2.i.i71.i:                               ; preds = %for.cond.1.i.i67.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i68.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i69.i = zext i8 %conv2.i59.i to i32
  %call4.i.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i68.i, ptr noundef nonnull @.str.97, i32 noundef 30, i32 noundef %conv3.i.i69.i) #10
  br label %ad9389b_wr_and_or.exit72.i

ad9389b_wr_and_or.exit72.i:                       ; preds = %for.cond.2.i.i71.i, %for.cond.1.i.i67.i.ad9389b_wr_and_or.exit72.i_crit_edge, %for.cond.i.i64.i.ad9389b_wr_and_or.exit72.i_crit_edge, %ad9389b_wr.exit56.i.ad9389b_wr_and_or.exit72.i_crit_edge
  %42 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i74.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 31, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %cmp2.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %cmp2.i75.i, label %ad9389b_wr_and_or.exit72.i.ad9389b_wr.exit85.i_crit_edge, label %for.cond.i78.i

ad9389b_wr_and_or.exit72.i.ad9389b_wr.exit85.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit85.i

for.cond.i78.i:                                   ; preds = %ad9389b_wr_and_or.exit72.i
  %call1.1.i76.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 31, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i76.i)
  %cmp2.1.i77.i = icmp eq i32 %call1.1.i76.i, 0
  br i1 %cmp2.1.i77.i, label %for.cond.i78.i.ad9389b_wr.exit85.i_crit_edge, label %for.cond.1.i81.i

for.cond.i78.i.ad9389b_wr.exit85.i_crit_edge:     ; preds = %for.cond.i78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit85.i

for.cond.1.i81.i:                                 ; preds = %for.cond.i78.i
  %call1.2.i79.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 31, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i79.i)
  %cmp2.2.i80.i = icmp eq i32 %call1.2.i79.i, 0
  br i1 %cmp2.2.i80.i, label %for.cond.1.i81.i.ad9389b_wr.exit85.i_crit_edge, label %for.cond.2.i84.i

for.cond.1.i81.i.ad9389b_wr.exit85.i_crit_edge:   ; preds = %for.cond.1.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit85.i

for.cond.2.i84.i:                                 ; preds = %for.cond.1.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i82.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i82.i, ptr noundef nonnull @.str.97, i32 noundef 31, i32 noundef 0) #10
  br label %ad9389b_wr.exit85.i

ad9389b_wr.exit85.i:                              ; preds = %for.cond.2.i84.i, %for.cond.1.i81.i.ad9389b_wr.exit85.i_crit_edge, %for.cond.i78.i.ad9389b_wr.exit85.i_crit_edge, %ad9389b_wr_and_or.exit72.i.ad9389b_wr.exit85.i_crit_edge
  %44 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i87.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 32) #7
  %46 = trunc i32 %call1.i.i87.i to i8
  %47 = and i8 %46, -32
  %48 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i88.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 32, i8 noundef zeroext %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i88.i)
  %cmp2.i.i89.i = icmp eq i32 %call1.i7.i88.i, 0
  br i1 %cmp2.i.i89.i, label %ad9389b_wr.exit85.i.ad9389b_wr_and_or.exit100.i_crit_edge, label %for.cond.i.i92.i

ad9389b_wr.exit85.i.ad9389b_wr_and_or.exit100.i_crit_edge: ; preds = %ad9389b_wr.exit85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit100.i

for.cond.i.i92.i:                                 ; preds = %ad9389b_wr.exit85.i
  %call1.1.i.i90.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 32, i8 noundef zeroext %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i90.i)
  %cmp2.1.i.i91.i = icmp eq i32 %call1.1.i.i90.i, 0
  br i1 %cmp2.1.i.i91.i, label %for.cond.i.i92.i.ad9389b_wr_and_or.exit100.i_crit_edge, label %for.cond.1.i.i95.i

for.cond.i.i92.i.ad9389b_wr_and_or.exit100.i_crit_edge: ; preds = %for.cond.i.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit100.i

for.cond.1.i.i95.i:                               ; preds = %for.cond.i.i92.i
  %call1.2.i.i93.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 32, i8 noundef zeroext %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i93.i)
  %cmp2.2.i.i94.i = icmp eq i32 %call1.2.i.i93.i, 0
  br i1 %cmp2.2.i.i94.i, label %for.cond.1.i.i95.i.ad9389b_wr_and_or.exit100.i_crit_edge, label %for.cond.2.i.i99.i

for.cond.1.i.i95.i.ad9389b_wr_and_or.exit100.i_crit_edge: ; preds = %for.cond.1.i.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit100.i

for.cond.2.i.i99.i:                               ; preds = %for.cond.1.i.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i96.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i97.i = zext i8 %47 to i32
  %call4.i.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i96.i, ptr noundef nonnull @.str.97, i32 noundef 32, i32 noundef %conv3.i.i97.i) #10
  br label %ad9389b_wr_and_or.exit100.i

ad9389b_wr_and_or.exit100.i:                      ; preds = %for.cond.2.i.i99.i, %for.cond.1.i.i95.i.ad9389b_wr_and_or.exit100.i_crit_edge, %for.cond.i.i92.i.ad9389b_wr_and_or.exit100.i_crit_edge, %ad9389b_wr.exit85.i.ad9389b_wr_and_or.exit100.i_crit_edge
  %50 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 33, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102.i)
  %cmp2.i103.i = icmp eq i32 %call1.i102.i, 0
  br i1 %cmp2.i103.i, label %ad9389b_wr_and_or.exit100.i.ad9389b_wr.exit113.i_crit_edge, label %for.cond.i106.i

ad9389b_wr_and_or.exit100.i.ad9389b_wr.exit113.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit113.i

for.cond.i106.i:                                  ; preds = %ad9389b_wr_and_or.exit100.i
  %call1.1.i104.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 33, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i104.i)
  %cmp2.1.i105.i = icmp eq i32 %call1.1.i104.i, 0
  br i1 %cmp2.1.i105.i, label %for.cond.i106.i.ad9389b_wr.exit113.i_crit_edge, label %for.cond.1.i109.i

for.cond.i106.i.ad9389b_wr.exit113.i_crit_edge:   ; preds = %for.cond.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit113.i

for.cond.1.i109.i:                                ; preds = %for.cond.i106.i
  %call1.2.i107.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 33, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i107.i)
  %cmp2.2.i108.i = icmp eq i32 %call1.2.i107.i, 0
  br i1 %cmp2.2.i108.i, label %for.cond.1.i109.i.ad9389b_wr.exit113.i_crit_edge, label %for.cond.2.i112.i

for.cond.1.i109.i.ad9389b_wr.exit113.i_crit_edge: ; preds = %for.cond.1.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit113.i

for.cond.2.i112.i:                                ; preds = %for.cond.1.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i110.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i110.i, ptr noundef nonnull @.str.97, i32 noundef 33, i32 noundef 0) #10
  br label %ad9389b_wr.exit113.i

ad9389b_wr.exit113.i:                             ; preds = %for.cond.2.i112.i, %for.cond.1.i109.i.ad9389b_wr.exit113.i_crit_edge, %for.cond.i106.i.ad9389b_wr.exit113.i_crit_edge, %ad9389b_wr_and_or.exit100.i.ad9389b_wr.exit113.i_crit_edge
  %52 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i115.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 34) #7
  %54 = trunc i32 %call1.i.i115.i to i8
  %55 = and i8 %54, -32
  %conv2.i116.i = or i8 %55, 13
  %56 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i117.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i117.i)
  %cmp2.i.i118.i = icmp eq i32 %call1.i7.i117.i, 0
  br i1 %cmp2.i.i118.i, label %ad9389b_wr.exit113.i.ad9389b_wr_and_or.exit129.i_crit_edge, label %for.cond.i.i121.i

ad9389b_wr.exit113.i.ad9389b_wr_and_or.exit129.i_crit_edge: ; preds = %ad9389b_wr.exit113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit129.i

for.cond.i.i121.i:                                ; preds = %ad9389b_wr.exit113.i
  %call1.1.i.i119.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i119.i)
  %cmp2.1.i.i120.i = icmp eq i32 %call1.1.i.i119.i, 0
  br i1 %cmp2.1.i.i120.i, label %for.cond.i.i121.i.ad9389b_wr_and_or.exit129.i_crit_edge, label %for.cond.1.i.i124.i

for.cond.i.i121.i.ad9389b_wr_and_or.exit129.i_crit_edge: ; preds = %for.cond.i.i121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit129.i

for.cond.1.i.i124.i:                              ; preds = %for.cond.i.i121.i
  %call1.2.i.i122.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 34, i8 noundef zeroext %conv2.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i122.i)
  %cmp2.2.i.i123.i = icmp eq i32 %call1.2.i.i122.i, 0
  br i1 %cmp2.2.i.i123.i, label %for.cond.1.i.i124.i.ad9389b_wr_and_or.exit129.i_crit_edge, label %for.cond.2.i.i128.i

for.cond.1.i.i124.i.ad9389b_wr_and_or.exit129.i_crit_edge: ; preds = %for.cond.1.i.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit129.i

for.cond.2.i.i128.i:                              ; preds = %for.cond.1.i.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i125.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i126.i = zext i8 %conv2.i116.i to i32
  %call4.i.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i125.i, ptr noundef nonnull @.str.97, i32 noundef 34, i32 noundef %conv3.i.i126.i) #10
  br label %ad9389b_wr_and_or.exit129.i

ad9389b_wr_and_or.exit129.i:                      ; preds = %for.cond.2.i.i128.i, %for.cond.1.i.i124.i.ad9389b_wr_and_or.exit129.i_crit_edge, %for.cond.i.i121.i.ad9389b_wr_and_or.exit129.i_crit_edge, %ad9389b_wr.exit113.i.ad9389b_wr_and_or.exit129.i_crit_edge
  %58 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i131.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 35, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.i)
  %cmp2.i132.i = icmp eq i32 %call1.i131.i, 0
  br i1 %cmp2.i132.i, label %ad9389b_wr_and_or.exit129.i.ad9389b_wr.exit142.i_crit_edge, label %for.cond.i135.i

ad9389b_wr_and_or.exit129.i.ad9389b_wr.exit142.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit142.i

for.cond.i135.i:                                  ; preds = %ad9389b_wr_and_or.exit129.i
  %call1.1.i133.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 35, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i133.i)
  %cmp2.1.i134.i = icmp eq i32 %call1.1.i133.i, 0
  br i1 %cmp2.1.i134.i, label %for.cond.i135.i.ad9389b_wr.exit142.i_crit_edge, label %for.cond.1.i138.i

for.cond.i135.i.ad9389b_wr.exit142.i_crit_edge:   ; preds = %for.cond.i135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit142.i

for.cond.1.i138.i:                                ; preds = %for.cond.i135.i
  %call1.2.i136.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 35, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i136.i)
  %cmp2.2.i137.i = icmp eq i32 %call1.2.i136.i, 0
  br i1 %cmp2.2.i137.i, label %for.cond.1.i138.i.ad9389b_wr.exit142.i_crit_edge, label %for.cond.2.i141.i

for.cond.1.i138.i.ad9389b_wr.exit142.i_crit_edge: ; preds = %for.cond.1.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit142.i

for.cond.2.i141.i:                                ; preds = %for.cond.1.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i139.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i139.i, ptr noundef nonnull @.str.97, i32 noundef 35, i32 noundef 204) #10
  br label %ad9389b_wr.exit142.i

ad9389b_wr.exit142.i:                             ; preds = %for.cond.2.i141.i, %for.cond.1.i138.i.ad9389b_wr.exit142.i_crit_edge, %for.cond.i135.i.ad9389b_wr.exit142.i_crit_edge, %ad9389b_wr_and_or.exit129.i.ad9389b_wr.exit142.i_crit_edge
  %60 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i144.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 36) #7
  %62 = trunc i32 %call1.i.i144.i to i8
  %63 = and i8 %62, -32
  %64 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i145.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 36, i8 noundef zeroext %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i145.i)
  %cmp2.i.i146.i = icmp eq i32 %call1.i7.i145.i, 0
  br i1 %cmp2.i.i146.i, label %ad9389b_wr.exit142.i.ad9389b_wr_and_or.exit157.i_crit_edge, label %for.cond.i.i149.i

ad9389b_wr.exit142.i.ad9389b_wr_and_or.exit157.i_crit_edge: ; preds = %ad9389b_wr.exit142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit157.i

for.cond.i.i149.i:                                ; preds = %ad9389b_wr.exit142.i
  %call1.1.i.i147.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 36, i8 noundef zeroext %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i147.i)
  %cmp2.1.i.i148.i = icmp eq i32 %call1.1.i.i147.i, 0
  br i1 %cmp2.1.i.i148.i, label %for.cond.i.i149.i.ad9389b_wr_and_or.exit157.i_crit_edge, label %for.cond.1.i.i152.i

for.cond.i.i149.i.ad9389b_wr_and_or.exit157.i_crit_edge: ; preds = %for.cond.i.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit157.i

for.cond.1.i.i152.i:                              ; preds = %for.cond.i.i149.i
  %call1.2.i.i150.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 36, i8 noundef zeroext %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i150.i)
  %cmp2.2.i.i151.i = icmp eq i32 %call1.2.i.i150.i, 0
  br i1 %cmp2.2.i.i151.i, label %for.cond.1.i.i152.i.ad9389b_wr_and_or.exit157.i_crit_edge, label %for.cond.2.i.i156.i

for.cond.1.i.i152.i.ad9389b_wr_and_or.exit157.i_crit_edge: ; preds = %for.cond.1.i.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit157.i

for.cond.2.i.i156.i:                              ; preds = %for.cond.1.i.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i153.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i154.i = zext i8 %63 to i32
  %call4.i.i155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i153.i, ptr noundef nonnull @.str.97, i32 noundef 36, i32 noundef %conv3.i.i154.i) #10
  br label %ad9389b_wr_and_or.exit157.i

ad9389b_wr_and_or.exit157.i:                      ; preds = %for.cond.2.i.i156.i, %for.cond.1.i.i152.i.ad9389b_wr_and_or.exit157.i_crit_edge, %for.cond.i.i149.i.ad9389b_wr_and_or.exit157.i_crit_edge, %ad9389b_wr.exit142.i.ad9389b_wr_and_or.exit157.i_crit_edge
  %66 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i159.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 37, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159.i)
  %cmp2.i160.i = icmp eq i32 %call1.i159.i, 0
  br i1 %cmp2.i160.i, label %ad9389b_wr_and_or.exit157.i.ad9389b_wr.exit170.i_crit_edge, label %for.cond.i163.i

ad9389b_wr_and_or.exit157.i.ad9389b_wr.exit170.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit170.i

for.cond.i163.i:                                  ; preds = %ad9389b_wr_and_or.exit157.i
  %call1.1.i161.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 37, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i161.i)
  %cmp2.1.i162.i = icmp eq i32 %call1.1.i161.i, 0
  br i1 %cmp2.1.i162.i, label %for.cond.i163.i.ad9389b_wr.exit170.i_crit_edge, label %for.cond.1.i166.i

for.cond.i163.i.ad9389b_wr.exit170.i_crit_edge:   ; preds = %for.cond.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit170.i

for.cond.1.i166.i:                                ; preds = %for.cond.i163.i
  %call1.2.i164.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 37, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i164.i)
  %cmp2.2.i165.i = icmp eq i32 %call1.2.i164.i, 0
  br i1 %cmp2.2.i165.i, label %for.cond.1.i166.i.ad9389b_wr.exit170.i_crit_edge, label %for.cond.2.i169.i

for.cond.1.i166.i.ad9389b_wr.exit170.i_crit_edge: ; preds = %for.cond.1.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit170.i

for.cond.2.i169.i:                                ; preds = %for.cond.1.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i167.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i167.i, ptr noundef nonnull @.str.97, i32 noundef 37, i32 noundef 0) #10
  br label %ad9389b_wr.exit170.i

ad9389b_wr.exit170.i:                             ; preds = %for.cond.2.i169.i, %for.cond.1.i166.i.ad9389b_wr.exit170.i_crit_edge, %for.cond.i163.i.ad9389b_wr.exit170.i_crit_edge, %ad9389b_wr_and_or.exit157.i.ad9389b_wr.exit170.i_crit_edge
  %68 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i172.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %69, i8 noundef zeroext 38) #7
  %70 = trunc i32 %call1.i.i172.i to i8
  %71 = and i8 %70, -32
  %conv2.i173.i = or i8 %71, 1
  %72 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i174.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i173.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i174.i)
  %cmp2.i.i175.i = icmp eq i32 %call1.i7.i174.i, 0
  br i1 %cmp2.i.i175.i, label %ad9389b_wr.exit170.i.ad9389b_wr_and_or.exit186.i_crit_edge, label %for.cond.i.i178.i

ad9389b_wr.exit170.i.ad9389b_wr_and_or.exit186.i_crit_edge: ; preds = %ad9389b_wr.exit170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit186.i

for.cond.i.i178.i:                                ; preds = %ad9389b_wr.exit170.i
  %call1.1.i.i176.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i173.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i176.i)
  %cmp2.1.i.i177.i = icmp eq i32 %call1.1.i.i176.i, 0
  br i1 %cmp2.1.i.i177.i, label %for.cond.i.i178.i.ad9389b_wr_and_or.exit186.i_crit_edge, label %for.cond.1.i.i181.i

for.cond.i.i178.i.ad9389b_wr_and_or.exit186.i_crit_edge: ; preds = %for.cond.i.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit186.i

for.cond.1.i.i181.i:                              ; preds = %for.cond.i.i178.i
  %call1.2.i.i179.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 38, i8 noundef zeroext %conv2.i173.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i179.i)
  %cmp2.2.i.i180.i = icmp eq i32 %call1.2.i.i179.i, 0
  br i1 %cmp2.2.i.i180.i, label %for.cond.1.i.i181.i.ad9389b_wr_and_or.exit186.i_crit_edge, label %for.cond.2.i.i185.i

for.cond.1.i.i181.i.ad9389b_wr_and_or.exit186.i_crit_edge: ; preds = %for.cond.1.i.i181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit186.i

for.cond.2.i.i185.i:                              ; preds = %for.cond.1.i.i181.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i182.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i183.i = zext i8 %conv2.i173.i to i32
  %call4.i.i184.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i182.i, ptr noundef nonnull @.str.97, i32 noundef 38, i32 noundef %conv3.i.i183.i) #10
  br label %ad9389b_wr_and_or.exit186.i

ad9389b_wr_and_or.exit186.i:                      ; preds = %for.cond.2.i.i185.i, %for.cond.1.i.i181.i.ad9389b_wr_and_or.exit186.i_crit_edge, %for.cond.i.i178.i.ad9389b_wr_and_or.exit186.i_crit_edge, %ad9389b_wr.exit170.i.ad9389b_wr_and_or.exit186.i_crit_edge
  %74 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i188.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 39, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188.i)
  %cmp2.i189.i = icmp eq i32 %call1.i188.i, 0
  br i1 %cmp2.i189.i, label %ad9389b_wr_and_or.exit186.i.ad9389b_wr.exit199.i_crit_edge, label %for.cond.i192.i

ad9389b_wr_and_or.exit186.i.ad9389b_wr.exit199.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit199.i

for.cond.i192.i:                                  ; preds = %ad9389b_wr_and_or.exit186.i
  %call1.1.i190.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 39, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i190.i)
  %cmp2.1.i191.i = icmp eq i32 %call1.1.i190.i, 0
  br i1 %cmp2.1.i191.i, label %for.cond.i192.i.ad9389b_wr.exit199.i_crit_edge, label %for.cond.1.i195.i

for.cond.i192.i.ad9389b_wr.exit199.i_crit_edge:   ; preds = %for.cond.i192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit199.i

for.cond.1.i195.i:                                ; preds = %for.cond.i192.i
  %call1.2.i193.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 39, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i193.i)
  %cmp2.2.i194.i = icmp eq i32 %call1.2.i193.i, 0
  br i1 %cmp2.2.i194.i, label %for.cond.1.i195.i.ad9389b_wr.exit199.i_crit_edge, label %for.cond.2.i198.i

for.cond.1.i195.i.ad9389b_wr.exit199.i_crit_edge: ; preds = %for.cond.1.i195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit199.i

for.cond.2.i198.i:                                ; preds = %for.cond.1.i195.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i196.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i196.i, ptr noundef nonnull @.str.97, i32 noundef 39, i32 noundef 0) #10
  br label %ad9389b_wr.exit199.i

ad9389b_wr.exit199.i:                             ; preds = %for.cond.2.i198.i, %for.cond.1.i195.i.ad9389b_wr.exit199.i_crit_edge, %for.cond.i192.i.ad9389b_wr.exit199.i_crit_edge, %ad9389b_wr_and_or.exit186.i.ad9389b_wr.exit199.i_crit_edge
  %76 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i201.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %77, i8 noundef zeroext 40) #7
  %78 = trunc i32 %call1.i.i201.i to i8
  %79 = and i8 %78, -32
  %80 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i202.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 40, i8 noundef zeroext %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i202.i)
  %cmp2.i.i203.i = icmp eq i32 %call1.i7.i202.i, 0
  br i1 %cmp2.i.i203.i, label %ad9389b_wr.exit199.i.ad9389b_wr_and_or.exit214.i_crit_edge, label %for.cond.i.i206.i

ad9389b_wr.exit199.i.ad9389b_wr_and_or.exit214.i_crit_edge: ; preds = %ad9389b_wr.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit214.i

for.cond.i.i206.i:                                ; preds = %ad9389b_wr.exit199.i
  %call1.1.i.i204.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 40, i8 noundef zeroext %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i204.i)
  %cmp2.1.i.i205.i = icmp eq i32 %call1.1.i.i204.i, 0
  br i1 %cmp2.1.i.i205.i, label %for.cond.i.i206.i.ad9389b_wr_and_or.exit214.i_crit_edge, label %for.cond.1.i.i209.i

for.cond.i.i206.i.ad9389b_wr_and_or.exit214.i_crit_edge: ; preds = %for.cond.i.i206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit214.i

for.cond.1.i.i209.i:                              ; preds = %for.cond.i.i206.i
  %call1.2.i.i207.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 40, i8 noundef zeroext %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i207.i)
  %cmp2.2.i.i208.i = icmp eq i32 %call1.2.i.i207.i, 0
  br i1 %cmp2.2.i.i208.i, label %for.cond.1.i.i209.i.ad9389b_wr_and_or.exit214.i_crit_edge, label %for.cond.2.i.i213.i

for.cond.1.i.i209.i.ad9389b_wr_and_or.exit214.i_crit_edge: ; preds = %for.cond.1.i.i209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit214.i

for.cond.2.i.i213.i:                              ; preds = %for.cond.1.i.i209.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i210.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i211.i = zext i8 %79 to i32
  %call4.i.i212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i210.i, ptr noundef nonnull @.str.97, i32 noundef 40, i32 noundef %conv3.i.i211.i) #10
  br label %ad9389b_wr_and_or.exit214.i

ad9389b_wr_and_or.exit214.i:                      ; preds = %for.cond.2.i.i213.i, %for.cond.1.i.i209.i.ad9389b_wr_and_or.exit214.i_crit_edge, %for.cond.i.i206.i.ad9389b_wr_and_or.exit214.i_crit_edge, %ad9389b_wr.exit199.i.ad9389b_wr_and_or.exit214.i_crit_edge
  %82 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i216.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 41, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216.i)
  %cmp2.i217.i = icmp eq i32 %call1.i216.i, 0
  br i1 %cmp2.i217.i, label %ad9389b_wr_and_or.exit214.i.ad9389b_wr.exit227.i_crit_edge, label %for.cond.i220.i

ad9389b_wr_and_or.exit214.i.ad9389b_wr.exit227.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit227.i

for.cond.i220.i:                                  ; preds = %ad9389b_wr_and_or.exit214.i
  %call1.1.i218.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 41, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i218.i)
  %cmp2.1.i219.i = icmp eq i32 %call1.1.i218.i, 0
  br i1 %cmp2.1.i219.i, label %for.cond.i220.i.ad9389b_wr.exit227.i_crit_edge, label %for.cond.1.i223.i

for.cond.i220.i.ad9389b_wr.exit227.i_crit_edge:   ; preds = %for.cond.i220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit227.i

for.cond.1.i223.i:                                ; preds = %for.cond.i220.i
  %call1.2.i221.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 41, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i221.i)
  %cmp2.2.i222.i = icmp eq i32 %call1.2.i221.i, 0
  br i1 %cmp2.2.i222.i, label %for.cond.1.i223.i.ad9389b_wr.exit227.i_crit_edge, label %for.cond.2.i226.i

for.cond.1.i223.i.ad9389b_wr.exit227.i_crit_edge: ; preds = %for.cond.1.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit227.i

for.cond.2.i226.i:                                ; preds = %for.cond.1.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i224.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i225.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i224.i, ptr noundef nonnull @.str.97, i32 noundef 41, i32 noundef 0) #10
  br label %ad9389b_wr.exit227.i

ad9389b_wr.exit227.i:                             ; preds = %for.cond.2.i226.i, %for.cond.1.i223.i.ad9389b_wr.exit227.i_crit_edge, %for.cond.i220.i.ad9389b_wr.exit227.i_crit_edge, %ad9389b_wr_and_or.exit214.i.ad9389b_wr.exit227.i_crit_edge
  %84 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i229.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 42) #7
  %86 = trunc i32 %call1.i.i229.i to i8
  %87 = and i8 %86, -32
  %88 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i230.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 42, i8 noundef zeroext %87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i230.i)
  %cmp2.i.i231.i = icmp eq i32 %call1.i7.i230.i, 0
  br i1 %cmp2.i.i231.i, label %ad9389b_wr.exit227.i.ad9389b_wr_and_or.exit242.i_crit_edge, label %for.cond.i.i234.i

ad9389b_wr.exit227.i.ad9389b_wr_and_or.exit242.i_crit_edge: ; preds = %ad9389b_wr.exit227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit242.i

for.cond.i.i234.i:                                ; preds = %ad9389b_wr.exit227.i
  %call1.1.i.i232.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 42, i8 noundef zeroext %87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i232.i)
  %cmp2.1.i.i233.i = icmp eq i32 %call1.1.i.i232.i, 0
  br i1 %cmp2.1.i.i233.i, label %for.cond.i.i234.i.ad9389b_wr_and_or.exit242.i_crit_edge, label %for.cond.1.i.i237.i

for.cond.i.i234.i.ad9389b_wr_and_or.exit242.i_crit_edge: ; preds = %for.cond.i.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit242.i

for.cond.1.i.i237.i:                              ; preds = %for.cond.i.i234.i
  %call1.2.i.i235.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 42, i8 noundef zeroext %87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i235.i)
  %cmp2.2.i.i236.i = icmp eq i32 %call1.2.i.i235.i, 0
  br i1 %cmp2.2.i.i236.i, label %for.cond.1.i.i237.i.ad9389b_wr_and_or.exit242.i_crit_edge, label %for.cond.2.i.i241.i

for.cond.1.i.i237.i.ad9389b_wr_and_or.exit242.i_crit_edge: ; preds = %for.cond.1.i.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit242.i

for.cond.2.i.i241.i:                              ; preds = %for.cond.1.i.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i238.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i239.i = zext i8 %87 to i32
  %call4.i.i240.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i238.i, ptr noundef nonnull @.str.97, i32 noundef 42, i32 noundef %conv3.i.i239.i) #10
  br label %ad9389b_wr_and_or.exit242.i

ad9389b_wr_and_or.exit242.i:                      ; preds = %for.cond.2.i.i241.i, %for.cond.1.i.i237.i.ad9389b_wr_and_or.exit242.i_crit_edge, %for.cond.i.i234.i.ad9389b_wr_and_or.exit242.i_crit_edge, %ad9389b_wr.exit227.i.ad9389b_wr_and_or.exit242.i_crit_edge
  %90 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i244.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 43, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i244.i)
  %cmp2.i245.i = icmp eq i32 %call1.i244.i, 0
  br i1 %cmp2.i245.i, label %ad9389b_wr_and_or.exit242.i.ad9389b_wr.exit255.i_crit_edge, label %for.cond.i248.i

ad9389b_wr_and_or.exit242.i.ad9389b_wr.exit255.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit255.i

for.cond.i248.i:                                  ; preds = %ad9389b_wr_and_or.exit242.i
  %call1.1.i246.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 43, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i246.i)
  %cmp2.1.i247.i = icmp eq i32 %call1.1.i246.i, 0
  br i1 %cmp2.1.i247.i, label %for.cond.i248.i.ad9389b_wr.exit255.i_crit_edge, label %for.cond.1.i251.i

for.cond.i248.i.ad9389b_wr.exit255.i_crit_edge:   ; preds = %for.cond.i248.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit255.i

for.cond.1.i251.i:                                ; preds = %for.cond.i248.i
  %call1.2.i249.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 43, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i249.i)
  %cmp2.2.i250.i = icmp eq i32 %call1.2.i249.i, 0
  br i1 %cmp2.2.i250.i, label %for.cond.1.i251.i.ad9389b_wr.exit255.i_crit_edge, label %for.cond.2.i254.i

for.cond.1.i251.i.ad9389b_wr.exit255.i_crit_edge: ; preds = %for.cond.1.i251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit255.i

for.cond.2.i254.i:                                ; preds = %for.cond.1.i251.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i252.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i253.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i252.i, ptr noundef nonnull @.str.97, i32 noundef 43, i32 noundef 0) #10
  br label %ad9389b_wr.exit255.i

ad9389b_wr.exit255.i:                             ; preds = %for.cond.2.i254.i, %for.cond.1.i251.i.ad9389b_wr.exit255.i_crit_edge, %for.cond.i248.i.ad9389b_wr.exit255.i_crit_edge, %ad9389b_wr_and_or.exit242.i.ad9389b_wr.exit255.i_crit_edge
  %92 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i257.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %93, i8 noundef zeroext 44) #7
  %94 = trunc i32 %call1.i.i257.i to i8
  %95 = and i8 %94, -32
  %conv2.i258.i = or i8 %95, 13
  %96 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i259.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i258.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i259.i)
  %cmp2.i.i260.i = icmp eq i32 %call1.i7.i259.i, 0
  br i1 %cmp2.i.i260.i, label %ad9389b_wr.exit255.i.ad9389b_wr_and_or.exit271.i_crit_edge, label %for.cond.i.i263.i

ad9389b_wr.exit255.i.ad9389b_wr_and_or.exit271.i_crit_edge: ; preds = %ad9389b_wr.exit255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit271.i

for.cond.i.i263.i:                                ; preds = %ad9389b_wr.exit255.i
  %call1.1.i.i261.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i258.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i261.i)
  %cmp2.1.i.i262.i = icmp eq i32 %call1.1.i.i261.i, 0
  br i1 %cmp2.1.i.i262.i, label %for.cond.i.i263.i.ad9389b_wr_and_or.exit271.i_crit_edge, label %for.cond.1.i.i266.i

for.cond.i.i263.i.ad9389b_wr_and_or.exit271.i_crit_edge: ; preds = %for.cond.i.i263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit271.i

for.cond.1.i.i266.i:                              ; preds = %for.cond.i.i263.i
  %call1.2.i.i264.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext 44, i8 noundef zeroext %conv2.i258.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i264.i)
  %cmp2.2.i.i265.i = icmp eq i32 %call1.2.i.i264.i, 0
  br i1 %cmp2.2.i.i265.i, label %for.cond.1.i.i266.i.ad9389b_wr_and_or.exit271.i_crit_edge, label %for.cond.2.i.i270.i

for.cond.1.i.i266.i.ad9389b_wr_and_or.exit271.i_crit_edge: ; preds = %for.cond.1.i.i266.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit271.i

for.cond.2.i.i270.i:                              ; preds = %for.cond.1.i.i266.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i267.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i268.i = zext i8 %conv2.i258.i to i32
  %call4.i.i269.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i267.i, ptr noundef nonnull @.str.97, i32 noundef 44, i32 noundef %conv3.i.i268.i) #10
  br label %ad9389b_wr_and_or.exit271.i

ad9389b_wr_and_or.exit271.i:                      ; preds = %for.cond.2.i.i270.i, %for.cond.1.i.i266.i.ad9389b_wr_and_or.exit271.i_crit_edge, %for.cond.i.i263.i.ad9389b_wr_and_or.exit271.i_crit_edge, %ad9389b_wr.exit255.i.ad9389b_wr_and_or.exit271.i_crit_edge
  %98 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i273.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 45, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i273.i)
  %cmp2.i274.i = icmp eq i32 %call1.i273.i, 0
  br i1 %cmp2.i274.i, label %ad9389b_wr_and_or.exit271.i.ad9389b_wr.exit284.i_crit_edge, label %for.cond.i277.i

ad9389b_wr_and_or.exit271.i.ad9389b_wr.exit284.i_crit_edge: ; preds = %ad9389b_wr_and_or.exit271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit284.i

for.cond.i277.i:                                  ; preds = %ad9389b_wr_and_or.exit271.i
  %call1.1.i275.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 45, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i275.i)
  %cmp2.1.i276.i = icmp eq i32 %call1.1.i275.i, 0
  br i1 %cmp2.1.i276.i, label %for.cond.i277.i.ad9389b_wr.exit284.i_crit_edge, label %for.cond.1.i280.i

for.cond.i277.i.ad9389b_wr.exit284.i_crit_edge:   ; preds = %for.cond.i277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit284.i

for.cond.1.i280.i:                                ; preds = %for.cond.i277.i
  %call1.2.i278.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 45, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i278.i)
  %cmp2.2.i279.i = icmp eq i32 %call1.2.i278.i, 0
  br i1 %cmp2.2.i279.i, label %for.cond.1.i280.i.ad9389b_wr.exit284.i_crit_edge, label %for.cond.2.i283.i

for.cond.1.i280.i.ad9389b_wr.exit284.i_crit_edge: ; preds = %for.cond.1.i280.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr.exit284.i

for.cond.2.i283.i:                                ; preds = %for.cond.1.i280.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i281.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i282.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i281.i, ptr noundef nonnull @.str.97, i32 noundef 45, i32 noundef 204) #10
  br label %ad9389b_wr.exit284.i

ad9389b_wr.exit284.i:                             ; preds = %for.cond.2.i283.i, %for.cond.1.i280.i.ad9389b_wr.exit284.i_crit_edge, %for.cond.i277.i.ad9389b_wr.exit284.i_crit_edge, %ad9389b_wr_and_or.exit271.i.ad9389b_wr.exit284.i_crit_edge
  %100 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i286.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %101, i8 noundef zeroext 46) #7
  %102 = trunc i32 %call1.i.i286.i to i8
  %103 = and i8 %102, -32
  %conv2.i287.i = or i8 %103, 1
  %104 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i288.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %105, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i287.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i288.i)
  %cmp2.i.i289.i = icmp eq i32 %call1.i7.i288.i, 0
  br i1 %cmp2.i.i289.i, label %ad9389b_wr.exit284.i.ad9389b_wr_and_or.exit300.i_crit_edge, label %for.cond.i.i292.i

ad9389b_wr.exit284.i.ad9389b_wr_and_or.exit300.i_crit_edge: ; preds = %ad9389b_wr.exit284.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit300.i

for.cond.i.i292.i:                                ; preds = %ad9389b_wr.exit284.i
  %call1.1.i.i290.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %105, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i287.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i290.i)
  %cmp2.1.i.i291.i = icmp eq i32 %call1.1.i.i290.i, 0
  br i1 %cmp2.1.i.i291.i, label %for.cond.i.i292.i.ad9389b_wr_and_or.exit300.i_crit_edge, label %for.cond.1.i.i295.i

for.cond.i.i292.i.ad9389b_wr_and_or.exit300.i_crit_edge: ; preds = %for.cond.i.i292.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit300.i

for.cond.1.i.i295.i:                              ; preds = %for.cond.i.i292.i
  %call1.2.i.i293.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %105, i8 noundef zeroext 46, i8 noundef zeroext %conv2.i287.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i293.i)
  %cmp2.2.i.i294.i = icmp eq i32 %call1.2.i.i293.i, 0
  br i1 %cmp2.2.i.i294.i, label %for.cond.1.i.i295.i.ad9389b_wr_and_or.exit300.i_crit_edge, label %for.cond.2.i.i299.i

for.cond.1.i.i295.i.ad9389b_wr_and_or.exit300.i_crit_edge: ; preds = %for.cond.1.i.i295.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit300.i

for.cond.2.i.i299.i:                              ; preds = %for.cond.1.i.i295.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i296.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i297.i = zext i8 %conv2.i287.i to i32
  %call4.i.i298.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i296.i, ptr noundef nonnull @.str.97, i32 noundef 46, i32 noundef %conv3.i.i297.i) #10
  br label %ad9389b_wr_and_or.exit300.i

ad9389b_wr_and_or.exit300.i:                      ; preds = %for.cond.2.i.i299.i, %for.cond.1.i.i295.i.ad9389b_wr_and_or.exit300.i_crit_edge, %for.cond.i.i292.i.ad9389b_wr_and_or.exit300.i_crit_edge, %ad9389b_wr.exit284.i.ad9389b_wr_and_or.exit300.i_crit_edge
  %106 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i302.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 47, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i302.i)
  %cmp2.i303.i = icmp eq i32 %call1.i302.i, 0
  br i1 %cmp2.i303.i, label %ad9389b_wr_and_or.exit300.i.ad9389b_csc_coeff.exit_crit_edge, label %for.cond.i306.i

ad9389b_wr_and_or.exit300.i.ad9389b_csc_coeff.exit_crit_edge: ; preds = %ad9389b_wr_and_or.exit300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_coeff.exit

for.cond.i306.i:                                  ; preds = %ad9389b_wr_and_or.exit300.i
  %call1.1.i304.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 47, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i304.i)
  %cmp2.1.i305.i = icmp eq i32 %call1.1.i304.i, 0
  br i1 %cmp2.1.i305.i, label %for.cond.i306.i.ad9389b_csc_coeff.exit_crit_edge, label %for.cond.1.i309.i

for.cond.i306.i.ad9389b_csc_coeff.exit_crit_edge: ; preds = %for.cond.i306.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_coeff.exit

for.cond.1.i309.i:                                ; preds = %for.cond.i306.i
  %call1.2.i307.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 47, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i307.i)
  %cmp2.2.i308.i = icmp eq i32 %call1.2.i307.i, 0
  br i1 %cmp2.2.i308.i, label %for.cond.1.i309.i.ad9389b_csc_coeff.exit_crit_edge, label %for.cond.2.i312.i

for.cond.1.i309.i.ad9389b_csc_coeff.exit_crit_edge: ; preds = %for.cond.1.i309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_csc_coeff.exit

for.cond.2.i312.i:                                ; preds = %for.cond.1.i309.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i310.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i311.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i310.i, ptr noundef nonnull @.str.97, i32 noundef 47, i32 noundef 0) #10
  br label %ad9389b_csc_coeff.exit

ad9389b_csc_coeff.exit:                           ; preds = %for.cond.2.i312.i, %for.cond.1.i309.i.ad9389b_csc_coeff.exit_crit_edge, %for.cond.i306.i.ad9389b_csc_coeff.exit_crit_edge, %ad9389b_wr_and_or.exit300.i.ad9389b_csc_coeff.exit_crit_edge
  %108 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i34 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext 59) #7
  %110 = trunc i32 %call1.i.i34 to i8
  %conv2.i = or i8 %110, 1
  %111 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 59, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i35 = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i35, label %ad9389b_csc_coeff.exit.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.i.i38

ad9389b_csc_coeff.exit.ad9389b_wr_and_or.exit_crit_edge: ; preds = %ad9389b_csc_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.i.i38:                                   ; preds = %ad9389b_csc_coeff.exit
  %call1.1.i.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 59, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i36)
  %cmp2.1.i.i37 = icmp eq i32 %call1.1.i.i36, 0
  br i1 %cmp2.1.i.i37, label %for.cond.i.i38.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.1.i.i41

for.cond.i.i38.ad9389b_wr_and_or.exit_crit_edge:  ; preds = %for.cond.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.1.i.i41:                                 ; preds = %for.cond.i.i38
  %call1.2.i.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 59, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i39)
  %cmp2.2.i.i40 = icmp eq i32 %call1.2.i.i39, 0
  br i1 %cmp2.2.i.i40, label %for.cond.1.i.i41.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.2.i.i44

for.cond.1.i.i41.ad9389b_wr_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.2.i.i44:                                 ; preds = %for.cond.1.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i42 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i42, ptr noundef nonnull @.str.97, i32 noundef 59, i32 noundef %conv3.i.i) #10
  br label %ad9389b_wr_and_or.exit

ad9389b_wr_and_or.exit:                           ; preds = %for.cond.2.i.i44, %for.cond.1.i.i41.ad9389b_wr_and_or.exit_crit_edge, %for.cond.i.i38.ad9389b_wr_and_or.exit_crit_edge, %ad9389b_csc_coeff.exit.ad9389b_wr_and_or.exit_crit_edge
  %113 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %114, i8 noundef zeroext -51) #7
  %115 = trunc i32 %call1.i.i47 to i8
  %116 = and i8 %115, -7
  %conv2.i48 = or i8 %116, 2
  %117 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i49)
  %cmp2.i.i50 = icmp eq i32 %call1.i7.i49, 0
  br i1 %cmp2.i.i50, label %ad9389b_wr_and_or.exit.if.end_crit_edge, label %for.cond.i.i53

ad9389b_wr_and_or.exit.if.end_crit_edge:          ; preds = %ad9389b_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.i53:                                   ; preds = %ad9389b_wr_and_or.exit
  %call1.1.i.i51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i51)
  %cmp2.1.i.i52 = icmp eq i32 %call1.1.i.i51, 0
  br i1 %cmp2.1.i.i52, label %for.cond.i.i53.if.end_crit_edge, label %for.cond.1.i.i56

for.cond.i.i53.if.end_crit_edge:                  ; preds = %for.cond.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i.i56:                                 ; preds = %for.cond.i.i53
  %call1.2.i.i54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i54)
  %cmp2.2.i.i55 = icmp eq i32 %call1.2.i.i54, 0
  br i1 %cmp2.2.i.i55, label %for.cond.1.i.i56.if.end_crit_edge, label %for.cond.1.i.i56.if.end.sink.split_crit_edge

for.cond.1.i.i56.if.end.sink.split_crit_edge:     ; preds = %for.cond.1.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.cond.1.i.i56.if.end_crit_edge:                ; preds = %for.cond.1.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call1.i.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 59) #7
  %119 = trunc i32 %call1.i.i64 to i8
  %120 = and i8 %119, -2
  %121 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %122, i8 noundef zeroext 59, i8 noundef zeroext %120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i65)
  %cmp2.i.i66 = icmp eq i32 %call1.i7.i65, 0
  br i1 %cmp2.i.i66, label %if.else.ad9389b_wr_and_or.exit78_crit_edge, label %for.cond.i.i69

if.else.ad9389b_wr_and_or.exit78_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit78

for.cond.i.i69:                                   ; preds = %if.else
  %call1.1.i.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %122, i8 noundef zeroext 59, i8 noundef zeroext %120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i67)
  %cmp2.1.i.i68 = icmp eq i32 %call1.1.i.i67, 0
  br i1 %cmp2.1.i.i68, label %for.cond.i.i69.ad9389b_wr_and_or.exit78_crit_edge, label %for.cond.1.i.i72

for.cond.i.i69.ad9389b_wr_and_or.exit78_crit_edge: ; preds = %for.cond.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit78

for.cond.1.i.i72:                                 ; preds = %for.cond.i.i69
  %call1.2.i.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %122, i8 noundef zeroext 59, i8 noundef zeroext %120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i70)
  %cmp2.2.i.i71 = icmp eq i32 %call1.2.i.i70, 0
  br i1 %cmp2.2.i.i71, label %for.cond.1.i.i72.ad9389b_wr_and_or.exit78_crit_edge, label %for.cond.2.i.i76

for.cond.1.i.i72.ad9389b_wr_and_or.exit78_crit_edge: ; preds = %for.cond.1.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit78

for.cond.2.i.i76:                                 ; preds = %for.cond.1.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i73 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i74 = zext i8 %120 to i32
  %call4.i.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i73, ptr noundef nonnull @.str.97, i32 noundef 59, i32 noundef %conv3.i.i74) #10
  br label %ad9389b_wr_and_or.exit78

ad9389b_wr_and_or.exit78:                         ; preds = %for.cond.2.i.i76, %for.cond.1.i.i72.ad9389b_wr_and_or.exit78_crit_edge, %for.cond.i.i69.ad9389b_wr_and_or.exit78_crit_edge, %if.else.ad9389b_wr_and_or.exit78_crit_edge
  %123 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %124, i8 noundef zeroext -51) #7
  %125 = trunc i32 %call1.i.i80 to i8
  %126 = and i8 %125, -7
  %conv2.i81 = or i8 %126, 4
  %127 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i82)
  %cmp2.i.i83 = icmp eq i32 %call1.i7.i82, 0
  br i1 %cmp2.i.i83, label %ad9389b_wr_and_or.exit78.if.end_crit_edge, label %for.cond.i.i86

ad9389b_wr_and_or.exit78.if.end_crit_edge:        ; preds = %ad9389b_wr_and_or.exit78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.i86:                                   ; preds = %ad9389b_wr_and_or.exit78
  %call1.1.i.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i84)
  %cmp2.1.i.i85 = icmp eq i32 %call1.1.i.i84, 0
  br i1 %cmp2.1.i.i85, label %for.cond.i.i86.if.end_crit_edge, label %for.cond.1.i.i89

for.cond.i.i86.if.end_crit_edge:                  ; preds = %for.cond.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i.i89:                                 ; preds = %for.cond.i.i86
  %call1.2.i.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext -51, i8 noundef zeroext %conv2.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i87)
  %cmp2.2.i.i88 = icmp eq i32 %call1.2.i.i87, 0
  br i1 %cmp2.2.i.i88, label %for.cond.1.i.i89.if.end_crit_edge, label %for.cond.1.i.i89.if.end.sink.split_crit_edge

for.cond.1.i.i89.if.end.sink.split_crit_edge:     ; preds = %for.cond.1.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.cond.1.i.i89.if.end_crit_edge:                ; preds = %for.cond.1.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %for.cond.1.i.i89.if.end.sink.split_crit_edge, %for.cond.1.i.i56.if.end.sink.split_crit_edge
  %conv2.i81.sink = phi i8 [ %conv2.i48, %for.cond.1.i.i56.if.end.sink.split_crit_edge ], [ %conv2.i81, %for.cond.1.i.i89.if.end.sink.split_crit_edge ]
  %name.i.i90 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i91 = zext i8 %conv2.i81.sink to i32
  %call4.i.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i90, ptr noundef nonnull @.str.97, i32 noundef 205, i32 noundef %conv3.i.i91) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.cond.1.i.i89.if.end_crit_edge, %for.cond.i.i86.if.end_crit_edge, %ad9389b_wr_and_or.exit78.if.end_crit_edge, %for.cond.1.i.i56.if.end_crit_edge, %for.cond.i.i53.if.end_crit_edge, %ad9389b_wr_and_or.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_audio_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.162, ptr @.str.161
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, ptr noundef nonnull @.str.160, ptr noundef nonnull %cond) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %dev_priv.i.i.i9 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 69) #7
  %3 = trunc i32 %call1.i.i10 to i8
  %4 = and i8 %3, 63
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end2
  %conv2.i = or i8 %4, -128
  %5 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.then4.if.end5_crit_edge, label %for.cond.i.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.i.i:                                     ; preds = %if.then4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.if.end5_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end5_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.if.end5_crit_edge, label %for.cond.1.i.i.if.end5.sink.split_crit_edge

for.cond.1.i.i.if.end5.sink.split_crit_edge:      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.sink.split

for.cond.1.i.i.if.end5_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %do.end2
  %conv2.i11 = or i8 %4, 64
  %7 = ptrtoint ptr %dev_priv.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i9, align 4
  %call1.i7.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i12)
  %cmp2.i.i13 = icmp eq i32 %call1.i7.i12, 0
  br i1 %cmp2.i.i13, label %if.else.if.end5_crit_edge, label %for.cond.i.i16

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.i.i16:                                   ; preds = %if.else
  %call1.1.i.i14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i14)
  %cmp2.1.i.i15 = icmp eq i32 %call1.1.i.i14, 0
  br i1 %cmp2.1.i.i15, label %for.cond.i.i16.if.end5_crit_edge, label %for.cond.1.i.i19

for.cond.i.i16.if.end5_crit_edge:                 ; preds = %for.cond.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.1.i.i19:                                 ; preds = %for.cond.i.i16
  %call1.2.i.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 69, i8 noundef zeroext %conv2.i11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i17)
  %cmp2.2.i.i18 = icmp eq i32 %call1.2.i.i17, 0
  br i1 %cmp2.2.i.i18, label %for.cond.1.i.i19.if.end5_crit_edge, label %for.cond.1.i.i19.if.end5.sink.split_crit_edge

for.cond.1.i.i19.if.end5.sink.split_crit_edge:    ; preds = %for.cond.1.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.sink.split

for.cond.1.i.i19.if.end5_crit_edge:               ; preds = %for.cond.1.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5.sink.split:                               ; preds = %for.cond.1.i.i19.if.end5.sink.split_crit_edge, %for.cond.1.i.i.if.end5.sink.split_crit_edge
  %conv2.i11.sink = phi i8 [ %conv2.i, %for.cond.1.i.i.if.end5.sink.split_crit_edge ], [ %conv2.i11, %for.cond.1.i.i19.if.end5.sink.split_crit_edge ]
  %name.i.i20 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i21 = zext i8 %conv2.i11.sink to i32
  %call4.i.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i20, ptr noundef nonnull @.str.97, i32 noundef 69, i32 noundef %conv3.i.i21) #10
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %for.cond.1.i.i19.if.end5_crit_edge, %for.cond.i.i16.if.end5_crit_edge, %if.else.if.end5_crit_edge, %for.cond.1.i.i.if.end5_crit_edge, %for.cond.i.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.162, ptr @.str.161
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, ptr noundef nonnull @.str.163, ptr noundef nonnull %cond) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool3.not, i8 60, i8 0
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -95) #7
  %3 = trunc i32 %call1.i.i to i8
  %4 = and i8 %3, -61
  %conv2.i = or i8 %4, %conv
  %5 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %do.end2.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.i.i

do.end2.ad9389b_wr_and_or.exit_crit_edge:         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.i.i:                                     ; preds = %do.end2
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -95, i8 noundef zeroext %conv2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_wr_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i = zext i8 %conv2.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i, ptr noundef nonnull @.str.97, i32 noundef 161, i32 noundef %conv3.i.i) #10
  br label %ad9389b_wr_and_or.exit

ad9389b_wr_and_or.exit:                           ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ad9389b_wr_and_or.exit_crit_edge, %for.cond.i.i.ad9389b_wr_and_or.exit_crit_edge, %do.end2.ad9389b_wr_and_or.exit_crit_edge
  br i1 %tobool3.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %ad9389b_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ad9389b_check_monitor_present_status(ptr noundef %sd)
  br label %if.end8

if.else:                                          ; preds = %ad9389b_wr_and_or.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @ad9389b_s_power(ptr noundef %sd, i32 noundef 0)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name, ptr noundef nonnull @.str.164) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @ad9389b_timings_cap, ptr noundef null, ptr noundef null) #7
  br i1 %call5, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @ad9389b_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %flags = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %flags, align 1
  %and = and i32 %2, -5
  store i32 %and, ptr %flags, align 1
  %dv_timings = getelementptr i8, ptr %sd, i32 418
  %3 = call ptr @memcpy(ptr %dv_timings, ptr %timings, i32 132)
  %rgb_quantization_range_ctrl = getelementptr i8, ptr %sd, i32 568
  %4 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rgb_quantization_range_ctrl, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %7, label %if.end7.ad9389b_set_rgb_quantization_mode.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end7.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb2.i
  ]

if.end7.cleanup.sink.split.i_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end7.ad9389b_set_rgb_quantization_mode.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9389b_set_rgb_quantization_mode.exit

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr i8, ptr %sd, i32 486
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags.i, align 2
  %and.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb2.i, %sw.bb.i, %if.end7.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i1 [ false, %sw.bb2.i ], [ %tobool.not.i, %sw.bb.i ], [ true, %if.end7.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @ad9389b_csc_rgb_full2limit(ptr noundef %sd, i1 noundef zeroext %.sink.i) #7
  br label %ad9389b_set_rgb_quantization_mode.exit

ad9389b_set_rgb_quantization_mode.exit:           ; preds = %cleanup.sink.split.i, %if.end7.ad9389b_set_rgb_quantization_mode.exit_crit_edge
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp10, label %if.then11, label %ad9389b_set_rgb_quantization_mode.exit.if.end12_crit_edge

ad9389b_set_rgb_quantization_mode.exit.if.end12_crit_edge: ; preds = %ad9389b_set_rgb_quantization_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %ad9389b_set_rgb_quantization_mode.exit
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %pixelclock, align 1
  %conv = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000000, i32 %conv)
  %cmp.i = icmp ugt i32 %conv, 140000000
  br i1 %cmp.i, label %if.then11.if.end12.i_crit_edge, label %if.else.i

if.then11.if.end12.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 117000000, i32 %conv)
  %cmp1.i = icmp ugt i32 %conv, 117000000
  br i1 %cmp1.i, label %if.else.i.if.end12.i_crit_edge, label %if.else3.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %conv)
  %cmp4.i = icmp ugt i32 %conv, 87000000
  br i1 %cmp4.i, label %if.else3.i.if.end12.i_crit_edge, label %if.else6.i

if.else3.i.if.end12.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %conv)
  %cmp7.i = icmp ugt i32 %conv, 60000000
  %..i = select i1 %cmp7.i, i8 -112, i8 -128
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else6.i, %if.else3.i.if.end12.i_crit_edge, %if.else.i.if.end12.i_crit_edge, %if.then11.if.end12.i_crit_edge
  %gear.0.i = phi i8 [ -64, %if.then11.if.end12.i_crit_edge ], [ -80, %if.else.i.if.end12.i_crit_edge ], [ -96, %if.else3.i.if.end12.i_crit_edge ], [ %..i, %if.else6.i ]
  %dev_priv.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext -104) #7
  %17 = trunc i32 %call1.i.i.i to i8
  %18 = and i8 %17, 15
  %conv2.i.i = or i8 %18, %gear.0.i
  %19 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end12.i.if.end12_crit_edge, label %for.cond.i.i.i

if.end12.i.if.end12_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.i.i.i:                                   ; preds = %if.end12.i
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.if.end12_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.if.end12_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -104, i8 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.if.end12_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.if.end12_crit_edge:              ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i.i.i = zext i8 %conv2.i.i to i32
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.97, i32 noundef 152, i32 noundef %conv3.i.i.i) #10
  br label %if.end12

if.end12:                                         ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.if.end12_crit_edge, %for.cond.i.i.i.if.end12_crit_edge, %if.end12.i.if.end12_crit_edge, %ad9389b_set_rgb_quantization_mode.exit.if.end12_crit_edge
  tail call fastcc void @ad9389b_set_IT_content_AVI_InfoFrame(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_g_dv_timings(ptr noundef %sd, ptr noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name, ptr noundef nonnull @.str.165) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool.not = icmp eq ptr %timings, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dv_timings = getelementptr i8, ptr %sd, i32 418
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
define internal i32 @ad9389b_get_edid(ptr noundef %sd, ptr nocapture noundef %edid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks, align 4
  %4 = add i32 %3, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %4)
  %5 = icmp ult i32 %4, -256
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %segments = getelementptr i8, ptr %sd, i32 580
  %6 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end5
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %name) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %9 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_block, align 4
  %mul = shl i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %10)
  %cmp18.not = icmp ugt i32 %mul, %10
  br i1 %cmp18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %add = add i32 %10, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp26.not = icmp ult i32 %add, %mul
  br i1 %cmp26.not, label %if.end20.if.end33_crit_edge, label %if.then27

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %mul, %10
  %11 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %blocks, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end20.if.end33_crit_edge
  %edid34 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %12 = ptrtoint ptr %edid34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid34, align 4
  %mul37 = shl i32 %10, 7
  %arrayidx = getelementptr %struct.ad9389b_state, ptr %add.ptr.i, i32 0, i32 15, i32 2, i32 %mul37
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks, align 4
  %mul39 = shl i32 %15, 7
  %16 = call ptr @memcpy(ptr %13, ptr %arrayidx, i32 %mul39)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %do.end ], [ -61, %do.body.cleanup_crit_edge ], [ -7, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad9389b_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef %cap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memcpy(ptr %cap, ptr @ad9389b_timings_cap, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9389b_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @ad9389b_timings_cap, ptr noundef null, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !285, !287, !288, !290, !292, !294, !295, !296, !297, !298, !299, !301, !303, !304, !305, !307, !308, !309, !311, !313, !314, !315, !317, !319, !320, !321, !322, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350}
!llvm.module.flags = !{!352, !353, !354, !355, !356, !357, !358, !359}
!llvm.ident = !{!360}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ad9389b.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ad9389b.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ad9389b.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ad9389b.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_author296, !10, !"__UNIQUE_ID_author296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ad9389b.c", i32 34, i32 1}
!11 = !{ptr @__UNIQUE_ID_file297, !12, !"__UNIQUE_ID_file297", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/ad9389b.c", i32 35, i32 1}
!13 = !{ptr @__UNIQUE_ID_license298, !12, !"__UNIQUE_ID_license298", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_ad9389b__299_1216_ad9389b_driver_init6, !15, !"__initcall__kmod_ad9389b__299_1216_ad9389b_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ad9389b.c", i32 1216, i32 1}
!16 = !{ptr @__exitcall_ad9389b_driver_exit, !15, !"__exitcall_ad9389b_driver_exit", i1 false, i1 false}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ad9389b.c", i32 28, i32 12}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ad9389b.c", i32 1209, i32 11}
!22 = !{ptr @ad9389b_driver, !23, !"ad9389b_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ad9389b.c", i32 1207, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ad9389b.c", i32 1096, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ad9389b_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ad9389b_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ad9389b.c", i32 1105, i32 3}
!32 = !{ptr @ad9389b_probe._entry.4, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ad9389b_probe._entry_ptr.6, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ad9389b_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ad9389b.c", i32 1115, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ad9389b.c", i32 1144, i32 3}
!39 = !{ptr @ad9389b_probe._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ad9389b_probe._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ad9389b.c", i32 1148, i32 2}
!43 = !{ptr @ad9389b_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ad9389b_probe._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ad9389b.c", i32 1153, i32 3}
!47 = !{ptr @ad9389b_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ad9389b_probe._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ad9389b_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ad9389b.c", i32 1158, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ad9389b_probe.__key.18, !50, !"__key", i1 false, i1 false}
!53 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ad9389b.c", i32 1164, i32 2}
!56 = !{ptr @ad9389b_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ad9389b_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ad9389b_ops, !59, !"ad9389b_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ad9389b.c", i32 777, i32 37}
!60 = !{ptr @ad9389b_core_ops, !61, !"ad9389b_core_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ad9389b.c", i32 551, i32 42}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ad9389b.c", i32 346, i32 3}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ad9389b.c", i32 347, i32 3}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ad9389b.c", i32 348, i32 3}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ad9389b.c", i32 349, i32 3}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ad9389b.c", i32 350, i32 3}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ad9389b.c", i32 351, i32 3}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 3}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 8}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 13}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 18}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 23}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 28}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 33}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 38}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 43}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ad9389b.c", i32 352, i32 48}
!94 = !{ptr @ad9389b_log_status.states, !95, !"states", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ad9389b.c", i32 345, i32 28}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ad9389b.c", i32 355, i32 3}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ad9389b.c", i32 356, i32 3}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ad9389b.c", i32 357, i32 3}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ad9389b.c", i32 358, i32 3}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ad9389b.c", i32 359, i32 3}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ad9389b.c", i32 360, i32 3}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ad9389b.c", i32 361, i32 3}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ad9389b.c", i32 362, i32 3}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/ad9389b.c", i32 363, i32 3}
!114 = !{ptr @ad9389b_log_status.errors, !115, !"errors", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ad9389b.c", i32 354, i32 28}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ad9389b.c", i32 369, i32 2}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ad9389b_log_status._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ad9389b_log_status._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ad9389b.c", i32 370, i32 2}
!123 = !{ptr @ad9389b_log_status._entry.50, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ad9389b_log_status._entry_ptr.52, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ad9389b.c", i32 371, i32 2}
!129 = !{ptr @ad9389b_log_status._entry.55, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ad9389b_log_status._entry_ptr.57, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ad9389b.c", i32 377, i32 2}
!136 = !{ptr @ad9389b_log_status._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ad9389b_log_status._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ad9389b.c", i32 382, i32 2}
!144 = !{ptr @ad9389b_log_status._entry.68, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ad9389b_log_status._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ad9389b.c", i32 384, i32 2}
!150 = !{ptr @ad9389b_log_status._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ad9389b_log_status._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ad9389b.c", i32 390, i32 2}
!154 = !{ptr @ad9389b_log_status._entry.76, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ad9389b_log_status._entry_ptr.78, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/ad9389b.c", i32 392, i32 2}
!160 = !{ptr @ad9389b_log_status._entry.81, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ad9389b_log_status._entry_ptr.83, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/ad9389b.c", i32 418, i32 3}
!166 = !{ptr @ad9389b_log_status._entry.86, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ad9389b_log_status._entry_ptr.88, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/ad9389b.c", i32 421, i32 3}
!170 = !{ptr @ad9389b_log_status._entry.89, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ad9389b_log_status._entry_ptr.91, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/ad9389b.c", i32 425, i32 35}
!174 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/ad9389b.c", i32 428, i32 3}
!176 = !{ptr @ad9389b_log_status._entry.93, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ad9389b_log_status._entry_ptr.95, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/ad9389b.c", i32 128, i32 2}
!180 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ad9389b_wr._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @ad9389b_wr._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/ad9389b.c", i32 440, i32 2}
!185 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ad9389b_s_power._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ad9389b_s_power._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/ad9389b.c", i32 461, i32 3}
!190 = !{ptr @ad9389b_s_power._entry.100, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ad9389b_s_power._entry_ptr.102, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.104, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/ad9389b.c", i32 466, i32 3}
!194 = !{ptr @ad9389b_s_power._entry.103, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ad9389b_s_power._entry_ptr.105, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/ad9389b.c", i32 540, i32 2}
!198 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ad9389b_isr._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @ad9389b_isr._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/ad9389b.c", i32 954, i32 4}
!203 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @ad9389b_check_monitor_present_status._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @ad9389b_check_monitor_present_status._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/ad9389b.c", i32 957, i32 3}
!208 = !{ptr @ad9389b_check_monitor_present_status._entry.110, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ad9389b_check_monitor_present_status._entry_ptr.112, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.113, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/ad9389b.c", i32 905, i32 2}
!212 = !{ptr @.str.114, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ad9389b_update_monitor_present_status._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @ad9389b_update_monitor_present_status._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/ad9389b.c", i32 912, i32 3}
!220 = !{ptr @ad9389b_update_monitor_present_status._entry.118, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @ad9389b_update_monitor_present_status._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/i2c/ad9389b.c", i32 915, i32 4}
!224 = !{ptr @ad9389b_update_monitor_present_status._entry.121, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ad9389b_update_monitor_present_status._entry_ptr.123, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.125, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/ad9389b.c", i32 924, i32 3}
!228 = !{ptr @ad9389b_update_monitor_present_status._entry.124, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @ad9389b_update_monitor_present_status._entry_ptr.126, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/ad9389b.c", i32 861, i32 2}
!232 = !{ptr @.str.128, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ad9389b_setup._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @ad9389b_setup._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/ad9389b.c", i32 847, i32 2}
!237 = !{ptr @ad9389b_audio_setup._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @ad9389b_audio_setup._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/ad9389b.c", i32 305, i32 2}
!241 = !{ptr @.str.131, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ad9389b_s_ctrl._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @ad9389b_s_ctrl._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.132, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/i2c/ad9389b.c", i32 1016, i32 2}
!246 = !{ptr @.str.133, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ad9389b_check_edid_status._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @ad9389b_check_edid_status._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.135, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/ad9389b.c", i32 1024, i32 3}
!251 = !{ptr @ad9389b_check_edid_status._entry.134, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @ad9389b_check_edid_status._entry_ptr.136, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.138, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/ad9389b.c", i32 1027, i32 2}
!255 = !{ptr @ad9389b_check_edid_status._entry.137, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ad9389b_check_edid_status._entry_ptr.139, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.141, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/i2c/ad9389b.c", i32 1033, i32 3}
!259 = !{ptr @ad9389b_check_edid_status._entry.140, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @ad9389b_check_edid_status._entry_ptr.142, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.144, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/ad9389b.c", i32 1039, i32 3}
!263 = !{ptr @ad9389b_check_edid_status._entry.143, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @ad9389b_check_edid_status._entry_ptr.145, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.147, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/i2c/ad9389b.c", i32 1048, i32 3}
!267 = !{ptr @ad9389b_check_edid_status._entry.146, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @ad9389b_check_edid_status._entry_ptr.148, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.149, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/ad9389b.c", i32 145, i32 2}
!271 = !{ptr @.str.150, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @ad9389b_edid_rd._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @ad9389b_edid_rd._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.151, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/i2c/ad9389b.c", i32 793, i32 2}
!276 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @ad9389b_dbg_dump_edid._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @ad9389b_dbg_dump_edid._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.154, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/i2c/ad9389b.c", i32 799, i32 4}
!281 = !{ptr @ad9389b_dbg_dump_edid._entry.153, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @ad9389b_dbg_dump_edid._entry_ptr.155, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/i2c/ad9389b.c", i32 801, i32 16}
!285 = !{ptr @ad9389b_dbg_dump_edid._entry.157, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/ad9389b.c", i32 805, i32 3}
!287 = !{ptr @ad9389b_dbg_dump_edid._entry_ptr.158, !286, !"_entry_ptr", i1 false, i1 false}
!288 = distinct !{null, !289, !"hdmi_header", i1 false, i1 false}
!289 = !{!"../drivers/media/i2c/ad9389b.c", i32 992, i32 18}
!290 = !{ptr @ad9389b_audio_ops, !291, !"ad9389b_audio_ops", i1 false, i1 false}
!291 = !{!"../drivers/media/i2c/ad9389b.c", i32 768, i32 43}
!292 = !{ptr @.str.159, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/i2c/ad9389b.c", i32 695, i32 2}
!294 = !{ptr @.str.160, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @ad9389b_s_audio_stream._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @ad9389b_s_audio_stream._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.161, !293, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.162, !293, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ad9389b_video_ops, !300, !"ad9389b_video_ops", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/ad9389b.c", i32 656, i32 43}
!301 = !{ptr @.str.163, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/i2c/ad9389b.c", i32 566, i32 2}
!303 = !{ptr @ad9389b_s_stream._entry, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @ad9389b_s_stream._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.164, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/i2c/ad9389b.c", i32 593, i32 2}
!307 = !{ptr @ad9389b_s_dv_timings._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @ad9389b_s_dv_timings._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @ad9389b_timings_cap, !310, !"ad9389b_timings_cap", i1 false, i1 false}
!310 = !{!"../drivers/media/i2c/ad9389b.c", i32 577, i32 41}
!311 = !{ptr @.str.165, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/i2c/ad9389b.c", i32 626, i32 2}
!313 = !{ptr @ad9389b_g_dv_timings._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @ad9389b_g_dv_timings._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @ad9389b_pad_ops, !316, !"ad9389b_pad_ops", i1 false, i1 false}
!316 = !{!"../drivers/media/i2c/ad9389b.c", i32 685, i32 41}
!317 = !{ptr @.str.166, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/i2c/ad9389b.c", i32 673, i32 3}
!319 = !{ptr @.str.167, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @ad9389b_get_edid._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @ad9389b_get_edid._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @ad9389b_ctrl_ops, !323, !"ad9389b_ctrl_ops", i1 false, i1 false}
!323 = !{!"../drivers/media/i2c/ad9389b.c", i32 319, i32 35}
!324 = !{ptr @.str.168, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/i2c/ad9389b.c", i32 817, i32 2}
!326 = !{ptr @ad9389b_edid_handler._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ad9389b_edid_handler._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.170, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/i2c/ad9389b.c", i32 830, i32 4}
!330 = !{ptr @ad9389b_edid_handler._entry.169, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @ad9389b_edid_handler._entry_ptr.171, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.173, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/i2c/ad9389b.c", i32 842, i32 2}
!334 = !{ptr @ad9389b_edid_handler._entry.172, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @ad9389b_edid_handler._entry_ptr.174, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.175, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/i2c/ad9389b.c", i32 1073, i32 2}
!338 = !{ptr @ad9389b_init_setup._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @ad9389b_init_setup._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.176, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/i2c/ad9389b.c", i32 524, i32 3}
!342 = !{ptr @.str.177, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @ad9389b_set_isr._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @ad9389b_set_isr._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.178, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/i2c/ad9389b.c", i32 1184, i32 2}
!347 = !{ptr @.str.179, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @ad9389b_remove._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @ad9389b_remove._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @ad9389b_id, !351, !"ad9389b_id", i1 false, i1 false}
!351 = !{!"../drivers/media/i2c/ad9389b.c", i32 1200, i32 35}
!352 = !{i32 1, !"wchar_size", i32 2}
!353 = !{i32 1, !"min_enum_size", i32 4}
!354 = !{i32 8, !"branch-target-enforcement", i32 0}
!355 = !{i32 8, !"sign-return-address", i32 0}
!356 = !{i32 8, !"sign-return-address-all", i32 0}
!357 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!358 = !{i32 7, !"uwtable", i32 1}
!359 = !{i32 7, !"frame-pointer", i32 2}
!360 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!361 = !{i8 0, i8 2}
!362 = !{!"auto-init"}
