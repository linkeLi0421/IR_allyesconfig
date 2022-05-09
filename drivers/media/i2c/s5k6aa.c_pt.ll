; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5k6aa.c_pt.bc'
source_filename = "../drivers/media/i2c/s5k6aa.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5k6aa_regval = type { i16, i16 }
%struct.s5k6aa_pixfmt = type { i32, i32, i16 }
%struct.s5k6aa_interval = type { i16, %struct.v4l2_fract, %struct.v4l2_frmsize_discrete }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_control = type { i32, i32 }
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
%struct.s5k6aa_platform_data = type { ptr, i32, %struct.s5k6aa_gpio, %struct.s5k6aa_gpio, i32, i8, i8, i8 }
%struct.s5k6aa_gpio = type { i32, i32 }
%struct.s5k6aa = type { %struct.v4l2_subdev, %struct.media_pad, i32, i8, ptr, [4 x %struct.regulator_bulk_data], [2 x %struct.s5k6aa_gpio], i32, i16, i16, i16, i8, %struct.mutex, %struct.v4l2_rect, %struct.s5k6aa_ctrls, [1 x %struct.s5k6aa_preset], ptr, ptr, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.s5k6aa_ctrls = type { %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5k6aa_preset = type { %struct.v4l2_mbus_framefmt, i8, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }

@__param_str_debug = internal constant [13 x i8] c"s5k6aa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [26 x i8] c"s5k6aa.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_s5k6aa__317_1651_s5k6aa_i2c_driver_init6 = internal global ptr @s5k6aa_i2c_driver_init, section ".initcall6.init", align 4
@s5k6aa_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s5k6aa_probe, ptr @s5k6aa_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5k6aa_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s5k6aa_i2c_driver_exit = internal global ptr @s5k6aa_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description318 = internal constant [57 x i8] c"s5k6aa.description=Samsung S5K6AA(FX) SXGA camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [58 x i8] c"s5k6aa.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [37 x i8] c"s5k6aa.file=drivers/media/i2c/s5k6aa\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [19 x i8] c"s5k6aa.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S5K6AA\00", [25 x i8] zeroinitializer }, align 32
@s5k6aa_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"S5K6AA\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s5k6aa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Platform data not specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k6aa_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/s5k6aa.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5k6aa_probe._entry_ptr = internal global ptr @s5k6aa_probe._entry, section ".printk_index", align 4
@s5k6aa_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCLK frequency not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@s5k6aa_probe._entry_ptr.8 = internal global ptr @s5k6aa_probe._entry.6, section ".printk_index", align 4
@s5k6aa_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&s5k6aa->lock\00", [18 x i8] zeroinitializer }, align 32
@s5k6aa_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5k6aa_core_ops, ptr null, ptr null, ptr @s5k6aa_video_ops, ptr null, ptr null, ptr null, ptr @s5k6aa_pad_ops }, [32 x i8] zeroinitializer }, align 32
@s5k6aa_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @s5k6aa_registered, ptr null, ptr @s5k6aa_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5k6aa_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@s5k6aa_probe._entry_ptr.12 = internal global ptr @s5k6aa_probe._entry.10, section ".printk_index", align 4
@s5k6aa_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @s5k6aa_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k6aa_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5k6aa_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k6aa_s_stream, ptr null, ptr @s5k6aa_g_frame_interval, ptr @s5k6aa_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5k6aa_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5k6aa_enum_mbus_code, ptr @s5k6aa_enum_frame_size, ptr @s5k6aa_enum_frame_interval, ptr @s5k6aa_get_fmt, ptr @s5k6aa_set_fmt, ptr @s5k6aa_get_selection, ptr @s5k6aa_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s5k6aa_analog_config = internal constant { [26 x %struct.s5k6aa_regval], [56 x i8] } { [26 x %struct.s5k6aa_regval] [%struct.s5k6aa_regval { i16 4394, i16 0 }, %struct.s5k6aa_regval { i16 4402, i16 0 }, %struct.s5k6aa_regval { i16 4414, i16 0 }, %struct.s5k6aa_regval { i16 4444, i16 0 }, %struct.s5k6aa_regval { i16 4452, i16 0 }, %struct.s5k6aa_regval { i16 4468, i16 0 }, %struct.s5k6aa_regval { i16 4472, i16 0 }, %struct.s5k6aa_regval { i16 1914, i16 0 }, %struct.s5k6aa_regval { i16 1916, i16 0 }, %struct.s5k6aa_regval { i16 1918, i16 0 }, %struct.s5k6aa_regval { i16 1920, i16 0 }, %struct.s5k6aa_regval { i16 1922, i16 0 }, %struct.s5k6aa_regval { i16 1924, i16 0 }, %struct.s5k6aa_regval { i16 1926, i16 0 }, %struct.s5k6aa_regval { i16 1928, i16 0 }, %struct.s5k6aa_regval { i16 1954, i16 0 }, %struct.s5k6aa_regval { i16 1956, i16 0 }, %struct.s5k6aa_regval { i16 1958, i16 0 }, %struct.s5k6aa_regval { i16 1960, i16 0 }, %struct.s5k6aa_regval { i16 1974, i16 0 }, %struct.s5k6aa_regval { i16 1976, i16 2 }, %struct.s5k6aa_regval { i16 1978, i16 4 }, %struct.s5k6aa_regval { i16 1980, i16 4 }, %struct.s5k6aa_regval { i16 1982, i16 5 }, %struct.s5k6aa_regval { i16 1984, i16 5 }, %struct.s5k6aa_regval { i16 -1, i16 0 }], [56 x i8] zeroinitializer }, align 32
@s5k6aa_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: i2c_write: 0x%04X : 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k6aa_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@s5k6aa_i2c_write._entry_ptr = internal global ptr @s5k6aa_i2c_write._entry, section ".printk_index", align 4
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid clock frequency: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@s5k6aa_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: i2c_read: 0x%04X : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5k6aa_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@s5k6aa_i2c_read._entry_ptr = internal global ptr @s5k6aa_i2c_read._entry, section ".printk_index", align 4
@s5k6aa_set_prev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Frame interval: %d +/- 3.3ms. (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5k6aa_set_prev_config\00", [41 x i8] zeroinitializer }, align 32
@s5k6aa_set_prev_config._entry_ptr = internal global ptr @s5k6aa_set_prev_config._entry, section ".printk_index", align 4
@s5k6aa_formats = internal constant { [3 x %struct.s5k6aa_pixfmt], [60 x i8] } { [3 x %struct.s5k6aa_pixfmt] [%struct.s5k6aa_pixfmt { i32 8200, i32 7, i16 5 }, %struct.s5k6aa_pixfmt { i32 8200, i32 3, i16 6 }, %struct.s5k6aa_pixfmt { i32 4103, i32 7, i16 0 }], [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5k6aa_preview_config_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: error: 0x%x (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5k6aa_preview_config_status\00", [35 x i8] zeroinitializer }, align 32
@s5k6aa_preview_config_status._entry_ptr = internal global ptr @s5k6aa_preview_config_status._entry, section ".printk_index", align 4
@s5k6aa_s_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Setting %d/%d frame interval\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5k6aa_s_frame_interval\00", [40 x i8] zeroinitializer }, align 32
@s5k6aa_s_frame_interval._entry_ptr = internal global ptr @s5k6aa_s_frame_interval._entry, section ".printk_index", align 4
@s5k6aa_intervals = internal constant { [5 x %struct.s5k6aa_interval], [60 x i8] } { [5 x %struct.s5k6aa_interval] [%struct.s5k6aa_interval { i16 1000, %struct.v4l2_fract { i32 10000, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 1024 } }, %struct.s5k6aa_interval { i16 666, %struct.v4l2_fract { i32 15000, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 1024 } }, %struct.s5k6aa_interval { i16 500, %struct.v4l2_fract { i32 20000, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 720 } }, %struct.s5k6aa_interval { i16 400, %struct.v4l2_fract { i32 25000, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 } }, %struct.s5k6aa_interval { i16 333, %struct.v4l2_fract { i32 33300, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 } }], [60 x i8] zeroinitializer }, align 32
@__s5k6aa_set_frame_interval._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 975, ptr null, ptr null }, align 1
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Changed frame interval to %d us\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__s5k6aa_set_frame_interval\00", [36 x i8] zeroinitializer }, align 32
@__s5k6aa_set_frame_interval._entry_ptr = internal global ptr @__s5k6aa_set_frame_interval._entry, section ".printk_index", align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@s5k6aa_get_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Current crop rectangle: (%d,%d)/%dx%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k6aa_get_selection\00", [43 x i8] zeroinitializer }, align 32
@s5k6aa_get_selection._entry_ptr = internal global ptr @s5k6aa_get_selection._entry, section ".printk_index", align 4
@s5k6aa_set_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Set crop rectangle: (%d,%d)/%dx%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k6aa_set_selection\00", [43 x i8] zeroinitializer }, align 32
@s5k6aa_set_selection._entry_ptr = internal global ptr @s5k6aa_set_selection._entry, section ".printk_index", align 4
@s5k6aa_check_fw_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: FW revision check failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5k6aa_check_fw_revision\00", [39 x i8] zeroinitializer }, align 32
@s5k6aa_check_fw_revision._entry_ptr = internal global ptr @s5k6aa_check_fw_revision._entry, section ".printk_index", align 4
@s5k6aa_check_fw_revision._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: FW API ver.: 0x%X, FW rev.: 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@s5k6aa_check_fw_revision._entry_ptr.35 = internal global ptr @s5k6aa_check_fw_revision._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5K6AA_STBY\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S5K6AA_RST\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd_core\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_reg\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@s5k6aa_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s5k6aa_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5k6aa_initialize_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5k6aa:1375:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@s5k6aa_ctrls = internal constant { [3 x %struct.v4l2_ctrl_config], [80 x i8] } { [3 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @s5k6aa_ctrl_ops, ptr null, i32 10096641, ptr @.str.47, i32 1, i64 0, i64 256, i64 1, i64 127, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @s5k6aa_ctrl_ops, ptr null, i32 10096642, ptr @.str.48, i32 1, i64 0, i64 256, i64 1, i64 127, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @s5k6aa_ctrl_ops, ptr null, i32 10096643, ptr @.str.49, i32 1, i64 0, i64 256, i64 1, i64 127, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [80 x i8] zeroinitializer }, align 32
@s5k6aa_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ctrl: 0x%x, value: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5k6aa_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@s5k6aa_s_ctrl._entry_ptr = internal global ptr @s5k6aa_s_ctrl._entry, section ".printk_index", align 4
@s5k6aa_set_colorfx.colorfx = internal constant { [6 x %struct.v4l2_control], [48 x i8] } { [6 x %struct.v4l2_control] [%struct.v4l2_control zeroinitializer, %struct.v4l2_control { i32 1, i32 1 }, %struct.v4l2_control { i32 3, i32 2 }, %struct.v4l2_control { i32 2, i32 3 }, %struct.v4l2_control { i32 6, i32 4 }, %struct.v4l2_control { i32 5, i32 5 }], [48 x i8] zeroinitializer }, align 32
@s5k6aa_set_auto_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: man_exp: %d, auto_exp: %d, a_alg: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5k6aa_set_auto_exposure\00", [39 x i8] zeroinitializer }, align 32
@s5k6aa_set_auto_exposure._entry_ptr = internal global ptr @s5k6aa_set_auto_exposure._entry, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Gain, Red\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Gain, Green\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Gain, Blue\00", [21 x i8] zeroinitializer }, align 32
@switch.table.s5k6aa_s_ctrl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 3, i32 2, i32 0, i32 5, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4103, i64 8200]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963788, i64 9963796, i64 9963800, i64 9963802, i64 9963803, i64 9963807, i64 10094849]
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 29, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"s5k6aa_i2c_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1642, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1644, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"s5k6aa_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1635, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1556, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1561, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1569, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"s5k6aa_subdev_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1499, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"s5k6aa_subdev_internal_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1489, i32 46 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1602, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"s5k6aa_core_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1494, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"s5k6aa_video_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1243, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"s5k6aa_pad_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1233, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"s5k6aa_analog_config\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 265, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 359, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 432, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 349, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 773, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"s5k6aa_formats\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 283, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 612, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 985, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"s5k6aa_intervals\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 290, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 974, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 998, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1185, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1227, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1462, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1466, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1525, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1537, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 169, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 170, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 171, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 173, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"s5k6aa_ctrl_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1324, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1375, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"s5k6aa_ctrls\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1338, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1260, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [8 x i8] c"colorfx\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 589, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 541, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1343, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1352, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [30 x i8] c"../drivers/media/i2c/s5k6aa.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1361, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant [27 x i8] c"switch.table.s5k6aa_s_ctrl\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_s5k6aa_i2c_driver_exit, ptr @__initcall__kmod_s5k6aa__317_1651_s5k6aa_i2c_driver_init6, ptr @__param_debug, ptr @__s5k6aa_set_frame_interval._entry, ptr @__s5k6aa_set_frame_interval._entry_ptr, ptr @s5k6aa_check_fw_revision._entry, ptr @s5k6aa_check_fw_revision._entry.33, ptr @s5k6aa_check_fw_revision._entry_ptr, ptr @s5k6aa_check_fw_revision._entry_ptr.35, ptr @s5k6aa_get_selection._entry, ptr @s5k6aa_get_selection._entry_ptr, ptr @s5k6aa_i2c_driver_exit, ptr @s5k6aa_i2c_read._entry, ptr @s5k6aa_i2c_read._entry_ptr, ptr @s5k6aa_i2c_write._entry, ptr @s5k6aa_i2c_write._entry_ptr, ptr @s5k6aa_preview_config_status._entry, ptr @s5k6aa_preview_config_status._entry_ptr, ptr @s5k6aa_probe._entry, ptr @s5k6aa_probe._entry.10, ptr @s5k6aa_probe._entry.6, ptr @s5k6aa_probe._entry_ptr, ptr @s5k6aa_probe._entry_ptr.12, ptr @s5k6aa_probe._entry_ptr.8, ptr @s5k6aa_s_ctrl._entry, ptr @s5k6aa_s_ctrl._entry_ptr, ptr @s5k6aa_s_frame_interval._entry, ptr @s5k6aa_s_frame_interval._entry_ptr, ptr @s5k6aa_set_auto_exposure._entry, ptr @s5k6aa_set_auto_exposure._entry_ptr, ptr @s5k6aa_set_prev_config._entry, ptr @s5k6aa_set_prev_config._entry_ptr, ptr @s5k6aa_set_selection._entry, ptr @s5k6aa_set_selection._entry_ptr, ptr @debug, ptr @s5k6aa_i2c_driver, ptr @.str, ptr @s5k6aa_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @s5k6aa_probe.__key, ptr @.str.9, ptr @s5k6aa_subdev_ops, ptr @s5k6aa_subdev_internal_ops, ptr @.str.11, ptr @s5k6aa_core_ops, ptr @s5k6aa_video_ops, ptr @s5k6aa_pad_ops, ptr @s5k6aa_analog_config, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @s5k6aa_formats, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @s5k6aa_intervals, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @s5k6aa_ctrl_ops, ptr @s5k6aa_initialize_ctrls._key, ptr @.str.42, ptr @s5k6aa_ctrls, ptr @.str.43, ptr @.str.44, ptr @s5k6aa_set_colorfx.colorfx, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @switch.table.s5k6aa_s_ctrl], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_analog_config to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_set_prev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_formats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_preview_config_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_s_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_intervals to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_get_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_set_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_check_fw_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_check_fw_revision._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_initialize_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_ctrls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_set_colorfx.colorfx to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6aa_set_auto_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5k6aa_s_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s5k6aa_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5k6aa_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @s5k6aa_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk_frequency = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mclk_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 712, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %do.body12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body12:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @s5k6aa_probe.__key) #8
  %4 = ptrtoint ptr %mclk_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_frequency, align 4
  %mclk_frequency16 = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %mclk_frequency16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mclk_frequency16, align 4
  %bus_type = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_type, align 4
  %bus_type17 = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus_type17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bus_type17, align 4
  %nlanes = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %nlanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nlanes, align 4
  %mipi_lanes = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %mipi_lanes to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %mipi_lanes, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %s_power = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %s_power to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %s_power, align 4
  %horiz_flip = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %horiz_flip to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %horiz_flip, align 1
  %inv_hflip = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %inv_hflip to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %inv_hflip, align 2
  %bf.shl = shl i8 %17, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %inv_hflip, align 2
  %vert_flip = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %vert_flip to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vert_flip, align 2
  %bf.value20 = shl i8 %20, 6
  %bf.shl21 = and i8 %bf.value20, 64
  %bf.clear22 = and i8 %bf.set, -65
  %bf.set23 = or i8 %bf.shl21, %bf.clear22
  store i8 %bf.set23, ptr %inv_hflip, align 2
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @s5k6aa_subdev_ops) #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call26 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @s5k6aa_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 4
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 1
  %flags27 = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags27, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 131073, ptr %function, align 4
  %call30 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %do.body12.cleanup_crit_edge

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %do.body12
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %gpio1.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -22, ptr %gpio1.i, align 4
  %arrayidx4.i = getelementptr %struct.s5k6aa, ptr %call.i, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -22, ptr %arrayidx4.i, align 4
  %gpio_stby.i = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %gpio_stby.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_stby.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %32 = icmp ult i32 %31, 2048
  br i1 %32, label %if.then.i, label %if.end33.if.end13.i_crit_edge

if.end33.if.end13.i_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end33
  %level.i = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  %or.i = select i1 %tobool.not.i, i32 32, i32 34
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %call9.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev.i, i32 noundef %31, i32 noundef %or.i, ptr noundef nonnull @.str.36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %gpio_stby.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %gpio_stby.i, align 4
  %37 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %gpio1.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i, %if.end33.if.end13.i_crit_edge
  %gpio_reset.i = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpio_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %39)
  %40 = icmp ult i32 %39, 2048
  br i1 %40, label %if.then16.i, label %if.end13.i.s5k6aa_configure_gpios.exit_crit_edge

if.end13.i.s5k6aa_configure_gpios.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_gpios.exit

if.then16.i:                                      ; preds = %if.end13.i
  %level17.i = getelementptr inbounds %struct.s5k6aa_platform_data, ptr %1, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %level17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %level17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool18.not.i = icmp eq i32 %42, 0
  %or20.i = select i1 %tobool18.not.i, i32 32, i32 34
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %call23.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev21.i, i32 noundef %39, i32 noundef %or20.i, ptr noundef nonnull @.str.37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.then16.i.cleanup_crit_edge, label %if.end26.i

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %gpio_reset.i, align 4
  %45 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %arrayidx4.i, align 4
  br label %s5k6aa_configure_gpios.exit

s5k6aa_configure_gpios.exit:                      ; preds = %if.end26.i, %if.end13.i.s5k6aa_configure_gpios.exit_crit_edge
  %arrayidx40 = getelementptr %struct.s5k6aa, ptr %call.i, i32 0, i32 5, i32 0
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.38, ptr %arrayidx40, align 4
  %arrayidx40.1 = getelementptr %struct.s5k6aa, ptr %call.i, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.39, ptr %arrayidx40.1, align 4
  %arrayidx40.2 = getelementptr %struct.s5k6aa, ptr %call.i, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.40, ptr %arrayidx40.2, align 4
  %arrayidx40.3 = getelementptr %struct.s5k6aa, ptr %call.i, i32 0, i32 5, i32 3
  %49 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.41, ptr %arrayidx40.3, align 4
  %call44 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %s5k6aa_configure_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end51:                                         ; preds = %s5k6aa_configure_gpios.exit
  %ctrls1.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14
  %call.i112 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1.i, i32 noundef 16, ptr noundef nonnull @s5k6aa_initialize_ctrls._key, ptr noundef nonnull @.str.42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end.i114, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i114:                                      ; preds = %if.end51
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %awb.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %awb.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call2.i, ptr %awb.i, align 4
  %call3.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrls, ptr noundef null) #8
  %gain_red.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 2
  %51 = ptrtoint ptr %gain_red.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call3.i, ptr %gain_red.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls1.i, ptr noundef getelementptr inbounds ([3 x %struct.v4l2_ctrl_config], ptr @s5k6aa_ctrls, i32 0, i32 1), ptr noundef null) #8
  %gain_green.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 4
  %52 = ptrtoint ptr %gain_green.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call4.i, ptr %gain_green.i, align 4
  %call5.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls1.i, ptr noundef getelementptr inbounds ([3 x %struct.v4l2_ctrl_config], ptr @s5k6aa_ctrls, i32 0, i32 2), ptr noundef null) #8
  %gain_blue.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 3
  %53 = ptrtoint ptr %gain_blue.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i, ptr %gain_blue.i, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 4, ptr noundef %awb.i, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %hflip.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 5
  %54 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i, ptr %hflip.i, align 4
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %vflip.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 6
  %55 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i, ptr %vflip.i, align 4
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %hflip.i) #8
  %call10.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #8
  %auto_exp.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 7
  %56 = ptrtoint ptr %auto_exp.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call10.i, ptr %auto_exp.i, align 4
  %call11.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 6000000, i64 noundef 1, i64 noundef 100000) #8
  %exposure.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 8
  %57 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call11.i, ptr %exposure.i, align 4
  %call12.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 256) #8
  %gain.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 9
  %58 = ptrtoint ptr %gain.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call12.i, ptr %gain.i, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %auto_exp.i, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call14.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #8
  %call15.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 6, i64 noundef -112, i8 noundef zeroext 0) #8
  %call16.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963802, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 0) #8
  %call17.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963778, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call18.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963776, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call19.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963777, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call20.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @s5k6aa_ctrl_ops, i32 noundef 9963803, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %error.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 14, i32 0, i32 9
  %59 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool21.not.i = icmp eq i32 %60, 0
  br i1 %tobool21.not.i, label %if.end55, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1.i) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %61 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctrls1.i, ptr %ctrl_handler.i, align 4
  %presets.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 15
  %62 = ptrtoint ptr %presets.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 640, ptr %presets.i, align 4
  %height.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 15, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 480, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 15, i32 0, i32 0, i32 2
  %64 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8200, ptr %code.i, align 4
  %index.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 15, i32 0, i32 2
  %65 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %index.i, align 1
  %clk_id.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 15, i32 0, i32 1
  %66 = ptrtoint ptr %clk_id.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %clk_id.i, align 4
  %fiv.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 17
  %67 = ptrtoint ptr %fiv.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr getelementptr inbounds ([5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 1), ptr %fiv.i, align 4
  %preset5.i = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 16
  %68 = ptrtoint ptr %preset5.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %presets.i, ptr %preset5.i, align 4
  %ccd_rect = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 13
  %width = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 13, i32 2
  %69 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 13, i32 3
  %70 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1024, ptr %height, align 4
  %71 = ptrtoint ptr %ccd_rect to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ccd_rect, align 4
  %top = getelementptr inbounds %struct.s5k6aa, ptr %call.i, i32 0, i32 13, i32 1
  %72 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %top, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then22.i, %if.end51.cleanup_crit_edge, %do.end49, %if.then16.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.body12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.end55 ], [ -12, %if.end8.cleanup_crit_edge ], [ %call30, %do.body12.cleanup_crit_edge ], [ %call44, %do.end49 ], [ %call23.i, %if.then16.i.cleanup_crit_edge ], [ %call9.i, %if.then.i.cleanup_crit_edge ], [ %call.i112, %if.end51.cleanup_crit_edge ], [ %60, %if.then22.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_handler, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %1, ptr noundef %name) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_set_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %status.i.i = alloca i16, align 2
  %buf.i1.i.i = alloca [4 x i8], align 1
  %buf.i.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 19
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call fastcc i32 @__s5k6aa_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end14_crit_edge

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.then2
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %apply_crop.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 18
  %4 = ptrtoint ptr %apply_crop.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %apply_crop.i, align 4
  %bf.set4.i = or i8 %bf.load.i, 96
  store i8 %bf.set4.i, ptr %apply_crop.i, align 4
  tail call void @msleep(i32 noundef 100) #8
  %call5.i = tail call fastcc i32 @s5k6aa_set_ahb_address(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i:                                         ; preds = %if.then5
  %bus_type.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 2
  %5 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_type.i, align 4
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.i.if.end14_crit_edge [
    i32 5, label %if.then.i.i
    i32 1, label %if.end.i.if.end4.i.i_crit_edge
  ]

if.end.i.if.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mipi_lanes.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 3
  %10 = ptrtoint ptr %mipi_lanes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mipi_lanes.i, align 4
  %conv.i.i = zext i8 %11 to i16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i, %if.end.i.if.end4.i.i_crit_edge
  %cfg.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i ], [ 0, %if.end.i.if.end4.i.i_crit_edge ]
  %call5.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %8, i16 noundef zeroext 1018, i16 noundef zeroext %cfg.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %s5k6aa_configure_video_bus.exit.i, label %if.end4.i.i.if.end14_crit_edge

if.end4.i.i.if.end14_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

s5k6aa_configure_video_bus.exit.i:                ; preds = %if.end4.i.i
  %call8.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %8, i16 noundef zeroext 1022, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool7.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %s5k6aa_configure_video_bus.exit.i.if.end14_crit_edge

s5k6aa_configure_video_bus.exit.i.if.end14_crit_edge: ; preds = %s5k6aa_configure_video_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end9.i:                                        ; preds = %s5k6aa_configure_video_bus.exit.i
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %14 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %name.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 2
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i1.i.i, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i8], ptr %buf.i1.i.i, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i1.i.i, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end12.i.i.while.body.i.i_crit_edge, %if.end9.i
  %addr_incr.017.i.i = phi i32 [ 0, %if.end9.i ], [ %sub.i.i, %if.end12.i.i.while.body.i.i_crit_edge ]
  %msg.addr.016.i.i = phi ptr [ @s5k6aa_analog_config, %if.end9.i ], [ %add.ptr.i.i, %if.end12.i.i.while.body.i.i_crit_edge ]
  %20 = phi i16 [ 4394, %if.end9.i ], [ %39, %if.end12.i.i.while.body.i.i_crit_edge ]
  %conv2.i.i = and i32 %addr_incr.017.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2.i.i)
  %cmp3.not.i.i = icmp eq i32 %conv2.i.i, 2
  br i1 %cmp3.not.i.i, label %while.body.i.i.if.end8.i.i_crit_edge, label %if.then.i30.i

while.body.i.i.if.end8.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i30.i:                                    ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  %21 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf.i.i.i, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 42, ptr %14, align 1
  %23 = lshr i16 %20, 8
  %conv7.i.i.i = trunc i16 %23 to i8
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7.i.i.i, ptr %15, align 1
  %conv11.i.i.i = trunc i16 %20 to i8
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv11.i.i.i, ptr %16, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i.i.i = icmp sgt i32 %26, 2
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i30.i.s5k6aa_i2c_write.exit.i.i_crit_edge

if.then.i30.i.s5k6aa_i2c_write.exit.i.i_crit_edge: ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i.i = zext i16 %20 to i32
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i.i.i, i32 noundef 42, i32 noundef %conv5.i.i.i) #11
  br label %s5k6aa_i2c_write.exit.i.i

s5k6aa_i2c_write.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i30.i.s5k6aa_i2c_write.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  %27 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i.i.i.i, label %s5k6aa_i2c_write.exit.i.i.if.end14_crit_edge [
    i32 4, label %s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge
    i32 0, label %s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge48
  ]

s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge48: ; preds = %s5k6aa_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge:  ; preds = %s5k6aa_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

s5k6aa_i2c_write.exit.i.i.if.end14_crit_edge:     ; preds = %s5k6aa_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end8.i.i:                                      ; preds = %s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge, %s5k6aa_i2c_write.exit.i.i.if.end8.i.i_crit_edge48, %while.body.i.i.if.end8.i.i_crit_edge
  %val.i.i = getelementptr inbounds %struct.s5k6aa_regval, ptr %msg.addr.016.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i1.i.i) #8
  %30 = ptrtoint ptr %buf.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 15, ptr %buf.i1.i.i, align 1
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 18, ptr %17, align 1
  %32 = lshr i16 %29, 8
  %conv7.i2.i.i = trunc i16 %32 to i8
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv7.i2.i.i, ptr %18, align 1
  %conv11.i3.i.i = trunc i16 %29 to i8
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv11.i3.i.i, ptr %19, align 1
  %call.i.i4.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i1.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i5.i.i = icmp sgt i32 %35, 2
  br i1 %cmp.i5.i.i, label %do.end.i9.i.i, label %if.end8.i.i.s5k6aa_i2c_write.exit12.i.i_crit_edge

if.end8.i.i.s5k6aa_i2c_write.exit12.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit12.i.i

do.end.i9.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i6.i.i = zext i16 %29 to i32
  %call17.i8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i.i.i, i32 noundef 3858, i32 noundef %conv5.i6.i.i) #11
  br label %s5k6aa_i2c_write.exit12.i.i

s5k6aa_i2c_write.exit12.i.i:                      ; preds = %do.end.i9.i.i, %if.end8.i.i.s5k6aa_i2c_write.exit12.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i1.i.i) #8
  %36 = and i32 %call.i.i4.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %if.end12.i.i, label %s5k6aa_i2c_write.exit12.i.i.if.end8_crit_edge

s5k6aa_i2c_write.exit12.i.i.if.end8_crit_edge:    ; preds = %s5k6aa_i2c_write.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end12.i.i:                                     ; preds = %s5k6aa_i2c_write.exit12.i.i
  %add.ptr.i.i = getelementptr %struct.s5k6aa_regval, ptr %msg.addr.016.i.i, i32 1
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %conv14.i.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %msg.addr.016.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %msg.addr.016.i.i, align 2
  %conv16.i.i = zext i16 %41 to i32
  %sub.i.i = sub nsw i32 %conv14.i.i, %conv16.i.i
  %cmp.not.i.i = icmp eq i16 %39, -1
  br i1 %cmp.not.i.i, label %if.end13.i, label %if.end12.i.i.while.body.i.i_crit_edge

if.end12.i.i.while.body.i.i_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end13.i:                                       ; preds = %if.end12.i.i
  call void @msleep(i32 noundef 20) #8
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  %mclk_frequency.i.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 7
  %44 = ptrtoint ptr %mclk_frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk_frequency.i.i, align 4
  %div.i.i = udiv i32 %45, 1000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i.i) #8
  %46 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %status.i.i, align 2, !annotation !158
  %47 = add i32 %45, -27001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21001000, i32 %47)
  %48 = icmp ult i32 %47, -21001000
  br i1 %48, label %do.end.i.i, label %if.end22.i.i, !prof !159

do.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 433, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %div.i.i) #8
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end22.i.i:                                     ; preds = %if.end13.i
  %pclk_fmin.i.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 9
  %49 = ptrtoint ptr %pclk_fmin.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 6000, ptr %pclk_fmin.i.i, align 2
  %pclk_fmax.i.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 10
  %50 = ptrtoint ptr %pclk_fmax.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 12000, ptr %pclk_fmax.i.i, align 4
  %clk_fop.i.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 8
  %51 = ptrtoint ptr %clk_fop.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 12000, ptr %clk_fop.i.i, align 4
  %shr.i.i = lshr i32 %div.i.i, 16
  %conv.i32.i = trunc i32 %shr.i.i to i16
  %call23.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 442, i16 noundef zeroext %conv.i32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end28.i.i, label %if.end22.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end22.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end28.i.i:                                     ; preds = %if.end22.i.i
  %conv26.i.i = trunc i32 %div.i.i to i16
  %call27.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 440, i16 noundef zeroext %conv26.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool29.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end32.i.i, label %if.end28.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end28.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end32.i.i:                                     ; preds = %if.end28.i.i
  %call31.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 454, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool33.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end37.i.i, label %if.end32.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end32.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end37.i.i:                                     ; preds = %if.end32.i.i
  %52 = ptrtoint ptr %clk_fop.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %clk_fop.i.i, align 4
  %call36.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 460, i16 noundef zeroext %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool38.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end42.i.i, label %if.end37.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end37.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end42.i.i:                                     ; preds = %if.end37.i.i
  %54 = ptrtoint ptr %pclk_fmin.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pclk_fmin.i.i, align 2
  %call41.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 462, i16 noundef zeroext %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool43.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end47.i.i, label %if.end42.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end42.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end47.i.i:                                     ; preds = %if.end42.i.i
  %56 = ptrtoint ptr %pclk_fmax.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pclk_fmax.i.i, align 4
  %call46.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 464, i16 noundef zeroext %57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool48.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end51.i.i, label %if.end47.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end47.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end51.i.i:                                     ; preds = %if.end47.i.i
  %call50.i.i = call fastcc i32 @s5k6aa_write(ptr noundef %43, i16 noundef zeroext 480, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool52.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end55.i.i, label %if.end51.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end51.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

if.end55.i.i:                                     ; preds = %if.end51.i.i
  %call54.i.i = call fastcc i32 @s5k6aa_read(ptr noundef %43, i16 noundef zeroext 482, ptr noundef nonnull %status.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool56.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool56.not.i.i, label %cond.false.i.i, label %if.end55.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge

if.end55.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge: ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_configure_pixel_clocks.exit.i

cond.false.i.i:                                   ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool58.not.i.i = icmp eq i16 %59, 0
  %cond.i.i = select i1 %tobool58.not.i.i, i32 0, i32 -22
  br label %s5k6aa_configure_pixel_clocks.exit.i

s5k6aa_configure_pixel_clocks.exit.i:             ; preds = %cond.false.i.i, %if.end55.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end51.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end47.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end42.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end37.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end32.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end28.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %if.end22.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge, %do.end.i.i
  %retval.0.i33.i = phi i32 [ -22, %do.end.i.i ], [ %cond.i.i, %cond.false.i.i ], [ %call54.i.i, %if.end55.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call50.i.i, %if.end51.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call46.i.i, %if.end47.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call41.i.i, %if.end42.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call36.i.i, %if.end37.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call31.i.i, %if.end32.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call27.i.i, %if.end28.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ], [ %call23.i.i, %if.end22.i.i.s5k6aa_configure_pixel_clocks.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i.i) #8
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @__s5k6aa_power_off(ptr noundef %sd)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %s5k6aa_configure_pixel_clocks.exit.i, %s5k6aa_i2c_write.exit12.i.i.if.end8_crit_edge
  %ret.0 = phi i32 [ %call7, %if.else ], [ %retval.0.i33.i, %s5k6aa_configure_pixel_clocks.exit.i ], [ %call.i.i4.i.i, %s5k6aa_i2c_write.exit12.i.i.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %60 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %power, align 4
  %add = add i32 %61, %cond
  store i32 %add, ptr %power, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge, %s5k6aa_i2c_write.exit.i.i.if.end14_crit_edge, %s5k6aa_configure_video_bus.exit.i.if.end14_crit_edge, %if.end4.i.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.then5.if.end14_crit_edge, %if.then2.if.end14_crit_edge, %entry.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end8.if.end14_crit_edge ], [ 0, %if.then10 ], [ 0, %entry.if.end14_crit_edge ], [ -22, %if.end.i.if.end14_crit_edge ], [ %call5.i.i, %if.end4.i.i.if.end14_crit_edge ], [ %call8.i.i, %s5k6aa_configure_video_bus.exit.i.if.end14_crit_edge ], [ %call5.i, %if.then5.if.end14_crit_edge ], [ %call3, %if.then2.if.end14_crit_edge ], [ %call.i.i.i.i, %s5k6aa_i2c_write.exit.i.i.if.end14_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool17.not = icmp eq i32 %ret.1, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %lor.lhs.false18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end14
  %62 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp20.not = icmp eq i32 %63, 1
  br i1 %cmp20.not, label %if.end22, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %64 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl_handler, align 4
  %call23 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.lhs.false18.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %lor.lhs.false18.cleanup_crit_edge ], [ %ret.1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5k6aa_power_on(ptr noundef %s5k6aa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 5
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %level.i = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %lnot.ext.i.i = zext i1 %tobool.not.i to i32
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef %lnot.ext.i.i) #8
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %s_power = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 4
  %5 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_power, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 %6(i32 noundef 1) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6 ], [ 0, %if.end4.if.end9_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #8
  %arrayidx.i.i20 = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %level.i21 = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %level.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i22 = icmp eq i32 %11, 0
  %lnot.ext.i.i23 = zext i1 %tobool.not.i22 to i32
  %call.i.i.i24 = tail call ptr @gpio_to_desc(i32 noundef %8) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i24, i32 noundef %lnot.ext.i.i23) #8
  tail call void @msleep(i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %if.then12 ], [ %ret.0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5k6aa_power_off(ptr noundef %s5k6aa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %level.i = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 1, i32 1
  %3 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i = icmp ne i32 %4, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef %lnot.ext.i.i) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_power = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 4
  %5 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_power, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 %6(i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %arrayidx.i.i20 = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %if.then11, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %level.i21 = getelementptr %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %level.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.i22 = icmp ne i32 %11, 0
  %lnot.ext.i.i23 = zext i1 %tobool.i.i22 to i32
  %call.i.i.i24 = tail call ptr @gpio_to_desc(i32 noundef %8) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i24, i32 noundef %lnot.ext.i.i23) #8
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %streaming = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 18
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %streaming, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %streaming, align 4
  %supplies = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 5
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call4, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k6aa_set_ahb_address(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %buf.i20 = alloca [4 x i8], align 1
  %buf.i11 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -4, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -4, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -48, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp sgt i32 %7, 2
  br i1 %cmp.i, label %do.end.i, label %entry.s5k6aa_i2c_write.exit_crit_edge

entry.s5k6aa_i2c_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 64764, i32 noundef 53248) #11
  br label %s5k6aa_i2c_write.exit

s5k6aa_i2c_write.exit:                            ; preds = %do.end.i, %entry.s5k6aa_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %call.i.i, 4
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %if.end, label %s5k6aa_i2c_write.exit.cleanup_crit_edge

s5k6aa_i2c_write.exit.cleanup_crit_edge:          ; preds = %s5k6aa_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %s5k6aa_i2c_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i11) #8
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i11, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i11, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i11, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i11, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 44, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 112, ptr %9, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 1
  %call.i.i12 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i11, i32 noundef 4, i16 noundef zeroext 0) #8
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i13 = icmp sgt i32 %15, 2
  br i1 %cmp.i13, label %do.end.i16, label %if.end.s5k6aa_i2c_write.exit19_crit_edge

if.end.s5k6aa_i2c_write.exit19_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit19

do.end.i16:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i14 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i14, i32 noundef 44, i32 noundef 28672) #11
  br label %s5k6aa_i2c_write.exit19

s5k6aa_i2c_write.exit19:                          ; preds = %do.end.i16, %if.end.s5k6aa_i2c_write.exit19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i12)
  %cmp20.i17 = icmp eq i32 %call.i.i12, 4
  %spec.select.i18 = select i1 %cmp20.i17, i32 0, i32 %call.i.i12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i18)
  %tobool2.not = icmp eq i32 %spec.select.i18, 0
  br i1 %tobool2.not, label %if.end4, label %s5k6aa_i2c_write.exit19.cleanup_crit_edge

s5k6aa_i2c_write.exit19.cleanup_crit_edge:        ; preds = %s5k6aa_i2c_write.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %s5k6aa_i2c_write.exit19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i20) #8
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 1
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 2
  %18 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i20, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 40, ptr %16, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 112, ptr %17, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %18, align 1
  %call.i.i21 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i20, i32 noundef 4, i16 noundef zeroext 0) #8
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i22 = icmp sgt i32 %23, 2
  br i1 %cmp.i22, label %do.end.i25, label %if.end4.s5k6aa_i2c_write.exit28_crit_edge

if.end4.s5k6aa_i2c_write.exit28_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit28

do.end.i25:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %name.i23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i23, i32 noundef 40, i32 noundef 28672) #11
  br label %s5k6aa_i2c_write.exit28

s5k6aa_i2c_write.exit28:                          ; preds = %do.end.i25, %if.end4.s5k6aa_i2c_write.exit28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i21)
  %cmp20.i26 = icmp eq i32 %call.i.i21, 4
  %spec.select.i27 = select i1 %cmp20.i26, i32 0, i32 %call.i.i21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i20) #8
  br label %cleanup

cleanup:                                          ; preds = %s5k6aa_i2c_write.exit28, %s5k6aa_i2c_write.exit19.cleanup_crit_edge, %s5k6aa_i2c_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i27, %s5k6aa_i2c_write.exit28 ], [ %spec.select.i, %s5k6aa_i2c_write.exit.cleanup_crit_edge ], [ %spec.select.i18, %s5k6aa_i2c_write.exit19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k6aa_write(ptr noundef %c, i16 noundef zeroext %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i4 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 42, ptr %0, align 1
  %5 = lshr i16 %addr, 8
  %conv7.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7.i, ptr %1, align 1
  %conv11.i = trunc i16 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11.i, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp sgt i32 %8, 2
  br i1 %cmp.i, label %do.end.i, label %entry.s5k6aa_i2c_write.exit_crit_edge

entry.s5k6aa_i2c_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i16 %addr to i32
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 42, i32 noundef %conv5.i) #11
  br label %s5k6aa_i2c_write.exit

s5k6aa_i2c_write.exit:                            ; preds = %do.end.i, %entry.s5k6aa_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %call.i.i, 4
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %if.end, label %s5k6aa_i2c_write.exit.cleanup_crit_edge

s5k6aa_i2c_write.exit.cleanup_crit_edge:          ; preds = %s5k6aa_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %s5k6aa_i2c_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i4) #8
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i4, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i4, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i4, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 15, ptr %buf.i4, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 18, ptr %9, align 1
  %14 = lshr i16 %val, 8
  %conv7.i5 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i5, ptr %10, align 1
  %conv11.i6 = trunc i16 %val to i8
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.i6, ptr %11, align 1
  %call.i.i7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buf.i4, i32 noundef 4, i16 noundef zeroext 0) #8
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i8 = icmp sgt i32 %17, 2
  br i1 %cmp.i8, label %do.end.i12, label %if.end.s5k6aa_i2c_write.exit15_crit_edge

if.end.s5k6aa_i2c_write.exit15_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit15

do.end.i12:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i9 = zext i16 %val to i32
  %name.i10 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 2
  %call17.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i10, i32 noundef 3858, i32 noundef %conv5.i9) #11
  br label %s5k6aa_i2c_write.exit15

s5k6aa_i2c_write.exit15:                          ; preds = %do.end.i12, %if.end.s5k6aa_i2c_write.exit15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i7)
  %cmp20.i13 = icmp eq i32 %call.i.i7, 4
  %spec.select.i14 = select i1 %cmp20.i13, i32 0, i32 %call.i.i7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i4) #8
  br label %cleanup

cleanup:                                          ; preds = %s5k6aa_i2c_write.exit15, %s5k6aa_i2c_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i14, %s5k6aa_i2c_write.exit15 ], [ %spec.select.i, %s5k6aa_i2c_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k6aa_read(ptr noundef %client, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %wbuf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %rbuf.i = alloca [2 x i8], align 2
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %0, align 1
  %5 = lshr i16 %addr, 8
  %conv7.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7.i, ptr %1, align 1
  %conv11.i = trunc i16 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11.i, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp sgt i32 %8, 2
  br i1 %cmp.i, label %do.end.i, label %entry.s5k6aa_i2c_write.exit_crit_edge

entry.s5k6aa_i2c_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i16 %addr to i32
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 46, i32 noundef %conv5.i) #11
  br label %s5k6aa_i2c_write.exit

s5k6aa_i2c_write.exit:                            ; preds = %do.end.i, %entry.s5k6aa_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %call.i.i, 4
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %if.end, label %s5k6aa_i2c_write.exit.cleanup_crit_edge

s5k6aa_i2c_write.exit.cleanup_crit_edge:          ; preds = %s5k6aa_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %s5k6aa_i2c_write.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #8
  %9 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %10 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %wbuf.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 18, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rbuf.i) #8
  %14 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %rbuf.i, align 2, !annotation !158
  %15 = getelementptr inbounds [2 x i8], ptr %rbuf.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !158
  %addr4.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr4.i, align 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %12, align 4
  %buf.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wbuf.i, ptr %buf.i4, align 4
  %arrayidx10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %arrayidx10.i, align 4
  %flags13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags13.i, align 2
  %len15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %len15.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %len15.i, align 4
  %buf18.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %buf18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rbuf.i, ptr %buf18.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  %29 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rbuf.i, align 2
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %val, align 2
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i5 = icmp sgt i32 %32, 2
  br i1 %cmp.i5, label %do.end.i7, label %if.end.s5k6aa_i2c_read.exit_crit_edge

if.end.s5k6aa_i2c_read.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_i2c_read.exit

do.end.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i6 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %conv25.i = zext i16 %30 to i32
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i6, i32 noundef 3858, i32 noundef %conv25.i) #11
  br label %s5k6aa_i2c_read.exit

s5k6aa_i2c_read.exit:                             ; preds = %do.end.i7, %if.end.s5k6aa_i2c_read.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp29.i = icmp eq i32 %call.i, 2
  %spec.select.i8 = select i1 %cmp29.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %s5k6aa_i2c_read.exit, %s5k6aa_i2c_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i8, %s5k6aa_i2c_read.exit ], [ %spec.select.i, %s5k6aa_i2c_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %error.i.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %streaming, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %lnot = xor i1 %tobool, true
  %1 = zext i1 %lnot to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %1)
  %cmp = icmp eq i8 %bf.lshr, %1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.end.thread, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %preset = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 16
  %3 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %preset, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %index.i = getelementptr inbounds %struct.s5k6aa_preset, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index.i, align 1
  %fiv.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 17
  %9 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fiv.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 665, i16 %12)
  %cmp.i = icmp ugt i16 %12, 665
  %..i = select i1 %cmp.i, i16 1, i16 2
  %colorspace.i.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %colorspace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %4, i32 0, i32 2
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %14, label %if.then6.for.inc.2.i.i.i_crit_edge [
    i32 7, label %land.lhs.true.i.i.i
    i32 3, label %land.lhs.true.1.i.i.i
  ]

if.then6.for.inc.2.i.i.i_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %17)
  %switch.selectcmp.i.i = icmp eq i32 %17, 4103
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %17)
  %switch.selectcmp35.i.i = icmp eq i32 %17, 8200
  %switch.select36.i.i = select i1 %switch.selectcmp35.i.i, i32 0, i32 %switch.select.i.i
  br label %s5k6aa_get_pixfmt_index.exit.i.i

land.lhs.true.1.i.i.i:                            ; preds = %if.then6
  %18 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %19)
  %cmp5.1.i.i.i = icmp eq i32 %19, 8200
  br i1 %cmp5.1.i.i.i, label %land.lhs.true.1.i.i.i.s5k6aa_get_pixfmt_index.exit.i.i_crit_edge, label %land.lhs.true.1.i.i.i.for.inc.2.i.i.i_crit_edge

land.lhs.true.1.i.i.i.for.inc.2.i.i.i_crit_edge:  ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i.i

land.lhs.true.1.i.i.i.s5k6aa_get_pixfmt_index.exit.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_get_pixfmt_index.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %land.lhs.true.1.i.i.i.for.inc.2.i.i.i_crit_edge, %if.then6.for.inc.2.i.i.i_crit_edge
  br label %s5k6aa_get_pixfmt_index.exit.i.i

s5k6aa_get_pixfmt_index.exit.i.i:                 ; preds = %for.inc.2.i.i.i, %land.lhs.true.1.i.i.i.s5k6aa_get_pixfmt_index.exit.i.i_crit_edge, %land.lhs.true.i.i.i
  %retval.0.i.i.i = phi i32 [ 1, %land.lhs.true.1.i.i.i.s5k6aa_get_pixfmt_index.exit.i.i_crit_edge ], [ 0, %for.inc.2.i.i.i ], [ %switch.select36.i.i, %land.lhs.true.i.i.i ]
  %conv.i.i = zext i8 %8 to i16
  %mul.i.i = mul nuw nsw i16 %conv.i.i, 38
  %add.i.i = add nuw nsw i16 %mul.i.i, 578
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  %conv4.i.i = trunc i32 %21 to i16
  %call5.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %add.i.i, i16 noundef zeroext %conv4.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %s5k6aa_get_pixfmt_index.exit.i.i.do.body.i_crit_edge

s5k6aa_get_pixfmt_index.exit.i.i.do.body.i_crit_edge: ; preds = %s5k6aa_get_pixfmt_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.i:                                       ; preds = %s5k6aa_get_pixfmt_index.exit.i.i
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index.i, align 1
  %conv7.i.i = zext i8 %23 to i16
  %mul8.i.i = mul nuw nsw i16 %conv7.i.i, 38
  %add9.i.i = add nuw nsw i16 %mul8.i.i, 580
  %height.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %4, i32 0, i32 1
  %24 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height.i.i, align 4
  %conv12.i.i = trunc i32 %25 to i16
  %call13.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %add9.i.i, i16 noundef zeroext %conv12.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %s5k6aa_set_output_framefmt.exit.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

s5k6aa_set_output_framefmt.exit.i:                ; preds = %if.end.i.i
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index.i, align 1
  %conv17.i.i = zext i8 %27 to i16
  %mul18.i.i = mul nuw nsw i16 %conv17.i.i, 38
  %add19.i.i = add nuw nsw i16 %mul18.i.i, 582
  %reg_p_fmt.i.i = getelementptr [3 x %struct.s5k6aa_pixfmt], ptr @s5k6aa_formats, i32 0, i32 %retval.0.i.i.i, i32 2
  %28 = ptrtoint ptr %reg_p_fmt.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg_p_fmt.i.i, align 4
  %call21.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %add19.i.i, i16 noundef zeroext %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool.not.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %s5k6aa_set_output_framefmt.exit.i.do.body.i_crit_edge

s5k6aa_set_output_framefmt.exit.i.do.body.i_crit_edge: ; preds = %s5k6aa_set_output_framefmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end7.i:                                        ; preds = %s5k6aa_set_output_framefmt.exit.i
  %conv5.i = add nuw nsw i16 %mul.i.i, 584
  %pclk_fmax.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 10
  %30 = ptrtoint ptr %pclk_fmax.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pclk_fmax.i, align 4
  %call6.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv5.i, i16 noundef zeroext %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %if.end14.i, label %if.end7.i.do.body.i_crit_edge

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end14.i:                                       ; preds = %if.end7.i
  %conv12.i = add nuw nsw i16 %mul.i.i, 586
  %pclk_fmin.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 9
  %32 = ptrtoint ptr %pclk_fmin.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pclk_fmin.i, align 2
  %call13.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv12.i, i16 noundef zeroext %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.end14.i.do.body.i_crit_edge

if.end14.i.do.body.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end22.i:                                       ; preds = %if.end14.i
  %conv19.i = add nuw nsw i16 %mul.i.i, 590
  %clk_id.i = getelementptr inbounds %struct.s5k6aa_preset, ptr %4, i32 0, i32 1
  %34 = ptrtoint ptr %clk_id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %clk_id.i, align 4
  %conv20.i = zext i8 %35 to i16
  %call21.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv19.i, i16 noundef zeroext %conv20.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool23.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool23.not.i, label %if.end29.i, label %if.end22.i.do.body.i_crit_edge

if.end22.i.do.body.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end29.i:                                       ; preds = %if.end22.i
  %conv27.i = add nuw nsw i16 %mul.i.i, 592
  %call28.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv27.i, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool30.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %if.end29.i.do.body.i_crit_edge

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end36.i:                                       ; preds = %if.end29.i
  %conv34.i = add nuw nsw i16 %mul.i.i, 594
  %call35.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv34.i, i16 noundef zeroext %..i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool37.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool37.not.i, label %if.end48.i, label %if.end36.i.do.body.i_crit_edge

if.end36.i.do.body.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end48.i:                                       ; preds = %if.end36.i
  %conv41.i = add nuw nsw i16 %mul.i.i, 596
  %36 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fiv.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 4
  %add45.i = add i16 %39, 33
  %call47.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv41.i, i16 noundef zeroext %add45.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool49.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool49.not.i, label %if.end59.i, label %if.end48.i.do.body.i_crit_edge

if.end48.i.do.body.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end59.i:                                       ; preds = %if.end48.i
  %conv53.i = add nuw nsw i16 %mul.i.i, 598
  %40 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fiv.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  %sub.i = add i16 %43, -33
  %call58.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext %conv53.i, i16 noundef zeroext %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool60.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end59.i.do.body.i_crit_edge

if.end59.i.do.body.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #8
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %reg.i.i, align 2
  %call1.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext 540, i16 noundef zeroext %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i120.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i120.i, label %if.end.i121.i, label %if.then61.i.if.end6.i.i_crit_edge

if.then61.i.if.end6.i.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.end.i121.i:                                    ; preds = %if.then61.i
  %call2.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext 542, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i121.i.if.end6.i.i_crit_edge

if.end.i121.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i122.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %6, i16 noundef zeroext 504, i16 noundef zeroext 1) #8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i121.i.if.end6.i.i_crit_edge, %if.then61.i.if.end6.i.i_crit_edge
  %ret.1.i123.i = phi i32 [ %call2.i.i, %if.end.i121.i.if.end6.i.i_crit_edge ], [ %call5.i122.i, %if.then4.i.i ], [ %call1.i.i, %if.then61.i.if.end6.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.i123.i)
  %cmp104.i.i = icmp sgt i32 %ret.1.i123.i, -1
  br i1 %cmp104.i.i, label %land.rhs.lr.ph.i.i, label %if.end6.i.i.if.end63.thread146.i_crit_edge

if.end6.i.i.if.end63.thread146.i_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.thread146.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end6.i.i
  %add.neg.i.i = sub i32 -25, %44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i163.i = add i32 %46, %add.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i163.i)
  %cmp12.i164.i = icmp slt i32 %sub.i163.i, 0
  br i1 %cmp12.i164.i, label %land.rhs.lr.ph.i.i.while.body.i.i_crit_edge, label %land.rhs.lr.ph.i.i.while.end.i.i_crit_edge

land.rhs.lr.ph.i.i.while.end.i.i_crit_edge:       ; preds = %land.rhs.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

land.rhs.lr.ph.i.i.while.body.i.i_crit_edge:      ; preds = %land.rhs.lr.ph.i.i
  br label %while.body.i.i

land.rhs.i.i:                                     ; preds = %if.end17.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %47, %add.neg.i.i
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp12.i.i, label %land.rhs.i.i.while.body.i.i_crit_edge, label %land.rhs.i.i.while.end.i.i_crit_edge

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i.while.body.i.i_crit_edge, %land.rhs.lr.ph.i.i.while.body.i.i_crit_edge
  %call14.i.i = call fastcc i32 @s5k6aa_read(ptr noundef %6, i16 noundef zeroext 504, ptr noundef nonnull %reg.i.i) #8
  %48 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reg.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool15.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool15.not.i.i, label %if.then65.i, label %if.end17.i.i

if.end17.i.i:                                     ; preds = %while.body.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14.i.i)
  %cmp10.i.i = icmp sgt i32 %call14.i.i, -1
  br i1 %cmp10.i.i, label %land.rhs.i.i, label %if.end17.i.i.if.end63.thread146.i_crit_edge

if.end17.i.i.if.end63.thread146.i_crit_edge:      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.thread146.i

while.end.i.i:                                    ; preds = %land.rhs.i.i.while.end.i.i_crit_edge, %land.rhs.lr.ph.i.i.while.end.i.i_crit_edge
  %ret.25.i.lcssa.i = phi i32 [ %ret.1.i123.i, %land.rhs.lr.ph.i.i.while.end.i.i_crit_edge ], [ %call14.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.25.i.lcssa.i)
  %tobool18.not.i.i = icmp eq i32 %ret.25.i.lcssa.i, 0
  %spec.select.i = select i1 %tobool18.not.i.i, i32 -110, i32 %ret.25.i.lcssa.i
  br label %if.end63.thread146.i

if.end63.thread146.i:                             ; preds = %while.end.i.i, %if.end17.i.i.if.end63.thread146.i_crit_edge, %if.end6.i.i.if.end63.thread146.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %ret.1.i123.i, %if.end6.i.i.if.end63.thread146.i_crit_edge ], [ %spec.select.i, %while.end.i.i ], [ %call14.i.i, %if.end17.i.i.if.end63.thread146.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #8
  br label %do.body.i

if.then65.i:                                      ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %error.i.i) #8
  %50 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %error.i.i, align 2
  %call.i.i = call fastcc i32 @s5k6aa_read(ptr noundef %6, i16 noundef zeroext 546, ptr noundef nonnull %error.i.i) #8
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp sgt i32 %51, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then65.i.do.end4.i.i_crit_edge

if.then65.i.do.end4.i.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 2
  %52 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %error.i.i, align 2
  %conv.i124.i = zext i16 %53 to i32
  %call2.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i.i, i32 noundef %conv.i124.i, i32 noundef %call.i.i) #11
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.then65.i.do.end4.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i126.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i126.i, label %cond.false.i.i, label %do.end4.i.i.if.end67.thread155.i_crit_edge

do.end4.i.i.if.end67.thread155.i_crit_edge:       ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread155.i

cond.false.i.i:                                   ; preds = %do.end4.i.i
  %54 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %error.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool6.not.i.i = icmp eq i16 %55, 0
  br i1 %tobool6.not.i.i, label %if.then69.i, label %cond.false.i.i.if.end67.thread155.i_crit_edge

cond.false.i.i.if.end67.thread155.i_crit_edge:    ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread155.i

if.end67.thread155.i:                             ; preds = %cond.false.i.i.if.end67.thread155.i_crit_edge, %do.end4.i.i.if.end67.thread155.i_crit_edge
  %cond7.i.ph.i = phi i32 [ %call.i.i, %do.end4.i.i.if.end67.thread155.i_crit_edge ], [ -22, %cond.false.i.i.if.end67.thread155.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %error.i.i) #8
  br label %do.body.i

if.then69.i:                                      ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %error.i.i) #8
  %56 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %streaming, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %streaming, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then69.i, %if.end67.thread155.i, %if.end63.thread146.i, %if.end59.i.do.body.i_crit_edge, %if.end48.i.do.body.i_crit_edge, %if.end36.i.do.body.i_crit_edge, %if.end29.i.do.body.i_crit_edge, %if.end22.i.do.body.i_crit_edge, %if.end14.i.do.body.i_crit_edge, %if.end7.i.do.body.i_crit_edge, %s5k6aa_set_output_framefmt.exit.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge, %s5k6aa_get_pixfmt_index.exit.i.i.do.body.i_crit_edge
  %ret.8151.i = phi i32 [ 0, %if.then69.i ], [ %cond7.i.ph.i, %if.end67.thread155.i ], [ %retval.0.i.ph.i, %if.end63.thread146.i ], [ %call58.i, %if.end59.i.do.body.i_crit_edge ], [ %call47.i, %if.end48.i.do.body.i_crit_edge ], [ %call35.i, %if.end36.i.do.body.i_crit_edge ], [ %call28.i, %if.end29.i.do.body.i_crit_edge ], [ %call21.i, %if.end22.i.do.body.i_crit_edge ], [ %call13.i, %if.end14.i.do.body.i_crit_edge ], [ %call6.i, %if.end7.i.do.body.i_crit_edge ], [ %call21.i.i, %s5k6aa_set_output_framefmt.exit.i.do.body.i_crit_edge ], [ %call5.i.i, %s5k6aa_get_pixfmt_index.exit.i.i.do.body.i_crit_edge ], [ %call13.i.i, %if.end.i.i.do.body.i_crit_edge ]
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp71.i = icmp sgt i32 %57, 0
  br i1 %cmp71.i, label %do.end.i, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 2
  %58 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fiv.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 4
  %conv77.i = zext i16 %61 to i32
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %conv77.i, i32 noundef %ret.8151.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.body.i.if.end_crit_edge
  %62 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load8 = load i8, ptr %streaming, align 4
  %63 = and i8 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool12.not = icmp eq i8 %63, 0
  br i1 %tobool12.not, label %if.end15, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end.thread:                                    ; preds = %land.lhs.true
  %64 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load859 = load i8, ptr %streaming, align 4
  %65 = and i8 %bf.load859, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool12.not60 = icmp eq i8 %65, 0
  br i1 %tobool12.not60, label %if.end.thread.if.then17_crit_edge, label %if.end.thread.if.then13_crit_edge

if.end.thread.if.then13_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end.thread.if.then17_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then13:                                        ; preds = %if.end.thread.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %dev_priv.i.i38 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %66 = ptrtoint ptr %dev_priv.i.i38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i38, align 4
  %ccd_rect.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13
  %width.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13, i32 2
  %68 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %width.i, align 4
  %conv.i = trunc i32 %69 to i16
  %call1.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %67, i16 noundef zeroext 522, i16 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i39 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i39, label %if.end.i, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end.i:                                         ; preds = %if.then13
  %height.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13, i32 3
  %70 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height.i, align 4
  %conv2.i = trunc i32 %71 to i16
  %call3.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %67, i16 noundef zeroext 524, i16 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %if.end.i.if.end25_crit_edge

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end8.i:                                        ; preds = %if.end.i
  %72 = ptrtoint ptr %ccd_rect.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ccd_rect.i, align 4
  %conv6.i = trunc i32 %73 to i16
  %call7.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %67, i16 noundef zeroext 526, i16 noundef zeroext %conv6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not.i, label %if.end13.i, label %if.end8.i.if.end25_crit_edge

if.end8.i.if.end25_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end13.i:                                       ; preds = %if.end8.i
  %top.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %top.i, align 4
  %conv11.i = trunc i32 %75 to i16
  %call12.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %67, i16 noundef zeroext 528, i16 noundef zeroext %conv11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool14.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.end13.i.if.end25_crit_edge

if.end13.i.if.end25_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end17.i:                                       ; preds = %if.end13.i
  %call16.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %67, i16 noundef zeroext 538, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool18.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool18.not.i, label %if.end15.thread51, label %if.end17.i.if.end25_crit_edge

if.end17.i.if.end25_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end15.thread51:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i40 = load i8, ptr %streaming, align 4
  %bf.clear.i41 = and i8 %bf.load.i40, -33
  store i8 %bf.clear.i41, ptr %streaming, align 4
  br label %if.then17

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.8151.i)
  %tobool16.not = icmp eq i32 %ret.8151.i, 0
  br i1 %tobool16.not, label %if.end15.if.then17_crit_edge, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.end15.thread51, %if.end.thread.if.then17_crit_edge
  %dev_priv.i.i42 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %77 = ptrtoint ptr %dev_priv.i.i42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i42, align 4
  %conv.i43 = zext i1 %tobool to i16
  %call1.i44 = tail call fastcc i32 @s5k6aa_write(ptr noundef %78, i16 noundef zeroext 496, i16 noundef zeroext %conv.i43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end.i46:                                       ; preds = %if.then17
  %call2.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %78, i16 noundef zeroext 498, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i46.if.end25_crit_edge

if.end.i46.if.end25_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then4.i:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i47 = load i8, ptr %streaming, align 4
  %bf.shl.i = select i1 %tobool, i8 -128, i8 0
  %bf.clear.i48 = and i8 %bf.load.i47, 127
  %bf.set.i = or i8 %bf.clear.i48, %bf.shl.i
  store i8 %bf.set.i, ptr %streaming, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then4.i, %if.end.i46.if.end25_crit_edge, %if.then17.if.end25_crit_edge, %if.end15.if.end25_crit_edge, %if.end17.i.if.end25_crit_edge, %if.end13.i.if.end25_crit_edge, %if.end8.i.if.end25_crit_edge, %if.end.i.if.end25_crit_edge, %if.then13.if.end25_crit_edge, %entry.if.end25_crit_edge
  %ret.2 = phi i32 [ %ret.8151.i, %if.end15.if.end25_crit_edge ], [ 0, %entry.if.end25_crit_edge ], [ 0, %if.then4.i ], [ %call2.i, %if.end.i46.if.end25_crit_edge ], [ %call1.i44, %if.then17.if.end25_crit_edge ], [ %call1.i, %if.then13.if.end25_crit_edge ], [ %call3.i, %if.end.i.if.end25_crit_edge ], [ %call7.i, %if.end8.i.if.end25_crit_edge ], [ %call12.i, %if.end13.i.if.end25_crit_edge ], [ %call16.i, %if.end17.i.if.end25_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %fiv = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 17
  %0 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fiv, align 4
  %interval1 = getelementptr inbounds %struct.s5k6aa_interval, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %interval1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %interval1, align 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_s_frame_interval(ptr noundef %sd, ptr nocapture noundef readonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %1 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %denominator, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %2, i32 noundef %4) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call6 = tail call fastcc i32 @__s5k6aa_set_frame_interval(ptr noundef %sd, ptr noundef %fi)
  %apply_cfg = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 18
  %5 = ptrtoint ptr %apply_cfg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %apply_cfg, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %apply_cfg, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5k6aa_set_frame_interval(ptr noundef %s5k6aa, ptr nocapture noundef readonly %fi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.end:                                           ; preds = %entry
  %preset = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 16
  %2 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preset, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  %mul = mul i32 %5, 10000
  %div = udiv i32 %mul, %1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %7)
  %cmp7 = icmp ugt i32 %7, 1280
  br i1 %cmp7, label %if.end.cleanup.4_crit_edge, label %lor.lhs.false

if.end.cleanup.4_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %9)
  %cmp10 = icmp ugt i32 %9, 1024
  br i1 %cmp10, label %lor.lhs.false.cleanup.2_crit_edge, label %lor.lhs.false.2

lor.lhs.false.cleanup.2_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %sub = sub i32 1000, %div
  %10 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub.1 = sub i32 666, %div
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp16.1 = icmp ult i32 %11, %10
  %fiv.1.1 = select i1 %cmp16.1, ptr getelementptr inbounds ([5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 1), ptr @s5k6aa_intervals
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %10)
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %.pr)
  %cmp10.2 = icmp ugt i32 %.pr, 720
  br i1 %cmp10.2, label %lor.lhs.false.2.cleanup.2_crit_edge, label %if.end12.2

lor.lhs.false.2.cleanup.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end12.2:                                       ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub.2 = sub i32 500, %div
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp16.2 = icmp ult i32 %14, %12
  %fiv.1.2 = select i1 %cmp16.2, ptr getelementptr inbounds ([5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 2), ptr %fiv.1.1
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %12)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end12.2, %lor.lhs.false.2.cleanup.2_crit_edge, %lor.lhs.false.cleanup.2_crit_edge
  %fiv.2.2 = phi ptr [ %fiv.1.2, %if.end12.2 ], [ %fiv.1.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ @s5k6aa_intervals, %lor.lhs.false.cleanup.2_crit_edge ]
  %min_err.2.2 = phi i32 [ %15, %if.end12.2 ], [ %12, %lor.lhs.false.2.cleanup.2_crit_edge ], [ -1, %lor.lhs.false.cleanup.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp7.3 = icmp ugt i32 %7, 640
  br i1 %cmp7.3, label %cleanup.2.cleanup.4_crit_edge, label %lor.lhs.false.3

cleanup.2.cleanup.4_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

lor.lhs.false.3:                                  ; preds = %cleanup.2
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %17)
  %cmp10.3 = icmp ugt i32 %17, 480
  br i1 %cmp10.3, label %lor.lhs.false.3.cleanup.4_crit_edge, label %lor.lhs.false.4

lor.lhs.false.3.cleanup.4_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.3
  %sub.3 = sub i32 400, %div
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %min_err.2.2)
  %cmp16.3 = icmp ult i32 %18, %min_err.2.2
  %fiv.1.3 = select i1 %cmp16.3, ptr getelementptr inbounds ([5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 3), ptr %fiv.2.2
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr80 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %.pr80)
  %cmp10.4 = icmp ugt i32 %.pr80, 480
  br i1 %cmp10.4, label %lor.lhs.false.4.cleanup.4_crit_edge, label %if.end12.4

lor.lhs.false.4.cleanup.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

if.end12.4:                                       ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.umin.i32(i32 %18, i32 %min_err.2.2)
  %sub.4 = sub i32 333, %div
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp16.4 = icmp ult i32 %21, %20
  %fiv.1.4 = select i1 %cmp16.4, ptr getelementptr inbounds ([5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 4), ptr %fiv.1.3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end12.4, %lor.lhs.false.4.cleanup.4_crit_edge, %lor.lhs.false.3.cleanup.4_crit_edge, %cleanup.2.cleanup.4_crit_edge, %if.end.cleanup.4_crit_edge
  %fiv.2.4 = phi ptr [ %fiv.1.4, %if.end12.4 ], [ %fiv.1.3, %lor.lhs.false.4.cleanup.4_crit_edge ], [ @s5k6aa_intervals, %if.end.cleanup.4_crit_edge ], [ %fiv.2.2, %cleanup.2.cleanup.4_crit_edge ], [ %fiv.2.2, %lor.lhs.false.3.cleanup.4_crit_edge ]
  %fiv20 = getelementptr inbounds %struct.s5k6aa, ptr %s5k6aa, i32 0, i32 17
  %22 = ptrtoint ptr %fiv20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fiv.2.4, ptr %fiv20, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21 = icmp sgt i32 %23, 0
  br i1 %cmp21, label %do.end, label %cleanup.4.cleanup32_crit_edge

cleanup.4.cleanup32_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

do.end:                                           ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %s5k6aa, i32 0, i32 9
  %24 = ptrtoint ptr %fiv.2.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fiv.2.4, align 4
  %conv27 = zext i16 %25 to i32
  %mul28 = mul nuw nsw i32 %conv27, 100
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %mul28) #11
  br label %cleanup32

cleanup32:                                        ; preds = %do.end, %cleanup.4.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup32_crit_edge ], [ 0, %do.end ], [ 0, %cleanup.4.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5k6aa_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [3 x %struct.s5k6aa_pixfmt], ptr @s5k6aa_formats, i32 0, i32 %1
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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %3)
  %cmp2 = icmp eq i32 %3, 4103
  br i1 %cmp2, label %while.cond.preheader.while.end_crit_edge, label %while.cond.1

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.1:                                     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %5)
  %cmp2.1 = icmp eq i32 %5, 8200
  %spec.select = zext i1 %cmp2.1 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.1, %while.cond.preheader.while.end_crit_edge
  %dec.lcssa = phi i32 [ 2, %while.cond.preheader.while.end_crit_edge ], [ %spec.select, %while.cond.1 ]
  %arrayidx5 = getelementptr [3 x %struct.s5k6aa_pixfmt], ptr @s5k6aa_formats, i32 0, i32 %dec.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %code, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %9 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %10 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1280, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_enum_frame_interval(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %fie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 8, i32 noundef 1280, i32 noundef 1, ptr noundef %height, i32 noundef 8, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %size = getelementptr [5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 %3, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp ugt i32 %5, %7
  br i1 %cmp4, label %if.end.if.end11_crit_edge, label %lor.lhs.false

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height7 = getelementptr [5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 %3, i32 2, i32 1
  %10 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8 = icmp ugt i32 %9, %11
  br i1 %cmp8, label %lor.lhs.false.if.end11_crit_edge, label %if.else

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %interval10 = getelementptr [5 x %struct.s5k6aa_interval], ptr @s5k6aa_intervals, i32 0, i32 %3, i32 1
  %12 = ptrtoint ptr %interval10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %interval10, align 4
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %interval, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %lor.lhs.false.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %lor.lhs.false.if.end11_crit_edge ], [ -22, %if.end.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not.i.not = icmp eq i16 %4, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, !prof !159

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %format, ptr %6, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %preset = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 16
  %8 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %preset, align 4
  %10 = call ptr @memcpy(ptr %format2, ptr %9, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  %fiv = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %preset1 = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %preset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %preset1, align 4
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 8, i32 noundef 1280, i32 noundef 1, ptr noundef %height.i, i32 noundef 8, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %colorspace.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %if.end.thread.i [
    i32 7, label %entry.if.end.i_crit_edge
    i32 3, label %entry.if.end.i_crit_edge122
  ]

entry.if.end.i_crit_edge122:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code.i1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  br label %land.lhs.true.i.i

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge122
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.end.i.for.inc.2.i.i_crit_edge [
    i32 7, label %if.end.i.land.lhs.true.i.i_crit_edge
    i32 3, label %land.lhs.true.1.i.i
  ]

if.end.i.land.lhs.true.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.end.i.for.inc.2.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.land.lhs.true.i.i_crit_edge, %if.end.thread.i
  %code.i2.i = phi ptr [ %code.i1.i, %if.end.thread.i ], [ %code.i.i, %if.end.i.land.lhs.true.i.i_crit_edge ]
  %6 = ptrtoint ptr %code.i2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code.i2.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %7, label %land.lhs.true.i.i.for.inc.2.i.i_crit_edge [
    i32 8200, label %land.lhs.true.i.i.s5k6aa_try_format.exit_crit_edge
    i32 4103, label %s5k6aa_get_pixfmt_index.exit.fold.split.i
  ]

land.lhs.true.i.i.s5k6aa_try_format.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_try_format.exit

land.lhs.true.i.i.for.inc.2.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end.i
  %9 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %10)
  %cmp5.1.i.i = icmp eq i32 %10, 8200
  br i1 %cmp5.1.i.i, label %land.lhs.true.1.i.i.s5k6aa_try_format.exit_crit_edge, label %land.lhs.true.1.i.i.for.inc.2.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.1.i.i.s5k6aa_try_format.exit_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_try_format.exit

for.inc.2.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.2.i.i_crit_edge, %land.lhs.true.i.i.for.inc.2.i.i_crit_edge, %if.end.i.for.inc.2.i.i_crit_edge
  %code.i3.i = phi ptr [ %code.i.i, %land.lhs.true.1.i.i.for.inc.2.i.i_crit_edge ], [ %code.i.i, %if.end.i.for.inc.2.i.i_crit_edge ], [ %code.i2.i, %land.lhs.true.i.i.for.inc.2.i.i_crit_edge ]
  br label %s5k6aa_try_format.exit

s5k6aa_get_pixfmt_index.exit.fold.split.i:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_try_format.exit

s5k6aa_try_format.exit:                           ; preds = %s5k6aa_get_pixfmt_index.exit.fold.split.i, %for.inc.2.i.i, %land.lhs.true.1.i.i.s5k6aa_try_format.exit_crit_edge, %land.lhs.true.i.i.s5k6aa_try_format.exit_crit_edge
  %code.i4.i = phi ptr [ %code.i2.i, %land.lhs.true.i.i.s5k6aa_try_format.exit_crit_edge ], [ %code.i.i, %land.lhs.true.1.i.i.s5k6aa_try_format.exit_crit_edge ], [ %code.i3.i, %for.inc.2.i.i ], [ %code.i2.i, %s5k6aa_get_pixfmt_index.exit.fold.split.i ]
  %retval.0.i.i = phi i32 [ 0, %land.lhs.true.i.i.s5k6aa_try_format.exit_crit_edge ], [ 1, %land.lhs.true.1.i.i.s5k6aa_try_format.exit_crit_edge ], [ 0, %for.inc.2.i.i ], [ 2, %s5k6aa_get_pixfmt_index.exit.fold.split.i ]
  %arrayidx.i = getelementptr [3 x %struct.s5k6aa_pixfmt], ptr @s5k6aa_formats, i32 0, i32 %retval.0.i.i
  %colorspace4.i = getelementptr [3 x %struct.s5k6aa_pixfmt], ptr @s5k6aa_formats, i32 0, i32 %retval.0.i.i, i32 1
  %11 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace4.i, align 4
  %13 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %colorspace.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %code.i4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %code.i4.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field.i, align 4
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %s5k6aa_try_format.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %21, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !160

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %24 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr = load i16, ptr %num_pads.i, align 4
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %25 = phi i16 [ %23, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ], [ %.pr, %do.end.i ]
  %spec.select.i = phi i32 [ %21, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ], [ 0, %do.end.i ]
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %arrayidx.i112 = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i = icmp eq i16 %25, 0
  br i1 %cmp.i, label %do.end.i115, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !159

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit

do.end.i115:                                      ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i115, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %29, i32 0, i32 1
  br label %if.then9

if.else:                                          ; preds = %s5k6aa_try_format.exit
  %streaming = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 18
  %30 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else5, label %if.else.if.end64_crit_edge

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ccd_rect = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13
  %bf.set = or i8 %bf.load, 64
  %31 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.then9

if.then9:                                         ; preds = %if.else5, %v4l2_subdev_get_try_crop.exit
  %crop.0.ph = phi ptr [ %try_crop.i, %v4l2_subdev_get_try_crop.exit ], [ %ccd_rect, %if.else5 ]
  %mf.0.ph = phi ptr [ %arrayidx.i112, %v4l2_subdev_get_try_crop.exit ], [ %1, %if.else5 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fiv) #8
  %32 = call ptr @memset(ptr %fiv, i32 0, i32 48)
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fiv, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 4
  %35 = call ptr @memcpy(ptr %mf.0.ph, ptr %format, i32 48)
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %crop.0.ph, i32 0, i32 2
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %38 = ptrtoint ptr %mf.0.ph to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mf.0.ph, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %37, i32 %39)
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 1280)
  %42 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %crop.0.ph, i32 0, i32 3
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %height20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0.ph, i32 0, i32 1
  %45 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height20, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %44, i32 %46)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 1024)
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height, align 4
  %50 = ptrtoint ptr %crop.0.ph to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crop.0.ph, align 4
  %sub = sub nuw nsw i32 1280, %41
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %sub)
  %53 = ptrtoint ptr %crop.0.ph to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %crop.0.ph, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %crop.0.ph, i32 0, i32 1
  %54 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %top, align 4
  %sub55 = sub nuw nsw i32 1024, %48
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %sub55)
  %57 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %top, align 4
  %call63 = call fastcc i32 @__s5k6aa_set_frame_interval(ptr noundef %sd, ptr noundef nonnull %fiv)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fiv) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then9, %if.else.if.end64_crit_edge
  %ret.1 = phi i32 [ %call63, %if.then9 ], [ -16, %if.else.if.end64_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reserved = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 5
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %4, label %do.end.i [
    i32 1, label %if.then.i
    i32 0, label %if.end.if.end15.i_crit_edge
  ], !prof !161

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ccd_rect.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13
  br label %__s5k6aa_get_crop_rect.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1067, i32 noundef 9, ptr noundef null) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.if.end15.i_crit_edge
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i.i = icmp eq i16 %7, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end15.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !159

if.end15.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.end15.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %9, i32 0, i32 1
  br label %__s5k6aa_get_crop_rect.exit

__s5k6aa_get_crop_rect.exit:                      ; preds = %v4l2_subdev_get_try_crop.exit.i, %if.then.i
  %retval.0.i = phi ptr [ %ccd_rect.i, %if.then.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ]
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %do.end, label %__s5k6aa_get_crop_rect.exit.cleanup_crit_edge

__s5k6aa_get_crop_rect.exit.cleanup_crit_edge:    ; preds = %__s5k6aa_get_crop_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %__s5k6aa_get_crop_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__s5k6aa_get_crop_rect.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %__s5k6aa_get_crop_rect.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %do.end.i [
    i32 1, label %__s5k6aa_get_crop_rect.exit.thread
    i32 0, label %if.end.if.end15.i_crit_edge
  ], !prof !161

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

__s5k6aa_get_crop_rect.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ccd_rect.i = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 13
  br label %if.then4

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1067, i32 noundef 9, ptr noundef null) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.if.end15.i_crit_edge
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end15.i.__s5k6aa_get_crop_rect.exit_crit_edge, !prof !159

if.end15.i.__s5k6aa_get_crop_rect.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k6aa_get_crop_rect.exit

do.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %__s5k6aa_get_crop_rect.exit

__s5k6aa_get_crop_rect.exit:                      ; preds = %do.end.i.i, %if.end15.i.__s5k6aa_get_crop_rect.exit_crit_edge
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp3 = icmp eq i32 %.pr, 1
  br i1 %cmp3, label %__s5k6aa_get_crop_rect.exit.if.then4_crit_edge, label %if.else

__s5k6aa_get_crop_rect.exit.if.then4_crit_edge:   ; preds = %__s5k6aa_get_crop_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %__s5k6aa_get_crop_rect.exit.if.then4_crit_edge, %__s5k6aa_get_crop_rect.exit.thread
  %retval.0.i95 = phi ptr [ %ccd_rect.i, %__s5k6aa_get_crop_rect.exit.thread ], [ %try_crop.i.i, %__s5k6aa_get_crop_rect.exit.if.then4_crit_edge ]
  %preset = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 16
  %10 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %preset, align 4
  %apply_crop = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 18
  %12 = ptrtoint ptr %apply_crop to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %apply_crop, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %apply_crop, align 4
  br label %if.end6

if.else:                                          ; preds = %__s5k6aa_get_crop_rect.exit
  %13 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i.not = icmp eq i16 %14, 0
  br i1 %cmp.not.i.not, label %do.end.i91, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !159

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i91:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i91, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  br label %if.end6

if.end6:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.then4
  %retval.0.i94 = phi ptr [ %retval.0.i95, %if.then4 ], [ %try_crop.i.i, %v4l2_subdev_get_try_format.exit ]
  %mf.0 = phi ptr [ %11, %if.then4 ], [ %16, %v4l2_subdev_get_try_format.exit ]
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %mf.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mf.0, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %height9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 1
  %19 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height9, align 4
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef %18, i32 noundef 1280, i32 noundef 1, ptr noundef %height, i32 noundef %20, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  %sub = sub i32 1280, %22
  %and = and i32 %sub, -2
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %sub14 = sub i32 1024, %24
  %and15 = and i32 %sub14, -2
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %and)
  %28 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %and15)
  %32 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %top, align 4
  %33 = call ptr @memcpy(ptr %retval.0.i94, ptr %r, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp43 = icmp sgt i32 %34, 0
  br i1 %cmp43, label %do.end, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %35 = ptrtoint ptr %retval.0.i94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retval.0.i94, align 4
  %top48 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i94, i32 0, i32 1
  %37 = ptrtoint ptr %top48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %top48, align 4
  %width49 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i94, i32 0, i32 2
  %39 = ptrtoint ptr %width49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width49, align 4
  %height50 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i94, i32 0, i32 3
  %41 = ptrtoint ptr %height50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height50, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_registered(ptr noundef %sd) #2 align 64 {
entry:
  %api_ver.i = alloca i16, align 2
  %fw_rev.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5k6aa, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @__s5k6aa_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 100) #8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %api_ver.i) #8
  %2 = ptrtoint ptr %api_ver.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %api_ver.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_rev.i) #8
  %3 = ptrtoint ptr %fw_rev.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %fw_rev.i, align 2
  %call1.i = tail call fastcc i32 @s5k6aa_set_ahb_address(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %if.then
  %call2.i = call fastcc i32 @s5k6aa_read(ptr noundef %1, i16 noundef zeroext 302, ptr noundef nonnull %api_ver.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end6.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @s5k6aa_read(ptr noundef %1, i16 noundef zeroext 304, ptr noundef nonnull %fw_rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %do.end14.i, label %if.end6.i.do.end.i_crit_edge

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end6.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %ret.137.i = phi i32 [ %call5.i, %if.end6.i.do.end.i_crit_edge ], [ %call2.i, %if.end.i.do.end.i_crit_edge ], [ %call1.i, %if.then.do.end.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i) #11
  br label %s5k6aa_check_fw_revision.exit

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %name17.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %4 = ptrtoint ptr %api_ver.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %api_ver.i, align 2
  %conv.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %fw_rev.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_rev.i, align 2
  %conv19.i = zext i16 %7 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name17.i, i32 noundef %conv.i, i32 noundef %conv19.i) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i = icmp eq i16 %5, 1
  %cond.i = select i1 %cmp.i, i32 0, i32 -19
  br label %s5k6aa_check_fw_revision.exit

s5k6aa_check_fw_revision.exit:                    ; preds = %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ %ret.137.i, %do.end.i ], [ %cond.i, %do.end14.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_rev.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %api_ver.i) #8
  %call3 = tail call fastcc i32 @__s5k6aa_power_off(ptr noundef %sd)
  br label %if.end

if.end:                                           ; preds = %s5k6aa_check_fw_revision.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.if.end_crit_edge ], [ %retval.0.i, %s5k6aa_check_fw_revision.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %v4l2_subdev_get_try_format.exit, label %v4l2_subdev_get_try_format.exit.thread, !prof !159

v4l2_subdev_get_try_format.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %.pr = load i16, ptr %num_pads.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.i = icmp eq i16 %.pr, 0
  br i1 %cmp.i, label %do.end.i15, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !159

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit

do.end.i15:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i15, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, %v4l2_subdev_get_try_format.exit.thread
  %13 = phi ptr [ %7, %v4l2_subdev_get_try_format.exit.thread ], [ %12, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge ], [ %12, %do.end.i15 ]
  %14 = phi ptr [ %5, %v4l2_subdev_get_try_format.exit.thread ], [ %10, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge ], [ %10, %do.end.i15 ]
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %colorspace, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8200, ptr %code, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 640, ptr %14, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 480, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %width3 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1280, ptr %width3, align 4
  %height4 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %height4, align 4
  %24 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %try_crop.i, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6aa_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %auto_alg.i101 = alloca i16, align 2
  %auto_alg.i = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -272
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 -308
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %6, i32 noundef %8) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power = getelementptr i8, ptr %1, i32 284
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %do.end6.unlock_crit_edge, label %if.end9

do.end6.unlock_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end9:                                          ; preds = %do.end6
  %id10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id10, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %12, label %if.end9.unlock_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963776, label %sw.bb13
    i32 9963807, label %sw.bb17
    i32 9963777, label %sw.bb20
    i32 10094849, label %sw.bb24
    i32 9963796, label %sw.bb27
    i32 9963800, label %sw.bb33
    i32 9963778, label %sw.bb36
    i32 9963803, label %sw.bb40
    i32 9963802, label %sw.bb44
  ]

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

sw.bb:                                            ; preds = %if.end9
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val11, align 4
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #8
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %reg.i, align 2, !annotation !158
  %call2.i = call fastcc i32 @s5k6aa_read(ptr noundef %17, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb.s5k6aa_set_awb.exit_crit_edge

sw.bb.s5k6aa_set_awb.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %if.then.i, label %cond.true.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %gain_red.i = getelementptr i8, ptr %1, i32 188
  %19 = ptrtoint ptr %gain_red.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gain_red.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %22 to i16
  %call4.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 976, i16 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then.i.s5k6aa_set_awb.exit_crit_edge

if.then.i.s5k6aa_set_awb.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

if.end.i:                                         ; preds = %if.then.i
  %call7.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 978, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.s5k6aa_set_awb.exit_crit_edge

if.end.i.s5k6aa_set_awb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

if.end10.i:                                       ; preds = %if.end.i
  %gain_green.i = getelementptr i8, ptr %1, i32 196
  %23 = ptrtoint ptr %gain_green.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gain_green.i, align 4
  %val11.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val11.i, align 4
  %conv12.i = trunc i32 %26 to i16
  %call13.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 980, i16 noundef zeroext %conv12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.end10.i.s5k6aa_set_awb.exit_crit_edge

if.end10.i.s5k6aa_set_awb.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

if.end17.i:                                       ; preds = %if.end10.i
  %call16.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 982, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool18.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end17.i.s5k6aa_set_awb.exit_crit_edge

if.end17.i.s5k6aa_set_awb.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

if.end20.i:                                       ; preds = %if.end17.i
  %gain_blue.i = getelementptr i8, ptr %1, i32 192
  %27 = ptrtoint ptr %gain_blue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gain_blue.i, align 4
  %val21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val21.i, align 4
  %conv22.i = trunc i32 %30 to i16
  %call23.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 984, i16 noundef zeroext %conv22.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end28.i, label %if.end20.i.s5k6aa_set_awb.exit_crit_edge

if.end20.i.s5k6aa_set_awb.exit_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

if.end28.i:                                       ; preds = %if.end20.i
  %call26.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 986, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool29.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool29.not.i, label %cond.false.i, label %if.end28.i.s5k6aa_set_awb.exit_crit_edge

if.end28.i.s5k6aa_set_awb.exit_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_awb.exit

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %reg.i, align 2
  %or.i = or i16 %32, 8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %reg.i, align 2
  %35 = and i16 %34, -9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i16 [ %or.i, %cond.true.i ], [ %35, %cond.false.i ]
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %cond.i, ptr %reg.i, align 2
  %call35.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %17, i16 noundef zeroext 1024, i16 noundef zeroext %cond.i) #8
  br label %s5k6aa_set_awb.exit

s5k6aa_set_awb.exit:                              ; preds = %cond.end.i, %if.end28.i.s5k6aa_set_awb.exit_crit_edge, %if.end20.i.s5k6aa_set_awb.exit_crit_edge, %if.end17.i.s5k6aa_set_awb.exit_crit_edge, %if.end10.i.s5k6aa_set_awb.exit_crit_edge, %if.end.i.s5k6aa_set_awb.exit_crit_edge, %if.then.i.s5k6aa_set_awb.exit_crit_edge, %sw.bb.s5k6aa_set_awb.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i.s5k6aa_set_awb.exit_crit_edge ], [ %call16.i, %if.end17.i.s5k6aa_set_awb.exit_crit_edge ], [ %call26.i, %if.end28.i.s5k6aa_set_awb.exit_crit_edge ], [ %call35.i, %cond.end.i ], [ %call4.i, %if.then.i.s5k6aa_set_awb.exit_crit_edge ], [ %call13.i, %if.end10.i.s5k6aa_set_awb.exit_crit_edge ], [ %call23.i, %if.end20.i.s5k6aa_set_awb.exit_crit_edge ], [ %call2.i, %sw.bb.s5k6aa_set_awb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #8
  br label %unlock

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %38 to i16
  %call16 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 484, i16 noundef zeroext %conv15)
  br label %unlock

sw.bb17:                                          ; preds = %if.end9
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val18, align 4
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %43 = icmp ult i32 %40, 7
  br i1 %43, label %switch.hole_check, label %sw.bb17.unlock_crit_edge

sw.bb17.unlock_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

switch.hole_check:                                ; preds = %sw.bb17
  %switch.maskindex = trunc i32 %40 to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %44 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %switch.lobit.not = icmp eq i8 %44, 0
  br i1 %switch.lobit.not, label %switch.hole_check.unlock_crit_edge, label %switch.lookup

switch.hole_check.unlock_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.s5k6aa_s_ctrl, i32 0, i32 %40
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %value.i = getelementptr [6 x %struct.v4l2_control], ptr @s5k6aa_set_colorfx.colorfx, i32 0, i32 %switch.load, i32 1
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value.i, align 4
  %conv.i86 = trunc i32 %47 to i16
  %call3.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %42, i16 noundef zeroext 494, i16 noundef zeroext %conv.i86) #8
  br label %unlock

sw.bb20:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %49 to i16
  %call23 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 486, i16 noundef zeroext %conv22)
  br label %unlock

sw.bb24:                                          ; preds = %if.end9
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val25, align 4
  %52 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i, align 4
  %exposure.i = getelementptr i8, ptr %1, i32 212
  %54 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %exposure.i, align 4
  %val.i90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %val.i90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i90, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %auto_alg.i) #8
  %58 = ptrtoint ptr %auto_alg.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %auto_alg.i, align 2, !annotation !158
  %call1.i = call fastcc i32 @s5k6aa_read(ptr noundef %53, i16 noundef zeroext 1024, ptr noundef nonnull %auto_alg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i91 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i91, label %do.body.i, label %sw.bb24.s5k6aa_set_auto_exposure.exit_crit_edge

sw.bb24.s5k6aa_set_auto_exposure.exit_crit_edge:  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

do.body.i:                                        ; preds = %sw.bb24
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i = icmp sgt i32 %59, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 2
  %60 = ptrtoint ptr %auto_alg.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %auto_alg.i, align 2
  %conv.i92 = zext i16 %61 to i32
  %call4.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name.i, i32 noundef %57, i32 noundef %51, i32 noundef %conv.i92) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp8.i = icmp eq i32 %51, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %auto_alg.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %auto_alg.i, align 2
  %64 = or i16 %63, 6
  br label %if.end25.i

if.else.i:                                        ; preds = %do.end7.i
  %div.i.i = sdiv i32 %57, 10
  %conv.i.i = trunc i32 %div.i.i to i16
  %call.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 966, i16 noundef zeroext %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.s5k6aa_set_auto_exposure.exit_crit_edge

if.else.i.s5k6aa_set_auto_exposure.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

if.end.i.i:                                       ; preds = %if.else.i
  %shr.i.i = lshr i32 %div.i.i, 16
  %conv1.i.i = trunc i32 %shr.i.i to i16
  %call2.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 968, i16 noundef zeroext %conv1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %s5k6aa_set_user_exposure.exit.i, label %if.end.i.i.s5k6aa_set_auto_exposure.exit_crit_edge

if.end.i.i.s5k6aa_set_auto_exposure.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

s5k6aa_set_user_exposure.exit.i:                  ; preds = %if.end.i.i
  %call6.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 970, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool14.not.i94 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool14.not.i94, label %if.end16.i, label %s5k6aa_set_user_exposure.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge

s5k6aa_set_user_exposure.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge: ; preds = %s5k6aa_set_user_exposure.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

if.end16.i:                                       ; preds = %s5k6aa_set_user_exposure.exit.i
  %gain.i = getelementptr i8, ptr %1, i32 216
  %65 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gain.i, align 4
  %val18.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %val18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val18.i, align 4
  %conv.i43.i = trunc i32 %68 to i16
  %call.i44.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 972, i16 noundef zeroext %conv.i43.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %s5k6aa_set_user_gain.exit.i, label %if.end16.i.s5k6aa_set_auto_exposure.exit_crit_edge

if.end16.i.s5k6aa_set_auto_exposure.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

s5k6aa_set_user_gain.exit.i:                      ; preds = %if.end16.i
  %call1.i.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 974, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool20.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %s5k6aa_set_user_gain.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge

s5k6aa_set_user_gain.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge: ; preds = %s5k6aa_set_user_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_auto_exposure.exit

if.end22.i:                                       ; preds = %s5k6aa_set_user_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %auto_alg.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %auto_alg.i, align 2
  %71 = and i16 %70, -7
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end22.i, %if.then10.i
  %storemerge.i = phi i16 [ %71, %if.end22.i ], [ %64, %if.then10.i ]
  %call26.i95 = tail call fastcc i32 @s5k6aa_write(ptr noundef %53, i16 noundef zeroext 1024, i16 noundef zeroext %storemerge.i) #8
  br label %s5k6aa_set_auto_exposure.exit

s5k6aa_set_auto_exposure.exit:                    ; preds = %if.end25.i, %s5k6aa_set_user_gain.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge, %if.end16.i.s5k6aa_set_auto_exposure.exit_crit_edge, %s5k6aa_set_user_exposure.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge, %if.end.i.i.s5k6aa_set_auto_exposure.exit_crit_edge, %if.else.i.s5k6aa_set_auto_exposure.exit_crit_edge, %sw.bb24.s5k6aa_set_auto_exposure.exit_crit_edge
  %retval.0.i96 = phi i32 [ %call26.i95, %if.end25.i ], [ %call1.i, %sw.bb24.s5k6aa_set_auto_exposure.exit_crit_edge ], [ %call6.i.i, %s5k6aa_set_user_exposure.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge ], [ %call1.i.i, %s5k6aa_set_user_gain.exit.i.s5k6aa_set_auto_exposure.exit_crit_edge ], [ %call.i.i, %if.else.i.s5k6aa_set_auto_exposure.exit_crit_edge ], [ %call2.i.i, %if.end.i.i.s5k6aa_set_auto_exposure.exit_crit_edge ], [ %call.i44.i, %if.end16.i.s5k6aa_set_auto_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auto_alg.i) #8
  br label %unlock

sw.bb27:                                          ; preds = %if.end9
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val28, align 4
  %74 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i, align 4
  %preset.i = getelementptr i8, ptr %1, i32 272
  %76 = ptrtoint ptr %preset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %preset.i, align 4
  %index1.i = getelementptr inbounds %struct.s5k6aa_preset, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %index1.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %index1.i, align 1
  %conv.i98 = zext i8 %79 to i16
  %vflip2.i = getelementptr i8, ptr %1, i32 204
  %80 = ptrtoint ptr %vflip2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vflip2.i, align 4
  %val.i99 = getelementptr inbounds %struct.v4l2_ctrl, ptr %81, i32 0, i32 22
  %82 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i99, align 4
  %inv_vflip.i = getelementptr i8, ptr %1, i32 -110
  %84 = ptrtoint ptr %inv_vflip.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %inv_vflip.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %xor.i = xor i32 %83, %bf.cast.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 7
  %bf.cast5.i = zext i8 %bf.lshr4.i to i32
  %xor6.i = xor i32 %73, %bf.cast5.i
  %shl.i = shl i32 %xor.i, 1
  %or.i100 = or i32 %shl.i, %xor6.i
  %mul.i = mul nuw nsw i16 %conv.i98, 38
  %add.i = add nuw nsw i16 %mul.i, 610
  %conv8.i = trunc i32 %or.i100 to i16
  %call9.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %75, i16 noundef zeroext %add.i, i16 noundef zeroext %conv8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %if.end31, label %sw.bb27.unlock_crit_edge

sw.bb27.unlock_crit_edge:                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end31:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 542, i16 noundef zeroext 1)
  br label %unlock

sw.bb33:                                          ; preds = %if.end9
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %85 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val34, align 4
  %87 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %auto_alg.i101) #8
  %89 = ptrtoint ptr %auto_alg.i101 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %auto_alg.i101, align 2, !annotation !158
  %call1.i103 = call fastcc i32 @s5k6aa_read(ptr noundef %88, i16 noundef zeroext 1024, ptr noundef nonnull %auto_alg.i101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool.not.i104, label %if.end.i106, label %sw.bb33.s5k6aa_set_anti_flicker.exit_crit_edge

sw.bb33.s5k6aa_set_anti_flicker.exit_crit_edge:   ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_anti_flicker.exit

if.end.i106:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp.i105 = icmp eq i32 %86, 3
  %90 = ptrtoint ptr %auto_alg.i101 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %auto_alg.i101, align 2
  br i1 %cmp.i105, label %if.then2.i, label %if.else.i109

if.then2.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  %92 = or i16 %91, 32
  %93 = ptrtoint ptr %auto_alg.i101 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %auto_alg.i101, align 2
  br label %if.end15.i

if.else.i109:                                     ; preds = %if.end.i106
  %94 = and i16 %91, -33
  %95 = ptrtoint ptr %auto_alg.i101 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %auto_alg.i101, align 2
  %conv6.i = trunc i32 %86 to i16
  %call7.i107 = tail call fastcc i32 @s5k6aa_write(ptr noundef %88, i16 noundef zeroext 988, i16 noundef zeroext %conv6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i107)
  %tobool8.not.i108 = icmp eq i32 %call7.i107, 0
  br i1 %tobool8.not.i108, label %if.end10.i110, label %if.else.i109.s5k6aa_set_anti_flicker.exit_crit_edge

if.else.i109.s5k6aa_set_anti_flicker.exit_crit_edge: ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_anti_flicker.exit

if.end10.i110:                                    ; preds = %if.else.i109
  %call11.i = tail call fastcc i32 @s5k6aa_write(ptr noundef %88, i16 noundef zeroext 990, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i110.if.end15.i_crit_edge, label %if.end10.i110.s5k6aa_set_anti_flicker.exit_crit_edge

if.end10.i110.s5k6aa_set_anti_flicker.exit_crit_edge: ; preds = %if.end10.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k6aa_set_anti_flicker.exit

if.end10.i110.if.end15.i_crit_edge:               ; preds = %if.end10.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end10.i110.if.end15.i_crit_edge, %if.then2.i
  %96 = ptrtoint ptr %auto_alg.i101 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %auto_alg.i101, align 2
  %call16.i111 = tail call fastcc i32 @s5k6aa_write(ptr noundef %88, i16 noundef zeroext 1024, i16 noundef zeroext %97) #8
  br label %s5k6aa_set_anti_flicker.exit

s5k6aa_set_anti_flicker.exit:                     ; preds = %if.end15.i, %if.end10.i110.s5k6aa_set_anti_flicker.exit_crit_edge, %if.else.i109.s5k6aa_set_anti_flicker.exit_crit_edge, %sw.bb33.s5k6aa_set_anti_flicker.exit_crit_edge
  %retval.0.i112 = phi i32 [ %call16.i111, %if.end15.i ], [ %call1.i103, %sw.bb33.s5k6aa_set_anti_flicker.exit_crit_edge ], [ %call7.i107, %if.else.i109.s5k6aa_set_anti_flicker.exit_crit_edge ], [ %call11.i, %if.end10.i110.s5k6aa_set_anti_flicker.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auto_alg.i101) #8
  br label %unlock

sw.bb36:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %98 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val37, align 4
  %conv38 = trunc i32 %99 to i16
  %call39 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 488, i16 noundef zeroext %conv38)
  br label %unlock

sw.bb40:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val41, align 4
  %conv42 = trunc i32 %101 to i16
  %call43 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 490, i16 noundef zeroext %conv42)
  br label %unlock

sw.bb44:                                          ; preds = %if.end9
  %preset = getelementptr i8, ptr %1, i32 272
  %102 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %preset, align 4
  %index = getelementptr inbounds %struct.s5k6aa_preset, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %index, align 1
  %conv = zext i8 %105 to i16
  %mul = mul nuw nsw i16 %conv, 38
  %add = add nuw nsw i16 %mul, 606
  %val46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %106 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val46, align 4
  %conv47 = trunc i32 %107 to i16
  %call48 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext %add, i16 noundef zeroext %conv47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %sw.bb44.unlock_crit_edge

sw.bb44.unlock_crit_edge:                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end51:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call fastcc i32 @s5k6aa_write(ptr noundef %3, i16 noundef zeroext 542, i16 noundef zeroext 1)
  br label %unlock

unlock:                                           ; preds = %if.end51, %sw.bb44.unlock_crit_edge, %sw.bb40, %sw.bb36, %s5k6aa_set_anti_flicker.exit, %if.end31, %sw.bb27.unlock_crit_edge, %s5k6aa_set_auto_exposure.exit, %sw.bb20, %switch.lookup, %switch.hole_check.unlock_crit_edge, %sw.bb17.unlock_crit_edge, %sw.bb13, %s5k6aa_set_awb.exit, %if.end9.unlock_crit_edge, %do.end6.unlock_crit_edge
  %err.0 = phi i32 [ 0, %do.end6.unlock_crit_edge ], [ 0, %if.end9.unlock_crit_edge ], [ %call48, %sw.bb44.unlock_crit_edge ], [ %call52, %if.end51 ], [ %call43, %sw.bb40 ], [ %call39, %sw.bb36 ], [ %retval.0.i112, %s5k6aa_set_anti_flicker.exit ], [ %call9.i, %sw.bb27.unlock_crit_edge ], [ %call32, %if.end31 ], [ %retval.0.i96, %s5k6aa_set_auto_exposure.exit ], [ %call23, %sw.bb20 ], [ %call16, %sw.bb13 ], [ %retval.0.i, %s5k6aa_set_awb.exit ], [ %call3.i, %switch.lookup ], [ -22, %sw.bb17.unlock_crit_edge ], [ -22, %switch.hole_check.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !127, !129, !130, !131, !132, !134, !136, !137, !138, !139, !141, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5k6aa.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_s5k6aa__317_1651_s5k6aa_i2c_driver_init6, !4, !"__initcall__kmod_s5k6aa__317_1651_s5k6aa_i2c_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1651, i32 1}
!5 = !{ptr @__exitcall_s5k6aa_i2c_driver_exit, !4, !"__exitcall_s5k6aa_i2c_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description318, !7, !"__UNIQUE_ID_description318", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1653, i32 1}
!8 = !{ptr @__UNIQUE_ID_author319, !9, !"__UNIQUE_ID_author319", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1654, i32 1}
!10 = !{ptr @__UNIQUE_ID_file320, !11, !"__UNIQUE_ID_file320", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1655, i32 1}
!12 = !{ptr @__UNIQUE_ID_license321, !11, !"__UNIQUE_ID_license321", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/s5k6aa.c", i32 29, i32 12}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1644, i32 11}
!18 = !{ptr @s5k6aa_i2c_driver, !19, !"s5k6aa_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1642, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1556, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s5k6aa_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @s5k6aa_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1561, i32 3}
!30 = !{ptr @s5k6aa_probe._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @s5k6aa_probe._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @s5k6aa_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1569, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1602, i32 3}
!37 = !{ptr @s5k6aa_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @s5k6aa_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @s5k6aa_subdev_ops, !40, !"s5k6aa_subdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1499, i32 37}
!41 = !{ptr @s5k6aa_core_ops, !42, !"s5k6aa_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1494, i32 42}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/s5k6aa.c", i32 359, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @s5k6aa_i2c_write._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @s5k6aa_i2c_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @s5k6aa_analog_config, !49, !"s5k6aa_analog_config", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/s5k6aa.c", i32 265, i32 29}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/s5k6aa.c", i32 432, i32 6}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/s5k6aa.c", i32 349, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @s5k6aa_i2c_read._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @s5k6aa_i2c_read._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @s5k6aa_video_ops, !58, !"s5k6aa_video_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1243, i32 43}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/s5k6aa.c", i32 773, i32 2}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @s5k6aa_set_prev_config._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5k6aa_set_prev_config._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @s5k6aa_formats, !65, !"s5k6aa_formats", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/s5k6aa.c", i32 283, i32 35}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/s5k6aa.c", i32 612, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @s5k6aa_preview_config_status._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5k6aa_preview_config_status._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/s5k6aa.c", i32 985, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @s5k6aa_s_frame_interval._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5k6aa_s_frame_interval._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/s5k6aa.c", i32 974, i32 2}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__s5k6aa_set_frame_interval._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @__s5k6aa_set_frame_interval._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @s5k6aa_intervals, !82, !"s5k6aa_intervals", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/s5k6aa.c", i32 290, i32 37}
!83 = !{ptr @s5k6aa_pad_ops, !84, !"s5k6aa_pad_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1233, i32 41}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1185, i32 2}
!89 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @s5k6aa_get_selection._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @s5k6aa_get_selection._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1227, i32 2}
!94 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s5k6aa_set_selection._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @s5k6aa_set_selection._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @s5k6aa_subdev_internal_ops, !98, !"s5k6aa_subdev_internal_ops", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1489, i32 46}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1462, i32 3}
!101 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @s5k6aa_check_fw_revision._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @s5k6aa_check_fw_revision._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1466, i32 2}
!106 = !{ptr @s5k6aa_check_fw_revision._entry.33, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @s5k6aa_check_fw_revision._entry_ptr.35, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1525, i32 10}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1537, i32 10}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/s5k6aa.c", i32 169, i32 2}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/s5k6aa.c", i32 170, i32 2}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/s5k6aa.c", i32 171, i32 2}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/s5k6aa.c", i32 173, i32 2}
!120 = distinct !{null, !121, !"s5k6aa_supply_names", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/s5k6aa.c", i32 168, i32 27}
!122 = !{ptr @s5k6aa_initialize_ctrls._key, !123, !"_key", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1375, i32 12}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @s5k6aa_ctrl_ops, !126, !"s5k6aa_ctrl_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1324, i32 35}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1260, i32 2}
!129 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @s5k6aa_s_ctrl._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @s5k6aa_s_ctrl._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @s5k6aa_set_colorfx.colorfx, !133, !"colorfx", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/s5k6aa.c", i32 589, i32 35}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/s5k6aa.c", i32 541, i32 2}
!136 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @s5k6aa_set_auto_exposure._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @s5k6aa_set_auto_exposure._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1343, i32 11}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1352, i32 11}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1361, i32 11}
!145 = !{ptr @s5k6aa_ctrls, !146, !"s5k6aa_ctrls", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1338, i32 38}
!147 = !{ptr @s5k6aa_id, !148, !"s5k6aa_id", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/s5k6aa.c", i32 1635, i32 35}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
