; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov2659.c_pt.bc'
source_filename = "../drivers/media/i2c/ov2659.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ov2659_framesize = type { i16, i16, i16, ptr }
%struct.ov2659_pixfmt = type { i32, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sensor_register = type { i16, i8 }
%struct.pll_ctrl_reg = type { i32, i8 }
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
%struct.ov2659 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, i32, ptr, %struct.mutex, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.ov2659_pll_ctrl, i32, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.ov2659_pll_ctrl = type { i8, i8, i8 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.101, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.101 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov2659__310_1594_ov2659_i2c_driver_init6 = internal global ptr @ov2659_i2c_driver_init, section ".initcall6.init", align 4
@ov2659_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov2659_remove, ptr @ov2659_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov2659_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2659_pm_ops, ptr null, ptr null }, ptr @ov2659_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov2659_i2c_driver_exit = internal global ptr @ov2659_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [45 x i8] c"ov2659.author=Benoit Parrot <bparrot@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [51 x i8] c"ov2659.description=OV2659 CMOS Image Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [37 x i8] c"ov2659.file=drivers/media/i2c/ov2659\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [22 x i8] c"ov2659.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov2659\00", [25 x i8] zeroinitializer }, align 32
@ov2659_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov2659\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov2659_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2659_power_off, ptr @ov2659_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov2659_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov2659\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_power_off.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov2659_power_off\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov2659.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@ov2659_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1439, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform data not specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2659_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov2659_probe._entry_ptr = internal global ptr @ov2659_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov2659_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ov2659:1471:(&ov2659->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@ov2659_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov2659_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov2659_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@ov2659_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 1486, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: control initialization error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ov2659_probe._entry_ptr.14 = internal global ptr @ov2659_probe._entry.12, section ".printk_index", align 4
@ov2659_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov2659_subdev_core_ops, ptr null, ptr null, ptr @ov2659_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov2659_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov2659_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov2659_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov2659_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ov2659->lock\00", [18 x i8] zeroinitializer }, align 32
@ov2659_framesizes = internal constant { [7 x %struct.ov2659_framesize], [44 x i8] } { [7 x %struct.ov2659_framesize] [%struct.ov2659_framesize { i16 320, i16 240, i16 248, ptr @ov2659_qvga }, %struct.ov2659_framesize { i16 640, i16 480, i16 498, ptr @ov2659_vga }, %struct.ov2659_framesize { i16 800, i16 600, i16 498, ptr @ov2659_svga }, %struct.ov2659_framesize { i16 1024, i16 768, i16 498, ptr @ov2659_xga }, %struct.ov2659_framesize { i16 1280, i16 720, i16 498, ptr @ov2659_720p }, %struct.ov2659_framesize { i16 1280, i16 1024, i16 1048, ptr @ov2659_sxga }, %struct.ov2659_framesize { i16 1600, i16 1200, i16 498, ptr @ov2659_uxga }], [44 x i8] zeroinitializer }, align 32
@ov2659_formats = internal constant { [4 x %struct.ov2659_pixfmt], [32 x i8] } { [4 x %struct.ov2659_pixfmt] [%struct.ov2659_pixfmt { i32 8200, ptr @ov2659_format_yuyv }, %struct.ov2659_pixfmt { i32 8198, ptr @ov2659_format_uyvy }, %struct.ov2659_pixfmt { i32 4103, ptr @ov2659_format_rgb565 }, %struct.ov2659_pixfmt { i32 12289, ptr @ov2659_format_bggr }], [32 x i8] zeroinitializer }, align 32
@ov2659_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 1531, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s sensor driver registered !!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov2659_probe._entry_ptr.19 = internal global ptr @ov2659_probe._entry.16, section ".printk_index", align 4
@ov2659_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"link-frequencies property not found or too many\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov2659_get_pdata\00", [47 x i8] zeroinitializer }, align 32
@ov2659_get_pdata._entry_ptr = internal global ptr @ov2659_get_pdata._entry, section ".printk_index", align 4
@ov2659_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov2659_read\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ov2659 read reg(0x%x val:0x%x) failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@ov2659_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2659_write\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ov2659 write reg(0x%x val:0x%x) failed !\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vertical Color Bars\00", [44 x i8] zeroinitializer }, align 32
@ov2659_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov2659_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2659_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov2659_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov2659_enum_mbus_code, ptr @ov2659_enum_frame_sizes, ptr null, ptr @ov2659_get_fmt, ptr @ov2659_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov2659_s_stream.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2659_s_stream\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: on: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@ov2659_set_streaming.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.29, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov2659_set_streaming\00", [43 x i8] zeroinitializer }, align 32
@ov2659_set_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.30, ptr @.str.2, i32 968, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov2659 soft standby failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ov2659_set_streaming._entry_ptr = internal global ptr @ov2659_set_streaming._entry, section ".printk_index", align 4
@ov2659_init_regs = internal constant { [158 x %struct.sensor_register], [136 x i8] } { [158 x %struct.sensor_register] [%struct.sensor_register { i16 12288, i8 3 }, %struct.sensor_register { i16 12289, i8 -1 }, %struct.sensor_register { i16 12290, i8 -32 }, %struct.sensor_register { i16 13875, i8 61 }, %struct.sensor_register { i16 13856, i8 2 }, %struct.sensor_register { i16 13873, i8 17 }, %struct.sensor_register { i16 13842, i8 4 }, %struct.sensor_register { i16 13872, i8 32 }, %struct.sensor_register { i16 18178, i8 2 }, %struct.sensor_register { i16 14092, i8 52 }, %struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 3 }, %struct.sensor_register { i16 14345, i8 32 }, %struct.sensor_register { i16 14346, i8 2 }, %struct.sensor_register { i16 14347, i8 88 }, %struct.sensor_register { i16 14348, i8 5 }, %struct.sensor_register { i16 14349, i8 20 }, %struct.sensor_register { i16 14350, i8 2 }, %struct.sensor_register { i16 14351, i8 104 }, %struct.sensor_register { i16 14353, i8 8 }, %struct.sensor_register { i16 14355, i8 2 }, %struct.sensor_register { i16 14356, i8 49 }, %struct.sensor_register { i16 14357, i8 49 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 18184, i8 1 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -127 }, %struct.sensor_register { i16 14369, i8 1 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 17152, i8 48 }, %struct.sensor_register { i16 20614, i8 2 }, %struct.sensor_register { i16 20480, i8 -5 }, %struct.sensor_register { i16 20481, i8 31 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register { i16 20517, i8 14 }, %struct.sensor_register { i16 20518, i8 24 }, %struct.sensor_register { i16 20519, i8 52 }, %struct.sensor_register { i16 20520, i8 76 }, %struct.sensor_register { i16 20521, i8 98 }, %struct.sensor_register { i16 20522, i8 116 }, %struct.sensor_register { i16 20523, i8 -123 }, %struct.sensor_register { i16 20524, i8 -110 }, %struct.sensor_register { i16 20525, i8 -98 }, %struct.sensor_register { i16 20526, i8 -78 }, %struct.sensor_register { i16 20527, i8 -64 }, %struct.sensor_register { i16 20528, i8 -52 }, %struct.sensor_register { i16 20529, i8 -32 }, %struct.sensor_register { i16 20530, i8 -18 }, %struct.sensor_register { i16 20531, i8 -10 }, %struct.sensor_register { i16 20532, i8 17 }, %struct.sensor_register { i16 20592, i8 28 }, %struct.sensor_register { i16 20593, i8 91 }, %struct.sensor_register { i16 20594, i8 5 }, %struct.sensor_register { i16 20595, i8 32 }, %struct.sensor_register { i16 20596, i8 -108 }, %struct.sensor_register { i16 20597, i8 -76 }, %struct.sensor_register { i16 20598, i8 -76 }, %struct.sensor_register { i16 20599, i8 -81 }, %struct.sensor_register { i16 20600, i8 5 }, %struct.sensor_register { i16 20601, i8 -104 }, %struct.sensor_register { i16 20602, i8 33 }, %struct.sensor_register { i16 20533, i8 106 }, %struct.sensor_register { i16 20534, i8 17 }, %struct.sensor_register { i16 20535, i8 -110 }, %struct.sensor_register { i16 20536, i8 33 }, %struct.sensor_register { i16 20537, i8 -31 }, %struct.sensor_register { i16 20538, i8 1 }, %struct.sensor_register { i16 20540, i8 5 }, %struct.sensor_register { i16 20541, i8 8 }, %struct.sensor_register { i16 20542, i8 8 }, %struct.sensor_register { i16 20543, i8 100 }, %struct.sensor_register { i16 20544, i8 88 }, %struct.sensor_register { i16 20545, i8 42 }, %struct.sensor_register { i16 20546, i8 -59 }, %struct.sensor_register { i16 20547, i8 46 }, %struct.sensor_register { i16 20548, i8 58 }, %struct.sensor_register { i16 20549, i8 60 }, %struct.sensor_register { i16 20550, i8 68 }, %struct.sensor_register { i16 20551, i8 -8 }, %struct.sensor_register { i16 20552, i8 8 }, %struct.sensor_register { i16 20553, i8 112 }, %struct.sensor_register { i16 20554, i8 -16 }, %struct.sensor_register { i16 20555, i8 -16 }, %struct.sensor_register { i16 20492, i8 3 }, %struct.sensor_register { i16 20493, i8 32 }, %struct.sensor_register { i16 20494, i8 2 }, %struct.sensor_register { i16 20495, i8 92 }, %struct.sensor_register { i16 20496, i8 72 }, %struct.sensor_register { i16 20497, i8 0 }, %struct.sensor_register { i16 20498, i8 102 }, %struct.sensor_register { i16 20499, i8 3 }, %struct.sensor_register { i16 20500, i8 48 }, %struct.sensor_register { i16 20501, i8 2 }, %struct.sensor_register { i16 20502, i8 124 }, %struct.sensor_register { i16 20503, i8 64 }, %struct.sensor_register { i16 20504, i8 0 }, %struct.sensor_register { i16 20505, i8 102 }, %struct.sensor_register { i16 20506, i8 3 }, %struct.sensor_register { i16 20507, i8 16 }, %struct.sensor_register { i16 20508, i8 2 }, %struct.sensor_register { i16 20509, i8 124 }, %struct.sensor_register { i16 20510, i8 58 }, %struct.sensor_register { i16 20511, i8 0 }, %struct.sensor_register { i16 20512, i8 102 }, %struct.sensor_register { i16 20590, i8 68 }, %struct.sensor_register { i16 20580, i8 8 }, %struct.sensor_register { i16 20581, i8 16 }, %struct.sensor_register { i16 20582, i8 18 }, %struct.sensor_register { i16 20583, i8 2 }, %struct.sensor_register { i16 20588, i8 8 }, %struct.sensor_register { i16 20589, i8 16 }, %struct.sensor_register { i16 20591, i8 -90 }, %struct.sensor_register { i16 20584, i8 8 }, %struct.sensor_register { i16 20585, i8 16 }, %struct.sensor_register { i16 20586, i8 4 }, %struct.sensor_register { i16 20587, i8 18 }, %struct.sensor_register { i16 20606, i8 64 }, %struct.sensor_register { i16 20607, i8 32 }, %struct.sensor_register { i16 20603, i8 2 }, %struct.sensor_register { i16 20602, i8 1 }, %struct.sensor_register { i16 20612, i8 12 }, %struct.sensor_register { i16 20613, i8 62 }, %struct.sensor_register { i16 20485, i8 -128 }, %struct.sensor_register { i16 14863, i8 48 }, %struct.sensor_register { i16 14864, i8 40 }, %struct.sensor_register { i16 14875, i8 50 }, %struct.sensor_register { i16 14878, i8 38 }, %struct.sensor_register { i16 14865, i8 96 }, %struct.sensor_register { i16 14879, i8 20 }, %struct.sensor_register { i16 20576, i8 105 }, %struct.sensor_register { i16 20577, i8 125 }, %struct.sensor_register { i16 20578, i8 125 }, %struct.sensor_register { i16 20579, i8 105 }, %struct.sensor_register zeroinitializer], [136 x i8] zeroinitializer }, align 32
@ov2659_set_pixel_clock.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2659_set_pixel_clock\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ov2659_set_frame_size.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.33, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov2659_set_frame_size\00", [42 x i8] zeroinitializer }, align 32
@ov2659_set_format.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.33, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ov2659_set_format\00", [46 x i8] zeroinitializer }, align 32
@ov2659_enum_mbus_code.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.3, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov2659_enum_mbus_code\00", [42 x i8] zeroinitializer }, align 32
@ov2659_enum_frame_sizes.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.3, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov2659_enum_frame_sizes\00", [40 x i8] zeroinitializer }, align 32
@ov2659_get_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov2659_get_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2659_get_fmt\0A\00", [16 x i8] zeroinitializer }, align 32
@ov2659_get_fmt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ov2659_get_fmt: %x %dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov2659_set_fmt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov2659_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2659_set_fmt\0A\00", [16 x i8] zeroinitializer }, align 32
@ov2659_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1142, ptr @.str.45, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set link_frequency rate (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov2659_set_fmt._entry_ptr = internal global ptr @ov2659_set_fmt._entry, section ".printk_index", align 4
@ov2659_open.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.3, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov2659_open\00", [20 x i8] zeroinitializer }, align 32
@ov2659_qvga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 1 }, %struct.sensor_register { i16 14345, i8 64 }, %struct.sensor_register { i16 14346, i8 0 }, %struct.sensor_register { i16 14347, i8 -16 }, %struct.sensor_register { i16 14348, i8 5 }, %struct.sensor_register { i16 14349, i8 20 }, %struct.sensor_register { i16 14350, i8 2 }, %struct.sensor_register { i16 14351, i8 104 }, %struct.sensor_register { i16 14353, i8 8 }, %struct.sensor_register { i16 14355, i8 2 }, %struct.sensor_register { i16 14356, i8 49 }, %struct.sensor_register { i16 14357, i8 49 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -127 }, %struct.sensor_register { i16 14369, i8 1 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -96 }, %struct.sensor_register { i16 20482, i8 16 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_vga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 2 }, %struct.sensor_register { i16 14345, i8 -128 }, %struct.sensor_register { i16 14346, i8 1 }, %struct.sensor_register { i16 14347, i8 -32 }, %struct.sensor_register { i16 14348, i8 5 }, %struct.sensor_register { i16 14349, i8 20 }, %struct.sensor_register { i16 14350, i8 2 }, %struct.sensor_register { i16 14351, i8 104 }, %struct.sensor_register { i16 14353, i8 8 }, %struct.sensor_register { i16 14355, i8 2 }, %struct.sensor_register { i16 14356, i8 49 }, %struct.sensor_register { i16 14357, i8 49 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -127 }, %struct.sensor_register { i16 14369, i8 1 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -96 }, %struct.sensor_register { i16 20482, i8 16 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_svga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 3 }, %struct.sensor_register { i16 14345, i8 32 }, %struct.sensor_register { i16 14346, i8 2 }, %struct.sensor_register { i16 14347, i8 88 }, %struct.sensor_register { i16 14348, i8 5 }, %struct.sensor_register { i16 14349, i8 20 }, %struct.sensor_register { i16 14350, i8 2 }, %struct.sensor_register { i16 14351, i8 104 }, %struct.sensor_register { i16 14353, i8 8 }, %struct.sensor_register { i16 14355, i8 2 }, %struct.sensor_register { i16 14356, i8 49 }, %struct.sensor_register { i16 14357, i8 49 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -127 }, %struct.sensor_register { i16 14369, i8 1 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_xga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 4 }, %struct.sensor_register { i16 14345, i8 0 }, %struct.sensor_register { i16 14346, i8 3 }, %struct.sensor_register { i16 14347, i8 0 }, %struct.sensor_register { i16 14348, i8 7 }, %struct.sensor_register { i16 14349, i8 -100 }, %struct.sensor_register { i16 14350, i8 4 }, %struct.sensor_register { i16 14351, i8 -48 }, %struct.sensor_register { i16 14353, i8 16 }, %struct.sensor_register { i16 14355, i8 6 }, %struct.sensor_register { i16 14356, i8 17 }, %struct.sensor_register { i16 14357, i8 17 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -128 }, %struct.sensor_register { i16 14369, i8 0 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_720p = internal global { [31 x %struct.sensor_register], [36 x i8] } { [31 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 -96 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 -16 }, %struct.sensor_register { i16 14340, i8 5 }, %struct.sensor_register { i16 14341, i8 -65 }, %struct.sensor_register { i16 14342, i8 3 }, %struct.sensor_register { i16 14343, i8 -53 }, %struct.sensor_register { i16 14344, i8 5 }, %struct.sensor_register { i16 14345, i8 0 }, %struct.sensor_register { i16 14346, i8 2 }, %struct.sensor_register { i16 14347, i8 -48 }, %struct.sensor_register { i16 14348, i8 6 }, %struct.sensor_register { i16 14349, i8 76 }, %struct.sensor_register { i16 14350, i8 2 }, %struct.sensor_register { i16 14351, i8 -24 }, %struct.sensor_register { i16 14353, i8 16 }, %struct.sensor_register { i16 14355, i8 6 }, %struct.sensor_register { i16 14356, i8 17 }, %struct.sensor_register { i16 14357, i8 17 }, %struct.sensor_register { i16 14368, i8 -128 }, %struct.sensor_register { i16 14369, i8 0 }, %struct.sensor_register { i16 14090, i8 18 }, %struct.sensor_register { i16 14851, i8 -24 }, %struct.sensor_register { i16 14857, i8 111 }, %struct.sensor_register { i16 14859, i8 93 }, %struct.sensor_register { i16 14869, i8 -102 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register zeroinitializer], [36 x i8] zeroinitializer }, align 32
@ov2659_sxga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -73 }, %struct.sensor_register { i16 14344, i8 5 }, %struct.sensor_register { i16 14345, i8 0 }, %struct.sensor_register { i16 14346, i8 4 }, %struct.sensor_register { i16 14347, i8 0 }, %struct.sensor_register { i16 14348, i8 7 }, %struct.sensor_register { i16 14349, i8 -100 }, %struct.sensor_register { i16 14350, i8 4 }, %struct.sensor_register { i16 14351, i8 -48 }, %struct.sensor_register { i16 14353, i8 16 }, %struct.sensor_register { i16 14355, i8 6 }, %struct.sensor_register { i16 14356, i8 17 }, %struct.sensor_register { i16 14357, i8 17 }, %struct.sensor_register { i16 14850, i8 2 }, %struct.sensor_register { i16 14851, i8 104 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 92 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 77 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 2 }, %struct.sensor_register { i16 14869, i8 40 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 118 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 24 }, %struct.sensor_register { i16 14083, i8 36 }, %struct.sensor_register { i16 14084, i8 36 }, %struct.sensor_register { i16 14085, i8 12 }, %struct.sensor_register { i16 14368, i8 -128 }, %struct.sensor_register { i16 14369, i8 0 }, %struct.sensor_register { i16 14090, i8 82 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_uxga = internal global { [44 x %struct.sensor_register], [48 x i8] } { [44 x %struct.sensor_register] [%struct.sensor_register { i16 14336, i8 0 }, %struct.sensor_register { i16 14337, i8 0 }, %struct.sensor_register { i16 14338, i8 0 }, %struct.sensor_register { i16 14339, i8 0 }, %struct.sensor_register { i16 14340, i8 6 }, %struct.sensor_register { i16 14341, i8 95 }, %struct.sensor_register { i16 14342, i8 4 }, %struct.sensor_register { i16 14343, i8 -69 }, %struct.sensor_register { i16 14344, i8 6 }, %struct.sensor_register { i16 14345, i8 64 }, %struct.sensor_register { i16 14346, i8 4 }, %struct.sensor_register { i16 14347, i8 -80 }, %struct.sensor_register { i16 14348, i8 7 }, %struct.sensor_register { i16 14349, i8 -97 }, %struct.sensor_register { i16 14350, i8 4 }, %struct.sensor_register { i16 14351, i8 -48 }, %struct.sensor_register { i16 14353, i8 16 }, %struct.sensor_register { i16 14355, i8 6 }, %struct.sensor_register { i16 14356, i8 17 }, %struct.sensor_register { i16 14357, i8 17 }, %struct.sensor_register { i16 14850, i8 4 }, %struct.sensor_register { i16 14851, i8 -48 }, %struct.sensor_register { i16 14856, i8 0 }, %struct.sensor_register { i16 14857, i8 -72 }, %struct.sensor_register { i16 14858, i8 0 }, %struct.sensor_register { i16 14859, i8 -102 }, %struct.sensor_register { i16 14861, i8 8 }, %struct.sensor_register { i16 14862, i8 6 }, %struct.sensor_register { i16 14868, i8 4 }, %struct.sensor_register { i16 14869, i8 80 }, %struct.sensor_register { i16 13859, i8 0 }, %struct.sensor_register { i16 13876, i8 68 }, %struct.sensor_register { i16 14081, i8 68 }, %struct.sensor_register { i16 14082, i8 48 }, %struct.sensor_register { i16 14083, i8 72 }, %struct.sensor_register { i16 14084, i8 72 }, %struct.sensor_register { i16 14085, i8 24 }, %struct.sensor_register { i16 14368, i8 -128 }, %struct.sensor_register { i16 14369, i8 0 }, %struct.sensor_register { i16 14090, i8 18 }, %struct.sensor_register { i16 17928, i8 0 }, %struct.sensor_register { i16 17929, i8 -128 }, %struct.sensor_register { i16 20482, i8 0 }, %struct.sensor_register zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_format_yuyv = internal global { [2 x %struct.sensor_register], [24 x i8] } { [2 x %struct.sensor_register] [%struct.sensor_register { i16 17152, i8 48 }, %struct.sensor_register zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ov2659_format_uyvy = internal global { [2 x %struct.sensor_register], [24 x i8] } { [2 x %struct.sensor_register] [%struct.sensor_register { i16 17152, i8 50 }, %struct.sensor_register zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ov2659_format_rgb565 = internal global { [2 x %struct.sensor_register], [24 x i8] } { [2 x %struct.sensor_register] [%struct.sensor_register { i16 17152, i8 96 }, %struct.sensor_register zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ov2659_format_bggr = internal global { [2 x %struct.sensor_register], [24 x i8] } { [2 x %struct.sensor_register] [%struct.sensor_register { i16 17152, i8 0 }, %struct.sensor_register zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ov2659_power_on.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.3, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2659_power_on\00", [16 x i8] zeroinitializer }, align 32
@ov2659_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.47, ptr @.str.2, i32 1289, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@ov2659_power_on._entry_ptr = internal global ptr @ov2659_power_on._entry, section ".printk_index", align 4
@ov2659_detect.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov2659_detect\00", [18 x i8] zeroinitializer }, align 32
@ov2659_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.49, ptr @.str.2, i32 1364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sensor soft reset failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ov2659_detect._entry_ptr = internal global ptr @ov2659_detect._entry, section ".printk_index", align 4
@ov2659_detect._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.2, i32 1380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sensor detection failed (%04X)\0A\00", [32 x i8] zeroinitializer }, align 32
@ov2659_detect._entry_ptr.53 = internal global ptr @ov2659_detect._entry.51, section ".printk_index", align 4
@ov2659_detect._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.2, i32 1383, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Found OV%04X sensor\0A\00", [43 x i8] zeroinitializer }, align 32
@ov2659_detect._entry_ptr.56 = internal global ptr @ov2659_detect._entry.54, section ".printk_index", align 4
@ctrl1 = internal constant { [16 x %struct.pll_ctrl_reg], [32 x i8] } { [16 x %struct.pll_ctrl_reg] [%struct.pll_ctrl_reg { i32 2, i8 16 }, %struct.pll_ctrl_reg { i32 4, i8 32 }, %struct.pll_ctrl_reg { i32 6, i8 48 }, %struct.pll_ctrl_reg { i32 8, i8 64 }, %struct.pll_ctrl_reg { i32 10, i8 80 }, %struct.pll_ctrl_reg { i32 12, i8 96 }, %struct.pll_ctrl_reg { i32 14, i8 112 }, %struct.pll_ctrl_reg { i32 16, i8 -128 }, %struct.pll_ctrl_reg { i32 18, i8 -112 }, %struct.pll_ctrl_reg { i32 20, i8 -96 }, %struct.pll_ctrl_reg { i32 22, i8 -80 }, %struct.pll_ctrl_reg { i32 24, i8 -64 }, %struct.pll_ctrl_reg { i32 26, i8 -48 }, %struct.pll_ctrl_reg { i32 28, i8 -32 }, %struct.pll_ctrl_reg { i32 30, i8 -16 }, %struct.pll_ctrl_reg zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ctrl3 = internal constant { [14 x %struct.pll_ctrl_reg], [48 x i8] } { [14 x %struct.pll_ctrl_reg] [%struct.pll_ctrl_reg { i32 1, i8 0 }, %struct.pll_ctrl_reg { i32 2, i8 2 }, %struct.pll_ctrl_reg { i32 3, i8 3 }, %struct.pll_ctrl_reg { i32 4, i8 6 }, %struct.pll_ctrl_reg { i32 6, i8 13 }, %struct.pll_ctrl_reg { i32 8, i8 14 }, %struct.pll_ctrl_reg { i32 12, i8 15 }, %struct.pll_ctrl_reg { i32 16, i8 18 }, %struct.pll_ctrl_reg { i32 24, i8 19 }, %struct.pll_ctrl_reg { i32 32, i8 22 }, %struct.pll_ctrl_reg { i32 48, i8 27 }, %struct.pll_ctrl_reg { i32 64, i8 30 }, %struct.pll_ctrl_reg { i32 96, i8 31 }, %struct.pll_ctrl_reg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2659_pll_calc_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2659_pll_calc_params\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Actual reg config: ctrl1_reg: %02x ctrl2_reg: %02x ctrl3_reg: %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"ov2659_i2c_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1583, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1585, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"ov2659_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1576, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"ov2659_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1565, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"ov2659_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1569, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1268, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1439, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1450, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1460, i32 60 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1466, i32 62 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1471, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"ov2659_ctrl_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1253, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [25 x i8] c"ov2659_test_pattern_menu\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1257, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1485, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"ov2659_subdev_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1342, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"ov2659_subdev_internal_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1348, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1510, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"ov2659_framesizes\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 738, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"ov2659_formats\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 801, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1531, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1417, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 874, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 842, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1258, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1259, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [23 x i8] c"ov2659_subdev_core_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1324, i32 42 }
@___asan_gen_.182 = private unnamed_addr constant [24 x i8] c"ov2659_subdev_video_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1330, i32 43 }
@___asan_gen_.185 = private unnamed_addr constant [22 x i8] c"ov2659_subdev_pad_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1334, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1173, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 964, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 968, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"ov2659_init_regs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 218, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 943, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1153, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1162, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 988, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1005, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1031, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1051, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 998, i32 6 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1097, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1140, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1316, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [12 x i8] c"ov2659_qvga\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 655, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant [11 x i8] c"ov2659_vga\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 607, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"ov2659_svga\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 559, i32 31 }
@___asan_gen_.263 = private unnamed_addr constant [11 x i8] c"ov2659_xga\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 511, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant [12 x i8] c"ov2659_720p\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 380, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant [12 x i8] c"ov2659_sxga\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 463, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"ov2659_uxga\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 415, i32 31 }
@___asan_gen_.275 = private unnamed_addr constant [19 x i8] c"ov2659_format_yuyv\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 778, i32 31 }
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"ov2659_format_uyvy\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 784, i32 31 }
@___asan_gen_.281 = private unnamed_addr constant [21 x i8] c"ov2659_format_rgb565\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 796, i32 31 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"ov2659_format_bggr\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 790, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1284, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1288, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1360, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1364, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1379, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1383, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"ctrl1\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 719, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"ctrl3\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 702, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [30 x i8] c"../drivers/media/i2c/ov2659.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 928, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ov2659_i2c_driver_exit, ptr @__initcall__kmod_ov2659__310_1594_ov2659_i2c_driver_init6, ptr @ov2659_detect._entry, ptr @ov2659_detect._entry.51, ptr @ov2659_detect._entry.54, ptr @ov2659_detect._entry_ptr, ptr @ov2659_detect._entry_ptr.53, ptr @ov2659_detect._entry_ptr.56, ptr @ov2659_get_pdata._entry, ptr @ov2659_get_pdata._entry_ptr, ptr @ov2659_i2c_driver_exit, ptr @ov2659_power_on._entry, ptr @ov2659_power_on._entry_ptr, ptr @ov2659_probe._entry, ptr @ov2659_probe._entry.12, ptr @ov2659_probe._entry.16, ptr @ov2659_probe._entry_ptr, ptr @ov2659_probe._entry_ptr.14, ptr @ov2659_probe._entry_ptr.19, ptr @ov2659_set_fmt._entry, ptr @ov2659_set_fmt._entry_ptr, ptr @ov2659_set_streaming._entry, ptr @ov2659_set_streaming._entry_ptr, ptr @ov2659_i2c_driver, ptr @.str, ptr @ov2659_of_match, ptr @ov2659_pm_ops, ptr @ov2659_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ov2659_probe._key, ptr @.str.11, ptr @ov2659_ctrl_ops, ptr @ov2659_test_pattern_menu, ptr @.str.13, ptr @ov2659_subdev_ops, ptr @ov2659_subdev_internal_ops, ptr @ov2659_probe.__key, ptr @.str.15, ptr @ov2659_framesizes, ptr @ov2659_formats, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ov2659_subdev_core_ops, ptr @ov2659_subdev_video_ops, ptr @ov2659_subdev_pad_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ov2659_init_regs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ov2659_qvga, ptr @ov2659_vga, ptr @ov2659_svga, ptr @ov2659_xga, ptr @ov2659_720p, ptr @ov2659_sxga, ptr @ov2659_uxga, ptr @ov2659_format_yuyv, ptr @ov2659_format_uyvy, ptr @ov2659_format_rgb565, ptr @ov2659_format_bggr, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @ctrl1, ptr @ctrl3, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_framesizes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_set_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_init_regs to i32), i32 632, i32 768, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_qvga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_vga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_svga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_xga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_720p to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_sxga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_uxga to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_format_yuyv to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_format_uyvy to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_format_rgb565 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_format_bggr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_detect._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2659_detect._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl3 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov2659_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov2659_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov2659_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrls = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_power_off.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_remove, %if.then.i)) #7
          to label %ov2659_power_off.exit [label %if.then.i], !srcloc !199

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_power_off.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %ov2659_power_off.exit

ov2659_power_off.exit:                            ; preds = %if.then.i, %if.then
  %pwdn_gpio.i = getelementptr inbounds %struct.ov2659, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdn_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #7
  %clk.i = getelementptr inbounds %struct.ov2659, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %ov2659_power_off.exit, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_probe(ptr noundef %client) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  br label %ov2659_get_pdata.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %2, ptr noundef null) #7
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %ov2659_get_pdata.exit.thread, label %cond.end.i

ov2659_get_pdata.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call8.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef %fwnode.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %cond.end.i.done.i_crit_edge

cond.end.i.done.i_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end11.i:                                       ; preds = %cond.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 8, i32 noundef 3520) #7
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.end11.i.done.i_crit_edge, label %if.end16.i

if.end11.i.done.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end16.i:                                       ; preds = %if.end11.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %5 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not.i = icmp eq i32 %6, 0
  br i1 %tobool17.not.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %done.i

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %7 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_frequencies.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %call.i.i, align 8
  br label %done.i

done.i:                                           ; preds = %if.end20.i, %do.end.i, %if.end11.i.done.i_crit_edge, %cond.end.i.done.i_crit_edge
  %pdata.0.i = phi ptr [ %call.i.i, %if.end20.i ], [ null, %do.end.i ], [ null, %if.end11.i.done.i_crit_edge ], [ null, %cond.end.i.done.i_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %ov2659_get_pdata.exit

ov2659_get_pdata.exit:                            ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %pdata.0.i, %done.i ], [ %4, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %ov2659_get_pdata.exit.do.end_crit_edge, label %if.end

ov2659_get_pdata.exit.do.end_crit_edge:           ; preds = %ov2659_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %ov2659_get_pdata.exit.do.end_crit_edge, %ov2659_get_pdata.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %ov2659_get_pdata.exit
  %call.i178 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 596, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i178, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pdata6 = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 4
  %12 = ptrtoint ptr %pdata6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %pdata6, align 4
  %client7 = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 6
  %13 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %client7, align 4
  %call9 = call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #7
  %clk = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 9
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call17 = call i32 @clk_get_rate(ptr noundef %call9) #7
  %xvclk_frequency = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 3
  %16 = ptrtoint ptr %xvclk_frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call17, ptr %xvclk_frequency, align 4
  %17 = add i32 %call17, -27000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21000001, i32 %17)
  %18 = icmp ult i32 %17, -21000001
  br i1 %18, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call24 = call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 3) #7
  %pwdn_gpio = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 14
  %19 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %pwdn_gpio, align 4
  %cmp.i179 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %call32 = call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef 7) #7
  %resetb_gpio = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 15
  %21 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %resetb_gpio, align 4
  %cmp.i180 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %ctrls = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 7
  %call39 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 2, ptr noundef nonnull @ov2659_probe._key, ptr noundef nonnull @.str.11) #7
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %retval.0.i, align 8
  %div = sdiv i64 %24, 2
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov2659_ctrl_ops, i32 noundef 10422530, i64 noundef %div, i64 noundef %24, i64 noundef 1, i64 noundef %24) #7
  %link_frequency44 = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 8
  %25 = ptrtoint ptr %link_frequency44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call43, ptr %link_frequency44, align 4
  %call46 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @ov2659_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov2659_test_pattern_menu) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i178, i32 0, i32 8
  %26 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 7, i32 9
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool50.not = icmp eq i32 %28, 0
  br i1 %tobool50.not, label %if.end60, label %do.end54

do.end54:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %28) #10
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end38
  %31 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %client, align 8
  %33 = or i16 %32, -28672
  store i16 %33, ptr %client, align 8
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i178, ptr noundef %client, ptr noundef nonnull @ov2659_subdev_ops) #7
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i178, i32 0, i32 7
  %34 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ov2659_subdev_internal_ops, ptr %internal_ops, align 4
  %flags63 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i178, i32 0, i32 4
  %35 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags63, align 4
  %or64 = or i32 %36, 12
  store i32 %or64, ptr %flags63, align 4
  %pad = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 1
  %flags65 = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %flags65 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %flags65, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i178, i32 0, i32 3
  %38 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 131073, ptr %function, align 4
  %call68 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i178, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %do.body74

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %cleanup

do.body74:                                        ; preds = %if.end60
  %lock = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ov2659_probe.__key) #7
  %format = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 2
  %39 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 800, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 600, ptr %height.i, align 4
  %colorspace.i = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %colorspace.i, align 4
  %code.i = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8200, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %field.i, align 4
  %frame_size = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 10
  %44 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 2), ptr %frame_size, align 4
  %format_ctrl_regs = getelementptr inbounds %struct.ov2659, ptr %call.i178, i32 0, i32 11
  %45 = ptrtoint ptr %format_ctrl_regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ov2659_format_yuyv, ptr %format_ctrl_regs, align 4
  %call78 = call i32 @ov2659_power_on(ptr noundef %dev.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.body74.error102_crit_edge, label %if.end82

do.body74.error102_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %error102

if.end82:                                         ; preds = %do.body74
  %call83 = call fastcc i32 @ov2659_detect(ptr noundef nonnull %call.i178)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end82.error102_crit_edge, label %if.end87

if.end82.error102_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %error102

if.end87:                                         ; preds = %if.end82
  call fastcc void @ov2659_pll_calc_params(ptr noundef nonnull %call.i178)
  %call89 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i178) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.end95, label %if.end87.error102_crit_edge

if.end87.error102_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %error102

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i178, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef %name) #10
  %call.i181 = call i32 @__pm_runtime_set_status(ptr noundef %dev.i, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev.i) #7
  %call.i182 = call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 0) #7
  br label %cleanup

error102:                                         ; preds = %if.end87.error102_crit_edge, %if.end82.error102_crit_edge, %do.body74.error102_crit_edge
  %ret.0 = phi i32 [ %call78, %do.body74.error102_crit_edge ], [ %call83, %if.end82.error102_crit_edge ], [ %call89, %if.end87.error102_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  %driver_data.i.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_power_off.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_probe, %if.then.i183)) #7
          to label %ov2659_power_off.exit [label %if.then.i183], !srcloc !199

if.then.i183:                                     ; preds = %error102
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_power_off.__UNIQUE_ID_ddebug306, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %ov2659_power_off.exit

ov2659_power_off.exit:                            ; preds = %if.then.i183, %error102
  %pwdn_gpio.i = getelementptr inbounds %struct.ov2659, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pwdn_gpio.i, align 4
  call void @gpiod_set_value(ptr noundef %49, i32 noundef 1) #7
  %clk.i = getelementptr inbounds %struct.ov2659, ptr %47, i32 0, i32 9
  %50 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %51) #7
  call void @clk_unprepare(ptr noundef %51) #7
  call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %ov2659_power_off.exit, %do.end95, %if.then71, %do.end54, %if.then35, %if.then27, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %15, %if.then12 ], [ %20, %if.then27 ], [ %22, %if.then35 ], [ %30, %do.end54 ], [ %call68, %if.then71 ], [ %ret.0, %ov2659_power_off.exit ], [ 0, %do.end95 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_power_off(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_power_off.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_power_off, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_power_off.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pwdn_gpio = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwdn_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  %clk = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_power_on(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_power_on.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_power_on, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_power_on.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %clk = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.do.end12_crit_edge

do.end.do.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then3.i, %do.end.do.end12_crit_edge
  %retval.0.i30.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end.do.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  %pwdn_gpio = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #7
  %resetb_gpio = getelementptr inbounds %struct.ov2659, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resetb_gpio, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  %8 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resetb_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %retval.0.i30.ph, %do.end12 ], [ 0, %if.then16 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2659_detect(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %msg.i61 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i62 = alloca [2 x i8], align 1
  %msg.i51 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_detect.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_detect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_detect.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 262143, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %5, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end10, label %do.body.i

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_detect, %if.then13.i)) #7
          to label %do.end8 [label %if.then13.i], !srcloc !199

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 259, i32 noundef 1) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i51) #7
  %18 = getelementptr inbounds i8, ptr %msg.i51, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #7
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 48, ptr %buf.i52, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %20, align 1
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr.i, align 2
  %25 = ptrtoint ptr %msg.i51 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %msg.i51, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 1
  %28 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 3
  %29 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i52, ptr %buf10.i, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %18, align 4
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i51, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %24, ptr %arrayidx13.i, align 4
  %32 = or i16 %27, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i51, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i51, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i52, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i51, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len24.i, align 4
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %call.i56 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i51, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i56)
  %cmp.i57 = icmp sgt i32 %call.i56, -1
  br i1 %cmp.i57, label %if.then13, label %do.body.i58

do.body.i58:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_detect, %if.then31.i)) #7
          to label %if.end15.thread [label %if.then31.i], !srcloc !199

if.then31.i:                                      ; preds = %do.body.i58
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i59 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_read.__UNIQUE_ID_ddebug294, ptr noundef %dev.i59, ptr noundef nonnull @.str.23, i32 noundef 12298, i32 noundef 0) #7
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then31.i, %do.body.i58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i51) #7
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %38 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.i52, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i51) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i61) #7
  %40 = getelementptr inbounds i8, ptr %msg.i61, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62) #7
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i62, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 48, ptr %buf.i62, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 11, ptr %42, align 1
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i, align 2
  %47 = ptrtoint ptr %msg.i61 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %msg.i61, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 8
  %flags8.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 1
  %50 = ptrtoint ptr %flags8.i64 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %flags8.i64, align 2
  %buf10.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 3
  %51 = ptrtoint ptr %buf10.i65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i62, ptr %buf10.i65, align 4
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 2, ptr %40, align 4
  %arrayidx13.i67 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i61, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx13.i67 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %46, ptr %arrayidx13.i67, align 4
  %54 = or i16 %49, 1
  %flags19.i68 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i61, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %flags19.i68 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %flags19.i68, align 2
  %buf22.i69 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i61, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %buf22.i69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i62, ptr %buf22.i69, align 4
  %len24.i70 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i61, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %len24.i70 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %len24.i70, align 4
  %58 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i, align 8
  %call.i72 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i61, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72)
  %cmp.i73 = icmp sgt i32 %call.i72, -1
  br i1 %cmp.i73, label %if.then17, label %do.body.i75

do.body.i75:                                      ; preds = %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_detect, %if.then31.i78)) #7
          to label %if.end15 [label %if.then31.i78], !srcloc !199

if.then31.i78:                                    ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i76 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_read.__UNIQUE_ID_ddebug294, ptr noundef %dev.i76, ptr noundef nonnull @.str.23, i32 noundef 12299, i32 noundef 0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then31.i78, %do.body.i75
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i61) #7
  br label %cleanup

if.then17:                                        ; preds = %if.then13
  %60 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf.i62, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i61) #7
  %conv = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv18 = zext i8 %61 to i32
  %or = or i32 %shl, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 9814, i32 %or)
  %cmp21.not = icmp eq i32 %or, 9814
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %cmp21.not, label %do.end31, label %do.end26

do.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.52, i32 noundef %or) #10
  br label %cleanup

do.end31:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.55, i32 noundef 9814) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end26, %if.end15, %if.end15.thread, %do.end8
  %retval.0 = phi i32 [ -19, %do.end8 ], [ %call.i72, %if.end15 ], [ -19, %do.end26 ], [ 0, %do.end31 ], [ %call.i56, %if.end15.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov2659_pll_calc_params(ptr nocapture noundef %ov2659) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 4
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %client2 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 6
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv = trunc i64 %5 to i32
  %xvclk_frequency = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 3
  %6 = ptrtoint ptr %xvclk_frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xvclk_frequency, align 4
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc34.for.cond6.preheader_crit_edge, %entry
  %8 = phi i32 [ 2, %entry ], [ %18, %for.inc34.for.cond6.preheader_crit_edge ]
  %ctrl1_reg.089 = phi i8 [ 0, %entry ], [ %ctrl1_reg.3, %for.inc34.for.cond6.preheader_crit_edge ]
  %ctrl2_reg.088 = phi i8 [ 0, %entry ], [ %ctrl2_reg.3, %for.inc34.for.cond6.preheader_crit_edge ]
  %ctrl3_reg.087 = phi i8 [ 0, %entry ], [ %ctrl3_reg.3, %for.inc34.for.cond6.preheader_crit_edge ]
  %i.086 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34.for.cond6.preheader_crit_edge ]
  %bestdelta.085 = phi i32 [ -1, %entry ], [ %bestdelta.3, %for.inc34.for.cond6.preheader_crit_edge ]
  %reg = getelementptr [16 x %struct.pll_ctrl_reg], ptr @ctrl1, i32 0, i32 %i.086, i32 1
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc31.for.cond14.preheader_crit_edge, %for.cond6.preheader
  %9 = phi i32 [ 1, %for.cond6.preheader ], [ %16, %for.inc31.for.cond14.preheader_crit_edge ]
  %ctrl1_reg.184 = phi i8 [ %ctrl1_reg.089, %for.cond6.preheader ], [ %ctrl1_reg.3, %for.inc31.for.cond14.preheader_crit_edge ]
  %ctrl2_reg.183 = phi i8 [ %ctrl2_reg.088, %for.cond6.preheader ], [ %ctrl2_reg.3, %for.inc31.for.cond14.preheader_crit_edge ]
  %ctrl3_reg.182 = phi i8 [ %ctrl3_reg.087, %for.cond6.preheader ], [ %ctrl3_reg.3, %for.inc31.for.cond14.preheader_crit_edge ]
  %j.081 = phi i32 [ 0, %for.cond6.preheader ], [ %inc32, %for.inc31.for.cond14.preheader_crit_edge ]
  %bestdelta.180 = phi i32 [ %bestdelta.085, %for.cond6.preheader ], [ %bestdelta.3, %for.inc31.for.cond14.preheader_crit_edge ]
  %reg30 = getelementptr [14 x %struct.pll_ctrl_reg], ptr @ctrl3, i32 0, i32 %j.081, i32 1
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.cond14.preheader
  %ctrl1_reg.279 = phi i8 [ %ctrl1_reg.184, %for.cond14.preheader ], [ %ctrl1_reg.3, %for.inc.for.body17_crit_edge ]
  %ctrl2_reg.278 = phi i8 [ %ctrl2_reg.183, %for.cond14.preheader ], [ %ctrl2_reg.3, %for.inc.for.body17_crit_edge ]
  %ctrl3_reg.277 = phi i8 [ %ctrl3_reg.182, %for.cond14.preheader ], [ %ctrl3_reg.3, %for.inc.for.body17_crit_edge ]
  %bestdelta.276 = phi i32 [ %bestdelta.180, %for.cond14.preheader ], [ %bestdelta.3, %for.inc.for.body17_crit_edge ]
  %mult.074 = phi i32 [ 1, %for.cond14.preheader ], [ %inc, %for.inc.for.body17_crit_edge ]
  %mul = mul i32 %7, %mult.074
  %div18 = udiv i32 %mul, %9
  %div19 = udiv i32 %div18, %8
  %sub = sub i32 %div19, %conv
  %10 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %bestdelta.276)
  %cmp23 = icmp ult i32 %10, %bestdelta.276
  br i1 %cmp23, label %if.then, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 4
  %conv28 = trunc i32 %mult.074 to i8
  %13 = ptrtoint ptr %reg30 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg30, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body17.for.inc_crit_edge
  %bestdelta.3 = phi i32 [ %10, %if.then ], [ %bestdelta.276, %for.body17.for.inc_crit_edge ]
  %ctrl3_reg.3 = phi i8 [ %14, %if.then ], [ %ctrl3_reg.277, %for.body17.for.inc_crit_edge ]
  %ctrl2_reg.3 = phi i8 [ %conv28, %if.then ], [ %ctrl2_reg.278, %for.body17.for.inc_crit_edge ]
  %ctrl1_reg.3 = phi i8 [ %12, %if.then ], [ %ctrl1_reg.279, %for.body17.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %mult.074, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc31, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.inc31:                                        ; preds = %for.inc
  %inc32 = add nuw nsw i32 %j.081, 1
  %arrayidx7 = getelementptr [14 x %struct.pll_ctrl_reg], ptr @ctrl3, i32 0, i32 %inc32
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %exitcond90 = icmp eq i32 %inc32, 13
  br i1 %exitcond90, label %for.inc34, label %for.inc31.for.cond14.preheader_crit_edge

for.inc31.for.cond14.preheader_crit_edge:         ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.inc34:                                        ; preds = %for.inc31
  %inc35 = add nuw nsw i32 %i.086, 1
  %arrayidx = getelementptr [16 x %struct.pll_ctrl_reg], ptr @ctrl1, i32 0, i32 %inc35
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %exitcond91 = icmp eq i32 %inc35, 15
  br i1 %exitcond91, label %for.end36, label %for.inc34.for.cond6.preheader_crit_edge

for.inc34.for.cond6.preheader_crit_edge:          ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.end36:                                        ; preds = %for.inc34
  %pll = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12
  %19 = ptrtoint ptr %pll to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %ctrl1_reg.3, ptr %pll, align 4
  %ctrl2 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ctrl2_reg.3, ptr %ctrl2, align 1
  %ctrl3 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ctrl3_reg.3, ptr %ctrl3, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_pll_calc_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_pll_calc_params, %if.then42)) #7
          to label %do.end [label %if.then42], !srcloc !199

if.then42:                                        ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv43 = zext i8 %ctrl1_reg.3 to i32
  %conv44 = zext i8 %ctrl2_reg.3 to i32
  %conv45 = zext i8 %ctrl3_reg.3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_pll_calc_params.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv45) #7
  br label %do.end

do.end:                                           ; preds = %if.then42, %for.end36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -380
  %client1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422531, i32 %5)
  %cond = icmp eq i32 %5, 10422531
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call2 = tail call fastcc i32 @ov2659_set_test_pattern(ptr noundef %add.ptr, i32 noundef %7)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb ], [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2659_set_test_pattern(ptr nocapture noundef readonly %ov2659, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %msg.i14 = alloca %struct.i2c_msg, align 4
  %buf.i15 = alloca [3 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov2659, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 80, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -96, ptr %4, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf10.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %2, align 4
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %8, ptr %arrayidx13.i, align 4
  %16 = or i16 %11, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_test_pattern, %ov2659_read.exit.thread)) #7
          to label %ov2659_read.exit [label %ov2659_read.exit.thread], !srcloc !199

ov2659_read.exit.thread:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_read.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 20640, i32 noundef 255) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

ov2659_read.exit:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  %24 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %value, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = and i8 %23, 127
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = and i8 %23, 83
  %27 = or i8 %26, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %val.1 = phi i8 [ %23, %if.end.sw.epilog_crit_edge ], [ %27, %sw.bb3 ], [ %25, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #7
  %28 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 262143, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i15) #7
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i15, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %buf.i15, i32 0, i32 2
  %32 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 80, ptr %buf.i15, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -96, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %val.1, ptr %31, align 1
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i, align 2
  %37 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i14, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %40 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %41 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i15, ptr %buf8.i, align 4
  %42 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i, align 8
  %call.i19 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i19)
  %cmp.i20 = icmp sgt i32 %call.i19, -1
  br i1 %cmp.i20, label %sw.epilog.ov2659_write.exit_crit_edge, label %do.body.i21

sw.epilog.ov2659_write.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write.exit

do.body.i21:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_test_pattern, %if.then13.i)) #7
          to label %ov2659_write.exit [label %if.then13.i], !srcloc !199

if.then13.i:                                      ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv15.i = zext i8 %val.1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i22, ptr noundef nonnull @.str.25, i32 noundef 20640, i32 noundef %conv15.i) #7
  br label %ov2659_write.exit

ov2659_write.exit:                                ; preds = %if.then13.i, %do.body.i21, %sw.epilog.ov2659_write.exit_crit_edge
  %retval.0.i23 = phi i32 [ 0, %sw.epilog.ov2659_write.exit_crit_edge ], [ %call.i19, %if.then13.i ], [ %call.i19, %do.body.i21 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i15) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #7
  br label %cleanup

cleanup:                                          ; preds = %ov2659_write.exit, %ov2659_read.exit, %ov2659_read.exit.thread
  %retval.0 = phi i32 [ %retval.0.i23, %ov2659_write.exit ], [ %call.i, %ov2659_read.exit ], [ %call.i, %ov2659_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_s_stream.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_s_stream, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_s_stream.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %on) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5 = icmp ne i32 %on, 0
  %lnot.ext9 = zext i1 %tobool5 to i32
  %streaming = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 13
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lnot.ext9)
  %cmp = icmp eq i32 %3, %lnot.ext9
  br i1 %cmp, label %do.end.unlock_crit_edge, label %if.end11

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end11:                                         ; preds = %do.end
  br i1 %tobool5, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ov2659_set_streaming(ptr noundef %sd, i32 noundef 0)
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext9, ptr %streaming, align 4
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev15, i32 noundef 5) #7
  br label %unlock

if.end17:                                         ; preds = %if.end11
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i64 = tail call i32 @__pm_runtime_resume(ptr noundef %dev18, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i = icmp slt i32 %call.i64, 0
  br i1 %cmp.i, label %if.then.i, label %if.end22

if.then.i:                                        ; preds = %if.end17
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !201
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !202
  br label %unlock

if.end22:                                         ; preds = %if.end17
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %flags7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %ov2659_write.exit.i.i.land.rhs.i.i_crit_edge, %if.end22
  %i.010.i.i = phi i32 [ 0, %if.end22 ], [ %inc.i.i, %ov2659_write.exit.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sensor_register, ptr @ov2659_init_regs, i32 %i.010.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.end27, label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %value.i.i = getelementptr %struct.sensor_register, ptr @ov2659_init_regs, i32 %i.010.i.i, i32 1
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i) #7
  %16 = lshr i16 %12, 8
  %conv1.i.i.i = trunc i16 %16 to i8
  %17 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i.i.i, ptr %buf.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %12 to i8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i.i, ptr %9, align 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %10, align 1
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i.i, align 2
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i.i.i, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %7, align 8
  %25 = ptrtoint ptr %flags7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags7.i.i.i, align 2
  %26 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i.i.i, ptr %buf8.i.i.i, align 4
  %27 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i.i, label %for.body.i.i.ov2659_write.exit.i.i_crit_edge, label %do.body.i.i.i

for.body.i.i.ov2659_write.exit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write.exit.i.i

do.body.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_s_stream, %ov2659_write.exit.thread.i.i)) #7
          to label %ov2659_write.exit.i.i [label %ov2659_write.exit.thread.i.i], !srcloc !199

ov2659_write.exit.thread.i.i:                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le.i.i = zext i16 %12 to i32
  %conv15.i.i.i = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i.le.i.i, i32 noundef %conv15.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  br label %unlock

ov2659_write.exit.i.i:                            ; preds = %do.body.i.i.i, %for.body.i.i.ov2659_write.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.body.i.i.ov2659_write.exit.i.i_crit_edge ], [ %call.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %inc.i.i = add i32 %i.010.i.i, 1
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %ov2659_write.exit.i.i.land.rhs.i.i_crit_edge, label %ov2659_write.exit.i.i.unlock_crit_edge

ov2659_write.exit.i.i.unlock_crit_edge:           ; preds = %ov2659_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

ov2659_write.exit.i.i.land.rhs.i.i_crit_edge:     ; preds = %ov2659_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

if.end27:                                         ; preds = %land.rhs.i.i
  %call26 = call fastcc i32 @ov2659_set_pixel_clock(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end31, label %if.end27.unlock_crit_edge

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %if.end27
  %call30 = call fastcc i32 @ov2659_set_frame_size(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end35, label %if.end31.unlock_crit_edge

if.end31.unlock_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end35:                                         ; preds = %if.end31
  %call34 = call fastcc i32 @ov2659_set_format(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %if.then37, label %if.end35.unlock_crit_edge

if.end35.unlock_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ov2659_set_streaming(ptr noundef %sd, i32 noundef 1)
  %29 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %lnot.ext9, ptr %streaming, align 4
  br label %unlock

unlock:                                           ; preds = %if.then37, %if.end35.unlock_crit_edge, %if.end31.unlock_crit_edge, %if.end27.unlock_crit_edge, %ov2659_write.exit.i.i.unlock_crit_edge, %ov2659_write.exit.thread.i.i, %do.end11.i.i.i.i.i, %if.then.i.unlock_crit_edge, %if.then13, %do.end.unlock_crit_edge
  %ret.3 = phi i32 [ 0, %do.end.unlock_crit_edge ], [ %call34, %if.end35.unlock_crit_edge ], [ 0, %if.then37 ], [ 0, %if.then13 ], [ %call.i64, %if.then.i.unlock_crit_edge ], [ %call.i64, %do.end11.i.i.i.i.i ], [ %call30, %if.end31.unlock_crit_edge ], [ %call26, %if.end27.unlock_crit_edge ], [ %call.i.i.i, %ov2659_write.exit.thread.i.i ], [ %retval.0.i.i.i, %ov2659_write.exit.i.i.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov2659_set_streaming(ptr nocapture noundef readonly %ov2659, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_set_streaming.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_streaming, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext = zext i1 %tobool to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_set_streaming.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %lnot.ext) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 262143, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %5, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %ov2659_write.exit.thread, label %do.body.i

ov2659_write.exit.thread:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %if.end16

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_streaming, %if.then13.i)) #7
          to label %do.end14 [label %if.then13.i], !srcloc !199

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv15.i = zext i1 %tobool to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 256, i32 noundef %conv15.i) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.31) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %ov2659_write.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2659_set_pixel_clock(ptr nocapture noundef readonly %ov2659) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %pll_regs = alloca [4 x %struct.sensor_register], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_regs) #7
  %2 = getelementptr inbounds i8, ptr %pll_regs, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 14)
  %4 = ptrtoint ptr %pll_regs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 12292, ptr %pll_regs, align 2
  %value = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 0, i32 1
  %pll = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12
  %5 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pll, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %value, align 2
  %arrayinit.element = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12293, ptr %arrayinit.element, align 2
  %value3 = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 1, i32 1
  %ctrl2 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl2, align 1
  %11 = ptrtoint ptr %value3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %value3, align 2
  %arrayinit.element5 = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 2
  %12 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12294, ptr %arrayinit.element5, align 2
  %value7 = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 2, i32 1
  %ctrl3 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl3, align 2
  %15 = ptrtoint ptr %value7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value7, align 2
  %arrayinit.element9 = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 3
  %16 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayinit.element9, align 2
  %value11 = getelementptr inbounds %struct.sensor_register, ptr %pll_regs, i32 3, i32 1
  %17 = ptrtoint ptr %value11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %value11, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_set_pixel_clock.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_pixel_clock, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_set_pixel_clock.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ov2659_write.exit.i.land.rhs.i_crit_edge, %do.end
  %i.010.i = phi i32 [ 0, %do.end ], [ %inc.i, %ov2659_write.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sensor_register, ptr %pll_regs, i32 %i.010.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %land.rhs.i.ov2659_write_array.exit_crit_edge, label %for.body.i

land.rhs.i.ov2659_write_array.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

for.body.i:                                       ; preds = %land.rhs.i
  %value.i = getelementptr %struct.sensor_register, ptr %pll_regs, i32 %i.010.i, i32 1
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262143, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %26 = lshr i16 %22, 8
  %conv1.i.i = trunc i16 %26 to i8
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i.i, ptr %buf.i.i, align 1
  %conv3.i.i = trunc i16 %22 to i8
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i.i, ptr %19, align 1
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %20, align 1
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i.i, align 2
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i.i, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 8
  %35 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %flags7.i.i, align 2
  %36 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %37 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %for.body.i.ov2659_write.exit.i_crit_edge, label %do.body.i.i

for.body.i.ov2659_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_pixel_clock, %ov2659_write.exit.thread.i)) #7
          to label %ov2659_write.exit.i [label %ov2659_write.exit.thread.i], !srcloc !199

ov2659_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le.i = zext i16 %22 to i32
  %conv15.i.i = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i.le.i, i32 noundef %conv15.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %ov2659_write_array.exit

ov2659_write.exit.i:                              ; preds = %do.body.i.i, %for.body.i.ov2659_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.ov2659_write.exit.i_crit_edge ], [ %call.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %inc.i = add i32 %i.010.i, 1
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %ov2659_write.exit.i.land.rhs.i_crit_edge, label %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge

ov2659_write.exit.i.ov2659_write_array.exit_crit_edge: ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

ov2659_write.exit.i.land.rhs.i_crit_edge:         ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

ov2659_write_array.exit:                          ; preds = %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge, %ov2659_write.exit.thread.i, %land.rhs.i.ov2659_write_array.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i.i, %ov2659_write.exit.thread.i ], [ %retval.0.i.i, %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge ], [ 0, %land.rhs.i.ov2659_write_array.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_regs) #7
  ret i32 %ret.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2659_set_frame_size(ptr nocapture noundef readonly %ov2659) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_set_frame_size.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_frame_size, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_set_frame_size.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %frame_size = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 10
  %4 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame_size, align 4
  %regs = getelementptr inbounds %struct.ov2659_framesize, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ov2659_write.exit.i.land.rhs.i_crit_edge, %do.end
  %i.010.i = phi i32 [ 0, %do.end ], [ %inc.i, %ov2659_write.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sensor_register, ptr %7, i32 %i.010.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %land.rhs.i.ov2659_write_array.exit_crit_edge, label %for.body.i

land.rhs.i.ov2659_write_array.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

for.body.i:                                       ; preds = %land.rhs.i
  %value.i = getelementptr %struct.sensor_register, ptr %7, i32 %i.010.i, i32 1
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %16 = lshr i16 %12, 8
  %conv1.i.i = trunc i16 %16 to i8
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i.i, ptr %buf.i.i, align 1
  %conv3.i.i = trunc i16 %12 to i8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i, ptr %9, align 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %10, align 1
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i, align 2
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 8
  %25 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags7.i.i, align 2
  %26 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %27 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %for.body.i.ov2659_write.exit.i_crit_edge, label %do.body.i.i

for.body.i.ov2659_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_frame_size, %ov2659_write.exit.thread.i)) #7
          to label %ov2659_write.exit.i [label %ov2659_write.exit.thread.i], !srcloc !199

ov2659_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le.i = zext i16 %12 to i32
  %conv15.i.i = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i.le.i, i32 noundef %conv15.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %ov2659_write_array.exit

ov2659_write.exit.i:                              ; preds = %do.body.i.i, %for.body.i.ov2659_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.ov2659_write.exit.i_crit_edge ], [ %call.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %inc.i = add i32 %i.010.i, 1
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %ov2659_write.exit.i.land.rhs.i_crit_edge, label %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge

ov2659_write.exit.i.ov2659_write_array.exit_crit_edge: ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

ov2659_write.exit.i.land.rhs.i_crit_edge:         ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

ov2659_write_array.exit:                          ; preds = %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge, %ov2659_write.exit.thread.i, %land.rhs.i.ov2659_write_array.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i.i, %ov2659_write.exit.thread.i ], [ %retval.0.i.i, %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge ], [ 0, %land.rhs.i.ov2659_write_array.exit_crit_edge ]
  ret i32 %ret.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2659_set_format(ptr nocapture noundef readonly %ov2659) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_set_format.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_format, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_set_format.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %format_ctrl_regs = getelementptr inbounds %struct.ov2659, ptr %ov2659, i32 0, i32 11
  %4 = ptrtoint ptr %format_ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_ctrl_regs, align 4
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ov2659_write.exit.i.land.rhs.i_crit_edge, %do.end
  %i.010.i = phi i32 [ 0, %do.end ], [ %inc.i, %ov2659_write.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sensor_register, ptr %5, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %land.rhs.i.ov2659_write_array.exit_crit_edge, label %for.body.i

land.rhs.i.ov2659_write_array.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

for.body.i:                                       ; preds = %land.rhs.i
  %value.i = getelementptr %struct.sensor_register, ptr %5, i32 %i.010.i, i32 1
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262143, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %14 = lshr i16 %10, 8
  %conv1.i.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %buf.i.i, align 1
  %conv3.i.i = trunc i16 %10 to i8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i.i, ptr %7, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %12, ptr %8, align 1
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i.i, align 2
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %3, align 8
  %23 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %flags7.i.i, align 2
  %24 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %25 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %for.body.i.ov2659_write.exit.i_crit_edge, label %do.body.i.i

for.body.i.ov2659_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_format, %ov2659_write.exit.thread.i)) #7
          to label %ov2659_write.exit.i [label %ov2659_write.exit.thread.i], !srcloc !199

ov2659_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le.i = zext i16 %10 to i32
  %conv15.i.i = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i.le.i, i32 noundef %conv15.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %ov2659_write_array.exit

ov2659_write.exit.i:                              ; preds = %do.body.i.i, %for.body.i.ov2659_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.ov2659_write.exit.i_crit_edge ], [ %call.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %inc.i = add i32 %i.010.i, 1
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %ov2659_write.exit.i.land.rhs.i_crit_edge, label %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge

ov2659_write.exit.i.ov2659_write_array.exit_crit_edge: ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2659_write_array.exit

ov2659_write.exit.i.land.rhs.i_crit_edge:         ; preds = %ov2659_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

ov2659_write_array.exit:                          ; preds = %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge, %ov2659_write.exit.thread.i, %land.rhs.i.ov2659_write_array.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i.i, %ov2659_write.exit.thread.i ], [ %retval.0.i.i, %ov2659_write.exit.i.ov2659_write_array.exit_crit_edge ], [ 0, %land.rhs.i.ov2659_write_array.exit_crit_edge ]
  ret i32 %ret.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_enum_mbus_code.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_enum_mbus_code, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_enum_mbus_code.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x %struct.ov2659_pixfmt], ptr @ov2659_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_enum_frame_sizes(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_enum_frame_sizes.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_enum_frame_sizes, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_enum_frame_sizes.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ugt i32 %3, 6
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %5)
  %cmp8 = icmp eq i32 %5, 12289
  br i1 %cmp8, label %while.cond.preheader.while.end_crit_edge, label %while.cond.1

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.1:                                     ; preds = %while.cond.preheader
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %7)
  %cmp8.1 = icmp eq i32 %7, 4103
  br i1 %cmp8.1, label %while.cond.1.while.end_crit_edge, label %while.cond.2

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %9)
  %cmp8.2 = icmp eq i32 %9, 8198
  %spec.select = zext i1 %cmp8.2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.2, %while.cond.1.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %dec.lcssa = phi i32 [ 3, %while.cond.preheader.while.end_crit_edge ], [ 2, %while.cond.1.while.end_crit_edge ], [ %spec.select, %while.cond.2 ]
  %arrayidx11 = getelementptr [4 x %struct.ov2659_pixfmt], ptr @ov2659_formats, i32 0, i32 %dec.lcssa
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %12 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code, align 4
  %arrayidx15 = getelementptr [7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx15, align 4
  %conv = zext i16 %14 to i32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %15 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %16 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %max_width, align 4
  %height = getelementptr [7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 %3, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %height, align 2
  %conv19 = zext i16 %18 to i32
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %19 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv19, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv19, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_get_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_get_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_get_fmt.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.39) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %do.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then5.v4l2_subdev_get_try_format.exit_crit_edge, !prof !203

if.then5.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then5.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %lock = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %7, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock9 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock9, i32 noundef 0) #7
  %format10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %format11 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format10, ptr %format11, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock9) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_get_fmt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_get_fmt, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !199

if.then25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %code = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %12 = ptrtoint ptr %format11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format11, align 4
  %height = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_get_fmt.__UNIQUE_ID_ddebug301, ptr noundef %dev26, ptr noundef nonnull @.str.40, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end8, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_set_fmt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_set_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_set_fmt.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height6.i, align 4
  %sub.i = sub i32 320, %3
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  %sub7.i = sub i32 240, %5
  %7 = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 false) #7
  %add.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp16.not.i = icmp eq i32 %add.i, -1
  br i1 %cmp16.not.i, label %do.end.if.end.i_crit_edge, label %land.lhs.true.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i16, ptr @ov2659_qvga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool19.not.i = icmp eq i16 %8, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 -1, i32 %add.i
  %spec.select48.i = select i1 %tobool19.not.i, ptr null, ptr @ov2659_framesizes
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %do.end.if.end.i_crit_edge
  %min_err.1.i = phi i32 [ -1, %do.end.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %match.1.i = phi ptr [ null, %do.end.if.end.i_crit_edge ], [ %spec.select48.i, %land.lhs.true.i ]
  %sub.1.i = sub i32 640, %3
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #7
  %sub7.1.i = sub i32 480, %5
  %10 = tail call i32 @llvm.abs.i32(i32 %sub7.1.i, i1 false) #7
  %add.1.i = add i32 %10, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %min_err.1.i)
  %cmp16.1.i = icmp ult i32 %add.1.i, %min_err.1.i
  br i1 %cmp16.1.i, label %land.lhs.true.1.i, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.i

land.lhs.true.1.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i16, ptr @ov2659_vga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool19.not.1.i = icmp eq i16 %11, 0
  %spec.select.1.i = select i1 %tobool19.not.1.i, i32 %min_err.1.i, i32 %add.1.i
  %spec.select48.1.i = select i1 %tobool19.not.1.i, ptr %match.1.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 1)
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %land.lhs.true.1.i, %if.end.i.if.end.1.i_crit_edge
  %min_err.1.1.i = phi i32 [ %min_err.1.i, %if.end.i.if.end.1.i_crit_edge ], [ %spec.select.1.i, %land.lhs.true.1.i ]
  %match.1.1.i = phi ptr [ %match.1.i, %if.end.i.if.end.1.i_crit_edge ], [ %spec.select48.1.i, %land.lhs.true.1.i ]
  %sub.2.i = sub i32 800, %3
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #7
  %sub7.2.i = sub i32 600, %5
  %13 = tail call i32 @llvm.abs.i32(i32 %sub7.2.i, i1 false) #7
  %add.2.i = add i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %min_err.1.1.i)
  %cmp16.2.i = icmp ult i32 %add.2.i, %min_err.1.1.i
  br i1 %cmp16.2.i, label %land.lhs.true.2.i, label %if.end.1.i.if.end.2.i_crit_edge

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2.i

land.lhs.true.2.i:                                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i16, ptr @ov2659_svga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool19.not.2.i = icmp eq i16 %14, 0
  %spec.select.2.i = select i1 %tobool19.not.2.i, i32 %min_err.1.1.i, i32 %add.2.i
  %spec.select48.2.i = select i1 %tobool19.not.2.i, ptr %match.1.1.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 2)
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %land.lhs.true.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %min_err.1.2.i = phi i32 [ %min_err.1.1.i, %if.end.1.i.if.end.2.i_crit_edge ], [ %spec.select.2.i, %land.lhs.true.2.i ]
  %match.1.2.i = phi ptr [ %match.1.1.i, %if.end.1.i.if.end.2.i_crit_edge ], [ %spec.select48.2.i, %land.lhs.true.2.i ]
  %sub.3.i = sub i32 1024, %3
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #7
  %sub7.3.i = sub i32 768, %5
  %16 = tail call i32 @llvm.abs.i32(i32 %sub7.3.i, i1 false) #7
  %add.3.i = add i32 %16, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %min_err.1.2.i)
  %cmp16.3.i = icmp ult i32 %add.3.i, %min_err.1.2.i
  br i1 %cmp16.3.i, label %land.lhs.true.3.i, label %if.end.2.i.if.end.3.i_crit_edge

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3.i

land.lhs.true.3.i:                                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i16, ptr @ov2659_xga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool19.not.3.i = icmp eq i16 %17, 0
  %spec.select.3.i = select i1 %tobool19.not.3.i, i32 %min_err.1.2.i, i32 %add.3.i
  %spec.select48.3.i = select i1 %tobool19.not.3.i, ptr %match.1.2.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 3)
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %land.lhs.true.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %min_err.1.3.i = phi i32 [ %min_err.1.2.i, %if.end.2.i.if.end.3.i_crit_edge ], [ %spec.select.3.i, %land.lhs.true.3.i ]
  %match.1.3.i = phi ptr [ %match.1.2.i, %if.end.2.i.if.end.3.i_crit_edge ], [ %spec.select48.3.i, %land.lhs.true.3.i ]
  %sub.4.i = sub i32 1280, %3
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #7
  %sub7.4.i = sub i32 720, %5
  %19 = tail call i32 @llvm.abs.i32(i32 %sub7.4.i, i1 false) #7
  %add.4.i = add i32 %19, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4.i, i32 %min_err.1.3.i)
  %cmp16.4.i = icmp ult i32 %add.4.i, %min_err.1.3.i
  br i1 %cmp16.4.i, label %land.lhs.true.4.i, label %if.end.3.i.if.end.4.i_crit_edge

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.4.i

land.lhs.true.4.i:                                ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i16, ptr @ov2659_720p, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool19.not.4.i = icmp eq i16 %20, 0
  %spec.select.4.i = select i1 %tobool19.not.4.i, i32 %min_err.1.3.i, i32 %add.4.i
  %spec.select48.4.i = select i1 %tobool19.not.4.i, ptr %match.1.3.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 4)
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %land.lhs.true.4.i, %if.end.3.i.if.end.4.i_crit_edge
  %min_err.1.4.i = phi i32 [ %min_err.1.3.i, %if.end.3.i.if.end.4.i_crit_edge ], [ %spec.select.4.i, %land.lhs.true.4.i ]
  %match.1.4.i = phi ptr [ %match.1.3.i, %if.end.3.i.if.end.4.i_crit_edge ], [ %spec.select48.4.i, %land.lhs.true.4.i ]
  %sub7.5.i = sub i32 1024, %5
  %21 = tail call i32 @llvm.abs.i32(i32 %sub7.5.i, i1 false) #7
  %add.5.i = add i32 %21, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5.i, i32 %min_err.1.4.i)
  %cmp16.5.i = icmp ult i32 %add.5.i, %min_err.1.4.i
  br i1 %cmp16.5.i, label %land.lhs.true.5.i, label %if.end.4.i.if.end.5.i_crit_edge

if.end.4.i.if.end.5.i_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.i

land.lhs.true.5.i:                                ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load i16, ptr @ov2659_sxga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool19.not.5.i = icmp eq i16 %22, 0
  %spec.select.5.i = select i1 %tobool19.not.5.i, i32 %min_err.1.4.i, i32 %add.5.i
  %spec.select48.5.i = select i1 %tobool19.not.5.i, ptr %match.1.4.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 5)
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %land.lhs.true.5.i, %if.end.4.i.if.end.5.i_crit_edge
  %min_err.1.5.i = phi i32 [ %min_err.1.4.i, %if.end.4.i.if.end.5.i_crit_edge ], [ %spec.select.5.i, %land.lhs.true.5.i ]
  %match.1.5.i = phi ptr [ %match.1.4.i, %if.end.4.i.if.end.5.i_crit_edge ], [ %spec.select48.5.i, %land.lhs.true.5.i ]
  %sub.6.i = sub i32 1600, %3
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.6.i, i1 false) #7
  %sub7.6.i = sub i32 1200, %5
  %24 = tail call i32 @llvm.abs.i32(i32 %sub7.6.i, i1 false) #7
  %add.6.i = add i32 %24, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.6.i, i32 %min_err.1.5.i)
  %cmp16.6.i = icmp ult i32 %add.6.i, %min_err.1.5.i
  br i1 %cmp16.6.i, label %land.lhs.true.6.i, label %if.end.5.i.__ov2659_try_frame_size.exit_crit_edge

if.end.5.i.__ov2659_try_frame_size.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2659_try_frame_size.exit

land.lhs.true.6.i:                                ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i16, ptr @ov2659_uxga, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool19.not.6.i = icmp eq i16 %25, 0
  %spec.select48.6.i = select i1 %tobool19.not.6.i, ptr %match.1.5.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 6)
  br label %__ov2659_try_frame_size.exit

__ov2659_try_frame_size.exit:                     ; preds = %land.lhs.true.6.i, %if.end.5.i.__ov2659_try_frame_size.exit_crit_edge
  %match.1.6.i = phi ptr [ %match.1.5.i, %if.end.5.i.__ov2659_try_frame_size.exit_crit_edge ], [ %spec.select48.6.i, %land.lhs.true.6.i ]
  %tobool20.not.i = icmp eq ptr %match.1.6.i, null
  %spec.store.select.i = select i1 %tobool20.not.i, ptr getelementptr inbounds ([7 x %struct.ov2659_framesize], ptr @ov2659_framesizes, i32 0, i32 2), ptr %match.1.6.i
  %26 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %spec.store.select.i, align 4
  %conv24.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv24.i, ptr %format, align 4
  %height26.i = getelementptr inbounds %struct.ov2659_framesize, ptr %spec.store.select.i, i32 0, i32 1
  %29 = ptrtoint ptr %height26.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %height26.i, align 2
  %conv27.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv27.i, ptr %height6.i, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %code5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %33)
  %cmp6 = icmp eq i32 %33, 12289
  br i1 %cmp6, label %__ov2659_try_frame_size.exit.if.end14_crit_edge, label %while.cond.1

__ov2659_try_frame_size.exit.if.end14_crit_edge:  ; preds = %__ov2659_try_frame_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

while.cond.1:                                     ; preds = %__ov2659_try_frame_size.exit
  %34 = ptrtoint ptr %code5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %35)
  %cmp6.1 = icmp eq i32 %35, 4103
  br i1 %cmp6.1, label %while.cond.1.if.end14_crit_edge, label %while.cond.2

while.cond.1.if.end14_crit_edge:                  ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

while.cond.2:                                     ; preds = %while.cond.1
  %36 = ptrtoint ptr %code5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %37)
  %cmp6.2 = icmp eq i32 %37, 8198
  br i1 %cmp6.2, label %while.cond.2.if.end14_crit_edge, label %while.cond.3

while.cond.2.if.end14_crit_edge:                  ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

while.cond.3:                                     ; preds = %while.cond.2
  %38 = ptrtoint ptr %code5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %39)
  %cmp6.3 = icmp eq i32 %39, 8200
  br i1 %cmp6.3, label %while.cond.3.if.end14_crit_edge, label %if.then10

while.cond.3.if.end14_crit_edge:                  ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8200, ptr %code5, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %while.cond.3.if.end14_crit_edge, %while.cond.2.if.end14_crit_edge, %while.cond.1.if.end14_crit_edge, %__ov2659_try_frame_size.exit.if.end14_crit_edge
  %index.1 = phi i32 [ 0, %if.then10 ], [ 3, %__ov2659_try_frame_size.exit.if.end14_crit_edge ], [ 2, %while.cond.1.if.end14_crit_edge ], [ 1, %while.cond.2.if.end14_crit_edge ], [ 0, %while.cond.3.if.end14_crit_edge ]
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %field, align 4
  %lock = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp15 = icmp eq i32 %44, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %45 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %47 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %46, %conv.i
  br i1 %cmp.not.i, label %if.then16.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !204

if.then16.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i80 = phi i32 [ 0, %do.end.i ], [ %46, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge ]
  %49 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %50, i32 %spec.select.i80
  %51 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup46

if.else:                                          ; preds = %if.end14
  %streaming = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 13
  %52 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool19.not = icmp eq i32 %53, 0
  br i1 %tobool19.not, label %if.end22, label %if.else.cleanup46_crit_edge

if.else.cleanup46_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end22:                                         ; preds = %if.else
  %frame_size = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 10
  %54 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %spec.store.select.i, ptr %frame_size, align 4
  %format23 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 2
  %55 = call ptr @memcpy(ptr %format23, ptr %format, i32 48)
  %format_ctrl_regs = getelementptr [4 x %struct.ov2659_pixfmt], ptr @ov2659_formats, i32 0, i32 %index.1, i32 1
  %56 = ptrtoint ptr %format_ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %format_ctrl_regs, align 4
  %format_ctrl_regs26 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 11
  %58 = ptrtoint ptr %format_ctrl_regs26 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %format_ctrl_regs26, align 4
  %code28 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %code28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %code28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %60)
  %cmp29.not = icmp eq i32 %60, 12289
  %pdata32 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 4
  %61 = ptrtoint ptr %pdata32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata32, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %62, align 8
  %div = sdiv i64 %64, 2
  %val.0 = select i1 %cmp29.not, i64 %64, i64 %div
  %link_frequency35 = getelementptr inbounds %struct.ov2659, ptr %sd, i32 0, i32 8
  %65 = ptrtoint ptr %link_frequency35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link_frequency35, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %70, i32 noundef 0) #7
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %66, i64 noundef %val.0) #7
  %71 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  br i1 %cmp37, label %do.end41, label %if.end22.cleanup46_crit_edge

if.end22.cleanup46_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.44, i32 noundef %call.i) #10
  br label %cleanup46

cleanup46:                                        ; preds = %do.end41, %if.end22.cleanup46_crit_edge, %if.else.cleanup46_crit_edge, %v4l2_subdev_get_try_format.exit
  %retval.1 = phi i32 [ -16, %if.else.cleanup46_crit_edge ], [ 0, %v4l2_subdev_get_try_format.exit ], [ %call.i, %if.end22.cleanup46_crit_edge ], [ %call.i, %do.end41 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2659_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !203

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2659_open.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2659_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2659_open.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %v4l2_subdev_get_try_format.exit
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 800, ptr %7, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 600, ptr %height.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %colorspace.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8200, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !116, !117, !118, !120, !121, !122, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_ov2659__310_1594_ov2659_i2c_driver_init6, !1, !"__initcall__kmod_ov2659__310_1594_ov2659_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov2659.c", i32 1594, i32 1}
!2 = !{ptr @__exitcall_ov2659_i2c_driver_exit, !1, !"__exitcall_ov2659_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author311, !4, !"__UNIQUE_ID_author311", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov2659.c", i32 1596, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov2659.c", i32 1597, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov2659.c", i32 1598, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov2659.c", i32 1585, i32 11}
!12 = !{ptr @ov2659_i2c_driver, !13, !"ov2659_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov2659.c", i32 1583, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov2659.c", i32 1268, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ov2659_power_off.__UNIQUE_ID_ddebug306, !15, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/ov2659.c", i32 1439, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ov2659_probe._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov2659_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov2659.c", i32 1450, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ov2659.c", i32 1460, i32 60}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov2659.c", i32 1466, i32 62}
!32 = !{ptr @ov2659_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov2659.c", i32 1471, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov2659.c", i32 1485, i32 3}
!37 = !{ptr @ov2659_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov2659_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ov2659_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov2659.c", i32 1510, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov2659.c", i32 1531, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ov2659_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ov2659_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ov2659.c", i32 1417, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ov2659_get_pdata._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ov2659_get_pdata._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ov2659_ctrl_ops, !53, !"ov2659_ctrl_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov2659.c", i32 1253, i32 35}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov2659.c", i32 874, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ov2659_read.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov2659.c", i32 842, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ov2659_write.__UNIQUE_ID_ddebug293, !59, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov2659.c", i32 1258, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov2659.c", i32 1259, i32 2}
!66 = !{ptr @ov2659_test_pattern_menu, !67, !"ov2659_test_pattern_menu", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov2659.c", i32 1257, i32 27}
!68 = !{ptr @ov2659_subdev_ops, !69, !"ov2659_subdev_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov2659.c", i32 1342, i32 37}
!70 = !{ptr @ov2659_subdev_core_ops, !71, !"ov2659_subdev_core_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov2659.c", i32 1324, i32 42}
!72 = !{ptr @ov2659_subdev_video_ops, !73, !"ov2659_subdev_video_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov2659.c", i32 1330, i32 43}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov2659.c", i32 1173, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ov2659_s_stream.__UNIQUE_ID_ddebug305, !75, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov2659.c", i32 964, i32 2}
!80 = !{ptr @ov2659_set_streaming.__UNIQUE_ID_ddebug297, !79, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov2659.c", i32 968, i32 3}
!83 = !{ptr @ov2659_set_streaming._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ov2659_set_streaming._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ov2659_init_regs, !86, !"ov2659_init_regs", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov2659.c", i32 218, i32 37}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov2659.c", i32 943, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ov2659_set_pixel_clock.__UNIQUE_ID_ddebug296, !88, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ov2659.c", i32 1153, i32 2}
!93 = !{ptr @ov2659_set_frame_size.__UNIQUE_ID_ddebug303, !92, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov2659.c", i32 1162, i32 2}
!96 = !{ptr @ov2659_set_format.__UNIQUE_ID_ddebug304, !95, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!97 = !{ptr @ov2659_subdev_pad_ops, !98, !"ov2659_subdev_pad_ops", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov2659.c", i32 1334, i32 41}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov2659.c", i32 988, i32 2}
!101 = !{ptr @ov2659_enum_mbus_code.__UNIQUE_ID_ddebug298, !100, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov2659.c", i32 1005, i32 2}
!104 = !{ptr @ov2659_enum_frame_sizes.__UNIQUE_ID_ddebug299, !103, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov2659.c", i32 1031, i32 2}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ov2659_get_fmt.__UNIQUE_ID_ddebug300, !106, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov2659.c", i32 1051, i32 2}
!111 = !{ptr @ov2659_get_fmt.__UNIQUE_ID_ddebug301, !110, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov2659.c", i32 1097, i32 2}
!116 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ov2659_set_fmt.__UNIQUE_ID_ddebug302, !115, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov2659.c", i32 1140, i32 4}
!120 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ov2659_set_fmt._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ov2659_set_fmt._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @ov2659_subdev_internal_ops, !124, !"ov2659_subdev_internal_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov2659.c", i32 1348, i32 46}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov2659.c", i32 1316, i32 2}
!127 = !{ptr @ov2659_open.__UNIQUE_ID_ddebug308, !126, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!128 = !{ptr @ov2659_framesizes, !129, !"ov2659_framesizes", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov2659.c", i32 738, i32 38}
!130 = !{ptr @ov2659_qvga, !131, !"ov2659_qvga", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov2659.c", i32 655, i32 32}
!132 = !{ptr @ov2659_vga, !133, !"ov2659_vga", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov2659.c", i32 607, i32 31}
!134 = !{ptr @ov2659_svga, !135, !"ov2659_svga", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov2659.c", i32 559, i32 31}
!136 = !{ptr @ov2659_xga, !137, !"ov2659_xga", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov2659.c", i32 511, i32 31}
!138 = !{ptr @ov2659_720p, !139, !"ov2659_720p", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov2659.c", i32 380, i32 31}
!140 = !{ptr @ov2659_sxga, !141, !"ov2659_sxga", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov2659.c", i32 463, i32 31}
!142 = !{ptr @ov2659_uxga, !143, !"ov2659_uxga", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov2659.c", i32 415, i32 31}
!144 = !{ptr @ov2659_formats, !145, !"ov2659_formats", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov2659.c", i32 801, i32 35}
!146 = !{ptr @ov2659_format_yuyv, !147, !"ov2659_format_yuyv", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov2659.c", i32 778, i32 31}
!148 = !{ptr @ov2659_format_uyvy, !149, !"ov2659_format_uyvy", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ov2659.c", i32 784, i32 31}
!150 = !{ptr @ov2659_format_rgb565, !151, !"ov2659_format_rgb565", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov2659.c", i32 796, i32 31}
!152 = !{ptr @ov2659_format_bggr, !153, !"ov2659_format_bggr", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ov2659.c", i32 790, i32 31}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/ov2659.c", i32 1284, i32 2}
!156 = !{ptr @ov2659_power_on.__UNIQUE_ID_ddebug307, !155, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!157 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov2659.c", i32 1288, i32 3}
!159 = !{ptr @ov2659_power_on._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ov2659_power_on._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov2659.c", i32 1360, i32 2}
!163 = !{ptr @ov2659_detect.__UNIQUE_ID_ddebug309, !162, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/ov2659.c", i32 1364, i32 3}
!166 = !{ptr @ov2659_detect._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ov2659_detect._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/ov2659.c", i32 1379, i32 4}
!170 = !{ptr @ov2659_detect._entry.51, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ov2659_detect._entry_ptr.53, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.55, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/ov2659.c", i32 1383, i32 4}
!174 = !{ptr @ov2659_detect._entry.54, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @ov2659_detect._entry_ptr.56, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.57, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/ov2659.c", i32 928, i32 2}
!178 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ov2659_pll_calc_params.__UNIQUE_ID_ddebug295, !177, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!180 = !{ptr @ctrl1, !181, !"ctrl1", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/ov2659.c", i32 719, i32 34}
!182 = !{ptr @ctrl3, !183, !"ctrl3", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ov2659.c", i32 702, i32 34}
!184 = !{ptr @ov2659_of_match, !185, !"ov2659_of_match", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/ov2659.c", i32 1576, i32 34}
!186 = !{ptr @ov2659_pm_ops, !187, !"ov2659_pm_ops", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/ov2659.c", i32 1565, i32 32}
!188 = !{ptr @ov2659_id, !189, !"ov2659_id", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/ov2659.c", i32 1569, i32 35}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148758393, i64 2148758398, i64 2148758411, i64 2148758455, i64 2148758489, i64 2148758510}
!200 = !{i64 2148275997}
!201 = !{i64 760820, i64 760845, i64 760867, i64 760883, i64 760895, i64 760915, i64 760939, i64 760955, i64 760967}
!202 = !{i64 2148276185}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{!"branch_weights", i32 2000, i32 1}
