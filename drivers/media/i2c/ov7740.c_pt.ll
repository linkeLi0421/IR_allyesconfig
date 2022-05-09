; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov7740.c_pt.bc'
source_filename = "../drivers/media/i2c/ov7740.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ov7740_pixfmt = type { i32, i32, ptr, i32 }
%struct.ov7740_framesize = type { i16, i16, ptr, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.ov7740 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, ptr, ptr, %struct.mutex, i8, ptr, ptr }
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
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ov7740__293_1220_ov7740_i2c_driver_init6 = internal global ptr @ov7740_i2c_driver_init, section ".initcall6.init", align 4
@ov7740_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov7740_remove, ptr @ov7740_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov7740_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7740_pm_ops, ptr null, ptr null }, ptr @ov7740_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov7740_i2c_driver_exit = internal global ptr @ov7740_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"ov7740.description=The V4L2 driver for Omnivision 7740 sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [48 x i8] c"ov7740.author=Songjun Wu <songjun.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"ov7740.file=drivers/media/i2c/ov7740\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"ov7740.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7740\00", [25 x i8] zeroinitializer }, align 32
@ov7740_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov7740_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7740_runtime_suspend, ptr @ov7740_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov7740_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov7740_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1078, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OV7740: fail to get xvclk: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7740_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov7740.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov7740_probe._entry_ptr = internal global ptr @ov7740_probe._entry, section ".printk_index", align 4
@ov7740_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ov7740_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ov7740:1086:(&ov7740_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@ov7740_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1090, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ov7740_probe._entry_ptr.10 = internal global ptr @ov7740_probe._entry.8, section ".printk_index", align 4
@ov7740_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov7740_subdev_core_ops, ptr null, ptr null, ptr @ov7740_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov7740_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov7740_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov7740_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov7740_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov7740->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov7740_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@ov7740_probe._entry_ptr.14 = internal global ptr @ov7740_probe._entry.12, section ".printk_index", align 4
@ov7740_formats = internal constant { [2 x %struct.ov7740_pixfmt], [32 x i8] } { [2 x %struct.ov7740_pixfmt] [%struct.ov7740_pixfmt { i32 8200, i32 8, ptr @ov7740_format_yuyv, i32 4 }, %struct.ov7740_pixfmt { i32 12289, i32 8, ptr @ov7740_format_bggr8, i32 3 }], [32 x i8] zeroinitializer }, align 32
@ov7740_framesizes = internal constant { [1 x %struct.ov7740_framesize], [20 x i8] } { [1 x %struct.ov7740_framesize] [%struct.ov7740_framesize { i16 640, i16 480, ptr @ov7740_vga, i32 106 }], [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov7740_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 927, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get %s GPIO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7740_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov7740_probe_dt._entry_ptr = internal global ptr @ov7740_probe_dt._entry, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ov7740_probe_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 934, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ov7740_probe_dt._entry_ptr.21 = internal global ptr @ov7740_probe_dt._entry.20, section ".printk_index", align 4
@ov7740_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7740_get_register, ptr @ov7740_set_register, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov7740_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7740_set_stream, ptr null, ptr @ov7740_g_frame_interval, ptr @ov7740_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov7740_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov7740_enum_mbus_code, ptr @ov7740_enum_frame_size, ptr @ov7740_enum_frame_interval, ptr @ov7740_get_fmt, ptr @ov7740_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov7740_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov7740:980:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov7740_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov7740_get_volatile_ctrl, ptr null, ptr @ov7740_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov7740_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1031, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"controls initialisation failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov7740_init_controls\00", [43 x i8] zeroinitializer }, align 32
@ov7740_init_controls._entry_ptr = internal global ptr @ov7740_init_controls._entry, section ".printk_index", align 4
@ov7740_init_controls._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 1038, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ov7740_init_controls._entry_ptr.28 = internal global ptr @ov7740_init_controls._entry.26, section ".printk_index", align 4
@ov7740_format_yuyv = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 18, i32 0, i32 0 }, %struct.reg_sequence { i32 54, i32 63, i32 0 }, %struct.reg_sequence { i32 128, i32 127, i32 0 }, %struct.reg_sequence { i32 131, i32 1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ov7740_format_bggr8 = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 54, i32 47, i32 0 }, %struct.reg_sequence { i32 128, i32 1, i32 0 }, %struct.reg_sequence { i32 131, i32 4, i32 0 }], [60 x i8] zeroinitializer }, align 32
@ov7740_vga = internal constant { [106 x %struct.reg_sequence], [296 x i8] } { [106 x %struct.reg_sequence] [%struct.reg_sequence { i32 85, i32 64, i32 0 }, %struct.reg_sequence { i32 17, i32 2, i32 0 }, %struct.reg_sequence { i32 213, i32 16, i32 0 }, %struct.reg_sequence { i32 12, i32 18, i32 0 }, %struct.reg_sequence { i32 13, i32 52, i32 0 }, %struct.reg_sequence { i32 23, i32 37, i32 0 }, %struct.reg_sequence { i32 24, i32 160, i32 0 }, %struct.reg_sequence { i32 25, i32 3, i32 0 }, %struct.reg_sequence { i32 26, i32 240, i32 0 }, %struct.reg_sequence { i32 27, i32 137, i32 0 }, %struct.reg_sequence { i32 34, i32 3, i32 0 }, %struct.reg_sequence { i32 41, i32 24, i32 0 }, %struct.reg_sequence { i32 43, i32 248, i32 0 }, %struct.reg_sequence { i32 44, i32 1, i32 0 }, %struct.reg_sequence { i32 49, i32 160, i32 0 }, %struct.reg_sequence { i32 50, i32 240, i32 0 }, %struct.reg_sequence { i32 51, i32 196, i32 0 }, %struct.reg_sequence { i32 52, i32 0, i32 0 }, %struct.reg_sequence { i32 53, i32 5, i32 0 }, %struct.reg_sequence { i32 4, i32 96, i32 0 }, %struct.reg_sequence { i32 39, i32 128, i32 0 }, %struct.reg_sequence { i32 61, i32 15, i32 0 }, %struct.reg_sequence { i32 62, i32 128, i32 0 }, %struct.reg_sequence { i32 63, i32 64, i32 0 }, %struct.reg_sequence { i32 64, i32 127, i32 0 }, %struct.reg_sequence { i32 65, i32 106, i32 0 }, %struct.reg_sequence { i32 66, i32 41, i32 0 }, %struct.reg_sequence { i32 68, i32 34, i32 0 }, %struct.reg_sequence { i32 69, i32 65, i32 0 }, %struct.reg_sequence { i32 71, i32 2, i32 0 }, %struct.reg_sequence { i32 73, i32 100, i32 0 }, %struct.reg_sequence { i32 74, i32 161, i32 0 }, %struct.reg_sequence { i32 75, i32 64, i32 0 }, %struct.reg_sequence { i32 76, i32 26, i32 0 }, %struct.reg_sequence { i32 77, i32 80, i32 0 }, %struct.reg_sequence { i32 78, i32 19, i32 0 }, %struct.reg_sequence { i32 100, i32 0, i32 0 }, %struct.reg_sequence { i32 103, i32 136, i32 0 }, %struct.reg_sequence { i32 104, i32 26, i32 0 }, %struct.reg_sequence { i32 20, i32 40, i32 0 }, %struct.reg_sequence { i32 36, i32 60, i32 0 }, %struct.reg_sequence { i32 37, i32 48, i32 0 }, %struct.reg_sequence { i32 38, i32 114, i32 0 }, %struct.reg_sequence { i32 80, i32 151, i32 0 }, %struct.reg_sequence { i32 81, i32 31, i32 0 }, %struct.reg_sequence { i32 82, i32 0, i32 0 }, %struct.reg_sequence { i32 83, i32 0, i32 0 }, %struct.reg_sequence { i32 32, i32 0, i32 0 }, %struct.reg_sequence { i32 33, i32 207, i32 0 }, %struct.reg_sequence { i32 80, i32 75, i32 0 }, %struct.reg_sequence { i32 56, i32 20, i32 0 }, %struct.reg_sequence { i32 233, i32 0, i32 0 }, %struct.reg_sequence { i32 86, i32 85, i32 0 }, %struct.reg_sequence { i32 87, i32 255, i32 0 }, %struct.reg_sequence { i32 88, i32 255, i32 0 }, %struct.reg_sequence { i32 89, i32 255, i32 0 }, %struct.reg_sequence { i32 95, i32 4, i32 0 }, %struct.reg_sequence { i32 236, i32 0, i32 0 }, %struct.reg_sequence { i32 19, i32 255, i32 0 }, %struct.reg_sequence { i32 129, i32 63, i32 0 }, %struct.reg_sequence { i32 130, i32 50, i32 0 }, %struct.reg_sequence { i32 56, i32 17, i32 0 }, %struct.reg_sequence { i32 132, i32 112, i32 0 }, %struct.reg_sequence { i32 133, i32 0, i32 0 }, %struct.reg_sequence { i32 134, i32 3, i32 0 }, %struct.reg_sequence { i32 135, i32 1, i32 0 }, %struct.reg_sequence { i32 136, i32 5, i32 0 }, %struct.reg_sequence { i32 137, i32 48, i32 0 }, %struct.reg_sequence { i32 141, i32 48, i32 0 }, %struct.reg_sequence { i32 143, i32 133, i32 0 }, %struct.reg_sequence { i32 147, i32 48, i32 0 }, %struct.reg_sequence { i32 149, i32 133, i32 0 }, %struct.reg_sequence { i32 153, i32 48, i32 0 }, %struct.reg_sequence { i32 155, i32 133, i32 0 }, %struct.reg_sequence { i32 156, i32 8, i32 0 }, %struct.reg_sequence { i32 157, i32 18, i32 0 }, %struct.reg_sequence { i32 158, i32 35, i32 0 }, %struct.reg_sequence { i32 159, i32 69, i32 0 }, %struct.reg_sequence { i32 160, i32 85, i32 0 }, %struct.reg_sequence { i32 161, i32 100, i32 0 }, %struct.reg_sequence { i32 162, i32 114, i32 0 }, %struct.reg_sequence { i32 163, i32 127, i32 0 }, %struct.reg_sequence { i32 164, i32 139, i32 0 }, %struct.reg_sequence { i32 165, i32 149, i32 0 }, %struct.reg_sequence { i32 166, i32 167, i32 0 }, %struct.reg_sequence { i32 167, i32 181, i32 0 }, %struct.reg_sequence { i32 168, i32 203, i32 0 }, %struct.reg_sequence { i32 169, i32 221, i32 0 }, %struct.reg_sequence { i32 170, i32 236, i32 0 }, %struct.reg_sequence { i32 171, i32 26, i32 0 }, %struct.reg_sequence { i32 206, i32 120, i32 0 }, %struct.reg_sequence { i32 207, i32 110, i32 0 }, %struct.reg_sequence { i32 208, i32 10, i32 0 }, %struct.reg_sequence { i32 209, i32 12, i32 0 }, %struct.reg_sequence { i32 210, i32 132, i32 0 }, %struct.reg_sequence { i32 211, i32 144, i32 0 }, %struct.reg_sequence { i32 212, i32 30, i32 0 }, %struct.reg_sequence { i32 90, i32 36, i32 0 }, %struct.reg_sequence { i32 91, i32 31, i32 0 }, %struct.reg_sequence { i32 92, i32 136, i32 0 }, %struct.reg_sequence { i32 93, i32 96, i32 0 }, %struct.reg_sequence { i32 172, i32 110, i32 0 }, %struct.reg_sequence { i32 190, i32 255, i32 0 }, %struct.reg_sequence { i32 191, i32 0, i32 0 }, %struct.reg_sequence { i32 15, i32 29, i32 0 }, %struct.reg_sequence { i32 15, i32 31, i32 0 }], [296 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8200, i64 12289]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 8200, i64 12289]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963788, i64 9963794, i64 9963796, i64 9963797, i64 10094849]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"ov7740_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1210, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1212, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"ov7740_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1204, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ov7740_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1200, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"ov7740_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1194, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1074, i32 45 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1077, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"ov7740_regmap_config\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1058, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1086, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1089, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"ov7740_subdev_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 884, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"ov7740_subdev_internal_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 916, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1121, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1127, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"ov7740_formats\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 693, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"ov7740_framesizes\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 260, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 924, i32 62 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 927, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 931, i32 60 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 934, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"ov7740_subdev_core_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 325, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"ov7740_subdev_video_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 674, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"ov7740_subdev_pad_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 876, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 998, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 980, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"ov7740_ctrl_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 586, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1030, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1037, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"ov7740_format_yuyv\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 680, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"ov7740_format_bggr8\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 687, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"ov7740_vga\00", align 1
@___asan_gen_.171 = private constant [30 x i8] c"../drivers/media/i2c/ov7740.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 143, i32 34 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ov7740_i2c_driver_exit, ptr @__initcall__kmod_ov7740__293_1220_ov7740_i2c_driver_init6, ptr @ov7740_i2c_driver_exit, ptr @ov7740_init_controls._entry, ptr @ov7740_init_controls._entry.26, ptr @ov7740_init_controls._entry_ptr, ptr @ov7740_init_controls._entry_ptr.28, ptr @ov7740_probe._entry, ptr @ov7740_probe._entry.12, ptr @ov7740_probe._entry.8, ptr @ov7740_probe._entry_ptr, ptr @ov7740_probe._entry_ptr.10, ptr @ov7740_probe._entry_ptr.14, ptr @ov7740_probe_dt._entry, ptr @ov7740_probe_dt._entry.20, ptr @ov7740_probe_dt._entry_ptr, ptr @ov7740_probe_dt._entry_ptr.21, ptr @ov7740_i2c_driver, ptr @.str, ptr @ov7740_of_match, ptr @ov7740_pm_ops, ptr @ov7740_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ov7740_probe._key, ptr @ov7740_regmap_config, ptr @.str.7, ptr @.str.9, ptr @ov7740_subdev_ops, ptr @ov7740_subdev_internal_ops, ptr @ov7740_probe.__key, ptr @.str.11, ptr @.str.13, ptr @ov7740_formats, ptr @ov7740_framesizes, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ov7740_subdev_core_ops, ptr @ov7740_subdev_video_ops, ptr @ov7740_subdev_pad_ops, ptr @.str.22, ptr @ov7740_init_controls._key, ptr @.str.23, ptr @ov7740_ctrl_ops, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @ov7740_format_yuyv, ptr @ov7740_format_bggr8, ptr @ov7740_vga], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_framesizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_probe_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_init_controls._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_format_yuyv to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_format_bggr8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7740_vga to i32), i32 1272, i32 1568, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov7740_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov7740_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ov7740_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.ov7740, ptr %1, i32 0, i32 15
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #9
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i17 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %xvclk13.i = getelementptr inbounds %struct.ov7740, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %xvclk13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xvclk13.i, align 4
  tail call void @clk_disable(ptr noundef %8) #9
  tail call void @clk_unprepare(ptr noundef %8) #9
  %pwdn_gpio14.i = getelementptr inbounds %struct.ov7740, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %pwdn_gpio14.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwdn_gpio14.i, align 4
  %tobool15.not.i = icmp eq ptr %10, null
  br i1 %tobool15.not.i, label %pm_runtime_put_noidle.exit.ov7740_set_power.exit_crit_edge, label %if.then16.i

pm_runtime_put_noidle.exit.ov7740_set_power.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_power.exit

if.then16.i:                                      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %10, i32 noundef 0) #9
  br label %ov7740_set_power.exit

ov7740_set_power.exit:                            ; preds = %if.then16.i, %pm_runtime_put_noidle.exit.ov7740_set_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_probe(ptr noundef %client) #2 align 64 {
entry:
  %midh.i = alloca i32, align 4
  %midl.i = alloca i32, align 4
  %pidh.i = alloca i32, align 4
  %pidl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 632, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %xvclk = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %xvclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %xvclk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %1) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i132 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 7) #9
  %resetb_gpio.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 17
  %2 = ptrtoint ptr %resetb_gpio.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i132, ptr %resetb_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end9.ov7740_probe_dt.exit_crit_edge, label %if.end.i

if.end9.ov7740_probe_dt.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_probe_dt.exit

if.end.i:                                         ; preds = %if.end9
  %call7.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 3) #9
  %pwdn_gpio.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 18
  %3 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %pwdn_gpio.i, align 4
  %cmp.i25.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.end.i.ov7740_probe_dt.exit_crit_edge, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i.ov7740_probe_dt.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_probe_dt.exit

ov7740_probe_dt.exit:                             ; preds = %if.end.i.ov7740_probe_dt.exit_crit_edge, %if.end9.ov7740_probe_dt.exit_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.15, %if.end9.ov7740_probe_dt.exit_crit_edge ], [ @.str.19, %if.end.i.ov7740_probe_dt.exit_crit_edge ]
  %pwdn_gpio.sink.i = phi ptr [ %resetb_gpio.i, %if.end9.ov7740_probe_dt.exit_crit_edge ], [ %pwdn_gpio.i, %if.end.i.ov7740_probe_dt.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %.str.19.sink.i) #12
  %4 = ptrtoint ptr %pwdn_gpio.sink.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio.sink.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %ov7740_probe_dt.exit.if.end13_crit_edge, label %ov7740_probe_dt.exit.cleanup_crit_edge

ov7740_probe_dt.exit.cleanup_crit_edge:           ; preds = %ov7740_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ov7740_probe_dt.exit.if.end13_crit_edge:          ; preds = %ov7740_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %ov7740_probe_dt.exit.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %call14 = tail call ptr @__devm_regmap_init_sccb(ptr noundef %client, ptr noundef nonnull @ov7740_regmap_config, ptr noundef nonnull @ov7740_probe._key, ptr noundef nonnull @.str.7) #9
  %regmap = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %regmap, align 4
  %cmp.i133 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %8) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov7740_subdev_ops) #9
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ov7740_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 12
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 1
  %flags25 = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %flags25, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131073, ptr %function, align 4
  %call28 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call fastcc i32 @ov7740_set_power(ptr noundef nonnull %call.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call.i134 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midh.i) #9
  %16 = ptrtoint ptr %midh.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %midh.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midl.i) #9
  %17 = ptrtoint ptr %midl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %midl.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidh.i) #9
  %18 = ptrtoint ptr %pidh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pidh.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidl.i) #9
  %19 = ptrtoint ptr %pidl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %pidl.i, align 4, !annotation !107
  %call.i135 = call i32 @regmap_read(ptr noundef %15, i32 noundef 28, ptr noundef nonnull %midh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i, label %if.end.i136, label %if.end35.ov7740_detect.exit.thread_crit_edge

if.end35.ov7740_detect.exit.thread_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end.i136:                                      ; preds = %if.end35
  %20 = ptrtoint ptr %midh.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %midh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 127
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i136.ov7740_detect.exit.thread_crit_edge

if.end.i136.ov7740_detect.exit.thread_crit_edge:  ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end3.i:                                        ; preds = %if.end.i136
  %call4.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 29, ptr noundef nonnull %midl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.ov7740_detect.exit.thread_crit_edge

if.end3.i.ov7740_detect.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %22 = ptrtoint ptr %midl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %midl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 162, i32 %23)
  %cmp8.not.i = icmp eq i32 %23, 162
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.ov7740_detect.exit.thread_crit_edge

if.end7.i.ov7740_detect.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 10, ptr noundef nonnull %pidh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.ov7740_detect.exit.thread_crit_edge

if.end10.i.ov7740_detect.exit.thread_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %24 = ptrtoint ptr %pidh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pidh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %25)
  %cmp15.not.i = icmp eq i32 %25, 119
  br i1 %cmp15.not.i, label %if.end17.i, label %if.end14.i.ov7740_detect.exit.thread_crit_edge

if.end14.i.ov7740_detect.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end17.i:                                       ; preds = %if.end14.i
  %call18.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 11, ptr noundef nonnull %pidl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.ov7740_detect.exit.thread_crit_edge

if.end17.i.ov7740_detect.exit.thread_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  %26 = ptrtoint ptr %pidl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pidl.i, align 4
  %.off.i = add i32 %27, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %do.body43, label %if.end21.i.ov7740_detect.exit.thread_crit_edge

if.end21.i.ov7740_detect.exit.thread_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_detect.exit.thread

ov7740_detect.exit.thread:                        ; preds = %if.end21.i.ov7740_detect.exit.thread_crit_edge, %if.end17.i.ov7740_detect.exit.thread_crit_edge, %if.end14.i.ov7740_detect.exit.thread_crit_edge, %if.end10.i.ov7740_detect.exit.thread_crit_edge, %if.end7.i.ov7740_detect.exit.thread_crit_edge, %if.end3.i.ov7740_detect.exit.thread_crit_edge, %if.end.i136.ov7740_detect.exit.thread_crit_edge, %if.end35.ov7740_detect.exit.thread_crit_edge
  %retval.0.i137.ph = phi i32 [ -19, %if.end21.i.ov7740_detect.exit.thread_crit_edge ], [ %call18.i, %if.end17.i.ov7740_detect.exit.thread_crit_edge ], [ -19, %if.end14.i.ov7740_detect.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.ov7740_detect.exit.thread_crit_edge ], [ -19, %if.end7.i.ov7740_detect.exit.thread_crit_edge ], [ %call4.i, %if.end3.i.ov7740_detect.exit.thread_crit_edge ], [ -19, %if.end.i136.ov7740_detect.exit.thread_crit_edge ], [ %call.i135, %if.end35.ov7740_detect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidl.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midl.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midh.i) #9
  br label %error_detect

do.body43:                                        ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidl.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midl.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midh.i) #9
  %mutex = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 15
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @ov7740_probe.__key) #9
  %call46 = call fastcc i32 @ov7740_init_controls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end52, label %do.body43.error_init_controls_crit_edge

do.body43.error_init_controls_crit_edge:          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_init_controls

do.end52:                                         ; preds = %do.body43
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr, align 2
  %conv = zext i16 %37 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name59 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 12
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %31, i32 noundef %35, i32 noundef %conv, i32 noundef %shl, ptr noundef %name59) #12
  %fmt = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ov7740_formats, ptr %fmt, align 4
  %frmsize = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %frmsize to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ov7740_framesizes, ptr %frmsize, align 4
  %format = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 640, ptr %format, align 4
  %height4.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 480, ptr %height4.i, align 4
  %colorspace5.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %colorspace5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %colorspace5.i, align 4
  %code.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8200, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %field.i, align 4
  %call61 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %error_async_register

if.end64:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i138 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup

error_async_register:                             ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %46) #9
  br label %error_init_controls

error_init_controls:                              ; preds = %error_async_register, %do.body43.error_init_controls_crit_edge
  %ret.0 = phi i32 [ %call46, %do.body43.error_init_controls_crit_edge ], [ %call61, %error_async_register ]
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_handler.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %48) #9
  call void @mutex_destroy(ptr noundef %mutex) #9
  br label %error_detect

error_detect:                                     ; preds = %error_init_controls, %ov7740_detect.exit.thread
  %ret.1 = phi i32 [ %ret.0, %error_init_controls ], [ %retval.0.i137.ph, %ov7740_detect.exit.thread ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i139 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %49 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xvclk, align 4
  call void @clk_disable(ptr noundef %50) #9
  call void @clk_unprepare(ptr noundef %50) #9
  %pwdn_gpio14.i = getelementptr inbounds %struct.ov7740, ptr %call.i, i32 0, i32 18
  %51 = ptrtoint ptr %pwdn_gpio14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pwdn_gpio14.i, align 4
  %tobool15.not.i = icmp eq ptr %52, null
  br i1 %tobool15.not.i, label %error_detect.cleanup_crit_edge, label %if.then16.i

error_detect.cleanup_crit_edge:                   ; preds = %error_detect
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16.i:                                      ; preds = %error_detect
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i140 = call i32 @gpiod_direction_output(ptr noundef nonnull %52, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %error_detect.cleanup_crit_edge, %if.end64, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then17, %ov7740_probe_dt.exit.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %8, %if.then17 ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ], [ %6, %ov7740_probe_dt.exit.cleanup_crit_edge ], [ %call28, %if.end24.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %ret.1, %error_detect.cleanup_crit_edge ], [ %ret.1, %if.then16.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7740_set_power(ptr nocapture noundef readonly %ov7740, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %xvclk13 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 6
  %0 = ptrtoint ptr %xvclk13 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xvclk13, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pwdn_gpio = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 18
  %2 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwdn_gpio, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %3, i32 noundef 0) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %resetb_gpio = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 17
  %4 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resetb_gpio, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %6 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resetb_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %pwdn_gpio14 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 18
  %8 = ptrtoint ptr %pwdn_gpio14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwdn_gpio14, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.then16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %9, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.else.cleanup_crit_edge, %if.then9, %if.end7.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sccb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7740_init_controls(ptr noundef %ov7740) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov7740, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl_handler = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 7
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 12, ptr noundef nonnull @ov7740_init_controls._key, ptr noundef nonnull @.str.23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 15
  %lock = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mutex, ptr %lock, align 4
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %3 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %3, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %blue_balance = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %blue_balance to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %blue_balance, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %red_balance = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %red_balance to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %red_balance, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963776, i64 noundef -255, i64 noundef 255, i64 noundef 1, i64 noundef 0) #9
  %brightness = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 13
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %brightness, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 32) #9
  %contrast = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 14
  %8 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %contrast, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 128) #9
  %9 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %9, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %11 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %11, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %vflip = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %vflip, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 500) #9
  %14 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 8
  %gain = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %gain, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %14, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 500) #9
  %17 = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 11
  %exposure = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %exposure, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7740_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #9
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %17, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %3, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %14, i8 noundef zeroext 0, i1 noundef zeroext true) #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %17, i8 noundef zeroext 1, i1 noundef zeroext true) #9
  %error = getelementptr inbounds %struct.ov7740, ptr %ov7740, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %21) #12
  br label %error30

if.end19:                                         ; preds = %if.end
  %call20 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %call20) #12
  br label %error30

if.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler29 = getelementptr inbounds %struct.v4l2_subdev, ptr %ov7740, i32 0, i32 8
  %22 = ptrtoint ptr %ctrl_handler29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctrl_handler, ptr %ctrl_handler29, align 4
  br label %cleanup

error30:                                          ; preds = %do.end25, %if.then17
  %ret.0 = phi i32 [ %21, %if.then17 ], [ %call20, %do.end25 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %error30, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error30 ], [ 0, %if.end27 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_get_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg2, align 1
  %5 = trunc i64 %4 to i32
  %conv = and i32 %5, 255
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv3 = zext i32 %7 to i64
  %val4 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %8 = ptrtoint ptr %val4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv3, ptr %val4, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_set_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg2, align 1
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 255
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %val, align 1
  %7 = trunc i64 %6 to i32
  %conv4 = and i32 %7, 255
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %streaming = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 16
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !108
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3 = icmp ne i32 %enable, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !105
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %fmt.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 3
  %6 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end9.if.end5.i_crit_edge, label %if.then.i40

if.end9.if.end5.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i40:                                      ; preds = %if.end9
  %regmap.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %regs.i = getelementptr inbounds %struct.ov7740_pixfmt, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %reg_num.i = getelementptr inbounds %struct.ov7740_pixfmt, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_num.i, align 4
  %call.i39 = tail call i32 @regmap_multi_reg_write(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool3.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool3.not.i, label %if.then.i40.if.end5.i_crit_edge, label %if.then.i40.err_rpm_put_crit_edge

if.then.i40.err_rpm_put_crit_edge:                ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rpm_put

if.then.i40.if.end5.i_crit_edge:                  ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i40.if.end5.i_crit_edge, %if.end9.if.end5.i_crit_edge
  %frmsize.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 4
  %14 = ptrtoint ptr %frmsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frmsize.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %if.end5.i.ov7740_start_streaming.exit_crit_edge, label %if.then7.i

if.end5.i.ov7740_start_streaming.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_start_streaming.exit

if.then7.i:                                       ; preds = %if.end5.i
  %regmap8.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 5
  %16 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap8.i, align 4
  %regs10.i = getelementptr inbounds %struct.ov7740_framesize, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs10.i, align 4
  %reg_num12.i = getelementptr inbounds %struct.ov7740_framesize, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %reg_num12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_num12.i, align 4
  %call13.i = tail call i32 @regmap_multi_reg_write(ptr noundef %17, ptr noundef %19, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then7.i.ov7740_start_streaming.exit_crit_edge, label %if.then7.i.err_rpm_put_crit_edge

if.then7.i.err_rpm_put_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rpm_put

if.then7.i.ov7740_start_streaming.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_start_streaming.exit

ov7740_start_streaming.exit:                      ; preds = %if.then7.i.ov7740_start_streaming.exit_crit_edge, %if.end5.i.ov7740_start_streaming.exit_crit_edge
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %22 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_handler.i, align 4
  %call18.i = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool11.not = icmp eq i32 %call18.i, 0
  br i1 %tobool11.not, label %ov7740_start_streaming.exit.if.end16_crit_edge, label %ov7740_start_streaming.exit.err_rpm_put_crit_edge

ov7740_start_streaming.exit.err_rpm_put_crit_edge: ; preds = %ov7740_start_streaming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rpm_put

ov7740_start_streaming.exit.if.end16_crit_edge:   ; preds = %ov7740_start_streaming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i42 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %ov7740_start_streaming.exit.if.end16_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %24 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %streaming, align 4
  br label %cleanup

err_rpm_put:                                      ; preds = %ov7740_start_streaming.exit.err_rpm_put_crit_edge, %if.then7.i.err_rpm_put_crit_edge, %if.then.i40.err_rpm_put_crit_edge
  %retval.0.i4148 = phi i32 [ %call18.i, %ov7740_start_streaming.exit.err_rpm_put_crit_edge ], [ %call13.i, %if.then7.i.err_rpm_put_crit_edge ], [ %call.i39, %if.then.i40.err_rpm_put_crit_edge ]
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %err_rpm_put, %if.end16, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i4148, %err_rpm_put ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ov7740_g_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %ival) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 60, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ov7740_s_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %ival) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 60, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7740_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [2 x %struct.ov7740_pixfmt], ptr @ov7740_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7740_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 640, ptr %max_width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %5 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 640, ptr %min_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %6 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 480, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 480, ptr %min_height, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7740_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %5)
  %cmp3.not = icmp eq i32 %5, 640
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.end2
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %7)
  %cmp4.not = icmp eq i32 %7, 480
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 60, ptr %denominator, align 4
  br label %return

return:                                           ; preds = %if.end6, %lor.lhs.false.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, !prof !109

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format1, ptr %5, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %format3 = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %format2, ptr %format3, i32 48)
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code.i, align 4
  br i1 %cmp, label %if.then1, label %if.end10

if.then1:                                         ; preds = %if.end
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.inc.1.i [
    i32 8200, label %if.then1.if.end5.i_crit_edge
    i32 12289, label %if.end5.fold.split.i
  ]

if.then1.if.end5.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

for.inc.1.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8200, ptr %code.i, align 4
  br label %if.end5.i

if.end5.fold.split.i:                             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.fold.split.i, %for.inc.1.i, %if.then1.if.end5.i_crit_edge
  %index.1.i = phi i32 [ 0, %for.inc.1.i ], [ 0, %if.then1.if.end5.i_crit_edge ], [ 1, %if.end5.fold.split.i ]
  %8 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %9)
  %cmp14.not.i = icmp ugt i32 %9, 640
  br i1 %cmp14.not.i, label %if.end5.i.if.then33.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.then33.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %height17.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %11)
  %cmp18.not.i = icmp ugt i32 %11, 480
  br i1 %cmp18.not.i, label %land.lhs.true.i.if.then33.i_crit_edge, label %for.end30.i

land.lhs.true.i.if.then33.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

for.end30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 640, ptr %format2, align 4
  br label %ov7740_try_fmt_internal.exit

if.then33.i:                                      ; preds = %land.lhs.true.i.if.then33.i_crit_edge, %if.end5.i.if.then33.i_crit_edge
  %13 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 640, ptr %format2, align 4
  %height39.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  br label %ov7740_try_fmt_internal.exit

ov7740_try_fmt_internal.exit:                     ; preds = %if.then33.i, %for.end30.i
  %height17.sink.i = phi ptr [ %height17.i, %for.end30.i ], [ %height39.i, %if.then33.i ]
  %14 = ptrtoint ptr %height17.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 480, ptr %height17.sink.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr [2 x %struct.ov7740_pixfmt], ptr @ov7740_formats, i32 0, i32 %index.1.i, i32 1
  %16 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %colorspace.i, align 4
  %colorspace46.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %colorspace46.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %colorspace46.i, align 4
  %format.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %format.i, ptr %format2, i32 48)
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
  br i1 %cmp.not.i, label %ov7740_try_fmt_internal.exit.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !110

ov7740_try_fmt_internal.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %ov7740_try_fmt_internal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %ov7740_try_fmt_internal.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %ov7740_try_fmt_internal.exit.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %21, %ov7740_try_fmt_internal.exit.v4l2_subdev_get_try_format.exit_crit_edge ]
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %spec.select.i
  %26 = call ptr @memcpy(ptr %arrayidx.i, ptr %format2, i32 48)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %27 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %for.inc.1.i38 [
    i32 8200, label %if.end10.if.end5.i41_crit_edge
    i32 12289, label %if.end5.fold.split.i39
  ]

if.end10.if.end5.i41_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i41

for.inc.1.i38:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8200, ptr %code.i, align 4
  br label %if.end5.i41

if.end5.fold.split.i39:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i41

if.end5.i41:                                      ; preds = %if.end5.fold.split.i39, %for.inc.1.i38, %if.end10.if.end5.i41_crit_edge
  %index.1.i40 = phi i32 [ 0, %for.inc.1.i38 ], [ 0, %if.end10.if.end5.i41_crit_edge ], [ 1, %if.end5.fold.split.i39 ]
  %add.ptr8.i = getelementptr %struct.ov7740_pixfmt, ptr @ov7740_formats, i32 %index.1.i40
  %29 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %format2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %30)
  %cmp14.not.i42 = icmp ugt i32 %30, 640
  br i1 %cmp14.not.i42, label %if.end5.i41.if.then33.i48_crit_edge, label %land.lhs.true.i45

if.end5.i41.if.then33.i48_crit_edge:              ; preds = %if.end5.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i48

land.lhs.true.i45:                                ; preds = %if.end5.i41
  %height17.i43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height17.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height17.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %32)
  %cmp18.not.i44 = icmp ugt i32 %32, 480
  br i1 %cmp18.not.i44, label %land.lhs.true.i45.if.then33.i48_crit_edge, label %for.end30.i46

land.lhs.true.i45.if.then33.i48_crit_edge:        ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i48

for.end30.i46:                                    ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 640, ptr %format2, align 4
  br label %ov7740_try_fmt_internal.exit54

if.then33.i48:                                    ; preds = %land.lhs.true.i45.if.then33.i48_crit_edge, %if.end5.i41.if.then33.i48_crit_edge
  %34 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 640, ptr %format2, align 4
  %height39.i47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  br label %ov7740_try_fmt_internal.exit54

ov7740_try_fmt_internal.exit54:                   ; preds = %if.then33.i48, %for.end30.i46
  %height17.sink.i49 = phi ptr [ %height17.i43, %for.end30.i46 ], [ %height39.i47, %if.then33.i48 ]
  %35 = ptrtoint ptr %height17.sink.i49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 480, ptr %height17.sink.i49, align 4
  %field.i50 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %field.i50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field.i50, align 4
  %colorspace.i51 = getelementptr [2 x %struct.ov7740_pixfmt], ptr @ov7740_formats, i32 0, i32 %index.1.i40, i32 1
  %37 = ptrtoint ptr %colorspace.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %colorspace.i51, align 4
  %colorspace46.i52 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %colorspace46.i52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %colorspace46.i52, align 4
  %format.i53 = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 2
  %40 = call ptr @memcpy(ptr %format.i53, ptr %format2, i32 48)
  %fmt = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 3
  %41 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr8.i, ptr %fmt, align 4
  %frmsize = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 4
  %42 = ptrtoint ptr %frmsize to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ov7740_framesizes, ptr %frmsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %ov7740_try_fmt_internal.exit54, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %ov7740_try_fmt_internal.exit54 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !109

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %frmsize.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 4
  %6 = ptrtoint ptr %frmsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frmsize.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %conv.i5 = zext i16 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i5, ptr %5, align 4
  %11 = load ptr, ptr %frmsize.i, align 4
  %height.i = getelementptr inbounds %struct.ov7740_framesize, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %height.i, align 2
  %conv3.i = zext i16 %13 to i32
  %height4.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv3.i, ptr %height4.i, align 4
  %fmt.i = getelementptr inbounds %struct.ov7740, ptr %sd, i32 0, i32 3
  %15 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt.i, align 4
  %colorspace.i = getelementptr inbounds %struct.ov7740_pixfmt, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %colorspace.i, align 4
  %colorspace5.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %colorspace5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %colorspace5.i, align 4
  %20 = load ptr, ptr %fmt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_get_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %value0.i7 = alloca i32, align 4
  %value1.i8 = alloca i32, align 4
  %value0.i = alloca i32, align 4
  %value1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963794, label %sw.bb
    i32 10094849, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %regmap1.i = getelementptr i8, ptr %1, i32 -8
  %5 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value0.i) #9
  %7 = ptrtoint ptr %value0.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value0.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1.i) #9
  %8 = ptrtoint ptr %value1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value1.i, align 4, !annotation !107
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %sw.bb.ov7740_get_gain.exit_crit_edge, label %if.end.i

sw.bb.ov7740_get_gain.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_gain.exit

if.end.i:                                         ; preds = %sw.bb
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %value0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ov7740_get_gain.exit_crit_edge

if.end.i.ov7740_get_gain.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_gain.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 21, ptr noundef nonnull %value1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.ov7740_get_gain.exit_crit_edge

if.end4.i.ov7740_get_gain.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_gain.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value1.i, align 4
  %shl.i = shl i32 %12, 8
  %13 = ptrtoint ptr %value0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value0.i, align 4
  %and.i = and i32 %14, 255
  %or.i = or i32 %and.i, %shl.i
  %gain.i = getelementptr i8, ptr %1, i32 188
  %15 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gain.i, align 4
  %val9.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %val9.i, align 4
  br label %ov7740_get_gain.exit

ov7740_get_gain.exit:                             ; preds = %if.end8.i, %if.end4.i.ov7740_get_gain.exit_crit_edge, %if.end.i.ov7740_get_gain.exit_crit_edge, %sw.bb.ov7740_get_gain.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end8.i ], [ 0, %sw.bb.ov7740_get_gain.exit_crit_edge ], [ %call.i, %if.end.i.ov7740_get_gain.exit_crit_edge ], [ %call5.i, %if.end4.i.ov7740_get_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value0.i) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %regmap1.i9 = getelementptr i8, ptr %1, i32 -8
  %18 = ptrtoint ptr %regmap1.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap1.i9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value0.i7) #9
  %20 = ptrtoint ptr %value0.i7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %value0.i7, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1.i8) #9
  %21 = ptrtoint ptr %value1.i8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %value1.i8, align 4, !annotation !107
  %val.i10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp eq i32 %23, 1
  br i1 %cmp.i, label %sw.bb1.ov7740_get_exp.exit_crit_edge, label %if.end.i13

sw.bb1.ov7740_get_exp.exit_crit_edge:             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_exp.exit

if.end.i13:                                       ; preds = %sw.bb1
  %call.i11 = call i32 @regmap_read(ptr noundef %19, i32 noundef 16, ptr noundef nonnull %value0.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end3.i, label %if.end.i13.ov7740_get_exp.exit_crit_edge

if.end.i13.ov7740_get_exp.exit_crit_edge:         ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_exp.exit

if.end3.i:                                        ; preds = %if.end.i13
  %call4.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 15, ptr noundef nonnull %value1.i8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.ov7740_get_exp.exit_crit_edge

if.end3.i.ov7740_get_exp.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_get_exp.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %value1.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value1.i8, align 4
  %shl.i14 = shl i32 %25, 8
  %26 = ptrtoint ptr %value0.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value0.i7, align 4
  %and.i15 = and i32 %27, 255
  %or.i16 = or i32 %and.i15, %shl.i14
  %exposure.i = getelementptr i8, ptr %1, i32 216
  %28 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exposure.i, align 4
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i16, ptr %val8.i, align 4
  br label %ov7740_get_exp.exit

ov7740_get_exp.exit:                              ; preds = %if.end7.i, %if.end3.i.ov7740_get_exp.exit_crit_edge, %if.end.i13.ov7740_get_exp.exit_crit_edge, %sw.bb1.ov7740_get_exp.exit_crit_edge
  %retval.0.i17 = phi i32 [ 0, %if.end7.i ], [ 0, %sw.bb1.ov7740_get_exp.exit_crit_edge ], [ %call.i11, %if.end.i13.ov7740_get_exp.exit_crit_edge ], [ %call4.i, %if.end3.i.ov7740_get_exp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value1.i8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value0.i7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %ov7740_get_exp.exit, %ov7740_get_gain.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i17, %ov7740_get_exp.exit ], [ %retval.0.i, %ov7740_get_gain.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %reg.i102 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -140
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %regmap1 = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963778, label %sw.bb5
    i32 9963776, label %sw.bb8
    i32 9963777, label %sw.bb11
    i32 9963797, label %sw.bb14
    i32 9963796, label %sw.bb19
    i32 9963794, label %sw.bb26
    i32 10094849, label %sw.bb35
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val3, align 4
  %11 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i, align 4, !annotation !107
  %call.i77 = call i32 @regmap_read(ptr noundef %12, i32 noundef 128, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end8.i_crit_edge

sw.bb.if.end8.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  %and.i = and i32 %15, -21
  %masksel.i = select i1 %tobool2.not.i, i32 0, i32 20
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %value.i, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 128, i32 noundef %storemerge.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.ov7740_set_white_balance.exit_crit_edge

if.then.i.ov7740_set_white_balance.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_white_balance.exit

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %sw.bb.if.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not.i = icmp eq i32 %10, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end8.i
  %blue_balance.i = getelementptr i8, ptr %1, i32 196
  %16 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blue_balance.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 1, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then10.i.ov7740_set_white_balance.exit_crit_edge

if.then10.i.ov7740_set_white_balance.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_white_balance.exit

if.end14.i:                                       ; preds = %if.then10.i
  %red_balance.i = getelementptr i8, ptr %1, i32 200
  %20 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %red_balance.i, align 4
  %val15.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val15.i, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 2, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.end14.i.ov7740_set_white_balance.exit_crit_edge

if.end14.i.ov7740_set_white_balance.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_white_balance.exit

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end14.i.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  br label %ov7740_set_white_balance.exit

ov7740_set_white_balance.exit:                    ; preds = %if.end20.i, %if.end14.i.ov7740_set_white_balance.exit_crit_edge, %if.then10.i.ov7740_set_white_balance.exit_crit_edge, %if.then.i.ov7740_set_white_balance.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.i ], [ %call4.i, %if.then.i.ov7740_set_white_balance.exit_crit_edge ], [ %call11.i, %if.then10.i.ov7740_set_white_balance.exit_crit_edge ], [ %call16.i, %if.end14.i.ov7740_set_white_balance.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val6, align 4
  %conv1.i = and i32 %25, 255
  %call.i78 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 221, i32 noundef %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end.i, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i80 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 222, i32 noundef %conv1.i) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val9, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 19, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 19, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false) #9
  %value.lobit.i = lshr i32 %27, 31
  %conv6.i = and i32 %28, 255
  %call7.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 227, i32 noundef %conv6.i) #9
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 228, i32 noundef 8, i32 noundef %value.lobit.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val12, align 4
  %conv1.i82 = and i32 %30, 255
  %call.i83 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 226, i32 noundef %conv1.i82) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool16.not = icmp eq i32 %32, 0
  %conv17 = select i1 %tobool16.not, i32 0, i32 128
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 128, i32 noundef %conv17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  %conv24 = select i1 %tobool21.not, i32 0, i32 64
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 64, i32 noundef %conv24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool28.not = icmp eq i32 %36, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb26
  %gain = getelementptr i8, ptr %1, i32 188
  %37 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gain, align 4
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val30, align 4
  %and.i86 = and i32 %40, 255
  %call.i87 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %and.i86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i90, label %if.then29.sw.epilog_crit_edge

if.then29.sw.epilog_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i90:                                       ; preds = %if.then29
  %41 = lshr i32 %40, 8
  %and1.i = and i32 %41, 3
  %call.i.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 21, i32 noundef 3, i32 noundef %and1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool3.not.i = icmp eq i32 %call.i.i89, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i90.sw.epilog_crit_edge

if.end.i90.sw.epilog_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then4.i:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 19, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %reg.i, align 4, !annotation !107
  %call.i92 = call i32 @regmap_read(ptr noundef %5, i32 noundef 19, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.then2.i, label %if.else.ov7740_set_autogain.exit_crit_edge

if.else.ov7740_set_autogain.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_autogain.exit

if.then2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %44, 4
  store i32 %or.i, ptr %reg.i, align 4
  %call4.i94 = call i32 @regmap_write(ptr noundef %5, i32 noundef 19, i32 noundef %or.i) #9
  br label %ov7740_set_autogain.exit

ov7740_set_autogain.exit:                         ; preds = %if.then2.i, %if.else.ov7740_set_autogain.exit_crit_edge
  %retval.0.i95 = phi i32 [ %call4.i94, %if.then2.i ], [ %call.i92, %if.else.ov7740_set_autogain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %if.then38, label %if.else41

if.then38:                                        ; preds = %sw.bb35
  %exposure = getelementptr i8, ptr %1, i32 216
  %47 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %exposure, align 4
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val39, align 4
  %call.i.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 19, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool.not.i97 = icmp eq i32 %call.i.i96, 0
  br i1 %tobool.not.i97, label %if.end.i100, label %if.then38.sw.epilog_crit_edge

if.then38.sw.epilog_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i100:                                      ; preds = %if.then38
  %conv1.i98 = and i32 %50, 255
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 16, i32 noundef %conv1.i98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i99 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i99, label %if.end5.i, label %if.end.i100.sw.epilog_crit_edge

if.end.i100.sw.epilog_crit_edge:                  ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  %51 = lshr i32 %50, 8
  %conv7.i = and i32 %51, 255
  %call8.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 15, i32 noundef %conv7.i) #9
  br label %sw.epilog

if.else41:                                        ; preds = %sw.bb35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i102) #9
  %52 = ptrtoint ptr %reg.i102 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %reg.i102, align 4, !annotation !107
  %call.i103 = call i32 @regmap_read(ptr noundef %5, i32 noundef 19, ptr noundef nonnull %reg.i102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.then.i109, label %if.else41.ov7740_set_autoexp.exit_crit_edge

if.else41.ov7740_set_autoexp.exit_crit_edge:      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_autoexp.exit

if.then.i109:                                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  %53 = ptrtoint ptr %reg.i102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg.i102, align 4
  %and.i105 = and i32 %54, -6
  %masksel.i106 = select i1 %cmp.i, i32 5, i32 0
  %storemerge.i107 = or i32 %and.i105, %masksel.i106
  store i32 %storemerge.i107, ptr %reg.i102, align 4
  %call2.i108 = call i32 @regmap_write(ptr noundef %5, i32 noundef 19, i32 noundef %storemerge.i107) #9
  br label %ov7740_set_autoexp.exit

ov7740_set_autoexp.exit:                          ; preds = %if.then.i109, %if.else41.ov7740_set_autoexp.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i103, %if.else41.ov7740_set_autoexp.exit_crit_edge ], [ %call2.i108, %if.then.i109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i102) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %ov7740_set_autoexp.exit, %if.end5.i, %if.end.i100.sw.epilog_crit_edge, %if.then38.sw.epilog_crit_edge, %ov7740_set_autogain.exit, %if.then4.i, %if.end.i90.sw.epilog_crit_edge, %if.then29.sw.epilog_crit_edge, %sw.bb19, %sw.bb14, %sw.bb11, %sw.bb8, %if.end.i, %sw.bb5.sw.epilog_crit_edge, %ov7740_set_white_balance.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %ov7740_set_autoexp.exit ], [ %retval.0.i95, %ov7740_set_autogain.exit ], [ %call.i85, %sw.bb19 ], [ %call.i84, %sw.bb14 ], [ %call.i83, %sw.bb11 ], [ 0, %sw.bb8 ], [ %retval.0.i, %ov7740_set_white_balance.exit ], [ -22, %if.end.sw.epilog_crit_edge ], [ %call4.i80, %if.end.i ], [ %call.i78, %sw.bb5.sw.epilog_crit_edge ], [ %call.i87, %if.then29.sw.epilog_crit_edge ], [ %call.i.i89, %if.end.i90.sw.epilog_crit_edge ], [ %call.i13.i, %if.then4.i ], [ %call8.i, %if.end5.i ], [ %call.i.i96, %if.then38.sw.epilog_crit_edge ], [ %call2.i, %if.end.i100.sw.epilog_crit_edge ]
  %call.i110 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xvclk13.i = getelementptr inbounds %struct.ov7740, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xvclk13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk13.i, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %pwdn_gpio14.i = getelementptr inbounds %struct.ov7740, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %pwdn_gpio14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio14.i, align 4
  %tobool15.not.i = icmp eq ptr %5, null
  br i1 %tobool15.not.i, label %entry.ov7740_set_power.exit_crit_edge, label %if.then16.i

entry.ov7740_set_power.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov7740_set_power.exit

if.then16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %ov7740_set_power.exit

ov7740_set_power.exit:                            ; preds = %if.then16.i, %entry.ov7740_set_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7740_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ov7740_set_power(ptr noundef %1, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_ov7740__293_1220_ov7740_i2c_driver_init6, !1, !"__initcall__kmod_ov7740__293_1220_ov7740_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov7740.c", i32 1220, i32 1}
!2 = !{ptr @__exitcall_ov7740_i2c_driver_exit, !1, !"__exitcall_ov7740_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov7740.c", i32 1222, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov7740.c", i32 1223, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov7740.c", i32 1224, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov7740.c", i32 1212, i32 11}
!12 = !{ptr @ov7740_i2c_driver, !13, !"ov7740_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov7740.c", i32 1210, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov7740.c", i32 1074, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov7740.c", i32 1077, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ov7740_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ov7740_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ov7740_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov7740.c", i32 1086, i32 19}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov7740.c", i32 1089, i32 3}
!29 = !{ptr @ov7740_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ov7740_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ov7740_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov7740.c", i32 1121, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov7740.c", i32 1127, i32 2}
!36 = !{ptr @ov7740_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ov7740_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov7740.c", i32 924, i32 62}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov7740.c", i32 927, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ov7740_probe_dt._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov7740_probe_dt._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov7740.c", i32 931, i32 60}
!48 = !{ptr @ov7740_probe_dt._entry.20, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov7740.c", i32 934, i32 3}
!50 = !{ptr @ov7740_probe_dt._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ov7740_regmap_config, !52, !"ov7740_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ov7740.c", i32 1058, i32 35}
!53 = !{ptr @ov7740_subdev_ops, !54, !"ov7740_subdev_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov7740.c", i32 884, i32 37}
!55 = !{ptr @ov7740_subdev_core_ops, !56, !"ov7740_subdev_core_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov7740.c", i32 325, i32 42}
!57 = !{ptr @ov7740_subdev_video_ops, !58, !"ov7740_subdev_video_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ov7740.c", i32 674, i32 43}
!59 = !{ptr @ov7740_subdev_pad_ops, !60, !"ov7740_subdev_pad_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/ov7740.c", i32 876, i32 41}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!63 = !{ptr @ov7740_subdev_internal_ops, !64, !"ov7740_subdev_internal_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/ov7740.c", i32 916, i32 46}
!65 = !{ptr @ov7740_init_controls._key, !66, !"_key", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov7740.c", i32 980, i32 8}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov7740.c", i32 1030, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ov7740_init_controls._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ov7740_init_controls._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov7740.c", i32 1037, i32 3}
!75 = !{ptr @ov7740_init_controls._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ov7740_init_controls._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ov7740_ctrl_ops, !78, !"ov7740_ctrl_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov7740.c", i32 586, i32 35}
!79 = !{ptr @ov7740_formats, !80, !"ov7740_formats", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov7740.c", i32 693, i32 35}
!81 = !{ptr @ov7740_format_yuyv, !82, !"ov7740_format_yuyv", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov7740.c", i32 680, i32 34}
!83 = !{ptr @ov7740_format_bggr8, !84, !"ov7740_format_bggr8", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov7740.c", i32 687, i32 34}
!85 = !{ptr @ov7740_framesizes, !86, !"ov7740_framesizes", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov7740.c", i32 260, i32 38}
!87 = !{ptr @ov7740_vga, !88, !"ov7740_vga", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov7740.c", i32 143, i32 34}
!89 = !{ptr @ov7740_of_match, !90, !"ov7740_of_match", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/ov7740.c", i32 1204, i32 34}
!91 = !{ptr @ov7740_pm_ops, !92, !"ov7740_pm_ops", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ov7740.c", i32 1200, i32 32}
!93 = !{ptr @ov7740_id, !94, !"ov7740_id", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov7740.c", i32 1194, i32 35}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148265598}
!105 = !{i64 750421, i64 750446, i64 750468, i64 750484, i64 750496, i64 750516, i64 750540, i64 750556, i64 750568}
!106 = !{i64 2148265786}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
