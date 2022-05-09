; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov9650.c_pt.bc'
source_filename = "../drivers/media/i2c/ov9650.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ov965x_framesize = type { i16, i16, i16, ptr }
%struct.ov965x_interval = type { %struct.v4l2_fract, %struct.v4l2_frmsize_discrete, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_rv = type { i8, i8 }
%struct.ov965x_pixfmt = type { i32, i32, i8 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.ov965x = type { %struct.v4l2_subdev, %struct.media_pad, i32, [2 x ptr], i32, ptr, %struct.mutex, ptr, i32, i16, ptr, i8, %struct.v4l2_mbus_framefmt, %struct.ov965x_ctrls, ptr, i32, i32, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.ov965x_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.ov9650_platform_data = type { i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__param_str_debug = internal constant [13 x i8] c"ov9650.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [26 x i8] c"ov9650.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [36 x i8] c"ov9650.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_ov9650__294_1626_ov965x_i2c_driver_init6 = internal global ptr @ov965x_i2c_driver_init, section ".initcall6.init", align 4
@ov965x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov965x_remove, ptr @ov965x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov965x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov965x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov965x_i2c_driver_exit = internal global ptr @ov965x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [64 x i8] c"ov9650.author=Sylwester Nawrocki <sylvester.nawrocki@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [58 x i8] c"ov9650.description=OV9650/OV9652 CMOS Image Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"ov9650.file=drivers/media/i2c/ov9650\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"ov9650.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV9650\00", [25 x i8] zeroinitializer }, align 32
@ov965x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov9650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov9652\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ov965x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"OV9650\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"OV9652\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ov965x_probe.ov965x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 171, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ov965x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ov9650:1510:(&ov965x_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@ov965x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov965x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov9650.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov965x_probe._entry_ptr = internal global ptr @ov965x_probe._entry, section ".printk_index", align 4
@ov965x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCLK frequency not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@ov965x_probe._entry_ptr.9 = internal global ptr @ov965x_probe._entry.7, section ".printk_index", align 4
@ov965x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1537, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Neither platform data nor device property specified\0A\00", [43 x i8] zeroinitializer }, align 32
@ov965x_probe._entry_ptr.12 = internal global ptr @ov965x_probe._entry.10, section ".printk_index", align 4
@ov965x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ov965x->lock\00", [18 x i8] zeroinitializer }, align 32
@ov965x_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov965x_core_ops, ptr null, ptr null, ptr @ov965x_video_ops, ptr null, ptr null, ptr null, ptr @ov965x_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov965x_sd_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov965x_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov965x_framesizes = internal constant { [3 x %struct.ov965x_framesize], [60 x i8] } { [3 x %struct.ov965x_framesize] [%struct.ov965x_framesize { i16 1280, i16 1024, i16 1048, ptr @ov965x_sxga_regs }, %struct.ov965x_framesize { i16 640, i16 480, i16 498, ptr @ov965x_vga_regs }, %struct.ov965x_framesize { i16 320, i16 240, i16 248, ptr @ov965x_qvga_regs }], [60 x i8] zeroinitializer }, align 32
@ov965x_intervals = internal global { [5 x %struct.ov965x_interval], [60 x i8] } { [5 x %struct.ov965x_interval] [%struct.ov965x_interval { %struct.v4l2_fract { i32 100, i32 625 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 1024 }, i8 0 }, %struct.ov965x_interval { %struct.v4l2_fract { i32 10, i32 125 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 }, i8 1 }, %struct.ov965x_interval { %struct.v4l2_fract { i32 10, i32 125 }, %struct.v4l2_frmsize_discrete { i32 320, i32 240 }, i8 3 }, %struct.ov965x_interval { %struct.v4l2_fract { i32 1, i32 25 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 }, i8 0 }, %struct.ov965x_interval { %struct.v4l2_fract { i32 1, i32 25 }, %struct.v4l2_frmsize_discrete { i32 320, i32 240 }, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV965X\00", [25 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: set gpio %d to 1\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov965x_configure_gpios_pdata\00", [35 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios_pdata._entry_ptr = internal global ptr @ov965x_configure_gpios_pdata._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1444, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get %s GPIO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov965x_configure_gpios\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios._entry_ptr = internal global ptr @ov965x_configure_gpios._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1451, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ov965x_configure_gpios._entry_ptr.23 = internal global ptr @ov965x_configure_gpios._entry.22, section ".printk_index", align 4
@ov965x_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov965x_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov965x_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov965x_s_stream, ptr null, ptr @ov965x_g_frame_interval, ptr @ov965x_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov965x_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov965x_enum_mbus_code, ptr @ov965x_enum_frame_sizes, ptr null, ptr @ov965x_get_fmt, ptr @ov965x_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov965x_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: on: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov965x_s_power\00", [17 x i8] zeroinitializer }, align 32
@ov965x_s_power._entry_ptr = internal global ptr @ov965x_s_power._entry, section ".printk_index", align 4
@ov965x_init_regs = internal constant { [54 x %struct.i2c_rv], [52 x i8] } { [54 x %struct.i2c_rv] [%struct.i2c_rv { i8 9, i8 16 }, %struct.i2c_rv { i8 14, i8 0 }, %struct.i2c_rv { i8 9, i8 1 }, %struct.i2c_rv { i8 21, i8 0 }, %struct.i2c_rv { i8 63, i8 -90 }, %struct.i2c_rv { i8 65, i8 2 }, %struct.i2c_rv { i8 66, i8 8 }, %struct.i2c_rv { i8 22, i8 6 }, %struct.i2c_rv { i8 51, i8 -64 }, %struct.i2c_rv { i8 52, i8 -65 }, %struct.i2c_rv { i8 -88, i8 -128 }, %struct.i2c_rv { i8 -106, i8 4 }, %struct.i2c_rv { i8 -114, i8 0 }, %struct.i2c_rv { i8 60, i8 119 }, %struct.i2c_rv { i8 -117, i8 6 }, %struct.i2c_rv { i8 53, i8 -111 }, %struct.i2c_rv { i8 -108, i8 -120 }, %struct.i2c_rv { i8 -107, i8 -120 }, %struct.i2c_rv { i8 64, i8 -63 }, %struct.i2c_rv { i8 41, i8 47 }, %struct.i2c_rv { i8 15, i8 67 }, %struct.i2c_rv { i8 19, i8 -27 }, %struct.i2c_rv { i8 61, i8 -112 }, %struct.i2c_rv { i8 105, i8 -128 }, %struct.i2c_rv { i8 92, i8 -106 }, %struct.i2c_rv { i8 93, i8 -106 }, %struct.i2c_rv { i8 94, i8 16 }, %struct.i2c_rv { i8 89, i8 -21 }, %struct.i2c_rv { i8 90, i8 -100 }, %struct.i2c_rv { i8 91, i8 85 }, %struct.i2c_rv { i8 67, i8 -16 }, %struct.i2c_rv { i8 68, i8 16 }, %struct.i2c_rv { i8 69, i8 85 }, %struct.i2c_rv { i8 70, i8 -122 }, %struct.i2c_rv { i8 71, i8 100 }, %struct.i2c_rv { i8 72, i8 -122 }, %struct.i2c_rv { i8 95, i8 -32 }, %struct.i2c_rv { i8 96, i8 -116 }, %struct.i2c_rv { i8 97, i8 32 }, %struct.i2c_rv { i8 -91, i8 -39 }, %struct.i2c_rv { i8 -92, i8 116 }, %struct.i2c_rv { i8 -115, i8 2 }, %struct.i2c_rv { i8 19, i8 -25 }, %struct.i2c_rv { i8 -116, i8 35 }, %struct.i2c_rv { i8 -87, i8 -72 }, %struct.i2c_rv { i8 -86, i8 -110 }, %struct.i2c_rv { i8 -85, i8 10 }, %struct.i2c_rv { i8 -113, i8 -33 }, %struct.i2c_rv { i8 -112, i8 0 }, %struct.i2c_rv { i8 -111, i8 0 }, %struct.i2c_rv { i8 -97, i8 0 }, %struct.i2c_rv { i8 -96, i8 0 }, %struct.i2c_rv { i8 20, i8 58 }, %struct.i2c_rv { i8 -1, i8 0 }], [52 x i8] zeroinitializer }, align 32
@ov965x_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: 0x%02x @ 0x%02X (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov965x_write\00", [19 x i8] zeroinitializer }, align 32
@ov965x_write._entry_ptr = internal global ptr @ov965x_write._entry, section ".printk_index", align 4
@ov965x_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.28, ptr @.str.4, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov965x_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ov965x_s_stream._entry_ptr = internal global ptr @ov965x_s_stream._entry, section ".printk_index", align 4
@frame_size_reg_addr = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\12\0C\0D\17\182\19\1A\03*+789", [18 x i8] zeroinitializer }, align 32
@ov965x_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: 0x%02x @ 0x%02x. (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov965x_read\00", [20 x i8] zeroinitializer }, align 32
@ov965x_read._entry_ptr = internal global ptr @ov965x_read._entry, section ".printk_index", align 4
@ov965x_set_default_gamma_curve.gamma_curve = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"@0K`pppp``PH:.(\22\04\07\10(6DR`lx\8C\9E\BB\D2\E6", [33 x i8] zeroinitializer }, align 32
@ov965x_set_color_matrix.mtx = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c":=\03\12&8@@@\0D", [22 x i8] zeroinitializer }, align 32
@ov965x_s_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Setting %d/%d frame interval\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov965x_s_frame_interval\00", [40 x i8] zeroinitializer }, align 32
@ov965x_s_frame_interval._entry_ptr = internal global ptr @ov965x_s_frame_interval._entry, section ".printk_index", align 4
@__ov965x_set_frame_interval._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1148, ptr null, ptr null }, align 1
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Changed frame interval to %u us\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__ov965x_set_frame_interval\00", [36 x i8] zeroinitializer }, align 32
@__ov965x_set_frame_interval._entry_ptr = internal global ptr @__ov965x_set_frame_interval._entry, section ".printk_index", align 4
@ov965x_formats = internal constant { [4 x %struct.ov965x_pixfmt], [48 x i8] } { [4 x %struct.ov965x_pixfmt] [%struct.ov965x_pixfmt { i32 8200, i32 7, i8 0 }, %struct.ov965x_pixfmt { i32 8201, i32 7, i8 4 }, %struct.ov965x_pixfmt { i32 8198, i32 7, i8 12 }, %struct.ov965x_pixfmt { i32 8199, i32 7, i8 8 }], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov965x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov965x_g_volatile_ctrl, ptr null, ptr @ov965x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov965x_initialize_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov9650:995:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@ov965x_g_volatile_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: g_ctrl: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov965x_g_volatile_ctrl\00", [41 x i8] zeroinitializer }, align 32
@ov965x_g_volatile_ctrl._entry_ptr = internal global ptr @ov965x_g_volatile_ctrl._entry, section ".printk_index", align 4
@ov965x_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: s_ctrl: %s, value: %d. power: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov965x_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@ov965x_s_ctrl._entry_ptr = internal global ptr @ov965x_s_ctrl._entry, section ".printk_index", align 4
@ov965x_set_brightness.regs = internal constant { [8 x [3 x i8]], [40 x i8] } { [8 x [3 x i8]] [[3 x i8] c"$%&", [3 x i8] c"\1C\12P", [3 x i8] c"=0q", [3 x i8] c"PD\92", [3 x i8] c"pd\C3", [3 x i8] c"\90\84\D4", [3 x i8] c"\C4\BF\F9", [3 x i8] c"\D8\D0\FA"], [40 x i8] zeroinitializer }, align 32
@ov965x_set_saturation.regs = internal constant { [5 x [6 x i8]], [34 x i8] } { [5 x [6 x i8]] [[6 x i8] c"\1D\1F\02\09\13\1C", [6 x i8] c".1\02\0E\1E-", [6 x i8] c":=\03\12&8", [6 x i8] c"FI\04\16.C", [6 x i8] c"W\\\05\1B9T"], [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@ov965x_sxga_regs = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\00\00\1E\BE\BF\01\81\12\104\81\93Q", [18 x i8] zeroinitializer }, align 32
@ov965x_vga_regs = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"@\04\80&\C6\ED\01=\00\10@\91\12C", [18 x i8] zeroinitializer }, align 32
@ov965x_qvga_regs = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\10\04\80%\C5\BF\00\80\12\10@\91\12C", [18 x i8] zeroinitializer }, align 32
@ov965x_detect_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Found OV%04X sensor\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov965x_detect_sensor\00", [43 x i8] zeroinitializer }, align 32
@ov965x_detect_sensor._entry_ptr = internal global ptr @ov965x_detect_sensor._entry, section ".printk_index", align 4
@ov965x_detect_sensor._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Sensor detection failed (%04X)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov965x_detect_sensor._entry_ptr.47 = internal global ptr @ov965x_detect_sensor._entry.45, section ".printk_index", align 4
@ov965x_update_exposure_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: clkrc: %#x, fi: %lu, tr: %lu, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov965x_update_exposure_ctrl\00", [36 x i8] zeroinitializer }, align 32
@ov965x_update_exposure_ctrl._entry_ptr = internal global ptr @ov965x_update_exposure_ctrl._entry, section ".printk_index", align 4
@ov965x_update_exposure_ctrl._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Exposure ctrl range update failed\0A\00", [55 x i8] zeroinitializer }, align 32
@ov965x_update_exposure_ctrl._entry_ptr.52 = internal global ptr @ov965x_update_exposure_ctrl._entry.50, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 38480, i64 38482]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.54 = internal global [11 x i64] [i64 9, i64 32, i64 9963776, i64 9963778, i64 9963788, i64 9963794, i64 9963796, i64 9963800, i64 9963803, i64 10094849, i64 10422531]
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 35, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"ov965x_i2c_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1616, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1618, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ov965x_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1608, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"ov965x_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1600, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"ov965x_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1500, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1510, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1512, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1518, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1536, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1542, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"ov965x_subdev_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1399, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"ov965x_sd_internal_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1388, i32 46 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"ov965x_framesizes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 369, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"ov965x_intervals\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 407, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1424, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1427, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1441, i32 58 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1444, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1448, i32 57 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1451, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"ov965x_core_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1392, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"ov965x_video_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1381, i32 43 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"ov965x_pad_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1374, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 536, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"ov965x_init_regs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 286, i32 28 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 448, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1330, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"frame_size_reg_addr\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 348, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 436, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"gamma_curve\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 467, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant [4 x i8] c"mtx\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 490, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1159, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1147, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"ov965x_formats\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 395, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 998, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"ov965x_ctrl_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 978, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 995, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant [18 x i8] c"test_pattern_menu\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 983, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 909, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 923, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 651, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 824, i32 18 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 984, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 985, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"ov965x_sxga_regs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 353, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"ov965x_vga_regs\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 358, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"ov965x_qvga_regs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 364, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1481, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1483, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 582, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [30 x i8] c"../drivers/media/i2c/ov9650.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 591, i32 3 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ov965x_i2c_driver_exit, ptr @__initcall__kmod_ov9650__294_1626_ov965x_i2c_driver_init6, ptr @__ov965x_set_frame_interval._entry, ptr @__ov965x_set_frame_interval._entry_ptr, ptr @__param_debug, ptr @ov965x_configure_gpios._entry, ptr @ov965x_configure_gpios._entry.22, ptr @ov965x_configure_gpios._entry_ptr, ptr @ov965x_configure_gpios._entry_ptr.23, ptr @ov965x_configure_gpios_pdata._entry, ptr @ov965x_configure_gpios_pdata._entry_ptr, ptr @ov965x_detect_sensor._entry, ptr @ov965x_detect_sensor._entry.45, ptr @ov965x_detect_sensor._entry_ptr, ptr @ov965x_detect_sensor._entry_ptr.47, ptr @ov965x_g_volatile_ctrl._entry, ptr @ov965x_g_volatile_ctrl._entry_ptr, ptr @ov965x_i2c_driver_exit, ptr @ov965x_probe._entry, ptr @ov965x_probe._entry.10, ptr @ov965x_probe._entry.7, ptr @ov965x_probe._entry_ptr, ptr @ov965x_probe._entry_ptr.12, ptr @ov965x_probe._entry_ptr.9, ptr @ov965x_read._entry, ptr @ov965x_read._entry_ptr, ptr @ov965x_s_ctrl._entry, ptr @ov965x_s_ctrl._entry_ptr, ptr @ov965x_s_frame_interval._entry, ptr @ov965x_s_frame_interval._entry_ptr, ptr @ov965x_s_power._entry, ptr @ov965x_s_power._entry_ptr, ptr @ov965x_s_stream._entry, ptr @ov965x_s_stream._entry_ptr, ptr @ov965x_update_exposure_ctrl._entry, ptr @ov965x_update_exposure_ctrl._entry.50, ptr @ov965x_update_exposure_ctrl._entry_ptr, ptr @ov965x_update_exposure_ctrl._entry_ptr.52, ptr @ov965x_write._entry, ptr @ov965x_write._entry_ptr, ptr @debug, ptr @ov965x_i2c_driver, ptr @.str, ptr @ov965x_of_match, ptr @ov965x_id, ptr @ov965x_probe.ov965x_regmap_config, ptr @ov965x_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @ov965x_probe.__key, ptr @.str.13, ptr @ov965x_subdev_ops, ptr @ov965x_sd_internal_ops, ptr @ov965x_framesizes, ptr @ov965x_intervals, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ov965x_core_ops, ptr @ov965x_video_ops, ptr @ov965x_pad_ops, ptr @.str.24, ptr @.str.25, ptr @ov965x_init_regs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @frame_size_reg_addr, ptr @.str.29, ptr @.str.30, ptr @ov965x_set_default_gamma_curve.gamma_curve, ptr @ov965x_set_color_matrix.mtx, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ov965x_formats, ptr @.str.35, ptr @ov965x_ctrl_ops, ptr @ov965x_initialize_controls._key, ptr @.str.36, ptr @test_pattern_menu, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @ov965x_set_brightness.regs, ptr @ov965x_set_saturation.regs, ptr @.str.41, ptr @.str.42, ptr @ov965x_sxga_regs, ptr @ov965x_vga_regs, ptr @ov965x_qvga_regs, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe.ov965x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_sd_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_framesizes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_intervals to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_configure_gpios_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_configure_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_configure_gpios._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_init_regs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_size_reg_addr to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_set_default_gamma_curve.gamma_curve to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_set_color_matrix.mtx to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_s_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_initialize_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_g_volatile_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_set_brightness.regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_set_saturation.regs to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_sxga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_vga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_qvga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_detect_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_detect_sensor._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_update_exposure_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_update_exposure_ctrl._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov965x_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov965x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov965x_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  %lock = getelementptr inbounds %struct.ov965x, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i50.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 664, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_sccb(ptr noundef %client, ptr noundef nonnull @ov965x_probe.ov965x_regmap_config, ptr noundef nonnull @ov965x_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end17:                                         ; preds = %if.then11
  %mclk_frequency19 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %mclk_frequency19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mclk_frequency19, align 4
  %call.i129 = tail call ptr @regmap_get_device(ptr noundef %call2) #8
  %gpio_pwdn.i = getelementptr inbounds %struct.ov9650_platform_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %gpio_pwdn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_pwdn.i, align 4
  %gpio_reset.i = getelementptr inbounds %struct.ov9650_platform_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_reset.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %13 = icmp ult i32 %10, 2048
  br i1 %13, label %if.end.i, label %if.end17.for.inc.i_crit_edge

if.end17.for.inc.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end17
  %call4.i = tail call i32 @devm_gpio_request_one(ptr noundef %call.i129, i32 noundef %10, i32 noundef 2, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i = icmp sgt i32 %14, 0
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.do.end14.i_crit_edge

do.body.i.do.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %10) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.body.i.do.end14.i_crit_edge
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %10) #8
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i.i, i32 noundef 1) #8
  %call.i35.i = tail call ptr @gpio_to_desc(i32 noundef %10) #8
  %call1.i.i = tail call i32 @gpiod_export(ptr noundef %call.i35.i, i1 noundef zeroext false) #8
  %call16.i = tail call ptr @gpio_to_desc(i32 noundef %10) #8
  %arrayidx18.i = getelementptr %struct.ov965x, ptr %call.i, i32 0, i32 3, i32 0
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16.i, ptr %arrayidx18.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end14.i, %if.end17.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %12)
  %16 = icmp ult i32 %12, 2048
  br i1 %16, label %if.end.1.i, label %for.inc.i.do.body50_crit_edge

for.inc.i.do.body50_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.end.1.i:                                       ; preds = %for.inc.i
  %call4.1.i = tail call i32 @devm_gpio_request_one(ptr noundef %call.i129, i32 noundef %12, i32 noundef 2, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1.i)
  %cmp5.1.i = icmp slt i32 %call4.1.i, 0
  br i1 %cmp5.1.i, label %if.end.1.i.cleanup_crit_edge, label %do.body.1.i

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.1.i:                                      ; preds = %if.end.1.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.1.i = icmp sgt i32 %17, 0
  br i1 %cmp8.1.i, label %do.end.1.i, label %do.body.1.i.do.end14.1.i_crit_edge

do.body.1.i.do.end14.1.i_crit_edge:               ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.1.i

do.end.1.i:                                       ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %12) #11
  br label %do.end14.1.i

do.end14.1.i:                                     ; preds = %do.end.1.i, %do.body.1.i.do.end14.1.i_crit_edge
  %call.i.1.i = tail call ptr @gpio_to_desc(i32 noundef %12) #8
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i.1.i, i32 noundef 1) #8
  %call.i35.1.i = tail call ptr @gpio_to_desc(i32 noundef %12) #8
  %call1.i.1.i = tail call i32 @gpiod_export(ptr noundef %call.i35.1.i, i1 noundef zeroext false) #8
  %call16.1.i = tail call ptr @gpio_to_desc(i32 noundef %12) #8
  %arrayidx18.1.i = getelementptr %struct.ov965x, ptr %call.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16.1.i, ptr %arrayidx18.1.i, align 4
  br label %do.body50

if.else:                                          ; preds = %if.end9
  %call25 = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end46, label %if.then27

if.then27:                                        ; preds = %if.else
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29, ptr %clk, align 4
  %cmp.i130 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.then27
  %call37 = tail call i32 @clk_get_rate(ptr noundef %call29) #8
  %mclk_frequency38 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %mclk_frequency38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call37, ptr %mclk_frequency38, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i132 = tail call ptr @regmap_get_device(ptr noundef %23) #8
  %call1.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %call.i132, ptr noundef nonnull @.str.17, i32 noundef 7) #8
  %gpios.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %gpios.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i, ptr %gpios.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end35.ov965x_configure_gpios.exit_crit_edge, label %if.end.i133

if.end35.ov965x_configure_gpios.exit_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_configure_gpios.exit

if.end.i133:                                      ; preds = %if.end35
  %call8.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %call.i132, ptr noundef nonnull @.str.21, i32 noundef 7) #8
  %arrayidx10.i = getelementptr %struct.ov965x, ptr %call.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i, ptr %arrayidx10.i, align 4
  %cmp.i31.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i, label %if.end.i133.ov965x_configure_gpios.exit_crit_edge, label %if.end.i133.do.body50_crit_edge

if.end.i133.do.body50_crit_edge:                  ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.end.i133.ov965x_configure_gpios.exit_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_configure_gpios.exit

ov965x_configure_gpios.exit:                      ; preds = %if.end.i133.ov965x_configure_gpios.exit_crit_edge, %if.end35.ov965x_configure_gpios.exit_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.17, %if.end35.ov965x_configure_gpios.exit_crit_edge ], [ @.str.21, %if.end.i133.ov965x_configure_gpios.exit_crit_edge ]
  %arrayidx10.sink.i = phi ptr [ %gpios.i, %if.end35.ov965x_configure_gpios.exit_crit_edge ], [ %arrayidx10.i, %if.end.i133.ov965x_configure_gpios.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i132, ptr noundef nonnull @.str.18, ptr noundef nonnull %.str.21.sink.i) #11
  %26 = ptrtoint ptr %arrayidx10.sink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx10.sink.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %cmp40 = icmp slt ptr %27, null
  br i1 %cmp40, label %ov965x_configure_gpios.exit.cleanup_crit_edge, label %ov965x_configure_gpios.exit.do.body50_crit_edge

ov965x_configure_gpios.exit.do.body50_crit_edge:  ; preds = %ov965x_configure_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

ov965x_configure_gpios.exit.cleanup_crit_edge:    ; preds = %ov965x_configure_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

do.body50:                                        ; preds = %ov965x_configure_gpios.exit.do.body50_crit_edge, %if.end.i133.do.body50_crit_edge, %do.end14.1.i, %for.inc.i.do.body50_crit_edge
  %lock = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ov965x_probe.__key) #8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov965x_subdev_ops) #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call54 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ov965x_sd_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or = or i32 %31, 12
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 1
  %flags55 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags55, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 131073, ptr %function, align 4
  %call58 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.body50.err_mutex_crit_edge, label %if.end61

do.body50.err_mutex_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex

if.end61:                                         ; preds = %do.body50
  %ctrls1.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13
  %call.i134 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1.i, i32 noundef 16, ptr noundef nonnull @ov965x_initialize_controls._key, ptr noundef nonnull @.str.36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp.i135 = icmp slt i32 %call.i134, 0
  br i1 %cmp.i135, label %if.end61.err_mutex_crit_edge, label %if.end.i139

if.end61.err_mutex_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex

if.end.i139:                                      ; preds = %if.end61
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %34 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call2.i, ptr %34, align 4
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #8
  %blue_balance.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 2, i32 1
  %36 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call3.i, ptr %blue_balance.i, align 4
  %call4.i136 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #8
  %red_balance.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 2, i32 2
  %37 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call4.i136, ptr %red_balance.i, align 4
  %call5.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #8
  %38 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i, ptr %38, align 4
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 10094850, i64 noundef 2, i64 noundef 1500, i64 noundef 1, i64 noundef 500) #8
  %exposure.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 1, i32 1
  %40 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call6.i, ptr %exposure.i, align 4
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %41 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i, ptr %41, align 4
  %call8.i137 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963795, i64 noundef 16, i64 noundef 1984, i64 noundef 1, i64 noundef 1024) #8
  %gain.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 4, i32 1
  %43 = ptrtoint ptr %gain.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i137, ptr %gain.i, align 4
  %call9.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963778, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #8
  %saturation.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 6
  %44 = ptrtoint ptr %saturation.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i, ptr %saturation.i, align 4
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963776, i64 noundef -3, i64 noundef 3, i64 noundef 1, i64 noundef 0) #8
  %brightness.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call10.i, ptr %brightness.i, align 4
  %call11.i138 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 32, i64 noundef 1, i64 noundef 6) #8
  %sharpness.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 7
  %46 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call11.i138, ptr %sharpness.i, align 4
  %call12.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %47 = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call12.i, ptr %47, align 4
  %call13.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %vflip.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 3, i32 1
  %49 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call13.i, ptr %vflip.i, align 4
  %call14.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 1) #8
  %light_freq.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 8
  %50 = ptrtoint ptr %light_freq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call14.i, ptr %light_freq.i, align 4
  %call15.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls1.i, ptr noundef nonnull @ov965x_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @test_pattern_menu) #8
  %error.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 13, i32 0, i32 9
  %51 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %ov965x_initialize_controls.exit.thread153, label %ov965x_initialize_controls.exit

ov965x_initialize_controls.exit.thread153:        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gain.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %56, 128
  store i32 %or.i, ptr %flags.i, align 4
  %57 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %exposure.i, align 4
  %flags21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 20
  %59 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags21.i, align 4
  %or22.i = or i32 %60, 128
  store i32 %or22.i, ptr %flags21.i, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %34, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %41, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %38, i8 noundef zeroext 1, i1 noundef zeroext true) #8
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %47) #8
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %61 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctrls1.i, ptr %ctrl_handler.i, align 4
  br label %if.end65

ov965x_initialize_controls.exit:                  ; preds = %if.end.i139
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp63 = icmp slt i32 %52, 0
  br i1 %cmp63, label %ov965x_initialize_controls.exit.err_mutex_crit_edge, label %ov965x_initialize_controls.exit.if.end65_crit_edge

ov965x_initialize_controls.exit.if.end65_crit_edge: ; preds = %ov965x_initialize_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

ov965x_initialize_controls.exit.err_mutex_crit_edge: ; preds = %ov965x_initialize_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex

if.end65:                                         ; preds = %ov965x_initialize_controls.exit.if.end65_crit_edge, %ov965x_initialize_controls.exit.thread153
  %format = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 12
  %62 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1280, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 12, i32 1
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1024, ptr %height.i, align 4
  %colorspace.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 12, i32 4
  %64 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %colorspace.i, align 4
  %code.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 12, i32 2
  %65 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8200, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 12, i32 3
  %66 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %field.i, align 4
  %frame_size = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 10
  %67 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ov965x_framesizes, ptr %frame_size, align 4
  %fiv = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 14
  %68 = ptrtoint ptr %fiv to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ov965x_intervals, ptr %fiv, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %clk.i.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end65.ov965x_detect_sensor.exit_crit_edge

if.end65.ov965x_detect_sensor.exit_crit_edge:     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_detect_sensor.exit

if.end.i.i.i:                                     ; preds = %if.end65
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i142, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %70) #8
  br label %ov965x_detect_sensor.exit

if.end.i142:                                      ; preds = %if.end.i.i.i
  %gpios.i.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 3
  %71 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gpios.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %72, i32 noundef 0) #8
  %arrayidx4.i.i = getelementptr %struct.ov965x, ptr %call.i, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx4.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %74, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 25) #8
  %streaming.i.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 15
  %75 = ptrtoint ptr %streaming.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %streaming.i.i, align 4
  tail call void @msleep(i32 noundef 25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %76 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !183
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call.i.i141 = call i32 @regmap_read(ptr noundef %78, i32 noundef 10, ptr noundef nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %tobool.not.i.i = icmp eq i32 %call.i.i141, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i142.do.body.i.i_crit_edge

if.end.i142.do.body.i.i_crit_edge:                ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf.i.i, align 4
  %conv1.i.i = trunc i32 %80 to i8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end.i142.do.body.i.i_crit_edge
  %storemerge.i.i = phi i8 [ %conv1.i.i, %if.then.i.i ], [ -1, %if.end.i142.do.body.i.i_crit_edge ]
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i.i143 = icmp sgt i32 %81, 1
  br i1 %cmp.i.i143, label %do.end.i.i, label %do.body.i.i.ov965x_read.exit.i_crit_edge

do.body.i.i.ov965x_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i = zext i8 %storemerge.i.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i, i32 noundef 10, i32 noundef %call.i.i141) #11
  br label %ov965x_read.exit.i

ov965x_read.exit.i:                               ; preds = %do.end.i.i, %do.body.i.i.ov965x_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  br i1 %tobool.not.i.i, label %if.then4.i, label %ov965x_read.exit.i.if.end6.i_crit_edge

ov965x_read.exit.i.if.end6.i_crit_edge:           ; preds = %ov965x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %ov965x_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i50.i) #8
  %82 = ptrtoint ptr %buf.i50.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %buf.i50.i, align 4, !annotation !183
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call.i52.i = call i32 @regmap_read(ptr noundef %84, i32 noundef 11, ptr noundef nonnull %buf.i50.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.then.i55.i, label %if.then4.i.do.body.i58.i_crit_edge

if.then4.i.do.body.i58.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i58.i

if.then.i55.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %buf.i50.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf.i50.i, align 4
  %conv1.i54.i = trunc i32 %86 to i8
  br label %do.body.i58.i

do.body.i58.i:                                    ; preds = %if.then.i55.i, %if.then4.i.do.body.i58.i_crit_edge
  %storemerge.i56.i = phi i8 [ %conv1.i54.i, %if.then.i55.i ], [ -1, %if.then4.i.do.body.i58.i_crit_edge ]
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i57.i = icmp sgt i32 %87, 1
  br i1 %cmp.i57.i, label %do.end.i62.i, label %do.body.i58.i.ov965x_read.exit63.i_crit_edge

do.body.i58.i.ov965x_read.exit63.i_crit_edge:     ; preds = %do.body.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit63.i

do.end.i62.i:                                     ; preds = %do.body.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i60.i = zext i8 %storemerge.i56.i to i32
  %call7.i61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef nonnull @.str.30, i32 noundef %conv5.i60.i, i32 noundef 11, i32 noundef %call.i52.i) #11
  br label %ov965x_read.exit63.i

ov965x_read.exit63.i:                             ; preds = %do.end.i62.i, %do.body.i58.i.ov965x_read.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i50.i) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %ov965x_read.exit63.i, %ov965x_read.exit.i.if.end6.i_crit_edge
  %ver.0.i = phi i8 [ %storemerge.i56.i, %ov965x_read.exit63.i ], [ -1, %ov965x_read.exit.i.if.end6.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i52.i, %ov965x_read.exit63.i ], [ %call.i.i141, %ov965x_read.exit.i.if.end6.i_crit_edge ]
  %88 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx4.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %89, i32 noundef 1) #8
  %90 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gpios.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %91, i32 noundef 1) #8
  %92 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i.i, align 4
  call void @clk_disable(ptr noundef %93) #8
  call void @clk_unprepare(ptr noundef %93) #8
  %94 = ptrtoint ptr %streaming.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %streaming.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.ov965x_detect_sensor.exit_crit_edge

if.end6.i.ov965x_detect_sensor.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_detect_sensor.exit

if.then9.i:                                       ; preds = %if.end6.i
  %conv.i = zext i8 %storemerge.i.i to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %conv10.i = zext i8 %ver.0.i to i16
  %or.i144 = or i16 %shl.i, %conv10.i
  %id.i = getelementptr inbounds %struct.ov965x, ptr %call.i, i32 0, i32 9
  %95 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %or.i144, ptr %id.i, align 4
  %conv13.i = zext i16 %or.i144 to i32
  %96 = zext i16 %or.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or.i144, label %ov965x_detect_sensor.exit.thread [
    i16 -27056, label %if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge
    i16 -27054, label %if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge161
  ]

if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge161: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_detect_sensor.exit.thread158

if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_detect_sensor.exit.thread158

ov965x_detect_sensor.exit.thread158:              ; preds = %if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge, %if.then9.i.ov965x_detect_sensor.exit.thread158_crit_edge161
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %conv13.i) #11
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end69

ov965x_detect_sensor.exit.thread:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %conv13.i) #11
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %err_ctrls

ov965x_detect_sensor.exit:                        ; preds = %if.end6.i.ov965x_detect_sensor.exit_crit_edge, %if.then3.i.i.i, %if.end65.ov965x_detect_sensor.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end6.i.ov965x_detect_sensor.exit_crit_edge ], [ %call.i.i.i, %if.end65.ov965x_detect_sensor.exit_crit_edge ], [ %call1.i.i.i, %if.then3.i.i.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp67 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp67, label %ov965x_detect_sensor.exit.err_ctrls_crit_edge, label %ov965x_detect_sensor.exit.if.end69_crit_edge

ov965x_detect_sensor.exit.if.end69_crit_edge:     ; preds = %ov965x_detect_sensor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

ov965x_detect_sensor.exit.err_ctrls_crit_edge:    ; preds = %ov965x_detect_sensor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrls

if.end69:                                         ; preds = %ov965x_detect_sensor.exit.if.end69_crit_edge, %ov965x_detect_sensor.exit.thread158
  call fastcc void @ov965x_update_exposure_ctrl(ptr noundef nonnull %call.i)
  %call70 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.err_ctrls_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69.err_ctrls_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrls

err_ctrls:                                        ; preds = %if.end69.err_ctrls_crit_edge, %ov965x_detect_sensor.exit.err_ctrls_crit_edge, %ov965x_detect_sensor.exit.thread
  %ret.0 = phi i32 [ %ret.1.i, %ov965x_detect_sensor.exit.err_ctrls_crit_edge ], [ %call70, %if.end69.err_ctrls_crit_edge ], [ -19, %ov965x_detect_sensor.exit.thread ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %97 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %98) #8
  br label %err_mutex

err_mutex:                                        ; preds = %err_ctrls, %ov965x_initialize_controls.exit.err_mutex_crit_edge, %if.end61.err_mutex_crit_edge, %do.body50.err_mutex_crit_edge
  %ret.2 = phi i32 [ %call58, %do.body50.err_mutex_crit_edge ], [ %52, %ov965x_initialize_controls.exit.err_mutex_crit_edge ], [ %ret.0, %err_ctrls ], [ %call.i134, %if.end61.err_mutex_crit_edge ]
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mutex, %if.end69.cleanup_crit_edge, %do.end46, %ov965x_configure_gpios.exit.cleanup_crit_edge, %if.then32, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ -22, %do.end15 ], [ %ret.2, %err_mutex ], [ %20, %if.then32 ], [ -22, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %28, %ov965x_configure_gpios.exit.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ], [ %call4.1.i, %if.end.1.i.cleanup_crit_edge ], [ %call4.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sccb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov965x_update_exposure_ctrl(ptr noundef %ov965x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exposure = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 13, i32 1, i32 1
  %0 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exposure, align 4
  %lock = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %frame_size = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 10
  %2 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame_size, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !184

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 568, i32 noundef 9, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %fiv = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 14
  %4 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fiv, align 4
  %clkrc_div = getelementptr inbounds %struct.ov965x_interval, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %clkrc_div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clkrc_div, align 4
  %add = xor i8 %7, -128
  %mclk_frequency = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 4
  %8 = ptrtoint ptr %mclk_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_frequency, align 4
  %conv27 = zext i8 %add to i32
  %10 = lshr i32 %conv27, 7
  %add28 = add nuw nsw i32 %10, 1
  %mul = mul i32 %add28, %9
  %and = shl nuw nsw i32 %conv27, 1
  %add30 = and i32 %and, 126
  %mul31 = add nuw nsw i32 %add30, 2
  %div = udiv i32 %mul, %mul31
  %div32 = udiv i32 -1254967296, %div
  %max_exp_lines = getelementptr inbounds %struct.ov965x_framesize, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %max_exp_lines to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_exp_lines, align 4
  %conv34 = zext i16 %12 to i32
  %mul35 = mul i32 %div32, %conv34
  %exp_row_interval = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 8
  %13 = ptrtoint ptr %exp_row_interval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div32, ptr %exp_row_interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %do.end42, label %if.end25.do.end47_crit_edge

if.end25.do.end47_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end42:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %conv27, i32 noundef %div, i32 noundef %div32, i32 noundef %mul35) #11
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %if.end25.do.end47_crit_edge
  %add48 = add nuw i32 %div32, 100
  %div49 = udiv i32 %add48, 100
  %sub = add i32 %mul35, -100
  %div50 = sdiv i32 %sub, 100
  %sub51 = sub nsw i32 %div50, %div49
  %div52 = sdiv i32 %sub51, 2
  %add53 = add nsw i32 %div52, %div49
  %15 = zext i32 %div49 to i64
  %conv55 = sext i32 %div50 to i64
  %conv56 = sext i32 %add53 to i64
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %19, i32 noundef 0) #8
  %call.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef nonnull %1, i64 noundef %15, i64 noundef %conv55, i64 noundef 1, i64 noundef %conv56) #8
  %20 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not = icmp eq i32 %call.i, 0
  br i1 %tobool58.not, label %do.end47.cleanup_crit_edge, label %do.end62

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %name65 = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name65) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.end47.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef %on) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 16
  %1 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lnot.ext)
  %cmp5 = icmp eq i32 %2, %lnot.ext
  br i1 %cmp5, label %if.then6, label %do.end4.if.then15_crit_edge

do.end4.if.then15_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then6:                                         ; preds = %do.end4
  %call7 = tail call fastcc i32 @__ov965x_set_power(ptr noundef %sd, i32 noundef %on)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp ne i32 %call7, 0
  %brmerge = or i1 %tobool.not, %tobool8.not
  br i1 %brmerge, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  %regmap.i.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ov965x_write.exit.i.land.rhs.i_crit_edge, %if.then10
  %i.01.i = phi i32 [ 0, %if.then10 ], [ %inc.i, %ov965x_write.exit.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %i.01.i)
  %exitcond.i = icmp eq i32 %i.01.i, 53
  br i1 %exitcond.i, label %land.rhs.i.ov965x_write_array.exit_crit_edge, label %for.body.i

land.rhs.i.ov965x_write_array.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write_array.exit

for.body.i:                                       ; preds = %land.rhs.i
  %arrayidx.i = getelementptr %struct.i2c_rv, ptr @ov965x_init_regs, i32 %i.01.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %value.i = getelementptr %struct.i2c_rv, ptr @ov965x_init_regs, i32 %i.01.i, i32 1
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i, align 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %4 to i32
  %conv1.i.i = zext i8 %6 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #8
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.ov965x_write.exit.i_crit_edge

for.body.i.ov965x_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i, i32 noundef %conv.i.i, i32 noundef %call.i.i) #11
  br label %ov965x_write.exit.i

ov965x_write.exit.i:                              ; preds = %do.end.i.i, %for.body.i.ov965x_write.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %ov965x_write.exit.i.land.rhs.i_crit_edge, label %ov965x_write.exit.i.ov965x_write_array.exit_crit_edge

ov965x_write.exit.i.ov965x_write_array.exit_crit_edge: ; preds = %ov965x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write_array.exit

ov965x_write.exit.i.land.rhs.i_crit_edge:         ; preds = %ov965x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

ov965x_write_array.exit:                          ; preds = %ov965x_write.exit.i.ov965x_write_array.exit_crit_edge, %land.rhs.i.ov965x_write_array.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i.i, %ov965x_write.exit.i.ov965x_write_array.exit_crit_edge ], [ 0, %land.rhs.i.ov965x_write_array.exit_crit_edge ]
  %apply_frame_fmt = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 17
  %10 = ptrtoint ptr %apply_frame_fmt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %apply_frame_fmt, align 4
  %update = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %update, align 4
  br label %if.end13

if.end13:                                         ; preds = %ov965x_write_array.exit, %if.then6.if.end13_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then6.if.end13_crit_edge ], [ %ret.0.lcssa.i, %ov965x_write_array.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool14.not = icmp eq i32 %ret.0, 0
  br i1 %tobool14.not, label %if.end13.if.then15_crit_edge, label %if.end18thread-pre-split

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %do.end4.if.then15_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %12 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power, align 4
  %add = add i32 %13, %cond
  store i32 %add, ptr %power, align 4
  br label %if.end18

if.end18thread-pre-split:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %power, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.then15
  %15 = phi i32 [ %.pr, %if.end18thread-pre-split ], [ %add, %if.then15 ]
  %ret.068 = phi i32 [ %ret.0, %if.end18thread-pre-split ], [ 0, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp20 = icmp slt i32 %15, 0
  br i1 %cmp20, label %do.end35, label %if.end18.if.end41_crit_edge, !prof !184

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 551, i32 noundef 9, ptr noundef null) #8
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.end18.if.end41_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.068
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ov965x_set_power(ptr nocapture noundef %ov965x, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %cleanup.thread, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %return

cleanup.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpios = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 3
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %arrayidx4 = getelementptr %struct.ov965x, ptr %ov965x, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 25) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpios5 = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 3
  %arrayidx6 = getelementptr %struct.ov965x, ptr %ov965x, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %8 = ptrtoint ptr %gpios5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpios5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  %clk9 = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 5
  %10 = ptrtoint ptr %clk9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk9, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %cleanup.thread
  %streaming = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 15
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %streaming, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then3.i, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end10 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i122.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 13
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
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.28, i32 noundef %on) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 15
  %1 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lnot.ext)
  %cmp6 = icmp eq i32 %2, %lnot.ext
  br i1 %cmp6, label %if.then7, label %do.end5.if.then31_crit_edge

do.end5.if.then31_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then7:                                         ; preds = %do.end5
  br i1 %tobool.not, label %if.then7.land.lhs.true_crit_edge, label %if.then9

if.then7.land.lhs.true_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then9:                                         ; preds = %if.then7
  %apply_frame_fmt.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 17
  %3 = ptrtoint ptr %apply_frame_fmt.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %apply_frame_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then9.if.end25.i_crit_edge, label %if.then.i

if.then9.if.end25.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then.i:                                        ; preds = %if.then9
  %fiv.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 14
  %5 = ptrtoint ptr %fiv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fiv.i, align 4
  %clkrc_div.i = getelementptr inbounds %struct.ov965x_interval, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %clkrc_div.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %clkrc_div.i, align 4
  %add.i = xor i8 %8, -128
  %regmap.i.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 7
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i = zext i8 %add.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 17, i32 noundef %conv1.i.i) #8
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp sgt i32 %11, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.ov965x_write.exit.i_crit_edge

if.then.i.ov965x_write.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i, i32 noundef 17, i32 noundef %call.i.i) #11
  br label %ov965x_write.exit.i

ov965x_write.exit.i:                              ; preds = %do.end.i.i, %if.then.i.ov965x_write.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ov965x_write.exit.i.if.end35thread-pre-split_crit_edge, label %if.end.i

ov965x_write.exit.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end.i:                                         ; preds = %ov965x_write.exit.i
  %frame_size.i.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 10
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ov965x_write.exit.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.08.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %ov965x_write.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [14 x i8], ptr @frame_size_reg_addr, i32 0, i32 %i.08.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %14 = ptrtoint ptr %frame_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame_size.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.ov965x_framesize, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %17, i32 %i.08.i.i
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i.i, align 1
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i.i = zext i8 %13 to i32
  %conv1.i.i.i = zext i8 %19 to i32
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %conv.i.i.i, i32 noundef %conv1.i.i.i) #8
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i.i = icmp sgt i32 %22, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %for.body.i.i.ov965x_write.exit.i.i_crit_edge

for.body.i.i.ov965x_write.exit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %call.i.i.i) #11
  br label %ov965x_write.exit.i.i

ov965x_write.exit.i.i:                            ; preds = %do.end.i.i.i, %for.body.i.i.ov965x_write.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i78.i = icmp eq i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.08.i.i)
  %cmp1.i.i = icmp ult i32 %i.08.i.i, 13
  %or.cond.i.i = select i1 %cmp.i78.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %ov965x_write.exit.i.i.for.body.i.i_crit_edge, label %ov965x_set_frame_size.exit.i

ov965x_write.exit.i.i.for.body.i.i_crit_edge:     ; preds = %ov965x_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ov965x_set_frame_size.exit.i:                     ; preds = %ov965x_write.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6.i, label %ov965x_set_frame_size.exit.i.if.end35thread-pre-split_crit_edge, label %if.end9.i

ov965x_set_frame_size.exit.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_set_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end9.i:                                        ; preds = %ov965x_set_frame_size.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !183
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %call.i80.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 58, ptr noundef nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end9.i.do.body.i.i_crit_edge

if.end9.i.do.body.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf.i.i, align 4
  %conv1.i81.i = trunc i32 %27 to i8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end9.i.do.body.i.i_crit_edge
  %storemerge.i.i = phi i8 [ %conv1.i81.i, %if.then.i.i ], [ -1, %if.end9.i.do.body.i.i_crit_edge ]
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i82.i = icmp sgt i32 %28, 1
  br i1 %cmp.i82.i, label %do.end.i84.i, label %do.body.i.i.ov965x_read.exit.i_crit_edge

do.body.i.i.ov965x_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i

do.end.i84.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i = zext i8 %storemerge.i.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i, i32 noundef 58, i32 noundef %call.i80.i) #11
  br label %ov965x_read.exit.i

ov965x_read.exit.i:                               ; preds = %do.end.i84.i, %do.body.i.i.ov965x_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp11.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp11.i, label %ov965x_read.exit.i.if.end35thread-pre-split_crit_edge, label %if.end14.i

ov965x_read.exit.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end14.i:                                       ; preds = %ov965x_read.exit.i
  %29 = and i8 %storemerge.i.i, -13
  %tslb_reg.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 11
  %30 = ptrtoint ptr %tslb_reg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tslb_reg.i, align 4
  %or77.i = or i8 %31, %29
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i86.i = zext i8 %or77.i to i32
  %call.i87.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 58, i32 noundef %conv1.i86.i) #8
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i88.i = icmp sgt i32 %34, 1
  br i1 %cmp.i88.i, label %do.end.i91.i, label %if.end14.i.ov965x_write.exit92.i_crit_edge

if.end14.i.ov965x_write.exit92.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit92.i

do.end.i91.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i86.i, i32 noundef 58, i32 noundef %call.i87.i) #11
  br label %ov965x_write.exit92.i

ov965x_write.exit92.i:                            ; preds = %do.end.i91.i, %if.end14.i.ov965x_write.exit92.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp21.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp21.i, label %ov965x_write.exit92.i.if.end35thread-pre-split_crit_edge, label %ov965x_write.exit92.i.if.end25.i_crit_edge

ov965x_write.exit92.i.if.end25.i_crit_edge:       ; preds = %ov965x_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

ov965x_write.exit92.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end25.i:                                       ; preds = %ov965x_write.exit92.i.if.end25.i_crit_edge, %if.then9.if.end25.i_crit_edge
  %regmap.i.i93.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 7
  %name.i.i94.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body.i99.i

for.body.i99.i:                                   ; preds = %for.inc.i.i.for.body.i99.i_crit_edge, %if.end25.i
  %indvars.iv.i.i = phi i32 [ 108, %if.end25.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i99.i_crit_edge ]
  %i.010.i.i = phi i32 [ 0, %if.end25.i ], [ %inc2.i.i, %for.inc.i.i.for.body.i99.i_crit_edge ]
  %arrayidx.i95.i = getelementptr [31 x i8], ptr @ov965x_set_default_gamma_curve.gamma_curve, i32 0, i32 %i.010.i.i
  %35 = ptrtoint ptr %arrayidx.i95.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i95.i, align 1
  %37 = ptrtoint ptr %regmap.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i93.i, align 4
  %conv1.i.i96.i = zext i8 %36 to i32
  %call.i.i97.i = call i32 @regmap_write(ptr noundef %38, i32 noundef %indvars.iv.i.i, i32 noundef %conv1.i.i96.i) #8
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i98.i = icmp sgt i32 %39, 1
  br i1 %cmp.i.i98.i, label %do.end.i.i101.i, label %for.body.i99.i.ov965x_write.exit.i103.i_crit_edge

for.body.i99.i.ov965x_write.exit.i103.i_crit_edge: ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i103.i

do.end.i.i101.i:                                  ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i94.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i96.i, i32 noundef %indvars.iv.i.i, i32 noundef %call.i.i97.i) #11
  br label %ov965x_write.exit.i103.i

ov965x_write.exit.i103.i:                         ; preds = %do.end.i.i101.i, %for.body.i99.i.ov965x_write.exit.i103.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %cmp1.i102.i = icmp slt i32 %call.i.i97.i, 0
  br i1 %cmp1.i102.i, label %ov965x_write.exit.i103.i.if.end35thread-pre-split_crit_edge, label %for.inc.i.i

ov965x_write.exit.i103.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_write.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

for.inc.i.i:                                      ; preds = %ov965x_write.exit.i103.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %inc2.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc2.i.i, 31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body.i112.i_crit_edge, label %for.inc.i.i.for.body.i99.i_crit_edge

for.inc.i.i.for.body.i99.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i99.i

for.inc.i.i.for.body.i112.i_crit_edge:            ; preds = %for.inc.i.i
  br label %for.body.i112.i

for.body.i112.i:                                  ; preds = %for.inc.i120.i.for.body.i112.i_crit_edge, %for.inc.i.i.for.body.i112.i_crit_edge
  %indvars.iv.i106.i = phi i32 [ %indvars.iv.next.i117.i, %for.inc.i120.i.for.body.i112.i_crit_edge ], [ 79, %for.inc.i.i.for.body.i112.i_crit_edge ]
  %i.010.i107.i = phi i32 [ %inc2.i118.i, %for.inc.i120.i.for.body.i112.i_crit_edge ], [ 0, %for.inc.i.i.for.body.i112.i_crit_edge ]
  %arrayidx.i108.i = getelementptr [10 x i8], ptr @ov965x_set_color_matrix.mtx, i32 0, i32 %i.010.i107.i
  %40 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i108.i, align 1
  %42 = ptrtoint ptr %regmap.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i93.i, align 4
  %conv1.i.i109.i = zext i8 %41 to i32
  %call.i.i110.i = call i32 @regmap_write(ptr noundef %43, i32 noundef %indvars.iv.i106.i, i32 noundef %conv1.i.i109.i) #8
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i111.i = icmp sgt i32 %44, 1
  br i1 %cmp.i.i111.i, label %do.end.i.i114.i, label %for.body.i112.i.ov965x_write.exit.i116.i_crit_edge

for.body.i112.i.ov965x_write.exit.i116.i_crit_edge: ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i116.i

do.end.i.i114.i:                                  ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i94.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i109.i, i32 noundef %indvars.iv.i106.i, i32 noundef %call.i.i110.i) #11
  br label %ov965x_write.exit.i116.i

ov965x_write.exit.i116.i:                         ; preds = %do.end.i.i114.i, %for.body.i112.i.ov965x_write.exit.i116.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110.i)
  %cmp1.i115.i = icmp slt i32 %call.i.i110.i, 0
  br i1 %cmp1.i115.i, label %ov965x_write.exit.i116.i.if.end35thread-pre-split_crit_edge, label %for.inc.i120.i

ov965x_write.exit.i116.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_write.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

for.inc.i120.i:                                   ; preds = %ov965x_write.exit.i116.i
  %indvars.iv.next.i117.i = add nuw nsw i32 %indvars.iv.i106.i, 1
  %inc2.i118.i = add nuw nsw i32 %i.010.i107.i, 1
  %exitcond.not.i119.i = icmp eq i32 %inc2.i118.i, 10
  br i1 %exitcond.not.i119.i, label %if.end35.i, label %for.inc.i120.i.for.body.i112.i_crit_edge

for.inc.i120.i.for.body.i112.i_crit_edge:         ; preds = %for.inc.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i112.i

if.end35.i:                                       ; preds = %for.inc.i120.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i122.i) #8
  %45 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %buf.i122.i, align 4, !annotation !183
  %46 = ptrtoint ptr %regmap.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i93.i, align 4
  %call.i124.i = call i32 @regmap_read(ptr noundef %47, i32 noundef 59, ptr noundef nonnull %buf.i122.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %tobool.not.i125.i = icmp eq i32 %call.i124.i, 0
  br i1 %tobool.not.i125.i, label %if.then.i127.i, label %if.end35.i.do.body.i130.i_crit_edge

if.end35.i.do.body.i130.i_crit_edge:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i130.i

if.then.i127.i:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf.i122.i, align 4
  %conv1.i126.i = trunc i32 %49 to i8
  br label %do.body.i130.i

do.body.i130.i:                                   ; preds = %if.then.i127.i, %if.end35.i.do.body.i130.i_crit_edge
  %storemerge.i128.i = phi i8 [ %conv1.i126.i, %if.then.i127.i ], [ -1, %if.end35.i.do.body.i130.i_crit_edge ]
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i129.i = icmp sgt i32 %50, 1
  br i1 %cmp.i129.i, label %do.end.i134.i, label %do.body.i130.i.ov965x_read.exit135.i_crit_edge

do.body.i130.i.ov965x_read.exit135.i_crit_edge:   ; preds = %do.body.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit135.i

do.end.i134.i:                                    ; preds = %do.body.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i132.i = zext i8 %storemerge.i128.i to i32
  %call7.i133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i94.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i132.i, i32 noundef 59, i32 noundef %call.i124.i) #11
  br label %ov965x_read.exit135.i

ov965x_read.exit135.i:                            ; preds = %do.end.i134.i, %do.body.i130.i.ov965x_read.exit135.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i122.i) #8
  %51 = zext i1 %tobool.not.i125.i to i8
  %spec.select.i = or i8 %storemerge.i128.i, %51
  %52 = ptrtoint ptr %regmap.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i93.i, align 4
  %conv1.i137.i = zext i8 %spec.select.i to i32
  %call.i138.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 59, i32 noundef %conv1.i137.i) #8
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i139.i = icmp sgt i32 %54, 1
  br i1 %cmp.i139.i, label %do.end.i142.i, label %ov965x_read.exit135.i.ov965x_write.exit143.i_crit_edge

ov965x_read.exit135.i.ov965x_write.exit143.i_crit_edge: ; preds = %ov965x_read.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit143.i

do.end.i142.i:                                    ; preds = %ov965x_read.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i141.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i94.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i137.i, i32 noundef 59, i32 noundef %call.i138.i) #11
  br label %ov965x_write.exit143.i

ov965x_write.exit143.i:                           ; preds = %do.end.i142.i, %ov965x_read.exit135.i.ov965x_write.exit143.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %cmp44.i = icmp slt i32 %call.i138.i, 0
  br i1 %cmp44.i, label %ov965x_write.exit143.i.if.end35thread-pre-split_crit_edge, label %if.end11

ov965x_write.exit143.i.if.end35thread-pre-split_crit_edge: ; preds = %ov965x_write.exit143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end11:                                         ; preds = %ov965x_write.exit143.i
  %light_freq.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 13, i32 8
  %55 = ptrtoint ptr %light_freq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %light_freq.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i, align 4
  %call48.i = call fastcc i32 @ov965x_set_banding_filter(ptr noundef %sd, i32 noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool12.not = icmp eq i32 %call48.i, 0
  br i1 %tobool12.not, label %if.end11.land.lhs.true_crit_edge, label %if.end11.if.end35thread-pre-split_crit_edge

if.end11.if.end35thread-pre-split_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11.land.lhs.true_crit_edge, %if.then7.land.lhs.true_crit_edge
  %update = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %update, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool13.not = icmp eq i8 %60, 0
  br i1 %tobool13.not, label %land.lhs.true.if.then24_crit_edge, label %if.then14

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then14:                                        ; preds = %land.lhs.true
  call void @mutex_unlock(ptr noundef %lock) #8
  %call16 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls1) #8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.then19, label %if.then14.if.end35thread-pre-split_crit_edge

if.then14.if.end35thread-pre-split_crit_edge:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %update, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.then19, %land.lhs.true.if.then24_crit_edge
  %regmap.i = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 7
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %conv1.i = select i1 %tobool.not, i32 17, i32 1
  %call.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 9, i32 noundef %conv1.i) #8
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i89 = icmp sgt i32 %64, 1
  br i1 %cmp.i89, label %do.end.i, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i, i32 noundef 9, i32 noundef %call.i) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end.i, %if.then24.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end29.if.then31_crit_edge, label %if.end29.if.end35thread-pre-split_crit_edge

if.end29.if.end35thread-pre-split_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35thread-pre-split

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %do.end5.if.then31_crit_edge
  %cond33 = select i1 %tobool.not, i32 -1, i32 1
  %65 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %streaming, align 4
  %add = add i32 %66, %cond33
  store i32 %add, ptr %streaming, align 4
  br label %if.end35

if.end35thread-pre-split:                         ; preds = %if.end29.if.end35thread-pre-split_crit_edge, %if.then14.if.end35thread-pre-split_crit_edge, %if.end11.if.end35thread-pre-split_crit_edge, %ov965x_write.exit143.i.if.end35thread-pre-split_crit_edge, %ov965x_write.exit.i116.i.if.end35thread-pre-split_crit_edge, %ov965x_write.exit.i103.i.if.end35thread-pre-split_crit_edge, %ov965x_write.exit92.i.if.end35thread-pre-split_crit_edge, %ov965x_read.exit.i.if.end35thread-pre-split_crit_edge, %ov965x_set_frame_size.exit.i.if.end35thread-pre-split_crit_edge, %ov965x_write.exit.i.if.end35thread-pre-split_crit_edge
  %ret.299.ph = phi i32 [ %call.i, %if.end29.if.end35thread-pre-split_crit_edge ], [ %call16, %if.then14.if.end35thread-pre-split_crit_edge ], [ %call48.i, %if.end11.if.end35thread-pre-split_crit_edge ], [ %call.i138.i, %ov965x_write.exit143.i.if.end35thread-pre-split_crit_edge ], [ %call.i87.i, %ov965x_write.exit92.i.if.end35thread-pre-split_crit_edge ], [ %call.i80.i, %ov965x_read.exit.i.if.end35thread-pre-split_crit_edge ], [ %call.i.i.i, %ov965x_set_frame_size.exit.i.if.end35thread-pre-split_crit_edge ], [ %call.i.i, %ov965x_write.exit.i.if.end35thread-pre-split_crit_edge ], [ %call.i.i110.i, %ov965x_write.exit.i116.i.if.end35thread-pre-split_crit_edge ], [ %call.i.i97.i, %ov965x_write.exit.i103.i.if.end35thread-pre-split_crit_edge ]
  %67 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr = load i32, ptr %streaming, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %if.then31
  %68 = phi i32 [ %.pr, %if.end35thread-pre-split ], [ %add, %if.then31 ]
  %ret.299 = phi i32 [ %ret.299.ph, %if.end35thread-pre-split ], [ 0, %if.then31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp37 = icmp slt i32 %68, 0
  br i1 %cmp37, label %do.end53, label %if.end35.if.end59_crit_edge, !prof !184

if.end35.if.end59_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end53:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1356, i32 noundef 9, ptr noundef null) #8
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.end35.if.end59_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.299
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %fiv = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fiv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %1, align 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_s_frame_interval(ptr noundef %sd, ptr nocapture noundef readonly %fi) #2 align 64 {
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
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %2, i32 noundef %4) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call6 = tail call fastcc i32 @__ov965x_set_frame_interval(ptr noundef %sd, ptr noundef %fi)
  %apply_frame_fmt = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 17
  %5 = ptrtoint ptr %apply_frame_fmt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %apply_frame_fmt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov965x_set_banding_filter(ptr noundef %ov965x, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !183
  %regmap.i = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 19, ptr noundef nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %conv1.i = trunc i32 %4 to i8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %entry.do.body.i_crit_edge
  %storemerge.i = phi i8 [ %conv1.i, %if.then.i ], [ -1, %entry.do.body.i_crit_edge ]
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1
  br i1 %cmp.i, label %do.end.i, label %do.body.i.ov965x_read.exit_crit_edge

do.body.i.ov965x_read.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %conv5.i = zext i8 %storemerge.i to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i, i32 noundef 19, i32 noundef %call.i) #11
  br label %ov965x_read.exit

ov965x_read.exit:                                 ; preds = %do.end.i, %do.body.i.ov965x_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  br i1 %tobool.not.i, label %if.then, label %ov965x_read.exit.if.end6_crit_edge

ov965x_read.exit.if.end6_crit_edge:               ; preds = %ov965x_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %ov965x_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %6 = and i8 %storemerge.i, -33
  %masksel = select i1 %cmp, i8 0, i8 32
  %storemerge = or i8 %6, %masksel
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv1.i66 = zext i8 %storemerge to i32
  %call.i67 = call i32 @regmap_write(ptr noundef %8, i32 noundef 19, i32 noundef %conv1.i66) #8
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i68 = icmp sgt i32 %9, 1
  br i1 %cmp.i68, label %do.end.i70, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end.i70:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name.i69 = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i69, ptr noundef nonnull @.str.27, i32 noundef %conv1.i66, i32 noundef 19, i32 noundef %call.i67) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end.i70, %if.then.if.end6_crit_edge, %ov965x_read.exit.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp7 = icmp eq i32 %value, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %fiv = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 14
  %10 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fiv, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %do.end, label %if.end36, !prof !184

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 610, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp37 = icmp eq i32 %value, 1
  %. = select i1 %cmp37, i32 100, i32 120
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %denominator, align 4
  %mul = mul i32 %13, 1000
  %frame_size = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 10
  %14 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame_size, align 4
  %max_exp_lines = getelementptr inbounds %struct.ov965x_framesize, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %max_exp_lines to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_exp_lines, align 4
  %conv43 = zext i16 %17 to i32
  %mul44 = mul i32 %mul, %conv43
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  %div = udiv i32 %mul44, %19
  %div48 = udiv i32 %div, %.
  %add = add nuw nsw i32 %div48, 500
  %div49 = udiv i32 %add, 1000
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %conv1.i72 = and i32 %div49, 255
  %call.i73 = call i32 @regmap_write(ptr noundef %21, i32 noundef 106, i32 noundef %conv1.i72) #8
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i74 = icmp sgt i32 %22, 1
  br i1 %cmp.i74, label %do.end.i77, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i77:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %name.i75 = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %call6.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i75, ptr noundef nonnull @.str.27, i32 noundef %conv1.i72, i32 noundef 106, i32 noundef %call.i73) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i77, %if.end36.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6.cleanup_crit_edge ], [ %call.i73, %if.end36.cleanup_crit_edge ], [ %call.i73, %do.end.i77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ov965x_set_frame_interval(ptr noundef %ov965x, ptr nocapture noundef readonly %fi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 12
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup237_crit_edge, label %if.end

entry.cleanup237_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup237

if.end:                                           ; preds = %entry
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  %conv = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv, 10000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp173 = icmp ult i64 %mul, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !185

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv178 = trunc i64 %mul to i32
  %div181 = udiv i32 %conv178, %1
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul) #12, !srcloc !186
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %req_int.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 12, i32 1
  %7 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp192.not = icmp eq i32 %6, %7
  br i1 %cmp192.not, label %lor.lhs.false, label %if.end187.cleanup_crit_edge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end187
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %10 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp196.not = icmp eq i32 %9, %10
  br i1 %cmp196.not, label %if.end199, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end199:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @ov965x_intervals, align 4
  %mul202 = mul i32 %11, 10000
  %12 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 0, i32 0, i32 1), align 4
  %13 = udiv i32 %mul202, %12
  %div207 = zext i32 %13 to i64
  %sub208 = sub i64 %div207, %req_int.0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub208, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %lor.lhs.false.cleanup_crit_edge, %if.end187.cleanup_crit_edge
  %min_err.2 = phi i64 [ %14, %if.end199 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end187.cleanup_crit_edge ]
  %15 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %15)
  %cmp192.not.1 = icmp eq i32 %6, %15
  br i1 %cmp192.not.1, label %lor.lhs.false.1, label %cleanup.cleanup.1_crit_edge

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

lor.lhs.false.1:                                  ; preds = %cleanup
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %18 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 1, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp196.not.1 = icmp eq i32 %17, %18
  br i1 %cmp196.not.1, label %if.end199.1, label %lor.lhs.false.1.cleanup.1_crit_edge

lor.lhs.false.1.cleanup.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end199.1:                                      ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 1), align 4
  %mul202.1 = mul i32 %19, 10000
  %20 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 1, i32 0, i32 1), align 4
  %21 = udiv i32 %mul202.1, %20
  %div207.1 = zext i32 %21 to i64
  %sub208.1 = sub i64 %div207.1, %req_int.0
  %22 = tail call i64 @llvm.abs.i64(i64 %sub208.1, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %min_err.2)
  %cmp217.1 = icmp ult i64 %22, %min_err.2
  %23 = tail call i64 @llvm.umin.i64(i64 %22, i64 %min_err.2)
  %fiv.1.1 = select i1 %cmp217.1, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 1), ptr @ov965x_intervals
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end199.1, %lor.lhs.false.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %min_err.2.1 = phi i64 [ %23, %if.end199.1 ], [ %min_err.2, %lor.lhs.false.1.cleanup.1_crit_edge ], [ %min_err.2, %cleanup.cleanup.1_crit_edge ]
  %fiv.2.1 = phi ptr [ %fiv.1.1, %if.end199.1 ], [ @ov965x_intervals, %lor.lhs.false.1.cleanup.1_crit_edge ], [ @ov965x_intervals, %cleanup.cleanup.1_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %24)
  %cmp192.not.2 = icmp eq i32 %6, %24
  br i1 %cmp192.not.2, label %lor.lhs.false.2, label %cleanup.1.cleanup.2_crit_edge

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

lor.lhs.false.2:                                  ; preds = %cleanup.1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %27 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 2, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp196.not.2 = icmp eq i32 %26, %27
  br i1 %cmp196.not.2, label %if.end199.2, label %lor.lhs.false.2.cleanup.2_crit_edge

lor.lhs.false.2.cleanup.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end199.2:                                      ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 2), align 4
  %mul202.2 = mul i32 %28, 10000
  %29 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 2, i32 0, i32 1), align 4
  %30 = udiv i32 %mul202.2, %29
  %div207.2 = zext i32 %30 to i64
  %sub208.2 = sub i64 %div207.2, %req_int.0
  %31 = tail call i64 @llvm.abs.i64(i64 %sub208.2, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %min_err.2.1)
  %cmp217.2 = icmp ult i64 %31, %min_err.2.1
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 %min_err.2.1)
  %fiv.1.2 = select i1 %cmp217.2, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 2), ptr %fiv.2.1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end199.2, %lor.lhs.false.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %min_err.2.2 = phi i64 [ %32, %if.end199.2 ], [ %min_err.2.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ %min_err.2.1, %cleanup.1.cleanup.2_crit_edge ]
  %fiv.2.2 = phi ptr [ %fiv.1.2, %if.end199.2 ], [ %fiv.2.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ %fiv.2.1, %cleanup.1.cleanup.2_crit_edge ]
  %33 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %33)
  %cmp192.not.3 = icmp eq i32 %6, %33
  br i1 %cmp192.not.3, label %lor.lhs.false.3, label %cleanup.2.cleanup.3_crit_edge

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

lor.lhs.false.3:                                  ; preds = %cleanup.2
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %36 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 3, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp196.not.3 = icmp eq i32 %35, %36
  br i1 %cmp196.not.3, label %if.end199.3, label %lor.lhs.false.3.cleanup.3_crit_edge

lor.lhs.false.3.cleanup.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end199.3:                                      ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #10
  %37 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 3), align 4
  %mul202.3 = mul i32 %37, 10000
  %38 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 3, i32 0, i32 1), align 4
  %39 = udiv i32 %mul202.3, %38
  %div207.3 = zext i32 %39 to i64
  %sub208.3 = sub i64 %div207.3, %req_int.0
  %40 = tail call i64 @llvm.abs.i64(i64 %sub208.3, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %min_err.2.2)
  %cmp217.3 = icmp ult i64 %40, %min_err.2.2
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %min_err.2.2)
  %fiv.1.3 = select i1 %cmp217.3, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 3), ptr %fiv.2.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end199.3, %lor.lhs.false.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %min_err.2.3 = phi i64 [ %41, %if.end199.3 ], [ %min_err.2.2, %lor.lhs.false.3.cleanup.3_crit_edge ], [ %min_err.2.2, %cleanup.2.cleanup.3_crit_edge ]
  %fiv.2.3 = phi ptr [ %fiv.1.3, %if.end199.3 ], [ %fiv.2.2, %lor.lhs.false.3.cleanup.3_crit_edge ], [ %fiv.2.2, %cleanup.2.cleanup.3_crit_edge ]
  %42 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %42)
  %cmp192.not.4 = icmp eq i32 %6, %42
  br i1 %cmp192.not.4, label %lor.lhs.false.4, label %cleanup.3.cleanup.4_crit_edge

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

lor.lhs.false.4:                                  ; preds = %cleanup.3
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %45 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 4, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp196.not.4 = icmp eq i32 %44, %45
  br i1 %cmp196.not.4, label %if.end199.4, label %lor.lhs.false.4.cleanup.4_crit_edge

lor.lhs.false.4.cleanup.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

if.end199.4:                                      ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #10
  %46 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 4), align 4
  %mul202.4 = mul i32 %46, 10000
  %47 = load i32, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 4, i32 0, i32 1), align 4
  %48 = udiv i32 %mul202.4, %47
  %div207.4 = zext i32 %48 to i64
  %sub208.4 = sub i64 %div207.4, %req_int.0
  %49 = tail call i64 @llvm.abs.i64(i64 %sub208.4, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %min_err.2.3)
  %cmp217.4 = icmp ult i64 %49, %min_err.2.3
  %fiv.1.4 = select i1 %cmp217.4, ptr getelementptr inbounds ([5 x %struct.ov965x_interval], ptr @ov965x_intervals, i32 0, i32 4), ptr %fiv.2.3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end199.4, %lor.lhs.false.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %fiv.2.4 = phi ptr [ %fiv.1.4, %if.end199.4 ], [ %fiv.2.3, %lor.lhs.false.4.cleanup.4_crit_edge ], [ %fiv.2.3, %cleanup.3.cleanup.4_crit_edge ]
  %fiv221 = getelementptr inbounds %struct.ov965x, ptr %ov965x, i32 0, i32 14
  %50 = ptrtoint ptr %fiv221 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fiv.2.4, ptr %fiv221, align 4
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp222 = icmp sgt i32 %51, 0
  br i1 %cmp222, label %do.end, label %cleanup.4.cleanup237_crit_edge

cleanup.4.cleanup237_crit_edge:                   ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup237

do.end:                                           ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %ov965x, i32 0, i32 9
  %52 = ptrtoint ptr %fiv.2.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fiv.2.4, align 4
  %mul229 = mul i32 %53, 1000000
  %denominator231 = getelementptr inbounds %struct.v4l2_fract, ptr %fiv.2.4, i32 0, i32 1
  %54 = ptrtoint ptr %denominator231 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %denominator231, align 4
  %div232 = udiv i32 %mul229, %55
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %div232) #11
  br label %cleanup237

cleanup237:                                       ; preds = %do.end, %cleanup.4.cleanup237_crit_edge, %entry.cleanup237_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup237_crit_edge ], [ 0, %do.end ], [ 0, %cleanup.4.cleanup237_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov965x_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x %struct.ov965x_pixfmt], ptr @ov965x_formats, i32 0, i32 %1
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
define internal i32 @ov965x_enum_frame_sizes(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %3)
  %cmp2 = icmp eq i32 %3, 8199
  br i1 %cmp2, label %while.cond.preheader.while.end_crit_edge, label %while.cond.1

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.1:                                     ; preds = %while.cond.preheader
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %5)
  %cmp2.1 = icmp eq i32 %5, 8198
  br i1 %cmp2.1, label %while.cond.1.while.end_crit_edge, label %while.cond.2

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %7)
  %cmp2.2 = icmp eq i32 %7, 8201
  %spec.select = zext i1 %cmp2.2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.2, %while.cond.1.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %dec.lcssa = phi i32 [ 3, %while.cond.preheader.while.end_crit_edge ], [ 2, %while.cond.1.while.end_crit_edge ], [ %spec.select, %while.cond.2 ]
  %arrayidx5 = getelementptr [4 x %struct.ov965x_pixfmt], ptr @ov965x_formats, i32 0, i32 %dec.lcssa
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %code, align 4
  %arrayidx9 = getelementptr [3 x %struct.ov965x_framesize], ptr @ov965x_framesizes, i32 0, i32 %1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx9, align 4
  %conv = zext i16 %12 to i32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %13 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %14 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %max_width, align 4
  %height = getelementptr [3 x %struct.ov965x_framesize], ptr @ov965x_framesizes, i32 0, i32 %1, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %height, align 2
  %conv13 = zext i16 %16 to i32
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %17 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv13, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %18 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv13, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, !prof !184

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format, ptr %5, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %format3 = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %format2, ptr %format3, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  %fiv = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height6.i, align 4
  %sub.i = sub i32 1280, %1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub7.i = sub i32 1024, %3
  %5 = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 false) #8
  %add.i = add i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp16.not.i = icmp eq i32 %add.i, -1
  %match.1.i = select i1 %cmp16.not.i, ptr null, ptr @ov965x_framesizes
  %sub.1.i = sub i32 640, %1
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  %sub7.1.i = sub i32 480, %3
  %7 = tail call i32 @llvm.abs.i32(i32 %sub7.1.i, i1 false) #8
  %add.1.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %add.i)
  %cmp16.1.i = icmp ult i32 %add.1.i, %add.i
  %8 = tail call i32 @llvm.umin.i32(i32 %add.1.i, i32 %add.i) #8
  %match.1.1.i = select i1 %cmp16.1.i, ptr getelementptr inbounds ([3 x %struct.ov965x_framesize], ptr @ov965x_framesizes, i32 0, i32 1), ptr %match.1.i
  %sub.2.i = sub i32 320, %1
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #8
  %sub7.2.i = sub i32 240, %3
  %10 = tail call i32 @llvm.abs.i32(i32 %sub7.2.i, i1 false) #8
  %add.2.i = add i32 %10, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %8)
  %cmp16.2.i = icmp ult i32 %add.2.i, %8
  %match.1.2.i = select i1 %cmp16.2.i, ptr getelementptr inbounds ([3 x %struct.ov965x_framesize], ptr @ov965x_framesizes, i32 0, i32 2), ptr %match.1.1.i
  %tobool18.not.i = icmp eq ptr %match.1.2.i, null
  %spec.store.select.i = select i1 %tobool18.not.i, ptr @ov965x_framesizes, ptr %match.1.2.i
  %11 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %spec.store.select.i, align 4
  %conv22.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv22.i, ptr %format, align 4
  %height24.i = getelementptr inbounds %struct.ov965x_framesize, ptr %spec.store.select.i, i32 0, i32 1
  %14 = ptrtoint ptr %height24.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %height24.i, align 2
  %conv25.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv25.i, ptr %height6.i, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %18)
  %cmp = icmp eq i32 %18, 8199
  br i1 %cmp, label %entry.while.end_crit_edge, label %while.cond.1

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.1:                                     ; preds = %entry
  %19 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %20)
  %cmp.1 = icmp eq i32 %20, 8198
  br i1 %cmp.1, label %while.cond.1.while.end_crit_edge, label %while.cond.2

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %22)
  %cmp.2 = icmp eq i32 %22, 8201
  %spec.select = zext i1 %cmp.2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.2, %while.cond.1.while.end_crit_edge, %entry.while.end_crit_edge
  %dec.lcssa = phi i32 [ 3, %entry.while.end_crit_edge ], [ 2, %while.cond.1.while.end_crit_edge ], [ %spec.select, %while.cond.2 ]
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %colorspace, align 4
  %arrayidx2 = getelementptr [4 x %struct.ov965x_pixfmt], ptr @ov965x_formats, i32 0, i32 %dec.lcssa
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2, align 4
  %26 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code1, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field, align 4
  %lock = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5 = icmp eq i32 %29, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %tobool7.not = icmp eq ptr %sd_state, null
  br i1 %tobool7.not, label %if.then6.if.then29_crit_edge, label %if.then8

if.then6.if.then29_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then8:                                         ; preds = %if.then6
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %30 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %32 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %31, %conv.i
  br i1 %cmp.not.i, label %if.then8.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !185

if.then8.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then8.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %31, %if.then8.v4l2_subdev_get_try_format.exit_crit_edge ]
  %34 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %35, i32 %spec.select.i
  %36 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %land.lhs.true

if.else:                                          ; preds = %while.end
  %streaming = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 15
  %37 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.not = icmp eq i32 %38, 0
  br i1 %tobool12.not, label %if.else14, label %if.end30.critedge

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %frame_size = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 10
  %39 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spec.store.select.i, ptr %frame_size, align 4
  %format15 = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 12
  %40 = call ptr @memcpy(ptr %format15, ptr %format, i32 48)
  %tslb_reg = getelementptr [4 x %struct.ov965x_pixfmt], ptr @ov965x_formats, i32 0, i32 %dec.lcssa, i32 2
  %41 = ptrtoint ptr %tslb_reg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tslb_reg, align 4
  %tslb_reg18 = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 11
  %43 = ptrtoint ptr %tslb_reg18 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tslb_reg18, align 4
  %apply_frame_fmt = getelementptr inbounds %struct.ov965x, ptr %sd, i32 0, i32 17
  %44 = ptrtoint ptr %apply_frame_fmt to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %apply_frame_fmt, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else14, %v4l2_subdev_get_try_format.exit
  %45 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp23 = icmp eq i32 %.pr, 1
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fiv) #8
  %46 = call ptr @memset(ptr %fiv, i32 0, i32 48)
  %47 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fiv, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %47, align 4
  %call25 = call fastcc i32 @__ov965x_set_frame_interval(ptr noundef %sd, ptr noundef nonnull %fiv)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fiv) #8
  br label %if.then29

if.then29:                                        ; preds = %if.then24, %land.lhs.true.if.then29_crit_edge, %if.then6.if.then29_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call fastcc void @ov965x_update_exposure_ctrl(ptr noundef %sd)
  br label %if.end30

if.end30.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %if.then29
  %ret.059 = phi i32 [ -16, %if.end30.critedge ], [ 0, %if.then29 ]
  ret i32 %ret.059
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !184

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1280, ptr %5, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %height.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %colorspace.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8200, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i120.i = alloca i32, align 4
  %buf.i106.i = alloca i32, align 4
  %buf.i92.i = alloca i32, align 4
  %buf.i78.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 -292
  %name3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef %4) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -160
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power.i = getelementptr i8, ptr %1, i32 248
  %5 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.end6.__g_volatile_ctrl.exit_crit_edge, label %if.end.i

do.end6.__g_volatile_ctrl.exit_crit_edge:         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end.i:                                         ; preds = %do.end6
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %8, label %if.end.i.__g_volatile_ctrl.exit_crit_edge [
    i32 9963794, label %sw.bb.i
    i32 10094849, label %sw.bb16.i
  ]

if.end.i.__g_volatile_ctrl.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

sw.bb.i:                                          ; preds = %if.end.i
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %sw.bb.i.__g_volatile_ctrl.exit_crit_edge, label %if.end3.i

sw.bb.i.__g_volatile_ctrl.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end3.i:                                        ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !183
  %regmap.i.i = getelementptr i8, ptr %1, i32 -68
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i77.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i77.i, label %if.then.i.i, label %if.end3.i.do.body.i.i_crit_edge

if.end3.i.do.body.i.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf.i.i, align 4
  %phi.cast136.i = and i32 %16, 255
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end3.i.do.body.i.i_crit_edge
  %storemerge.i.i = phi i32 [ %phi.cast136.i, %if.then.i.i ], [ 255, %if.end3.i.do.body.i.i_crit_edge ]
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.i = icmp sgt i32 %17, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.ov965x_read.exit.i_crit_edge

do.body.i.i.ov965x_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr i8, ptr %1, i32 -292
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i, ptr noundef nonnull @.str.30, i32 noundef %storemerge.i.i, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %ov965x_read.exit.i

ov965x_read.exit.i:                               ; preds = %do.end.i.i, %do.body.i.i.ov965x_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ov965x_read.exit.i.__g_volatile_ctrl.exit_crit_edge, label %if.end5.i

ov965x_read.exit.i.__g_volatile_ctrl.exit_crit_edge: ; preds = %ov965x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end5.i:                                        ; preds = %ov965x_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i78.i) #8
  %18 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %buf.i78.i, align 4, !annotation !183
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i80.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 3, ptr noundef nonnull %buf.i78.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %if.then.i83.i, label %if.end5.i.do.body.i86.i_crit_edge

if.end5.i.do.body.i86.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i86.i

if.then.i83.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf.i78.i, align 4
  %conv1.i82.i = trunc i32 %22 to i8
  br label %do.body.i86.i

do.body.i86.i:                                    ; preds = %if.then.i83.i, %if.end5.i.do.body.i86.i_crit_edge
  %storemerge.i84.i = phi i8 [ %conv1.i82.i, %if.then.i83.i ], [ -1, %if.end5.i.do.body.i86.i_crit_edge ]
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i85.i = icmp sgt i32 %23, 1
  br i1 %cmp.i85.i, label %do.end.i90.i, label %do.body.i86.i.ov965x_read.exit91.i_crit_edge

do.body.i86.i.ov965x_read.exit91.i_crit_edge:     ; preds = %do.body.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit91.i

do.end.i90.i:                                     ; preds = %do.body.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i87.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i88.i = zext i8 %storemerge.i84.i to i32
  %call7.i89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i87.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i88.i, i32 noundef 3, i32 noundef %call.i80.i) #11
  br label %ov965x_read.exit91.i

ov965x_read.exit91.i:                             ; preds = %do.end.i90.i, %do.body.i86.i.ov965x_read.exit91.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i78.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp7.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp7.i, label %ov965x_read.exit91.i.__g_volatile_ctrl.exit_crit_edge, label %if.end9.i

ov965x_read.exit91.i.__g_volatile_ctrl.exit_crit_edge: ; preds = %ov965x_read.exit91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end9.i:                                        ; preds = %ov965x_read.exit91.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = lshr i8 %storemerge.i84.i, 6
  %25 = zext i8 %24 to i32
  %shl.i = shl nuw nsw i32 %25, 8
  %or.i = or i32 %shl.i, %storemerge.i.i
  %shr11.i = lshr i32 %or.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or.i)
  %tobool.not.i.i = icmp ult i32 %or.i, 16
  %26 = call i32 @llvm.ctlz.i32(i32 %shr11.i, i1 true) #8, !range !187
  %sub.i.i = sub nuw nsw i32 32, %26
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %and.i = and i32 %storemerge.i.i, 15
  %add.i = or i32 %and.i, 16
  %mul.i = shl i32 %add.i, %cond.i.i
  br label %cleanup.sink.split.i

sw.bb16.i:                                        ; preds = %if.end.i
  %val17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp18.i = icmp eq i32 %28, 1
  br i1 %cmp18.i, label %sw.bb16.i.__g_volatile_ctrl.exit_crit_edge, label %if.end21.i

sw.bb16.i.__g_volatile_ctrl.exit_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end21.i:                                       ; preds = %sw.bb16.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i92.i) #8
  %29 = ptrtoint ptr %buf.i92.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %buf.i92.i, align 4, !annotation !183
  %regmap.i93.i = getelementptr i8, ptr %1, i32 -68
  %30 = ptrtoint ptr %regmap.i93.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i93.i, align 4
  %call.i94.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 4, ptr noundef nonnull %buf.i92.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool.not.i95.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool.not.i95.i, label %if.then.i97.i, label %if.end21.i.do.body.i100.i_crit_edge

if.end21.i.do.body.i100.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i100.i

if.then.i97.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %buf.i92.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf.i92.i, align 4
  %conv1.i96.i = trunc i32 %33 to i8
  br label %do.body.i100.i

do.body.i100.i:                                   ; preds = %if.then.i97.i, %if.end21.i.do.body.i100.i_crit_edge
  %storemerge.i98.i = phi i8 [ %conv1.i96.i, %if.then.i97.i ], [ -1, %if.end21.i.do.body.i100.i_crit_edge ]
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i99.i = icmp sgt i32 %34, 1
  br i1 %cmp.i99.i, label %do.end.i104.i, label %do.body.i100.i.ov965x_read.exit105.i_crit_edge

do.body.i100.i.ov965x_read.exit105.i_crit_edge:   ; preds = %do.body.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit105.i

do.end.i104.i:                                    ; preds = %do.body.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i101.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i102.i = zext i8 %storemerge.i98.i to i32
  %call7.i103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i101.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i102.i, i32 noundef 4, i32 noundef %call.i94.i) #11
  br label %ov965x_read.exit105.i

ov965x_read.exit105.i:                            ; preds = %do.end.i104.i, %do.body.i100.i.ov965x_read.exit105.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i92.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp23.i = icmp slt i32 %call.i94.i, 0
  br i1 %cmp23.i, label %ov965x_read.exit105.i.__g_volatile_ctrl.exit_crit_edge, label %if.end26.i

ov965x_read.exit105.i.__g_volatile_ctrl.exit_crit_edge: ; preds = %ov965x_read.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end26.i:                                       ; preds = %ov965x_read.exit105.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i106.i) #8
  %35 = ptrtoint ptr %buf.i106.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %buf.i106.i, align 4, !annotation !183
  %36 = ptrtoint ptr %regmap.i93.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i93.i, align 4
  %call.i108.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 16, ptr noundef nonnull %buf.i106.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool.not.i109.i, label %if.then.i111.i, label %if.end26.i.do.body.i114.i_crit_edge

if.end26.i.do.body.i114.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i114.i

if.then.i111.i:                                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %buf.i106.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf.i106.i, align 4
  %phi.cast.i = and i32 %39, 255
  br label %do.body.i114.i

do.body.i114.i:                                   ; preds = %if.then.i111.i, %if.end26.i.do.body.i114.i_crit_edge
  %storemerge.i112.i = phi i32 [ %phi.cast.i, %if.then.i111.i ], [ 255, %if.end26.i.do.body.i114.i_crit_edge ]
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i113.i = icmp sgt i32 %40, 1
  br i1 %cmp.i113.i, label %do.end.i118.i, label %do.body.i114.i.ov965x_read.exit119.i_crit_edge

do.body.i114.i.ov965x_read.exit119.i_crit_edge:   ; preds = %do.body.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit119.i

do.end.i118.i:                                    ; preds = %do.body.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i115.i = getelementptr i8, ptr %1, i32 -292
  %call7.i117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i115.i, ptr noundef nonnull @.str.30, i32 noundef %storemerge.i112.i, i32 noundef 16, i32 noundef %call.i108.i) #11
  br label %ov965x_read.exit119.i

ov965x_read.exit119.i:                            ; preds = %do.end.i118.i, %do.body.i114.i.ov965x_read.exit119.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i106.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %cmp28.i = icmp slt i32 %call.i108.i, 0
  br i1 %cmp28.i, label %ov965x_read.exit119.i.__g_volatile_ctrl.exit_crit_edge, label %if.end31.i

ov965x_read.exit119.i.__g_volatile_ctrl.exit_crit_edge: ; preds = %ov965x_read.exit119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end31.i:                                       ; preds = %ov965x_read.exit119.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i120.i) #8
  %41 = ptrtoint ptr %buf.i120.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %buf.i120.i, align 4, !annotation !183
  %42 = ptrtoint ptr %regmap.i93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i93.i, align 4
  %call.i122.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 161, ptr noundef nonnull %buf.i120.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %if.then.i125.i, label %if.end31.i.do.body.i128.i_crit_edge

if.end31.i.do.body.i128.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i128.i

if.then.i125.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %buf.i120.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf.i120.i, align 4
  %conv1.i124.i = trunc i32 %45 to i8
  br label %do.body.i128.i

do.body.i128.i:                                   ; preds = %if.then.i125.i, %if.end31.i.do.body.i128.i_crit_edge
  %storemerge.i126.i = phi i8 [ %conv1.i124.i, %if.then.i125.i ], [ -1, %if.end31.i.do.body.i128.i_crit_edge ]
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i127.i = icmp sgt i32 %46, 1
  br i1 %cmp.i127.i, label %do.end.i132.i, label %do.body.i128.i.ov965x_read.exit133.i_crit_edge

do.body.i128.i.ov965x_read.exit133.i_crit_edge:   ; preds = %do.body.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit133.i

do.end.i132.i:                                    ; preds = %do.body.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i129.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i130.i = zext i8 %storemerge.i126.i to i32
  %call7.i131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i129.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i130.i, i32 noundef 161, i32 noundef %call.i122.i) #11
  br label %ov965x_read.exit133.i

ov965x_read.exit133.i:                            ; preds = %do.end.i132.i, %do.body.i128.i.ov965x_read.exit133.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i120.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %cmp33.i = icmp slt i32 %call.i122.i, 0
  br i1 %cmp33.i, label %ov965x_read.exit133.i.__g_volatile_ctrl.exit_crit_edge, label %if.end36.i

ov965x_read.exit133.i.__g_volatile_ctrl.exit_crit_edge: ; preds = %ov965x_read.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__g_volatile_ctrl.exit

if.end36.i:                                       ; preds = %ov965x_read.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = and i8 %storemerge.i126.i, 63
  %and38.i = zext i8 %47 to i32
  %shl39.i = shl nuw nsw i32 %and38.i, 10
  %shl41.i = shl nuw nsw i32 %storemerge.i112.i, 2
  %or42.i = or i32 %shl39.i, %shl41.i
  %48 = and i8 %storemerge.i98.i, 3
  %and44.i = zext i8 %48 to i32
  %or45.i = or i32 %or42.i, %and44.i
  %exp_row_interval.i = getelementptr i8, ptr %1, i32 -64
  %49 = ptrtoint ptr %exp_row_interval.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %exp_row_interval.i, align 4
  %mul46.i = mul i32 %50, %or45.i
  %add47.i = add i32 %mul46.i, 50
  %div.i = udiv i32 %add47.i, 100
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end36.i, %if.end9.i
  %.sink = phi i32 [ 188, %if.end36.i ], [ 216, %if.end9.i ]
  %mul.sink.i = phi i32 [ %div.i, %if.end36.i ], [ %mul.i, %if.end9.i ]
  %exposure49.i = getelementptr i8, ptr %1, i32 %.sink
  %51 = ptrtoint ptr %exposure49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %exposure49.i, align 4
  %val15.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %val15.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.sink.i, ptr %val15.i, align 4
  br label %__g_volatile_ctrl.exit

__g_volatile_ctrl.exit:                           ; preds = %cleanup.sink.split.i, %ov965x_read.exit133.i.__g_volatile_ctrl.exit_crit_edge, %ov965x_read.exit119.i.__g_volatile_ctrl.exit_crit_edge, %ov965x_read.exit105.i.__g_volatile_ctrl.exit_crit_edge, %sw.bb16.i.__g_volatile_ctrl.exit_crit_edge, %ov965x_read.exit91.i.__g_volatile_ctrl.exit_crit_edge, %ov965x_read.exit.i.__g_volatile_ctrl.exit_crit_edge, %sw.bb.i.__g_volatile_ctrl.exit_crit_edge, %if.end.i.__g_volatile_ctrl.exit_crit_edge, %do.end6.__g_volatile_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end6.__g_volatile_ctrl.exit_crit_edge ], [ 0, %sw.bb.i.__g_volatile_ctrl.exit_crit_edge ], [ %call.i.i, %ov965x_read.exit.i.__g_volatile_ctrl.exit_crit_edge ], [ %call.i80.i, %ov965x_read.exit91.i.__g_volatile_ctrl.exit_crit_edge ], [ 0, %sw.bb16.i.__g_volatile_ctrl.exit_crit_edge ], [ %call.i94.i, %ov965x_read.exit105.i.__g_volatile_ctrl.exit_crit_edge ], [ %call.i108.i, %ov965x_read.exit119.i.__g_volatile_ctrl.exit_crit_edge ], [ %call.i122.i, %ov965x_read.exit133.i.__g_volatile_ctrl.exit_crit_edge ], [ 0, %if.end.i.__g_volatile_ctrl.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov965x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i183 = alloca i32, align 4
  %buf.i46.i = alloca i32, align 4
  %buf.i.i158 = alloca i32, align 4
  %buf.i126.i = alloca i32, align 4
  %buf.i.i97 = alloca i32, align 4
  %buf.i.i74 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -408
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 -292
  %name3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %power = getelementptr i8, ptr %1, i32 248
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef %4, i32 noundef %6, i32 noundef %8) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -160
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power7 = getelementptr i8, ptr %1, i32 248
  %9 = ptrtoint ptr %power7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %12, label %if.end11.sw.epilog_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963776, label %sw.bb14
    i32 10094849, label %sw.bb17
    i32 9963794, label %sw.bb20
    i32 9963796, label %sw.bb23
    i32 9963800, label %sw.bb25
    i32 9963778, label %sw.bb28
    i32 9963803, label %sw.bb31
    i32 10422531, label %sw.bb34
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end11
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !183
  %regmap.i.i = getelementptr i8, ptr %1, i32 -68
  %17 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 19, ptr noundef nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %sw.bb.do.body.i.i_crit_edge

sw.bb.do.body.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf.i.i, align 4
  %conv1.i.i = trunc i32 %20 to i8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %sw.bb.do.body.i.i_crit_edge
  %storemerge.i.i = phi i8 [ %conv1.i.i, %if.then.i.i ], [ -1, %sw.bb.do.body.i.i_crit_edge ]
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.ov965x_read.exit.i_crit_edge

do.body.i.i.ov965x_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i.i = zext i8 %storemerge.i.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i, i32 noundef 19, i32 noundef %call.i.i) #11
  br label %ov965x_read.exit.i

ov965x_read.exit.i:                               ; preds = %do.end.i.i, %do.body.i.i.ov965x_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  br i1 %tobool.not.i.i, label %if.then.i, label %ov965x_read.exit.i.sw.epilog_crit_edge

ov965x_read.exit.i.sw.epilog_crit_edge:           ; preds = %ov965x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %ov965x_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  %22 = and i8 %storemerge.i.i, -20
  %masksel.i = select i1 %tobool1.not.i, i8 0, i8 19
  %cond.i = or i8 %22, %masksel.i
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i30.i = zext i8 %cond.i to i32
  %call.i31.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 19, i32 noundef %conv1.i30.i) #8
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i32.i = icmp sgt i32 %25, 1
  br i1 %cmp.i32.i, label %do.end.i34.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i34.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i33.i = getelementptr i8, ptr %1, i32 -292
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i33.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i30.i, i32 noundef 19, i32 noundef %call.i31.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i34.i, %if.then.i.if.end.i_crit_edge
  %26 = or i32 %call.i31.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %if.then7.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.end.i
  %blue_balance.i = getelementptr i8, ptr %1, i32 196
  %28 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blue_balance.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i36.i = and i32 %31, 255
  %call.i37.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 1, i32 noundef %conv1.i36.i) #8
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i38.i = icmp sgt i32 %34, 1
  br i1 %cmp.i38.i, label %do.end.i41.i, label %if.then7.i.ov965x_write.exit42.i_crit_edge

if.then7.i.ov965x_write.exit42.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit42.i

do.end.i41.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i39.i = getelementptr i8, ptr %1, i32 -292
  %call6.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i39.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i36.i, i32 noundef 1, i32 noundef %call.i37.i) #11
  br label %ov965x_write.exit42.i

ov965x_write.exit42.i:                            ; preds = %do.end.i41.i, %if.then7.i.ov965x_write.exit42.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp.i, label %ov965x_write.exit42.i.sw.epilog_crit_edge, label %if.end12.i

ov965x_write.exit42.i.sw.epilog_crit_edge:        ; preds = %ov965x_write.exit42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end12.i:                                       ; preds = %ov965x_write.exit42.i
  %red_balance.i = getelementptr i8, ptr %1, i32 200
  %35 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %red_balance.i, align 4
  %val14.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val14.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val14.i, align 4
  %39 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i44.i = and i32 %38, 255
  %call.i45.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 2, i32 noundef %conv1.i44.i) #8
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i46.i = icmp sgt i32 %41, 1
  br i1 %cmp.i46.i, label %do.end.i49.i, label %if.end12.i.sw.epilog_crit_edge

if.end12.i.sw.epilog_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i49.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i47.i = getelementptr i8, ptr %1, i32 -292
  %call6.i48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i47.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i44.i, i32 noundef 2, i32 noundef %call.i45.i) #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val15, align 4
  %add.i = add i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i)
  %cmp.i65 = icmp sgt i32 %add.i, 7
  br i1 %cmp.i65, label %sw.bb14.sw.epilog_crit_edge, label %for.cond.preheader.i

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %sw.bb14
  %regmap.i.i66 = getelementptr i8, ptr %1, i32 -68
  %name.i.i67 = getelementptr i8, ptr %1, i32 -292
  %arrayidx3.i = getelementptr [8 x [3 x i8]], ptr @ov965x_set_brightness.regs, i32 0, i32 %add.i, i32 0
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.i, align 1
  %46 = ptrtoint ptr %regmap.i.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i66, align 4
  %conv1.i.i68 = zext i8 %45 to i32
  %call.i.i69 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 36, i32 noundef %conv1.i.i68) #8
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i.i70 = icmp sgt i32 %48, 1
  br i1 %cmp.i.i70, label %do.end.i.i72, label %for.cond.preheader.i.ov965x_write.exit.i_crit_edge

for.cond.preheader.i.ov965x_write.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i

do.end.i.i72:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i67, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i68, i32 noundef 36, i32 noundef %call.i.i69) #11
  br label %ov965x_write.exit.i

ov965x_write.exit.i:                              ; preds = %do.end.i.i72, %for.cond.preheader.i.ov965x_write.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %tobool.not.i = icmp eq i32 %call.i.i69, 0
  br i1 %tobool.not.i, label %for.body.i.1, label %ov965x_write.exit.i.sw.epilog_crit_edge

ov965x_write.exit.i.sw.epilog_crit_edge:          ; preds = %ov965x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i.1:                                     ; preds = %ov965x_write.exit.i
  %arrayidx3.i.1 = getelementptr [8 x [3 x i8]], ptr @ov965x_set_brightness.regs, i32 0, i32 %add.i, i32 1
  %49 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx3.i.1, align 1
  %51 = ptrtoint ptr %regmap.i.i66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i66, align 4
  %conv1.i.i68.1 = zext i8 %50 to i32
  %call.i.i69.1 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 37, i32 noundef %conv1.i.i68.1) #8
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.i70.1 = icmp sgt i32 %53, 1
  br i1 %cmp.i.i70.1, label %do.end.i.i72.1, label %for.body.i.1.ov965x_write.exit.i.1_crit_edge

for.body.i.1.ov965x_write.exit.i.1_crit_edge:     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i.1

do.end.i.i72.1:                                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i71.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i67, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i68.1, i32 noundef 37, i32 noundef %call.i.i69.1) #11
  br label %ov965x_write.exit.i.1

ov965x_write.exit.i.1:                            ; preds = %do.end.i.i72.1, %for.body.i.1.ov965x_write.exit.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i69.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.2, label %ov965x_write.exit.i.1.sw.epilog_crit_edge

ov965x_write.exit.i.1.sw.epilog_crit_edge:        ; preds = %ov965x_write.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i.2:                                     ; preds = %ov965x_write.exit.i.1
  %arrayidx3.i.2 = getelementptr [8 x [3 x i8]], ptr @ov965x_set_brightness.regs, i32 0, i32 %add.i, i32 2
  %54 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx3.i.2, align 1
  %56 = ptrtoint ptr %regmap.i.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i.i66, align 4
  %conv1.i.i68.2 = zext i8 %55 to i32
  %call.i.i69.2 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 38, i32 noundef %conv1.i.i68.2) #8
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i70.2 = icmp sgt i32 %58, 1
  br i1 %cmp.i.i70.2, label %do.end.i.i72.2, label %for.body.i.2.sw.epilog_crit_edge

for.body.i.2.sw.epilog_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i.i72.2:                                   ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i71.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i67, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i68.2, i32 noundef 38, i32 noundef %call.i.i69.2) #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end11
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i75 = icmp eq i32 %60, 0
  %61 = getelementptr i8, ptr %1, i32 184
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %65 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i76 = icmp eq i32 %65, 0
  br i1 %tobool.not.i76, label %sw.bb17.if.end15.i_crit_edge, label %if.then.i80

sw.bb17.if.end15.i_crit_edge:                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i80:                                      ; preds = %sw.bb17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i74) #8
  %66 = ptrtoint ptr %buf.i.i74 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %buf.i.i74, align 4, !annotation !183
  %regmap.i.i77 = getelementptr i8, ptr %1, i32 -68
  %67 = ptrtoint ptr %regmap.i.i77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i.i77, align 4
  %call.i.i78 = call i32 @regmap_read(ptr noundef %68, i32 noundef 19, ptr noundef nonnull %buf.i.i74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.then.i.i82, label %if.then.i80.do.body.i.i85_crit_edge

if.then.i80.do.body.i.i85_crit_edge:              ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i85

if.then.i.i82:                                    ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %buf.i.i74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buf.i.i74, align 4
  %conv1.i.i81 = trunc i32 %70 to i8
  br label %do.body.i.i85

do.body.i.i85:                                    ; preds = %if.then.i.i82, %if.then.i80.do.body.i.i85_crit_edge
  %storemerge.i.i83 = phi i8 [ %conv1.i.i81, %if.then.i.i82 ], [ -1, %if.then.i80.do.body.i.i85_crit_edge ]
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i.i84 = icmp sgt i32 %71, 1
  br i1 %cmp.i.i84, label %do.end.i.i89, label %do.body.i.i85.ov965x_read.exit.i90_crit_edge

do.body.i.i85.ov965x_read.exit.i90_crit_edge:     ; preds = %do.body.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i90

do.end.i.i89:                                     ; preds = %do.body.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i86 = getelementptr i8, ptr %1, i32 -292
  %conv5.i.i87 = zext i8 %storemerge.i.i83 to i32
  %call7.i.i88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i86, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i87, i32 noundef 19, i32 noundef %call.i.i78) #11
  br label %ov965x_read.exit.i90

ov965x_read.exit.i90:                             ; preds = %do.end.i.i89, %do.body.i.i85.ov965x_read.exit.i90_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp2.i = icmp slt i32 %call.i.i78, 0
  br i1 %cmp2.i, label %ov965x_read.exit.i90.sw.epilog_crit_edge, label %if.end.i92

ov965x_read.exit.i90.sw.epilog_crit_edge:         ; preds = %ov965x_read.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i92:                                       ; preds = %ov965x_read.exit.i90
  %72 = and i8 %storemerge.i.i83, -6
  %masksel.i91 = select i1 %cmp.i75, i8 5, i8 0
  %storemerge.i = or i8 %72, %masksel.i91
  %73 = ptrtoint ptr %regmap.i.i77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i77, align 4
  %conv1.i81.i = zext i8 %storemerge.i to i32
  %call.i82.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 19, i32 noundef %conv1.i81.i) #8
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i83.i = icmp sgt i32 %75, 1
  br i1 %cmp.i83.i, label %do.end.i85.i, label %if.end.i92.ov965x_write.exit.i94_crit_edge

if.end.i92.ov965x_write.exit.i94_crit_edge:       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i94

do.end.i85.i:                                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  %name.i84.i = getelementptr i8, ptr %1, i32 -292
  %call6.i.i93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i84.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i81.i, i32 noundef 19, i32 noundef %call.i82.i) #11
  br label %ov965x_write.exit.i94

ov965x_write.exit.i94:                            ; preds = %do.end.i85.i, %if.end.i92.ov965x_write.exit.i94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %cmp11.i = icmp slt i32 %call.i82.i, 0
  br i1 %cmp11.i, label %ov965x_write.exit.i94.sw.epilog_crit_edge, label %ov965x_write.exit.i94.if.end15.i_crit_edge

ov965x_write.exit.i94.if.end15.i_crit_edge:       ; preds = %ov965x_write.exit.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

ov965x_write.exit.i94.sw.epilog_crit_edge:        ; preds = %ov965x_write.exit.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end15.i:                                       ; preds = %ov965x_write.exit.i94.if.end15.i_crit_edge, %sw.bb17.if.end15.i_crit_edge
  br i1 %cmp.i75, label %if.end15.i.if.end50.i_crit_edge, label %land.lhs.true.i

if.end15.i.if.end50.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %exposure.i = getelementptr i8, ptr %1, i32 188
  %76 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %exposure.i, align 4
  %is_new17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %is_new17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load18.i = load i32, ptr %is_new17.i, align 4
  %79 = and i32 %bf.load18.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool21.not.i = icmp eq i32 %79, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.if.end50.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.end50.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %val.i95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %80 = ptrtoint ptr %val.i95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i95, align 4
  %mul.i = mul i32 %81, 100
  %exp_row_interval.i = getelementptr i8, ptr %1, i32 -64
  %82 = ptrtoint ptr %exp_row_interval.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %exp_row_interval.i, align 4
  %div.i = udiv i32 %mul.i, %83
  %conv26.i = and i32 %div.i, 3
  %regmap.i86.i = getelementptr i8, ptr %1, i32 -68
  %84 = ptrtoint ptr %regmap.i86.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i86.i, align 4
  %call.i88.i = call i32 @regmap_write(ptr noundef %85, i32 noundef 4, i32 noundef %conv26.i) #8
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i89.i = icmp sgt i32 %86, 1
  br i1 %cmp.i89.i, label %do.end.i92.i, label %if.then22.i.ov965x_write.exit93.i_crit_edge

if.then22.i.ov965x_write.exit93.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit93.i

do.end.i92.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i90.i = getelementptr i8, ptr %1, i32 -292
  %call6.i91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i90.i, ptr noundef nonnull @.str.27, i32 noundef %conv26.i, i32 noundef 4, i32 noundef %call.i88.i) #11
  br label %ov965x_write.exit93.i

ov965x_write.exit93.i:                            ; preds = %do.end.i92.i, %if.then22.i.ov965x_write.exit93.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool28.not.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %ov965x_write.exit93.i.if.end40.i_crit_edge

ov965x_write.exit93.i.if.end40.i_crit_edge:       ; preds = %ov965x_write.exit93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then29.i:                                      ; preds = %ov965x_write.exit93.i
  %shr.i = lshr i32 %div.i, 2
  %87 = ptrtoint ptr %regmap.i86.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i86.i, align 4
  %conv1.i95.i = and i32 %shr.i, 255
  %call.i96.i = call i32 @regmap_write(ptr noundef %88, i32 noundef 16, i32 noundef %conv1.i95.i) #8
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i97.i = icmp sgt i32 %89, 1
  br i1 %cmp.i97.i, label %do.end.i100.i, label %if.then29.i.if.end33.i_crit_edge

if.then29.i.if.end33.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end.i100.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i98.i = getelementptr i8, ptr %1, i32 -292
  %call6.i99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i98.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i95.i, i32 noundef 16, i32 noundef %call.i96.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end.i100.i, %if.then29.i.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool34.not.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end33.i.if.end40.i_crit_edge

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.end33.i
  %shr36.i = lshr i32 %div.i, 10
  %conv38.i = and i32 %shr36.i, 63
  %90 = ptrtoint ptr %regmap.i86.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i86.i, align 4
  %call.i104.i = call i32 @regmap_write(ptr noundef %91, i32 noundef 161, i32 noundef %conv38.i) #8
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.i105.i = icmp sgt i32 %92, 1
  br i1 %cmp.i105.i, label %do.end.i108.i, label %if.then35.i.if.end40.i_crit_edge

if.then35.i.if.end40.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

do.end.i108.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i106.i = getelementptr i8, ptr %1, i32 -292
  %call6.i107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i106.i, ptr noundef nonnull @.str.27, i32 noundef %conv38.i, i32 noundef 161, i32 noundef %call.i104.i) #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end.i108.i, %if.then35.i.if.end40.i_crit_edge, %if.end33.i.if.end40.i_crit_edge, %ov965x_write.exit93.i.if.end40.i_crit_edge
  %ret.1.i = phi i32 [ %call.i96.i, %if.end33.i.if.end40.i_crit_edge ], [ %call.i104.i, %if.then35.i.if.end40.i_crit_edge ], [ %call.i104.i, %do.end.i108.i ], [ %call.i88.i, %ov965x_write.exit93.i.if.end40.i_crit_edge ]
  %93 = ptrtoint ptr %exp_row_interval.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %exp_row_interval.i, align 4
  %mul42.i = mul i32 %94, %div.i
  %add.i96 = add i32 %mul42.i, 50
  %div43.i = udiv i32 %add.i96, 100
  %95 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %exposure.i, align 4
  %val45.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 22
  %97 = ptrtoint ptr %val45.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div43.i, ptr %val45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp46.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp46.i, label %if.end40.i.sw.epilog_crit_edge, label %if.end40.i.if.end50.i_crit_edge

if.end40.i.if.end50.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.end40.i.sw.epilog_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end50.i:                                       ; preds = %if.end40.i.if.end50.i_crit_edge, %land.lhs.true.i.if.end50.i_crit_edge, %if.end15.i.if.end50.i_crit_edge
  %brightness.i = getelementptr i8, ptr %1, i32 220
  %98 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %brightness.i, align 4
  call void @v4l2_ctrl_activate(ptr noundef %99, i1 noundef zeroext %cmp.i75) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end11
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val21, align 4
  %102 = getelementptr i8, ptr %1, i32 212
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %is_new.i98 = getelementptr inbounds %struct.v4l2_ctrl, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %is_new.i98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load.i99 = load i32, ptr %is_new.i98, align 4
  %106 = and i32 %bf.load.i99, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i100 = icmp eq i32 %106, 0
  br i1 %tobool.not.i100, label %sw.bb20.if.end16.i_crit_edge, label %if.then.i104

sw.bb20.if.end16.i_crit_edge:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then.i104:                                     ; preds = %sw.bb20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i97) #8
  %107 = ptrtoint ptr %buf.i.i97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %buf.i.i97, align 4, !annotation !183
  %regmap.i.i101 = getelementptr i8, ptr %1, i32 -68
  %108 = ptrtoint ptr %regmap.i.i101 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap.i.i101, align 4
  %call.i.i102 = call i32 @regmap_read(ptr noundef %109, i32 noundef 19, ptr noundef nonnull %buf.i.i97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool.not.i.i103 = icmp eq i32 %call.i.i102, 0
  br i1 %tobool.not.i.i103, label %if.then.i.i106, label %if.then.i104.do.body.i.i109_crit_edge

if.then.i104.do.body.i.i109_crit_edge:            ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i109

if.then.i.i106:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %buf.i.i97 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf.i.i97, align 4
  %conv1.i.i105 = trunc i32 %111 to i8
  br label %do.body.i.i109

do.body.i.i109:                                   ; preds = %if.then.i.i106, %if.then.i104.do.body.i.i109_crit_edge
  %storemerge.i.i107 = phi i8 [ %conv1.i.i105, %if.then.i.i106 ], [ -1, %if.then.i104.do.body.i.i109_crit_edge ]
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i.i108 = icmp sgt i32 %112, 1
  br i1 %cmp.i.i108, label %do.end.i.i113, label %do.body.i.i109.ov965x_read.exit.i115_crit_edge

do.body.i.i109.ov965x_read.exit.i115_crit_edge:   ; preds = %do.body.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i115

do.end.i.i113:                                    ; preds = %do.body.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i110 = getelementptr i8, ptr %1, i32 -292
  %conv5.i.i111 = zext i8 %storemerge.i.i107 to i32
  %call7.i.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i110, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i111, i32 noundef 19, i32 noundef %call.i.i102) #11
  br label %ov965x_read.exit.i115

ov965x_read.exit.i115:                            ; preds = %do.end.i.i113, %do.body.i.i109.ov965x_read.exit.i115_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp.i114 = icmp slt i32 %call.i.i102, 0
  br i1 %cmp.i114, label %ov965x_read.exit.i115.sw.epilog_crit_edge, label %if.end.i119

ov965x_read.exit.i115.sw.epilog_crit_edge:        ; preds = %ov965x_read.exit.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i119:                                      ; preds = %ov965x_read.exit.i115
  %113 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %102, align 4
  %val.i116 = getelementptr inbounds %struct.v4l2_ctrl, ptr %114, i32 0, i32 22
  %115 = ptrtoint ptr %val.i116 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool5.not.i = icmp eq i32 %116, 0
  %117 = and i8 %storemerge.i.i107, -5
  %masksel.i117 = select i1 %tobool5.not.i, i8 0, i8 4
  %storemerge.i118 = or i8 %masksel.i117, %117
  %118 = ptrtoint ptr %regmap.i.i101 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap.i.i101, align 4
  %conv1.i113.i = zext i8 %storemerge.i118 to i32
  %call.i114.i = call i32 @regmap_write(ptr noundef %119, i32 noundef 19, i32 noundef %conv1.i113.i) #8
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp.i115.i = icmp sgt i32 %120, 1
  br i1 %cmp.i115.i, label %do.end.i117.i, label %if.end.i119.ov965x_write.exit.i121_crit_edge

if.end.i119.ov965x_write.exit.i121_crit_edge:     ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i121

do.end.i117.i:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %name.i116.i = getelementptr i8, ptr %1, i32 -292
  %call6.i.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i116.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i113.i, i32 noundef 19, i32 noundef %call.i114.i) #11
  br label %ov965x_write.exit.i121

ov965x_write.exit.i121:                           ; preds = %do.end.i117.i, %if.end.i119.ov965x_write.exit.i121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %cmp12.i = icmp slt i32 %call.i114.i, 0
  br i1 %cmp12.i, label %ov965x_write.exit.i121.sw.epilog_crit_edge, label %ov965x_write.exit.i121.if.end16.i_crit_edge

ov965x_write.exit.i121.if.end16.i_crit_edge:      ; preds = %ov965x_write.exit.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

ov965x_write.exit.i121.sw.epilog_crit_edge:       ; preds = %ov965x_write.exit.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end16.i:                                       ; preds = %ov965x_write.exit.i121.if.end16.i_crit_edge, %sw.bb20.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ %call.i114.i, %ov965x_write.exit.i121.if.end16.i_crit_edge ], [ 0, %sw.bb20.if.end16.i_crit_edge ]
  %gain.i = getelementptr i8, ptr %1, i32 216
  %121 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %gain.i, align 4
  %is_new17.i122 = getelementptr inbounds %struct.v4l2_ctrl, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %is_new17.i122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load18.i123 = load i32, ptr %is_new17.i122, align 4
  %124 = and i32 %bf.load18.i123, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool21.not.i124 = icmp ne i32 %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool22.not.i = icmp eq i32 %101, 0
  %or.cond.i125 = and i1 %tobool22.not.i, %tobool21.not.i124
  br i1 %or.cond.i125, label %if.then23.i, label %if.end16.i.sw.epilog_crit_edge

if.end16.i.sw.epilog_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then23.i:                                      ; preds = %if.end16.i
  %val26.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %122, i32 0, i32 22
  %125 = ptrtoint ptr %val26.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %126)
  %cmp29.not.i = icmp ult i32 %126, 1024
  br i1 %cmp29.not.i, label %for.cond.i.1, label %if.then23.i.for.end.i_crit_edge

if.then23.i.for.end.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.1:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %126)
  %cmp29.not.i.1 = icmp ult i32 %126, 512
  br i1 %cmp29.not.i.1, label %for.cond.i.2, label %for.cond.i.1.for.end.i_crit_edge

for.cond.i.1.for.end.i_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.2:                                     ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %126)
  %cmp29.not.i.2 = icmp ult i32 %126, 256
  br i1 %cmp29.not.i.2, label %for.cond.i.3, label %for.cond.i.2.for.end.i_crit_edge

for.cond.i.2.for.end.i_crit_edge:                 ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.3:                                     ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %126)
  %cmp29.not.i.3 = icmp ult i32 %126, 128
  br i1 %cmp29.not.i.3, label %for.cond.i.4, label %for.cond.i.3.for.end.i_crit_edge

for.cond.i.3.for.end.i_crit_edge:                 ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.4:                                     ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %126)
  %cmp29.not.i.4 = icmp ult i32 %126, 64
  br i1 %cmp29.not.i.4, label %for.cond.i.5, label %for.cond.i.4.for.end.i_crit_edge

for.cond.i.4.for.end.i_crit_edge:                 ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.5:                                     ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %126)
  %cmp29.not.i.5 = icmp ult i32 %126, 32
  br i1 %cmp29.not.i.5, label %for.cond.i.6, label %for.cond.i.5.for.end.i_crit_edge

for.cond.i.5.for.end.i_crit_edge:                 ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.6:                                     ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %126)
  %cmp29.not.i.6 = icmp ult i32 %126, 16
  br i1 %cmp29.not.i.6, label %for.cond.i.7, label %for.cond.i.6.for.end.i_crit_edge

for.cond.i.6.for.end.i_crit_edge:                 ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.7:                                     ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.i.7, %for.cond.i.6.for.end.i_crit_edge, %for.cond.i.5.for.end.i_crit_edge, %for.cond.i.4.for.end.i_crit_edge, %for.cond.i.3.for.end.i_crit_edge, %for.cond.i.2.for.end.i_crit_edge, %for.cond.i.1.for.end.i_crit_edge, %if.then23.i.for.end.i_crit_edge
  %cmp33.i = phi i1 [ true, %for.cond.i.7 ], [ false, %for.cond.i.6.for.end.i_crit_edge ], [ false, %for.cond.i.5.for.end.i_crit_edge ], [ false, %for.cond.i.4.for.end.i_crit_edge ], [ false, %for.cond.i.3.for.end.i_crit_edge ], [ false, %for.cond.i.2.for.end.i_crit_edge ], [ false, %for.cond.i.1.for.end.i_crit_edge ], [ false, %if.then23.i.for.end.i_crit_edge ]
  %m.0.i.lcssa = phi i32 [ -1, %for.cond.i.7 ], [ 0, %for.cond.i.6.for.end.i_crit_edge ], [ 1, %for.cond.i.5.for.end.i_crit_edge ], [ 2, %for.cond.i.4.for.end.i_crit_edge ], [ 3, %for.cond.i.3.for.end.i_crit_edge ], [ 4, %for.cond.i.2.for.end.i_crit_edge ], [ 5, %for.cond.i.1.for.end.i_crit_edge ], [ 6, %if.then23.i.for.end.i_crit_edge ]
  %mul.i126.lcssa = phi i32 [ poison, %for.cond.i.7 ], [ 0, %for.cond.i.6.for.end.i_crit_edge ], [ 16, %for.cond.i.5.for.end.i_crit_edge ], [ 48, %for.cond.i.4.for.end.i_crit_edge ], [ 112, %for.cond.i.3.for.end.i_crit_edge ], [ 240, %for.cond.i.2.for.end.i_crit_edge ], [ 496, %for.cond.i.1.for.end.i_crit_edge ], [ 1008, %if.then23.i.for.end.i_crit_edge ]
  br i1 %cmp33.i, label %for.end.i.sw.epilog_crit_edge, label %if.end36.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end36.i:                                       ; preds = %for.end.i
  %mul38.neg.i = shl i32 -16, %m.0.i.lcssa
  %sub.i = add i32 %mul38.neg.i, %126
  %div110.i = lshr i32 %sub.i, %m.0.i.lcssa
  %or43.i = or i32 %div110.i, %mul.i126.lcssa
  %regmap.i118.i = getelementptr i8, ptr %1, i32 -68
  %127 = ptrtoint ptr %regmap.i118.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap.i118.i, align 4
  %conv1.i119.i = and i32 %or43.i, 255
  %call.i120.i = call i32 @regmap_write(ptr noundef %128, i32 noundef 0, i32 noundef %conv1.i119.i) #8
  %129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp.i121.i = icmp sgt i32 %129, 1
  br i1 %cmp.i121.i, label %do.end.i124.i, label %if.end36.i.ov965x_write.exit125.i_crit_edge

if.end36.i.ov965x_write.exit125.i_crit_edge:      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit125.i

do.end.i124.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i122.i = getelementptr i8, ptr %1, i32 -292
  %call6.i123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i122.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i119.i, i32 noundef 0, i32 noundef %call.i120.i) #11
  br label %ov965x_write.exit125.i

ov965x_write.exit125.i:                           ; preds = %do.end.i124.i, %if.end36.i.ov965x_write.exit125.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp47.i = icmp slt i32 %call.i120.i, 0
  br i1 %cmp47.i, label %ov965x_write.exit125.i.sw.epilog_crit_edge, label %if.end50.i127

ov965x_write.exit125.i.sw.epilog_crit_edge:       ; preds = %ov965x_write.exit125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end50.i127:                                    ; preds = %ov965x_write.exit125.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i126.i) #8
  %130 = ptrtoint ptr %buf.i126.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %buf.i126.i, align 4, !annotation !183
  %131 = ptrtoint ptr %regmap.i118.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i118.i, align 4
  %call.i128.i = call i32 @regmap_read(ptr noundef %132, i32 noundef 3, ptr noundef nonnull %buf.i126.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %tobool.not.i129.i = icmp eq i32 %call.i128.i, 0
  br i1 %tobool.not.i129.i, label %if.then.i131.i, label %if.end50.i127.do.body.i134.i_crit_edge

if.end50.i127.do.body.i134.i_crit_edge:           ; preds = %if.end50.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i134.i

if.then.i131.i:                                   ; preds = %if.end50.i127
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %buf.i126.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %buf.i126.i, align 4
  %conv1.i130.i = trunc i32 %134 to i8
  br label %do.body.i134.i

do.body.i134.i:                                   ; preds = %if.then.i131.i, %if.end50.i127.do.body.i134.i_crit_edge
  %storemerge.i132.i = phi i8 [ %conv1.i130.i, %if.then.i131.i ], [ -1, %if.end50.i127.do.body.i134.i_crit_edge ]
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i133.i = icmp sgt i32 %135, 1
  br i1 %cmp.i133.i, label %do.end.i138.i, label %do.body.i134.i.ov965x_read.exit139.i_crit_edge

do.body.i134.i.ov965x_read.exit139.i_crit_edge:   ; preds = %do.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit139.i

do.end.i138.i:                                    ; preds = %do.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i135.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i136.i = zext i8 %storemerge.i132.i to i32
  %call7.i137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i135.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i136.i, i32 noundef 3, i32 noundef %call.i128.i) #11
  br label %ov965x_read.exit139.i

ov965x_read.exit139.i:                            ; preds = %do.end.i138.i, %do.body.i134.i.ov965x_read.exit139.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i126.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %cmp52.i = icmp slt i32 %call.i128.i, 0
  br i1 %cmp52.i, label %ov965x_read.exit139.i.sw.epilog_crit_edge, label %if.end55.i

ov965x_read.exit139.i.sw.epilog_crit_edge:        ; preds = %ov965x_read.exit139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end55.i:                                       ; preds = %ov965x_read.exit139.i
  %136 = and i8 %storemerge.i132.i, 63
  %137 = lshr i32 %or43.i, 2
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, -64
  %conv63.i = or i8 %136, %139
  %140 = ptrtoint ptr %regmap.i118.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i118.i, align 4
  %conv1.i141.i = zext i8 %conv63.i to i32
  %call.i142.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 3, i32 noundef %conv1.i141.i) #8
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp.i143.i = icmp sgt i32 %142, 1
  br i1 %cmp.i143.i, label %do.end.i146.i, label %if.end55.i.ov965x_write.exit147.i_crit_edge

if.end55.i.ov965x_write.exit147.i_crit_edge:      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit147.i

do.end.i146.i:                                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i144.i = getelementptr i8, ptr %1, i32 -292
  %call6.i145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i144.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i141.i, i32 noundef 3, i32 noundef %call.i142.i) #11
  br label %ov965x_write.exit147.i

ov965x_write.exit147.i:                           ; preds = %do.end.i146.i, %if.end55.i.ov965x_write.exit147.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i)
  %cmp65.i = icmp slt i32 %call.i142.i, 0
  br i1 %cmp65.i, label %ov965x_write.exit147.i.sw.epilog_crit_edge, label %cleanup.i

ov965x_write.exit147.i.sw.epilog_crit_edge:       ; preds = %ov965x_write.exit147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cleanup.i:                                        ; preds = %ov965x_write.exit147.i
  call void @__sanitizer_cov_trace_pc() #10
  %and70.i = and i32 %div110.i, 15
  %add.i128 = or i32 %and70.i, 16
  %mul71.i = shl i32 %add.i128, %m.0.i.lcssa
  %143 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %gain.i, align 4
  %val73.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %144, i32 0, i32 22
  %145 = ptrtoint ptr %val73.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul71.i, ptr %val73.i, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %146 = getelementptr i8, ptr %1, i32 204
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %val.i130 = getelementptr inbounds %struct.v4l2_ctrl, ptr %148, i32 0, i32 22
  %149 = ptrtoint ptr %val.i130 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i131 = icmp eq i32 %150, 0
  %spec.select.i = select i1 %tobool.not.i131, i8 0, i8 32
  %vflip.i = getelementptr i8, ptr %1, i32 208
  %151 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vflip.i, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %152, i32 0, i32 22
  %153 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %val3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool4.not.i = icmp eq i32 %154, 0
  %155 = or i8 %spec.select.i, 16
  %mvfp.1.i = select i1 %tobool4.not.i, i8 %spec.select.i, i8 %155
  %regmap.i.i132 = getelementptr i8, ptr %1, i32 -68
  %156 = ptrtoint ptr %regmap.i.i132 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap.i.i132, align 4
  %conv1.i.i133 = zext i8 %mvfp.1.i to i32
  %call.i.i134 = tail call i32 @regmap_write(ptr noundef %157, i32 noundef 30, i32 noundef %conv1.i.i133) #8
  %158 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp.i.i135 = icmp sgt i32 %158, 1
  br i1 %cmp.i.i135, label %do.end.i.i138, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i.i138:                                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i136 = getelementptr i8, ptr %1, i32 -292
  %call6.i.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i136, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i133, i32 noundef 30, i32 noundef %call.i.i134) #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %159 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %val26, align 4
  %call27 = tail call fastcc i32 @ov965x_set_banding_filter(ptr noundef %add.ptr.i, i32 noundef %160)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end11
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %161 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val29, align 4
  %add.i140 = add i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i140)
  %cmp.i141 = icmp sgt i32 %add.i140, 4
  br i1 %cmp.i141, label %sw.bb28.sw.epilog_crit_edge, label %for.cond.preheader.i144

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.preheader.i144:                          ; preds = %sw.bb28
  %regmap.i.i142 = getelementptr i8, ptr %1, i32 -68
  %name.i.i143 = getelementptr i8, ptr %1, i32 -292
  %arrayidx4.i = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 0
  %163 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx4.i, align 1
  %165 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145 = zext i8 %164 to i32
  %call.i.i146 = tail call i32 @regmap_write(ptr noundef %166, i32 noundef 79, i32 noundef %conv1.i.i145) #8
  %167 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i.i147 = icmp sgt i32 %167, 1
  br i1 %cmp.i.i147, label %do.end.i.i150, label %for.cond.preheader.i144.ov965x_write.exit.i155_crit_edge

for.cond.preheader.i144.ov965x_write.exit.i155_crit_edge: ; preds = %for.cond.preheader.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i155

do.end.i.i150:                                    ; preds = %for.cond.preheader.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145, i32 noundef 79, i32 noundef %call.i.i146) #11
  br label %ov965x_write.exit.i155

ov965x_write.exit.i155:                           ; preds = %do.end.i.i150, %for.cond.preheader.i144.ov965x_write.exit.i155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %tobool.not.i153 = icmp eq i32 %call.i.i146, 0
  br i1 %tobool.not.i153, label %for.body.i148.1, label %ov965x_write.exit.i155.sw.epilog_crit_edge

ov965x_write.exit.i155.sw.epilog_crit_edge:       ; preds = %ov965x_write.exit.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i148.1:                                  ; preds = %ov965x_write.exit.i155
  %arrayidx4.i.1 = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 1
  %168 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx4.i.1, align 1
  %170 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145.1 = zext i8 %169 to i32
  %call.i.i146.1 = tail call i32 @regmap_write(ptr noundef %171, i32 noundef 80, i32 noundef %conv1.i.i145.1) #8
  %172 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %cmp.i.i147.1 = icmp sgt i32 %172, 1
  br i1 %cmp.i.i147.1, label %do.end.i.i150.1, label %for.body.i148.1.ov965x_write.exit.i155.1_crit_edge

for.body.i148.1.ov965x_write.exit.i155.1_crit_edge: ; preds = %for.body.i148.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i155.1

do.end.i.i150.1:                                  ; preds = %for.body.i148.1
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145.1, i32 noundef 80, i32 noundef %call.i.i146.1) #11
  br label %ov965x_write.exit.i155.1

ov965x_write.exit.i155.1:                         ; preds = %do.end.i.i150.1, %for.body.i148.1.ov965x_write.exit.i155.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146.1)
  %tobool.not.i153.1 = icmp eq i32 %call.i.i146.1, 0
  br i1 %tobool.not.i153.1, label %for.body.i148.2, label %ov965x_write.exit.i155.1.sw.epilog_crit_edge

ov965x_write.exit.i155.1.sw.epilog_crit_edge:     ; preds = %ov965x_write.exit.i155.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i148.2:                                  ; preds = %ov965x_write.exit.i155.1
  %arrayidx4.i.2 = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 2
  %173 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx4.i.2, align 1
  %175 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145.2 = zext i8 %174 to i32
  %call.i.i146.2 = tail call i32 @regmap_write(ptr noundef %176, i32 noundef 81, i32 noundef %conv1.i.i145.2) #8
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp.i.i147.2 = icmp sgt i32 %177, 1
  br i1 %cmp.i.i147.2, label %do.end.i.i150.2, label %for.body.i148.2.ov965x_write.exit.i155.2_crit_edge

for.body.i148.2.ov965x_write.exit.i155.2_crit_edge: ; preds = %for.body.i148.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i155.2

do.end.i.i150.2:                                  ; preds = %for.body.i148.2
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145.2, i32 noundef 81, i32 noundef %call.i.i146.2) #11
  br label %ov965x_write.exit.i155.2

ov965x_write.exit.i155.2:                         ; preds = %do.end.i.i150.2, %for.body.i148.2.ov965x_write.exit.i155.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146.2)
  %tobool.not.i153.2 = icmp eq i32 %call.i.i146.2, 0
  br i1 %tobool.not.i153.2, label %for.body.i148.3, label %ov965x_write.exit.i155.2.sw.epilog_crit_edge

ov965x_write.exit.i155.2.sw.epilog_crit_edge:     ; preds = %ov965x_write.exit.i155.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i148.3:                                  ; preds = %ov965x_write.exit.i155.2
  %arrayidx4.i.3 = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 3
  %178 = ptrtoint ptr %arrayidx4.i.3 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx4.i.3, align 1
  %180 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145.3 = zext i8 %179 to i32
  %call.i.i146.3 = tail call i32 @regmap_write(ptr noundef %181, i32 noundef 82, i32 noundef %conv1.i.i145.3) #8
  %182 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp.i.i147.3 = icmp sgt i32 %182, 1
  br i1 %cmp.i.i147.3, label %do.end.i.i150.3, label %for.body.i148.3.ov965x_write.exit.i155.3_crit_edge

for.body.i148.3.ov965x_write.exit.i155.3_crit_edge: ; preds = %for.body.i148.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i155.3

do.end.i.i150.3:                                  ; preds = %for.body.i148.3
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145.3, i32 noundef 82, i32 noundef %call.i.i146.3) #11
  br label %ov965x_write.exit.i155.3

ov965x_write.exit.i155.3:                         ; preds = %do.end.i.i150.3, %for.body.i148.3.ov965x_write.exit.i155.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146.3)
  %tobool.not.i153.3 = icmp eq i32 %call.i.i146.3, 0
  br i1 %tobool.not.i153.3, label %for.body.i148.4, label %ov965x_write.exit.i155.3.sw.epilog_crit_edge

ov965x_write.exit.i155.3.sw.epilog_crit_edge:     ; preds = %ov965x_write.exit.i155.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i148.4:                                  ; preds = %ov965x_write.exit.i155.3
  %arrayidx4.i.4 = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 4
  %183 = ptrtoint ptr %arrayidx4.i.4 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx4.i.4, align 1
  %185 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145.4 = zext i8 %184 to i32
  %call.i.i146.4 = tail call i32 @regmap_write(ptr noundef %186, i32 noundef 83, i32 noundef %conv1.i.i145.4) #8
  %187 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp.i.i147.4 = icmp sgt i32 %187, 1
  br i1 %cmp.i.i147.4, label %do.end.i.i150.4, label %for.body.i148.4.ov965x_write.exit.i155.4_crit_edge

for.body.i148.4.ov965x_write.exit.i155.4_crit_edge: ; preds = %for.body.i148.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i155.4

do.end.i.i150.4:                                  ; preds = %for.body.i148.4
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145.4, i32 noundef 83, i32 noundef %call.i.i146.4) #11
  br label %ov965x_write.exit.i155.4

ov965x_write.exit.i155.4:                         ; preds = %do.end.i.i150.4, %for.body.i148.4.ov965x_write.exit.i155.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146.4)
  %tobool.not.i153.4 = icmp eq i32 %call.i.i146.4, 0
  br i1 %tobool.not.i153.4, label %for.body.i148.5, label %ov965x_write.exit.i155.4.sw.epilog_crit_edge

ov965x_write.exit.i155.4.sw.epilog_crit_edge:     ; preds = %ov965x_write.exit.i155.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i148.5:                                  ; preds = %ov965x_write.exit.i155.4
  %arrayidx4.i.5 = getelementptr [5 x [6 x i8]], ptr @ov965x_set_saturation.regs, i32 0, i32 %add.i140, i32 5
  %188 = ptrtoint ptr %arrayidx4.i.5 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx4.i.5, align 1
  %190 = ptrtoint ptr %regmap.i.i142 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap.i.i142, align 4
  %conv1.i.i145.5 = zext i8 %189 to i32
  %call.i.i146.5 = tail call i32 @regmap_write(ptr noundef %191, i32 noundef 84, i32 noundef %conv1.i.i145.5) #8
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp.i.i147.5 = icmp sgt i32 %192, 1
  br i1 %cmp.i.i147.5, label %do.end.i.i150.5, label %for.body.i148.5.sw.epilog_crit_edge

for.body.i148.5.sw.epilog_crit_edge:              ; preds = %for.body.i148.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i.i150.5:                                  ; preds = %for.body.i148.5
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i149.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i143, ptr noundef nonnull @.str.27, i32 noundef %conv1.i.i145.5, i32 noundef 84, i32 noundef %call.i.i146.5) #11
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end11
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %193 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i158) #8
  %195 = ptrtoint ptr %buf.i.i158 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %buf.i.i158, align 4, !annotation !183
  %regmap.i.i159 = getelementptr i8, ptr %1, i32 -68
  %196 = ptrtoint ptr %regmap.i.i159 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap.i.i159, align 4
  %call.i.i160 = call i32 @regmap_read(ptr noundef %197, i32 noundef 62, ptr noundef nonnull %buf.i.i158) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %tobool.not.i.i161 = icmp eq i32 %call.i.i160, 0
  br i1 %tobool.not.i.i161, label %if.then.i.i163, label %sw.bb31.do.body.i.i166_crit_edge

sw.bb31.do.body.i.i166_crit_edge:                 ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i166

if.then.i.i163:                                   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %buf.i.i158 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buf.i.i158, align 4
  %conv1.i.i162 = trunc i32 %199 to i8
  br label %do.body.i.i166

do.body.i.i166:                                   ; preds = %if.then.i.i163, %sw.bb31.do.body.i.i166_crit_edge
  %storemerge.i.i164 = phi i8 [ %conv1.i.i162, %if.then.i.i163 ], [ -1, %sw.bb31.do.body.i.i166_crit_edge ]
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %200)
  %cmp.i.i165 = icmp sgt i32 %200, 1
  br i1 %cmp.i.i165, label %do.end.i.i170, label %do.body.i.i166.ov965x_read.exit.i172_crit_edge

do.body.i.i166.ov965x_read.exit.i172_crit_edge:   ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i172

do.end.i.i170:                                    ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i167 = getelementptr i8, ptr %1, i32 -292
  %conv5.i.i168 = zext i8 %storemerge.i.i164 to i32
  %call7.i.i169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i167, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i168, i32 noundef 62, i32 noundef %call.i.i160) #11
  br label %ov965x_read.exit.i172

ov965x_read.exit.i172:                            ; preds = %do.end.i.i170, %do.body.i.i166.ov965x_read.exit.i172_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i158) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.i171 = icmp slt i32 %call.i.i160, 0
  br i1 %cmp.i171, label %ov965x_read.exit.i172.sw.epilog_crit_edge, label %if.end.i173

ov965x_read.exit.i172.sw.epilog_crit_edge:        ; preds = %ov965x_read.exit.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i173:                                      ; preds = %ov965x_read.exit.i172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i46.i) #8
  %201 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %buf.i46.i, align 4, !annotation !183
  %202 = ptrtoint ptr %regmap.i.i159 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap.i.i159, align 4
  %call.i48.i = call i32 @regmap_read(ptr noundef %203, i32 noundef 63, ptr noundef nonnull %buf.i46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i49.i, label %if.then.i51.i, label %if.end.i173.do.body.i54.i_crit_edge

if.end.i173.do.body.i54.i_crit_edge:              ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i54.i

if.then.i51.i:                                    ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %buf.i46.i, align 4
  %conv1.i50.i = trunc i32 %205 to i8
  br label %do.body.i54.i

do.body.i54.i:                                    ; preds = %if.then.i51.i, %if.end.i173.do.body.i54.i_crit_edge
  %storemerge.i52.i = phi i8 [ %conv1.i50.i, %if.then.i51.i ], [ -1, %if.end.i173.do.body.i54.i_crit_edge ]
  %206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %cmp.i53.i = icmp sgt i32 %206, 1
  br i1 %cmp.i53.i, label %do.end.i58.i, label %do.body.i54.i.ov965x_read.exit59.i_crit_edge

do.body.i54.i.ov965x_read.exit59.i_crit_edge:     ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit59.i

do.end.i58.i:                                     ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i55.i = getelementptr i8, ptr %1, i32 -292
  %conv5.i56.i = zext i8 %storemerge.i52.i to i32
  %call7.i57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i55.i, ptr noundef nonnull @.str.30, i32 noundef %conv5.i56.i, i32 noundef 63, i32 noundef %call.i48.i) #11
  br label %ov965x_read.exit59.i

ov965x_read.exit59.i:                             ; preds = %do.end.i58.i, %do.body.i54.i.ov965x_read.exit59.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp2.i174 = icmp slt i32 %call.i48.i, 0
  br i1 %cmp2.i174, label %ov965x_read.exit59.i.sw.epilog_crit_edge, label %if.end4.i

ov965x_read.exit59.i.sw.epilog_crit_edge:         ; preds = %ov965x_read.exit59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i:                                        ; preds = %ov965x_read.exit59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i175 = icmp eq i32 %194, 0
  br i1 %tobool.not.i175, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = and i8 %storemerge.i.i164, -3
  br label %if.then9.i

cond.end.i:                                       ; preds = %if.end4.i
  %or.i = or i8 %storemerge.i.i164, 2
  %dec.i176 = add i32 %194, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dec.i176)
  %cmp7.i = icmp ugt i32 %dec.i176, 15
  br i1 %cmp7.i, label %cond.end.i.if.then9.i_crit_edge, label %if.else.i

cond.end.i.if.then9.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %cond.end.i.if.then9.i_crit_edge, %cond.end.thread.i
  %dec80.i = phi i32 [ -1, %cond.end.thread.i ], [ %dec.i176, %cond.end.i.if.then9.i_crit_edge ]
  %cond79.i = phi i8 [ %207, %cond.end.thread.i ], [ %or.i, %cond.end.i.if.then9.i_crit_edge ]
  %208 = or i8 %cond79.i, 1
  %shr.i177 = lshr i32 %dec80.i, 1
  br label %if.end16.i178

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %209 = and i8 %or.i, -2
  br label %if.end16.i178

if.end16.i178:                                    ; preds = %if.else.i, %if.then9.i
  %com14.0.i = phi i8 [ %208, %if.then9.i ], [ %209, %if.else.i ]
  %value.addr.0.i = phi i32 [ %shr.i177, %if.then9.i ], [ %dec.i176, %if.else.i ]
  %210 = ptrtoint ptr %regmap.i.i159 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regmap.i.i159, align 4
  %conv1.i61.i = zext i8 %com14.0.i to i32
  %call.i62.i = call i32 @regmap_write(ptr noundef %211, i32 noundef 62, i32 noundef %conv1.i61.i) #8
  %212 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp.i63.i = icmp sgt i32 %212, 1
  br i1 %cmp.i63.i, label %do.end.i65.i, label %if.end16.i178.ov965x_write.exit.i180_crit_edge

if.end16.i178.ov965x_write.exit.i180_crit_edge:   ; preds = %if.end16.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_write.exit.i180

do.end.i65.i:                                     ; preds = %if.end16.i178
  call void @__sanitizer_cov_trace_pc() #10
  %name.i64.i = getelementptr i8, ptr %1, i32 -292
  %call6.i.i179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i64.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i61.i, i32 noundef 62, i32 noundef %call.i62.i) #11
  br label %ov965x_write.exit.i180

ov965x_write.exit.i180:                           ; preds = %do.end.i65.i, %if.end16.i178.ov965x_write.exit.i180_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %cmp18.i = icmp slt i32 %call.i62.i, 0
  br i1 %cmp18.i, label %ov965x_write.exit.i180.sw.epilog_crit_edge, label %if.end21.i

ov965x_write.exit.i180.sw.epilog_crit_edge:       ; preds = %ov965x_write.exit.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end21.i:                                       ; preds = %ov965x_write.exit.i180
  %213 = and i8 %storemerge.i52.i, -16
  %214 = trunc i32 %value.addr.0.i to i8
  %215 = and i8 %214, 15
  %conv30.i = or i8 %215, %213
  %216 = ptrtoint ptr %regmap.i.i159 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regmap.i.i159, align 4
  %conv1.i67.i = zext i8 %conv30.i to i32
  %call.i68.i = call i32 @regmap_write(ptr noundef %217, i32 noundef 63, i32 noundef %conv1.i67.i) #8
  %218 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp.i69.i = icmp sgt i32 %218, 1
  br i1 %cmp.i69.i, label %do.end.i72.i, label %if.end21.i.sw.epilog_crit_edge

if.end21.i.sw.epilog_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i72.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i70.i = getelementptr i8, ptr %1, i32 -292
  %call6.i71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i70.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i67.i, i32 noundef 63, i32 noundef %call.i68.i) #11
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end11
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %219 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %val35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i183) #8
  %221 = ptrtoint ptr %buf.i.i183 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %buf.i.i183, align 4, !annotation !183
  %regmap.i.i184 = getelementptr i8, ptr %1, i32 -68
  %222 = ptrtoint ptr %regmap.i.i184 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap.i.i184, align 4
  %call.i.i185 = call i32 @regmap_read(ptr noundef %223, i32 noundef 141, ptr noundef nonnull %buf.i.i183) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185)
  %tobool.not.i.i186 = icmp eq i32 %call.i.i185, 0
  br i1 %tobool.not.i.i186, label %if.then.i.i188, label %sw.bb34.do.body.i.i191_crit_edge

sw.bb34.do.body.i.i191_crit_edge:                 ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i191

if.then.i.i188:                                   ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %buf.i.i183 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %buf.i.i183, align 4
  %conv1.i.i187 = trunc i32 %225 to i8
  br label %do.body.i.i191

do.body.i.i191:                                   ; preds = %if.then.i.i188, %sw.bb34.do.body.i.i191_crit_edge
  %storemerge.i.i189 = phi i8 [ %conv1.i.i187, %if.then.i.i188 ], [ -1, %sw.bb34.do.body.i.i191_crit_edge ]
  %226 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %226)
  %cmp.i.i190 = icmp sgt i32 %226, 1
  br i1 %cmp.i.i190, label %do.end.i.i195, label %do.body.i.i191.ov965x_read.exit.i197_crit_edge

do.body.i.i191.ov965x_read.exit.i197_crit_edge:   ; preds = %do.body.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov965x_read.exit.i197

do.end.i.i195:                                    ; preds = %do.body.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i192 = getelementptr i8, ptr %1, i32 -292
  %conv5.i.i193 = zext i8 %storemerge.i.i189 to i32
  %call7.i.i194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i192, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i193, i32 noundef 141, i32 noundef %call.i.i185) #11
  br label %ov965x_read.exit.i197

ov965x_read.exit.i197:                            ; preds = %do.end.i.i195, %do.body.i.i191.ov965x_read.exit.i197_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i183) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185)
  %cmp.i196 = icmp slt i32 %call.i.i185, 0
  br i1 %cmp.i196, label %ov965x_read.exit.i197.sw.epilog_crit_edge, label %if.end.i201

ov965x_read.exit.i197.sw.epilog_crit_edge:        ; preds = %ov965x_read.exit.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i201:                                      ; preds = %ov965x_read.exit.i197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i198 = icmp eq i32 %220, 0
  %227 = and i8 %storemerge.i.i189, -17
  %masksel.i199 = select i1 %tobool.not.i198, i8 0, i8 16
  %cond.i200 = or i8 %227, %masksel.i199
  %228 = ptrtoint ptr %regmap.i.i184 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap.i.i184, align 4
  %conv1.i8.i = zext i8 %cond.i200 to i32
  %call.i9.i = call i32 @regmap_write(ptr noundef %229, i32 noundef 141, i32 noundef %conv1.i8.i) #8
  %230 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp.i10.i = icmp sgt i32 %230, 1
  br i1 %cmp.i10.i, label %do.end.i12.i, label %if.end.i201.sw.epilog_crit_edge

if.end.i201.sw.epilog_crit_edge:                  ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i12.i:                                     ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #10
  %name.i11.i = getelementptr i8, ptr %1, i32 -292
  %call6.i.i202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i11.i, ptr noundef nonnull @.str.27, i32 noundef %conv1.i8.i, i32 noundef 141, i32 noundef %call.i9.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i12.i, %if.end.i201.sw.epilog_crit_edge, %ov965x_read.exit.i197.sw.epilog_crit_edge, %do.end.i72.i, %if.end21.i.sw.epilog_crit_edge, %ov965x_write.exit.i180.sw.epilog_crit_edge, %ov965x_read.exit59.i.sw.epilog_crit_edge, %ov965x_read.exit.i172.sw.epilog_crit_edge, %do.end.i.i150.5, %for.body.i148.5.sw.epilog_crit_edge, %ov965x_write.exit.i155.4.sw.epilog_crit_edge, %ov965x_write.exit.i155.3.sw.epilog_crit_edge, %ov965x_write.exit.i155.2.sw.epilog_crit_edge, %ov965x_write.exit.i155.1.sw.epilog_crit_edge, %ov965x_write.exit.i155.sw.epilog_crit_edge, %sw.bb28.sw.epilog_crit_edge, %sw.bb25, %do.end.i.i138, %sw.bb23.sw.epilog_crit_edge, %cleanup.i, %ov965x_write.exit147.i.sw.epilog_crit_edge, %ov965x_read.exit139.i.sw.epilog_crit_edge, %ov965x_write.exit125.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %if.end16.i.sw.epilog_crit_edge, %ov965x_write.exit.i121.sw.epilog_crit_edge, %ov965x_read.exit.i115.sw.epilog_crit_edge, %if.end50.i, %if.end40.i.sw.epilog_crit_edge, %ov965x_write.exit.i94.sw.epilog_crit_edge, %ov965x_read.exit.i90.sw.epilog_crit_edge, %do.end.i.i72.2, %for.body.i.2.sw.epilog_crit_edge, %ov965x_write.exit.i.1.sw.epilog_crit_edge, %ov965x_write.exit.i.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %do.end.i49.i, %if.end12.i.sw.epilog_crit_edge, %ov965x_write.exit42.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %ov965x_read.exit.i.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end11.sw.epilog_crit_edge ], [ %call27, %sw.bb25 ], [ %call.i37.i, %ov965x_write.exit42.i.sw.epilog_crit_edge ], [ %call.i31.i, %if.end.i.sw.epilog_crit_edge ], [ %call.i45.i, %if.end12.i.sw.epilog_crit_edge ], [ %call.i45.i, %do.end.i49.i ], [ %call.i.i, %ov965x_read.exit.i.sw.epilog_crit_edge ], [ -22, %sw.bb14.sw.epilog_crit_edge ], [ 0, %if.end50.i ], [ %ret.1.i, %if.end40.i.sw.epilog_crit_edge ], [ %call.i.i78, %ov965x_read.exit.i90.sw.epilog_crit_edge ], [ %call.i82.i, %ov965x_write.exit.i94.sw.epilog_crit_edge ], [ %call.i.i102, %ov965x_read.exit.i115.sw.epilog_crit_edge ], [ %call.i114.i, %ov965x_write.exit.i121.sw.epilog_crit_edge ], [ %call.i142.i, %cleanup.i ], [ %ret.0.i, %if.end16.i.sw.epilog_crit_edge ], [ %call.i142.i, %ov965x_write.exit147.i.sw.epilog_crit_edge ], [ %call.i128.i, %ov965x_read.exit139.i.sw.epilog_crit_edge ], [ %call.i120.i, %ov965x_write.exit125.i.sw.epilog_crit_edge ], [ -22, %for.end.i.sw.epilog_crit_edge ], [ %call.i.i134, %sw.bb23.sw.epilog_crit_edge ], [ %call.i.i134, %do.end.i.i138 ], [ -22, %sw.bb28.sw.epilog_crit_edge ], [ %call.i.i160, %ov965x_read.exit.i172.sw.epilog_crit_edge ], [ %call.i48.i, %ov965x_read.exit59.i.sw.epilog_crit_edge ], [ %call.i62.i, %ov965x_write.exit.i180.sw.epilog_crit_edge ], [ %call.i68.i, %if.end21.i.sw.epilog_crit_edge ], [ %call.i68.i, %do.end.i72.i ], [ %call.i.i185, %ov965x_read.exit.i197.sw.epilog_crit_edge ], [ %call.i9.i, %if.end.i201.sw.epilog_crit_edge ], [ %call.i9.i, %do.end.i12.i ], [ %call.i.i69, %ov965x_write.exit.i.sw.epilog_crit_edge ], [ %call.i.i69.1, %ov965x_write.exit.i.1.sw.epilog_crit_edge ], [ %call.i.i69.2, %do.end.i.i72.2 ], [ %call.i.i69.2, %for.body.i.2.sw.epilog_crit_edge ], [ %call.i.i146, %ov965x_write.exit.i155.sw.epilog_crit_edge ], [ %call.i.i146.1, %ov965x_write.exit.i155.1.sw.epilog_crit_edge ], [ %call.i.i146.2, %ov965x_write.exit.i155.2.sw.epilog_crit_edge ], [ %call.i.i146.3, %ov965x_write.exit.i155.3.sw.epilog_crit_edge ], [ %call.i.i146.4, %ov965x_write.exit.i155.4.sw.epilog_crit_edge ], [ %call.i.i146.5, %do.end.i.i150.5 ], [ %call.i.i146.5, %for.body.i148.5.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %ret.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !61, !63, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !90, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov9650.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov9650.c", i32 37, i32 1}
!5 = !{ptr @__initcall__kmod_ov9650__294_1626_ov965x_i2c_driver_init6, !6, !"__initcall__kmod_ov9650__294_1626_ov965x_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov9650.c", i32 1626, i32 1}
!7 = !{ptr @__exitcall_ov965x_i2c_driver_exit, !6, !"__exitcall_ov965x_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ov9650.c", i32 1628, i32 1}
!10 = !{ptr @__UNIQUE_ID_description296, !11, !"__UNIQUE_ID_description296", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov9650.c", i32 1629, i32 1}
!12 = !{ptr @__UNIQUE_ID_file297, !13, !"__UNIQUE_ID_file297", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov9650.c", i32 1630, i32 1}
!14 = !{ptr @__UNIQUE_ID_license298, !13, !"__UNIQUE_ID_license298", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/ov9650.c", i32 35, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov9650.c", i32 1618, i32 11}
!20 = !{ptr @ov965x_i2c_driver, !21, !"ov965x_i2c_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov9650.c", i32 1616, i32 26}
!22 = !{ptr @ov965x_probe.ov965x_regmap_config, !23, !"ov965x_regmap_config", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov9650.c", i32 1500, i32 36}
!24 = !{ptr @ov965x_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov9650.c", i32 1510, i32 19}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov9650.c", i32 1512, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ov965x_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov965x_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov9650.c", i32 1518, i32 4}
!37 = !{ptr @ov965x_probe._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov965x_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov9650.c", i32 1536, i32 3}
!41 = !{ptr @ov965x_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ov965x_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ov965x_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov9650.c", i32 1542, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov9650.c", i32 1424, i32 31}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov9650.c", i32 1427, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ov965x_configure_gpios_pdata._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ov965x_configure_gpios_pdata._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov9650.c", i32 1441, i32 58}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov9650.c", i32 1444, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ov965x_configure_gpios._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @ov965x_configure_gpios._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/ov9650.c", i32 1448, i32 57}
!63 = !{ptr @ov965x_configure_gpios._entry.22, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/ov9650.c", i32 1451, i32 3}
!65 = !{ptr @ov965x_configure_gpios._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ov965x_subdev_ops, !67, !"ov965x_subdev_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov9650.c", i32 1399, i32 37}
!68 = !{ptr @ov965x_core_ops, !69, !"ov965x_core_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov9650.c", i32 1392, i32 42}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov9650.c", i32 536, i32 2}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ov965x_s_power._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ov965x_s_power._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov9650.c", i32 448, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ov965x_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ov965x_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ov965x_init_regs, !81, !"ov965x_init_regs", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov9650.c", i32 286, i32 28}
!82 = !{ptr @ov965x_video_ops, !83, !"ov965x_video_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov9650.c", i32 1381, i32 43}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov9650.c", i32 1330, i32 2}
!86 = !{ptr @ov965x_s_stream._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov965x_s_stream._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @frame_size_reg_addr, !89, !"frame_size_reg_addr", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov9650.c", i32 348, i32 17}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov9650.c", i32 436, i32 2}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ov965x_read._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ov965x_read._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @ov965x_set_default_gamma_curve.gamma_curve, !96, !"gamma_curve", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov9650.c", i32 467, i32 18}
!97 = !{ptr @ov965x_set_color_matrix.mtx, !98, !"mtx", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov9650.c", i32 490, i32 18}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov9650.c", i32 1159, i32 2}
!101 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ov965x_s_frame_interval._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ov965x_s_frame_interval._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov9650.c", i32 1147, i32 2}
!106 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__ov965x_set_frame_interval._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @__ov965x_set_frame_interval._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @ov965x_pad_ops, !110, !"ov965x_pad_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov9650.c", i32 1374, i32 41}
!111 = !{ptr @ov965x_formats, !112, !"ov965x_formats", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov9650.c", i32 395, i32 35}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!115 = !{ptr @ov965x_sd_internal_ops, !116, !"ov965x_sd_internal_ops", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov9650.c", i32 1388, i32 46}
!117 = !{ptr @ov965x_initialize_controls._key, !118, !"_key", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov9650.c", i32 995, i32 8}
!119 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ov965x_ctrl_ops, !121, !"ov965x_ctrl_ops", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov9650.c", i32 978, i32 35}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov9650.c", i32 909, i32 2}
!124 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ov965x_g_volatile_ctrl._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ov965x_g_volatile_ctrl._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ov9650.c", i32 923, i32 2}
!129 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ov965x_s_ctrl._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ov965x_s_ctrl._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @ov965x_set_brightness.regs, !133, !"regs", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov9650.c", i32 651, i32 18}
!134 = !{ptr @ov965x_set_saturation.regs, !135, !"regs", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov9650.c", i32 824, i32 18}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov9650.c", i32 984, i32 2}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov9650.c", i32 985, i32 2}
!140 = !{ptr @test_pattern_menu, !141, !"test_pattern_menu", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov9650.c", i32 983, i32 27}
!142 = !{ptr @ov965x_framesizes, !143, !"ov965x_framesizes", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov9650.c", i32 369, i32 38}
!144 = !{ptr @ov965x_sxga_regs, !145, !"ov965x_sxga_regs", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov9650.c", i32 353, i32 17}
!146 = !{ptr @ov965x_vga_regs, !147, !"ov965x_vga_regs", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov9650.c", i32 358, i32 17}
!148 = !{ptr @ov965x_qvga_regs, !149, !"ov965x_qvga_regs", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ov9650.c", i32 364, i32 17}
!150 = !{ptr @ov965x_intervals, !151, !"ov965x_intervals", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov9650.c", i32 407, i32 31}
!152 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ov9650.c", i32 1481, i32 4}
!154 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @ov965x_detect_sensor._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @ov965x_detect_sensor._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov9650.c", i32 1483, i32 4}
!159 = !{ptr @ov965x_detect_sensor._entry.45, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ov965x_detect_sensor._entry_ptr.47, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.48, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov9650.c", i32 582, i32 2}
!163 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ov965x_update_exposure_ctrl._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ov965x_update_exposure_ctrl._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/ov9650.c", i32 591, i32 3}
!168 = !{ptr @ov965x_update_exposure_ctrl._entry.50, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ov965x_update_exposure_ctrl._entry_ptr.52, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ov965x_of_match, !171, !"ov965x_of_match", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/ov9650.c", i32 1608, i32 34}
!172 = !{ptr @ov965x_id, !173, !"ov965x_id", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/ov9650.c", i32 1600, i32 35}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{i64 2148671979, i64 2148672259, i64 2148672593, i64 2148672927}
!187 = !{i32 0, i32 33}
