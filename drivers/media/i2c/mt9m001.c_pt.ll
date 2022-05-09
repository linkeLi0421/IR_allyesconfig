; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9m001.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9m001.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt9m001_datafmt = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mt9m001_reg = type { i8, i16 }
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
%struct.mt9m001 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.100, i8, %struct.mutex, %struct.v4l2_rect, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, %struct.media_pad }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_mt9m001__314_885_mt9m001_i2c_driver_init6 = internal global ptr @mt9m001_i2c_driver_init, section ".initcall6.init", align 4
@mt9m001_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @mt9m001_remove, ptr @mt9m001_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt9m001_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m001_pm_ops, ptr null, ptr null }, ptr @mt9m001_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9m001_i2c_driver_exit = internal global ptr @mt9m001_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description315 = internal constant [49 x i8] c"mt9m001.description=Micron MT9M001 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [61 x i8] c"mt9m001.author=Guennadi Liakhovetski <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [39 x i8] c"mt9m001.file=drivers/media/i2c/mt9m001\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [23 x i8] c"mt9m001.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9m001\00", [24 x i8] zeroinitializer }, align 32
@mt9m001_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,mt9m001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt9m001_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m001_power_off, ptr @mt9m001_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt9m001_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9m001\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9m001_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9m001_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9m001.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9m001_probe._entry_ptr = internal global ptr @mt9m001_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mt9m001_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9m001_subdev_core_ops, ptr null, ptr null, ptr @mt9m001_subdev_video_ops, ptr null, ptr null, ptr @mt9m001_subdev_sensor_ops, ptr @mt9m001_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9m001_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mt9m001:764:(&mt9m001->hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@mt9m001_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @mt9m001_g_volatile_ctrl, ptr null, ptr @mt9m001_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9m001_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mt9m001->mutex\00", [16 x i8] zeroinitializer }, align 32
@mt9m001_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m001_g_register, ptr @mt9m001_s_register, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@mt9m001_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m001_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9m001_subdev_sensor_ops = internal constant { %struct.v4l2_subdev_sensor_ops, [24 x i8] } { %struct.v4l2_subdev_sensor_ops { ptr @mt9m001_g_skip_top_lines, ptr null }, [24 x i8] zeroinitializer }, align 32
@mt9m001_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @mt9m001_init_cfg, ptr @mt9m001_enum_mbus_code, ptr null, ptr null, ptr @mt9m001_get_fmt, ptr @mt9m001_set_fmt, ptr @mt9m001_get_selection, ptr @mt9m001_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m001_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9m001_colour_fmts = internal constant { [2 x %struct.mt9m001_datafmt], [16 x i8] } { [2 x %struct.mt9m001_datafmt] [%struct.mt9m001_datafmt { i32 12295, i32 8 }, %struct.mt9m001_datafmt { i32 12289, i32 8 }], [16 x i8] zeroinitializer }, align 32
@mt9m001_s_ctrl.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt9m001_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting gain %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mt9m001_s_ctrl.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting gain from %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mt9m001_s_ctrl.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.14, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting shutter width from %d to %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@mt9m001_video_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9m001_video_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mt9m001_monochrome_fmts = internal constant { [2 x %struct.mt9m001_datafmt], [16 x i8] } { [2 x %struct.mt9m001_datafmt] [%struct.mt9m001_datafmt { i32 8202, i32 7 }, %struct.mt9m001_datafmt { i32 8193, i32 7 }], [16 x i8] zeroinitializer }, align 32
@mt9m001_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 611, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No MT9M001 chip detected, register read %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt9m001_video_probe._entry_ptr = internal global ptr @mt9m001_video_probe._entry, section ".printk_index", align 4
@mt9m001_video_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 619, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Detected a MT9M001 chip ID %x (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9m001_video_probe._entry_ptr.22 = internal global ptr @mt9m001_video_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C12STM\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"C12ST\00", [26 x i8] zeroinitializer }, align 32
@mt9m001_video_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 623, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialise the camera\0A\00", [63 x i8] zeroinitializer }, align 32
@mt9m001_video_probe._entry_ptr.27 = internal global ptr @mt9m001_video_probe._entry.25, section ".printk_index", align 4
@mt9m001_init.init_regs = internal constant { [3 x %struct.mt9m001_reg], [20 x i8] } { [3 x %struct.mt9m001_reg] [%struct.mt9m001_reg { i8 13, i16 1 }, %struct.mt9m001_reg { i8 13, i16 0 }, %struct.mt9m001_reg { i8 7, i16 0 }], [20 x i8] zeroinitializer }, align 32
@mt9m001_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt9m001_init\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 33809, i64 33825, i64 33841]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 9963795, i64 9963797, i64 10094849]
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"mt9m001_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 874, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 876, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"mt9m001_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 868, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"mt9m001_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 864, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"mt9m001_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 858, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 738, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 751, i32 64 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 756, i32 62 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"mt9m001_subdev_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 724, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 764, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"mt9m001_ctrl_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 644, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 785, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"mt9m001_subdev_core_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 649, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"mt9m001_subdev_video_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 706, i32 43 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"mt9m001_subdev_sensor_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 710, i32 44 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"mt9m001_subdev_pad_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 714, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 998, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"mt9m001_colour_fmts\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 73, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 532, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 548, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 560, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 593, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"mt9m001_monochrome_fmts\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 82, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 610, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 618, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 623, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"init_regs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 170, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [31 x i8] c"../drivers/media/i2c/mt9m001.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 181, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_mt9m001_i2c_driver_exit, ptr @__initcall__kmod_mt9m001__314_885_mt9m001_i2c_driver_init6, ptr @mt9m001_i2c_driver_exit, ptr @mt9m001_probe._entry, ptr @mt9m001_probe._entry_ptr, ptr @mt9m001_video_probe._entry, ptr @mt9m001_video_probe._entry.19, ptr @mt9m001_video_probe._entry.25, ptr @mt9m001_video_probe._entry_ptr, ptr @mt9m001_video_probe._entry_ptr.22, ptr @mt9m001_video_probe._entry_ptr.27, ptr @mt9m001_i2c_driver, ptr @.str, ptr @mt9m001_of_match, ptr @mt9m001_pm_ops, ptr @mt9m001_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mt9m001_subdev_ops, ptr @mt9m001_probe._key, ptr @.str.8, ptr @mt9m001_ctrl_ops, ptr @mt9m001_probe.__key, ptr @.str.9, ptr @mt9m001_subdev_core_ops, ptr @mt9m001_subdev_video_ops, ptr @mt9m001_subdev_sensor_ops, ptr @mt9m001_subdev_pad_ops, ptr @.str.10, ptr @mt9m001_colour_fmts, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mt9m001_monochrome_fmts, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @mt9m001_init.init_regs, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_subdev_sensor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_colour_fmts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_monochrome_fmts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_video_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_video_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init.init_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9m001_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9m001_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9m001_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i17 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !102
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %standby_gpio.i = getelementptr inbounds %struct.mt9m001, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %standby_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %standby_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #10
  %clk.i = getelementptr inbounds %struct.mt9m001, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #10
  tail call void @clk_unprepare(ptr noundef %8) #10
  %hdl = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  %mutex = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 564, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef 3) #10
  %standby_gpio = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %standby_gpio, align 4
  %cmp.i155 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call24 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef 3) #10
  %reset_gpio = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call24, ptr %reset_gpio, align 4
  %cmp.i156 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @mt9m001_subdev_ops) #10
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 12
  store i32 %or, ptr %flags, align 4
  %hdl = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 1
  %call32 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @mt9m001_probe._key, ptr noundef nonnull @.str.8) #10
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m001_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m001_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #10
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m001_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 255, i64 noundef 1, i64 noundef 255) #10
  %14 = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 2
  %exposure = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %exposure, align 4
  %call40 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @mt9m001_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #10
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %14, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool44.not = icmp eq i32 %19, 0
  br i1 %tobool44.not, label %if.end48, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end30
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %14, i8 noundef zeroext 1, i1 noundef zeroext true) #10
  %mutex = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @mt9m001_probe.__key) #10
  %lock = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mutex, ptr %lock, align 4
  %y_skip_top = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %y_skip_top to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %y_skip_top, align 4
  %rect = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %rect, align 4
  %top = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12, ptr %top, align 4
  %width = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024, ptr %height, align 4
  %call59 = tail call i32 @mt9m001_power_on(ptr noundef %dev2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end48.error_hdl_free_crit_edge

if.end48.error_hdl_free_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_hdl_free

if.end62:                                         ; preds = %if.end48
  %call.i157 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev2) #10
  %call66 = tail call fastcc i32 @mt9m001_video_probe(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end62.error_power_off_crit_edge

if.end62.error_power_off_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_power_off

if.end69:                                         ; preds = %if.end62
  %pad = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 14
  %flags70 = getelementptr inbounds %struct.mt9m001, ptr %call.i, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %flags70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags70, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131073, ptr %function, align 4
  %call75 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end69.error_power_off_crit_edge

if.end69.error_power_off_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_power_off

if.end78:                                         ; preds = %if.end69
  %call80 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end78.error_power_off_crit_edge

if.end78.error_power_off_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_power_off

if.end83:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %call.i158 = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 0) #10
  br label %cleanup

error_power_off:                                  ; preds = %if.end78.error_power_off_crit_edge, %if.end69.error_power_off_crit_edge, %if.end62.error_power_off_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end62.error_power_off_crit_edge ], [ %call75, %if.end69.error_power_off_crit_edge ], [ %call80, %if.end78.error_power_off_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #10
  %call.i159 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 2) #10
  %call92 = tail call i32 @mt9m001_power_off(ptr noundef %dev2)
  br label %error_hdl_free

error_hdl_free:                                   ; preds = %error_power_off, %if.end48.error_hdl_free_crit_edge
  %ret.1 = phi i32 [ %call59, %if.end48.error_hdl_free_crit_edge ], [ %ret.0, %error_power_off ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  tail call void @mutex_destroy(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %error_hdl_free, %if.end83, %if.end30.cleanup_crit_edge, %if.then27, %if.then19, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %9, %if.then19 ], [ %11, %if.then27 ], [ %ret.1, %error_hdl_free ], [ 0, %if.end83 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %19, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %standby_gpio = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #10
  %clk = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_power_on(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %standby_gpio = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %standby_gpio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %reset_gpio = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m001_video_probe(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -15, i16 noundef zeroext 256) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m001_video_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m001_video_probe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !104

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m001_video_probe.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i45 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %cmp.i.i = icmp slt i32 %call.i.i45, 0
  %conv.i.i = trunc i32 %call.i.i45 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %conv1.i.i = zext i16 %2 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i45, i32 %conv1.i.i
  %3 = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond.i.i, label %do.end11 [
    i32 33809, label %do.end.sw.epilog_crit_edge
    i32 33825, label %do.end.sw.epilog_crit_edge47
    i32 33841, label %sw.bb6
  ]

do.end.sw.epilog_crit_edge47:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.17, i32 noundef %cond.i.i) #13
  br label %done

sw.epilog:                                        ; preds = %sw.bb6, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge47
  %mt9m001_monochrome_fmts.sink = phi ptr [ @mt9m001_monochrome_fmts, %sw.bb6 ], [ @mt9m001_colour_fmts, %do.end.sw.epilog_crit_edge ], [ @mt9m001_colour_fmts, %do.end.sw.epilog_crit_edge47 ]
  %fmts7 = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fmts7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mt9m001_monochrome_fmts.sink, ptr %fmts7, align 4
  %num_fmts8 = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %num_fmts8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %num_fmts8, align 4
  %fmt = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mt9m001_monochrome_fmts.sink, ptr %fmt, align 4
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33841, i32 %cond.i.i)
  %cmp = icmp eq i32 %cond.i.i, 33841
  %cond = select i1 %cmp, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.20, i32 noundef %cond.i.i, ptr noundef nonnull %cond) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m001_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m001_video_probe, %if.then.i)) #10
          to label %for.body.i.i [label %if.then.i], !srcloc !104

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m001_init.__UNIQUE_ID_ddebug293, ptr noundef %dev17, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i, %sw.epilog
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.epilog ]
  %arrayidx.i.i = getelementptr %struct.mt9m001_reg, ptr @mt9m001_init.init_regs, i32 %i.09.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 2
  %data.i.i = getelementptr %struct.mt9m001_reg, ptr @mt9m001_init.init_regs, i32 %i.09.i.i, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.i.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext %8, i16 noundef zeroext %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp ne i32 %call.i.i.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %mt9m001_init.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mt9m001_init.exit:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp19 = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %mt9m001_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.26) #13
  br label %done

if.end25:                                         ; preds = %mt9m001_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hdl = getelementptr inbounds %struct.mt9m001, ptr %1, i32 0, i32 1
  %call26 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #10
  br label %done

done:                                             ; preds = %if.end25, %do.end23, %do.end11
  %ret.0 = phi i32 [ -19, %do.end11 ], [ %call.i.i.i.i, %do.end23 ], [ %call26, %if.end25 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 2, ptr %size, align 1
  %conv = trunc i64 %1 to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %conv1.i.i = zext i16 %5 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  %conv4 = sext i32 %cond.i.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv4, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cond.i.i)
  %cmp6 = icmp ugt i32 %cond.i.i, 65535
  %. = select i1 %cmp6, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv3) #10
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %conv, i16 noundef zeroext %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  %. = select i1 %cmp5, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  %regs.i = alloca [6 x %struct.mt9m001_reg], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %streaming = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming, align 4, !range !105
  %6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %enable)
  %cmp = icmp eq i32 %6, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3 = icmp ne i32 %enable, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !102
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %8 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %regs.i) #10
  %12 = call ptr @memset(ptr %regs.i, i32 255, i32 22)
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %regs.i, align 2
  %data.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 0, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 9, ptr %data.i, align 2
  %arrayinit.element.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %arrayinit.element.i, align 2
  %data3.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 1, i32 1
  %16 = ptrtoint ptr %data3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 25, ptr %data3.i, align 2
  %arrayinit.element4.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 2
  %17 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %arrayinit.element4.i, align 2
  %data6.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 2, i32 1
  %rect.i = getelementptr inbounds %struct.mt9m001, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rect.i, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = ptrtoint ptr %data6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %data6.i, align 2
  %arrayinit.element7.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 3
  %21 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayinit.element7.i, align 2
  %data9.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 3, i32 1
  %top.i = getelementptr inbounds %struct.mt9m001, ptr %11, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top.i, align 4
  %conv11.i = trunc i32 %23 to i16
  %24 = ptrtoint ptr %data9.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv11.i, ptr %data9.i, align 2
  %arrayinit.element12.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 4
  %25 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %arrayinit.element12.i, align 2
  %data14.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 4, i32 1
  %width.i = getelementptr inbounds %struct.mt9m001, ptr %11, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 4
  %28 = trunc i32 %27 to i16
  %conv16.i = add i16 %28, -1
  %29 = ptrtoint ptr %data14.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv16.i, ptr %data14.i, align 2
  %arrayinit.element17.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 5
  %30 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayinit.element17.i, align 2
  %data19.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 5, i32 1
  %height.i = getelementptr inbounds %struct.mt9m001, ptr %11, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %y_skip_top.i = getelementptr inbounds %struct.mt9m001, ptr %11, i32 0, i32 13
  %33 = ptrtoint ptr %y_skip_top.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %y_skip_top.i, align 4
  %35 = trunc i32 %32 to i16
  %36 = add i16 %35, -1
  %conv23.i = add i16 %36, %34
  %37 = ptrtoint ptr %data19.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv23.i, ptr %data19.i, align 2
  %38 = load i8, ptr %regs.i, align 2
  %data.i.i = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 0, i32 1
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data.i.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  %call.i.i.i.i52 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %38, i16 noundef zeroext %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52)
  %tobool.not.i.i.not = icmp eq i32 %call.i.i.i.i52, 0
  br i1 %tobool.not.i.i.not, label %for.body.i.i.1, label %if.end9.mt9m001_apply_selection.exit_crit_edge

if.end9.mt9m001_apply_selection.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt9m001_apply_selection.exit

for.body.i.i.1:                                   ; preds = %if.end9
  %arrayidx.i.i.1 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 1
  %42 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.1, align 2
  %data.i.i.1 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 1, i32 1
  %44 = ptrtoint ptr %data.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data.i.i.1, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %call.i.i.i.i52.1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %43, i16 noundef zeroext %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52.1)
  %tobool.not.i.i.1.not = icmp eq i32 %call.i.i.i.i52.1, 0
  br i1 %tobool.not.i.i.1.not, label %for.body.i.i.2, label %for.body.i.i.1.mt9m001_apply_selection.exit_crit_edge

for.body.i.i.1.mt9m001_apply_selection.exit_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt9m001_apply_selection.exit

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %arrayidx.i.i.2 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 2
  %47 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i.2, align 2
  %data.i.i.2 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 2, i32 1
  %49 = ptrtoint ptr %data.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data.i.i.2, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  %call.i.i.i.i52.2 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %48, i16 noundef zeroext %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52.2)
  %tobool.not.i.i.2.not = icmp eq i32 %call.i.i.i.i52.2, 0
  br i1 %tobool.not.i.i.2.not, label %for.body.i.i.3, label %for.body.i.i.2.mt9m001_apply_selection.exit_crit_edge

for.body.i.i.2.mt9m001_apply_selection.exit_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt9m001_apply_selection.exit

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %arrayidx.i.i.3 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 3
  %52 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.3, align 2
  %data.i.i.3 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 3, i32 1
  %54 = ptrtoint ptr %data.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %data.i.i.3, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  %call.i.i.i.i52.3 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %53, i16 noundef zeroext %56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52.3)
  %tobool.not.i.i.3.not = icmp eq i32 %call.i.i.i.i52.3, 0
  br i1 %tobool.not.i.i.3.not, label %for.body.i.i.4, label %for.body.i.i.3.mt9m001_apply_selection.exit_crit_edge

for.body.i.i.3.mt9m001_apply_selection.exit_crit_edge: ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt9m001_apply_selection.exit

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %arrayidx.i.i.4 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 4
  %57 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i.4, align 2
  %data.i.i.4 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 4, i32 1
  %59 = ptrtoint ptr %data.i.i.4 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %data.i.i.4, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #10
  %call.i.i.i.i52.4 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %58, i16 noundef zeroext %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52.4)
  %tobool.not.i.i.4.not = icmp eq i32 %call.i.i.i.i52.4, 0
  br i1 %tobool.not.i.i.4.not, label %for.body.i.i.5, label %for.body.i.i.4.mt9m001_apply_selection.exit_crit_edge

for.body.i.i.4.mt9m001_apply_selection.exit_crit_edge: ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt9m001_apply_selection.exit

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.5 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 5
  %62 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i.5, align 2
  %data.i.i.5 = getelementptr inbounds %struct.mt9m001_reg, ptr %regs.i, i32 5, i32 1
  %64 = ptrtoint ptr %data.i.i.5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %data.i.i.5, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #10
  %call.i.i.i.i52.5 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext %63, i16 noundef zeroext %66) #10
  br label %mt9m001_apply_selection.exit

mt9m001_apply_selection.exit:                     ; preds = %for.body.i.i.5, %for.body.i.i.4.mt9m001_apply_selection.exit_crit_edge, %for.body.i.i.3.mt9m001_apply_selection.exit_crit_edge, %for.body.i.i.2.mt9m001_apply_selection.exit_crit_edge, %for.body.i.i.1.mt9m001_apply_selection.exit_crit_edge, %if.end9.mt9m001_apply_selection.exit_crit_edge
  %call.i.i.i.i52.lcssa = phi i32 [ %call.i.i.i.i52, %if.end9.mt9m001_apply_selection.exit_crit_edge ], [ %call.i.i.i.i52.1, %for.body.i.i.1.mt9m001_apply_selection.exit_crit_edge ], [ %call.i.i.i.i52.2, %for.body.i.i.2.mt9m001_apply_selection.exit_crit_edge ], [ %call.i.i.i.i52.3, %for.body.i.i.3.mt9m001_apply_selection.exit_crit_edge ], [ %call.i.i.i.i52.4, %for.body.i.i.4.mt9m001_apply_selection.exit_crit_edge ], [ %call.i.i.i.i52.5, %for.body.i.i.5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %regs.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i52.lcssa)
  %tobool11.not = icmp eq i32 %call.i.i.i.i52.lcssa, 0
  br i1 %tobool11.not, label %if.end13, label %mt9m001_apply_selection.exit.put_unlock_crit_edge

mt9m001_apply_selection.exit.put_unlock_crit_edge: ; preds = %mt9m001_apply_selection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_unlock

if.end13:                                         ; preds = %mt9m001_apply_selection.exit
  %hdl = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 1
  %call14 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %hdl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.put_unlock_crit_edge

if.end13.put_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_unlock

if.end17:                                         ; preds = %if.end13
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 7, i16 noundef zeroext 512) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19 = icmp slt i32 %call.i.i, 0
  br i1 %cmp19, label %if.end17.put_unlock_crit_edge, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end17.put_unlock_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_unlock

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i53 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 7, i16 noundef zeroext 0) #10
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %dev24, i32 noundef 5) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end17.if.end26_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %67 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %streaming, align 4
  br label %cleanup

put_unlock:                                       ; preds = %if.end17.put_unlock_crit_edge, %if.end13.put_unlock_crit_edge, %mt9m001_apply_selection.exit.put_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i.i52.lcssa, %mt9m001_apply_selection.exit.put_unlock_crit_edge ], [ %call14, %if.end13.put_unlock_crit_edge ], [ %call.i.i, %if.end17.put_unlock_crit_edge ]
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %put_unlock, %if.end26, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end26 ], [ %ret.0, %put_unlock ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m001_g_skip_top_lines(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %lines) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %y_skip_top = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %y_skip_top to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %y_skip_top, align 4
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %lines to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %lines, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !106

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1280, ptr %7, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %height, align 4
  %fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %fmts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmts, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %code3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code3, align 4
  %15 = load ptr, ptr %fmts, align 4
  %colorspace = getelementptr inbounds %struct.mt9m001_datafmt, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %colorspace, align 4
  %colorspace6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %colorspace6, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %20, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %xfer_func, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m001_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %num_fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %num_fmts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_fmts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %fmts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmts, align 4
  %arrayidx = getelementptr %struct.mt9m001_datafmt, ptr %11, i32 %7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %14 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3.v4l2_subdev_get_try_format.exit_crit_edge, !prof !106

if.then3.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then3.v4l2_subdev_get_try_format.exit_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %12 = call ptr @memcpy(ptr %format2, ptr %11, i32 48)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format2, align 4
  %height = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height9, align 4
  %fmt = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %code10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code10, align 4
  %24 = load ptr, ptr %fmt, align 4
  %colorspace = getelementptr inbounds %struct.mt9m001_datafmt, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %colorspace12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace12, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %29, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %xfer_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %y_skip_top = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %y_skip_top to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %y_skip_top, align 4
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 32
  %add5 = add nuw nsw i32 %conv, 1024
  tail call void @v4l_bound_align_image(ptr noundef %format1, i32 noundef 48, i32 noundef 1280, i32 noundef 1, ptr noundef %height, i32 noundef %add, i32 noundef %add5, i32 noundef 0, i32 noundef 0) #10
  %fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %fmts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmts, align 4
  %cmp = icmp eq ptr %9, @mt9m001_colour_fmts
  br i1 %cmp, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %height, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %14 = ptrtoint ptr %fmts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmts, align 4
  %num_fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %num_fmts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_fmts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.i = icmp sgt i32 %17, 0
  br i1 %cmp7.i, label %if.end11.for.body.i_crit_edge, label %if.end11.if.then15_crit_edge

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.if.then15_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.then15_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mt9m001_datafmt, ptr %15, i32 %i.08.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp2.i = icmp eq i32 %19, %13
  br i1 %cmp2.i, label %mt9m001_find_datafmt.exit, label %for.cond.i

mt9m001_find_datafmt.exit:                        ; preds = %for.body.i
  %tobool14.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool14.not, label %mt9m001_find_datafmt.exit.if.then15_crit_edge, label %mt9m001_find_datafmt.exit.if.end19_crit_edge

mt9m001_find_datafmt.exit.if.end19_crit_edge:     ; preds = %mt9m001_find_datafmt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

mt9m001_find_datafmt.exit.if.then15_crit_edge:    ; preds = %mt9m001_find_datafmt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %mt9m001_find_datafmt.exit.if.then15_crit_edge, %for.cond.i.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  %fmt16 = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %fmt16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt16, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %code, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %mt9m001_find_datafmt.exit.if.end19_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i, %mt9m001_find_datafmt.exit.if.end19_crit_edge ], [ %21, %if.then15 ]
  %colorspace = getelementptr inbounds %struct.mt9m001_datafmt, ptr %fmt.0, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %colorspace20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %colorspace20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace20, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %29, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %xfer_func, align 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp21 = icmp eq i32 %34, 1
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %rect.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rect.i, align 4
  %top4.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top4.i, align 4
  %43 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %format1, align 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %fmts.i.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 10
  %47 = ptrtoint ptr %fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fmts.i.i, align 4
  %cmp3.i.i = icmp eq ptr %48, @mt9m001_colour_fmts
  %add.i.i = add i32 %46, 1
  %and.i.i = and i32 %add.i.i, -2
  %rect.sroa.18.0.i.i = select i1 %cmp3.i.i, i32 %and.i.i, i32 %46
  %add7.i.i = add i32 %44, 1
  %and8.i.i = and i32 %add7.i.i, -2
  %add10.i.i = add i32 %40, 1
  %and11.i.i = and i32 %add10.i.i, -2
  %49 = tail call i32 @llvm.umax.i32(i32 %and8.i.i, i32 48) #10
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 1280) #10
  %51 = tail call i32 @llvm.umax.i32(i32 %and11.i.i, i32 20) #10
  %sub.i.i = sub nuw nsw i32 1300, %50
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %sub.i.i) #10
  %53 = tail call i32 @llvm.umax.i32(i32 %rect.sroa.18.0.i.i, i32 32) #10
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 1024) #10
  %55 = tail call i32 @llvm.umax.i32(i32 %42, i32 12) #10
  %sub58.i.i = sub nuw nsw i32 1036, %54
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %sub58.i.i) #10
  %y_skip_top.i.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 13
  %57 = ptrtoint ptr %y_skip_top.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %y_skip_top.i.i, align 4
  %conv.i.i = zext i16 %58 to i32
  %add67.i.i = add nuw nsw i32 %conv.i.i, 25
  %add68.i.i = add nuw nsw i32 %add67.i.i, %54
  %total_h.i.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 12
  %59 = ptrtoint ptr %total_h.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add68.i.i, ptr %total_h.i.i, align 4
  %60 = ptrtoint ptr %rect.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %52, ptr %rect.i, align 4
  %61 = ptrtoint ptr %top4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %top4.i, align 4
  %rect.sroa.12.0.rect69.sroa_idx.i.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %rect.sroa.12.0.rect69.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %50, ptr %rect.sroa.12.0.rect69.sroa_idx.i.i, align 4
  %rect.sroa.18.0.rect69.sroa_idx.i.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %rect.sroa.18.0.rect69.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %54, ptr %rect.sroa.18.0.rect69.sroa_idx.i.i, align 4
  %64 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %50, ptr %format1, align 4
  %65 = load i32, ptr %rect.sroa.18.0.rect69.sroa_idx.i.i, align 4
  %66 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %height, align 4
  %fmt14.i = getelementptr inbounds %struct.mt9m001, ptr %38, i32 0, i32 9
  %67 = ptrtoint ptr %fmt14.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %fmt.0, ptr %fmt14.i, align 4
  %68 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %colorspace, align 4
  %70 = ptrtoint ptr %colorspace20 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %colorspace20, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sd_state, align 4
  %73 = call ptr @memcpy(ptr %72, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m001_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %rect = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5
  %13 = call ptr @memcpy(ptr %r6, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m001_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %sel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %rect.sroa.0.0.copyload = load i32, ptr %r, align 4
  %rect.sroa.9.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %rect.sroa.9.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %rect.sroa.9.0.copyload = load i32, ptr %rect.sroa.9.0.r.sroa_idx, align 4
  %rect.sroa.12.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %rect.sroa.12.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %rect.sroa.12.0.copyload = load i32, ptr %rect.sroa.12.0.r.sroa_idx, align 4
  %rect.sroa.18.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %rect.sroa.18.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %rect.sroa.18.0.copyload = load i32, ptr %rect.sroa.18.0.r.sroa_idx, align 4
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not = icmp eq i32 %11, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %fmts = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %fmts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmts, align 4
  %cmp3 = icmp eq ptr %13, @mt9m001_colour_fmts
  %add = add i32 %rect.sroa.18.0.copyload, 1
  %and = and i32 %add, -2
  %rect.sroa.18.0 = select i1 %cmp3, i32 %and, i32 %rect.sroa.18.0.copyload
  %add7 = add i32 %rect.sroa.12.0.copyload, 1
  %and8 = and i32 %add7, -2
  %add10 = add i32 %rect.sroa.0.0.copyload, 1
  %and11 = and i32 %add10, -2
  %14 = tail call i32 @llvm.umax.i32(i32 %and8, i32 48)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 1280)
  %16 = tail call i32 @llvm.umax.i32(i32 %and11, i32 20)
  %sub = sub nuw nsw i32 1300, %15
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub)
  %18 = tail call i32 @llvm.umax.i32(i32 %rect.sroa.18.0, i32 32)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 1024)
  %20 = tail call i32 @llvm.umax.i32(i32 %rect.sroa.9.0.copyload, i32 12)
  %sub58 = sub nuw nsw i32 1036, %19
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub58)
  %y_skip_top = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %y_skip_top to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %y_skip_top, align 4
  %conv = zext i16 %23 to i32
  %add67 = add nuw nsw i32 %conv, 25
  %add68 = add nuw nsw i32 %add67, %19
  %total_h = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %total_h to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add68, ptr %total_h, align 4
  %rect69 = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %rect69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %rect69, align 4
  %rect.sroa.9.0.rect69.sroa_idx = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %rect.sroa.9.0.rect69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %rect.sroa.9.0.rect69.sroa_idx, align 4
  %rect.sroa.12.0.rect69.sroa_idx = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %rect.sroa.12.0.rect69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %15, ptr %rect.sroa.12.0.rect69.sroa_idx, align 4
  %rect.sroa.18.0.rect69.sroa_idx = getelementptr inbounds %struct.mt9m001, ptr %3, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %rect.sroa.18.0.rect69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %19, ptr %rect.sroa.18.0.rect69.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt9m001_get_mbus_config(ptr nocapture noundef readnone %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 405, ptr %flags, align 4
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cfg, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m001_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094849, i32 %1)
  %cond = icmp eq i32 %1, 10094849
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %exposure = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %minimum, align 8
  %conv = trunc i64 %7 to i32
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %maximum, align 8
  %conv2 = trunc i64 %9 to i32
  %total_h = getelementptr i8, ptr %3, i32 328
  %10 = ptrtoint ptr %total_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_h, align 4
  %sub = add i32 %11, -1
  %sub3 = sub i32 %conv2, %conv
  %mul = mul i32 %sub, %sub3
  %add = add i32 %mul, 524
  %div = udiv i32 %add, 1048
  %add4 = add i32 %div, %conv
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add4, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m001_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %exposure = getelementptr i8, ptr %1, i32 188
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exposure, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963795, label %sw.bb7
    i32 10094849, label %sw.bb85
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  %call.i.i.i194 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i194)
  %cmp.i.i.i195 = icmp slt i32 %call.i.i.i194, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb
  br i1 %cmp.i.i.i195, label %if.then3.sw.epilog_crit_edge, label %if.end.i

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i = trunc i32 %call.i.i.i194 to i16
  %11 = or i16 %conv.i.i.i, 128
  %call.i.i1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %11) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  br i1 %cmp.i.i.i195, label %if.else.sw.epilog_crit_edge, label %if.end.i198

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i198:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i196 = trunc i32 %call.i.i.i194 to i16
  %12 = and i16 %conv.i.i.i196, -129
  %call.i.i1.i197 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %12) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  %conv = sext i32 %14 to i64
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 13
  %15 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %default_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv)
  %cmp.not = icmp slt i64 %16, %conv
  br i1 %cmp.not, label %if.else28, label %if.then10

if.then10:                                        ; preds = %sw.bb7
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %17 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %minimum, align 8
  %sub = sub i64 %16, %18
  %conv12 = trunc i64 %sub to i32
  %conv15 = trunc i64 %18 to i32
  %sub16 = sub i32 %14, %conv15
  %mul = shl i32 %sub16, 3
  %div186 = lshr i32 %conv12, 1
  %add = add i32 %mul, %div186
  %div17 = udiv i32 %add, %conv12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m001_s_ctrl, %if.then23)) #10
          to label %do.end [label %if.then23], !srcloc !104

if.then23:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m001_s_ctrl.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %div17) #10
  br label %do.end

do.end:                                           ; preds = %if.then23, %if.then10
  %conv26 = trunc i32 %div17 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv26) #10
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 53, i16 noundef zeroext %19) #10
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb7
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 12
  %20 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %maximum, align 8
  %22 = xor i64 %16, -1
  %sub32 = add i64 %21, %22
  %conv33 = trunc i64 %sub32 to i32
  %conv36 = trunc i64 %16 to i32
  %23 = xor i32 %conv36, -1
  %sub38 = add i32 %14, %23
  %mul39 = mul i32 %sub38, 111
  %div40184 = lshr i32 %conv33, 1
  %add41 = add i32 %div40184, %mul39
  %div42 = udiv i32 %add41, %conv33
  %add43 = add i32 %div42, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add43)
  %cmp44 = icmp ult i32 %add43, 33
  br i1 %cmp44, label %if.else28.do.body64_crit_edge, label %if.else47

if.else28.do.body64_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

if.else47:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add43)
  %cmp48 = icmp ult i32 %add43, 65
  br i1 %cmp48, label %if.then50, label %if.else56

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %sub51 = shl nuw nsw i32 %div42, 4
  %add53 = add nsw i32 %sub51, -352
  %div54185 = lshr i32 %add53, 5
  %add55 = add nuw nsw i32 %div54185, 80
  br label %do.body64

if.else56:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %24 = mul i32 %div42, 7
  %add59 = add i32 %24, -357
  %div60 = udiv i32 %add59, 56
  %add61 = add nuw nsw i32 %div60, 96
  br label %do.body64

do.body64:                                        ; preds = %if.else56, %if.then50, %if.else28.do.body64_crit_edge
  %data.0 = phi i32 [ %add55, %if.then50 ], [ %add61, %if.else56 ], [ %add43, %if.else28.do.body64_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m001_s_ctrl, %if.then76)) #10
          to label %do.end81 [label %if.then76], !srcloc !104

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i200 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200)
  %cmp.i.i = icmp slt i32 %call.i.i200, 0
  %conv.i.i = trunc i32 %call.i.i200 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %conv1.i.i = zext i16 %25 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i200, i32 %conv1.i.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m001_s_ctrl.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %cond.i.i, i32 noundef %data.0) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.body64
  %conv82 = trunc i32 %data.0 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv82) #10
  %call.i.i201 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 53, i16 noundef zeroext %26) #10
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end
  %val86 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp87 = icmp eq i32 %28, 1
  br i1 %cmp87, label %if.then89, label %if.else124

if.then89:                                        ; preds = %sw.bb85
  %maximum91 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 12
  %29 = ptrtoint ptr %maximum91 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %maximum91, align 8
  %minimum92 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 11
  %31 = ptrtoint ptr %minimum92 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %minimum92, align 8
  %sub93 = sub i64 %30, %32
  %conv94 = trunc i64 %sub93 to i32
  %val95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %33 = ptrtoint ptr %val95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val95, align 4
  %conv97 = trunc i64 %32 to i32
  %sub98 = sub i32 %34, %conv97
  %mul99 = mul i32 %sub98, 1048
  %div100183 = lshr i32 %conv94, 1
  %add101 = add i32 %mul99, %div100183
  %div102 = udiv i32 %add101, %conv94
  %add103 = add i32 %div102, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m001_s_ctrl, %if.then116)) #10
          to label %do.end121 [label %if.then116], !srcloc !104

if.then116:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i202 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202)
  %cmp.i.i203 = icmp slt i32 %call.i.i202, 0
  %conv.i.i204 = trunc i32 %call.i.i202 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i204) #10
  %conv1.i.i205 = zext i16 %35 to i32
  %cond.i.i206 = select i1 %cmp.i.i203, i32 %call.i.i202, i32 %conv1.i.i205
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m001_s_ctrl.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %cond.i.i206, i32 noundef %add103) #10
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %if.then89
  %conv122 = trunc i32 %add103 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv122) #10
  %call.i.i207 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 9, i16 noundef zeroext %36) #10
  br label %sw.epilog

if.else124:                                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  %height = getelementptr i8, ptr %1, i32 300
  %37 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height, align 4
  %y_skip_top = getelementptr i8, ptr %1, i32 332
  %39 = ptrtoint ptr %y_skip_top to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %y_skip_top, align 4
  %conv125 = zext i16 %40 to i32
  %add126 = add i32 %38, 25
  %add127 = add i32 %add126, %conv125
  %total_h = getelementptr i8, ptr %1, i32 328
  %41 = ptrtoint ptr %total_h to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add127, ptr %total_h, align 4
  %conv129 = trunc i32 %add127 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv129) #10
  %call.i.i208 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 9, i16 noundef zeroext %42) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else124, %do.end121, %do.end81, %do.end, %if.end.i198, %if.else.sw.epilog_crit_edge, %if.end.i, %if.then3.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i.i207, %do.end121 ], [ %call.i.i208, %if.else124 ], [ %call.i.i, %do.end ], [ %call.i.i201, %do.end81 ], [ -22, %if.end.sw.epilog_crit_edge ], [ %call.i.i1.i, %if.end.i ], [ %call.i.i.i194, %if.then3.sw.epilog_crit_edge ], [ %call.i.i1.i197, %if.end.i198 ], [ %call.i.i.i194, %if.else.sw.epilog_crit_edge ]
  %call.i209 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !85, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_mt9m001__314_885_mt9m001_i2c_driver_init6, !1, !"__initcall__kmod_mt9m001__314_885_mt9m001_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9m001.c", i32 885, i32 1}
!2 = !{ptr @__exitcall_mt9m001_i2c_driver_exit, !1, !"__exitcall_mt9m001_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description315, !4, !"__UNIQUE_ID_description315", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9m001.c", i32 887, i32 1}
!5 = !{ptr @__UNIQUE_ID_author316, !6, !"__UNIQUE_ID_author316", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9m001.c", i32 888, i32 1}
!7 = !{ptr @__UNIQUE_ID_file317, !8, !"__UNIQUE_ID_file317", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9m001.c", i32 889, i32 1}
!9 = !{ptr @__UNIQUE_ID_license318, !8, !"__UNIQUE_ID_license318", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9m001.c", i32 876, i32 11}
!12 = !{ptr @mt9m001_i2c_driver, !13, !"mt9m001_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9m001.c", i32 874, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9m001.c", i32 738, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9m001_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9m001_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9m001.c", i32 751, i32 64}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/mt9m001.c", i32 756, i32 62}
!26 = !{ptr @mt9m001_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/mt9m001.c", i32 764, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mt9m001_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/mt9m001.c", i32 785, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mt9m001_subdev_ops, !33, !"mt9m001_subdev_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/mt9m001.c", i32 724, i32 37}
!34 = !{ptr @mt9m001_subdev_core_ops, !35, !"mt9m001_subdev_core_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/mt9m001.c", i32 649, i32 42}
!36 = !{ptr @mt9m001_subdev_video_ops, !37, !"mt9m001_subdev_video_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/mt9m001.c", i32 706, i32 43}
!38 = !{ptr @mt9m001_subdev_sensor_ops, !39, !"mt9m001_subdev_sensor_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/mt9m001.c", i32 710, i32 44}
!40 = !{ptr @mt9m001_subdev_pad_ops, !41, !"mt9m001_subdev_pad_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/mt9m001.c", i32 714, i32 41}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!44 = !{ptr @mt9m001_colour_fmts, !45, !"mt9m001_colour_fmts", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/mt9m001.c", i32 73, i32 37}
!46 = !{ptr @mt9m001_ctrl_ops, !47, !"mt9m001_ctrl_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/mt9m001.c", i32 644, i32 35}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/mt9m001.c", i32 532, i32 4}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug310, !49, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/mt9m001.c", i32 548, i32 4}
!54 = !{ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug311, !53, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/mt9m001.c", i32 560, i32 4}
!57 = !{ptr @mt9m001_s_ctrl.__UNIQUE_ID_ddebug312, !56, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/mt9m001.c", i32 593, i32 2}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mt9m001_video_probe.__UNIQUE_ID_ddebug313, !59, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/mt9m001.c", i32 610, i32 3}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mt9m001_video_probe._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt9m001_video_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9m001.c", i32 618, i32 2}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mt9m001_video_probe._entry.19, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mt9m001_video_probe._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/mt9m001.c", i32 623, i32 3}
!76 = !{ptr @mt9m001_video_probe._entry.25, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mt9m001_video_probe._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mt9m001_monochrome_fmts, !79, !"mt9m001_monochrome_fmts", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/mt9m001.c", i32 82, i32 37}
!80 = !{ptr @mt9m001_init.init_regs, !81, !"init_regs", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/mt9m001.c", i32 170, i32 34}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/mt9m001.c", i32 181, i32 2}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt9m001_init.__UNIQUE_ID_ddebug293, !83, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!86 = !{ptr @mt9m001_of_match, !87, !"mt9m001_of_match", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/mt9m001.c", i32 868, i32 34}
!88 = !{ptr @mt9m001_pm_ops, !89, !"mt9m001_pm_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/mt9m001.c", i32 864, i32 32}
!90 = !{ptr @mt9m001_id, !91, !"mt9m001_id", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/mt9m001.c", i32 858, i32 35}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148260826}
!102 = !{i64 745649, i64 745674, i64 745696, i64 745712, i64 745724, i64 745744, i64 745768, i64 745784, i64 745796}
!103 = !{i64 2148261014}
!104 = !{i64 2148743222, i64 2148743227, i64 2148743240, i64 2148743284, i64 2148743318, i64 2148743339}
!105 = !{i8 0, i8 2}
!106 = !{!"branch_weights", i32 1, i32 2000}
