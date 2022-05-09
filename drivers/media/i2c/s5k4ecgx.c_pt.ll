; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5k4ecgx.c_pt.bc'
source_filename = "../drivers/media/i2c/s5k4ecgx.c"
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
%struct.s5k4ecgx_pixfmt = type { i32, i32, i16 }
%struct.s5k4ecgx_frmsize = type { %struct.v4l2_frmsize_discrete, %struct.v4l2_rect }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.s5k4ecgx = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.mutex, i8, i8, [4 x %struct.regulator_bulk_data], [2 x %struct.s5k4ecgx_gpio] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.s5k4ecgx_gpio = type { i32, i32 }
%struct.s5k4ecgx_platform_data = type { %struct.s5k4ecgx_gpio, %struct.s5k4ecgx_gpio }
%struct.firmware = type { i32, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [15 x i8] c"s5k4ecgx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [28 x i8] c"s5k4ecgx.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_s5k4ecgx__293_1028_v4l2_i2c_driver_init6 = internal global ptr @v4l2_i2c_driver_init, section ".initcall6.init", align 4
@v4l2_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s5k4ecgx_probe, ptr @s5k4ecgx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5k4ecgx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_v4l2_i2c_driver_exit = internal global ptr @v4l2_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [53 x i8] c"s5k4ecgx.description=Samsung S5K4ECGX 5MP SOC camera\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [55 x i8] c"s5k4ecgx.author=Sangwook Lee <sangwook.lee@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [58 x i8] c"s5k4ecgx.author=Seok-Young Jang <quartz.jang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [41 x i8] c"s5k4ecgx.file=drivers/media/i2c/s5k4ecgx\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [21 x i8] c"s5k4ecgx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [31 x i8] c"s5k4ecgx.firmware=s5k4ecgx.bin\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5k4ecgx\00", [23 x i8] zeroinitializer }, align 32
@s5k4ecgx_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s5k4ecgx\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s5k4ecgx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"platform data is missing!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5k4ecgx_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/i2c/s5k4ecgx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5k4ecgx_probe._entry_ptr = internal global ptr @s5k4ecgx_probe._entry, section ".printk_index", align 4
@s5k4ecgx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@s5k4ecgx_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5k4ecgx_core_ops, ptr null, ptr null, ptr @s5k4ecgx_video_ops, ptr null, ptr null, ptr null, ptr @s5k4ecgx_pad_ops }, [32 x i8] zeroinitializer }, align 32
@s5k4ecgx_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @s5k4ecgx_registered, ptr null, ptr @s5k4ecgx_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5k4ecgx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set gpios\0A\00", [43 x i8] zeroinitializer }, align 32
@s5k4ecgx_probe._entry_ptr.9 = internal global ptr @s5k4ecgx_probe._entry.7, section ".printk_index", align 4
@s5k4ecgx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 979, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@s5k4ecgx_probe._entry_ptr.12 = internal global ptr @s5k4ecgx_probe._entry.10, section ".printk_index", align 4
@s5k4ecgx_formats = internal constant { [1 x %struct.s5k4ecgx_pixfmt], [20 x i8] } { [1 x %struct.s5k4ecgx_pixfmt] [%struct.s5k4ecgx_pixfmt { i32 8200, i32 7, i16 5 }], [20 x i8] zeroinitializer }, align 32
@s5k4ecgx_prev_sizes = internal constant { [4 x %struct.s5k4ecgx_frmsize], [32 x i8] } { [4 x %struct.s5k4ecgx_frmsize] [%struct.s5k4ecgx_frmsize { %struct.v4l2_frmsize_discrete { i32 176, i32 144 }, %struct.v4l2_rect { i32 0, i32 0, i32 2344, i32 1920 } }, %struct.s5k4ecgx_frmsize { %struct.v4l2_frmsize_discrete { i32 352, i32 288 }, %struct.v4l2_rect { i32 0, i32 0, i32 2344, i32 1920 } }, %struct.s5k4ecgx_frmsize { %struct.v4l2_frmsize_discrete { i32 640, i32 480 }, %struct.v4l2_rect { i32 0, i32 0, i32 2560, i32 1920 } }, %struct.s5k4ecgx_frmsize { %struct.v4l2_frmsize_discrete { i32 720, i32 480 }, %struct.v4l2_rect { i32 0, i32 0, i32 2560, i32 1704 } }], [32 x i8] zeroinitializer }, align 32
@s5k4ecgx_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @s5k4ecgx_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k4ecgx_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5k4ecgx_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k4ecgx_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5k4ecgx_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5k4ecgx_enum_mbus_code, ptr null, ptr null, ptr @s5k4ecgx_get_fmt, ptr @s5k4ecgx_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Switching %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k4ecgx_s_power\00", [47 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_power._entry_ptr = internal global ptr @s5k4ecgx_s_power._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@s5k4ecgx_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Failed to write initial settings\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k4ecgx_init_sensor\00", [43 x i8] zeroinitializer }, align 32
@s5k4ecgx_init_sensor._entry_ptr = internal global ptr @s5k4ecgx_init_sensor._entry, section ".printk_index", align 4
@s5k4ecgx_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: i2c_write: 0x%04x : 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5k4ecgx_i2c_write\00", [45 x i8] zeroinitializer }, align 32
@s5k4ecgx_i2c_write._entry_ptr = internal global ptr @s5k4ecgx_i2c_write._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k4ecgx.bin\00", [19 x i8] zeroinitializer }, align 32
@s5k4ecgx_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed to read firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5k4ecgx_load_firmware\00", [41 x i8] zeroinitializer }, align 32
@s5k4ecgx_load_firmware._entry_ptr = internal global ptr @s5k4ecgx_load_firmware._entry, section ".printk_index", align 4
@s5k4ecgx_load_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: FW: %s size %zu register sets %d\0A\00", [56 x i8] zeroinitializer }, align 32
@s5k4ecgx_load_firmware._entry_ptr.26 = internal global ptr @s5k4ecgx_load_firmware._entry.24, section ".printk_index", align 4
@s5k4ecgx_load_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: FW: invalid crc (%#x:%#x)\0A\00", [63 x i8] zeroinitializer }, align 32
@s5k4ecgx_load_firmware._entry_ptr.29 = internal global ptr @s5k4ecgx_load_firmware._entry.27, section ".printk_index", align 4
@s5k4ecgx_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: write: 0x%08x : 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5k4ecgx_write\00", [17 x i8] zeroinitializer }, align 32
@s5k4ecgx_write._entry_ptr = internal global ptr @s5k4ecgx_write._entry, section ".printk_index", align 4
@s5k4ecgx_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Turn streaming %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5k4ecgx_s_stream\00", [46 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_stream._entry_ptr = internal global ptr @s5k4ecgx_s_stream._entry, section ".printk_index", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@s5k4ecgx_read_fw_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: FW version check failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k4ecgx_read_fw_ver\00", [43 x i8] zeroinitializer }, align 32
@s5k4ecgx_read_fw_ver._entry_ptr = internal global ptr @s5k4ecgx_read_fw_ver._entry, section ".printk_index", align 4
@s5k4ecgx_read_fw_ver._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: chip found FW ver: 0x%x, HW rev: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@s5k4ecgx_read_fw_ver._entry_ptr.39 = internal global ptr @s5k4ecgx_read_fw_ver._entry.37, section ".printk_index", align 4
@s5k4ecgx_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: i2c_read: 0x%04X : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5k4ecgx_i2c_read\00", [46 x i8] zeroinitializer }, align 32
@s5k4ecgx_i2c_read._entry_ptr = internal global ptr @s5k4ecgx_i2c_read._entry, section ".printk_index", align 4
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S5K4ECGX_STBY\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5K4ECGX_RST\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddcore\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddreg\00", [25 x i8] zeroinitializer }, align 32
@s5k4ecgx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s5k4ecgx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5k4ecgx_init_v4l2_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5k4ecgx:911:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ctrl: 0x%x, value: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5k4ecgx_s_ctrl\00", [16 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_ctrl._entry_ptr = internal global ptr @s5k4ecgx_s_ctrl._entry, section ".printk_index", align 4
@s5k4ecgx_s_ctrl._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to write s_ctrl err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@s5k4ecgx_s_ctrl._entry_ptr.53 = internal global ptr @s5k4ecgx_s_ctrl._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963803]
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 32, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"v4l2_i2c_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1019, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1021, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"s5k4ecgx_id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1013, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 941, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 949, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"s5k4ecgx_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 837, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"s5k4ecgx_subdev_internal_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 704, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 970, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 979, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"s5k4ecgx_formats\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 157, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"s5k4ecgx_prev_sizes\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 131, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"s5k4ecgx_core_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 741, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"s5k4ecgx_video_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 833, i32 43 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"s5k4ecgx_pad_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 615, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 714, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 452, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 231, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 333, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 335, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 340, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 351, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 241, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 819, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 998, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 274, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 282, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 221, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 881, i32 54 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 893, i32 54 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 166, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 167, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 168, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 169, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [18 x i8] c"s5k4ecgx_ctrl_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 663, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 911, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 633, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [32 x i8] c"../drivers/media/i2c/s5k4ecgx.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 658, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_license298, ptr @__exitcall_v4l2_i2c_driver_exit, ptr @__initcall__kmod_s5k4ecgx__293_1028_v4l2_i2c_driver_init6, ptr @__param_debug, ptr @s5k4ecgx_i2c_read._entry, ptr @s5k4ecgx_i2c_read._entry_ptr, ptr @s5k4ecgx_i2c_write._entry, ptr @s5k4ecgx_i2c_write._entry_ptr, ptr @s5k4ecgx_init_sensor._entry, ptr @s5k4ecgx_init_sensor._entry_ptr, ptr @s5k4ecgx_load_firmware._entry, ptr @s5k4ecgx_load_firmware._entry.24, ptr @s5k4ecgx_load_firmware._entry.27, ptr @s5k4ecgx_load_firmware._entry_ptr, ptr @s5k4ecgx_load_firmware._entry_ptr.26, ptr @s5k4ecgx_load_firmware._entry_ptr.29, ptr @s5k4ecgx_probe._entry, ptr @s5k4ecgx_probe._entry.10, ptr @s5k4ecgx_probe._entry.7, ptr @s5k4ecgx_probe._entry_ptr, ptr @s5k4ecgx_probe._entry_ptr.12, ptr @s5k4ecgx_probe._entry_ptr.9, ptr @s5k4ecgx_read_fw_ver._entry, ptr @s5k4ecgx_read_fw_ver._entry.37, ptr @s5k4ecgx_read_fw_ver._entry_ptr, ptr @s5k4ecgx_read_fw_ver._entry_ptr.39, ptr @s5k4ecgx_s_ctrl._entry, ptr @s5k4ecgx_s_ctrl._entry.51, ptr @s5k4ecgx_s_ctrl._entry_ptr, ptr @s5k4ecgx_s_ctrl._entry_ptr.53, ptr @s5k4ecgx_s_power._entry, ptr @s5k4ecgx_s_power._entry_ptr, ptr @s5k4ecgx_s_stream._entry, ptr @s5k4ecgx_s_stream._entry_ptr, ptr @s5k4ecgx_write._entry, ptr @s5k4ecgx_write._entry_ptr, ptr @v4l2_i2c_driver_exit, ptr @debug, ptr @v4l2_i2c_driver, ptr @.str, ptr @s5k4ecgx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s5k4ecgx_probe.__key, ptr @.str.6, ptr @s5k4ecgx_ops, ptr @s5k4ecgx_subdev_internal_ops, ptr @.str.8, ptr @.str.11, ptr @s5k4ecgx_formats, ptr @s5k4ecgx_prev_sizes, ptr @s5k4ecgx_core_ops, ptr @s5k4ecgx_video_ops, ptr @s5k4ecgx_pad_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @s5k4ecgx_ctrl_ops, ptr @s5k4ecgx_init_v4l2_ctrls._key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_prev_sizes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_load_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_load_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_read_fw_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_read_fw_ver._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_init_v4l2_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4ecgx_s_ctrl._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @v4l2_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @v4l2_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @v4l2_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 584, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @s5k4ecgx_probe.__key) #8
  %streaming = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %streaming, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @s5k4ecgx_ops) #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @s5k4ecgx_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 1
  %flags10 = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags10, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131073, ptr %function, align 4
  %call13 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %do.body5
  %gpio_stby.i = getelementptr inbounds %struct.s5k4ecgx_platform_data, ptr %1, i32 0, i32 1
  %gpio1.i = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -22, ptr %gpio1.i, align 4
  %arrayidx4.i = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %gpio_stby.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_stby.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %if.end.i.i, label %if.end16.if.end.i_crit_edge

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end16
  %level.i = getelementptr inbounds %struct.s5k4ecgx_platform_data, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  %call1.i.i = tail call i32 @gpio_request_one(i32 noundef %11, i32 noundef %cond.i.i, ptr noundef nonnull @.str.42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.then.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %11) #8
  %call1.i.i.i = tail call i32 @gpiod_export(ptr noundef %call.i.i.i, i1 noundef zeroext false) #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end.i.i
  %15 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %if.end.i46.i, label %if.then.i.for.inc.i.i_crit_edge

if.then.i.for.inc.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i46.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %16) #8
  %18 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -22, ptr %gpio1.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i46.i, %if.then.i.for.inc.i.i_crit_edge
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %for.inc.i.i.do.end22.sink.split_crit_edge, label %for.inc.i.i.do.end22_crit_edge

for.inc.i.i.do.end22_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

for.inc.i.i.do.end22.sink.split_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

if.end.i:                                         ; preds = %if.then3.i.i, %if.end16.if.end.i_crit_edge
  %22 = ptrtoint ptr %gpio_stby.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %gpio_stby.i, align 4
  %24 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %gpio1.i, align 4
  %25 = load i32, ptr %gpio_stby.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %26 = icmp ult i32 %25, 2048
  br i1 %26, label %if.then11.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %25) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i.if.end13.i_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %29 = icmp ult i32 %28, 2048
  br i1 %29, label %if.end.i51.i, label %if.end13.i.if.end19.i_crit_edge

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end.i51.i:                                     ; preds = %if.end13.i
  %level15.i = getelementptr inbounds %struct.s5k4ecgx_gpio, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %level15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %level15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i47.i = icmp eq i32 %31, 0
  %cond.i48.i = select i1 %tobool.not.i47.i, i32 0, i32 2
  %call1.i49.i = tail call i32 @gpio_request_one(i32 noundef %28, i32 noundef %cond.i48.i, ptr noundef nonnull @.str.43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool2.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool2.not.i50.i, label %if.then3.i54.i, label %if.then18.i

if.then3.i54.i:                                   ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i52.i = tail call ptr @gpio_to_desc(i32 noundef %28) #8
  %call1.i.i53.i = tail call i32 @gpiod_export(ptr noundef %call.i.i52.i, i1 noundef zeroext false) #8
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end.i51.i
  %32 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %34 = icmp ult i32 %33, 2048
  br i1 %34, label %if.end.i58.i, label %if.then18.i.for.inc.i60.i_crit_edge

if.then18.i.for.inc.i60.i_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i60.i

if.end.i58.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %33) #8
  %35 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -22, ptr %gpio1.i, align 4
  br label %for.inc.i60.i

for.inc.i60.i:                                    ; preds = %if.end.i58.i, %if.then18.i.for.inc.i60.i_crit_edge
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %37)
  %38 = icmp ult i32 %37, 2048
  br i1 %38, label %for.inc.i60.i.do.end22.sink.split_crit_edge, label %for.inc.i60.i.do.end22_crit_edge

for.inc.i60.i.do.end22_crit_edge:                 ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

for.inc.i60.i.do.end22.sink.split_crit_edge:      ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

if.end19.i:                                       ; preds = %if.then3.i54.i, %if.end13.i.if.end19.i_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %1, align 4
  %41 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %arrayidx4.i, align 4
  %42 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %42)
  %43 = icmp ult i32 %42, 2048
  br i1 %43, label %if.then24.i, label %if.end19.i.s5k4ecgx_config_gpios.exit_crit_edge

if.end19.i.s5k4ecgx_config_gpios.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_config_gpios.exit

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i63.i = tail call ptr @gpio_to_desc(i32 noundef %42) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.i, i32 noundef 0) #8
  br label %s5k4ecgx_config_gpios.exit

s5k4ecgx_config_gpios.exit:                       ; preds = %if.then24.i, %if.end19.i.s5k4ecgx_config_gpios.exit_crit_edge
  %arrayidx26 = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 9, i32 0
  %44 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.44, ptr %arrayidx26, align 4
  %arrayidx26.1 = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.45, ptr %arrayidx26.1, align 4
  %arrayidx26.2 = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.46, ptr %arrayidx26.2, align 4
  %arrayidx26.3 = getelementptr %struct.s5k4ecgx, ptr %call.i, i32 0, i32 9, i32 3
  %47 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.47, ptr %arrayidx26.3, align 4
  %call30 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end22.sink.split:                              ; preds = %for.inc.i60.i.do.end22.sink.split_crit_edge, %for.inc.i.i.do.end22.sink.split_crit_edge
  %.sink = phi i32 [ %20, %for.inc.i.i.do.end22.sink.split_crit_edge ], [ %37, %for.inc.i60.i.do.end22.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call1.i.i, %for.inc.i.i.do.end22.sink.split_crit_edge ], [ %call1.i49.i, %for.inc.i60.i.do.end22.sink.split_crit_edge ]
  tail call void @gpio_free(i32 noundef %.sink) #8
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -22, ptr %arrayidx4.i, align 4
  br label %do.end22

do.end22:                                         ; preds = %do.end22.sink.split, %for.inc.i60.i.do.end22_crit_edge, %for.inc.i.i.do.end22_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i49.i, %for.inc.i60.i.do.end22_crit_edge ], [ %call1.i.i, %for.inc.i.i.do.end22_crit_edge ], [ %retval.0.i.ph.ph, %do.end22.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

do.end35:                                         ; preds = %s5k4ecgx_config_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %out_err2

if.end37:                                         ; preds = %s5k4ecgx_config_gpios.exit
  %handler.i = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 2
  %call.i81 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %handler.i, i32 noundef 4, ptr noundef nonnull @s5k4ecgx_init_v4l2_ctrls._key, ptr noundef nonnull @.str.48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %if.end.i82, label %if.end37.out_err2_crit_edge

if.end37.out_err2_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err2

if.end.i82:                                       ; preds = %if.end37
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler.i, ptr noundef nonnull @s5k4ecgx_ctrl_ops, i32 noundef 9963776, i64 noundef -208, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler.i, ptr noundef nonnull @s5k4ecgx_ctrl_ops, i32 noundef 9963777, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler.i, ptr noundef nonnull @s5k4ecgx_ctrl_ops, i32 noundef 9963778, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler.i, ptr noundef nonnull @s5k4ecgx_ctrl_ops, i32 noundef 9963803, i64 noundef -3, i64 noundef 2, i64 noundef 1, i64 noundef 2) #8
  %error.i = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 2, i32 9
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool5.not.i = icmp eq i32 %50, 0
  br i1 %tobool5.not.i, label %if.end41, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %handler.i) #8
  br label %out_err2

if.end41:                                         ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %handler.i, ptr %ctrl_handler.i, align 4
  %curr_pixfmt = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %curr_pixfmt to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @s5k4ecgx_formats, ptr %curr_pixfmt, align 4
  %curr_frmsize = getelementptr inbounds %struct.s5k4ecgx, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %curr_frmsize to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @s5k4ecgx_prev_sizes, ptr %curr_frmsize, align 4
  br label %cleanup

out_err2:                                         ; preds = %if.then6.i, %if.end37.out_err2_crit_edge, %do.end35
  %ret.0 = phi i32 [ %call30, %do.end35 ], [ %call.i81, %if.end37.out_err2_crit_edge ], [ %50, %if.then6.i ]
  %54 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gpio1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %55)
  %56 = icmp ult i32 %55, 2048
  br i1 %56, label %if.end.i84, label %out_err2.for.inc.i_crit_edge

out_err2.for.inc.i_crit_edge:                     ; preds = %out_err2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i84:                                       ; preds = %out_err2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %55) #8
  %57 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -22, ptr %gpio1.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i84, %out_err2.for.inc.i_crit_edge
  %58 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %59)
  %60 = icmp ult i32 %59, 2048
  br i1 %60, label %if.end.1.i, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %59) #8
  %61 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -22, ptr %arrayidx4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.1.i, %for.inc.i.cleanup_crit_edge, %if.end41, %do.end22, %do.body5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end41 ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %do.body5.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end22 ], [ %ret.0, %for.inc.i.cleanup_crit_edge ], [ %ret.0, %if.end.1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %arrayidx.i = getelementptr %struct.s5k4ecgx, ptr %1, i32 0, i32 10, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.end.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %3) #8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -22, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.s5k4ecgx, ptr %1, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.end.1.i, label %for.inc.i.s5k4ecgx_free_gpios.exit_crit_edge

for.inc.i.s5k4ecgx_free_gpios.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_free_gpios.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %7) #8
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %arrayidx.1.i, align 4
  br label %s5k4ecgx_free_gpios.exit

s5k4ecgx_free_gpios.exit:                         ; preds = %if.end.1.i, %for.inc.i.s5k4ecgx_free_gpios.exit_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %handler = getelementptr inbounds %struct.s5k4ecgx, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %handler) #8
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
define internal i32 @s5k4ecgx_log_status(ptr noundef %sd) #2 align 64 {
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
define internal i32 @s5k4ecgx_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i.i10.i = alloca [4 x i8], align 1
  %fw.i.i = alloca ptr, align 4
  %buf.i38.i.i = alloca [4 x i8], align 1
  %buf.i29.i.i = alloca [4 x i8], align 1
  %buf.i20.i.i = alloca [4 x i8], align 1
  %buf.i.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, ptr @.str.16, ptr @.str.15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, ptr noundef nonnull %cond) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  br i1 %tobool5.not, label %if.else16, label %if.then6

if.then6:                                         ; preds = %do.end4
  %call7 = tail call fastcc i32 @__s5k4ecgx_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  tail call void @msleep(i32 noundef 100) #8
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -4, ptr %buf.i.i.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -4, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -48, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf.i.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.i.i = icmp sgt i32 %10, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end10.s5k4ecgx_i2c_write.exit.i.i_crit_edge

if.end10.s5k4ecgx_i2c_write.exit.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 2
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i.i, i32 noundef 64764, i32 noundef 53248) #11
  br label %s5k4ecgx_i2c_write.exit.i.i

s5k4ecgx_i2c_write.exit.i.i:                      ; preds = %do.end.i.i.i, %if.end10.s5k4ecgx_i2c_write.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %s5k4ecgx_i2c_write.exit.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge, label %if.end.i.i

s5k4ecgx_i2c_write.exit.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit.thread40

if.end.i.i:                                       ; preds = %s5k4ecgx_i2c_write.exit.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i20.i.i) #8
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i20.i.i, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i20.i.i, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i8], ptr %buf.i20.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i20.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %buf.i20.i.i, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %11, align 1
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %12, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %13, align 1
  %call.i.i21.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf.i20.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i22.i.i = icmp sgt i32 %18, 3
  br i1 %cmp.i22.i.i, label %do.end.i25.i.i, label %if.end.i.i.s5k4ecgx_i2c_write.exit28.i.i_crit_edge

if.end.i.i.s5k4ecgx_i2c_write.exit28.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit28.i.i

do.end.i25.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i23.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 2
  %call17.i24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i23.i.i, i32 noundef 16, i32 noundef 1) #11
  br label %s5k4ecgx_i2c_write.exit28.i.i

s5k4ecgx_i2c_write.exit28.i.i:                    ; preds = %do.end.i25.i.i, %if.end.i.i.s5k4ecgx_i2c_write.exit28.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i20.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i21.i.i, 0
  br i1 %cmp3.i.i, label %s5k4ecgx_i2c_write.exit28.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge, label %if.end5.i.i

s5k4ecgx_i2c_write.exit28.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit.thread40

if.end5.i.i:                                      ; preds = %s5k4ecgx_i2c_write.exit28.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i29.i.i) #8
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i29.i.i, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i8], ptr %buf.i29.i.i, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i8], ptr %buf.i29.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %buf.i29.i.i, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 48, ptr %19, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  %call.i.i30.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf.i29.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i31.i.i = icmp sgt i32 %26, 3
  br i1 %cmp.i31.i.i, label %do.end.i34.i.i, label %if.end5.i.i.s5k4ecgx_i2c_write.exit37.i.i_crit_edge

if.end5.i.i.s5k4ecgx_i2c_write.exit37.i.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit37.i.i

do.end.i34.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i32.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 2
  %call17.i33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i32.i.i, i32 noundef 4144, i32 noundef 0) #11
  br label %s5k4ecgx_i2c_write.exit37.i.i

s5k4ecgx_i2c_write.exit37.i.i:                    ; preds = %do.end.i34.i.i, %if.end5.i.i.s5k4ecgx_i2c_write.exit37.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i29.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i30.i.i, 0
  br i1 %cmp7.i.i, label %s5k4ecgx_i2c_write.exit37.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge, label %if.end9.i.i

s5k4ecgx_i2c_write.exit37.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit.thread40

if.end9.i.i:                                      ; preds = %s5k4ecgx_i2c_write.exit37.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i38.i.i) #8
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i38.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i8], ptr %buf.i38.i.i, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i38.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i38.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %buf.i38.i.i, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 20, ptr %27, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %28, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %29, align 1
  %call.i.i39.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf.i38.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i40.i.i = icmp sgt i32 %34, 3
  br i1 %cmp.i40.i.i, label %do.end.i43.i.i, label %if.end9.i.i.s5k4ecgx_i2c_write.exit46.i.i_crit_edge

if.end9.i.i.s5k4ecgx_i2c_write.exit46.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit46.i.i

do.end.i43.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i41.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 2
  %call17.i42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i41.i.i, i32 noundef 20, i32 noundef 1) #11
  br label %s5k4ecgx_i2c_write.exit46.i.i

s5k4ecgx_i2c_write.exit46.i.i:                    ; preds = %do.end.i43.i.i, %if.end9.i.i.s5k4ecgx_i2c_write.exit46.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i38.i.i) #8
  call void @msleep(i32 noundef 100) #8
  %35 = zext i32 %call.i.i39.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i39.i.i, label %s5k4ecgx_i2c_write.exit46.i.i.s5k4ecgx_init_sensor.exit_crit_edge [
    i32 4, label %s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge
    i32 0, label %s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge46
  ]

s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge46: ; preds = %s5k4ecgx_i2c_write.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

s5k4ecgx_i2c_write.exit46.i.i.s5k4ecgx_init_sensor.exit_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit

s5k4ecgx_init_sensor.exit.thread40:               ; preds = %s5k4ecgx_i2c_write.exit37.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge, %s5k4ecgx_i2c_write.exit28.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge, %s5k4ecgx_i2c_write.exit.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i30.i.i, %s5k4ecgx_i2c_write.exit37.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge ], [ %call.i.i21.i.i, %s5k4ecgx_i2c_write.exit28.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge ], [ %call.i.i.i.i, %s5k4ecgx_i2c_write.exit.i.i.s5k4ecgx_init_sensor.exit.thread40_crit_edge ]
  call void @msleep(i32 noundef 100) #8
  %name.i42 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i42) #11
  br label %if.then13

if.then.i:                                        ; preds = %s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge, %s5k4ecgx_i2c_write.exit46.i.i.if.then.i_crit_edge46
  %36 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #8
  %38 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !154
  %v4l2_dev.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %39 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v4l2_dev.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call1.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.21, ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i13.i, label %if.end.i.thread31

if.end.i.thread31:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i.i, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %s5k4ecgx_init_sensor.exit

if.end.i13.i:                                     ; preds = %if.then.i
  %43 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %46, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i12.i = icmp sgt i32 %50, 2
  br i1 %cmp.i12.i, label %do.end8.i.i, label %if.end.i13.i.do.end15.i.i_crit_edge

if.end.i13.i.do.end15.i.i_crit_edge:              ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i.i

do.end8.i.i:                                      ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %name10.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %44, align 4
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name10.i.i, ptr noundef nonnull @.str.21, i32 noundef %52, i32 noundef %49) #11
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %do.end8.i.i, %if.end.i13.i.do.end15.i.i_crit_edge
  %inc.i.i = add i32 %49, 1
  %53 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %mul.i.i = mul i32 %inc.i.i, 6
  %add.i.i = add i32 %mul.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add.i.i)
  %cmp17.not.i.i = icmp eq i32 %56, %add.i.i
  br i1 %cmp17.not.i.i, label %if.end19.i.i, label %do.end15.i.i.if.end.i.thread34_crit_edge

do.end15.i.i.if.end.i.thread34_crit_edge:         ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.thread34

if.end19.i.i:                                     ; preds = %do.end15.i.i
  %data20.i.i = getelementptr inbounds %struct.firmware, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %data20.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data20.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %mul.i.i
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %add.ptr.i.i, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  %call25.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %58, i32 noundef %mul.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call25.i.i, i32 %61)
  %cmp26.not.i.i = icmp eq i32 %call25.i.i, %61
  br i1 %cmp26.not.i.i, label %for.cond.preheader.i.i, label %do.end30.i.i

for.cond.preheader.i.i:                           ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp3887.i.i = icmp sgt i32 %inc.i.i, 1
  br i1 %cmp3887.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge

for.cond.preheader.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit.thread

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %62 = getelementptr inbounds [4 x i8], ptr %buf.i.i10.i, i32 0, i32 1
  %63 = getelementptr inbounds [4 x i8], ptr %buf.i.i10.i, i32 0, i32 2
  %64 = getelementptr inbounds [4 x i8], ptr %buf.i.i10.i, i32 0, i32 3
  %name.i.i14.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 2
  br label %for.body.i.i

do.end30.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name32.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name32.i.i, i32 noundef %call25.i.i, i32 noundef %61) #11
  br label %if.end.i.thread34

for.body.i.i:                                     ; preds = %if.end50.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn90.i.i = phi ptr [ %58, %for.body.lr.ph.i.i ], [ %ptr.091.i.i, %if.end50.i.i.for.body.i.i_crit_edge ]
  %addr_inc.089.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %67, %if.end50.i.i.for.body.i.i_crit_edge ]
  %i.088.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc51.i.i, %if.end50.i.i.for.body.i.i_crit_edge ]
  %ptr.091.i.i = getelementptr i8, ptr %.pn90.i.i, i32 6
  %65 = ptrtoint ptr %ptr.091.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ptr.091.i.i, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66) #8
  %add.ptr40.i.i = getelementptr i8, ptr %.pn90.i.i, i32 10
  %68 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %add.ptr40.i.i, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69) #8
  %sub.i.i = sub i32 %67, %addr_inc.089.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp43.not.i.i = icmp eq i32 %sub.i.i, 2
  br i1 %cmp43.not.i.i, label %if.else.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call45.i.i = call fastcc i32 @s5k4ecgx_write(ptr noundef %37, i32 noundef %67, i16 noundef zeroext %70) #8
  br label %if.end47.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i10.i) #8
  %71 = ptrtoint ptr %buf.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 15, ptr %buf.i.i10.i, align 1
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 18, ptr %62, align 1
  %73 = lshr i16 %70, 8
  %conv7.i.i.i = trunc i16 %73 to i8
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv7.i.i.i, ptr %63, align 1
  %conv11.i.i.i = trunc i16 %70 to i8
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv11.i.i.i, ptr %64, align 1
  %call.i.i.i15.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i.i10.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i.i16.i = icmp sgt i32 %76, 3
  br i1 %cmp.i.i16.i, label %do.end.i.i18.i, label %if.else.i.i.s5k4ecgx_i2c_write.exit.i19.i_crit_edge

if.else.i.i.s5k4ecgx_i2c_write.exit.i19.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit.i19.i

do.end.i.i18.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i.i = zext i16 %70 to i32
  %call17.i.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i14.i, i32 noundef 3858, i32 noundef %conv5.i.i.i) #11
  br label %s5k4ecgx_i2c_write.exit.i19.i

s5k4ecgx_i2c_write.exit.i19.i:                    ; preds = %do.end.i.i18.i, %if.else.i.i.s5k4ecgx_i2c_write.exit.i19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i15.i)
  %cmp20.i.i.i = icmp eq i32 %call.i.i.i15.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i10.i) #8
  br i1 %cmp20.i.i.i, label %s5k4ecgx_i2c_write.exit.i19.i.if.end50.i.i_crit_edge, label %s5k4ecgx_i2c_write.exit.i19.i.if.end47.i.i_crit_edge

s5k4ecgx_i2c_write.exit.i19.i.if.end47.i.i_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

s5k4ecgx_i2c_write.exit.i19.i.if.end50.i.i_crit_edge: ; preds = %s5k4ecgx_i2c_write.exit.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i.i

if.end47.i.i:                                     ; preds = %s5k4ecgx_i2c_write.exit.i19.i.if.end47.i.i_crit_edge, %if.then44.i.i
  %err.1.i.i = phi i32 [ %call45.i.i, %if.then44.i.i ], [ %call.i.i.i15.i, %s5k4ecgx_i2c_write.exit.i19.i.if.end47.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i)
  %tobool48.not.i.i = icmp eq i32 %err.1.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end47.i.i.if.end50.i.i_crit_edge, label %if.end47.i.i.if.end.i.thread34_crit_edge

if.end47.i.i.if.end.i.thread34_crit_edge:         ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.thread34

if.end47.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end47.i.i.if.end50.i.i_crit_edge, %s5k4ecgx_i2c_write.exit.i19.i.if.end50.i.i_crit_edge
  %inc51.i.i = add nuw nsw i32 %i.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.088.i.i, %49
  br i1 %exitcond.not.i.i, label %if.end50.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge, label %if.end50.i.i.for.body.i.i_crit_edge

if.end50.i.i.for.body.i.i_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end50.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_init_sensor.exit.thread

if.end.i.thread34:                                ; preds = %if.end47.i.i.if.end.i.thread34_crit_edge, %do.end30.i.i, %do.end15.i.i.if.end.i.thread34_crit_edge
  %err.2.i.i.ph = phi i32 [ -22, %do.end15.i.i.if.end.i.thread34_crit_edge ], [ -22, %do.end30.i.i ], [ %err.1.i.i, %if.end47.i.i.if.end.i.thread34_crit_edge ]
  %77 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %78) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %s5k4ecgx_init_sensor.exit

s5k4ecgx_init_sensor.exit.thread:                 ; preds = %if.end50.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge, %for.cond.preheader.i.i.s5k4ecgx_init_sensor.exit.thread_crit_edge
  %79 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %80) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %if.else

s5k4ecgx_init_sensor.exit:                        ; preds = %if.end.i.thread34, %if.end.i.thread31, %s5k4ecgx_i2c_write.exit46.i.i.s5k4ecgx_init_sensor.exit_crit_edge
  %ret.028.i = phi i32 [ %call1.i.i, %if.end.i.thread31 ], [ %err.2.i.i.ph, %if.end.i.thread34 ], [ %call.i.i39.i.i, %s5k4ecgx_i2c_write.exit46.i.i.s5k4ecgx_init_sensor.exit_crit_edge ]
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.028.i)
  %cmp12 = icmp slt i32 %ret.028.i, 0
  br i1 %cmp12, label %s5k4ecgx_init_sensor.exit.if.then13_crit_edge, label %s5k4ecgx_init_sensor.exit.if.else_crit_edge

s5k4ecgx_init_sensor.exit.if.else_crit_edge:      ; preds = %s5k4ecgx_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

s5k4ecgx_init_sensor.exit.if.then13_crit_edge:    ; preds = %s5k4ecgx_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %s5k4ecgx_init_sensor.exit.if.then13_crit_edge, %s5k4ecgx_init_sensor.exit.thread40
  %ret.028.i45 = phi i32 [ %retval.0.i.ph.i, %s5k4ecgx_init_sensor.exit.thread40 ], [ %ret.028.i, %s5k4ecgx_init_sensor.exit.if.then13_crit_edge ]
  %call14 = call fastcc i32 @__s5k4ecgx_power_off(ptr noundef %sd)
  br label %cleanup

if.else:                                          ; preds = %s5k4ecgx_init_sensor.exit.if.else_crit_edge, %s5k4ecgx_init_sensor.exit.thread
  %ret.029.i39 = phi i32 [ 0, %s5k4ecgx_init_sensor.exit.thread ], [ %ret.028.i, %s5k4ecgx_init_sensor.exit.if.else_crit_edge ]
  %set_params = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 8
  %81 = ptrtoint ptr %set_params to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %set_params, align 1
  br label %cleanup

if.else16:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @__s5k4ecgx_power_off(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.else, %if.then13, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6.cleanup_crit_edge ], [ %ret.028.i45, %if.then13 ], [ %ret.029.i39, %if.else ], [ %call17, %if.else16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5k4ecgx_power_on(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.s5k4ecgx, ptr %priv, i32 0, i32 9
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 50, i32 noundef 2) #8
  %arrayidx.i = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %level = getelementptr inbounds %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 0, i32 1
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %4) #8
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 50, i32 noundef 2) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %arrayidx.i17 = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %level7 = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %8 = ptrtoint ptr %level7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level7, align 4
  %call.i.i18 = tail call ptr @gpio_to_desc(i32 noundef %6) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i18, i32 noundef %9) #8
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 50, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5k4ecgx_power_off(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %level = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %lnot.ext) #8
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 50, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i18 = getelementptr %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 0
  %5 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %level4 = getelementptr inbounds %struct.s5k4ecgx, ptr %priv, i32 0, i32 10, i32 0, i32 1
  %8 = ptrtoint ptr %level4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %lnot.ext7 = zext i1 %tobool5.not to i32
  %call.i.i19 = tail call ptr @gpio_to_desc(i32 noundef %6) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i19, i32 noundef %lnot.ext7) #8
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 50, i32 noundef 2) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %streaming = getelementptr inbounds %struct.s5k4ecgx, ptr %priv, i32 0, i32 7
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %streaming, align 4
  %supplies = getelementptr inbounds %struct.s5k4ecgx, ptr %priv, i32 0, i32 9
  %call12 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies) #8
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k4ecgx_write(ptr noundef %client, i32 noundef %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i35 = alloca [4 x i8], align 1
  %buf.i23 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %addr, 16
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %conv4 = zext i16 %val to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %addr, i32 noundef %conv4) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 40, ptr %1, align 1
  %6 = lshr i32 %addr, 24
  %conv7.i = trunc i32 %6 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7.i, ptr %2, align 1
  %conv11.i = trunc i32 %shr to i8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11.i, ptr %3, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp sgt i32 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.end6.s5k4ecgx_i2c_write.exit_crit_edge

do.end6.s5k4ecgx_i2c_write.exit_crit_edge:        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 40, i32 noundef %shr) #11
  br label %s5k4ecgx_i2c_write.exit

s5k4ecgx_i2c_write.exit:                          ; preds = %do.end.i, %do.end6.s5k4ecgx_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %call.i.i, 4
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %if.then8, label %s5k4ecgx_i2c_write.exit.if.end10_crit_edge

s5k4ecgx_i2c_write.exit.if.end10_crit_edge:       ; preds = %s5k4ecgx_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %s5k4ecgx_i2c_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i23) #8
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i23, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i23, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i23, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i23, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 42, ptr %10, align 1
  %15 = lshr i32 %addr, 8
  %conv7.i24 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv7.i24, ptr %11, align 1
  %conv11.i25 = trunc i32 %addr to i8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11.i25, ptr %12, align 1
  %call.i.i26 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i23, i32 noundef 4, i16 noundef zeroext 0) #8
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i27 = icmp sgt i32 %18, 3
  br i1 %cmp.i27, label %do.end.i31, label %if.then8.s5k4ecgx_i2c_write.exit34_crit_edge

if.then8.s5k4ecgx_i2c_write.exit34_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit34

do.end.i31:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i28 = and i32 %addr, 65535
  %name.i29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i29, i32 noundef 42, i32 noundef %conv5.i28) #11
  br label %s5k4ecgx_i2c_write.exit34

s5k4ecgx_i2c_write.exit34:                        ; preds = %do.end.i31, %if.then8.s5k4ecgx_i2c_write.exit34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i26)
  %cmp20.i32 = icmp eq i32 %call.i.i26, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i23) #8
  br i1 %cmp20.i32, label %s5k4ecgx_i2c_write.exit34.if.then12_crit_edge, label %s5k4ecgx_i2c_write.exit34.if.end10_crit_edge

s5k4ecgx_i2c_write.exit34.if.end10_crit_edge:     ; preds = %s5k4ecgx_i2c_write.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

s5k4ecgx_i2c_write.exit34.if.then12_crit_edge:    ; preds = %s5k4ecgx_i2c_write.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end10:                                         ; preds = %s5k4ecgx_i2c_write.exit34.if.end10_crit_edge, %s5k4ecgx_i2c_write.exit.if.end10_crit_edge
  %ret.0 = phi i32 [ %spec.select.i, %s5k4ecgx_i2c_write.exit.if.end10_crit_edge ], [ %call.i.i26, %s5k4ecgx_i2c_write.exit34.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end10.if.then12_crit_edge, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %s5k4ecgx_i2c_write.exit34.if.then12_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i35) #8
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i35, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i8], ptr %buf.i35, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i8], ptr %buf.i35, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %buf.i35, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 18, ptr %19, align 1
  %24 = lshr i16 %val, 8
  %conv7.i36 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7.i36, ptr %20, align 1
  %conv11.i37 = trunc i16 %val to i8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11.i37, ptr %21, align 1
  %call.i.i38 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i35, i32 noundef 4, i16 noundef zeroext 0) #8
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i39 = icmp sgt i32 %27, 3
  br i1 %cmp.i39, label %do.end.i43, label %if.then12.s5k4ecgx_i2c_write.exit46_crit_edge

if.then12.s5k4ecgx_i2c_write.exit46_crit_edge:    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit46

do.end.i43:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i40 = zext i16 %val to i32
  %name.i41 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i41, i32 noundef 3858, i32 noundef %conv5.i40) #11
  br label %s5k4ecgx_i2c_write.exit46

s5k4ecgx_i2c_write.exit46:                        ; preds = %do.end.i43, %if.then12.s5k4ecgx_i2c_write.exit46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i38)
  %cmp20.i44 = icmp eq i32 %call.i.i38, 4
  %spec.select.i45 = select i1 %cmp20.i44, i32 0, i32 %call.i.i38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i35) #8
  br label %if.end14

if.end14:                                         ; preds = %s5k4ecgx_i2c_write.exit46, %if.end10.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end10.if.end14_crit_edge ], [ %spec.select.i45, %s5k4ecgx_i2c_write.exit46 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, ptr @.str.16, ptr @.str.15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef nonnull %cond) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  %3 = zext i1 %tobool5.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp6 = icmp eq i8 %2, %3
  br i1 %cmp6, label %if.then8, label %do.end4.if.end15_crit_edge

do.end4.if.end15_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %do.end4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  br i1 %tobool5.not, label %if.then8.if.end6.i_crit_edge, label %land.lhs.true.i

if.then8.if.end6.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.then8
  %set_params.i = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %set_params.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set_params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %curr_frmsize.i.i = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %curr_frmsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %curr_frmsize.i.i, align 4
  %input_window.i.i = getelementptr inbounds %struct.s5k4ecgx_frmsize, ptr %9, i32 0, i32 1
  %width.i.i.i = getelementptr inbounds %struct.s5k4ecgx_frmsize, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i.i.i, align 4
  %conv.i.i.i = trunc i32 %11 to i16
  %call.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048784, i16 noundef zeroext %conv.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.then.i.__s5k4ecgx_s_params.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %height.i.i.i = getelementptr inbounds %struct.s5k4ecgx_frmsize, ptr %9, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i.i.i, align 4
  %conv1.i.i.i = trunc i32 %13 to i16
  %call2.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048786, i16 noundef zeroext %conv1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end7.i.i.i, label %if.end.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %input_window.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input_window.i.i, align 4
  %conv5.i.i.i = trunc i32 %15 to i16
  %call6.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048788, i16 noundef zeroext %conv5.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end12.i.i.i, label %if.end7.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end7.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end12.i.i.i:                                   ; preds = %if.end7.i.i.i
  %top.i.i.i = getelementptr inbounds %struct.s5k4ecgx_frmsize, ptr %9, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top.i.i.i, align 4
  %conv10.i.i.i = trunc i32 %17 to i16
  %call11.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048790, i16 noundef zeroext %conv10.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end18.i.i.i, label %if.end12.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end12.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end18.i.i.i:                                   ; preds = %if.end12.i.i.i
  %18 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i.i.i, align 4
  %conv16.i.i.i = trunc i32 %19 to i16
  %call17.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048792, i16 noundef zeroext %conv16.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %if.end24.i.i.i, label %if.end18.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end18.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end24.i.i.i:                                   ; preds = %if.end18.i.i.i
  %20 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i.i.i, align 4
  %conv22.i.i.i = trunc i32 %21 to i16
  %call23.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048794, i16 noundef zeroext %conv22.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end24.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end24.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end30.i.i.i:                                   ; preds = %if.end24.i.i.i
  %22 = ptrtoint ptr %input_window.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input_window.i.i, align 4
  %conv28.i.i.i = trunc i32 %23 to i16
  %call29.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048796, i16 noundef zeroext %conv28.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %call29.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %s5k4ecgx_set_input_window.exit.i.i, label %if.end30.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end30.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

s5k4ecgx_set_input_window.exit.i.i:               ; preds = %if.end30.i.i.i
  %24 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top.i.i.i, align 4
  %conv34.i.i.i = trunc i32 %25 to i16
  %call35.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048798, i16 noundef zeroext %conv34.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call35.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %s5k4ecgx_set_input_window.exit.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

s5k4ecgx_set_input_window.exit.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %s5k4ecgx_set_input_window.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.then.i.i:                                      ; preds = %s5k4ecgx_set_input_window.exit.i.i
  %26 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i.i.i, align 4
  %conv.i98.i.i = trunc i32 %27 to i16
  %call.i99.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049364, i16 noundef zeroext %conv.i98.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i.i)
  %tobool.not.i100.i.i = icmp eq i32 %call.i99.i.i, 0
  br i1 %tobool.not.i100.i.i, label %if.end.i105.i.i, label %if.then.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.then.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end.i105.i.i:                                  ; preds = %if.then.i.i
  %28 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height.i.i.i, align 4
  %conv1.i102.i.i = trunc i32 %29 to i16
  %call2.i103.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049366, i16 noundef zeroext %conv1.i102.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i103.i.i)
  %tobool3.not.i104.i.i = icmp eq i32 %call2.i103.i.i, 0
  br i1 %tobool3.not.i104.i.i, label %if.end7.i109.i.i, label %if.end.i105.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end.i105.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end7.i109.i.i:                                 ; preds = %if.end.i105.i.i
  %30 = ptrtoint ptr %input_window.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input_window.i.i, align 4
  %conv5.i106.i.i = trunc i32 %31 to i16
  %call6.i107.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049368, i16 noundef zeroext %conv5.i106.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i107.i.i)
  %tobool8.not.i108.i.i = icmp eq i32 %call6.i107.i.i, 0
  br i1 %tobool8.not.i108.i.i, label %if.end12.i114.i.i, label %if.end7.i109.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end7.i109.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end7.i109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end12.i114.i.i:                                ; preds = %if.end7.i109.i.i
  %32 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top.i.i.i, align 4
  %conv10.i111.i.i = trunc i32 %33 to i16
  %call11.i112.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049370, i16 noundef zeroext %conv10.i111.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i112.i.i)
  %tobool13.not.i113.i.i = icmp eq i32 %call11.i112.i.i, 0
  br i1 %tobool13.not.i113.i.i, label %if.end18.i118.i.i, label %if.end12.i114.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end12.i114.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end12.i114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end18.i118.i.i:                                ; preds = %if.end12.i114.i.i
  %34 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i.i.i, align 4
  %conv16.i115.i.i = trunc i32 %35 to i16
  %call17.i116.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049372, i16 noundef zeroext %conv16.i115.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i116.i.i)
  %tobool19.not.i117.i.i = icmp eq i32 %call17.i116.i.i, 0
  br i1 %tobool19.not.i117.i.i, label %if.end24.i122.i.i, label %if.end18.i118.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end18.i118.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end18.i118.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end24.i122.i.i:                                ; preds = %if.end18.i118.i.i
  %36 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height.i.i.i, align 4
  %conv22.i119.i.i = trunc i32 %37 to i16
  %call23.i120.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049374, i16 noundef zeroext %conv22.i119.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i120.i.i)
  %tobool25.not.i121.i.i = icmp eq i32 %call23.i120.i.i, 0
  br i1 %tobool25.not.i121.i.i, label %if.end30.i126.i.i, label %if.end24.i122.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end24.i122.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end24.i122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end30.i126.i.i:                                ; preds = %if.end24.i122.i.i
  %38 = ptrtoint ptr %input_window.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input_window.i.i, align 4
  %conv28.i123.i.i = trunc i32 %39 to i16
  %call29.i124.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049376, i16 noundef zeroext %conv28.i123.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i124.i.i)
  %tobool31.not.i125.i.i = icmp eq i32 %call29.i124.i.i, 0
  br i1 %tobool31.not.i125.i.i, label %if.end.i.i, label %if.end30.i126.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end30.i126.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end30.i126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end.i.i:                                       ; preds = %if.end30.i126.i.i
  %40 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top.i.i.i, align 4
  %conv34.i127.i.i = trunc i32 %41 to i16
  %call35.i128.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879049378, i16 noundef zeroext %conv34.i127.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i128.i.i)
  %tobool3.not.i.i = icmp eq i32 %call35.i128.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end6.i.i, label %if.end.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end.i.i.__s5k4ecgx_s_params.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048802, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool7.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end10.i.i, label %if.end6.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end6.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %call9.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879050782, i16 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool11.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end14.i.i, label %if.end10.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end10.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %call13.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879050964, i16 noundef zeroext 60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool15.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end14.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end14.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  %44 = ptrtoint ptr %curr_frmsize.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %curr_frmsize.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %conv.i131.i.i = trunc i32 %47 to i16
  %call1.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %43, i32 noundef 1879048870, i16 noundef zeroext %conv.i131.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i132.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i132.i.i, label %if.end.i134.i.i, label %if.then16.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.then16.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end.i134.i.i:                                  ; preds = %if.then16.i.i
  %48 = ptrtoint ptr %curr_frmsize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %curr_frmsize.i.i, align 4
  %height.i133.i.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %height.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i133.i.i, align 4
  %conv4.i.i.i = trunc i32 %51 to i16
  %call5.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %43, i32 noundef 1879048872, i16 noundef zeroext %conv4.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end18.i.i, label %if.end.i134.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end.i134.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end.i134.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end18.i.i:                                     ; preds = %if.end.i134.i.i
  %curr_pixfmt.i.i.i = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 4
  %52 = ptrtoint ptr %curr_pixfmt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %curr_pixfmt.i.i.i, align 4
  %reg_p_format.i.i.i = getelementptr inbounds %struct.s5k4ecgx_pixfmt, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %reg_p_format.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %reg_p_format.i.i.i, align 4
  %call8.i.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %43, i32 noundef 1879048874, i16 noundef zeroext %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool19.not.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end22.i.i, label %if.end18.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end18.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end22.i.i:                                     ; preds = %if.end18.i.i
  %call21.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048884, i16 noundef zeroext 82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool23.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end26.i.i, label %if.end22.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end22.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %call25.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048894, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool27.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end30.i.i, label %if.end26.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end26.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %call29.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048896, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool31.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end34.i.i, label %if.end30.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end30.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end34.i.i:                                     ; preds = %if.end30.i.i
  %call33.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048900, i16 noundef zeroext 333) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool35.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end38.i.i, label %if.end34.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end34.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end38.i.i:                                     ; preds = %if.end34.i.i
  %call37.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048898, i16 noundef zeroext 666) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool39.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end42.i.i, label %if.end38.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end38.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end42.i.i:                                     ; preds = %if.end38.i.i
  %call41.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048912, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool43.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end46.i.i, label %if.end42.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end42.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end46.i.i:                                     ; preds = %if.end42.i.i
  %call45.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048914, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool47.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end50.i.i, label %if.end46.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end46.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end50.i.i:                                     ; preds = %if.end46.i.i
  %call49.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048806, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool51.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end54.i.i, label %if.end50.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end50.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end54.i.i:                                     ; preds = %if.end50.i.i
  %call53.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048810, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool55.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end58.i.i, label %if.end54.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end54.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.end58.i.i:                                     ; preds = %if.end54.i.i
  %call57.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048778, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool59.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool59.not.i.i, label %if.then60.i.i, label %if.end58.i.i.__s5k4ecgx_s_params.exit.i_crit_edge

if.end58.i.i.__s5k4ecgx_s_params.exit.i_crit_edge: ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__s5k4ecgx_s_params.exit.i

if.then60.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048808, i16 noundef zeroext 1) #8
  br label %__s5k4ecgx_s_params.exit.i

__s5k4ecgx_s_params.exit.i:                       ; preds = %if.then60.i.i, %if.end58.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end54.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end50.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end46.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end42.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end38.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end34.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end30.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end26.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end22.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end18.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end.i134.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.then16.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end14.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end10.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end6.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end30.i126.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end24.i122.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end18.i118.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end12.i114.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end7.i109.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end.i105.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.then.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %s5k4ecgx_set_input_window.exit.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end30.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end24.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end18.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end12.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end7.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.end.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge, %if.then.i.__s5k4ecgx_s_params.exit.i_crit_edge
  %ret.15.i.i = phi i32 [ %call57.i.i, %if.end58.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call61.i.i, %if.then60.i.i ], [ %call53.i.i, %if.end54.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call49.i.i, %if.end50.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call45.i.i, %if.end46.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call41.i.i, %if.end42.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call37.i.i, %if.end38.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call33.i.i, %if.end34.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call29.i.i, %if.end30.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call25.i.i, %if.end26.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call21.i.i, %if.end22.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call8.i.i.i, %if.end18.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call1.i.i.i, %if.then16.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call5.i.i.i, %if.end.i134.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call13.i.i, %if.end14.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call9.i.i, %if.end10.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call5.i.i, %if.end6.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call35.i128.i.i, %if.end.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call.i99.i.i, %if.then.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call2.i103.i.i, %if.end.i105.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call6.i107.i.i, %if.end7.i109.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call11.i112.i.i, %if.end12.i114.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call17.i116.i.i, %if.end18.i118.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call23.i120.i.i, %if.end24.i122.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call29.i124.i.i, %if.end30.i126.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call35.i.i.i, %s5k4ecgx_set_input_window.exit.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call.i.i.i, %if.then.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call2.i.i.i, %if.end.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call6.i.i.i, %if.end7.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call11.i.i.i, %if.end12.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call17.i.i.i, %if.end18.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call23.i.i.i, %if.end24.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ], [ %call29.i.i.i, %if.end30.i.i.i.__s5k4ecgx_s_params.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.15.i.i)
  %cmp.i = icmp slt i32 %ret.15.i.i, 0
  br i1 %cmp.i, label %__s5k4ecgx_s_params.exit.i.if.end15_crit_edge, label %if.end.i

__s5k4ecgx_s_params.exit.i.if.end15_crit_edge:    ; preds = %__s5k4ecgx_s_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %__s5k4ecgx_s_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %set_params.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %land.lhs.true.i.if.end6.i_crit_edge, %if.then8.if.end6.i_crit_edge
  %conv7.i = trunc i32 %on to i16
  %call8.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048766, i16 noundef zeroext %conv7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.if.end15_crit_edge, label %__s5k4ecgx_s_stream.exit

if.end6.i.if.end15_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

__s5k4ecgx_s_stream.exit:                         ; preds = %if.end6.i
  %call13.i = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %5, i32 noundef 1879048768, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool10.not = icmp eq i32 %call13.i, 0
  br i1 %tobool10.not, label %if.then11, label %__s5k4ecgx_s_stream.exit.if.end15_crit_edge

__s5k4ecgx_s_stream.exit.if.end15_crit_edge:      ; preds = %__s5k4ecgx_s_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %__s5k4ecgx_s_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  %57 = trunc i32 %on to i8
  %conv12 = and i8 %57, 1
  %58 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv12, ptr %streaming, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %__s5k4ecgx_s_stream.exit.if.end15_crit_edge, %if.end6.i.if.end15_crit_edge, %__s5k4ecgx_s_params.exit.i.if.end15_crit_edge, %do.end4.if.end15_crit_edge
  %ret.0 = phi i32 [ %call13.i, %__s5k4ecgx_s_stream.exit.if.end15_crit_edge ], [ 0, %if.then11 ], [ 0, %do.end4.if.end15_crit_edge ], [ %call8.i, %if.end6.i.if.end15_crit_edge ], [ %ret.15.i.i, %__s5k4ecgx_s_params.exit.i.if.end15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5k4ecgx_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8200, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_get_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %sd_state, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.then
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.then1.v4l2_subdev_get_try_format.exit_crit_edge, !prof !155

if.then1.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then1.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format, ptr %5, i32 48)
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %curr_frmsize = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 5
  %7 = ptrtoint ptr %curr_frmsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr_frmsize, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %format4, align 4
  %12 = load ptr, ptr %curr_frmsize, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height8, align 4
  %curr_pixfmt = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 4
  %16 = ptrtoint ptr %curr_pixfmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_pixfmt, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code9, align 4
  %21 = load ptr, ptr %curr_pixfmt, align 4
  %colorspace = getelementptr inbounds %struct.s5k4ecgx_pixfmt, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %colorspace, align 4
  %colorspace11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %colorspace11, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %v4l2_subdev_get_try_format.exit, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code4.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8200, ptr %code4.i, align 4
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %format, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height6.i, align 4
  %sub.i = sub i32 176, %2
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub7.i = sub i32 144, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 false) #8
  %add.i = add i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp15.not.i = icmp eq i32 %add.i, -1
  %match.1.i = select i1 %cmp15.not.i, ptr null, ptr @s5k4ecgx_prev_sizes
  %sub.1.i = sub i32 352, %2
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  %sub7.1.i = sub i32 288, %4
  %8 = tail call i32 @llvm.abs.i32(i32 %sub7.1.i, i1 false) #8
  %add.1.i = add i32 %8, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %add.i)
  %cmp15.1.i = icmp ult i32 %add.1.i, %add.i
  %match.1.1.i = select i1 %cmp15.1.i, ptr getelementptr inbounds ([4 x %struct.s5k4ecgx_frmsize], ptr @s5k4ecgx_prev_sizes, i32 0, i32 1), ptr %match.1.i
  %9 = tail call i32 @llvm.umin.i32(i32 %add.1.i, i32 %add.i) #8
  %sub.2.i = sub i32 640, %2
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #8
  %sub7.2.i = sub i32 480, %4
  %11 = tail call i32 @llvm.abs.i32(i32 %sub7.2.i, i1 false) #8
  %add.2.i = add i32 %11, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %9)
  %cmp15.2.i = icmp ult i32 %add.2.i, %9
  %match.1.2.i = select i1 %cmp15.2.i, ptr getelementptr inbounds ([4 x %struct.s5k4ecgx_frmsize], ptr @s5k4ecgx_prev_sizes, i32 0, i32 2), ptr %match.1.1.i
  %12 = tail call i32 @llvm.umin.i32(i32 %add.2.i, i32 %9) #8
  %sub.3.i = sub i32 720, %2
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #8
  %add.3.i = add i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %12)
  %cmp15.3.i = icmp ult i32 %add.3.i, %12
  %match.1.3.i = select i1 %cmp15.3.i, ptr getelementptr inbounds ([4 x %struct.s5k4ecgx_frmsize], ptr @s5k4ecgx_prev_sizes, i32 0, i32 3), ptr %match.1.2.i
  %tobool16.not.i = icmp eq ptr %match.1.3.i, null
  br i1 %tobool16.not.i, label %entry.s5k4ecgx_try_frame_size.exit_crit_edge, label %if.then17.i

entry.s5k4ecgx_try_frame_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_try_frame_size.exit

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %match.1.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %match.1.3.i, align 4
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %format, align 4
  %height22.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %match.1.3.i, i32 0, i32 1
  %17 = ptrtoint ptr %height22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height22.i, align 4
  %19 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height6.i, align 4
  br label %s5k4ecgx_try_frame_size.exit

s5k4ecgx_try_frame_size.exit:                     ; preds = %if.then17.i, %entry.s5k4ecgx_try_frame_size.exit_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %s5k4ecgx_try_frame_size.exit
  %tobool.not = icmp eq ptr %sd_state, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %24 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i = icmp eq i16 %25, 0
  br i1 %cmp.i, label %do.end.i, label %if.then6.v4l2_subdev_get_try_format.exit_crit_edge, !prof !155

if.then6.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then6.v4l2_subdev_get_try_format.exit_crit_edge
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %format, i32 48)
  br label %cleanup

if.end9:                                          ; preds = %s5k4ecgx_try_frame_size.exit
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 7
  %29 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool10.not = icmp eq i8 %30, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %curr_frmsize = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 5
  %31 = ptrtoint ptr %curr_frmsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %match.1.3.i, ptr %curr_frmsize, align 4
  %curr_pixfmt = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 4
  %32 = ptrtoint ptr %curr_pixfmt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @s5k4ecgx_formats, ptr %curr_pixfmt, align 4
  %set_params = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 8
  %33 = ptrtoint ptr %set_params to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %set_params, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %ret.0 = phi i32 [ 0, %if.then11 ], [ -16, %if.end9.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %v4l2_subdev_get_try_format.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_registered(ptr noundef %sd) #2 align 64 {
entry:
  %hw_rev.i = alloca i16, align 2
  %fw_ver.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5k4ecgx, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @__s5k4ecgx_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hw_rev.i) #8
  %2 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %hw_rev.i, align 2, !annotation !154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_ver.i) #8
  %3 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %fw_ver.i, align 2
  %call1.i = call fastcc i32 @s5k4ecgx_read(ptr noundef %1, i32 noundef 1879048612, ptr noundef nonnull %fw_ver.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %4 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20160, i16 %5)
  %cmp2.not.i = icmp eq i16 %5, 20160
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i) #11
  br label %s5k4ecgx_read_fw_ver.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = call fastcc i32 @s5k4ecgx_read(ptr noundef %1, i32 noundef 1879048614, ptr noundef nonnull %hw_rev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.s5k4ecgx_read_fw_ver.exit_crit_edge, label %do.end12.i

if.end.i.s5k4ecgx_read_fw_ver.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_read_fw_ver.exit

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %6 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_rev.i, align 2
  %conv17.i = zext i16 %7 to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name14.i, i32 noundef 20160, i32 noundef %conv17.i) #11
  br label %s5k4ecgx_read_fw_ver.exit

s5k4ecgx_read_fw_ver.exit:                        ; preds = %do.end12.i, %if.end.i.s5k4ecgx_read_fw_ver.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -19, %do.end.i ], [ 0, %do.end12.i ], [ %call5.i, %if.end.i.s5k4ecgx_read_fw_ver.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_ver.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hw_rev.i) #8
  %call3 = tail call fastcc i32 @__s5k4ecgx_power_off(ptr noundef %sd)
  br label %if.end

if.end:                                           ; preds = %s5k4ecgx_read_fw_ver.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.if.end_crit_edge ], [ %retval.0.i, %s5k4ecgx_read_fw_ver.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !155

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 176, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 144, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8200, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k4ecgx_read(ptr noundef %client, i32 noundef %addr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %wbuf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %rbuf.i = alloca [2 x i8], align 2
  %buf.i12 = alloca [4 x i8], align 1
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
  store i8 44, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 112, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp sgt i32 %7, 3
  br i1 %cmp.i, label %do.end.i, label %entry.s5k4ecgx_i2c_write.exit_crit_edge

entry.s5k4ecgx_i2c_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 44, i32 noundef 28672) #11
  br label %s5k4ecgx_i2c_write.exit

s5k4ecgx_i2c_write.exit:                          ; preds = %do.end.i, %entry.s5k4ecgx_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %call.i.i, 4
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %if.then, label %s5k4ecgx_i2c_write.exit.if.end_crit_edge

s5k4ecgx_i2c_write.exit.if.end_crit_edge:         ; preds = %s5k4ecgx_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %s5k4ecgx_i2c_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i12) #8
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i12, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i12, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i12, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i12, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 46, ptr %8, align 1
  %13 = lshr i32 %addr, 8
  %conv7.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %9, align 1
  %conv11.i = trunc i32 %addr to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11.i, ptr %10, align 1
  %call.i.i13 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i12, i32 noundef 4, i16 noundef zeroext 0) #8
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i14 = icmp sgt i32 %16, 3
  br i1 %cmp.i14, label %do.end.i17, label %if.then.s5k4ecgx_i2c_write.exit20_crit_edge

if.then.s5k4ecgx_i2c_write.exit20_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_write.exit20

do.end.i17:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = and i32 %addr, 65535
  %name.i15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i15, i32 noundef 46, i32 noundef %conv5.i) #11
  br label %s5k4ecgx_i2c_write.exit20

s5k4ecgx_i2c_write.exit20:                        ; preds = %do.end.i17, %if.then.s5k4ecgx_i2c_write.exit20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i13)
  %cmp20.i18 = icmp eq i32 %call.i.i13, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i12) #8
  br i1 %cmp20.i18, label %s5k4ecgx_i2c_write.exit20.if.then4_crit_edge, label %s5k4ecgx_i2c_write.exit20.if.end_crit_edge

s5k4ecgx_i2c_write.exit20.if.end_crit_edge:       ; preds = %s5k4ecgx_i2c_write.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

s5k4ecgx_i2c_write.exit20.if.then4_crit_edge:     ; preds = %s5k4ecgx_i2c_write.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end:                                           ; preds = %s5k4ecgx_i2c_write.exit20.if.end_crit_edge, %s5k4ecgx_i2c_write.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %spec.select.i, %s5k4ecgx_i2c_write.exit.if.end_crit_edge ], [ %call.i.i13, %s5k4ecgx_i2c_write.exit20.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %s5k4ecgx_i2c_write.exit20.if.then4_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #8
  %17 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %18 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 15, ptr %wbuf.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 18, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rbuf.i) #8
  %22 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %rbuf.i, align 2, !annotation !154
  %23 = getelementptr inbounds [2 x i8], ptr %rbuf.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !154
  %addr4.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %25 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr4.i, align 2
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %20, align 4
  %buf.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %wbuf.i, ptr %buf.i21, align 4
  %arrayidx10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %26, ptr %arrayidx10.i, align 4
  %flags13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags13.i, align 2
  %len15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %len15.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2, ptr %len15.i, align 4
  %buf18.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %buf18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rbuf.i, ptr %buf18.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  %37 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rbuf.i, align 2
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %val, align 2
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp.i22 = icmp sgt i32 %40, 3
  br i1 %cmp.i22, label %do.end.i24, label %if.then4.s5k4ecgx_i2c_read.exit_crit_edge

if.then4.s5k4ecgx_i2c_read.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5k4ecgx_i2c_read.exit

do.end.i24:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %name.i23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %conv25.i = zext i16 %38 to i32
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i23, i32 noundef 3858, i32 noundef %conv25.i) #11
  br label %s5k4ecgx_i2c_read.exit

s5k4ecgx_i2c_read.exit:                           ; preds = %do.end.i24, %if.then4.s5k4ecgx_i2c_read.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp29.i = icmp eq i32 %call.i, 2
  %spec.select.i25 = select i1 %cmp29.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #8
  br label %if.end6

if.end6:                                          ; preds = %s5k4ecgx_i2c_read.exit, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.if.end6_crit_edge ], [ %spec.select.i25, %s5k4ecgx_i2c_read.exit ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4ecgx_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 -112
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %6, i32 noundef %8) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %lock = getelementptr i8, ptr %1, i32 196
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %id8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %9 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id8, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %10, label %sw.epilog.thread [
    i32 9963777, label %do.end7.sw.epilog.sink.split_crit_edge
    i32 9963778, label %sw.bb11
    i32 9963803, label %for.cond.preheader
    i32 9963776, label %sw.bb22
  ]

do.end7.sw.epilog.sink.split_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

for.cond.preheader:                               ; preds = %do.end7
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val18, align 4
  %14 = trunc i32 %13 to i16
  %conv20 = mul i16 %14, 8208
  %call21 = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %3, i32 noundef 1879050792, i16 noundef zeroext %conv20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %for.body.1, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end37

sw.bb11:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

for.body.1:                                       ; preds = %for.cond.preheader
  %15 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val18, align 4
  %17 = trunc i32 %16 to i16
  %conv20.1 = mul i16 %17, 8208
  %call21.1 = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %3, i32 noundef 1879050974, i16 noundef zeroext %conv20.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool.not.1, label %for.body.2, label %for.body.1.sw.epilog_crit_edge

for.body.1.sw.epilog_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.2:                                       ; preds = %for.body.1
  %18 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val18, align 4
  %20 = trunc i32 %19 to i16
  %conv20.2 = mul i16 %20, 8208
  %call21.2 = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %3, i32 noundef 1879051156, i16 noundef zeroext %conv20.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %tobool.not.2 = icmp eq i32 %call21.2, 0
  br i1 %tobool.not.2, label %for.body.3, label %for.body.2.sw.epilog_crit_edge

for.body.2.sw.epilog_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val18, align 4
  %23 = trunc i32 %22 to i16
  %conv20.3 = mul i16 %23, 8208
  %call21.3 = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %3, i32 noundef 1879051338, i16 noundef zeroext %conv20.3)
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb22, %sw.bb11, %do.end7.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1879048748, %sw.bb22 ], [ 1879048752, %sw.bb11 ], [ 1879048750, %do.end7.sw.epilog.sink.split_crit_edge ]
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val23, align 4
  %conv24 = trunc i32 %25 to i16
  %call25 = tail call fastcc i32 @s5k4ecgx_write(ptr noundef %3, i32 noundef %.sink, i16 noundef zeroext %conv24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.3, %for.body.2.sw.epilog_crit_edge, %for.body.1.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge
  %err.1 = phi i32 [ %call25, %sw.epilog.sink.split ], [ %call21, %for.cond.preheader.sw.epilog_crit_edge ], [ %call21.1, %for.body.1.sw.epilog_crit_edge ], [ %call21.2, %for.body.2.sw.epilog_crit_edge ], [ %call21.3, %for.body.3 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp27 = icmp slt i32 %err.1, 0
  br i1 %cmp27, label %do.end32, label %sw.epilog.if.end37_crit_edge

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %name34 = getelementptr i8, ptr %1, i32 -112
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name34, i32 noundef %err.1) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end32, %sw.epilog.if.end37_crit_edge, %sw.epilog.thread
  %err.159 = phi i32 [ 0, %sw.epilog.thread ], [ %err.1, %do.end32 ], [ %err.1, %sw.epilog.if.end37_crit_edge ]
  ret i32 %err.159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_s5k4ecgx__293_1028_v4l2_i2c_driver_init6, !4, !"__initcall__kmod_s5k4ecgx__293_1028_v4l2_i2c_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1028, i32 1}
!5 = !{ptr @__exitcall_v4l2_i2c_driver_exit, !4, !"__exitcall_v4l2_i2c_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description294, !7, !"__UNIQUE_ID_description294", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1030, i32 1}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1031, i32 1}
!10 = !{ptr @__UNIQUE_ID_author296, !11, !"__UNIQUE_ID_author296", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1032, i32 1}
!12 = !{ptr @__UNIQUE_ID_file297, !13, !"__UNIQUE_ID_file297", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1033, i32 1}
!14 = !{ptr @__UNIQUE_ID_license298, !13, !"__UNIQUE_ID_license298", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_firmware299, !16, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1034, i32 1}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 32, i32 12}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1021, i32 11}
!22 = !{ptr @v4l2_i2c_driver, !23, !"v4l2_i2c_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1019, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 941, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @s5k4ecgx_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @s5k4ecgx_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @s5k4ecgx_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 949, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 970, i32 3}
!37 = !{ptr @s5k4ecgx_probe._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @s5k4ecgx_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 979, i32 3}
!41 = !{ptr @s5k4ecgx_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @s5k4ecgx_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @s5k4ecgx_ops, !44, !"s5k4ecgx_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 837, i32 37}
!45 = !{ptr @s5k4ecgx_core_ops, !46, !"s5k4ecgx_core_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 741, i32 42}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 714, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @s5k4ecgx_s_power._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5k4ecgx_s_power._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 452, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @s5k4ecgx_init_sensor._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @s5k4ecgx_init_sensor._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 231, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @s5k4ecgx_i2c_write._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5k4ecgx_i2c_write._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 333, i32 30}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 335, i32 3}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @s5k4ecgx_load_firmware._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5k4ecgx_load_firmware._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 340, i32 2}
!73 = !{ptr @s5k4ecgx_load_firmware._entry.24, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @s5k4ecgx_load_firmware._entry_ptr.26, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 351, i32 3}
!77 = !{ptr @s5k4ecgx_load_firmware._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @s5k4ecgx_load_firmware._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 241, i32 2}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @s5k4ecgx_write._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @s5k4ecgx_write._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @s5k4ecgx_video_ops, !85, !"s5k4ecgx_video_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 833, i32 43}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 819, i32 2}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s5k4ecgx_s_stream._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @s5k4ecgx_s_stream._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @s5k4ecgx_pad_ops, !92, !"s5k4ecgx_pad_ops", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 615, i32 41}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!95 = !{ptr @s5k4ecgx_subdev_internal_ops, !96, !"s5k4ecgx_subdev_internal_ops", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 704, i32 46}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 274, i32 3}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @s5k4ecgx_read_fw_ver._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @s5k4ecgx_read_fw_ver._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 282, i32 2}
!104 = !{ptr @s5k4ecgx_read_fw_ver._entry.37, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @s5k4ecgx_read_fw_ver._entry_ptr.39, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 221, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @s5k4ecgx_i2c_read._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5k4ecgx_i2c_read._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 881, i32 54}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 893, i32 54}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 166, i32 2}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 167, i32 2}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 168, i32 2}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 169, i32 2}
!123 = distinct !{null, !124, !"s5k4ecgx_supply_names", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 161, i32 27}
!125 = !{ptr @s5k4ecgx_init_v4l2_ctrls._key, !126, !"_key", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 911, i32 8}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @s5k4ecgx_ctrl_ops, !129, !"s5k4ecgx_ctrl_ops", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 663, i32 35}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 633, i32 2}
!132 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @s5k4ecgx_s_ctrl._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @s5k4ecgx_s_ctrl._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 658, i32 3}
!137 = !{ptr @s5k4ecgx_s_ctrl._entry.51, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @s5k4ecgx_s_ctrl._entry_ptr.53, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @s5k4ecgx_formats, !140, !"s5k4ecgx_formats", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 157, i32 37}
!141 = !{ptr @s5k4ecgx_prev_sizes, !142, !"s5k4ecgx_prev_sizes", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 131, i32 38}
!143 = !{ptr @s5k4ecgx_id, !144, !"s5k4ecgx_id", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/s5k4ecgx.c", i32 1013, i32 35}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{!"branch_weights", i32 1, i32 2000}
